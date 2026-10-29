// Slug: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Slug.cpp

// ==== Slug::Slug
//      file offset 0x3dd1e8 (= ELF address; Ghidra 0x3ed1e8), 500 bytes, Thumb-2
  3dd1e8: b530         	push	{r4, r5, lr}
  3dd1ea: b095         	sub	sp, #0x54
  3dd1ec: 9009         	str	r0, [sp, #0x24]
  3dd1ee: 9108         	str	r1, [sp, #0x20]
  3dd1f0: 4c77         	ldr	r4, [pc, #0x1dc]        @ 0x3dd3d0 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1e8>
  3dd1f2: 447c         	add	r4, pc
  3dd1f4: 9b09         	ldr	r3, [sp, #0x24]
  3dd1f6: 4618         	mov	r0, r3
  3dd1f8: 9908         	ldr	r1, [sp, #0x20]
  3dd1fa: f7d4 fae7    	bl	0x3b17cc <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)> @ imm = #-0x2ba32
  3dd1fe: 9b09         	ldr	r3, [sp, #0x24]
  3dd200: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x3dd3d4 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1ec>
  3dd202: 58a2         	ldr	r2, [r4, r2]
  3dd204: 3208         	adds	r2, #0x8
  3dd206: 601a         	str	r2, [r3]
  3dd208: a16b         	adr	r1, #428 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x8f>
  3dd20a: e9d1 0100    	ldrd	r0, r1, [r1]
  3dd20e: f04f 0200    	mov.w	r2, #0x0
  3dd212: f04f 0300    	mov.w	r3, #0x0
  3dd216: f6c7 73f0    	movt	r3, #0x7ff0
  3dd21a: f2f6 f817    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2f602e
  3dd21e: 4602         	mov	r2, r0
  3dd220: 9b09         	ldr	r3, [sp, #0x24]
  3dd222: f8c3 209c    	str.w	r2, [r3, #0x9c]
  3dd226: 9b09         	ldr	r3, [sp, #0x24]
  3dd228: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd22c: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x3dd3d8 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1f0>
  3dd22e: 447a         	add	r2, pc
  3dd230: 601a         	str	r2, [r3]
  3dd232: 9b09         	ldr	r3, [sp, #0x24]
  3dd234: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd238: 9a09         	ldr	r2, [sp, #0x24]
  3dd23a: f8c3 2090    	str.w	r2, [r3, #0x90]
  3dd23e: 9b09         	ldr	r3, [sp, #0x24]
  3dd240: f8d3 509c    	ldr.w	r5, [r3, #0x9c]
  3dd244: ab0c         	add	r3, sp, #0x30
  3dd246: 4618         	mov	r0, r3
  3dd248: ed9f 0b57    	vldr	d0, [pc, #348]          @ 0x3dd3a8 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1c0>
  3dd24c: ed9f 1b58    	vldr	d1, [pc, #352]          @ 0x3dd3b0 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1c8>
  3dd250: f7fe fe9c    	bl	0x3dbf8c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x270> @ imm = #-0x12c8
  3dd254: ab10         	add	r3, sp, #0x40
  3dd256: 4618         	mov	r0, r3
  3dd258: ed9f 0b55    	vldr	d0, [pc, #340]          @ 0x3dd3b0 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1c8>
  3dd25c: ed9f 1b54    	vldr	d1, [pc, #336]          @ 0x3dd3b0 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1c8>
  3dd260: f7fe fe94    	bl	0x3dbf8c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x270> @ imm = #-0x12d8
  3dd264: ac02         	add	r4, sp, #0x8
  3dd266: ab10         	add	r3, sp, #0x40
  3dd268: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd26a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd26e: f04f 0200    	mov.w	r2, #0x0
  3dd272: f04f 0300    	mov.w	r3, #0x0
  3dd276: f2c4 0308    	movt	r3, #0x4008
  3dd27a: e9cd 2306    	strd	r2, r3, [sp, #24]
  3dd27e: 466b         	mov	r3, sp
  3dd280: aa0e         	add	r2, sp, #0x38
  3dd282: e892 0003    	ldm.w	r2, {r0, r1}
  3dd286: e883 0003    	stm.w	r3, {r0, r1}
  3dd28a: ab0c         	add	r3, sp, #0x30
  3dd28c: cb0c         	ldm	r3, {r2, r3}
  3dd28e: 4628         	mov	r0, r5
  3dd290: f2f7 ffd4    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x2f7fa8
  3dd294: 4602         	mov	r2, r0
  3dd296: 9b09         	ldr	r3, [sp, #0x24]
  3dd298: f8c3 20a0    	str.w	r2, [r3, #0xa0]
  3dd29c: 9b09         	ldr	r3, [sp, #0x24]
  3dd29e: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd2a2: 2220         	movs	r2, #0x20
  3dd2a4: 655a         	str	r2, [r3, #0x54]
  3dd2a6: 9b09         	ldr	r3, [sp, #0x24]
  3dd2a8: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd2ac: 2220         	movs	r2, #0x20
  3dd2ae: 65da         	str	r2, [r3, #0x5c]
  3dd2b0: 9b09         	ldr	r3, [sp, #0x24]
  3dd2b2: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd2b6: 2220         	movs	r2, #0x20
  3dd2b8: 659a         	str	r2, [r3, #0x58]
  3dd2ba: 9b09         	ldr	r3, [sp, #0x24]
  3dd2bc: f8d3 10a0    	ldr.w	r1, [r3, #0xa0]
  3dd2c0: a33f         	adr	r3, #252 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x11b>
  3dd2c2: e9d3 2300    	ldrd	r2, r3, [r3]
  3dd2c6: e9c1 230c    	strd	r2, r3, [r1, #48]
  3dd2ca: 9b09         	ldr	r3, [sp, #0x24]
  3dd2cc: f8d3 10a0    	ldr.w	r1, [r3, #0xa0]
  3dd2d0: a33d         	adr	r3, #244 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x129>
  3dd2d2: e9d3 2300    	ldrd	r2, r3, [r3]
  3dd2d6: e9c1 230e    	strd	r2, r3, [r1, #56]
  3dd2da: 9b08         	ldr	r3, [sp, #0x20]
  3dd2dc: 681b         	ldr	r3, [r3]
  3dd2de: f503 73ce    	add.w	r3, r3, #0x19c
  3dd2e2: 681b         	ldr	r3, [r3]
  3dd2e4: 9808         	ldr	r0, [sp, #0x20]
  3dd2e6: 4798         	blx	r3
  3dd2e8: 4603         	mov	r3, r0
  3dd2ea: 4618         	mov	r0, r3
  3dd2ec: f1fa fecc    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1fad98
  3dd2f0: 4602         	mov	r2, r0
  3dd2f2: 9b09         	ldr	r3, [sp, #0x24]
  3dd2f4: 615a         	str	r2, [r3, #0x14]
  3dd2f6: 9b09         	ldr	r3, [sp, #0x24]
  3dd2f8: 695b         	ldr	r3, [r3, #0x14]
  3dd2fa: 4618         	mov	r0, r3
  3dd2fc: f1ba fdf4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1babe8
  3dd300: 9b08         	ldr	r3, [sp, #0x20]
  3dd302: 681b         	ldr	r3, [r3]
  3dd304: 33cc         	adds	r3, #0xcc
  3dd306: 681b         	ldr	r3, [r3]
  3dd308: 9a09         	ldr	r2, [sp, #0x24]
  3dd30a: 6952         	ldr	r2, [r2, #0x14]
  3dd30c: 9808         	ldr	r0, [sp, #0x20]
  3dd30e: 4611         	mov	r1, r2
  3dd310: 2200         	movs	r2, #0x0
  3dd312: 4798         	blx	r3
  3dd314: 9b09         	ldr	r3, [sp, #0x24]
  3dd316: 695b         	ldr	r3, [r3, #0x14]
  3dd318: 681b         	ldr	r3, [r3]
  3dd31a: 337c         	adds	r3, #0x7c
  3dd31c: 681c         	ldr	r4, [r3]
  3dd31e: 9b09         	ldr	r3, [sp, #0x24]
  3dd320: 695d         	ldr	r5, [r3, #0x14]
  3dd322: ab0a         	add	r3, sp, #0x28
  3dd324: 4618         	mov	r0, r3
  3dd326: f246 6166    	movw	r1, #0x6666
  3dd32a: f6c3 7166    	movt	r1, #0x3f66
  3dd32e: f04f 527c    	mov.w	r2, #0x3f000000
  3dd332: f1b5 fcdd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b59ba
  3dd336: ab0a         	add	r3, sp, #0x28
  3dd338: 4628         	mov	r0, r5
  3dd33a: 4619         	mov	r1, r3
  3dd33c: 47a0         	blx	r4
  3dd33e: 9909         	ldr	r1, [sp, #0x24]
  3dd340: f04f 0200    	mov.w	r2, #0x0
  3dd344: f04f 0300    	mov.w	r3, #0x0
  3dd348: e9c1 2314    	strd	r2, r3, [r1, #80]
  3dd34c: 9909         	ldr	r1, [sp, #0x24]
  3dd34e: f04f 0200    	mov.w	r2, #0x0
  3dd352: f04f 0300    	mov.w	r3, #0x0
  3dd356: e9c1 2316    	strd	r2, r3, [r1, #88]
  3dd35a: 9909         	ldr	r1, [sp, #0x24]
  3dd35c: f04f 0200    	mov.w	r2, #0x0
  3dd360: f04f 0300    	mov.w	r3, #0x0
  3dd364: e9c1 2318    	strd	r2, r3, [r1, #96]
  3dd368: 9909         	ldr	r1, [sp, #0x24]
  3dd36a: f04f 0200    	mov.w	r2, #0x0
  3dd36e: f04f 0300    	mov.w	r3, #0x0
  3dd372: e9c1 231a    	strd	r2, r3, [r1, #104]
  3dd376: 9b09         	ldr	r3, [sp, #0x24]
  3dd378: 2200         	movs	r2, #0x0
  3dd37a: 671a         	str	r2, [r3, #0x70]
  3dd37c: 9b09         	ldr	r3, [sp, #0x24]
  3dd37e: f04f 0200    	mov.w	r2, #0x0
  3dd382: f8c3 2094    	str.w	r2, [r3, #0x94]
  3dd386: 9b09         	ldr	r3, [sp, #0x24]
  3dd388: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd38c: 9a09         	ldr	r2, [sp, #0x24]
  3dd38e: 6952         	ldr	r2, [r2, #0x14]
  3dd390: 651a         	str	r2, [r3, #0x50]
  3dd392: 9b09         	ldr	r3, [sp, #0x24]
  3dd394: e005         	b	0x3dd3a2 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1ba> @ imm = #0xa
  3dd396: 9b09         	ldr	r3, [sp, #0x24]
  3dd398: 4618         	mov	r0, r3
  3dd39a: f7d4 faed    	bl	0x3b1978 <Projectile::~Projectile()> @ imm = #-0x2ba26
  3dd39e: f3aa fe85    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3aad0a
  3dd3a2: 4618         	mov	r0, r3
  3dd3a4: b015         	add	sp, #0x54
  3dd3a6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dd3a7); words below are literal-pool data ---
  3dd3a8: 0000         	movs	r0, r0
  3dd3aa: 0000         	movs	r0, r0
  3dd3ac: 8000         	strh	r0, [r0]
  3dd3ae: c046         	stm	r0!, {r1, r2, r6}
  3dd3b8: 999a         	ldr	r1, [sp, #0x268]
  3dd3ba: 9999         	ldr	r1, [sp, #0x264]
  3dd3bc: 9999         	ldr	r1, [sp, #0x264]
  3dd3be: 3fb9         	subs	r7, #0xb9
  3dd3c0: 0000         	movs	r0, r0
  3dd3c2: 6000         	str	r0, [r0]
  3dd3c4: 6666         	str	r6, [r4, #0x64]
  3dd3c6: 3fee         	subs	r7, #0xee
  3dd3c8: 0000         	movs	r0, r0
  3dd3ca: a000         	adr	r0, #0 <Slug::Slug(cocos2d::CCSpriteBatchNode*)+0x1e6>
  3dd3cc: 9999         	ldr	r1, [sp, #0x264]
  3dd3ce: 3fb9         	subs	r7, #0xb9
  3dd3d0: 5816         	ldr	r6, [r2, r0]
  3dd3d2: 0055         	lsls	r5, r2, #0x1
  3dd3d4: df00         	svc	#0x0
  3dd3d6: ffff fe53    	<unknown>
  3dd3da: ffff f3af    	<unknown>

// ==== Slug::~Slug
//      file offset 0x3dd3e0 (= ELF address; Ghidra 0x3ed3e0), 60 bytes, Thumb-2
  3dd3e0: b500         	push	{lr}
  3dd3e2: b083         	sub	sp, #0xc
  3dd3e4: 9001         	str	r0, [sp, #0x4]
  3dd3e6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3dd414 <Slug::~Slug()+0x34>
  3dd3e8: 4479         	add	r1, pc
  3dd3ea: 9b01         	ldr	r3, [sp, #0x4]
  3dd3ec: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3dd418 <Slug::~Slug()+0x38>
  3dd3ee: 588a         	ldr	r2, [r1, r2]
  3dd3f0: 3208         	adds	r2, #0x8
  3dd3f2: 601a         	str	r2, [r3]
  3dd3f4: 9b01         	ldr	r3, [sp, #0x4]
  3dd3f6: 4618         	mov	r0, r3
  3dd3f8: f7d4 fabe    	bl	0x3b1978 <Projectile::~Projectile()> @ imm = #-0x2ba84
  3dd3fc: 2300         	movs	r3, #0x0
  3dd3fe: 2b00         	cmp	r3, #0x0
  3dd400: d002         	beq	0x3dd408 <Slug::~Slug()+0x28> @ imm = #0x4
  3dd402: 9801         	ldr	r0, [sp, #0x4]
  3dd404: f3aa fe4e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3aac9c
  3dd408: 9b01         	ldr	r3, [sp, #0x4]
  3dd40a: 4618         	mov	r0, r3
  3dd40c: b003         	add	sp, #0xc
  3dd40e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3dd411); words below are literal-pool data ---
  3dd412: bf00         	nop
  3dd414: 5620         	ldrsb	r0, [r4, r0]
  3dd416: 0055         	lsls	r5, r2, #0x1
  3dd418: df00         	svc	#0x0
  3dd41a: ffff b500    	<unknown>

// ==== Slug::~Slug
//      file offset 0x3dd41c (= ELF address; Ghidra 0x3ed41c), 28 bytes, Thumb-2
  3dd41c: b500         	push	{lr}
  3dd41e: b083         	sub	sp, #0xc
  3dd420: 9001         	str	r0, [sp, #0x4]
  3dd422: 9801         	ldr	r0, [sp, #0x4]
  3dd424: f7ff ffdc    	bl	0x3dd3e0 <Slug::~Slug()> @ imm = #-0x48
  3dd428: 9801         	ldr	r0, [sp, #0x4]
  3dd42a: f3aa fe3b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3aac76
  3dd42e: 9b01         	ldr	r3, [sp, #0x4]
  3dd430: 4618         	mov	r0, r3
  3dd432: b003         	add	sp, #0xc
  3dd434: f85d fb04    	ldr	pc, [sp], #4

// ==== Slug::reset
//      file offset 0x3dd438 (= ELF address; Ghidra 0x3ed438), 504 bytes, Thumb-2
  3dd438: b570         	push	{r4, r5, r6, lr}
  3dd43a: b08c         	sub	sp, #0x30
  3dd43c: 9003         	str	r0, [sp, #0xc]
  3dd43e: 9102         	str	r1, [sp, #0x8]
  3dd440: 9201         	str	r2, [sp, #0x4]
  3dd442: 9300         	str	r3, [sp]
  3dd444: 9b03         	ldr	r3, [sp, #0xc]
  3dd446: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd44a: eddd 7a18    	vldr	s15, [sp, #96]
  3dd44e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dd452: 4618         	mov	r0, r3
  3dd454: ec53 2b17    	vmov	r2, r3, d7
  3dd458: f2f5 fe9b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2f5d36
  3dd45c: 9b03         	ldr	r3, [sp, #0xc]
  3dd45e: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd462: ed9d 6b10    	vldr	d6, [sp, #64]
  3dd466: ed9d 7b12    	vldr	d7, [sp, #72]
  3dd46a: 4618         	mov	r0, r3
  3dd46c: eeb0 0b46    	vmov.f64	d0, d6
  3dd470: eeb0 1b47    	vmov.f64	d1, d7
  3dd474: f7fe feb2    	bl	0x3dc1dc <SettingsLayer::onConfig(cocos2d::CCObject*)+0x4c0> @ imm = #-0x129c
  3dd478: 9b03         	ldr	r3, [sp, #0xc]
  3dd47a: f8d3 209c    	ldr.w	r2, [r3, #0x9c]
  3dd47e: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3dd628 <Slug::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect)+0x1f0>
  3dd480: 447b         	add	r3, pc
  3dd482: ed93 6b00    	vldr	d6, [r3]
  3dd486: ed93 7b02    	vldr	d7, [r3, #8]
  3dd48a: 4610         	mov	r0, r2
  3dd48c: eeb0 0b46    	vmov.f64	d0, d6
  3dd490: eeb0 1b47    	vmov.f64	d1, d7
  3dd494: f7fe fece    	bl	0x3dc234 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x518> @ imm = #-0x1264
  3dd498: 9b03         	ldr	r3, [sp, #0xc]
  3dd49a: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd49e: ed9d 6b14    	vldr	d6, [sp, #80]
  3dd4a2: ed9d 7b16    	vldr	d7, [sp, #88]
  3dd4a6: 4618         	mov	r0, r3
  3dd4a8: eeb0 0b46    	vmov.f64	d0, d6
  3dd4ac: eeb0 1b47    	vmov.f64	d1, d7
  3dd4b0: f7fe feaa    	bl	0x3dc208 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x4ec> @ imm = #-0x12ac
  3dd4b4: 9b03         	ldr	r3, [sp, #0xc]
  3dd4b6: f8d3 109c    	ldr.w	r1, [r3, #0x9c]
  3dd4ba: f04f 0200    	mov.w	r2, #0x0
  3dd4be: f04f 0300    	mov.w	r3, #0x0
  3dd4c2: e9c1 2318    	strd	r2, r3, [r1, #96]
  3dd4c6: 9b03         	ldr	r3, [sp, #0xc]
  3dd4c8: 9a02         	ldr	r2, [sp, #0x8]
  3dd4ca: f8c3 208c    	str.w	r2, [r3, #0x8c]
  3dd4ce: 9b03         	ldr	r3, [sp, #0xc]
  3dd4d0: 695b         	ldr	r3, [r3, #0x14]
  3dd4d2: 681b         	ldr	r3, [r3]
  3dd4d4: 3340         	adds	r3, #0x40
  3dd4d6: 681b         	ldr	r3, [r3]
  3dd4d8: 9a03         	ldr	r2, [sp, #0xc]
  3dd4da: 6952         	ldr	r2, [r2, #0x14]
  3dd4dc: 4610         	mov	r0, r2
  3dd4de: f04f 517e    	mov.w	r1, #0x3f800000
  3dd4e2: 4798         	blx	r3
  3dd4e4: 9b03         	ldr	r3, [sp, #0xc]
  3dd4e6: 695b         	ldr	r3, [r3, #0x14]
  3dd4e8: 681b         	ldr	r3, [r3]
  3dd4ea: f503 73d2    	add.w	r3, r3, #0x1a4
  3dd4ee: 681b         	ldr	r3, [r3]
  3dd4f0: 9a03         	ldr	r2, [sp, #0xc]
  3dd4f2: 6952         	ldr	r2, [r2, #0x14]
  3dd4f4: 4610         	mov	r0, r2
  3dd4f6: 21ff         	movs	r1, #0xff
  3dd4f8: 4798         	blx	r3
  3dd4fa: 9b03         	ldr	r3, [sp, #0xc]
  3dd4fc: 2201         	movs	r2, #0x1
  3dd4fe: 761a         	strb	r2, [r3, #0x18]
  3dd500: 9b03         	ldr	r3, [sp, #0xc]
  3dd502: 695b         	ldr	r3, [r3, #0x14]
  3dd504: 681b         	ldr	r3, [r3]
  3dd506: 3390         	adds	r3, #0x90
  3dd508: 681b         	ldr	r3, [r3]
  3dd50a: 9a03         	ldr	r2, [sp, #0xc]
  3dd50c: 6952         	ldr	r2, [r2, #0x14]
  3dd50e: 4610         	mov	r0, r2
  3dd510: 2101         	movs	r1, #0x1
  3dd512: 4798         	blx	r3
  3dd514: 9b03         	ldr	r3, [sp, #0xc]
  3dd516: 9a00         	ldr	r2, [sp]
  3dd518: f8c3 2090    	str.w	r2, [r3, #0x90]
  3dd51c: 9b03         	ldr	r3, [sp, #0xc]
  3dd51e: 9a01         	ldr	r2, [sp, #0x4]
  3dd520: 671a         	str	r2, [r3, #0x70]
  3dd522: 9b03         	ldr	r3, [sp, #0xc]
  3dd524: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd528: 9a03         	ldr	r2, [sp, #0xc]
  3dd52a: f102 0460    	add.w	r4, r2, #0x60
  3dd52e: 3328         	adds	r3, #0x28
  3dd530: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd532: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd536: 9b03         	ldr	r3, [sp, #0xc]
  3dd538: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd53c: 9a03         	ldr	r2, [sp, #0xc]
  3dd53e: f102 0450    	add.w	r4, r2, #0x50
  3dd542: 3328         	adds	r3, #0x28
  3dd544: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd546: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd54a: 9b03         	ldr	r3, [sp, #0xc]
  3dd54c: f04f 0200    	mov.w	r2, #0x0
  3dd550: f8c3 2094    	str.w	r2, [r3, #0x94]
  3dd554: 9b03         	ldr	r3, [sp, #0xc]
  3dd556: 695b         	ldr	r3, [r3, #0x14]
  3dd558: 681b         	ldr	r3, [r3]
  3dd55a: 334c         	adds	r3, #0x4c
  3dd55c: 681c         	ldr	r4, [r3]
  3dd55e: 9b03         	ldr	r3, [sp, #0xc]
  3dd560: 695d         	ldr	r5, [r3, #0x14]
  3dd562: 9b03         	ldr	r3, [sp, #0xc]
  3dd564: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd568: ed93 7b0a    	vldr	d7, [r3, #40]
  3dd56c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3dd570: 9b03         	ldr	r3, [sp, #0xc]
  3dd572: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd576: ed93 7b0c    	vldr	d7, [r3, #48]
  3dd57a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3dd57e: ab08         	add	r3, sp, #0x20
  3dd580: 4618         	mov	r0, r3
  3dd582: ee16 1a90    	vmov	r1, s13
  3dd586: ee17 2a90    	vmov	r2, s15
  3dd58a: f1b5 fbb1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b5762
  3dd58e: ab08         	add	r3, sp, #0x20
  3dd590: 4628         	mov	r0, r5
  3dd592: 4619         	mov	r1, r3
  3dd594: 47a0         	blx	r4
  3dd596: 9b03         	ldr	r3, [sp, #0xc]
  3dd598: f8d3 609c    	ldr.w	r6, [r3, #0x9c]
  3dd59c: eddd 7a18    	vldr	s15, [sp, #96]
  3dd5a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dd5a4: ec51 0b17    	vmov	r0, r1, d7
  3dd5a8: f6f8 ecae    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1076a4
  3dd5ac: 4604         	mov	r4, r0
  3dd5ae: 460d         	mov	r5, r1
  3dd5b0: eddd 7a18    	vldr	s15, [sp, #96]
  3dd5b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dd5b8: ec51 0b17    	vmov	r0, r1, d7
  3dd5bc: f6f8 ecaa    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1076ac
  3dd5c0: 4602         	mov	r2, r0
  3dd5c2: 460b         	mov	r3, r1
  3dd5c4: a904         	add	r1, sp, #0x10
  3dd5c6: 4608         	mov	r0, r1
  3dd5c8: ec45 4b10    	vmov	d0, r4, r5
  3dd5cc: ec43 2b11    	vmov	d1, r2, r3
  3dd5d0: f7fe fcdc    	bl	0x3dbf8c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x270> @ imm = #-0x1648
  3dd5d4: ab08         	add	r3, sp, #0x20
  3dd5d6: ed9d 6b04    	vldr	d6, [sp, #16]
  3dd5da: ed9d 7b06    	vldr	d7, [sp, #24]
  3dd5de: 4618         	mov	r0, r3
  3dd5e0: eeb0 0b46    	vmov.f64	d0, d6
  3dd5e4: eeb0 1b47    	vmov.f64	d1, d7
  3dd5e8: ed9f 2b0d    	vldr	d2, [pc, #52]           @ 0x3dd620 <Slug::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect)+0x1e8>
  3dd5ec: f7fe fd0e    	bl	0x3dc00c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x2f0> @ imm = #-0x15e4
  3dd5f0: ed9d 4b08    	vldr	d4, [sp, #32]
  3dd5f4: ed9d 5b0a    	vldr	d5, [sp, #40]
  3dd5f8: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3dd62c <Slug::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect)+0x1f4>
  3dd5fa: 447b         	add	r3, pc
  3dd5fc: ed93 6b00    	vldr	d6, [r3]
  3dd600: ed93 7b02    	vldr	d7, [r3, #8]
  3dd604: 4630         	mov	r0, r6
  3dd606: eeb0 0b44    	vmov.f64	d0, d4
  3dd60a: eeb0 1b45    	vmov.f64	d1, d5
  3dd60e: eeb0 2b46    	vmov.f64	d2, d6
  3dd612: eeb0 3b47    	vmov.f64	d3, d7
  3dd616: f7fe fe23    	bl	0x3dc260 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x544> @ imm = #-0x13ba
  3dd61a: b00c         	add	sp, #0x30
  3dd61c: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3dd61d); words below are literal-pool data ---
  3dd61e: bf00         	nop
  3dd620: 0000         	movs	r0, r0
  3dd622: 0000         	movs	r0, r0
  3dd624: 4000         	ands	r0, r0
  3dd626: 4060         	eors	r0, r4
  3dd628: a86c         	add	r0, sp, #0x1b0
  3dd62a: 003f         	movs	r7, r7
  3dd62c: a6f2         	adr	r6, #968 <Slug::setActive(bool)+0x12>
  3dd62e: 003f         	movs	r7, r7

// ==== Slug::addBodyShape
//      file offset 0x3dd630 (= ELF address; Ghidra 0x3ed630), 42 bytes, Thumb-2
  3dd630: b500         	push	{lr}
  3dd632: b083         	sub	sp, #0xc
  3dd634: 9001         	str	r0, [sp, #0x4]
  3dd636: 9100         	str	r1, [sp]
  3dd638: 9b01         	ldr	r3, [sp, #0x4]
  3dd63a: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd63e: 9800         	ldr	r0, [sp]
  3dd640: 4619         	mov	r1, r3
  3dd642: f2f8 fba7    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x2f874e
  3dd646: 9b01         	ldr	r3, [sp, #0x4]
  3dd648: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd64c: 9800         	ldr	r0, [sp]
  3dd64e: 4619         	mov	r1, r3
  3dd650: f2f8 fdda    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x2f8bb4
  3dd654: b003         	add	sp, #0xc
  3dd656: f85d fb04    	ldr	pc, [sp], #4

// ==== Slug::updateStep
//      file offset 0x3dd65c (= ELF address; Ghidra 0x3ed65c), 176 bytes, Thumb-2
  3dd65c: b530         	push	{r4, r5, lr}
  3dd65e: b08f         	sub	sp, #0x3c
  3dd660: 9003         	str	r0, [sp, #0xc]
  3dd662: 9102         	str	r1, [sp, #0x8]
  3dd664: 4c27         	ldr	r4, [pc, #0x9c]         @ 0x3dd704 <Slug::updateStep(float)+0xa8>
  3dd666: 447c         	add	r4, pc
  3dd668: 9b03         	ldr	r3, [sp, #0xc]
  3dd66a: 4618         	mov	r0, r3
  3dd66c: 9902         	ldr	r1, [sp, #0x8]
  3dd66e: f7d4 f9c5    	bl	0x3b19fc <Projectile::updateStep(float)> @ imm = #-0x2bc76
  3dd672: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3dd708 <Slug::updateStep(float)+0xac>
  3dd674: 58e3         	ldr	r3, [r4, r3]
  3dd676: 681d         	ldr	r5, [r3]
  3dd678: 9b03         	ldr	r3, [sp, #0xc]
  3dd67a: 681b         	ldr	r3, [r3]
  3dd67c: 3320         	adds	r3, #0x20
  3dd67e: 681b         	ldr	r3, [r3]
  3dd680: aa06         	add	r2, sp, #0x18
  3dd682: 4610         	mov	r0, r2
  3dd684: 9903         	ldr	r1, [sp, #0xc]
  3dd686: 4798         	blx	r3
  3dd688: 466b         	mov	r3, sp
  3dd68a: aa08         	add	r2, sp, #0x20
  3dd68c: e892 0003    	ldm.w	r2, {r0, r1}
  3dd690: e883 0003    	stm.w	r3, {r0, r1}
  3dd694: ab06         	add	r3, sp, #0x18
  3dd696: cb0c         	ldm	r3, {r2, r3}
  3dd698: 4628         	mov	r0, r5
  3dd69a: f782 fdbf    	bl	0x36021c <MapManager::tileTypeAt(cpVect)> @ imm = #-0x7d482
  3dd69e: 4603         	mov	r3, r0
  3dd6a0: 9305         	str	r3, [sp, #0x14]
  3dd6a2: 9b05         	ldr	r3, [sp, #0x14]
  3dd6a4: 2b01         	cmp	r3, #0x1
  3dd6a6: d107         	bne	0x3dd6b8 <Slug::updateStep(float)+0x5c> @ imm = #0xe
  3dd6a8: 9b03         	ldr	r3, [sp, #0xc]
  3dd6aa: 681b         	ldr	r3, [r3]
  3dd6ac: 3328         	adds	r3, #0x28
  3dd6ae: 681b         	ldr	r3, [r3]
  3dd6b0: 9803         	ldr	r0, [sp, #0xc]
  3dd6b2: 2100         	movs	r1, #0x0
  3dd6b4: 4798         	blx	r3
  3dd6b6: e022         	b	0x3dd6fe <Slug::updateStep(float)+0xa2> @ imm = #0x44
  3dd6b8: 9b05         	ldr	r3, [sp, #0x14]
  3dd6ba: 2b00         	cmp	r3, #0x0
  3dd6bc: d01f         	beq	0x3dd6fe <Slug::updateStep(float)+0xa2> @ imm = #0x3e
  3dd6be: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3dd708 <Slug::updateStep(float)+0xac>
  3dd6c0: 58e3         	ldr	r3, [r4, r3]
  3dd6c2: 681c         	ldr	r4, [r3]
  3dd6c4: 9b03         	ldr	r3, [sp, #0xc]
  3dd6c6: 681b         	ldr	r3, [r3]
  3dd6c8: 3320         	adds	r3, #0x20
  3dd6ca: 681b         	ldr	r3, [r3]
  3dd6cc: aa0a         	add	r2, sp, #0x28
  3dd6ce: 4610         	mov	r0, r2
  3dd6d0: 9903         	ldr	r1, [sp, #0xc]
  3dd6d2: 4798         	blx	r3
  3dd6d4: 466b         	mov	r3, sp
  3dd6d6: aa0c         	add	r2, sp, #0x30
  3dd6d8: e892 0003    	ldm.w	r2, {r0, r1}
  3dd6dc: e883 0003    	stm.w	r3, {r0, r1}
  3dd6e0: ab0a         	add	r3, sp, #0x28
  3dd6e2: cb0c         	ldm	r3, {r2, r3}
  3dd6e4: 4620         	mov	r0, r4
  3dd6e6: f782 fe09    	bl	0x3602fc <MapManager::mapCollision(cpVect)> @ imm = #-0x7d3ee
  3dd6ea: 4603         	mov	r3, r0
  3dd6ec: 2b00         	cmp	r3, #0x0
  3dd6ee: d006         	beq	0x3dd6fe <Slug::updateStep(float)+0xa2> @ imm = #0xc
  3dd6f0: 9b03         	ldr	r3, [sp, #0xc]
  3dd6f2: 681b         	ldr	r3, [r3]
  3dd6f4: 3328         	adds	r3, #0x28
  3dd6f6: 681b         	ldr	r3, [r3]
  3dd6f8: 9803         	ldr	r0, [sp, #0xc]
  3dd6fa: 2100         	movs	r1, #0x0
  3dd6fc: 4798         	blx	r3
  3dd6fe: b00f         	add	sp, #0x3c
  3dd700: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3dd701); words below are literal-pool data ---
  3dd702: bf00         	nop
  3dd704: 53a2         	strh	r2, [r4, r6]
  3dd706: 0055         	lsls	r5, r2, #0x1
  3dd708: df04         	svc	#0x4
  3dd70a: ffff 0000    	<unknown>

// ==== Slug::setActive
//      file offset 0x3dd710 (= ELF address; Ghidra 0x3ed710), 140 bytes, Thumb-2
  3dd710: b510         	push	{r4, lr}
  3dd712: b086         	sub	sp, #0x18
  3dd714: 9001         	str	r0, [sp, #0x4]
  3dd716: 460b         	mov	r3, r1
  3dd718: f88d 3003    	strb.w	r3, [sp, #0x3]
  3dd71c: 9b01         	ldr	r3, [sp, #0x4]
  3dd71e: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3dd722: 761a         	strb	r2, [r3, #0x18]
  3dd724: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3dd728: f083 0301    	eor	r3, r3, #0x1
  3dd72c: b2db         	uxtb	r3, r3
  3dd72e: 2b00         	cmp	r3, #0x0
  3dd730: d02b         	beq	0x3dd78a <Slug::setActive(bool)+0x7a> @ imm = #0x56
  3dd732: 9b01         	ldr	r3, [sp, #0x4]
  3dd734: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd738: 4618         	mov	r0, r3
  3dd73a: f2f5 fdea    	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2f5bd4
  3dd73e: 9b01         	ldr	r3, [sp, #0x4]
  3dd740: f8d3 209c    	ldr.w	r2, [r3, #0x9c]
  3dd744: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3dd798 <Slug::setActive(bool)+0x88>
  3dd746: 447b         	add	r3, pc
  3dd748: ed93 6b00    	vldr	d6, [r3]
  3dd74c: ed93 7b02    	vldr	d7, [r3, #8]
  3dd750: 4610         	mov	r0, r2
  3dd752: eeb0 0b46    	vmov.f64	d0, d6
  3dd756: eeb0 1b47    	vmov.f64	d1, d7
  3dd75a: f7fe fd55    	bl	0x3dc208 <SettingsLayer::onConfig(cocos2d::CCObject*)+0x4ec> @ imm = #-0x1556
  3dd75e: 9b01         	ldr	r3, [sp, #0x4]
  3dd760: f8d3 409c    	ldr.w	r4, [r3, #0x9c]
  3dd764: ab02         	add	r3, sp, #0x8
  3dd766: 4618         	mov	r0, r3
  3dd768: ed9f 0b09    	vldr	d0, [pc, #36]           @ 0x3dd790 <Slug::setActive(bool)+0x80>
  3dd76c: ed9f 1b08    	vldr	d1, [pc, #32]           @ 0x3dd790 <Slug::setActive(bool)+0x80>
  3dd770: f7fe fc0c    	bl	0x3dbf8c <SettingsLayer::onConfig(cocos2d::CCObject*)+0x270> @ imm = #-0x17e8
  3dd774: ed9d 6b02    	vldr	d6, [sp, #8]
  3dd778: ed9d 7b04    	vldr	d7, [sp, #16]
  3dd77c: 4620         	mov	r0, r4
  3dd77e: eeb0 0b46    	vmov.f64	d0, d6
  3dd782: eeb0 1b47    	vmov.f64	d1, d7
  3dd786: f7fe fd29    	bl	0x3dc1dc <SettingsLayer::onConfig(cocos2d::CCObject*)+0x4c0> @ imm = #-0x15ae
  3dd78a: b006         	add	sp, #0x18
  3dd78c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3dd78d); words below are literal-pool data ---
  3dd78e: bf00         	nop
  3dd790: 0000         	movs	r0, r0
  3dd792: 0000         	movs	r0, r0
  3dd794: 8800         	ldrh	r0, [r0]
  3dd796: c0c3         	stm	r0!, {r0, r1, r6, r7}
  3dd798: a5a6         	adr	r5, #664 <Slug::getVelocity()+0x16>
  3dd79a: 003f         	movs	r7, r7

// ==== Slug::getPosition
//      file offset 0x3dd7a0 (= ELF address; Ghidra 0x3ed7a0), 36 bytes, Thumb-2
  3dd7a0: b410         	push	{r4}
  3dd7a2: b083         	sub	sp, #0xc
  3dd7a4: 9001         	str	r0, [sp, #0x4]
  3dd7a6: 9100         	str	r1, [sp]
  3dd7a8: 9b00         	ldr	r3, [sp]
  3dd7aa: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd7ae: 9a01         	ldr	r2, [sp, #0x4]
  3dd7b0: 4614         	mov	r4, r2
  3dd7b2: 3328         	adds	r3, #0x28
  3dd7b4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd7b6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd7ba: 9801         	ldr	r0, [sp, #0x4]
  3dd7bc: b003         	add	sp, #0xc
  3dd7be: f85d 4b04    	ldr	r4, [sp], #4
  3dd7c2: 4770         	bx	lr

// ==== Slug::setPosition
//      file offset 0x3dd7c4 (= ELF address; Ghidra 0x3ed7c4), 42 bytes, Thumb-2
  3dd7c4: b082         	sub	sp, #0x8
  3dd7c6: b410         	push	{r4}
  3dd7c8: b083         	sub	sp, #0xc
  3dd7ca: 9001         	str	r0, [sp, #0x4]
  3dd7cc: a904         	add	r1, sp, #0x10
  3dd7ce: e881 000c    	stm.w	r1, {r2, r3}
  3dd7d2: 9b01         	ldr	r3, [sp, #0x4]
  3dd7d4: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd7d8: f103 0428    	add.w	r4, r3, #0x28
  3dd7dc: ab04         	add	r3, sp, #0x10
  3dd7de: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd7e0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd7e4: b003         	add	sp, #0xc
  3dd7e6: f85d 4b04    	ldr	r4, [sp], #4
  3dd7ea: b002         	add	sp, #0x8
  3dd7ec: 4770         	bx	lr

// ==== Slug::getCollisionType
//      file offset 0x3dd7f0 (= ELF address; Ghidra 0x3ed7f0), 18 bytes, Thumb-2
  3dd7f0: b082         	sub	sp, #0x8
  3dd7f2: 9001         	str	r0, [sp, #0x4]
  3dd7f4: 9b01         	ldr	r3, [sp, #0x4]
  3dd7f6: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd7fa: 6d5b         	ldr	r3, [r3, #0x54]
  3dd7fc: 4618         	mov	r0, r3
  3dd7fe: b002         	add	sp, #0x8
  3dd800: 4770         	bx	lr

// ==== Slug::setCollisionType
//      file offset 0x3dd804 (= ELF address; Ghidra 0x3ed804), 40 bytes, Thumb-2
  3dd804: b082         	sub	sp, #0x8
  3dd806: 9001         	str	r0, [sp, #0x4]
  3dd808: 9100         	str	r1, [sp]
  3dd80a: 9b01         	ldr	r3, [sp, #0x4]
  3dd80c: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd810: 9a00         	ldr	r2, [sp]
  3dd812: 655a         	str	r2, [r3, #0x54]
  3dd814: 9b01         	ldr	r3, [sp, #0x4]
  3dd816: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd81a: 9a00         	ldr	r2, [sp]
  3dd81c: 65da         	str	r2, [r3, #0x5c]
  3dd81e: 9b01         	ldr	r3, [sp, #0x4]
  3dd820: f8d3 30a0    	ldr.w	r3, [r3, #0xa0]
  3dd824: 9a00         	ldr	r2, [sp]
  3dd826: 659a         	str	r2, [r3, #0x58]
  3dd828: b002         	add	sp, #0x8
  3dd82a: 4770         	bx	lr

// ==== Slug::getVelocity
//      file offset 0x3dd82c (= ELF address; Ghidra 0x3ed82c), 36 bytes, Thumb-2
  3dd82c: b410         	push	{r4}
  3dd82e: b083         	sub	sp, #0xc
  3dd830: 9001         	str	r0, [sp, #0x4]
  3dd832: 9100         	str	r1, [sp]
  3dd834: 9b00         	ldr	r3, [sp]
  3dd836: f8d3 309c    	ldr.w	r3, [r3, #0x9c]
  3dd83a: 9a01         	ldr	r2, [sp, #0x4]
  3dd83c: 4614         	mov	r4, r2
  3dd83e: 3338         	adds	r3, #0x38
  3dd840: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dd842: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dd846: 9801         	ldr	r0, [sp, #0x4]
  3dd848: b003         	add	sp, #0xc
  3dd84a: f85d 4b04    	ldr	r4, [sp], #4
  3dd84e: 4770         	bx	lr
