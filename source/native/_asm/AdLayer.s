// AdLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 10 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AdLayer.cpp

// ==== AdLayer::create
//      file offset 0x2e2584 (= ELF address; Ghidra 0x2f2584), 112 bytes, Thumb-2
  2e2584: b510         	push	{r4, lr}
  2e2586: b082         	sub	sp, #0x8
  2e2588: f44f 7094    	mov.w	r0, #0x128
  2e258c: f0a5 f1ea    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4a53d4
  2e2590: 4603         	mov	r3, r0
  2e2592: 461c         	mov	r4, r3
  2e2594: 4620         	mov	r0, r4
  2e2596: f000 f82d    	bl	0x2e25f4 <AdLayer::AdLayer()> @ imm = #0x5a
  2e259a: 9401         	str	r4, [sp, #0x4]
  2e259c: 9b01         	ldr	r3, [sp, #0x4]
  2e259e: 2b00         	cmp	r3, #0x0
  2e25a0: d00a         	beq	0x2e25b8 <AdLayer::create()+0x34> @ imm = #0x14
  2e25a2: 9b01         	ldr	r3, [sp, #0x4]
  2e25a4: 681b         	ldr	r3, [r3]
  2e25a6: 3318         	adds	r3, #0x18
  2e25a8: 681b         	ldr	r3, [r3]
  2e25aa: 9801         	ldr	r0, [sp, #0x4]
  2e25ac: 4798         	blx	r3
  2e25ae: 4603         	mov	r3, r0
  2e25b0: 2b00         	cmp	r3, #0x0
  2e25b2: d001         	beq	0x2e25b8 <AdLayer::create()+0x34> @ imm = #0x2
  2e25b4: 2301         	movs	r3, #0x1
  2e25b6: e000         	b	0x2e25ba <AdLayer::create()+0x36> @ imm = #0x0
  2e25b8: 2300         	movs	r3, #0x0
  2e25ba: 2b00         	cmp	r3, #0x0
  2e25bc: d005         	beq	0x2e25ca <AdLayer::create()+0x46> @ imm = #0xa
  2e25be: 9b01         	ldr	r3, [sp, #0x4]
  2e25c0: 4618         	mov	r0, r3
  2e25c2: f2b5 fc9b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2b5936
  2e25c6: 9b01         	ldr	r3, [sp, #0x4]
  2e25c8: e011         	b	0x2e25ee <AdLayer::create()+0x6a> @ imm = #0x22
  2e25ca: 9b01         	ldr	r3, [sp, #0x4]
  2e25cc: 2b00         	cmp	r3, #0x0
  2e25ce: d005         	beq	0x2e25dc <AdLayer::create()+0x58> @ imm = #0xa
  2e25d0: 9b01         	ldr	r3, [sp, #0x4]
  2e25d2: 681b         	ldr	r3, [r3]
  2e25d4: 3308         	adds	r3, #0x8
  2e25d6: 681b         	ldr	r3, [r3]
  2e25d8: 9801         	ldr	r0, [sp, #0x4]
  2e25da: 4798         	blx	r3
  2e25dc: 2300         	movs	r3, #0x0
  2e25de: 9301         	str	r3, [sp, #0x4]
  2e25e0: 2300         	movs	r3, #0x0
  2e25e2: e004         	b	0x2e25ee <AdLayer::create()+0x6a> @ imm = #0x8
  2e25e4: 4620         	mov	r0, r4
  2e25e6: f0a5 f55d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a5aba
  2e25ea: f0a5 f55f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a5abe
  2e25ee: 4618         	mov	r0, r3
  2e25f0: b002         	add	sp, #0x8
  2e25f2: bd10         	pop	{r4, pc}

// ==== AdLayer::AdLayer
//      file offset 0x2e25f4 (= ELF address; Ghidra 0x2f25f4), 88 bytes, Thumb-2
  2e25f4: b510         	push	{r4, lr}
  2e25f6: b082         	sub	sp, #0x8
  2e25f8: 9001         	str	r0, [sp, #0x4]
  2e25fa: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2e2644 <AdLayer::AdLayer()+0x50>
  2e25fc: 447c         	add	r4, pc
  2e25fe: 9b01         	ldr	r3, [sp, #0x4]
  2e2600: 4618         	mov	r0, r3
  2e2602: f2ca fd2b    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2caa56
  2e2606: 9b01         	ldr	r3, [sp, #0x4]
  2e2608: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2e2648 <AdLayer::AdLayer()+0x54>
  2e260a: 58a2         	ldr	r2, [r4, r2]
  2e260c: 3208         	adds	r2, #0x8
  2e260e: 601a         	str	r2, [r3]
  2e2610: 9b01         	ldr	r3, [sp, #0x4]
  2e2612: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2e2648 <AdLayer::AdLayer()+0x54>
  2e2614: 58a2         	ldr	r2, [r4, r2]
  2e2616: f502 7204    	add.w	r2, r2, #0x210
  2e261a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2e261e: 9b01         	ldr	r3, [sp, #0x4]
  2e2620: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2e2648 <AdLayer::AdLayer()+0x54>
  2e2622: 58a2         	ldr	r2, [r4, r2]
  2e2624: f502 7210    	add.w	r2, r2, #0x240
  2e2628: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2e262c: 9b01         	ldr	r3, [sp, #0x4]
  2e262e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2e2648 <AdLayer::AdLayer()+0x54>
  2e2630: 58a2         	ldr	r2, [r4, r2]
  2e2632: f502 7213    	add.w	r2, r2, #0x24c
  2e2636: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2e263a: 9b01         	ldr	r3, [sp, #0x4]
  2e263c: 4618         	mov	r0, r3
  2e263e: b002         	add	sp, #0x8
  2e2640: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e2641); words below are literal-pool data ---
  2e2642: bf00         	nop
  2e2644: 040c         	lsls	r4, r1, #0x10
  2e2646: 0065         	lsls	r5, r4, #0x1
  2e2648: d764         	bvc	0x2e2714 <AdLayer::init()+0x94> @ imm = #0xc8
  2e264a: ffff b500    	<unknown>

// ==== AdLayer::scene
//      file offset 0x2e264c (= ELF address; Ghidra 0x2f264c), 46 bytes, Thumb-2
  2e264c: b500         	push	{lr}
  2e264e: b083         	sub	sp, #0xc
  2e2650: f2cd fa06    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2cd40c
  2e2654: 4603         	mov	r3, r0
  2e2656: 9300         	str	r3, [sp]
  2e2658: f7ff ff94    	bl	0x2e2584 <AdLayer::create()> @ imm = #-0xd8
  2e265c: 4603         	mov	r3, r0
  2e265e: 9301         	str	r3, [sp, #0x4]
  2e2660: 9b00         	ldr	r3, [sp]
  2e2662: 681b         	ldr	r3, [r3]
  2e2664: 33c8         	adds	r3, #0xc8
  2e2666: 681b         	ldr	r3, [r3]
  2e2668: 9a00         	ldr	r2, [sp]
  2e266a: 4610         	mov	r0, r2
  2e266c: 9901         	ldr	r1, [sp, #0x4]
  2e266e: 4798         	blx	r3
  2e2670: 9b00         	ldr	r3, [sp]
  2e2672: 4618         	mov	r0, r3
  2e2674: b003         	add	sp, #0xc
  2e2676: f85d fb04    	ldr	pc, [sp], #4

// ==== AdLayer::init
//      file offset 0x2e2680 (= ELF address; Ghidra 0x2f2680), 1680 bytes, Thumb-2
  2e2680: b570         	push	{r4, r5, r6, lr}
  2e2682: ed2d 8b02    	vpush	{d8}
  2e2686: b0a4         	sub	sp, #0x90
  2e2688: 9003         	str	r0, [sp, #0xc]
  2e268a: 4c4a         	ldr	r4, [pc, #0x128]        @ 0x2e27b4 <AdLayer::init()+0x134>
  2e268c: 447c         	add	r4, pc
  2e268e: 9b03         	ldr	r3, [sp, #0xc]
  2e2690: 4618         	mov	r0, r3
  2e2692: f2ca fdb1    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2cab62
  2e2696: 4603         	mov	r3, r0
  2e2698: f88d 3017    	strb.w	r3, [sp, #0x17]
  2e269c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  2e26a0: f083 0301    	eor	r3, r3, #0x1
  2e26a4: b2db         	uxtb	r3, r3
  2e26a6: 2b00         	cmp	r3, #0x0
  2e26a8: d001         	beq	0x2e26ae <AdLayer::init()+0x2e> @ imm = #0x2
  2e26aa: 2300         	movs	r3, #0x0
  2e26ac: e327         	b	0x2e2cfe <AdLayer::init()+0x67e> @ imm = #0x64e
  2e26ae: f64c 43cd    	movw	r3, #0xcccd
  2e26b2: f6c3 730c    	movt	r3, #0x3f0c
  2e26b6: 9307         	str	r3, [sp, #0x1c]
  2e26b8: f04f 0300    	mov.w	r3, #0x0
  2e26bc: f2c4 13c0    	movt	r3, #0x41c0
  2e26c0: 9308         	str	r3, [sp, #0x20]
  2e26c2: f04f 4341    	mov.w	r3, #0xc1000000
  2e26c6: 9309         	str	r3, [sp, #0x24]
  2e26c8: ab0e         	add	r3, sp, #0x38
  2e26ca: 4618         	mov	r0, r3
  2e26cc: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x2e27b8 <AdLayer::init()+0x138>
  2e26ce: 58e3         	ldr	r3, [r4, r3]
  2e26d0: 4619         	mov	r1, r3
  2e26d2: f2b0 fced    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2b09da
  2e26d6: ed9d 7a0e    	vldr	s14, [sp, #56]
  2e26da: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e26de: eec7 6a27    	vdiv.f32	s13, s14, s15
  2e26e2: ed9d 7a0f    	vldr	s14, [sp, #60]
  2e26e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e26ea: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e26ee: ab10         	add	r3, sp, #0x40
  2e26f0: 4618         	mov	r0, r3
  2e26f2: ee16 1a90    	vmov	r1, s13
  2e26f6: ee17 2a90    	vmov	r2, s15
  2e26fa: f2b0 faf9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b05f2
  2e26fe: 4b2f         	ldr	r3, [pc, #0xbc]         @ 0x2e27bc <AdLayer::init()+0x13c>
  2e2700: 447b         	add	r3, pc
  2e2702: 4618         	mov	r0, r3
  2e2704: f2f5 fd3e    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f5a7c
  2e2708: 4602         	mov	r2, r0
  2e270a: 9b03         	ldr	r3, [sp, #0xc]
  2e270c: f8c3 2110    	str.w	r2, [r3, #0x110]
  2e2710: 9b03         	ldr	r3, [sp, #0xc]
  2e2712: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e2716: 681b         	ldr	r3, [r3]
  2e2718: 334c         	adds	r3, #0x4c
  2e271a: 681b         	ldr	r3, [r3]
  2e271c: 9a03         	ldr	r2, [sp, #0xc]
  2e271e: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  2e2722: aa10         	add	r2, sp, #0x40
  2e2724: 4608         	mov	r0, r1
  2e2726: 4611         	mov	r1, r2
  2e2728: 4798         	blx	r3
  2e272a: 9b03         	ldr	r3, [sp, #0xc]
  2e272c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2e2730: 681b         	ldr	r3, [r3]
  2e2732: f503 73d2    	add.w	r3, r3, #0x1a4
  2e2736: 681b         	ldr	r3, [r3]
  2e2738: 9a03         	ldr	r2, [sp, #0xc]
  2e273a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2e273e: 4610         	mov	r0, r2
  2e2740: 2123         	movs	r1, #0x23
  2e2742: 4798         	blx	r3
  2e2744: 9b03         	ldr	r3, [sp, #0xc]
  2e2746: 681b         	ldr	r3, [r3]
  2e2748: 33c8         	adds	r3, #0xc8
  2e274a: 681b         	ldr	r3, [r3]
  2e274c: 9903         	ldr	r1, [sp, #0xc]
  2e274e: 9a03         	ldr	r2, [sp, #0xc]
  2e2750: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2e2754: 4608         	mov	r0, r1
  2e2756: 4611         	mov	r1, r2
  2e2758: 4798         	blx	r3
  2e275a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x2e27c0 <AdLayer::init()+0x140>
  2e275c: 58e3         	ldr	r3, [r4, r3]
  2e275e: 781b         	ldrb	r3, [r3]
  2e2760: f083 0301    	eor	r3, r3, #0x1
  2e2764: b2db         	uxtb	r3, r3
  2e2766: 2b00         	cmp	r3, #0x0
  2e2768: d00d         	beq	0x2e2786 <AdLayer::init()+0x106> @ imm = #0x1a
  2e276a: 9b03         	ldr	r3, [sp, #0xc]
  2e276c: 2201         	movs	r2, #0x1
  2e276e: f8c3 2108    	str.w	r2, [r3, #0x108]
  2e2772: 4b14         	ldr	r3, [pc, #0x50]         @ 0x2e27c4 <AdLayer::init()+0x144>
  2e2774: 447b         	add	r3, pc
  2e2776: 4618         	mov	r0, r3
  2e2778: f2f5 fd04    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f5a08
  2e277c: 4602         	mov	r2, r0
  2e277e: 9b03         	ldr	r3, [sp, #0xc]
  2e2780: f8c3 2114    	str.w	r2, [r3, #0x114]
  2e2784: e031         	b	0x2e27ea <AdLayer::init()+0x16a> @ imm = #0x62
  2e2786: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2e27c8 <AdLayer::init()+0x148>
  2e2788: 58e3         	ldr	r3, [r4, r3]
  2e278a: 781b         	ldrb	r3, [r3]
  2e278c: f083 0301    	eor	r3, r3, #0x1
  2e2790: b2db         	uxtb	r3, r3
  2e2792: 2b00         	cmp	r3, #0x0
  2e2794: d01c         	beq	0x2e27d0 <AdLayer::init()+0x150> @ imm = #0x38
  2e2796: 9b03         	ldr	r3, [sp, #0xc]
  2e2798: 2202         	movs	r2, #0x2
  2e279a: f8c3 2108    	str.w	r2, [r3, #0x108]
  2e279e: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x2e27cc <AdLayer::init()+0x14c>
  2e27a0: 447b         	add	r3, pc
  2e27a2: 4618         	mov	r0, r3
  2e27a4: f2f5 fcee    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f59dc
  2e27a8: 4602         	mov	r2, r0
  2e27aa: 9b03         	ldr	r3, [sp, #0xc]
  2e27ac: f8c3 2114    	str.w	r2, [r3, #0x114]
  2e27b0: e01b         	b	0x2e27ea <AdLayer::init()+0x16a> @ imm = #0x36
  2e27b2: bf00         	nop
  2e27b4: 037c         	lsls	r4, r7, #0xd
  2e27b6: 0065         	lsls	r5, r4, #0x1
  2e27b8: d724         	bvc	0x2e2804 <AdLayer::init()+0x184> @ imm = #0x48
  2e27ba: ffff f844    	vtbx.8	d31, {d15}, d4
  2e27be: 004d         	lsls	r5, r1, #0x1
  2e27c0: d768         	bvc	0x2e2894 <AdLayer::init()+0x214> @ imm = #0xd0
  2e27c2: ffff f7e4    	<unknown>
  2e27c6: 004d         	lsls	r5, r1, #0x1
  2e27c8: d76c         	bvc	0x2e28a4 <AdLayer::init()+0x224> @ imm = #0xd8
  2e27ca: ffff f7c8    	<unknown>
  2e27ce: 004d         	lsls	r5, r1, #0x1
  2e27d0: 9b03         	ldr	r3, [sp, #0xc]
  2e27d2: 2200         	movs	r2, #0x0
  2e27d4: f8c3 2108    	str.w	r2, [r3, #0x108]
  2e27d8: 4bde         	ldr	r3, [pc, #0x378]        @ 0x2e2b54 <AdLayer::init()+0x4d4>
  2e27da: 447b         	add	r3, pc
  2e27dc: 4618         	mov	r0, r3
  2e27de: f2f5 fcd1    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f59a2
  2e27e2: 4602         	mov	r2, r0
  2e27e4: 9b03         	ldr	r3, [sp, #0xc]
  2e27e6: f8c3 2114    	str.w	r2, [r3, #0x114]
  2e27ea: 9b03         	ldr	r3, [sp, #0xc]
  2e27ec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e27f0: 681b         	ldr	r3, [r3]
  2e27f2: 334c         	adds	r3, #0x4c
  2e27f4: 681b         	ldr	r3, [r3]
  2e27f6: 9a03         	ldr	r2, [sp, #0xc]
  2e27f8: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  2e27fc: aa10         	add	r2, sp, #0x40
  2e27fe: 4608         	mov	r0, r1
  2e2800: 4611         	mov	r1, r2
  2e2802: 4798         	blx	r3
  2e2804: 9b03         	ldr	r3, [sp, #0xc]
  2e2806: 681b         	ldr	r3, [r3]
  2e2808: 33c8         	adds	r3, #0xc8
  2e280a: 681b         	ldr	r3, [r3]
  2e280c: 9903         	ldr	r1, [sp, #0xc]
  2e280e: 9a03         	ldr	r2, [sp, #0xc]
  2e2810: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2e2814: 4608         	mov	r0, r1
  2e2816: 4611         	mov	r1, r2
  2e2818: 4798         	blx	r3
  2e281a: 9b03         	ldr	r3, [sp, #0xc]
  2e281c: 2200         	movs	r2, #0x0
  2e281e: f883 210c    	strb.w	r2, [r3, #0x10c]
  2e2822: 4bcd         	ldr	r3, [pc, #0x334]        @ 0x2e2b58 <AdLayer::init()+0x4d8>
  2e2824: 447b         	add	r3, pc
  2e2826: 4618         	mov	r0, r3
  2e2828: f2f5 fd6c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f5ad8
  2e282c: 4603         	mov	r3, r0
  2e282e: 930a         	str	r3, [sp, #0x28]
  2e2830: 4bca         	ldr	r3, [pc, #0x328]        @ 0x2e2b5c <AdLayer::init()+0x4dc>
  2e2832: 447b         	add	r3, pc
  2e2834: 4618         	mov	r0, r3
  2e2836: f2f5 fd65    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f5aca
  2e283a: 4603         	mov	r3, r0
  2e283c: 930b         	str	r3, [sp, #0x2c]
  2e283e: 9a03         	ldr	r2, [sp, #0xc]
  2e2840: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x2e2b60 <AdLayer::init()+0x4e0>
  2e2842: 58e3         	ldr	r3, [r4, r3]
  2e2844: 9318         	str	r3, [sp, #0x60]
  2e2846: 2300         	movs	r3, #0x0
  2e2848: 9319         	str	r3, [sp, #0x64]
  2e284a: 9b19         	ldr	r3, [sp, #0x64]
  2e284c: 9300         	str	r3, [sp]
  2e284e: 9b18         	ldr	r3, [sp, #0x60]
  2e2850: 980a         	ldr	r0, [sp, #0x28]
  2e2852: 990a         	ldr	r1, [sp, #0x28]
  2e2854: f2d5 fd6a    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2d5ad4
  2e2858: 4603         	mov	r3, r0
  2e285a: 930c         	str	r3, [sp, #0x30]
  2e285c: 980c         	ldr	r0, [sp, #0x30]
  2e285e: 2100         	movs	r1, #0x0
  2e2860: f2d2 fc6c    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2d28d8
  2e2864: 4602         	mov	r2, r0
  2e2866: 9b03         	ldr	r3, [sp, #0xc]
  2e2868: f8c3 2120    	str.w	r2, [r3, #0x120]
  2e286c: 9b03         	ldr	r3, [sp, #0xc]
  2e286e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e2872: 4618         	mov	r0, r3
  2e2874: f2b5 fb38    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b5670
  2e2878: 9b03         	ldr	r3, [sp, #0xc]
  2e287a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e287e: 681b         	ldr	r3, [r3]
  2e2880: 334c         	adds	r3, #0x4c
  2e2882: 681d         	ldr	r5, [r3]
  2e2884: 9b03         	ldr	r3, [sp, #0xc]
  2e2886: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e288a: 461e         	mov	r6, r3
  2e288c: ed9d 7a0e    	vldr	s14, [sp, #56]
  2e2890: eddf 7aaf    	vldr	s15, [pc, #700]         @ 0x2e2b50 <AdLayer::init()+0x4d0>
  2e2894: ee77 7a67    	vsub.f32	s15, s14, s15
  2e2898: ab20         	add	r3, sp, #0x80
  2e289a: 4618         	mov	r0, r3
  2e289c: ee17 1a90    	vmov	r1, s15
  2e28a0: f04f 4284    	mov.w	r2, #0x42000000
  2e28a4: f2b0 fa24    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b0448
  2e28a8: ab20         	add	r3, sp, #0x80
  2e28aa: 4630         	mov	r0, r6
  2e28ac: 4619         	mov	r1, r3
  2e28ae: 47a8         	blx	r5
  2e28b0: 9b03         	ldr	r3, [sp, #0xc]
  2e28b2: 681b         	ldr	r3, [r3]
  2e28b4: 33c8         	adds	r3, #0xc8
  2e28b6: 681b         	ldr	r3, [r3]
  2e28b8: 9903         	ldr	r1, [sp, #0xc]
  2e28ba: 9a03         	ldr	r2, [sp, #0xc]
  2e28bc: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2e28c0: 4608         	mov	r0, r1
  2e28c2: 4611         	mov	r1, r2
  2e28c4: 4798         	blx	r3
  2e28c6: 9a03         	ldr	r2, [sp, #0xc]
  2e28c8: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x2e2b64 <AdLayer::init()+0x4e4>
  2e28ca: 58e3         	ldr	r3, [r4, r3]
  2e28cc: 931a         	str	r3, [sp, #0x68]
  2e28ce: 2300         	movs	r3, #0x0
  2e28d0: 931b         	str	r3, [sp, #0x6c]
  2e28d2: 9b1b         	ldr	r3, [sp, #0x6c]
  2e28d4: 9300         	str	r3, [sp]
  2e28d6: 9b1a         	ldr	r3, [sp, #0x68]
  2e28d8: 980b         	ldr	r0, [sp, #0x2c]
  2e28da: 990b         	ldr	r1, [sp, #0x2c]
  2e28dc: f2d5 fd26    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2d5a4c
  2e28e0: 4603         	mov	r3, r0
  2e28e2: 930d         	str	r3, [sp, #0x34]
  2e28e4: 980d         	ldr	r0, [sp, #0x34]
  2e28e6: 2100         	movs	r1, #0x0
  2e28e8: f2d2 fc28    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2d2850
  2e28ec: 4602         	mov	r2, r0
  2e28ee: 9b03         	ldr	r3, [sp, #0xc]
  2e28f0: f8c3 2124    	str.w	r2, [r3, #0x124]
  2e28f4: 9b03         	ldr	r3, [sp, #0xc]
  2e28f6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e28fa: 4618         	mov	r0, r3
  2e28fc: f2b5 faf4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b55e8
  2e2900: 9b03         	ldr	r3, [sp, #0xc]
  2e2902: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e2906: 681b         	ldr	r3, [r3]
  2e2908: 334c         	adds	r3, #0x4c
  2e290a: 681c         	ldr	r4, [r3]
  2e290c: 9b03         	ldr	r3, [sp, #0xc]
  2e290e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e2912: 461d         	mov	r5, r3
  2e2914: ab20         	add	r3, sp, #0x80
  2e2916: 4618         	mov	r0, r3
  2e2918: f04f 0100    	mov.w	r1, #0x0
  2e291c: f2c4 2160    	movt	r1, #0x4260
  2e2920: f04f 4284    	mov.w	r2, #0x42000000
  2e2924: f2b0 f9e4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b03c8
  2e2928: ab20         	add	r3, sp, #0x80
  2e292a: 4628         	mov	r0, r5
  2e292c: 4619         	mov	r1, r3
  2e292e: 47a0         	blx	r4
  2e2930: 9b03         	ldr	r3, [sp, #0xc]
  2e2932: 681b         	ldr	r3, [r3]
  2e2934: 33c8         	adds	r3, #0xc8
  2e2936: 681b         	ldr	r3, [r3]
  2e2938: 9903         	ldr	r1, [sp, #0xc]
  2e293a: 9a03         	ldr	r2, [sp, #0xc]
  2e293c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2e2940: 4608         	mov	r0, r1
  2e2942: 4611         	mov	r1, r2
  2e2944: 4798         	blx	r3
  2e2946: 4b88         	ldr	r3, [pc, #0x220]        @ 0x2e2b68 <AdLayer::init()+0x4e8>
  2e2948: 447b         	add	r3, pc
  2e294a: 4618         	mov	r0, r3
  2e294c: f0d2 f4d8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4d29b0
  2e2950: 4603         	mov	r3, r0
  2e2952: 2220         	movs	r2, #0x20
  2e2954: 9200         	str	r2, [sp]
  2e2956: 4a85         	ldr	r2, [pc, #0x214]        @ 0x2e2b6c <AdLayer::init()+0x4ec>
  2e2958: 447a         	add	r2, pc
  2e295a: 4610         	mov	r0, r2
  2e295c: 4619         	mov	r1, r3
  2e295e: 2220         	movs	r2, #0x20
  2e2960: 2320         	movs	r3, #0x20
  2e2962: f2c2 fd09    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c2a12
  2e2966: 4602         	mov	r2, r0
  2e2968: 9b03         	ldr	r3, [sp, #0xc]
  2e296a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  2e296e: 9b03         	ldr	r3, [sp, #0xc]
  2e2970: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e2974: 4618         	mov	r0, r3
  2e2976: f2b5 fab7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b556e
  2e297a: 9b03         	ldr	r3, [sp, #0xc]
  2e297c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e2980: eddd 7a08    	vldr	s15, [sp, #32]
  2e2984: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e2988: ee17 2a90    	vmov	r2, s15
  2e298c: 4618         	mov	r0, r3
  2e298e: 4611         	mov	r1, r2
  2e2990: f2c3 f9f8    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c33f0
  2e2994: 9b03         	ldr	r3, [sp, #0xc]
  2e2996: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e299a: 681b         	ldr	r3, [r3]
  2e299c: 3340         	adds	r3, #0x40
  2e299e: 681b         	ldr	r3, [r3]
  2e29a0: 9a03         	ldr	r2, [sp, #0xc]
  2e29a2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2e29a6: 4610         	mov	r0, r2
  2e29a8: 9907         	ldr	r1, [sp, #0x1c]
  2e29aa: 4798         	blx	r3
  2e29ac: 9b03         	ldr	r3, [sp, #0xc]
  2e29ae: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e29b2: 681b         	ldr	r3, [r3]
  2e29b4: 334c         	adds	r3, #0x4c
  2e29b6: 681c         	ldr	r4, [r3]
  2e29b8: 9b03         	ldr	r3, [sp, #0xc]
  2e29ba: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e29be: 461d         	mov	r5, r3
  2e29c0: 9b03         	ldr	r3, [sp, #0xc]
  2e29c2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e29c6: 681b         	ldr	r3, [r3]
  2e29c8: 3350         	adds	r3, #0x50
  2e29ca: 681b         	ldr	r3, [r3]
  2e29cc: 9a03         	ldr	r2, [sp, #0xc]
  2e29ce: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2e29d2: 4610         	mov	r0, r2
  2e29d4: 4798         	blx	r3
  2e29d6: 4603         	mov	r3, r0
  2e29d8: 681e         	ldr	r6, [r3]
  2e29da: 9b03         	ldr	r3, [sp, #0xc]
  2e29dc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e29e0: 681b         	ldr	r3, [r3]
  2e29e2: 3350         	adds	r3, #0x50
  2e29e4: 681b         	ldr	r3, [r3]
  2e29e6: 9a03         	ldr	r2, [sp, #0xc]
  2e29e8: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2e29ec: 4610         	mov	r0, r2
  2e29ee: 4798         	blx	r3
  2e29f0: 4603         	mov	r3, r0
  2e29f2: 685b         	ldr	r3, [r3, #0x4]
  2e29f4: aa12         	add	r2, sp, #0x48
  2e29f6: 4610         	mov	r0, r2
  2e29f8: 4631         	mov	r1, r6
  2e29fa: 461a         	mov	r2, r3
  2e29fc: f2b0 f978    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b02f0
  2e2a00: eddd 7a09    	vldr	s15, [sp, #36]
  2e2a04: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2a08: ab1c         	add	r3, sp, #0x70
  2e2a0a: 4618         	mov	r0, r3
  2e2a0c: ed9f 0b4e    	vldr	d0, [pc, #312]          @ 0x2e2b48 <AdLayer::init()+0x4c8>
  2e2a10: eeb0 1b47    	vmov.f64	d1, d7
  2e2a14: f7fe fef6    	bl	0x2e1804 <AboutLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1214
  2e2a18: ed9d 8b1c    	vldr	d8, [sp, #112]
  2e2a1c: 9b03         	ldr	r3, [sp, #0xc]
  2e2a1e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e2a22: 681b         	ldr	r3, [r3]
  2e2a24: f503 73fe    	add.w	r3, r3, #0x1fc
  2e2a28: 681b         	ldr	r3, [r3]
  2e2a2a: 9a03         	ldr	r2, [sp, #0xc]
  2e2a2c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2e2a30: 4610         	mov	r0, r2
  2e2a32: 4798         	blx	r3
  2e2a34: 4606         	mov	r6, r0
  2e2a36: ab05         	add	r3, sp, #0x14
  2e2a38: 4618         	mov	r0, r3
  2e2a3a: f0a7 f4db    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a79b6
  2e2a3e: aa06         	add	r2, sp, #0x18
  2e2a40: ab05         	add	r3, sp, #0x14
  2e2a42: 4610         	mov	r0, r2
  2e2a44: 4631         	mov	r1, r6
  2e2a46: 461a         	mov	r2, r3
  2e2a48: f0d4 f00a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d4014
  2e2a4c: ab06         	add	r3, sp, #0x18
  2e2a4e: 4618         	mov	r0, r3
  2e2a50: f0d2 f304    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4d2608
  2e2a54: 4603         	mov	r3, r0
  2e2a56: ee07 3a90    	vmov	s15, r3
  2e2a5a: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2e2a5e: eddd 7a08    	vldr	s15, [sp, #32]
  2e2a62: ee27 7a27    	vmul.f32	s14, s14, s15
  2e2a66: eddd 7a07    	vldr	s15, [sp, #28]
  2e2a6a: ee27 7a27    	vmul.f32	s14, s14, s15
  2e2a6e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e2a72: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e2a76: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2a7a: ee38 7b47    	vsub.f64	d7, d8, d7
  2e2a7e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2e2a82: eddd 7a09    	vldr	s15, [sp, #36]
  2e2a86: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2a8a: ab20         	add	r3, sp, #0x80
  2e2a8c: 4618         	mov	r0, r3
  2e2a8e: ed9f 0b2e    	vldr	d0, [pc, #184]          @ 0x2e2b48 <AdLayer::init()+0x4c8>
  2e2a92: eeb0 1b47    	vmov.f64	d1, d7
  2e2a96: f7fe feb5    	bl	0x2e1804 <AboutLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1296
  2e2a9a: ed9d 7b22    	vldr	d7, [sp, #136]
  2e2a9e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2e2aa2: ab14         	add	r3, sp, #0x50
  2e2aa4: 4618         	mov	r0, r3
  2e2aa6: ee18 1a10    	vmov	r1, s16
  2e2aaa: ee17 2a90    	vmov	r2, s15
  2e2aae: f2b0 f91f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b023e
  2e2ab2: a916         	add	r1, sp, #0x58
  2e2ab4: aa12         	add	r2, sp, #0x48
  2e2ab6: ab14         	add	r3, sp, #0x50
  2e2ab8: 4608         	mov	r0, r1
  2e2aba: 4611         	mov	r1, r2
  2e2abc: 461a         	mov	r2, r3
  2e2abe: f7fe fe91    	bl	0x2e17e4 <AboutLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x12de
  2e2ac2: ab16         	add	r3, sp, #0x58
  2e2ac4: 4628         	mov	r0, r5
  2e2ac6: 4619         	mov	r1, r3
  2e2ac8: 47a0         	blx	r4
  2e2aca: ab06         	add	r3, sp, #0x18
  2e2acc: 4618         	mov	r0, r3
  2e2ace: f0d2 f721    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d2e42
  2e2ad2: ab05         	add	r3, sp, #0x14
  2e2ad4: 4618         	mov	r0, r3
  2e2ad6: f0a7 f491    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a7922
  2e2ada: 9b03         	ldr	r3, [sp, #0xc]
  2e2adc: 681b         	ldr	r3, [r3]
  2e2ade: 33c8         	adds	r3, #0xc8
  2e2ae0: 681b         	ldr	r3, [r3]
  2e2ae2: 9903         	ldr	r1, [sp, #0xc]
  2e2ae4: 9a03         	ldr	r2, [sp, #0xc]
  2e2ae6: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2e2aea: 4608         	mov	r0, r1
  2e2aec: 4611         	mov	r1, r2
  2e2aee: 4798         	blx	r3
  2e2af0: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x2e2b70 <AdLayer::init()+0x4f0>
  2e2af2: 447b         	add	r3, pc
  2e2af4: 4618         	mov	r0, r3
  2e2af6: f0d2 f403    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4d2806
  2e2afa: 4603         	mov	r3, r0
  2e2afc: 2220         	movs	r2, #0x20
  2e2afe: 9200         	str	r2, [sp]
  2e2b00: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x2e2b74 <AdLayer::init()+0x4f4>
  2e2b02: 447a         	add	r2, pc
  2e2b04: 4610         	mov	r0, r2
  2e2b06: 4619         	mov	r1, r3
  2e2b08: 2220         	movs	r2, #0x20
  2e2b0a: 2320         	movs	r3, #0x20
  2e2b0c: f2c2 fc34    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2c2868
  2e2b10: 4602         	mov	r2, r0
  2e2b12: 9b03         	ldr	r3, [sp, #0xc]
  2e2b14: f8c3 2118    	str.w	r2, [r3, #0x118]
  2e2b18: 9b03         	ldr	r3, [sp, #0xc]
  2e2b1a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2b1e: 4618         	mov	r0, r3
  2e2b20: f2b5 f9e2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b53c4
  2e2b24: 9b03         	ldr	r3, [sp, #0xc]
  2e2b26: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2b2a: eddd 7a08    	vldr	s15, [sp, #32]
  2e2b2e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e2b32: ee17 2a90    	vmov	r2, s15
  2e2b36: 4618         	mov	r0, r3
  2e2b38: 4611         	mov	r1, r2
  2e2b3a: f2c3 f923    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2c3246
  2e2b3e: 9b03         	ldr	r3, [sp, #0xc]
  2e2b40: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2b44: e018         	b	0x2e2b78 <AdLayer::init()+0x4f8> @ imm = #0x30
  2e2b46: bf00         	nop
  2e2b50: 0000         	movs	r0, r0
  2e2b52: 4260         	rsbs	r0, r4, #0
  2e2b54: f79e 004d    	<unknown>
  2e2b58: f760 004d    	<unknown>
  2e2b5c: f752 004d    	<unknown>
  2e2b60: d770         	bvc	0x2e2c44 <AdLayer::init()+0x5c4> @ imm = #0xe0
  2e2b62: ffff d774    	<unknown>
  2e2b66: ffff cd98    	<unknown>
  2e2b6a: 0065         	lsls	r5, r4, #0x1
  2e2b6c: f638 004d    	<unknown>
  2e2b70: cbee         	ldm	r3, {r1, r2, r3, r5, r6, r7}
  2e2b72: 0065         	lsls	r5, r4, #0x1
  2e2b74: f492 004d    	eors	r0, r2, #0xcd0000
  2e2b78: 681b         	ldr	r3, [r3]
  2e2b7a: 3340         	adds	r3, #0x40
  2e2b7c: 681b         	ldr	r3, [r3]
  2e2b7e: 9a03         	ldr	r2, [sp, #0xc]
  2e2b80: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2e2b84: 4610         	mov	r0, r2
  2e2b86: 9907         	ldr	r1, [sp, #0x1c]
  2e2b88: 4798         	blx	r3
  2e2b8a: 9b03         	ldr	r3, [sp, #0xc]
  2e2b8c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2b90: 681b         	ldr	r3, [r3]
  2e2b92: 334c         	adds	r3, #0x4c
  2e2b94: 681c         	ldr	r4, [r3]
  2e2b96: 9b03         	ldr	r3, [sp, #0xc]
  2e2b98: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2b9c: 461d         	mov	r5, r3
  2e2b9e: 9b03         	ldr	r3, [sp, #0xc]
  2e2ba0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e2ba4: 681b         	ldr	r3, [r3]
  2e2ba6: 3350         	adds	r3, #0x50
  2e2ba8: 681b         	ldr	r3, [r3]
  2e2baa: 9a03         	ldr	r2, [sp, #0xc]
  2e2bac: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2e2bb0: 4610         	mov	r0, r2
  2e2bb2: 4798         	blx	r3
  2e2bb4: 4603         	mov	r3, r0
  2e2bb6: 681e         	ldr	r6, [r3]
  2e2bb8: 9b03         	ldr	r3, [sp, #0xc]
  2e2bba: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e2bbe: 681b         	ldr	r3, [r3]
  2e2bc0: 3350         	adds	r3, #0x50
  2e2bc2: 681b         	ldr	r3, [r3]
  2e2bc4: 9a03         	ldr	r2, [sp, #0xc]
  2e2bc6: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2e2bca: 4610         	mov	r0, r2
  2e2bcc: 4798         	blx	r3
  2e2bce: 4603         	mov	r3, r0
  2e2bd0: 685b         	ldr	r3, [r3, #0x4]
  2e2bd2: aa12         	add	r2, sp, #0x48
  2e2bd4: 4610         	mov	r0, r2
  2e2bd6: 4631         	mov	r1, r6
  2e2bd8: 461a         	mov	r2, r3
  2e2bda: f2b0 f889    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b0112
  2e2bde: eddd 7a09    	vldr	s15, [sp, #36]
  2e2be2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2be6: ab1c         	add	r3, sp, #0x70
  2e2be8: 4618         	mov	r0, r3
  2e2bea: ed9f 0b47    	vldr	d0, [pc, #284]          @ 0x2e2d08 <AdLayer::init()+0x688>
  2e2bee: eeb0 1b47    	vmov.f64	d1, d7
  2e2bf2: f7fe fe07    	bl	0x2e1804 <AboutLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x13f2
  2e2bf6: ed9d 8b1c    	vldr	d8, [sp, #112]
  2e2bfa: 9b03         	ldr	r3, [sp, #0xc]
  2e2bfc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2c00: 681b         	ldr	r3, [r3]
  2e2c02: f503 73fe    	add.w	r3, r3, #0x1fc
  2e2c06: 681b         	ldr	r3, [r3]
  2e2c08: 9a03         	ldr	r2, [sp, #0xc]
  2e2c0a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2e2c0e: 4610         	mov	r0, r2
  2e2c10: 4798         	blx	r3
  2e2c12: 4606         	mov	r6, r0
  2e2c14: ab05         	add	r3, sp, #0x14
  2e2c16: 4618         	mov	r0, r3
  2e2c18: f0a7 f3ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a77d8
  2e2c1c: aa06         	add	r2, sp, #0x18
  2e2c1e: ab05         	add	r3, sp, #0x14
  2e2c20: 4610         	mov	r0, r2
  2e2c22: 4631         	mov	r1, r6
  2e2c24: 461a         	mov	r2, r3
  2e2c26: f0d3 f71b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d3e36
  2e2c2a: ab06         	add	r3, sp, #0x18
  2e2c2c: 4618         	mov	r0, r3
  2e2c2e: f0d2 f215    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4d242a
  2e2c32: 4603         	mov	r3, r0
  2e2c34: ee07 3a90    	vmov	s15, r3
  2e2c38: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2e2c3c: eddd 7a08    	vldr	s15, [sp, #32]
  2e2c40: ee27 7a27    	vmul.f32	s14, s14, s15
  2e2c44: eddd 7a07    	vldr	s15, [sp, #28]
  2e2c48: ee27 7a27    	vmul.f32	s14, s14, s15
  2e2c4c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2e2c50: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e2c54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2c58: ee38 7b47    	vsub.f64	d7, d8, d7
  2e2c5c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2e2c60: eddd 7a09    	vldr	s15, [sp, #36]
  2e2c64: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2e2c68: ab20         	add	r3, sp, #0x80
  2e2c6a: 4618         	mov	r0, r3
  2e2c6c: ed9f 0b26    	vldr	d0, [pc, #152]          @ 0x2e2d08 <AdLayer::init()+0x688>
  2e2c70: eeb0 1b47    	vmov.f64	d1, d7
  2e2c74: f7fe fdc6    	bl	0x2e1804 <AboutLayer::onBack(cocos2d::CCObject*)+0x1ec> @ imm = #-0x1474
  2e2c78: ed9d 7b22    	vldr	d7, [sp, #136]
  2e2c7c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2e2c80: ab14         	add	r3, sp, #0x50
  2e2c82: 4618         	mov	r0, r3
  2e2c84: ee18 1a10    	vmov	r1, s16
  2e2c88: ee17 2a90    	vmov	r2, s15
  2e2c8c: f2b0 f830    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b0060
  2e2c90: a916         	add	r1, sp, #0x58
  2e2c92: aa12         	add	r2, sp, #0x48
  2e2c94: ab14         	add	r3, sp, #0x50
  2e2c96: 4608         	mov	r0, r1
  2e2c98: 4611         	mov	r1, r2
  2e2c9a: 461a         	mov	r2, r3
  2e2c9c: f7fe fda2    	bl	0x2e17e4 <AboutLayer::onBack(cocos2d::CCObject*)+0x1cc> @ imm = #-0x14bc
  2e2ca0: ab16         	add	r3, sp, #0x58
  2e2ca2: 4628         	mov	r0, r5
  2e2ca4: 4619         	mov	r1, r3
  2e2ca6: 47a0         	blx	r4
  2e2ca8: ab06         	add	r3, sp, #0x18
  2e2caa: 4618         	mov	r0, r3
  2e2cac: f0d2 f632    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d2c64
  2e2cb0: ab05         	add	r3, sp, #0x14
  2e2cb2: 4618         	mov	r0, r3
  2e2cb4: f0a7 f3a2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a7744
  2e2cb8: 9b03         	ldr	r3, [sp, #0xc]
  2e2cba: 681b         	ldr	r3, [r3]
  2e2cbc: 33c8         	adds	r3, #0xc8
  2e2cbe: 681b         	ldr	r3, [r3]
  2e2cc0: 9903         	ldr	r1, [sp, #0xc]
  2e2cc2: 9a03         	ldr	r2, [sp, #0xc]
  2e2cc4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2e2cc8: 4608         	mov	r0, r1
  2e2cca: 4611         	mov	r1, r2
  2e2ccc: 4798         	blx	r3
  2e2cce: 2301         	movs	r3, #0x1
  2e2cd0: e015         	b	0x2e2cfe <AdLayer::init()+0x67e> @ imm = #0x2a
  2e2cd2: ab06         	add	r3, sp, #0x18
  2e2cd4: 4618         	mov	r0, r3
  2e2cd6: f0d2 f61d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d2c3a
  2e2cda: e7ff         	b	0x2e2cdc <AdLayer::init()+0x65c> @ imm = #-0x2
  2e2cdc: ab05         	add	r3, sp, #0x14
  2e2cde: 4618         	mov	r0, r3
  2e2ce0: f0a7 f38c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a7718
  2e2ce4: f0a5 f1e2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a53c4
  2e2ce8: ab06         	add	r3, sp, #0x18
  2e2cea: 4618         	mov	r0, r3
  2e2cec: f0d2 f612    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d2c24
  2e2cf0: e7ff         	b	0x2e2cf2 <AdLayer::init()+0x672> @ imm = #-0x2
  2e2cf2: ab05         	add	r3, sp, #0x14
  2e2cf4: 4618         	mov	r0, r3
  2e2cf6: f0a7 f381    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a7702
  2e2cfa: f0a5 f1d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a53ae
  2e2cfe: 4618         	mov	r0, r3
  2e2d00: b024         	add	sp, #0x90
  2e2d02: ecbd 8b02    	vpop	{d8}
  2e2d06: bd70         	pop	{r4, r5, r6, pc}

// ==== AdLayer::~AdLayer
//      file offset 0x2e2d10 (= ELF address; Ghidra 0x2f2d10), 160 bytes, Thumb-2
  2e2d10: b500         	push	{lr}
  2e2d12: b083         	sub	sp, #0xc
  2e2d14: 9001         	str	r0, [sp, #0x4]
  2e2d16: 4b24         	ldr	r3, [pc, #0x90]         @ 0x2e2da8 <AdLayer::~AdLayer()+0x98>
  2e2d18: 447b         	add	r3, pc
  2e2d1a: 9a01         	ldr	r2, [sp, #0x4]
  2e2d1c: 4923         	ldr	r1, [pc, #0x8c]         @ 0x2e2dac <AdLayer::~AdLayer()+0x9c>
  2e2d1e: 5859         	ldr	r1, [r3, r1]
  2e2d20: 3108         	adds	r1, #0x8
  2e2d22: 6011         	str	r1, [r2]
  2e2d24: 9a01         	ldr	r2, [sp, #0x4]
  2e2d26: 4921         	ldr	r1, [pc, #0x84]         @ 0x2e2dac <AdLayer::~AdLayer()+0x9c>
  2e2d28: 5859         	ldr	r1, [r3, r1]
  2e2d2a: f501 7104    	add.w	r1, r1, #0x210
  2e2d2e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2e2d32: 9a01         	ldr	r2, [sp, #0x4]
  2e2d34: 491d         	ldr	r1, [pc, #0x74]         @ 0x2e2dac <AdLayer::~AdLayer()+0x9c>
  2e2d36: 5859         	ldr	r1, [r3, r1]
  2e2d38: f501 7110    	add.w	r1, r1, #0x240
  2e2d3c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2e2d40: 9a01         	ldr	r2, [sp, #0x4]
  2e2d42: 491a         	ldr	r1, [pc, #0x68]         @ 0x2e2dac <AdLayer::~AdLayer()+0x9c>
  2e2d44: 585b         	ldr	r3, [r3, r1]
  2e2d46: f503 7313    	add.w	r3, r3, #0x24c
  2e2d4a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  2e2d4e: 9b01         	ldr	r3, [sp, #0x4]
  2e2d50: 4618         	mov	r0, r3
  2e2d52: 2100         	movs	r1, #0x0
  2e2d54: f2ad fc78    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x2ad8f0
  2e2d58: 9b01         	ldr	r3, [sp, #0x4]
  2e2d5a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2e2d5e: 4618         	mov	r0, r3
  2e2d60: f2b5 f8aa    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b5154
  2e2d64: 9b01         	ldr	r3, [sp, #0x4]
  2e2d66: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2e2d6a: 4618         	mov	r0, r3
  2e2d6c: f2b5 f8a4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b5148
  2e2d70: 9b01         	ldr	r3, [sp, #0x4]
  2e2d72: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e2d76: 4618         	mov	r0, r3
  2e2d78: f2b5 f89e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b513c
  2e2d7c: 9b01         	ldr	r3, [sp, #0x4]
  2e2d7e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e2d82: 4618         	mov	r0, r3
  2e2d84: f2b5 f898    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b5130
  2e2d88: 9b01         	ldr	r3, [sp, #0x4]
  2e2d8a: 4618         	mov	r0, r3
  2e2d8c: f2ca f9de    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2ca3bc
  2e2d90: 2300         	movs	r3, #0x0
  2e2d92: 2b00         	cmp	r3, #0x0
  2e2d94: d002         	beq	0x2e2d9c <AdLayer::~AdLayer()+0x8c> @ imm = #0x4
  2e2d96: 9801         	ldr	r0, [sp, #0x4]
  2e2d98: f0a5 f184    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a5308
  2e2d9c: 9b01         	ldr	r3, [sp, #0x4]
  2e2d9e: 4618         	mov	r0, r3
  2e2da0: b003         	add	sp, #0xc
  2e2da2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e2da5); words below are literal-pool data ---
  2e2da6: bf00         	nop
  2e2da8: fcf0 0064    	ldc2l	p0, c0, [r0], #400
  2e2dac: d764         	bvc	0x2e2e78 <AdLayer::onLobby(cocos2d::CCObject*)+0x9c> @ imm = #0xc8
  2e2dae: ffff f1a0    	<unknown>

// ==== AdLayer::~AdLayer
//      file offset 0x2e2db0 (= ELF address; Ghidra 0x2f2db0), 8 bytes, Thumb-2
  2e2db0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2e2db4: f7ff bfac    	b.w	0x2e2d10 <AdLayer::~AdLayer()> @ imm = #-0xa8

// ==== AdLayer::~AdLayer
//      file offset 0x2e2db8 (= ELF address; Ghidra 0x2f2db8), 28 bytes, Thumb-2
  2e2db8: b500         	push	{lr}
  2e2dba: b083         	sub	sp, #0xc
  2e2dbc: 9001         	str	r0, [sp, #0x4]
  2e2dbe: 9801         	ldr	r0, [sp, #0x4]
  2e2dc0: f7ff ffa6    	bl	0x2e2d10 <AdLayer::~AdLayer()> @ imm = #-0xb4
  2e2dc4: 9801         	ldr	r0, [sp, #0x4]
  2e2dc6: f0a5 f16d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a52da
  2e2dca: 9b01         	ldr	r3, [sp, #0x4]
  2e2dcc: 4618         	mov	r0, r3
  2e2dce: b003         	add	sp, #0xc
  2e2dd0: f85d fb04    	ldr	pc, [sp], #4

// ==== AdLayer::~AdLayer
//      file offset 0x2e2dd4 (= ELF address; Ghidra 0x2f2dd4), 8 bytes, Thumb-2
  2e2dd4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2e2dd8: f7ff bfee    	b.w	0x2e2db8 <AdLayer::~AdLayer()> @ imm = #-0x24

// ==== AdLayer::onLobby
//      file offset 0x2e2ddc (= ELF address; Ghidra 0x2f2ddc), 292 bytes, Thumb-2
  2e2ddc: b530         	push	{r4, r5, lr}
  2e2dde: b087         	sub	sp, #0x1c
  2e2de0: 9001         	str	r0, [sp, #0x4]
  2e2de2: 9100         	str	r1, [sp]
  2e2de4: 4c3d         	ldr	r4, [pc, #0xf4]         @ 0x2e2edc <AdLayer::onLobby(cocos2d::CCObject*)+0x100>
  2e2de6: 447c         	add	r4, pc
  2e2de8: 9b01         	ldr	r3, [sp, #0x4]
  2e2dea: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  2e2dee: 2b00         	cmp	r3, #0x0
  2e2df0: d000         	beq	0x2e2df4 <AdLayer::onLobby(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2e2df2: e070         	b	0x2e2ed6 <AdLayer::onLobby(cocos2d::CCObject*)+0xfa> @ imm = #0xe0
  2e2df4: 9b01         	ldr	r3, [sp, #0x4]
  2e2df6: 2201         	movs	r2, #0x1
  2e2df8: f883 210c    	strb.w	r2, [r3, #0x10c]
  2e2dfc: 9b01         	ldr	r3, [sp, #0x4]
  2e2dfe: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2e2e02: 2b01         	cmp	r3, #0x1
  2e2e04: d118         	bne	0x2e2e38 <AdLayer::onLobby(cocos2d::CCObject*)+0x5c> @ imm = #0x30
  2e2e06: f2ff fc11    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff822
  2e2e0a: 4603         	mov	r3, r0
  2e2e0c: 4618         	mov	r0, r3
  2e2e0e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x2e2ee0 <AdLayer::onLobby(cocos2d::CCObject*)+0x104>
  2e2e10: 447b         	add	r3, pc
  2e2e12: 4619         	mov	r1, r3
  2e2e14: 2200         	movs	r2, #0x0
  2e2e16: f2ff fa07    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2ff40e
  2e2e1a: 4603         	mov	r3, r0
  2e2e1c: 9303         	str	r3, [sp, #0xc]
  2e2e1e: f2ff fc05    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff80a
  2e2e22: 4602         	mov	r2, r0
  2e2e24: 9b03         	ldr	r3, [sp, #0xc]
  2e2e26: 3301         	adds	r3, #0x1
  2e2e28: 4610         	mov	r0, r2
  2e2e2a: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x2e2ee4 <AdLayer::onLobby(cocos2d::CCObject*)+0x108>
  2e2e2c: 447a         	add	r2, pc
  2e2e2e: 4611         	mov	r1, r2
  2e2e30: 461a         	mov	r2, r3
  2e2e32: f2ff fbb5    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2ff76a
  2e2e36: e035         	b	0x2e2ea4 <AdLayer::onLobby(cocos2d::CCObject*)+0xc8> @ imm = #0x6a
  2e2e38: 9b01         	ldr	r3, [sp, #0x4]
  2e2e3a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2e2e3e: 2b02         	cmp	r3, #0x2
  2e2e40: d118         	bne	0x2e2e74 <AdLayer::onLobby(cocos2d::CCObject*)+0x98> @ imm = #0x30
  2e2e42: f2ff fbf3    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff7e6
  2e2e46: 4603         	mov	r3, r0
  2e2e48: 4618         	mov	r0, r3
  2e2e4a: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x2e2ee8 <AdLayer::onLobby(cocos2d::CCObject*)+0x10c>
  2e2e4c: 447b         	add	r3, pc
  2e2e4e: 4619         	mov	r1, r3
  2e2e50: 2200         	movs	r2, #0x0
  2e2e52: f2ff f9e9    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2ff3d2
  2e2e56: 4603         	mov	r3, r0
  2e2e58: 9304         	str	r3, [sp, #0x10]
  2e2e5a: f2ff fbe7    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff7ce
  2e2e5e: 4602         	mov	r2, r0
  2e2e60: 9b04         	ldr	r3, [sp, #0x10]
  2e2e62: 3301         	adds	r3, #0x1
  2e2e64: 4610         	mov	r0, r2
  2e2e66: 4a21         	ldr	r2, [pc, #0x84]         @ 0x2e2eec <AdLayer::onLobby(cocos2d::CCObject*)+0x110>
  2e2e68: 447a         	add	r2, pc
  2e2e6a: 4611         	mov	r1, r2
  2e2e6c: 461a         	mov	r2, r3
  2e2e6e: f2ff fb97    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2ff72e
  2e2e72: e017         	b	0x2e2ea4 <AdLayer::onLobby(cocos2d::CCObject*)+0xc8> @ imm = #0x2e
  2e2e74: f2ff fbda    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff7b4
  2e2e78: 4603         	mov	r3, r0
  2e2e7a: 4618         	mov	r0, r3
  2e2e7c: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2e2ef0 <AdLayer::onLobby(cocos2d::CCObject*)+0x114>
  2e2e7e: 447b         	add	r3, pc
  2e2e80: 4619         	mov	r1, r3
  2e2e82: 2200         	movs	r2, #0x0
  2e2e84: f2ff f9d0    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2ff3a0
  2e2e88: 4603         	mov	r3, r0
  2e2e8a: 9305         	str	r3, [sp, #0x14]
  2e2e8c: f2ff fbce    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2ff79c
  2e2e90: 4602         	mov	r2, r0
  2e2e92: 9b05         	ldr	r3, [sp, #0x14]
  2e2e94: 3301         	adds	r3, #0x1
  2e2e96: 4610         	mov	r0, r2
  2e2e98: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2e2ef4 <AdLayer::onLobby(cocos2d::CCObject*)+0x118>
  2e2e9a: 447a         	add	r2, pc
  2e2e9c: 4611         	mov	r1, r2
  2e2e9e: 461a         	mov	r2, r3
  2e2ea0: f2ff fb7e    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2ff6fc
  2e2ea4: 4b14         	ldr	r3, [pc, #0x50]         @ 0x2e2ef8 <AdLayer::onLobby(cocos2d::CCObject*)+0x11c>
  2e2ea6: 58e3         	ldr	r3, [r4, r3]
  2e2ea8: 681b         	ldr	r3, [r3]
  2e2eaa: 4618         	mov	r0, r3
  2e2eac: 210d         	movs	r1, #0xd
  2e2eae: f114 ff87    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x114f0e
  2e2eb2: f2b8 fb5f    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b86be
  2e2eb6: 4604         	mov	r4, r0
  2e2eb8: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2e2efc <AdLayer::onLobby(cocos2d::CCObject*)+0x120>
  2e2eba: 447b         	add	r3, pc
  2e2ebc: 681d         	ldr	r5, [r3]
  2e2ebe: f06e fb85    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #0x6e70a
  2e2ec2: 4603         	mov	r3, r0
  2e2ec4: 4628         	mov	r0, r5
  2e2ec6: 4619         	mov	r1, r3
  2e2ec8: f2cf fedc    	bl	0x5b2c84 <cocos2d::CCTransitionFade::create(float, cocos2d::CCScene*)> @ imm = #0x2cfdb8
  2e2ecc: 4603         	mov	r3, r0
  2e2ece: 4620         	mov	r0, r4
  2e2ed0: 4619         	mov	r1, r3
  2e2ed2: f2b9 fa43    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2b9486
  2e2ed6: b007         	add	sp, #0x1c
  2e2ed8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2e2ed9); words below are literal-pool data ---
  2e2eda: bf00         	nop
  2e2edc: fc22 0064    	stc2	p0, c0, [r2], #-400
  2e2ee0: f18c 004d    	<unknown>
  2e2ee4: f170 004d    	sbcs	r0, r0, #0x4d
  2e2ee8: f15c 004d    	adcs	r0, r12, #0x4d
  2e2eec: f140 004d    	adc	r0, r0, #0x4d
  2e2ef0: f136 004d    	<unknown>
  2e2ef4: f11a 004d    	adds.w	r0, r10, #0x4d
  2e2ef8: d730         	bvc	0x2e2f5c <AdLayer::onAd(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2e2efa: ffff 0176    	vsra.u32	q8, q11, #0x1
  2e2efe: 0065         	lsls	r5, r4, #0x1

// ==== AdLayer::onAd
//      file offset 0x2e2f00 (= ELF address; Ghidra 0x2f2f00), 50 bytes, Thumb-2
  2e2f00: b500         	push	{lr}
  2e2f02: b083         	sub	sp, #0xc
  2e2f04: 9001         	str	r0, [sp, #0x4]
  2e2f06: 9100         	str	r1, [sp]
  2e2f08: 9b01         	ldr	r3, [sp, #0x4]
  2e2f0a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2e2f0e: 2b01         	cmp	r3, #0x1
  2e2f10: d102         	bne	0x2e2f18 <AdLayer::onAd(cocos2d::CCObject*)+0x18> @ imm = #0x4
  2e2f12: f149 fac7    	bl	0x42c4a4 <ApplicationInterface::openCrashCartLink()> @ imm = #0x14958e
  2e2f16: e009         	b	0x2e2f2c <AdLayer::onAd(cocos2d::CCObject*)+0x2c> @ imm = #0x12
  2e2f18: 9b01         	ldr	r3, [sp, #0x4]
  2e2f1a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2e2f1e: 2b02         	cmp	r3, #0x2
  2e2f20: d102         	bne	0x2e2f28 <AdLayer::onAd(cocos2d::CCObject*)+0x28> @ imm = #0x4
  2e2f22: f149 faeb    	bl	0x42c4fc <ApplicationInterface::openZombieRoadRageLink()> @ imm = #0x1495d6
  2e2f26: e001         	b	0x2e2f2c <AdLayer::onAd(cocos2d::CCObject*)+0x2c> @ imm = #0x2
  2e2f28: f149 fa90    	bl	0x42c44c <ApplicationInterface::openDoodleArmyBCAppLink()> @ imm = #0x149520
  2e2f2c: b003         	add	sp, #0xc
  2e2f2e: f85d fb04    	ldr	pc, [sp], #4
