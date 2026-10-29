// MapShapeTriangle: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapShapeTriangle.cpp

// ==== MapShapeTriangle::MapShapeTriangle
//      file offset 0x368898 (= ELF address; Ghidra 0x378898), 356 bytes, Thumb-2
  368898: b570         	push	{r4, r5, r6, lr}
  36889a: b094         	sub	sp, #0x50
  36889c: 9005         	str	r0, [sp, #0x14]
  36889e: 4c52         	ldr	r4, [pc, #0x148]        @ 0x3689e8 <MapShapeTriangle::MapShapeTriangle()+0x150>
  3688a0: 447c         	add	r4, pc
  3688a2: 9b05         	ldr	r3, [sp, #0x14]
  3688a4: 4618         	mov	r0, r3
  3688a6: f22f fa61    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x22f4c2
  3688aa: 9b05         	ldr	r3, [sp, #0x14]
  3688ac: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x3689ec <MapShapeTriangle::MapShapeTriangle()+0x154>
  3688ae: 58a2         	ldr	r2, [r4, r2]
  3688b0: 3208         	adds	r2, #0x8
  3688b2: 601a         	str	r2, [r3]
  3688b4: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3689f0 <MapShapeTriangle::MapShapeTriangle()+0x158>
  3688b6: 58e3         	ldr	r3, [r4, r3]
  3688b8: 681b         	ldr	r3, [r3]
  3688ba: 0fda         	lsrs	r2, r3, #0x1f
  3688bc: 4413         	add	r3, r2
  3688be: 105b         	asrs	r3, r3, #0x1
  3688c0: ee07 3a10    	vmov	s14, r3
  3688c4: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3688c8: edcd 7a07    	vstr	s15, [sp, #28]
  3688cc: eddd 7a07    	vldr	s15, [sp, #28]
  3688d0: eef1 7a67    	vneg.f32	s15, s15
  3688d4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3688d8: eddd 7a07    	vldr	s15, [sp, #28]
  3688dc: eef1 7a67    	vneg.f32	s15, s15
  3688e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3688e4: ab08         	add	r3, sp, #0x20
  3688e6: 4618         	mov	r0, r3
  3688e8: eeb0 0b46    	vmov.f64	d0, d6
  3688ec: eeb0 1b47    	vmov.f64	d1, d7
  3688f0: f7ff f804    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0xff8
  3688f4: eddd 7a07    	vldr	s15, [sp, #28]
  3688f8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3688fc: eddd 7a07    	vldr	s15, [sp, #28]
  368900: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  368904: ab0c         	add	r3, sp, #0x30
  368906: 4618         	mov	r0, r3
  368908: eeb0 0b46    	vmov.f64	d0, d6
  36890c: eeb0 1b47    	vmov.f64	d1, d7
  368910: f7fe fff4    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0x1018
  368914: eddd 7a07    	vldr	s15, [sp, #28]
  368918: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36891c: eddd 7a07    	vldr	s15, [sp, #28]
  368920: eef1 7a67    	vneg.f32	s15, s15
  368924: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  368928: ab10         	add	r3, sp, #0x40
  36892a: 4618         	mov	r0, r3
  36892c: eeb0 0b46    	vmov.f64	d0, d6
  368930: eeb0 1b47    	vmov.f64	d1, d7
  368934: f7fe ffe2    	bl	0x3678fc <MapSelectLayer::UpdateNumPlayersLabel()+0x194> @ imm = #-0x103c
  368938: a127         	adr	r1, #156 <MapShapeTriangle::MapShapeTriangle()+0xcb>
  36893a: e9d1 0100    	ldrd	r0, r1, [r1]
  36893e: f04f 0200    	mov.w	r2, #0x0
  368942: f04f 0300    	mov.w	r3, #0x0
  368946: f6c7 73f0    	movt	r3, #0x7ff0
  36894a: f36a fc7f    	bl	0x6d324c <cpBodyNew>    @ imm = #0x36a8fe
  36894e: 4602         	mov	r2, r0
  368950: 9b05         	ldr	r3, [sp, #0x14]
  368952: 615a         	str	r2, [r3, #0x14]
  368954: 9b05         	ldr	r3, [sp, #0x14]
  368956: 695b         	ldr	r3, [r3, #0x14]
  368958: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3689f4 <MapShapeTriangle::MapShapeTriangle()+0x15c>
  36895a: 447a         	add	r2, pc
  36895c: 601a         	str	r2, [r3]
  36895e: 9b05         	ldr	r3, [sp, #0x14]
  368960: 695e         	ldr	r6, [r3, #0x14]
  368962: ad08         	add	r5, sp, #0x20
  368964: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3689f8 <MapShapeTriangle::MapShapeTriangle()+0x160>
  368966: 447b         	add	r3, pc
  368968: 466c         	mov	r4, sp
  36896a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36896c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  368970: 4630         	mov	r0, r6
  368972: 2103         	movs	r1, #0x3
  368974: 462a         	mov	r2, r5
  368976: f36b ffe9    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x36bfd2
  36897a: 4602         	mov	r2, r0
  36897c: 9b05         	ldr	r3, [sp, #0x14]
  36897e: 619a         	str	r2, [r3, #0x18]
  368980: 9b05         	ldr	r3, [sp, #0x14]
  368982: 699b         	ldr	r3, [r3, #0x18]
  368984: f240 1243    	movw	r2, #0x143
  368988: 655a         	str	r2, [r3, #0x54]
  36898a: 9b05         	ldr	r3, [sp, #0x14]
  36898c: 699b         	ldr	r3, [r3, #0x18]
  36898e: f240 1243    	movw	r2, #0x143
  368992: 65da         	str	r2, [r3, #0x5c]
  368994: 9b05         	ldr	r3, [sp, #0x14]
  368996: 699b         	ldr	r3, [r3, #0x18]
  368998: f240 1243    	movw	r2, #0x143
  36899c: 659a         	str	r2, [r3, #0x58]
  36899e: 9b05         	ldr	r3, [sp, #0x14]
  3689a0: 6999         	ldr	r1, [r3, #0x18]
  3689a2: a30f         	adr	r3, #60 <MapShapeTriangle::MapShapeTriangle()+0x11d>
  3689a4: e9d3 2300    	ldrd	r2, r3, [r3]
  3689a8: e9c1 230c    	strd	r2, r3, [r1, #48]
  3689ac: 9b05         	ldr	r3, [sp, #0x14]
  3689ae: 6999         	ldr	r1, [r3, #0x18]
  3689b0: f04f 0200    	mov.w	r2, #0x0
  3689b4: f04f 0300    	mov.w	r3, #0x0
  3689b8: f6c3 73d0    	movt	r3, #0x3fd0
  3689bc: e9c1 230e    	strd	r2, r3, [r1, #56]
  3689c0: 9b05         	ldr	r3, [sp, #0x14]
  3689c2: e005         	b	0x3689d0 <MapShapeTriangle::MapShapeTriangle()+0x138> @ imm = #0xa
  3689c4: 9b05         	ldr	r3, [sp, #0x14]
  3689c6: 4618         	mov	r0, r3
  3689c8: f22f fa02    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x22f404
  3689cc: f01f f36e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x41f6dc
  3689d0: 4618         	mov	r0, r3
  3689d2: b014         	add	sp, #0x50
  3689d4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3689d5); words below are literal-pool data ---
  3689d6: bf00         	nop
  3689d8: 0000         	movs	r0, r0
  3689da: 0000         	movs	r0, r0
  3689dc: 8480         	strh	r0, [r0, #0x24]
  3689de: 412e         	asrs	r6, r5
  3689e0: 0000         	movs	r0, r0
  3689e2: a000         	adr	r0, #0 <MapShapeTriangle::MapShapeTriangle()+0x14e>
  3689e4: 9999         	ldr	r1, [sp, #0x264]
  3689e6: 3fe9         	subs	r7, #0xe9
  3689e8: a168         	adr	r1, #416 <MapShapeTriangle::~MapShapeTriangle()+0x18>
  3689ea: 005c         	lsls	r4, r3, #0x1
  3689ec: dbb8         	blt	0x368960 <MapShapeTriangle::MapShapeTriangle()+0xc8> @ imm = #-0x90
  3689ee: ffff db94    	<unknown>
  3689f2: ffff fd1f    	<unknown>
  3689f6: ffff 498e    	<unknown>
  3689fa: 0046         	lsls	r6, r0, #0x1

// ==== MapShapeTriangle::~MapShapeTriangle
//      file offset 0x368a00 (= ELF address; Ghidra 0x378a00), 60 bytes, Thumb-2
  368a00: b500         	push	{lr}
  368a02: b083         	sub	sp, #0xc
  368a04: 9001         	str	r0, [sp, #0x4]
  368a06: 490b         	ldr	r1, [pc, #0x2c]         @ 0x368a34 <MapShapeTriangle::~MapShapeTriangle()+0x34>
  368a08: 4479         	add	r1, pc
  368a0a: 9b01         	ldr	r3, [sp, #0x4]
  368a0c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x368a38 <MapShapeTriangle::~MapShapeTriangle()+0x38>
  368a0e: 588a         	ldr	r2, [r1, r2]
  368a10: 3208         	adds	r2, #0x8
  368a12: 601a         	str	r2, [r3]
  368a14: 9b01         	ldr	r3, [sp, #0x4]
  368a16: 4618         	mov	r0, r3
  368a18: f22f f9da    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x22f3b4
  368a1c: 2300         	movs	r3, #0x0
  368a1e: 2b00         	cmp	r3, #0x0
  368a20: d002         	beq	0x368a28 <MapShapeTriangle::~MapShapeTriangle()+0x28> @ imm = #0x4
  368a22: 9801         	ldr	r0, [sp, #0x4]
  368a24: f01f f33e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f67c
  368a28: 9b01         	ldr	r3, [sp, #0x4]
  368a2a: 4618         	mov	r0, r3
  368a2c: b003         	add	sp, #0xc
  368a2e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x368a31); words below are literal-pool data ---
  368a32: bf00         	nop
  368a34: a000         	adr	r0, #0 <MapShapeTriangle::~MapShapeTriangle()+0x38>
  368a36: 005c         	lsls	r4, r3, #0x1
  368a38: dbb8         	blt	0x3689ac <MapShapeTriangle::MapShapeTriangle()+0x114> @ imm = #-0x90
  368a3a: ffff b500    	<unknown>

// ==== MapShapeTriangle::~MapShapeTriangle
//      file offset 0x368a3c (= ELF address; Ghidra 0x378a3c), 28 bytes, Thumb-2
  368a3c: b500         	push	{lr}
  368a3e: b083         	sub	sp, #0xc
  368a40: 9001         	str	r0, [sp, #0x4]
  368a42: 9801         	ldr	r0, [sp, #0x4]
  368a44: f7ff ffdc    	bl	0x368a00 <MapShapeTriangle::~MapShapeTriangle()> @ imm = #-0x48
  368a48: 9801         	ldr	r0, [sp, #0x4]
  368a4a: f01f f32b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41f656
  368a4e: 9b01         	ldr	r3, [sp, #0x4]
  368a50: 4618         	mov	r0, r3
  368a52: b003         	add	sp, #0xc
  368a54: f85d fb04    	ldr	pc, [sp], #4

// ==== MapShapeTriangle::addBodyShape
//      file offset 0x368a58 (= ELF address; Ghidra 0x378a58), 38 bytes, Thumb-2
  368a58: b500         	push	{lr}
  368a5a: b083         	sub	sp, #0xc
  368a5c: 9001         	str	r0, [sp, #0x4]
  368a5e: 9100         	str	r1, [sp]
  368a60: 9b01         	ldr	r3, [sp, #0x4]
  368a62: 695b         	ldr	r3, [r3, #0x14]
  368a64: 9800         	ldr	r0, [sp]
  368a66: 4619         	mov	r1, r3
  368a68: f36d f994    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x36d328
  368a6c: 9b01         	ldr	r3, [sp, #0x4]
  368a6e: 699b         	ldr	r3, [r3, #0x18]
  368a70: 9800         	ldr	r0, [sp]
  368a72: 4619         	mov	r1, r3
  368a74: f36d fbc8    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x36d790
  368a78: b003         	add	sp, #0xc
  368a7a: f85d fb04    	ldr	pc, [sp], #4
