// PlayerDeath: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerDeath.cpp

// ==== PlayerDeath::getBlood
//      file offset 0x313cec (= ELF address; Ghidra 0x323cec), 16 bytes, Thumb-2
  313cec: b082         	sub	sp, #0x8
  313cee: 9001         	str	r0, [sp, #0x4]
  313cf0: 9b01         	ldr	r3, [sp, #0x4]
  313cf2: f893 302e    	ldrb.w	r3, [r3, #0x2e]
  313cf6: 4618         	mov	r0, r3
  313cf8: b002         	add	sp, #0x8
  313cfa: 4770         	bx	lr

// ==== PlayerDeath::setBlood
//      file offset 0x313cfc (= ELF address; Ghidra 0x323cfc), 24 bytes, Thumb-2
  313cfc: b082         	sub	sp, #0x8
  313cfe: 9001         	str	r0, [sp, #0x4]
  313d00: 460b         	mov	r3, r1
  313d02: f88d 3003    	strb.w	r3, [sp, #0x3]
  313d06: 9b01         	ldr	r3, [sp, #0x4]
  313d08: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  313d0c: f883 202e    	strb.w	r2, [r3, #0x2e]
  313d10: b002         	add	sp, #0x8
  313d12: 4770         	bx	lr

// ==== PlayerDeath::PlayerDeath
//      file offset 0x395f40 (= ELF address; Ghidra 0x3a5f40), 208 bytes, Thumb-2
  395f40: b510         	push	{r4, lr}
  395f42: b086         	sub	sp, #0x18
  395f44: 9005         	str	r0, [sp, #0x14]
  395f46: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x396008 <PlayerDeath::PlayerDeath()+0xc8>
  395f48: 447c         	add	r4, pc
  395f4a: 9b05         	ldr	r3, [sp, #0x14]
  395f4c: 4618         	mov	r0, r3
  395f4e: f201 ff0d    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x201e1a
  395f52: 9b05         	ldr	r3, [sp, #0x14]
  395f54: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x39600c <PlayerDeath::PlayerDeath()+0xcc>
  395f56: 58a2         	ldr	r2, [r4, r2]
  395f58: 3208         	adds	r2, #0x8
  395f5a: 601a         	str	r2, [r3]
  395f5c: 9b05         	ldr	r3, [sp, #0x14]
  395f5e: 2200         	movs	r2, #0x0
  395f60: f883 202c    	strb.w	r2, [r3, #0x2c]
  395f64: 9b05         	ldr	r3, [sp, #0x14]
  395f66: 2200         	movs	r2, #0x0
  395f68: f883 202d    	strb.w	r2, [r3, #0x2d]
  395f6c: 9b05         	ldr	r3, [sp, #0x14]
  395f6e: f04f 527e    	mov.w	r2, #0x3f800000
  395f72: 635a         	str	r2, [r3, #0x34]
  395f74: 9c05         	ldr	r4, [sp, #0x14]
  395f76: 466b         	mov	r3, sp
  395f78: 4618         	mov	r0, r3
  395f7a: ed9f 0b1f    	vldr	d0, [pc, #124]          @ 0x395ff8 <PlayerDeath::PlayerDeath()+0xb8>
  395f7e: ed9f 1b20    	vldr	d1, [pc, #128]          @ 0x396000 <PlayerDeath::PlayerDeath()+0xc0>
  395f82: f7fe ff65    	bl	0x394e50 <PlasmaEnergy::updateStep(float)+0x5f8> @ imm = #-0x1136
  395f86: 3438         	adds	r4, #0x38
  395f88: 466b         	mov	r3, sp
  395f8a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  395f8c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  395f90: 2018         	movs	r0, #0x18
  395f92: f3f1 fce7    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3f19ce
  395f96: 4604         	mov	r4, r0
  395f98: 4620         	mov	r0, r4
  395f9a: f203 fe81    	bl	0x599ca0 <cocos2d::CCArray::CCArray()> @ imm = #0x203d02
  395f9e: 9b05         	ldr	r3, [sp, #0x14]
  395fa0: 649c         	str	r4, [r3, #0x48]
  395fa2: 9b05         	ldr	r3, [sp, #0x14]
  395fa4: f04f 0200    	mov.w	r2, #0x0
  395fa8: f2c4 02a0    	movt	r2, #0x40a0
  395fac: 631a         	str	r2, [r3, #0x30]
  395fae: 9b05         	ldr	r3, [sp, #0x14]
  395fb0: 2201         	movs	r2, #0x1
  395fb2: f883 202e    	strb.w	r2, [r3, #0x2e]
  395fb6: 9b05         	ldr	r3, [sp, #0x14]
  395fb8: 2200         	movs	r2, #0x0
  395fba: 615a         	str	r2, [r3, #0x14]
  395fbc: 9b05         	ldr	r3, [sp, #0x14]
  395fbe: 2200         	movs	r2, #0x0
  395fc0: 61da         	str	r2, [r3, #0x1c]
  395fc2: 9b05         	ldr	r3, [sp, #0x14]
  395fc4: 2200         	movs	r2, #0x0
  395fc6: 621a         	str	r2, [r3, #0x20]
  395fc8: 9b05         	ldr	r3, [sp, #0x14]
  395fca: 2200         	movs	r2, #0x0
  395fcc: 619a         	str	r2, [r3, #0x18]
  395fce: 9b05         	ldr	r3, [sp, #0x14]
  395fd0: 2200         	movs	r2, #0x0
  395fd2: 625a         	str	r2, [r3, #0x24]
  395fd4: 9b05         	ldr	r3, [sp, #0x14]
  395fd6: 2200         	movs	r2, #0x0
  395fd8: 629a         	str	r2, [r3, #0x28]
  395fda: 9b05         	ldr	r3, [sp, #0x14]
  395fdc: e009         	b	0x395ff2 <PlayerDeath::PlayerDeath()+0xb2> @ imm = #0x12
  395fde: 4620         	mov	r0, r4
  395fe0: f3f2 f860    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f20c0
  395fe4: e7ff         	b	0x395fe6 <PlayerDeath::PlayerDeath()+0xa6> @ imm = #-0x2
  395fe6: 9b05         	ldr	r3, [sp, #0x14]
  395fe8: 4618         	mov	r0, r3
  395fea: f201 fef1    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x201de2
  395fee: f3f2 f85d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f20ba
  395ff2: 4618         	mov	r0, r3
  395ff4: b006         	add	sp, #0x18
  395ff6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x395ff7); words below are literal-pool data ---
  396004: c000         	<unknown>
  396006: c072         	stm	r0!, {r1, r4, r5, r6}
  396008: cac0         	ldm	r2!, {r6, r7}
  39600a: 0059         	lsls	r1, r3, #0x1
  39600c: dd20         	ble	0x396050 <PlayerDeath::~PlayerDeath()+0x40> @ imm = #0x40
  39600e: ffff b500    	<unknown>

// ==== PlayerDeath::~PlayerDeath
//      file offset 0x396010 (= ELF address; Ghidra 0x3a6010), 176 bytes, Thumb-2
  396010: b500         	push	{lr}
  396012: b083         	sub	sp, #0xc
  396014: 9001         	str	r0, [sp, #0x4]
  396016: 4928         	ldr	r1, [pc, #0xa0]         @ 0x3960b8 <PlayerDeath::~PlayerDeath()+0xa8>
  396018: 4479         	add	r1, pc
  39601a: 9b01         	ldr	r3, [sp, #0x4]
  39601c: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x3960bc <PlayerDeath::~PlayerDeath()+0xac>
  39601e: 588a         	ldr	r2, [r1, r2]
  396020: 3208         	adds	r2, #0x8
  396022: 601a         	str	r2, [r3]
  396024: 9b01         	ldr	r3, [sp, #0x4]
  396026: 695b         	ldr	r3, [r3, #0x14]
  396028: 2b00         	cmp	r3, #0x0
  39602a: d004         	beq	0x396036 <PlayerDeath::~PlayerDeath()+0x26> @ imm = #0x8
  39602c: 9b01         	ldr	r3, [sp, #0x4]
  39602e: 695b         	ldr	r3, [r3, #0x14]
  396030: 4618         	mov	r0, r3
  396032: f201 ff41    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e82
  396036: 9b01         	ldr	r3, [sp, #0x4]
  396038: 69db         	ldr	r3, [r3, #0x1c]
  39603a: 2b00         	cmp	r3, #0x0
  39603c: d004         	beq	0x396048 <PlayerDeath::~PlayerDeath()+0x38> @ imm = #0x8
  39603e: 9b01         	ldr	r3, [sp, #0x4]
  396040: 69db         	ldr	r3, [r3, #0x1c]
  396042: 4618         	mov	r0, r3
  396044: f201 ff38    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e70
  396048: 9b01         	ldr	r3, [sp, #0x4]
  39604a: 6a1b         	ldr	r3, [r3, #0x20]
  39604c: 2b00         	cmp	r3, #0x0
  39604e: d004         	beq	0x39605a <PlayerDeath::~PlayerDeath()+0x4a> @ imm = #0x8
  396050: 9b01         	ldr	r3, [sp, #0x4]
  396052: 6a1b         	ldr	r3, [r3, #0x20]
  396054: 4618         	mov	r0, r3
  396056: f201 ff2f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e5e
  39605a: 9b01         	ldr	r3, [sp, #0x4]
  39605c: 699b         	ldr	r3, [r3, #0x18]
  39605e: 2b00         	cmp	r3, #0x0
  396060: d004         	beq	0x39606c <PlayerDeath::~PlayerDeath()+0x5c> @ imm = #0x8
  396062: 9b01         	ldr	r3, [sp, #0x4]
  396064: 699b         	ldr	r3, [r3, #0x18]
  396066: 4618         	mov	r0, r3
  396068: f201 ff26    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e4c
  39606c: 9b01         	ldr	r3, [sp, #0x4]
  39606e: 6a5b         	ldr	r3, [r3, #0x24]
  396070: 2b00         	cmp	r3, #0x0
  396072: d004         	beq	0x39607e <PlayerDeath::~PlayerDeath()+0x6e> @ imm = #0x8
  396074: 9b01         	ldr	r3, [sp, #0x4]
  396076: 6a5b         	ldr	r3, [r3, #0x24]
  396078: 4618         	mov	r0, r3
  39607a: f201 ff1d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e3a
  39607e: 9b01         	ldr	r3, [sp, #0x4]
  396080: 6a9b         	ldr	r3, [r3, #0x28]
  396082: 2b00         	cmp	r3, #0x0
  396084: d004         	beq	0x396090 <PlayerDeath::~PlayerDeath()+0x80> @ imm = #0x8
  396086: 9b01         	ldr	r3, [sp, #0x4]
  396088: 6a9b         	ldr	r3, [r3, #0x28]
  39608a: 4618         	mov	r0, r3
  39608c: f201 ff14    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e28
  396090: 9b01         	ldr	r3, [sp, #0x4]
  396092: 6c9b         	ldr	r3, [r3, #0x48]
  396094: 4618         	mov	r0, r3
  396096: f201 ff0f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201e1e
  39609a: 9b01         	ldr	r3, [sp, #0x4]
  39609c: 4618         	mov	r0, r3
  39609e: f201 fe97    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x201d2e
  3960a2: 2300         	movs	r3, #0x0
  3960a4: 2b00         	cmp	r3, #0x0
  3960a6: d002         	beq	0x3960ae <PlayerDeath::~PlayerDeath()+0x9e> @ imm = #0x4
  3960a8: 9801         	ldr	r0, [sp, #0x4]
  3960aa: f3f1 fffb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f1ff6
  3960ae: 9b01         	ldr	r3, [sp, #0x4]
  3960b0: 4618         	mov	r0, r3
  3960b2: b003         	add	sp, #0xc
  3960b4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3960b7); words below are literal-pool data ---
  3960b8: c9f0         	ldm	r1!, {r4, r5, r6, r7}
  3960ba: 0059         	lsls	r1, r3, #0x1
  3960bc: dd20         	ble	0x396100 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x20> @ imm = #0x40
  3960be: ffff b500    	<unknown>

// ==== PlayerDeath::~PlayerDeath
//      file offset 0x3960c0 (= ELF address; Ghidra 0x3a60c0), 28 bytes, Thumb-2
  3960c0: b500         	push	{lr}
  3960c2: b083         	sub	sp, #0xc
  3960c4: 9001         	str	r0, [sp, #0x4]
  3960c6: 9801         	ldr	r0, [sp, #0x4]
  3960c8: f7ff ffa2    	bl	0x396010 <PlayerDeath::~PlayerDeath()> @ imm = #-0xbc
  3960cc: 9801         	ldr	r0, [sp, #0x4]
  3960ce: f3f1 ffe9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f1fd2
  3960d2: 9b01         	ldr	r3, [sp, #0x4]
  3960d4: 4618         	mov	r0, r3
  3960d6: b003         	add	sp, #0xc
  3960d8: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerDeath::addBodyShape
//      file offset 0x3960e0 (= ELF address; Ghidra 0x3a60e0), 588 bytes, Thumb-2
  3960e0: b082         	sub	sp, #0x8
  3960e2: b530         	push	{r4, r5, lr}
  3960e4: ed2d 8b02    	vpush	{d8}
  3960e8: b093         	sub	sp, #0x4c
  3960ea: 9009         	str	r0, [sp, #0x24]
  3960ec: 9108         	str	r1, [sp, #0x20]
  3960ee: a918         	add	r1, sp, #0x60
  3960f0: e881 000c    	stm.w	r1, {r2, r3}
  3960f4: 4d89         	ldr	r5, [pc, #0x224]        @ 0x39631c <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x23c>
  3960f6: 447d         	add	r5, pc
  3960f8: f04f 0000    	mov.w	r0, #0x0
  3960fc: f04f 4180    	mov.w	r1, #0x40000000
  396100: f04f 0200    	mov.w	r2, #0x0
  396104: f04f 0300    	mov.w	r3, #0x0
  396108: f2c4 0320    	movt	r3, #0x4020
  39610c: f33d f89e    	bl	0x6d324c <cpBodyNew>    @ imm = #0x33d13c
  396110: 4603         	mov	r3, r0
  396112: 930b         	str	r3, [sp, #0x2c]
  396114: 9b0b         	ldr	r3, [sp, #0x2c]
  396116: 4a82         	ldr	r2, [pc, #0x208]        @ 0x396320 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x240>
  396118: 447a         	add	r2, pc
  39611a: 601a         	str	r2, [r3]
  39611c: 9b0b         	ldr	r3, [sp, #0x2c]
  39611e: 9a09         	ldr	r2, [sp, #0x24]
  396120: f8c3 2090    	str.w	r2, [r3, #0x90]
  396124: 990b         	ldr	r1, [sp, #0x2c]
  396126: f04f 0200    	mov.w	r2, #0x0
  39612a: f04f 0300    	mov.w	r3, #0x0
  39612e: f2c4 0324    	movt	r3, #0x4024
  396132: e9c1 2322    	strd	r2, r3, [r1, #136]
  396136: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x396324 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x244>
  396138: 447b         	add	r3, pc
  39613a: 466c         	mov	r4, sp
  39613c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  39613e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  396142: 980b         	ldr	r0, [sp, #0x2c]
  396144: f04f 0200    	mov.w	r2, #0x0
  396148: f04f 0300    	mov.w	r3, #0x0
  39614c: f2c4 0310    	movt	r3, #0x4010
  396150: f33f f806    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x33f00c
  396154: 4603         	mov	r3, r0
  396156: 930c         	str	r3, [sp, #0x30]
  396158: 9b0c         	ldr	r3, [sp, #0x30]
  39615a: 2202         	movs	r2, #0x2
  39615c: 655a         	str	r2, [r3, #0x54]
  39615e: 9b0c         	ldr	r3, [sp, #0x30]
  396160: 2202         	movs	r2, #0x2
  396162: 65da         	str	r2, [r3, #0x5c]
  396164: 9b0c         	ldr	r3, [sp, #0x30]
  396166: 2202         	movs	r2, #0x2
  396168: 659a         	str	r2, [r3, #0x58]
  39616a: 990c         	ldr	r1, [sp, #0x30]
  39616c: a367         	adr	r3, #412 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0xf7>
  39616e: e9d3 2300    	ldrd	r2, r3, [r3]
  396172: e9c1 230c    	strd	r2, r3, [r1, #48]
  396176: 990c         	ldr	r1, [sp, #0x30]
  396178: a366         	adr	r3, #408 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x102>
  39617a: e9d3 2300    	ldrd	r2, r3, [r3]
  39617e: e9c1 230e    	strd	r2, r3, [r1, #56]
  396182: 9b0c         	ldr	r3, [sp, #0x30]
  396184: 9a08         	ldr	r2, [sp, #0x20]
  396186: 651a         	str	r2, [r3, #0x50]
  396188: 201c         	movs	r0, #0x1c
  39618a: f3f1 fbeb    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3f17d6
  39618e: 4603         	mov	r3, r0
  396190: 461c         	mov	r4, r3
  396192: 4620         	mov	r0, r4
  396194: f000 fe6a    	bl	0x396e6c <BodyShape::BodyShape()> @ imm = #0xcd4
  396198: 940d         	str	r4, [sp, #0x34]
  39619a: 9b0d         	ldr	r3, [sp, #0x34]
  39619c: 4618         	mov	r0, r3
  39619e: f201 fead    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x201d5a
  3961a2: 9b09         	ldr	r3, [sp, #0x24]
  3961a4: 6c9b         	ldr	r3, [r3, #0x48]
  3961a6: 4618         	mov	r0, r3
  3961a8: 990d         	ldr	r1, [sp, #0x34]
  3961aa: f204 f85f    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2040be
  3961ae: 9b0d         	ldr	r3, [sp, #0x34]
  3961b0: 9a0b         	ldr	r2, [sp, #0x2c]
  3961b2: 615a         	str	r2, [r3, #0x14]
  3961b4: 9b0d         	ldr	r3, [sp, #0x34]
  3961b6: 9a0c         	ldr	r2, [sp, #0x30]
  3961b8: 619a         	str	r2, [r3, #0x18]
  3961ba: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x396328 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x248>
  3961bc: 58eb         	ldr	r3, [r5, r3]
  3961be: 681b         	ldr	r3, [r3]
  3961c0: 4618         	mov	r0, r3
  3961c2: 990b         	ldr	r1, [sp, #0x2c]
  3961c4: f33f fde6    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x33fbcc
  3961c8: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x396328 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x248>
  3961ca: 58eb         	ldr	r3, [r5, r3]
  3961cc: 681b         	ldr	r3, [r3]
  3961ce: 4618         	mov	r0, r3
  3961d0: 990c         	ldr	r1, [sp, #0x30]
  3961d2: f340 f819    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x340032
  3961d6: 9b08         	ldr	r3, [sp, #0x20]
  3961d8: 681b         	ldr	r3, [r3]
  3961da: 3350         	adds	r3, #0x50
  3961dc: 681b         	ldr	r3, [r3]
  3961de: 9a08         	ldr	r2, [sp, #0x20]
  3961e0: 4610         	mov	r0, r2
  3961e2: 4798         	blx	r3
  3961e4: 4603         	mov	r3, r0
  3961e6: edd3 7a00    	vldr	s15, [r3]
  3961ea: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3961ee: 9b08         	ldr	r3, [sp, #0x20]
  3961f0: 681b         	ldr	r3, [r3]
  3961f2: 3350         	adds	r3, #0x50
  3961f4: 681b         	ldr	r3, [r3]
  3961f6: 9a08         	ldr	r2, [sp, #0x20]
  3961f8: 4610         	mov	r0, r2
  3961fa: 4798         	blx	r3
  3961fc: 4603         	mov	r3, r0
  3961fe: edd3 7a01    	vldr	s15, [r3, #4]
  396202: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  396206: 9c0b         	ldr	r4, [sp, #0x2c]
  396208: ab04         	add	r3, sp, #0x10
  39620a: 4618         	mov	r0, r3
  39620c: eeb0 0b48    	vmov.f64	d0, d8
  396210: eeb0 1b47    	vmov.f64	d1, d7
  396214: f7fe fe1c    	bl	0x394e50 <PlasmaEnergy::updateStep(float)+0x5f8> @ imm = #-0x13c8
  396218: 3428         	adds	r4, #0x28
  39621a: ab04         	add	r3, sp, #0x10
  39621c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  39621e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  396222: f7fe fd7f    	bl	0x394d24 <PlasmaEnergy::updateStep(float)+0x4cc> @ imm = #-0x1502
  396226: 4603         	mov	r3, r0
  396228: ee07 3a90    	vmov	s15, r3
  39622c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  396230: eddf 7a35    	vldr	s15, [pc, #212]         @ 0x396308 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x228>
  396234: ee87 7a27    	vdiv.f32	s14, s14, s15
  396238: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  39623c: ee37 7a67    	vsub.f32	s14, s14, s15
  396240: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  396244: ee67 7a27    	vmul.f32	s15, s14, s15
  396248: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  39624c: f7fe fd6a    	bl	0x394d24 <PlasmaEnergy::updateStep(float)+0x4cc> @ imm = #-0x152c
  396250: 4603         	mov	r3, r0
  396252: ee07 3a90    	vmov	s15, r3
  396256: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  39625a: eddf 7a2b    	vldr	s15, [pc, #172]         @ 0x396308 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x228>
  39625e: ee87 7a27    	vdiv.f32	s14, s14, s15
  396262: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  396266: ee37 7a67    	vsub.f32	s14, s14, s15
  39626a: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  39626e: ee67 7a27    	vmul.f32	s15, s14, s15
  396272: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  396276: ab0e         	add	r3, sp, #0x38
  396278: 4618         	mov	r0, r3
  39627a: eeb0 0b48    	vmov.f64	d0, d8
  39627e: eeb0 1b47    	vmov.f64	d1, d7
  396282: f7fe fde5    	bl	0x394e50 <PlasmaEnergy::updateStep(float)+0x5f8> @ imm = #-0x1436
  396286: 9c0b         	ldr	r4, [sp, #0x2c]
  396288: ab04         	add	r3, sp, #0x10
  39628a: ed9d 4b18    	vldr	d4, [sp, #96]
  39628e: ed9d 5b1a    	vldr	d5, [sp, #104]
  396292: ed9d 6b0e    	vldr	d6, [sp, #56]
  396296: ed9d 7b10    	vldr	d7, [sp, #64]
  39629a: 4618         	mov	r0, r3
  39629c: eeb0 0b44    	vmov.f64	d0, d4
  3962a0: eeb0 1b45    	vmov.f64	d1, d5
  3962a4: eeb0 2b46    	vmov.f64	d2, d6
  3962a8: eeb0 3b47    	vmov.f64	d3, d7
  3962ac: f7fe fde4    	bl	0x394e78 <PlasmaEnergy::updateStep(float)+0x620> @ imm = #-0x1438
  3962b0: 3438         	adds	r4, #0x38
  3962b2: ab04         	add	r3, sp, #0x10
  3962b4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3962b6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3962ba: f7fe fd33    	bl	0x394d24 <PlasmaEnergy::updateStep(float)+0x4cc> @ imm = #-0x159a
  3962be: 4603         	mov	r3, r0
  3962c0: ee07 3a90    	vmov	s15, r3
  3962c4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3962c8: eddf 7a0f    	vldr	s15, [pc, #60]          @ 0x396308 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x228>
  3962cc: ee87 7a27    	vdiv.f32	s14, s14, s15
  3962d0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3962d4: ee37 7a67    	vsub.f32	s14, s14, s15
  3962d8: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3962dc: ee67 7a27    	vmul.f32	s15, s14, s15
  3962e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3962e4: 9b0b         	ldr	r3, [sp, #0x2c]
  3962e6: ed83 7b18    	vstr	d7, [r3, #96]
  3962ea: e004         	b	0x3962f6 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x216> @ imm = #0x8
  3962ec: 4620         	mov	r0, r4
  3962ee: f3f1 fed9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f1db2
  3962f2: f3f1 fedb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f1db6
  3962f6: b013         	add	sp, #0x4c
  3962f8: ecbd 8b02    	vpop	{d8}
  3962fc: e8bd 4030    	pop.w	{r4, r5, lr}
  396300: b002         	add	sp, #0x8
  396302: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x396303); words below are literal-pool data ---
  396304: f3af 8000    	nop.w
  396308: 0000         	movs	r0, r0
  39630a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x39650c <PlayerDeath::addToWorld()+0x2c>
  39630c: 0000         	movs	r0, r0
  39630e: 4000         	ands	r0, r0
  396310: 3333         	adds	r3, #0x33
  396312: 3fd3         	subs	r7, #0xd3
  396314: 0000         	movs	r0, r0
  396316: 8000         	strh	r0, [r0]
  396318: ae14         	add	r6, sp, #0x50
  39631a: 3fef         	subs	r7, #0xef
  39631c: c912         	ldm	r1, {r1, r4}
  39631e: 0059         	lsls	r1, r3, #0x1
  396320: fc91 ffff    	ldc2	p15, c15, [r1], {255}
  396324: baec         	revsh	r4, r5
  396326: 0043         	lsls	r3, r0, #0x1
  396328: da00         	bge	0x39632c <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)+0x24c> @ imm = #0x0
  39632a: ffff f3af    	<unknown>

// ==== PlayerDeath::addToSpace
//      file offset 0x396330 (= ELF address; Ghidra 0x3a6330), 260 bytes, Thumb-2
  396330: b082         	sub	sp, #0x8
  396332: b510         	push	{r4, lr}
  396334: b084         	sub	sp, #0x10
  396336: 9003         	str	r0, [sp, #0xc]
  396338: a906         	add	r1, sp, #0x18
  39633a: e881 000c    	stm.w	r1, {r2, r3}
  39633e: 9b03         	ldr	r3, [sp, #0xc]
  396340: 695b         	ldr	r3, [r3, #0x14]
  396342: 2b00         	cmp	r3, #0x0
  396344: d00e         	beq	0x396364 <PlayerDeath::addToSpace(cpVect)+0x34> @ imm = #0x1c
  396346: 9b03         	ldr	r3, [sp, #0xc]
  396348: 695c         	ldr	r4, [r3, #0x14]
  39634a: 466b         	mov	r3, sp
  39634c: aa08         	add	r2, sp, #0x20
  39634e: e892 0003    	ldm.w	r2, {r0, r1}
  396352: e883 0003    	stm.w	r3, {r0, r1}
  396356: a906         	add	r1, sp, #0x18
  396358: e891 000c    	ldm.w	r1, {r2, r3}
  39635c: 9803         	ldr	r0, [sp, #0xc]
  39635e: 4621         	mov	r1, r4
  396360: f7ff febe    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x284
  396364: 9b03         	ldr	r3, [sp, #0xc]
  396366: 69db         	ldr	r3, [r3, #0x1c]
  396368: 2b00         	cmp	r3, #0x0
  39636a: d00e         	beq	0x39638a <PlayerDeath::addToSpace(cpVect)+0x5a> @ imm = #0x1c
  39636c: 9b03         	ldr	r3, [sp, #0xc]
  39636e: 69dc         	ldr	r4, [r3, #0x1c]
  396370: 466b         	mov	r3, sp
  396372: aa08         	add	r2, sp, #0x20
  396374: e892 0003    	ldm.w	r2, {r0, r1}
  396378: e883 0003    	stm.w	r3, {r0, r1}
  39637c: a906         	add	r1, sp, #0x18
  39637e: e891 000c    	ldm.w	r1, {r2, r3}
  396382: 9803         	ldr	r0, [sp, #0xc]
  396384: 4621         	mov	r1, r4
  396386: f7ff feab    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x2aa
  39638a: 9b03         	ldr	r3, [sp, #0xc]
  39638c: 6a1b         	ldr	r3, [r3, #0x20]
  39638e: 2b00         	cmp	r3, #0x0
  396390: d00e         	beq	0x3963b0 <PlayerDeath::addToSpace(cpVect)+0x80> @ imm = #0x1c
  396392: 9b03         	ldr	r3, [sp, #0xc]
  396394: 6a1c         	ldr	r4, [r3, #0x20]
  396396: 466b         	mov	r3, sp
  396398: aa08         	add	r2, sp, #0x20
  39639a: e892 0003    	ldm.w	r2, {r0, r1}
  39639e: e883 0003    	stm.w	r3, {r0, r1}
  3963a2: a906         	add	r1, sp, #0x18
  3963a4: e891 000c    	ldm.w	r1, {r2, r3}
  3963a8: 9803         	ldr	r0, [sp, #0xc]
  3963aa: 4621         	mov	r1, r4
  3963ac: f7ff fe98    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x2d0
  3963b0: 9b03         	ldr	r3, [sp, #0xc]
  3963b2: 699b         	ldr	r3, [r3, #0x18]
  3963b4: 2b00         	cmp	r3, #0x0
  3963b6: d00e         	beq	0x3963d6 <PlayerDeath::addToSpace(cpVect)+0xa6> @ imm = #0x1c
  3963b8: 9b03         	ldr	r3, [sp, #0xc]
  3963ba: 699c         	ldr	r4, [r3, #0x18]
  3963bc: 466b         	mov	r3, sp
  3963be: aa08         	add	r2, sp, #0x20
  3963c0: e892 0003    	ldm.w	r2, {r0, r1}
  3963c4: e883 0003    	stm.w	r3, {r0, r1}
  3963c8: a906         	add	r1, sp, #0x18
  3963ca: e891 000c    	ldm.w	r1, {r2, r3}
  3963ce: 9803         	ldr	r0, [sp, #0xc]
  3963d0: 4621         	mov	r1, r4
  3963d2: f7ff fe85    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x2f6
  3963d6: 9b03         	ldr	r3, [sp, #0xc]
  3963d8: 6a5b         	ldr	r3, [r3, #0x24]
  3963da: 2b00         	cmp	r3, #0x0
  3963dc: d00e         	beq	0x3963fc <PlayerDeath::addToSpace(cpVect)+0xcc> @ imm = #0x1c
  3963de: 9b03         	ldr	r3, [sp, #0xc]
  3963e0: 6a5c         	ldr	r4, [r3, #0x24]
  3963e2: 466b         	mov	r3, sp
  3963e4: aa08         	add	r2, sp, #0x20
  3963e6: e892 0003    	ldm.w	r2, {r0, r1}
  3963ea: e883 0003    	stm.w	r3, {r0, r1}
  3963ee: a906         	add	r1, sp, #0x18
  3963f0: e891 000c    	ldm.w	r1, {r2, r3}
  3963f4: 9803         	ldr	r0, [sp, #0xc]
  3963f6: 4621         	mov	r1, r4
  3963f8: f7ff fe72    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x31c
  3963fc: 9b03         	ldr	r3, [sp, #0xc]
  3963fe: 6a9b         	ldr	r3, [r3, #0x28]
  396400: 2b00         	cmp	r3, #0x0
  396402: d00e         	beq	0x396422 <PlayerDeath::addToSpace(cpVect)+0xf2> @ imm = #0x1c
  396404: 9b03         	ldr	r3, [sp, #0xc]
  396406: 6a9c         	ldr	r4, [r3, #0x28]
  396408: 466b         	mov	r3, sp
  39640a: aa08         	add	r2, sp, #0x20
  39640c: e892 0003    	ldm.w	r2, {r0, r1}
  396410: e883 0003    	stm.w	r3, {r0, r1}
  396414: a906         	add	r1, sp, #0x18
  396416: e891 000c    	ldm.w	r1, {r2, r3}
  39641a: 9803         	ldr	r0, [sp, #0xc]
  39641c: 4621         	mov	r1, r4
  39641e: f7ff fe5f    	bl	0x3960e0 <PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect)> @ imm = #-0x342
  396422: 9b03         	ldr	r3, [sp, #0xc]
  396424: 2201         	movs	r2, #0x1
  396426: f883 202d    	strb.w	r2, [r3, #0x2d]
  39642a: b004         	add	sp, #0x10
  39642c: e8bd 4010    	pop.w	{r4, lr}
  396430: b002         	add	sp, #0x8
  396432: 4770         	bx	lr

// ==== PlayerDeath::removeFromSpace
//      file offset 0x396434 (= ELF address; Ghidra 0x3a6434), 168 bytes, Thumb-2
  396434: b530         	push	{r4, r5, lr}
  396436: b085         	sub	sp, #0x14
  396438: 9001         	str	r0, [sp, #0x4]
  39643a: 4c26         	ldr	r4, [pc, #0x98]         @ 0x3964d4 <PlayerDeath::removeFromSpace()+0xa0>
  39643c: 447c         	add	r4, pc
  39643e: 9b01         	ldr	r3, [sp, #0x4]
  396440: 2200         	movs	r2, #0x0
  396442: f883 202d    	strb.w	r2, [r3, #0x2d]
  396446: 2300         	movs	r3, #0x0
  396448: 9302         	str	r3, [sp, #0x8]
  39644a: e02d         	b	0x3964a8 <PlayerDeath::removeFromSpace()+0x74> @ imm = #0x5a
  39644c: 9b01         	ldr	r3, [sp, #0x4]
  39644e: 6c9a         	ldr	r2, [r3, #0x48]
  396450: 9b02         	ldr	r3, [sp, #0x8]
  396452: 4610         	mov	r0, r2
  396454: 4619         	mov	r1, r3
  396456: f203 fe63    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x203cc6
  39645a: 4603         	mov	r3, r0
  39645c: 9303         	str	r3, [sp, #0xc]
  39645e: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3964d8 <PlayerDeath::removeFromSpace()+0xa4>
  396460: 58e3         	ldr	r3, [r4, r3]
  396462: 681a         	ldr	r2, [r3]
  396464: 9b03         	ldr	r3, [sp, #0xc]
  396466: 699b         	ldr	r3, [r3, #0x18]
  396468: 4610         	mov	r0, r2
  39646a: 4619         	mov	r1, r3
  39646c: f33f ff06    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x33fe0c
  396470: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3964d8 <PlayerDeath::removeFromSpace()+0xa4>
  396472: 58e3         	ldr	r3, [r4, r3]
  396474: 681a         	ldr	r2, [r3]
  396476: 9b03         	ldr	r3, [sp, #0xc]
  396478: 695b         	ldr	r3, [r3, #0x14]
  39647a: 4610         	mov	r0, r2
  39647c: 4619         	mov	r1, r3
  39647e: f33f ff36    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x33fe6c
  396482: 9b03         	ldr	r3, [sp, #0xc]
  396484: 699b         	ldr	r3, [r3, #0x18]
  396486: 4618         	mov	r0, r3
  396488: f33e fdb0    	bl	0x6d4fec <cpShapeFree>  @ imm = #0x33eb60
  39648c: 9b03         	ldr	r3, [sp, #0xc]
  39648e: 695b         	ldr	r3, [r3, #0x14]
  396490: 4618         	mov	r0, r3
  396492: f33c fe5d    	bl	0x6d3150 <cpBodyFree>   @ imm = #0x33ccba
  396496: 9b03         	ldr	r3, [sp, #0xc]
  396498: 2200         	movs	r2, #0x0
  39649a: 619a         	str	r2, [r3, #0x18]
  39649c: 9b03         	ldr	r3, [sp, #0xc]
  39649e: 2200         	movs	r2, #0x0
  3964a0: 615a         	str	r2, [r3, #0x14]
  3964a2: 9b02         	ldr	r3, [sp, #0x8]
  3964a4: 3301         	adds	r3, #0x1
  3964a6: 9302         	str	r3, [sp, #0x8]
  3964a8: 9d02         	ldr	r5, [sp, #0x8]
  3964aa: 9b01         	ldr	r3, [sp, #0x4]
  3964ac: 6c9b         	ldr	r3, [r3, #0x48]
  3964ae: 4618         	mov	r0, r3
  3964b0: f203 fe16    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x203c2c
  3964b4: 4603         	mov	r3, r0
  3964b6: 429d         	cmp	r5, r3
  3964b8: bf2c         	ite	hs
  3964ba: 2300         	movhs	r3, #0x0
  3964bc: 2301         	movlo	r3, #0x1
  3964be: b2db         	uxtb	r3, r3
  3964c0: 2b00         	cmp	r3, #0x0
  3964c2: d1c3         	bne	0x39644c <PlayerDeath::removeFromSpace()+0x18> @ imm = #-0x7a
  3964c4: 9b01         	ldr	r3, [sp, #0x4]
  3964c6: 6c9b         	ldr	r3, [r3, #0x48]
  3964c8: 4618         	mov	r0, r3
  3964ca: f203 ff4b    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x203e96
  3964ce: b005         	add	sp, #0x14
  3964d0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3964d1); words below are literal-pool data ---
  3964d2: bf00         	nop
  3964d4: c5cc         	stm	r5!, {r2, r3, r6, r7}
  3964d6: 0059         	lsls	r1, r3, #0x1
  3964d8: da00         	bge	0x3964dc <PlayerDeath::removeFromSpace()+0xa8> @ imm = #0x0
  3964da: ffff 0000    	<unknown>

// ==== PlayerDeath::addToWorld
//      file offset 0x3964e0 (= ELF address; Ghidra 0x3a64e0), 352 bytes, Thumb-2
  3964e0: b530         	push	{r4, r5, lr}
  3964e2: b087         	sub	sp, #0x1c
  3964e4: 9005         	str	r0, [sp, #0x14]
  3964e6: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x396634 <PlayerDeath::addToWorld()+0x154>
  3964e8: 447c         	add	r4, pc
  3964ea: 9b05         	ldr	r3, [sp, #0x14]
  3964ec: f893 302c    	ldrb.w	r3, [r3, #0x2c]
  3964f0: 2b00         	cmp	r3, #0x0
  3964f2: d000         	beq	0x3964f6 <PlayerDeath::addToWorld()+0x16> @ imm = #0x0
  3964f4: e093         	b	0x39661e <PlayerDeath::addToWorld()+0x13e> @ imm = #0x126
  3964f6: 4b50         	ldr	r3, [pc, #0x140]        @ 0x396638 <PlayerDeath::addToWorld()+0x158>
  3964f8: 58e3         	ldr	r3, [r4, r3]
  3964fa: ed93 7a00    	vldr	s14, [r3]
  3964fe: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x396630 <PlayerDeath::addToWorld()+0x150>
  396502: ee67 7a27    	vmul.f32	s15, s14, s15
  396506: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39650a: 9d05         	ldr	r5, [sp, #0x14]
  39650c: 466b         	mov	r3, sp
  39650e: 4618         	mov	r0, r3
  396510: ed9f 0b45    	vldr	d0, [pc, #276]          @ 0x396628 <PlayerDeath::addToWorld()+0x148>
  396514: eeb0 1b47    	vmov.f64	d1, d7
  396518: f7fe fc9a    	bl	0x394e50 <PlasmaEnergy::updateStep(float)+0x5f8> @ imm = #-0x16cc
  39651c: 3538         	adds	r5, #0x38
  39651e: 466b         	mov	r3, sp
  396520: cb0f         	ldm	r3, {r0, r1, r2, r3}
  396522: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  396526: 9b05         	ldr	r3, [sp, #0x14]
  396528: 6a5b         	ldr	r3, [r3, #0x24]
  39652a: 2b00         	cmp	r3, #0x0
  39652c: d00f         	beq	0x39654e <PlayerDeath::addToWorld()+0x6e> @ imm = #0x1e
  39652e: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  396530: 58e3         	ldr	r3, [r4, r3]
  396532: 681b         	ldr	r3, [r3]
  396534: 681b         	ldr	r3, [r3]
  396536: 33cc         	adds	r3, #0xcc
  396538: 681b         	ldr	r3, [r3]
  39653a: 4a40         	ldr	r2, [pc, #0x100]        @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  39653c: 58a2         	ldr	r2, [r4, r2]
  39653e: 6812         	ldr	r2, [r2]
  396540: 4611         	mov	r1, r2
  396542: 9a05         	ldr	r2, [sp, #0x14]
  396544: 6a52         	ldr	r2, [r2, #0x24]
  396546: 4608         	mov	r0, r1
  396548: 4611         	mov	r1, r2
  39654a: 2203         	movs	r2, #0x3
  39654c: 4798         	blx	r3
  39654e: 9b05         	ldr	r3, [sp, #0x14]
  396550: 6a9b         	ldr	r3, [r3, #0x28]
  396552: 2b00         	cmp	r3, #0x0
  396554: d00f         	beq	0x396576 <PlayerDeath::addToWorld()+0x96> @ imm = #0x1e
  396556: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  396558: 58e3         	ldr	r3, [r4, r3]
  39655a: 681b         	ldr	r3, [r3]
  39655c: 681b         	ldr	r3, [r3]
  39655e: 33cc         	adds	r3, #0xcc
  396560: 681b         	ldr	r3, [r3]
  396562: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  396564: 58a2         	ldr	r2, [r4, r2]
  396566: 6812         	ldr	r2, [r2]
  396568: 4611         	mov	r1, r2
  39656a: 9a05         	ldr	r2, [sp, #0x14]
  39656c: 6a92         	ldr	r2, [r2, #0x28]
  39656e: 4608         	mov	r0, r1
  396570: 4611         	mov	r1, r2
  396572: 2203         	movs	r2, #0x3
  396574: 4798         	blx	r3
  396576: 9b05         	ldr	r3, [sp, #0x14]
  396578: 6a1b         	ldr	r3, [r3, #0x20]
  39657a: 2b00         	cmp	r3, #0x0
  39657c: d00f         	beq	0x39659e <PlayerDeath::addToWorld()+0xbe> @ imm = #0x1e
  39657e: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  396580: 58e3         	ldr	r3, [r4, r3]
  396582: 681b         	ldr	r3, [r3]
  396584: 681b         	ldr	r3, [r3]
  396586: 33cc         	adds	r3, #0xcc
  396588: 681b         	ldr	r3, [r3]
  39658a: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  39658c: 58a2         	ldr	r2, [r4, r2]
  39658e: 6812         	ldr	r2, [r2]
  396590: 4611         	mov	r1, r2
  396592: 9a05         	ldr	r2, [sp, #0x14]
  396594: 6a12         	ldr	r2, [r2, #0x20]
  396596: 4608         	mov	r0, r1
  396598: 4611         	mov	r1, r2
  39659a: 2203         	movs	r2, #0x3
  39659c: 4798         	blx	r3
  39659e: 9b05         	ldr	r3, [sp, #0x14]
  3965a0: 699b         	ldr	r3, [r3, #0x18]
  3965a2: 2b00         	cmp	r3, #0x0
  3965a4: d00f         	beq	0x3965c6 <PlayerDeath::addToWorld()+0xe6> @ imm = #0x1e
  3965a6: 4b25         	ldr	r3, [pc, #0x94]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  3965a8: 58e3         	ldr	r3, [r4, r3]
  3965aa: 681b         	ldr	r3, [r3]
  3965ac: 681b         	ldr	r3, [r3]
  3965ae: 33cc         	adds	r3, #0xcc
  3965b0: 681b         	ldr	r3, [r3]
  3965b2: 4a22         	ldr	r2, [pc, #0x88]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  3965b4: 58a2         	ldr	r2, [r4, r2]
  3965b6: 6812         	ldr	r2, [r2]
  3965b8: 4611         	mov	r1, r2
  3965ba: 9a05         	ldr	r2, [sp, #0x14]
  3965bc: 6992         	ldr	r2, [r2, #0x18]
  3965be: 4608         	mov	r0, r1
  3965c0: 4611         	mov	r1, r2
  3965c2: 2203         	movs	r2, #0x3
  3965c4: 4798         	blx	r3
  3965c6: 9b05         	ldr	r3, [sp, #0x14]
  3965c8: 695b         	ldr	r3, [r3, #0x14]
  3965ca: 2b00         	cmp	r3, #0x0
  3965cc: d00f         	beq	0x3965ee <PlayerDeath::addToWorld()+0x10e> @ imm = #0x1e
  3965ce: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  3965d0: 58e3         	ldr	r3, [r4, r3]
  3965d2: 681b         	ldr	r3, [r3]
  3965d4: 681b         	ldr	r3, [r3]
  3965d6: 33cc         	adds	r3, #0xcc
  3965d8: 681b         	ldr	r3, [r3]
  3965da: 4a18         	ldr	r2, [pc, #0x60]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  3965dc: 58a2         	ldr	r2, [r4, r2]
  3965de: 6812         	ldr	r2, [r2]
  3965e0: 4611         	mov	r1, r2
  3965e2: 9a05         	ldr	r2, [sp, #0x14]
  3965e4: 6952         	ldr	r2, [r2, #0x14]
  3965e6: 4608         	mov	r0, r1
  3965e8: 4611         	mov	r1, r2
  3965ea: 2203         	movs	r2, #0x3
  3965ec: 4798         	blx	r3
  3965ee: 9b05         	ldr	r3, [sp, #0x14]
  3965f0: 69db         	ldr	r3, [r3, #0x1c]
  3965f2: 2b00         	cmp	r3, #0x0
  3965f4: d00f         	beq	0x396616 <PlayerDeath::addToWorld()+0x136> @ imm = #0x1e
  3965f6: 4b11         	ldr	r3, [pc, #0x44]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  3965f8: 58e3         	ldr	r3, [r4, r3]
  3965fa: 681b         	ldr	r3, [r3]
  3965fc: 681b         	ldr	r3, [r3]
  3965fe: 33cc         	adds	r3, #0xcc
  396600: 681b         	ldr	r3, [r3]
  396602: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x39663c <PlayerDeath::addToWorld()+0x15c>
  396604: 58a2         	ldr	r2, [r4, r2]
  396606: 6812         	ldr	r2, [r2]
  396608: 4611         	mov	r1, r2
  39660a: 9a05         	ldr	r2, [sp, #0x14]
  39660c: 69d2         	ldr	r2, [r2, #0x1c]
  39660e: 4608         	mov	r0, r1
  396610: 4611         	mov	r1, r2
  396612: 2203         	movs	r2, #0x3
  396614: 4798         	blx	r3
  396616: 9b05         	ldr	r3, [sp, #0x14]
  396618: 2201         	movs	r2, #0x1
  39661a: f883 202c    	strb.w	r2, [r3, #0x2c]
  39661e: b007         	add	sp, #0x1c
  396620: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x396621); words below are literal-pool data ---
  396622: bf00         	nop
  396624: f3af 8000    	nop.w
  396630: 0000         	movs	r0, r0
  396632: c396         	stm	r3!, {r1, r2, r4, r7}
  396634: c520         	stm	r5!, {r5}
  396636: 0059         	lsls	r1, r3, #0x1
  396638: da30         	bge	0x39669c <PlayerDeath::removeFromWorld()+0x5c> @ imm = #0x60
  39663a: ffff d744    	<unknown>
  39663e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerDeath::removeFromWorld
//      file offset 0x396640 (= ELF address; Ghidra 0x3a6640), 276 bytes, Thumb-2
  396640: b510         	push	{r4, lr}
  396642: b082         	sub	sp, #0x8
  396644: 9001         	str	r0, [sp, #0x4]
  396646: 4c41         	ldr	r4, [pc, #0x104]        @ 0x39674c <PlayerDeath::removeFromWorld()+0x10c>
  396648: 447c         	add	r4, pc
  39664a: 9b01         	ldr	r3, [sp, #0x4]
  39664c: 2200         	movs	r2, #0x0
  39664e: f883 202c    	strb.w	r2, [r3, #0x2c]
  396652: 9b01         	ldr	r3, [sp, #0x4]
  396654: 695b         	ldr	r3, [r3, #0x14]
  396656: 2b00         	cmp	r3, #0x0
  396658: d00f         	beq	0x39667a <PlayerDeath::removeFromWorld()+0x3a> @ imm = #0x1e
  39665a: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  39665c: 58e3         	ldr	r3, [r4, r3]
  39665e: 681b         	ldr	r3, [r3]
  396660: 681b         	ldr	r3, [r3]
  396662: 33f4         	adds	r3, #0xf4
  396664: 681b         	ldr	r3, [r3]
  396666: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396668: 58a2         	ldr	r2, [r4, r2]
  39666a: 6812         	ldr	r2, [r2]
  39666c: 4611         	mov	r1, r2
  39666e: 9a01         	ldr	r2, [sp, #0x4]
  396670: 6952         	ldr	r2, [r2, #0x14]
  396672: 4608         	mov	r0, r1
  396674: 4611         	mov	r1, r2
  396676: 2200         	movs	r2, #0x0
  396678: 4798         	blx	r3
  39667a: 9b01         	ldr	r3, [sp, #0x4]
  39667c: 69db         	ldr	r3, [r3, #0x1c]
  39667e: 2b00         	cmp	r3, #0x0
  396680: d00f         	beq	0x3966a2 <PlayerDeath::removeFromWorld()+0x62> @ imm = #0x1e
  396682: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396684: 58e3         	ldr	r3, [r4, r3]
  396686: 681b         	ldr	r3, [r3]
  396688: 681b         	ldr	r3, [r3]
  39668a: 33f4         	adds	r3, #0xf4
  39668c: 681b         	ldr	r3, [r3]
  39668e: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396690: 58a2         	ldr	r2, [r4, r2]
  396692: 6812         	ldr	r2, [r2]
  396694: 4611         	mov	r1, r2
  396696: 9a01         	ldr	r2, [sp, #0x4]
  396698: 69d2         	ldr	r2, [r2, #0x1c]
  39669a: 4608         	mov	r0, r1
  39669c: 4611         	mov	r1, r2
  39669e: 2200         	movs	r2, #0x0
  3966a0: 4798         	blx	r3
  3966a2: 9b01         	ldr	r3, [sp, #0x4]
  3966a4: 6a1b         	ldr	r3, [r3, #0x20]
  3966a6: 2b00         	cmp	r3, #0x0
  3966a8: d00f         	beq	0x3966ca <PlayerDeath::removeFromWorld()+0x8a> @ imm = #0x1e
  3966aa: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  3966ac: 58e3         	ldr	r3, [r4, r3]
  3966ae: 681b         	ldr	r3, [r3]
  3966b0: 681b         	ldr	r3, [r3]
  3966b2: 33f4         	adds	r3, #0xf4
  3966b4: 681b         	ldr	r3, [r3]
  3966b6: 4a26         	ldr	r2, [pc, #0x98]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  3966b8: 58a2         	ldr	r2, [r4, r2]
  3966ba: 6812         	ldr	r2, [r2]
  3966bc: 4611         	mov	r1, r2
  3966be: 9a01         	ldr	r2, [sp, #0x4]
  3966c0: 6a12         	ldr	r2, [r2, #0x20]
  3966c2: 4608         	mov	r0, r1
  3966c4: 4611         	mov	r1, r2
  3966c6: 2200         	movs	r2, #0x0
  3966c8: 4798         	blx	r3
  3966ca: 9b01         	ldr	r3, [sp, #0x4]
  3966cc: 699b         	ldr	r3, [r3, #0x18]
  3966ce: 2b00         	cmp	r3, #0x0
  3966d0: d00f         	beq	0x3966f2 <PlayerDeath::removeFromWorld()+0xb2> @ imm = #0x1e
  3966d2: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  3966d4: 58e3         	ldr	r3, [r4, r3]
  3966d6: 681b         	ldr	r3, [r3]
  3966d8: 681b         	ldr	r3, [r3]
  3966da: 33f4         	adds	r3, #0xf4
  3966dc: 681b         	ldr	r3, [r3]
  3966de: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  3966e0: 58a2         	ldr	r2, [r4, r2]
  3966e2: 6812         	ldr	r2, [r2]
  3966e4: 4611         	mov	r1, r2
  3966e6: 9a01         	ldr	r2, [sp, #0x4]
  3966e8: 6992         	ldr	r2, [r2, #0x18]
  3966ea: 4608         	mov	r0, r1
  3966ec: 4611         	mov	r1, r2
  3966ee: 2200         	movs	r2, #0x0
  3966f0: 4798         	blx	r3
  3966f2: 9b01         	ldr	r3, [sp, #0x4]
  3966f4: 6a5b         	ldr	r3, [r3, #0x24]
  3966f6: 2b00         	cmp	r3, #0x0
  3966f8: d00f         	beq	0x39671a <PlayerDeath::removeFromWorld()+0xda> @ imm = #0x1e
  3966fa: 4b15         	ldr	r3, [pc, #0x54]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  3966fc: 58e3         	ldr	r3, [r4, r3]
  3966fe: 681b         	ldr	r3, [r3]
  396700: 681b         	ldr	r3, [r3]
  396702: 33f4         	adds	r3, #0xf4
  396704: 681b         	ldr	r3, [r3]
  396706: 4a12         	ldr	r2, [pc, #0x48]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396708: 58a2         	ldr	r2, [r4, r2]
  39670a: 6812         	ldr	r2, [r2]
  39670c: 4611         	mov	r1, r2
  39670e: 9a01         	ldr	r2, [sp, #0x4]
  396710: 6a52         	ldr	r2, [r2, #0x24]
  396712: 4608         	mov	r0, r1
  396714: 4611         	mov	r1, r2
  396716: 2200         	movs	r2, #0x0
  396718: 4798         	blx	r3
  39671a: 9b01         	ldr	r3, [sp, #0x4]
  39671c: 6a9b         	ldr	r3, [r3, #0x28]
  39671e: 2b00         	cmp	r3, #0x0
  396720: d00f         	beq	0x396742 <PlayerDeath::removeFromWorld()+0x102> @ imm = #0x1e
  396722: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396724: 58e3         	ldr	r3, [r4, r3]
  396726: 681b         	ldr	r3, [r3]
  396728: 681b         	ldr	r3, [r3]
  39672a: 33f4         	adds	r3, #0xf4
  39672c: 681b         	ldr	r3, [r3]
  39672e: 4a08         	ldr	r2, [pc, #0x20]         @ 0x396750 <PlayerDeath::removeFromWorld()+0x110>
  396730: 58a2         	ldr	r2, [r4, r2]
  396732: 6812         	ldr	r2, [r2]
  396734: 4611         	mov	r1, r2
  396736: 9a01         	ldr	r2, [sp, #0x4]
  396738: 6a92         	ldr	r2, [r2, #0x28]
  39673a: 4608         	mov	r0, r1
  39673c: 4611         	mov	r1, r2
  39673e: 2200         	movs	r2, #0x0
  396740: 4798         	blx	r3
  396742: 9801         	ldr	r0, [sp, #0x4]
  396744: f7ff fe76    	bl	0x396434 <PlayerDeath::removeFromSpace()> @ imm = #-0x314
  396748: b002         	add	sp, #0x8
  39674a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39674b); words below are literal-pool data ---
  39674c: c3c0         	stm	r3!, {r6, r7}
  39674e: 0059         	lsls	r1, r3, #0x1
  396750: d744         	bvc	0x3967dc <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x88> @ imm = #0x88
  396752: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerDeath::matchNode
//      file offset 0x396754 (= ELF address; Ghidra 0x3a6754), 396 bytes, Thumb-2
  396754: b530         	push	{r4, r5, lr}
  396756: b095         	sub	sp, #0x54
  396758: 9003         	str	r0, [sp, #0xc]
  39675a: 9102         	str	r1, [sp, #0x8]
  39675c: 9201         	str	r2, [sp, #0x4]
  39675e: f88d 3003    	strb.w	r3, [sp, #0x3]
  396762: 4c5c         	ldr	r4, [pc, #0x170]        @ 0x3968d4 <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x180>
  396764: 447c         	add	r4, pc
  396766: 9801         	ldr	r0, [sp, #0x4]
  396768: f746 fab8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb9a90
  39676c: 4603         	mov	r3, r0
  39676e: aa0a         	add	r2, sp, #0x28
  396770: 4610         	mov	r0, r2
  396772: 4619         	mov	r1, r3
  396774: f1fc fdd0    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1fcba0
  396778: 9b02         	ldr	r3, [sp, #0x8]
  39677a: 681b         	ldr	r3, [r3]
  39677c: f503 7302    	add.w	r3, r3, #0x208
  396780: 681b         	ldr	r3, [r3]
  396782: aa0a         	add	r2, sp, #0x28
  396784: 9802         	ldr	r0, [sp, #0x8]
  396786: 4611         	mov	r1, r2
  396788: 4798         	blx	r3
  39678a: ab08         	add	r3, sp, #0x20
  39678c: 4618         	mov	r0, r3
  39678e: f04f 0100    	mov.w	r1, #0x0
  396792: f04f 0200    	mov.w	r2, #0x0
  396796: f1fc faab    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fc556
  39679a: 9b01         	ldr	r3, [sp, #0x4]
  39679c: 681b         	ldr	r3, [r3]
  39679e: f503 73c2    	add.w	r3, r3, #0x184
  3967a2: 681b         	ldr	r3, [r3]
  3967a4: 9a01         	ldr	r2, [sp, #0x4]
  3967a6: a90e         	add	r1, sp, #0x38
  3967a8: 4608         	mov	r0, r1
  3967aa: 4611         	mov	r1, r2
  3967ac: 4798         	blx	r3
  3967ae: a904         	add	r1, sp, #0x10
  3967b0: aa08         	add	r2, sp, #0x20
  3967b2: ab0e         	add	r3, sp, #0x38
  3967b4: 4608         	mov	r0, r1
  3967b6: 4611         	mov	r1, r2
  3967b8: 461a         	mov	r2, r3
  3967ba: f1fb fdb3    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1fbb66
  3967be: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3968d8 <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x184>
  3967c0: 58e3         	ldr	r3, [r4, r3]
  3967c2: 681b         	ldr	r3, [r3]
  3967c4: 681b         	ldr	r3, [r3]
  3967c6: f503 73c4    	add.w	r3, r3, #0x188
  3967ca: 681b         	ldr	r3, [r3]
  3967cc: 4a42         	ldr	r2, [pc, #0x108]        @ 0x3968d8 <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x184>
  3967ce: 58a2         	ldr	r2, [r4, r2]
  3967d0: 6812         	ldr	r2, [r2]
  3967d2: a90e         	add	r1, sp, #0x38
  3967d4: 4608         	mov	r0, r1
  3967d6: 4611         	mov	r1, r2
  3967d8: 4798         	blx	r3
  3967da: a908         	add	r1, sp, #0x20
  3967dc: aa04         	add	r2, sp, #0x10
  3967de: ab0e         	add	r3, sp, #0x38
  3967e0: 4608         	mov	r0, r1
  3967e2: 4611         	mov	r1, r2
  3967e4: 461a         	mov	r2, r3
  3967e6: f1fb fd9d    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1fbb3a
  3967ea: aa04         	add	r2, sp, #0x10
  3967ec: ab08         	add	r3, sp, #0x20
  3967ee: 4610         	mov	r0, r2
  3967f0: 4619         	mov	r1, r3
  3967f2: f1fc faab    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1fc556
  3967f6: 9802         	ldr	r0, [sp, #0x8]
  3967f8: f746 fa70    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb9b20
  3967fc: 4603         	mov	r3, r0
  3967fe: aa0e         	add	r2, sp, #0x38
  396800: 4610         	mov	r0, r2
  396802: 4619         	mov	r1, r3
  396804: f1fc fd88    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1fcb10
  396808: 9b02         	ldr	r3, [sp, #0x8]
  39680a: 681b         	ldr	r3, [r3]
  39680c: 3340         	adds	r3, #0x40
  39680e: 681b         	ldr	r3, [r3]
  396810: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x3968dc <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x188>
  396812: 58a2         	ldr	r2, [r4, r2]
  396814: 6812         	ldr	r2, [r2]
  396816: 9802         	ldr	r0, [sp, #0x8]
  396818: 4611         	mov	r1, r2
  39681a: 4798         	blx	r3
  39681c: 9b02         	ldr	r3, [sp, #0x8]
  39681e: 681b         	ldr	r3, [r3]
  396820: 334c         	adds	r3, #0x4c
  396822: 681d         	ldr	r5, [r3]
  396824: ed9d 7a10    	vldr	s14, [sp, #64]
  396828: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39682c: eec7 6a27    	vdiv.f32	s13, s14, s15
  396830: ed9d 7a11    	vldr	s14, [sp, #68]
  396834: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  396838: eec7 7a27    	vdiv.f32	s15, s14, s15
  39683c: ab06         	add	r3, sp, #0x18
  39683e: 4618         	mov	r0, r3
  396840: ee16 1a90    	vmov	r1, s13
  396844: ee17 2a90    	vmov	r2, s15
  396848: f1fc fa52    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fc4a4
  39684c: a908         	add	r1, sp, #0x20
  39684e: aa04         	add	r2, sp, #0x10
  396850: ab06         	add	r3, sp, #0x18
  396852: 4608         	mov	r0, r1
  396854: 4611         	mov	r1, r2
  396856: 461a         	mov	r2, r3
  396858: f7fe fa98    	bl	0x394d8c <PlasmaEnergy::updateStep(float)+0x534> @ imm = #-0x1ad0
  39685c: ab08         	add	r3, sp, #0x20
  39685e: 9802         	ldr	r0, [sp, #0x8]
  396860: 4619         	mov	r1, r3
  396862: 47a8         	blx	r5
  396864: 9b02         	ldr	r3, [sp, #0x8]
  396866: 681b         	ldr	r3, [r3]
  396868: 3330         	adds	r3, #0x30
  39686a: 681a         	ldr	r2, [r3]
  39686c: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  396870: 2b00         	cmp	r3, #0x0
  396872: d003         	beq	0x39687c <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x128> @ imm = #0x6
  396874: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3968dc <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x188>
  396876: 58e3         	ldr	r3, [r4, r3]
  396878: 681b         	ldr	r3, [r3]
  39687a: e007         	b	0x39688c <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x138> @ imm = #0xe
  39687c: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3968dc <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x188>
  39687e: 58e3         	ldr	r3, [r4, r3]
  396880: edd3 7a00    	vldr	s15, [r3]
  396884: eef1 7a67    	vneg.f32	s15, s15
  396888: ee17 3a90    	vmov	r3, s15
  39688c: 9802         	ldr	r0, [sp, #0x8]
  39688e: 4619         	mov	r1, r3
  396890: 4790         	blx	r2
  396892: 9b02         	ldr	r3, [sp, #0x8]
  396894: 681b         	ldr	r3, [r3]
  396896: 3398         	adds	r3, #0x98
  396898: 681c         	ldr	r4, [r3]
  39689a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  39689e: 2b00         	cmp	r3, #0x0
  3968a0: d008         	beq	0x3968b4 <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x160> @ imm = #0x10
  3968a2: 9b01         	ldr	r3, [sp, #0x4]
  3968a4: 681b         	ldr	r3, [r3]
  3968a6: 339c         	adds	r3, #0x9c
  3968a8: 681b         	ldr	r3, [r3]
  3968aa: 9a01         	ldr	r2, [sp, #0x4]
  3968ac: 4610         	mov	r0, r2
  3968ae: 4798         	blx	r3
  3968b0: 4603         	mov	r3, r0
  3968b2: e009         	b	0x3968c8 <PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool)+0x174> @ imm = #0x12
  3968b4: 9b01         	ldr	r3, [sp, #0x4]
  3968b6: 681b         	ldr	r3, [r3]
  3968b8: 339c         	adds	r3, #0x9c
  3968ba: 681b         	ldr	r3, [r3]
  3968bc: 9a01         	ldr	r2, [sp, #0x4]
  3968be: 4610         	mov	r0, r2
  3968c0: 4798         	blx	r3
  3968c2: 4603         	mov	r3, r0
  3968c4: f083 4300    	eor	r3, r3, #0x80000000
  3968c8: 9802         	ldr	r0, [sp, #0x8]
  3968ca: 4619         	mov	r1, r3
  3968cc: 47a0         	blx	r4
  3968ce: b015         	add	sp, #0x54
  3968d0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3968d1); words below are literal-pool data ---
  3968d2: bf00         	nop
  3968d4: c2a4         	stm	r2!, {r2, r5, r7}
  3968d6: 0059         	lsls	r1, r3, #0x1
  3968d8: d744         	bvc	0x396964 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x84> @ imm = #0x88
  3968da: ffff d748    	<unknown>
  3968de: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerDeath::matchTextureNode
//      file offset 0x3968e0 (= ELF address; Ghidra 0x3a68e0), 388 bytes, Thumb-2
  3968e0: b530         	push	{r4, r5, lr}
  3968e2: b093         	sub	sp, #0x4c
  3968e4: 9003         	str	r0, [sp, #0xc]
  3968e6: 9102         	str	r1, [sp, #0x8]
  3968e8: 4613         	mov	r3, r2
  3968ea: f88d 3007    	strb.w	r3, [sp, #0x7]
  3968ee: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x396a58 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x178>
  3968f0: 447c         	add	r4, pc
  3968f2: 9b02         	ldr	r3, [sp, #0x8]
  3968f4: 681b         	ldr	r3, [r3]
  3968f6: f503 73fa    	add.w	r3, r3, #0x1f4
  3968fa: 681b         	ldr	r3, [r3]
  3968fc: 9802         	ldr	r0, [sp, #0x8]
  3968fe: 4798         	blx	r3
  396900: 4603         	mov	r3, r0
  396902: 4618         	mov	r0, r3
  396904: f241 fbc0    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x241780
  396908: 4603         	mov	r3, r0
  39690a: 9305         	str	r3, [sp, #0x14]
  39690c: ab0a         	add	r3, sp, #0x28
  39690e: 4618         	mov	r0, r3
  396910: f04f 0100    	mov.w	r1, #0x0
  396914: f04f 0200    	mov.w	r2, #0x0
  396918: f1fc f9ea    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fc3d4
  39691c: 9b02         	ldr	r3, [sp, #0x8]
  39691e: 681b         	ldr	r3, [r3]
  396920: f503 73c2    	add.w	r3, r3, #0x184
  396924: 681b         	ldr	r3, [r3]
  396926: 9a02         	ldr	r2, [sp, #0x8]
  396928: a90c         	add	r1, sp, #0x30
  39692a: 4608         	mov	r0, r1
  39692c: 4611         	mov	r1, r2
  39692e: 4798         	blx	r3
  396930: a906         	add	r1, sp, #0x18
  396932: aa0a         	add	r2, sp, #0x28
  396934: ab0c         	add	r3, sp, #0x30
  396936: 4608         	mov	r0, r1
  396938: 4611         	mov	r1, r2
  39693a: 461a         	mov	r2, r3
  39693c: f1fb fcf2    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1fb9e4
  396940: 4b46         	ldr	r3, [pc, #0x118]        @ 0x396a5c <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x17c>
  396942: 58e3         	ldr	r3, [r4, r3]
  396944: 681b         	ldr	r3, [r3]
  396946: 681b         	ldr	r3, [r3]
  396948: f503 73c4    	add.w	r3, r3, #0x188
  39694c: 681b         	ldr	r3, [r3]
  39694e: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x396a5c <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x17c>
  396950: 58a2         	ldr	r2, [r4, r2]
  396952: 6812         	ldr	r2, [r2]
  396954: a90c         	add	r1, sp, #0x30
  396956: 4608         	mov	r0, r1
  396958: 4611         	mov	r1, r2
  39695a: 4798         	blx	r3
  39695c: a90a         	add	r1, sp, #0x28
  39695e: aa06         	add	r2, sp, #0x18
  396960: ab0c         	add	r3, sp, #0x30
  396962: 4608         	mov	r0, r1
  396964: 4611         	mov	r1, r2
  396966: 461a         	mov	r2, r3
  396968: f1fb fcdc    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1fb9b8
  39696c: aa06         	add	r2, sp, #0x18
  39696e: ab0a         	add	r3, sp, #0x28
  396970: 4610         	mov	r0, r2
  396972: 4619         	mov	r1, r3
  396974: f1fc f9ea    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1fc3d4
  396978: 9805         	ldr	r0, [sp, #0x14]
  39697a: f746 f9af    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb9ca2
  39697e: 4603         	mov	r3, r0
  396980: aa0c         	add	r2, sp, #0x30
  396982: 4610         	mov	r0, r2
  396984: 4619         	mov	r1, r3
  396986: f1fc fcc7    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x1fc98e
  39698a: 9b05         	ldr	r3, [sp, #0x14]
  39698c: 681b         	ldr	r3, [r3]
  39698e: 3340         	adds	r3, #0x40
  396990: 681b         	ldr	r3, [r3]
  396992: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x396a60 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x180>
  396994: 58a2         	ldr	r2, [r4, r2]
  396996: 6812         	ldr	r2, [r2]
  396998: 9805         	ldr	r0, [sp, #0x14]
  39699a: 4611         	mov	r1, r2
  39699c: 4798         	blx	r3
  39699e: 9b05         	ldr	r3, [sp, #0x14]
  3969a0: 681b         	ldr	r3, [r3]
  3969a2: 334c         	adds	r3, #0x4c
  3969a4: 681d         	ldr	r5, [r3]
  3969a6: ed9d 7a0e    	vldr	s14, [sp, #56]
  3969aa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3969ae: eec7 6a27    	vdiv.f32	s13, s14, s15
  3969b2: ed9d 7a0f    	vldr	s14, [sp, #60]
  3969b6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3969ba: eec7 7a27    	vdiv.f32	s15, s14, s15
  3969be: ab08         	add	r3, sp, #0x20
  3969c0: 4618         	mov	r0, r3
  3969c2: ee16 1a90    	vmov	r1, s13
  3969c6: ee17 2a90    	vmov	r2, s15
  3969ca: f1fc f991    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fc322
  3969ce: a90a         	add	r1, sp, #0x28
  3969d0: aa06         	add	r2, sp, #0x18
  3969d2: ab08         	add	r3, sp, #0x20
  3969d4: 4608         	mov	r0, r1
  3969d6: 4611         	mov	r1, r2
  3969d8: 461a         	mov	r2, r3
  3969da: f7fe f9d7    	bl	0x394d8c <PlasmaEnergy::updateStep(float)+0x534> @ imm = #-0x1c52
  3969de: ab0a         	add	r3, sp, #0x28
  3969e0: 9805         	ldr	r0, [sp, #0x14]
  3969e2: 4619         	mov	r1, r3
  3969e4: 47a8         	blx	r5
  3969e6: 9b05         	ldr	r3, [sp, #0x14]
  3969e8: 681b         	ldr	r3, [r3]
  3969ea: 3330         	adds	r3, #0x30
  3969ec: 681a         	ldr	r2, [r3]
  3969ee: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  3969f2: 2b00         	cmp	r3, #0x0
  3969f4: d003         	beq	0x3969fe <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x11e> @ imm = #0x6
  3969f6: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x396a60 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x180>
  3969f8: 58e3         	ldr	r3, [r4, r3]
  3969fa: 681b         	ldr	r3, [r3]
  3969fc: e007         	b	0x396a0e <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x12e> @ imm = #0xe
  3969fe: 4b18         	ldr	r3, [pc, #0x60]         @ 0x396a60 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x180>
  396a00: 58e3         	ldr	r3, [r4, r3]
  396a02: edd3 7a00    	vldr	s15, [r3]
  396a06: eef1 7a67    	vneg.f32	s15, s15
  396a0a: ee17 3a90    	vmov	r3, s15
  396a0e: 9805         	ldr	r0, [sp, #0x14]
  396a10: 4619         	mov	r1, r3
  396a12: 4790         	blx	r2
  396a14: 9b05         	ldr	r3, [sp, #0x14]
  396a16: 681b         	ldr	r3, [r3]
  396a18: 3398         	adds	r3, #0x98
  396a1a: 681c         	ldr	r4, [r3]
  396a1c: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  396a20: 2b00         	cmp	r3, #0x0
  396a22: d008         	beq	0x396a36 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x156> @ imm = #0x10
  396a24: 9b02         	ldr	r3, [sp, #0x8]
  396a26: 681b         	ldr	r3, [r3]
  396a28: 339c         	adds	r3, #0x9c
  396a2a: 681b         	ldr	r3, [r3]
  396a2c: 9a02         	ldr	r2, [sp, #0x8]
  396a2e: 4610         	mov	r0, r2
  396a30: 4798         	blx	r3
  396a32: 4603         	mov	r3, r0
  396a34: e009         	b	0x396a4a <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)+0x16a> @ imm = #0x12
  396a36: 9b02         	ldr	r3, [sp, #0x8]
  396a38: 681b         	ldr	r3, [r3]
  396a3a: 339c         	adds	r3, #0x9c
  396a3c: 681b         	ldr	r3, [r3]
  396a3e: 9a02         	ldr	r2, [sp, #0x8]
  396a40: 4610         	mov	r0, r2
  396a42: 4798         	blx	r3
  396a44: 4603         	mov	r3, r0
  396a46: f083 4300    	eor	r3, r3, #0x80000000
  396a4a: 9805         	ldr	r0, [sp, #0x14]
  396a4c: 4619         	mov	r1, r3
  396a4e: 47a0         	blx	r4
  396a50: 9b05         	ldr	r3, [sp, #0x14]
  396a52: 4618         	mov	r0, r3
  396a54: b013         	add	sp, #0x4c
  396a56: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x396a57); words below are literal-pool data ---
  396a58: c118         	stm	r1!, {r3, r4}
  396a5a: 0059         	lsls	r1, r3, #0x1
  396a5c: d744         	bvc	0x396ae8 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x84> @ imm = #0x88
  396a5e: ffff d748    	<unknown>
  396a62: ffff b082    	<unknown>

// ==== PlayerDeath::reset
//      file offset 0x396a64 (= ELF address; Ghidra 0x3a6a64), 602 bytes, Thumb-2
  396a64: b082         	sub	sp, #0x8
  396a66: b510         	push	{r4, lr}
  396a68: b084         	sub	sp, #0x10
  396a6a: 9003         	str	r0, [sp, #0xc]
  396a6c: 9102         	str	r1, [sp, #0x8]
  396a6e: a906         	add	r1, sp, #0x18
  396a70: e881 000c    	stm.w	r1, {r2, r3}
  396a74: 9b03         	ldr	r3, [sp, #0xc]
  396a76: f893 302c    	ldrb.w	r3, [r3, #0x2c]
  396a7a: 2b00         	cmp	r3, #0x0
  396a7c: d000         	beq	0x396a80 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x1c> @ imm = #0x0
  396a7e: e119         	b	0x396cb4 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x250> @ imm = #0x232
  396a80: 9b03         	ldr	r3, [sp, #0xc]
  396a82: 695b         	ldr	r3, [r3, #0x14]
  396a84: 2b00         	cmp	r3, #0x0
  396a86: d00a         	beq	0x396a9e <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x3a> @ imm = #0x14
  396a88: 9b03         	ldr	r3, [sp, #0xc]
  396a8a: 695b         	ldr	r3, [r3, #0x14]
  396a8c: 681b         	ldr	r3, [r3]
  396a8e: f503 73d2    	add.w	r3, r3, #0x1a4
  396a92: 681b         	ldr	r3, [r3]
  396a94: 9a03         	ldr	r2, [sp, #0xc]
  396a96: 6952         	ldr	r2, [r2, #0x14]
  396a98: 4610         	mov	r0, r2
  396a9a: 21ff         	movs	r1, #0xff
  396a9c: 4798         	blx	r3
  396a9e: 9b03         	ldr	r3, [sp, #0xc]
  396aa0: 69db         	ldr	r3, [r3, #0x1c]
  396aa2: 2b00         	cmp	r3, #0x0
  396aa4: d00a         	beq	0x396abc <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x58> @ imm = #0x14
  396aa6: 9b03         	ldr	r3, [sp, #0xc]
  396aa8: 69db         	ldr	r3, [r3, #0x1c]
  396aaa: 681b         	ldr	r3, [r3]
  396aac: f503 73d2    	add.w	r3, r3, #0x1a4
  396ab0: 681b         	ldr	r3, [r3]
  396ab2: 9a03         	ldr	r2, [sp, #0xc]
  396ab4: 69d2         	ldr	r2, [r2, #0x1c]
  396ab6: 4610         	mov	r0, r2
  396ab8: 21ff         	movs	r1, #0xff
  396aba: 4798         	blx	r3
  396abc: 9b03         	ldr	r3, [sp, #0xc]
  396abe: 6a1b         	ldr	r3, [r3, #0x20]
  396ac0: 2b00         	cmp	r3, #0x0
  396ac2: d00a         	beq	0x396ada <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x76> @ imm = #0x14
  396ac4: 9b03         	ldr	r3, [sp, #0xc]
  396ac6: 6a1b         	ldr	r3, [r3, #0x20]
  396ac8: 681b         	ldr	r3, [r3]
  396aca: f503 73d2    	add.w	r3, r3, #0x1a4
  396ace: 681b         	ldr	r3, [r3]
  396ad0: 9a03         	ldr	r2, [sp, #0xc]
  396ad2: 6a12         	ldr	r2, [r2, #0x20]
  396ad4: 4610         	mov	r0, r2
  396ad6: 21ff         	movs	r1, #0xff
  396ad8: 4798         	blx	r3
  396ada: 9b03         	ldr	r3, [sp, #0xc]
  396adc: 699b         	ldr	r3, [r3, #0x18]
  396ade: 2b00         	cmp	r3, #0x0
  396ae0: d00a         	beq	0x396af8 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x94> @ imm = #0x14
  396ae2: 9b03         	ldr	r3, [sp, #0xc]
  396ae4: 699b         	ldr	r3, [r3, #0x18]
  396ae6: 681b         	ldr	r3, [r3]
  396ae8: f503 73d2    	add.w	r3, r3, #0x1a4
  396aec: 681b         	ldr	r3, [r3]
  396aee: 9a03         	ldr	r2, [sp, #0xc]
  396af0: 6992         	ldr	r2, [r2, #0x18]
  396af2: 4610         	mov	r0, r2
  396af4: 21ff         	movs	r1, #0xff
  396af6: 4798         	blx	r3
  396af8: 9b03         	ldr	r3, [sp, #0xc]
  396afa: 6a5b         	ldr	r3, [r3, #0x24]
  396afc: 2b00         	cmp	r3, #0x0
  396afe: d00a         	beq	0x396b16 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0xb2> @ imm = #0x14
  396b00: 9b03         	ldr	r3, [sp, #0xc]
  396b02: 6a5b         	ldr	r3, [r3, #0x24]
  396b04: 681b         	ldr	r3, [r3]
  396b06: f503 73d2    	add.w	r3, r3, #0x1a4
  396b0a: 681b         	ldr	r3, [r3]
  396b0c: 9a03         	ldr	r2, [sp, #0xc]
  396b0e: 6a52         	ldr	r2, [r2, #0x24]
  396b10: 4610         	mov	r0, r2
  396b12: 21ff         	movs	r1, #0xff
  396b14: 4798         	blx	r3
  396b16: 9b03         	ldr	r3, [sp, #0xc]
  396b18: 6a9b         	ldr	r3, [r3, #0x28]
  396b1a: 2b00         	cmp	r3, #0x0
  396b1c: d00a         	beq	0x396b34 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0xd0> @ imm = #0x14
  396b1e: 9b03         	ldr	r3, [sp, #0xc]
  396b20: 6a9b         	ldr	r3, [r3, #0x28]
  396b22: 681b         	ldr	r3, [r3]
  396b24: f503 73d2    	add.w	r3, r3, #0x1a4
  396b28: 681b         	ldr	r3, [r3]
  396b2a: 9a03         	ldr	r2, [sp, #0xc]
  396b2c: 6a92         	ldr	r2, [r2, #0x28]
  396b2e: 4610         	mov	r0, r2
  396b30: 21ff         	movs	r1, #0xff
  396b32: 4798         	blx	r3
  396b34: 9b03         	ldr	r3, [sp, #0xc]
  396b36: f04f 0200    	mov.w	r2, #0x0
  396b3a: 631a         	str	r2, [r3, #0x30]
  396b3c: 9b03         	ldr	r3, [sp, #0xc]
  396b3e: 695b         	ldr	r3, [r3, #0x14]
  396b40: 2b00         	cmp	r3, #0x0
  396b42: d004         	beq	0x396b4e <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0xea> @ imm = #0x8
  396b44: 9b03         	ldr	r3, [sp, #0xc]
  396b46: 695b         	ldr	r3, [r3, #0x14]
  396b48: 4618         	mov	r0, r3
  396b4a: f201 f9b5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20136a
  396b4e: 9b03         	ldr	r3, [sp, #0xc]
  396b50: 69db         	ldr	r3, [r3, #0x1c]
  396b52: 2b00         	cmp	r3, #0x0
  396b54: d004         	beq	0x396b60 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0xfc> @ imm = #0x8
  396b56: 9b03         	ldr	r3, [sp, #0xc]
  396b58: 69db         	ldr	r3, [r3, #0x1c]
  396b5a: 4618         	mov	r0, r3
  396b5c: f201 f9ac    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201358
  396b60: 9b03         	ldr	r3, [sp, #0xc]
  396b62: 6a1b         	ldr	r3, [r3, #0x20]
  396b64: 2b00         	cmp	r3, #0x0
  396b66: d004         	beq	0x396b72 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x10e> @ imm = #0x8
  396b68: 9b03         	ldr	r3, [sp, #0xc]
  396b6a: 6a1b         	ldr	r3, [r3, #0x20]
  396b6c: 4618         	mov	r0, r3
  396b6e: f201 f9a3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201346
  396b72: 9b03         	ldr	r3, [sp, #0xc]
  396b74: 699b         	ldr	r3, [r3, #0x18]
  396b76: 2b00         	cmp	r3, #0x0
  396b78: d004         	beq	0x396b84 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x120> @ imm = #0x8
  396b7a: 9b03         	ldr	r3, [sp, #0xc]
  396b7c: 699b         	ldr	r3, [r3, #0x18]
  396b7e: 4618         	mov	r0, r3
  396b80: f201 f99a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201334
  396b84: 9b03         	ldr	r3, [sp, #0xc]
  396b86: 6a5b         	ldr	r3, [r3, #0x24]
  396b88: 2b00         	cmp	r3, #0x0
  396b8a: d004         	beq	0x396b96 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x132> @ imm = #0x8
  396b8c: 9b03         	ldr	r3, [sp, #0xc]
  396b8e: 6a5b         	ldr	r3, [r3, #0x24]
  396b90: 4618         	mov	r0, r3
  396b92: f201 f991    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201322
  396b96: 9b03         	ldr	r3, [sp, #0xc]
  396b98: 6a9b         	ldr	r3, [r3, #0x28]
  396b9a: 2b00         	cmp	r3, #0x0
  396b9c: d004         	beq	0x396ba8 <PlayerDeath::reset(SoldierView*, cpVect, cpVect)+0x144> @ imm = #0x8
  396b9e: 9b03         	ldr	r3, [sp, #0xc]
  396ba0: 6a9b         	ldr	r3, [r3, #0x28]
  396ba2: 4618         	mov	r0, r3
  396ba4: f201 f988    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x201310
  396ba8: 9b02         	ldr	r3, [sp, #0x8]
  396baa: f8d3 40f0    	ldr.w	r4, [r3, #0xf0]
  396bae: 9802         	ldr	r0, [sp, #0x8]
  396bb0: f05d fa06    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d40c
  396bb4: 4603         	mov	r3, r0
  396bb6: 9803         	ldr	r0, [sp, #0xc]
  396bb8: 4621         	mov	r1, r4
  396bba: 461a         	mov	r2, r3
  396bbc: f7ff fe90    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x2e0
  396bc0: 4602         	mov	r2, r0
  396bc2: 9b03         	ldr	r3, [sp, #0xc]
  396bc4: 615a         	str	r2, [r3, #0x14]
  396bc6: 9b03         	ldr	r3, [sp, #0xc]
  396bc8: 695b         	ldr	r3, [r3, #0x14]
  396bca: 4618         	mov	r0, r3
  396bcc: f201 f98c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x201318
  396bd0: 9b02         	ldr	r3, [sp, #0x8]
  396bd2: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  396bd6: 9802         	ldr	r0, [sp, #0x8]
  396bd8: f05d f9f2    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d3e4
  396bdc: 4603         	mov	r3, r0
  396bde: 9803         	ldr	r0, [sp, #0xc]
  396be0: 4621         	mov	r1, r4
  396be2: 461a         	mov	r2, r3
  396be4: f7ff fe7c    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x308
  396be8: 4602         	mov	r2, r0
  396bea: 9b03         	ldr	r3, [sp, #0xc]
  396bec: 61da         	str	r2, [r3, #0x1c]
  396bee: 9b03         	ldr	r3, [sp, #0xc]
  396bf0: 69db         	ldr	r3, [r3, #0x1c]
  396bf2: 4618         	mov	r0, r3
  396bf4: f201 f978    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2012f0
  396bf8: 9b02         	ldr	r3, [sp, #0x8]
  396bfa: f8d3 40f8    	ldr.w	r4, [r3, #0xf8]
  396bfe: 9802         	ldr	r0, [sp, #0x8]
  396c00: f05d f9de    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d3bc
  396c04: 4603         	mov	r3, r0
  396c06: 9803         	ldr	r0, [sp, #0xc]
  396c08: 4621         	mov	r1, r4
  396c0a: 461a         	mov	r2, r3
  396c0c: f7ff fe68    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x330
  396c10: 4602         	mov	r2, r0
  396c12: 9b03         	ldr	r3, [sp, #0xc]
  396c14: 621a         	str	r2, [r3, #0x20]
  396c16: 9b03         	ldr	r3, [sp, #0xc]
  396c18: 6a1b         	ldr	r3, [r3, #0x20]
  396c1a: 4618         	mov	r0, r3
  396c1c: f201 f964    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2012c8
  396c20: 9b02         	ldr	r3, [sp, #0x8]
  396c22: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  396c26: 9802         	ldr	r0, [sp, #0x8]
  396c28: f05d f9ca    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d394
  396c2c: 4603         	mov	r3, r0
  396c2e: 9803         	ldr	r0, [sp, #0xc]
  396c30: 4621         	mov	r1, r4
  396c32: 461a         	mov	r2, r3
  396c34: f7ff fe54    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x358
  396c38: 4602         	mov	r2, r0
  396c3a: 9b03         	ldr	r3, [sp, #0xc]
  396c3c: 619a         	str	r2, [r3, #0x18]
  396c3e: 9b03         	ldr	r3, [sp, #0xc]
  396c40: 699b         	ldr	r3, [r3, #0x18]
  396c42: 4618         	mov	r0, r3
  396c44: f201 f950    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2012a0
  396c48: 9b02         	ldr	r3, [sp, #0x8]
  396c4a: f8d3 4104    	ldr.w	r4, [r3, #0x104]
  396c4e: 9802         	ldr	r0, [sp, #0x8]
  396c50: f05d f9b6    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d36c
  396c54: 4603         	mov	r3, r0
  396c56: 9803         	ldr	r0, [sp, #0xc]
  396c58: 4621         	mov	r1, r4
  396c5a: 461a         	mov	r2, r3
  396c5c: f7ff fe40    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x380
  396c60: 4602         	mov	r2, r0
  396c62: 9b03         	ldr	r3, [sp, #0xc]
  396c64: 625a         	str	r2, [r3, #0x24]
  396c66: 9b03         	ldr	r3, [sp, #0xc]
  396c68: 6a5b         	ldr	r3, [r3, #0x24]
  396c6a: 4618         	mov	r0, r3
  396c6c: f201 f93c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x201278
  396c70: 9b02         	ldr	r3, [sp, #0x8]
  396c72: f8d3 4100    	ldr.w	r4, [r3, #0x100]
  396c76: 9802         	ldr	r0, [sp, #0x8]
  396c78: f05d f9a2    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x5d344
  396c7c: 4603         	mov	r3, r0
  396c7e: 9803         	ldr	r0, [sp, #0xc]
  396c80: 4621         	mov	r1, r4
  396c82: 461a         	mov	r2, r3
  396c84: f7ff fe2c    	bl	0x3968e0 <PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool)> @ imm = #-0x3a8
  396c88: 4602         	mov	r2, r0
  396c8a: 9b03         	ldr	r3, [sp, #0xc]
  396c8c: 629a         	str	r2, [r3, #0x28]
  396c8e: 9b03         	ldr	r3, [sp, #0xc]
  396c90: 6a9b         	ldr	r3, [r3, #0x28]
  396c92: 4618         	mov	r0, r3
  396c94: f201 f928    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x201250
  396c98: 9803         	ldr	r0, [sp, #0xc]
  396c9a: f7ff fc21    	bl	0x3964e0 <PlayerDeath::addToWorld()> @ imm = #-0x7be
  396c9e: 466b         	mov	r3, sp
  396ca0: aa0c         	add	r2, sp, #0x30
  396ca2: e892 0003    	ldm.w	r2, {r0, r1}
  396ca6: e883 0003    	stm.w	r3, {r0, r1}
  396caa: ab0a         	add	r3, sp, #0x28
  396cac: cb0c         	ldm	r3, {r2, r3}
  396cae: 9803         	ldr	r0, [sp, #0xc]
  396cb0: f7ff fb3e    	bl	0x396330 <PlayerDeath::addToSpace(cpVect)> @ imm = #-0x984
  396cb4: b004         	add	sp, #0x10
  396cb6: e8bd 4010    	pop.w	{r4, lr}
  396cba: b002         	add	sp, #0x8
  396cbc: 4770         	bx	lr

// ==== PlayerDeath::updateStep
//      file offset 0x396cc0 (= ELF address; Ghidra 0x3a6cc0), 396 bytes, Thumb-2
  396cc0: b500         	push	{lr}
  396cc2: b085         	sub	sp, #0x14
  396cc4: 9001         	str	r0, [sp, #0x4]
  396cc6: 9100         	str	r1, [sp]
  396cc8: 9b01         	ldr	r3, [sp, #0x4]
  396cca: ed93 7a0c    	vldr	s14, [r3, #48]
  396cce: eddd 7a00    	vldr	s15, [sp]
  396cd2: ee77 7a27    	vadd.f32	s15, s14, s15
  396cd6: 9b01         	ldr	r3, [sp, #0x4]
  396cd8: edc3 7a0c    	vstr	s15, [r3, #48]
  396cdc: 9b01         	ldr	r3, [sp, #0x4]
  396cde: ed93 7a0c    	vldr	s14, [r3, #48]
  396ce2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  396ce6: eeb4 7ae7    	vcmpe.f32	s14, s15
  396cea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  396cee: dd08         	ble	0x396d02 <PlayerDeath::updateStep(float)+0x42> @ imm = #0x10
  396cf0: 9b01         	ldr	r3, [sp, #0x4]
  396cf2: f893 302d    	ldrb.w	r3, [r3, #0x2d]
  396cf6: 2b00         	cmp	r3, #0x0
  396cf8: d003         	beq	0x396d02 <PlayerDeath::updateStep(float)+0x42> @ imm = #0x6
  396cfa: 9801         	ldr	r0, [sp, #0x4]
  396cfc: f7ff fca0    	bl	0x396640 <PlayerDeath::removeFromWorld()> @ imm = #-0x6c0
  396d00: e09f         	b	0x396e42 <PlayerDeath::updateStep(float)+0x182> @ imm = #0x13e
  396d02: 9b01         	ldr	r3, [sp, #0x4]
  396d04: ed93 7a0c    	vldr	s14, [r3, #48]
  396d08: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  396d0c: eeb4 7ae7    	vcmpe.f32	s14, s15
  396d10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  396d14: f340 8095    	ble.w	0x396e42 <PlayerDeath::updateStep(float)+0x182> @ imm = #0x12a
  396d18: 9b01         	ldr	r3, [sp, #0x4]
  396d1a: ed93 7a0c    	vldr	s14, [r3, #48]
  396d1e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  396d22: ee37 7a67    	vsub.f32	s14, s14, s15
  396d26: eddf 7a48    	vldr	s15, [pc, #288]         @ 0x396e48 <PlayerDeath::updateStep(float)+0x188>
  396d2a: ee67 7a27    	vmul.f32	s15, s14, s15
  396d2e: ed9f 7a46    	vldr	s14, [pc, #280]         @ 0x396e48 <PlayerDeath::updateStep(float)+0x188>
  396d32: ee77 7a67    	vsub.f32	s15, s14, s15
  396d36: edcd 7a03    	vstr	s15, [sp, #12]
  396d3a: 9b01         	ldr	r3, [sp, #0x4]
  396d3c: 695b         	ldr	r3, [r3, #0x14]
  396d3e: 2b00         	cmp	r3, #0x0
  396d40: d011         	beq	0x396d66 <PlayerDeath::updateStep(float)+0xa6> @ imm = #0x22
  396d42: 9b01         	ldr	r3, [sp, #0x4]
  396d44: 695b         	ldr	r3, [r3, #0x14]
  396d46: 681b         	ldr	r3, [r3]
  396d48: f503 73d2    	add.w	r3, r3, #0x1a4
  396d4c: 681b         	ldr	r3, [r3]
  396d4e: 9a01         	ldr	r2, [sp, #0x4]
  396d50: 6951         	ldr	r1, [r2, #0x14]
  396d52: eddd 7a03    	vldr	s15, [sp, #12]
  396d56: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396d5a: ee17 2a90    	vmov	r2, s15
  396d5e: b2d2         	uxtb	r2, r2
  396d60: 4608         	mov	r0, r1
  396d62: 4611         	mov	r1, r2
  396d64: 4798         	blx	r3
  396d66: 9b01         	ldr	r3, [sp, #0x4]
  396d68: 69db         	ldr	r3, [r3, #0x1c]
  396d6a: 2b00         	cmp	r3, #0x0
  396d6c: d011         	beq	0x396d92 <PlayerDeath::updateStep(float)+0xd2> @ imm = #0x22
  396d6e: 9b01         	ldr	r3, [sp, #0x4]
  396d70: 69db         	ldr	r3, [r3, #0x1c]
  396d72: 681b         	ldr	r3, [r3]
  396d74: f503 73d2    	add.w	r3, r3, #0x1a4
  396d78: 681b         	ldr	r3, [r3]
  396d7a: 9a01         	ldr	r2, [sp, #0x4]
  396d7c: 69d1         	ldr	r1, [r2, #0x1c]
  396d7e: eddd 7a03    	vldr	s15, [sp, #12]
  396d82: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396d86: ee17 2a90    	vmov	r2, s15
  396d8a: b2d2         	uxtb	r2, r2
  396d8c: 4608         	mov	r0, r1
  396d8e: 4611         	mov	r1, r2
  396d90: 4798         	blx	r3
  396d92: 9b01         	ldr	r3, [sp, #0x4]
  396d94: 6a1b         	ldr	r3, [r3, #0x20]
  396d96: 2b00         	cmp	r3, #0x0
  396d98: d011         	beq	0x396dbe <PlayerDeath::updateStep(float)+0xfe> @ imm = #0x22
  396d9a: 9b01         	ldr	r3, [sp, #0x4]
  396d9c: 6a1b         	ldr	r3, [r3, #0x20]
  396d9e: 681b         	ldr	r3, [r3]
  396da0: f503 73d2    	add.w	r3, r3, #0x1a4
  396da4: 681b         	ldr	r3, [r3]
  396da6: 9a01         	ldr	r2, [sp, #0x4]
  396da8: 6a11         	ldr	r1, [r2, #0x20]
  396daa: eddd 7a03    	vldr	s15, [sp, #12]
  396dae: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396db2: ee17 2a90    	vmov	r2, s15
  396db6: b2d2         	uxtb	r2, r2
  396db8: 4608         	mov	r0, r1
  396dba: 4611         	mov	r1, r2
  396dbc: 4798         	blx	r3
  396dbe: 9b01         	ldr	r3, [sp, #0x4]
  396dc0: 699b         	ldr	r3, [r3, #0x18]
  396dc2: 2b00         	cmp	r3, #0x0
  396dc4: d011         	beq	0x396dea <PlayerDeath::updateStep(float)+0x12a> @ imm = #0x22
  396dc6: 9b01         	ldr	r3, [sp, #0x4]
  396dc8: 699b         	ldr	r3, [r3, #0x18]
  396dca: 681b         	ldr	r3, [r3]
  396dcc: f503 73d2    	add.w	r3, r3, #0x1a4
  396dd0: 681b         	ldr	r3, [r3]
  396dd2: 9a01         	ldr	r2, [sp, #0x4]
  396dd4: 6991         	ldr	r1, [r2, #0x18]
  396dd6: eddd 7a03    	vldr	s15, [sp, #12]
  396dda: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396dde: ee17 2a90    	vmov	r2, s15
  396de2: b2d2         	uxtb	r2, r2
  396de4: 4608         	mov	r0, r1
  396de6: 4611         	mov	r1, r2
  396de8: 4798         	blx	r3
  396dea: 9b01         	ldr	r3, [sp, #0x4]
  396dec: 6a5b         	ldr	r3, [r3, #0x24]
  396dee: 2b00         	cmp	r3, #0x0
  396df0: d011         	beq	0x396e16 <PlayerDeath::updateStep(float)+0x156> @ imm = #0x22
  396df2: 9b01         	ldr	r3, [sp, #0x4]
  396df4: 6a5b         	ldr	r3, [r3, #0x24]
  396df6: 681b         	ldr	r3, [r3]
  396df8: f503 73d2    	add.w	r3, r3, #0x1a4
  396dfc: 681b         	ldr	r3, [r3]
  396dfe: 9a01         	ldr	r2, [sp, #0x4]
  396e00: 6a51         	ldr	r1, [r2, #0x24]
  396e02: eddd 7a03    	vldr	s15, [sp, #12]
  396e06: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396e0a: ee17 2a90    	vmov	r2, s15
  396e0e: b2d2         	uxtb	r2, r2
  396e10: 4608         	mov	r0, r1
  396e12: 4611         	mov	r1, r2
  396e14: 4798         	blx	r3
  396e16: 9b01         	ldr	r3, [sp, #0x4]
  396e18: 6a9b         	ldr	r3, [r3, #0x28]
  396e1a: 2b00         	cmp	r3, #0x0
  396e1c: d011         	beq	0x396e42 <PlayerDeath::updateStep(float)+0x182> @ imm = #0x22
  396e1e: 9b01         	ldr	r3, [sp, #0x4]
  396e20: 6a9b         	ldr	r3, [r3, #0x28]
  396e22: 681b         	ldr	r3, [r3]
  396e24: f503 73d2    	add.w	r3, r3, #0x1a4
  396e28: 681b         	ldr	r3, [r3]
  396e2a: 9a01         	ldr	r2, [sp, #0x4]
  396e2c: 6a91         	ldr	r1, [r2, #0x28]
  396e2e: eddd 7a03    	vldr	s15, [sp, #12]
  396e32: eefc 7ae7    	vcvt.u32.f32	s15, s15
  396e36: ee17 2a90    	vmov	r2, s15
  396e3a: b2d2         	uxtb	r2, r2
  396e3c: 4608         	mov	r0, r1
  396e3e: 4611         	mov	r1, r2
  396e40: 4798         	blx	r3
  396e42: b005         	add	sp, #0x14
  396e44: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x396e47); words below are literal-pool data ---
  396e48: 0000         	movs	r0, r0
  396e4a: 437f         	muls	r7, r7, r7

// ==== PlayerDeath::getBodyShapes
//      file offset 0x396e4c (= ELF address; Ghidra 0x3a6e4c), 14 bytes, Thumb-2
  396e4c: b082         	sub	sp, #0x8
  396e4e: 9001         	str	r0, [sp, #0x4]
  396e50: 9b01         	ldr	r3, [sp, #0x4]
  396e52: 6c9b         	ldr	r3, [r3, #0x48]
  396e54: 4618         	mov	r0, r3
  396e56: b002         	add	sp, #0x8
  396e58: 4770         	bx	lr

// ==== PlayerDeath::isInWorld
//      file offset 0x396e5c (= ELF address; Ghidra 0x3a6e5c), 16 bytes, Thumb-2
  396e5c: b082         	sub	sp, #0x8
  396e5e: 9001         	str	r0, [sp, #0x4]
  396e60: 9b01         	ldr	r3, [sp, #0x4]
  396e62: f893 302c    	ldrb.w	r3, [r3, #0x2c]
  396e66: 4618         	mov	r0, r3
  396e68: b002         	add	sp, #0x8
  396e6a: 4770         	bx	lr
