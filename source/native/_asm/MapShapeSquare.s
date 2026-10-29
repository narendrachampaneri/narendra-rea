// MapShapeSquare: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapShapeSquare.cpp

// ==== MapShapeSquare::MapShapeSquare
//      file offset 0x368690 (= ELF address; Ghidra 0x378690), 388 bytes, Thumb-2
  368690: b570         	push	{r4, r5, r6, lr}
  368692: b098         	sub	sp, #0x60
  368694: 9005         	str	r0, [sp, #0x14]
  368696: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x368800 <MapShapeSquare::MapShapeSquare()+0x170>
  368698: 447c         	add	r4, pc
  36869a: 9b05         	ldr	r3, [sp, #0x14]
  36869c: 4618         	mov	r0, r3
  36869e: f22f fb65    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x22f6ca
  3686a2: 9b05         	ldr	r3, [sp, #0x14]
  3686a4: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x368804 <MapShapeSquare::MapShapeSquare()+0x174>
  3686a6: 58a2         	ldr	r2, [r4, r2]
  3686a8: 3208         	adds	r2, #0x8
  3686aa: 601a         	str	r2, [r3]
  3686ac: 4b56         	ldr	r3, [pc, #0x158]        @ 0x368808 <MapShapeSquare::MapShapeSquare()+0x178>
  3686ae: 58e3         	ldr	r3, [r4, r3]
  3686b0: 681b         	ldr	r3, [r3]
  3686b2: 0fda         	lsrs	r2, r3, #0x1f
  3686b4: 4413         	add	r3, r2
  3686b6: 105b         	asrs	r3, r3, #0x1
  3686b8: ee07 3a10    	vmov	s14, r3
  3686bc: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3686c0: edcd 7a07    	vstr	s15, [sp, #28]
  3686c4: eddd 7a07    	vldr	s15, [sp, #28]
  3686c8: eef1 7a67    	vneg.f32	s15, s15
  3686cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3686d0: eddd 7a07    	vldr	s15, [sp, #28]
  3686d4: eef1 7a67    	vneg.f32	s15, s15
  3686d8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3686dc: ab08         	add	r3, sp, #0x20
  3686de: 4618         	mov	r0, r3
  3686e0: eeb0 0b46    	vmov.f64	d0, d6
  3686e4: eeb0 1b47    	vmov.f64	d1, d7
  3686e8: f7ff f908    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0xdf0
  3686ec: eddd 7a07    	vldr	s15, [sp, #28]
  3686f0: eef1 7a67    	vneg.f32	s15, s15
  3686f4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3686f8: eddd 7a07    	vldr	s15, [sp, #28]
  3686fc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  368700: ab0c         	add	r3, sp, #0x30
  368702: 4618         	mov	r0, r3
  368704: eeb0 0b46    	vmov.f64	d0, d6
  368708: eeb0 1b47    	vmov.f64	d1, d7
  36870c: f7ff f8f6    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0xe14
  368710: eddd 7a07    	vldr	s15, [sp, #28]
  368714: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  368718: eddd 7a07    	vldr	s15, [sp, #28]
  36871c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  368720: ab10         	add	r3, sp, #0x40
  368722: 4618         	mov	r0, r3
  368724: eeb0 0b46    	vmov.f64	d0, d6
  368728: eeb0 1b47    	vmov.f64	d1, d7
  36872c: f7ff f8e6    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0xe34
  368730: eddd 7a07    	vldr	s15, [sp, #28]
  368734: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  368738: eddd 7a07    	vldr	s15, [sp, #28]
  36873c: eef1 7a67    	vneg.f32	s15, s15
  368740: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  368744: ab14         	add	r3, sp, #0x50
  368746: 4618         	mov	r0, r3
  368748: eeb0 0b46    	vmov.f64	d0, d6
  36874c: eeb0 1b47    	vmov.f64	d1, d7
  368750: f7ff f8d4    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0xe58
  368754: a126         	adr	r1, #152 <MapShapeSquare::MapShapeSquare()+0xee>
  368756: e9d1 0100    	ldrd	r0, r1, [r1]
  36875a: f04f 0200    	mov.w	r2, #0x0
  36875e: f04f 0300    	mov.w	r3, #0x0
  368762: f6c7 73f0    	movt	r3, #0x7ff0
  368766: f36a fd71    	bl	0x6d324c <cpBodyNew>    @ imm = #0x36aae2
  36876a: 4602         	mov	r2, r0
  36876c: 9b05         	ldr	r3, [sp, #0x14]
  36876e: 615a         	str	r2, [r3, #0x14]
  368770: 9b05         	ldr	r3, [sp, #0x14]
  368772: 695b         	ldr	r3, [r3, #0x14]
  368774: 4a25         	ldr	r2, [pc, #0x94]         @ 0x36880c <MapShapeSquare::MapShapeSquare()+0x17c>
  368776: 447a         	add	r2, pc
  368778: 601a         	str	r2, [r3]
  36877a: 9b05         	ldr	r3, [sp, #0x14]
  36877c: 695e         	ldr	r6, [r3, #0x14]
  36877e: ad08         	add	r5, sp, #0x20
  368780: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x368810 <MapShapeSquare::MapShapeSquare()+0x180>
  368782: 447b         	add	r3, pc
  368784: 466c         	mov	r4, sp
  368786: cb0f         	ldm	r3, {r0, r1, r2, r3}
  368788: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  36878c: 4630         	mov	r0, r6
  36878e: 2104         	movs	r1, #0x4
  368790: 462a         	mov	r2, r5
  368792: f36c f8db    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x36c1b6
  368796: 4602         	mov	r2, r0
  368798: 9b05         	ldr	r3, [sp, #0x14]
  36879a: 619a         	str	r2, [r3, #0x18]
  36879c: 9b05         	ldr	r3, [sp, #0x14]
  36879e: 699b         	ldr	r3, [r3, #0x18]
  3687a0: 2200         	movs	r2, #0x0
  3687a2: 655a         	str	r2, [r3, #0x54]
  3687a4: 9b05         	ldr	r3, [sp, #0x14]
  3687a6: 699b         	ldr	r3, [r3, #0x18]
  3687a8: 2200         	movs	r2, #0x0
  3687aa: 65da         	str	r2, [r3, #0x5c]
  3687ac: 9b05         	ldr	r3, [sp, #0x14]
  3687ae: 699b         	ldr	r3, [r3, #0x18]
  3687b0: 2200         	movs	r2, #0x0
  3687b2: 659a         	str	r2, [r3, #0x58]
  3687b4: 9b05         	ldr	r3, [sp, #0x14]
  3687b6: 6999         	ldr	r1, [r3, #0x18]
  3687b8: a30f         	adr	r3, #60 <MapShapeSquare::MapShapeSquare()+0x13b>
  3687ba: e9d3 2300    	ldrd	r2, r3, [r3]
  3687be: e9c1 230c    	strd	r2, r3, [r1, #48]
  3687c2: 9b05         	ldr	r3, [sp, #0x14]
  3687c4: 6999         	ldr	r1, [r3, #0x18]
  3687c6: f04f 0200    	mov.w	r2, #0x0
  3687ca: f04f 0300    	mov.w	r3, #0x0
  3687ce: f6c3 73d0    	movt	r3, #0x3fd0
  3687d2: e9c1 230e    	strd	r2, r3, [r1, #56]
  3687d6: 9b05         	ldr	r3, [sp, #0x14]
  3687d8: e005         	b	0x3687e6 <MapShapeSquare::MapShapeSquare()+0x156> @ imm = #0xa
  3687da: 9b05         	ldr	r3, [sp, #0x14]
  3687dc: 4618         	mov	r0, r3
  3687de: f22f faf7    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x22f5ee
  3687e2: f01f f463    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41f8c6
  3687e6: 4618         	mov	r0, r3
  3687e8: b018         	add	sp, #0x60
  3687ea: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3687eb); words below are literal-pool data ---
  3687ec: f3af 8000    	nop.w
  3687f0: 0000         	movs	r0, r0
  3687f2: 0000         	movs	r0, r0
  3687f4: 8480         	strh	r0, [r0, #0x24]
  3687f6: 412e         	asrs	r6, r5
  3687f8: 0000         	movs	r0, r0
  3687fa: a000         	adr	r0, #0 <MapShapeSquare::MapShapeSquare()+0x16e>
  3687fc: 9999         	ldr	r1, [sp, #0x264]
  3687fe: 3fe9         	subs	r7, #0xe9
  368800: a370         	adr	r3, #448 <MapShapeSquare::addBodyShape(cpSpace*)+0x4>
  368802: 005c         	lsls	r4, r3, #0x1
  368804: dbb4         	blt	0x368770 <MapShapeSquare::MapShapeSquare()+0xe0> @ imm = #-0x98
  368806: ffff db94    	<unknown>
  36880a: ffff ff03    	<unknown>
  36880e: ffff 4b72    	<unknown>
  368812: 0046         	lsls	r6, r0, #0x1

// ==== MapShapeSquare::~MapShapeSquare
//      file offset 0x368818 (= ELF address; Ghidra 0x378818), 60 bytes, Thumb-2
  368818: b500         	push	{lr}
  36881a: b083         	sub	sp, #0xc
  36881c: 9001         	str	r0, [sp, #0x4]
  36881e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x36884c <MapShapeSquare::~MapShapeSquare()+0x34>
  368820: 4479         	add	r1, pc
  368822: 9b01         	ldr	r3, [sp, #0x4]
  368824: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x368850 <MapShapeSquare::~MapShapeSquare()+0x38>
  368826: 588a         	ldr	r2, [r1, r2]
  368828: 3208         	adds	r2, #0x8
  36882a: 601a         	str	r2, [r3]
  36882c: 9b01         	ldr	r3, [sp, #0x4]
  36882e: 4618         	mov	r0, r3
  368830: f22f face    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x22f59c
  368834: 2300         	movs	r3, #0x0
  368836: 2b00         	cmp	r3, #0x0
  368838: d002         	beq	0x368840 <MapShapeSquare::~MapShapeSquare()+0x28> @ imm = #0x4
  36883a: 9801         	ldr	r0, [sp, #0x4]
  36883c: f01f f432    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f864
  368840: 9b01         	ldr	r3, [sp, #0x4]
  368842: 4618         	mov	r0, r3
  368844: b003         	add	sp, #0xc
  368846: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x368849); words below are literal-pool data ---
  36884a: bf00         	nop
  36884c: a1e8         	adr	r1, #928 <MapShapeTriangle::MapShapeTriangle()+0xa0>
  36884e: 005c         	lsls	r4, r3, #0x1
  368850: dbb4         	blt	0x3687bc <MapShapeSquare::MapShapeSquare()+0x12c> @ imm = #-0x98
  368852: ffff b500    	<unknown>

// ==== MapShapeSquare::~MapShapeSquare
//      file offset 0x368854 (= ELF address; Ghidra 0x378854), 28 bytes, Thumb-2
  368854: b500         	push	{lr}
  368856: b083         	sub	sp, #0xc
  368858: 9001         	str	r0, [sp, #0x4]
  36885a: 9801         	ldr	r0, [sp, #0x4]
  36885c: f7ff ffdc    	bl	0x368818 <MapShapeSquare::~MapShapeSquare()> @ imm = #-0x48
  368860: 9801         	ldr	r0, [sp, #0x4]
  368862: f01f f41f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f83e
  368866: 9b01         	ldr	r3, [sp, #0x4]
  368868: 4618         	mov	r0, r3
  36886a: b003         	add	sp, #0xc
  36886c: f85d fb04    	ldr	pc, [sp], #4

// ==== MapShapeSquare::addBodyShape
//      file offset 0x368870 (= ELF address; Ghidra 0x378870), 38 bytes, Thumb-2
  368870: b500         	push	{lr}
  368872: b083         	sub	sp, #0xc
  368874: 9001         	str	r0, [sp, #0x4]
  368876: 9100         	str	r1, [sp]
  368878: 9b01         	ldr	r3, [sp, #0x4]
  36887a: 695b         	ldr	r3, [r3, #0x14]
  36887c: 9800         	ldr	r0, [sp]
  36887e: 4619         	mov	r1, r3
  368880: f36d fa88    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x36d510
  368884: 9b01         	ldr	r3, [sp, #0x4]
  368886: 699b         	ldr	r3, [r3, #0x18]
  368888: 9800         	ldr	r0, [sp]
  36888a: 4619         	mov	r1, r3
  36888c: f36d fcbc    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x36d978
  368890: b003         	add	sp, #0xc
  368892: f85d fb04    	ldr	pc, [sp], #4
