// ControlsPlacementLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 26 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ControlsPlacementLayer.cpp

// ==== ControlsPlacementLayer::create
//      file offset 0x3099c4 (= ELF address; Ghidra 0x3199c4), 112 bytes, Thumb-2
  3099c4: b510         	push	{r4, lr}
  3099c6: b082         	sub	sp, #0x8
  3099c8: f44f 70ba    	mov.w	r0, #0x174
  3099cc: f07d f7ca    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x47df94
  3099d0: 4603         	mov	r3, r0
  3099d2: 461c         	mov	r4, r3
  3099d4: 4620         	mov	r0, r4
  3099d6: f000 f82d    	bl	0x309a34 <ControlsPlacementLayer::ControlsPlacementLayer()> @ imm = #0x5a
  3099da: 9401         	str	r4, [sp, #0x4]
  3099dc: 9b01         	ldr	r3, [sp, #0x4]
  3099de: 2b00         	cmp	r3, #0x0
  3099e0: d00a         	beq	0x3099f8 <ControlsPlacementLayer::create()+0x34> @ imm = #0x14
  3099e2: 9b01         	ldr	r3, [sp, #0x4]
  3099e4: 681b         	ldr	r3, [r3]
  3099e6: 3318         	adds	r3, #0x18
  3099e8: 681b         	ldr	r3, [r3]
  3099ea: 9801         	ldr	r0, [sp, #0x4]
  3099ec: 4798         	blx	r3
  3099ee: 4603         	mov	r3, r0
  3099f0: 2b00         	cmp	r3, #0x0
  3099f2: d001         	beq	0x3099f8 <ControlsPlacementLayer::create()+0x34> @ imm = #0x2
  3099f4: 2301         	movs	r3, #0x1
  3099f6: e000         	b	0x3099fa <ControlsPlacementLayer::create()+0x36> @ imm = #0x0
  3099f8: 2300         	movs	r3, #0x0
  3099fa: 2b00         	cmp	r3, #0x0
  3099fc: d005         	beq	0x309a0a <ControlsPlacementLayer::create()+0x46> @ imm = #0xa
  3099fe: 9b01         	ldr	r3, [sp, #0x4]
  309a00: 4618         	mov	r0, r3
  309a02: f28e fa7b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x28e4f6
  309a06: 9b01         	ldr	r3, [sp, #0x4]
  309a08: e011         	b	0x309a2e <ControlsPlacementLayer::create()+0x6a> @ imm = #0x22
  309a0a: 9b01         	ldr	r3, [sp, #0x4]
  309a0c: 2b00         	cmp	r3, #0x0
  309a0e: d005         	beq	0x309a1c <ControlsPlacementLayer::create()+0x58> @ imm = #0xa
  309a10: 9b01         	ldr	r3, [sp, #0x4]
  309a12: 681b         	ldr	r3, [r3]
  309a14: 3308         	adds	r3, #0x8
  309a16: 681b         	ldr	r3, [r3]
  309a18: 9801         	ldr	r0, [sp, #0x4]
  309a1a: 4798         	blx	r3
  309a1c: 2300         	movs	r3, #0x0
  309a1e: 9301         	str	r3, [sp, #0x4]
  309a20: 2300         	movs	r3, #0x0
  309a22: e004         	b	0x309a2e <ControlsPlacementLayer::create()+0x6a> @ imm = #0x8
  309a24: 4620         	mov	r0, r4
  309a26: f07e f33d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47e67a
  309a2a: f07e f33f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47e67e
  309a2e: 4618         	mov	r0, r3
  309a30: b002         	add	sp, #0x8
  309a32: bd10         	pop	{r4, pc}

// ==== ControlsPlacementLayer::ControlsPlacementLayer
//      file offset 0x309a34 (= ELF address; Ghidra 0x319a34), 112 bytes, Thumb-2
  309a34: b510         	push	{r4, lr}
  309a36: b082         	sub	sp, #0x8
  309a38: 9001         	str	r0, [sp, #0x4]
  309a3a: 4c18         	ldr	r4, [pc, #0x60]         @ 0x309a9c <ControlsPlacementLayer::ControlsPlacementLayer()+0x68>
  309a3c: 447c         	add	r4, pc
  309a3e: 9b01         	ldr	r3, [sp, #0x4]
  309a40: 4618         	mov	r0, r3
  309a42: f2a3 fb0b    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2a3616
  309a46: 9b01         	ldr	r3, [sp, #0x4]
  309a48: 4a15         	ldr	r2, [pc, #0x54]         @ 0x309aa0 <ControlsPlacementLayer::ControlsPlacementLayer()+0x6c>
  309a4a: 58a2         	ldr	r2, [r4, r2]
  309a4c: 3208         	adds	r2, #0x8
  309a4e: 601a         	str	r2, [r3]
  309a50: 9b01         	ldr	r3, [sp, #0x4]
  309a52: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x309aa0 <ControlsPlacementLayer::ControlsPlacementLayer()+0x6c>
  309a54: 58a2         	ldr	r2, [r4, r2]
  309a56: f502 7204    	add.w	r2, r2, #0x210
  309a5a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  309a5e: 9b01         	ldr	r3, [sp, #0x4]
  309a60: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x309aa0 <ControlsPlacementLayer::ControlsPlacementLayer()+0x6c>
  309a62: 58a2         	ldr	r2, [r4, r2]
  309a64: f502 7210    	add.w	r2, r2, #0x240
  309a68: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  309a6c: 9b01         	ldr	r3, [sp, #0x4]
  309a6e: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x309aa0 <ControlsPlacementLayer::ControlsPlacementLayer()+0x6c>
  309a70: 58a2         	ldr	r2, [r4, r2]
  309a72: f502 7213    	add.w	r2, r2, #0x24c
  309a76: f8c3 20ec    	str.w	r2, [r3, #0xec]
  309a7a: 9b01         	ldr	r3, [sp, #0x4]
  309a7c: f503 7390    	add.w	r3, r3, #0x120
  309a80: 4618         	mov	r0, r3
  309a82: f289 f927    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x28924e
  309a86: 9b01         	ldr	r3, [sp, #0x4]
  309a88: e005         	b	0x309a96 <ControlsPlacementLayer::ControlsPlacementLayer()+0x62> @ imm = #0xa
  309a8a: 9b01         	ldr	r3, [sp, #0x4]
  309a8c: 4618         	mov	r0, r3
  309a8e: f2a3 fb5d    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2a36ba
  309a92: f07e f30b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x47e616
  309a96: 4618         	mov	r0, r3
  309a98: b002         	add	sp, #0x8
  309a9a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x309a9b); words below are literal-pool data ---
  309a9c: 8fcc         	ldrh	r4, [r1, #0x3e]
  309a9e: 0062         	lsls	r2, r4, #0x1
  309aa0: d97c         	bls	0x309b9c <ControlsPlacementLayer::init()+0xc8> @ imm = #0xf8
  309aa2: ffff b500    	<unknown>

// ==== ControlsPlacementLayer::scene
//      file offset 0x309aa4 (= ELF address; Ghidra 0x319aa4), 46 bytes, Thumb-2
  309aa4: b500         	push	{lr}
  309aa6: b083         	sub	sp, #0xc
  309aa8: f2a5 ffda    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2a5fb4
  309aac: 4603         	mov	r3, r0
  309aae: 9300         	str	r3, [sp]
  309ab0: f7ff ff88    	bl	0x3099c4 <ControlsPlacementLayer::create()> @ imm = #-0xf0
  309ab4: 4603         	mov	r3, r0
  309ab6: 9301         	str	r3, [sp, #0x4]
  309ab8: 9b00         	ldr	r3, [sp]
  309aba: 681b         	ldr	r3, [r3]
  309abc: 33c8         	adds	r3, #0xc8
  309abe: 681b         	ldr	r3, [r3]
  309ac0: 9a00         	ldr	r2, [sp]
  309ac2: 4610         	mov	r0, r2
  309ac4: 9901         	ldr	r1, [sp, #0x4]
  309ac6: 4798         	blx	r3
  309ac8: 9b00         	ldr	r3, [sp]
  309aca: 4618         	mov	r0, r3
  309acc: b003         	add	sp, #0xc
  309ace: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::init
//      file offset 0x309ad4 (= ELF address; Ghidra 0x319ad4), 3928 bytes, Thumb-2
  309ad4: b570         	push	{r4, r5, r6, lr}
  309ad6: b0a2         	sub	sp, #0x88
  309ad8: 9003         	str	r0, [sp, #0xc]
  309ada: 4c09         	ldr	r4, [pc, #0x24]         @ 0x309b00 <ControlsPlacementLayer::init()+0x2c>
  309adc: 447c         	add	r4, pc
  309ade: 9b03         	ldr	r3, [sp, #0xc]
  309ae0: 4618         	mov	r0, r3
  309ae2: f2a3 fb89    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2a3712
  309ae6: 4603         	mov	r3, r0
  309ae8: f88d 3017    	strb.w	r3, [sp, #0x17]
  309aec: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  309af0: f083 0301    	eor	r3, r3, #0x1
  309af4: b2db         	uxtb	r3, r3
  309af6: 2b00         	cmp	r3, #0x0
  309af8: d004         	beq	0x309b04 <ControlsPlacementLayer::init()+0x30> @ imm = #0x8
  309afa: 2300         	movs	r3, #0x0
  309afc: f000 bf7a    	b.w	0x30a9f4 <ControlsPlacementLayer::init()+0xf20> @ imm = #0xef4
  309b00: 8f2c         	ldrh	r4, [r5, #0x38]
  309b02: 0062         	lsls	r2, r4, #0x1
  309b04: 9b03         	ldr	r3, [sp, #0xc]
  309b06: 681b         	ldr	r3, [r3]
  309b08: f503 73e8    	add.w	r3, r3, #0x1d0
  309b0c: 681b         	ldr	r3, [r3]
  309b0e: 9a03         	ldr	r2, [sp, #0xc]
  309b10: 4610         	mov	r0, r2
  309b12: 2101         	movs	r1, #0x1
  309b14: 4798         	blx	r3
  309b16: 9b03         	ldr	r3, [sp, #0xc]
  309b18: 2200         	movs	r2, #0x0
  309b1a: f883 2108    	strb.w	r2, [r3, #0x108]
  309b1e: ab12         	add	r3, sp, #0x48
  309b20: 4618         	mov	r0, r3
  309b22: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x309e54 <ControlsPlacementLayer::init()+0x380>
  309b24: 58e3         	ldr	r3, [r4, r3]
  309b26: 4619         	mov	r1, r3
  309b28: f289 fac2    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x289584
  309b2c: ed9d 7a12    	vldr	s14, [sp, #72]
  309b30: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  309b34: eec7 6a27    	vdiv.f32	s13, s14, s15
  309b38: ed9d 7a13    	vldr	s14, [sp, #76]
  309b3c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  309b40: eec7 7a27    	vdiv.f32	s15, s14, s15
  309b44: ab14         	add	r3, sp, #0x50
  309b46: 4618         	mov	r0, r3
  309b48: ee16 1a90    	vmov	r1, s13
  309b4c: ee17 2a90    	vmov	r2, s15
  309b50: f289 f8ce    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28919c
  309b54: f04f 0300    	mov.w	r3, #0x0
  309b58: f2c4 13c0    	movt	r3, #0x41c0
  309b5c: 9306         	str	r3, [sp, #0x18]
  309b5e: f64c 43cd    	movw	r3, #0xcccd
  309b62: f6c3 730c    	movt	r3, #0x3f0c
  309b66: 9307         	str	r3, [sp, #0x1c]
  309b68: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x309e58 <ControlsPlacementLayer::init()+0x384>
  309b6a: 447b         	add	r3, pc
  309b6c: 4618         	mov	r0, r3
  309b6e: f2ce fb09    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2ce612
  309b72: 4602         	mov	r2, r0
  309b74: 9b03         	ldr	r3, [sp, #0xc]
  309b76: f8c3 216c    	str.w	r2, [r3, #0x16c]
  309b7a: 9b03         	ldr	r3, [sp, #0xc]
  309b7c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  309b80: 681b         	ldr	r3, [r3]
  309b82: 3338         	adds	r3, #0x38
  309b84: 681b         	ldr	r3, [r3]
  309b86: 9a03         	ldr	r2, [sp, #0xc]
  309b88: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  309b8c: 49b1         	ldr	r1, [pc, #0x2c4]        @ 0x309e54 <ControlsPlacementLayer::init()+0x380>
  309b8e: 5861         	ldr	r1, [r4, r1]
  309b90: ed91 7a01    	vldr	s14, [r1, #4]
  309b94: eddf 7aad    	vldr	s15, [pc, #692]         @ 0x309e4c <ControlsPlacementLayer::init()+0x378>
  309b98: eec7 7a27    	vdiv.f32	s15, s14, s15
  309b9c: 4610         	mov	r0, r2
  309b9e: ee17 1a90    	vmov	r1, s15
  309ba2: 4798         	blx	r3
  309ba4: 9b03         	ldr	r3, [sp, #0xc]
  309ba6: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  309baa: 681b         	ldr	r3, [r3]
  309bac: 3330         	adds	r3, #0x30
  309bae: 681b         	ldr	r3, [r3]
  309bb0: 9a03         	ldr	r2, [sp, #0xc]
  309bb2: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  309bb6: 49a7         	ldr	r1, [pc, #0x29c]        @ 0x309e54 <ControlsPlacementLayer::init()+0x380>
  309bb8: 5861         	ldr	r1, [r4, r1]
  309bba: ed91 7a00    	vldr	s14, [r1]
  309bbe: eddf 7aa4    	vldr	s15, [pc, #656]         @ 0x309e50 <ControlsPlacementLayer::init()+0x37c>
  309bc2: eec7 7a27    	vdiv.f32	s15, s14, s15
  309bc6: 4610         	mov	r0, r2
  309bc8: ee17 1a90    	vmov	r1, s15
  309bcc: 4798         	blx	r3
  309bce: 9b03         	ldr	r3, [sp, #0xc]
  309bd0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  309bd4: 681b         	ldr	r3, [r3]
  309bd6: 334c         	adds	r3, #0x4c
  309bd8: 681b         	ldr	r3, [r3]
  309bda: 9a03         	ldr	r2, [sp, #0xc]
  309bdc: f8d2 116c    	ldr.w	r1, [r2, #0x16c]
  309be0: aa14         	add	r2, sp, #0x50
  309be2: 4608         	mov	r0, r1
  309be4: 4611         	mov	r1, r2
  309be6: 4798         	blx	r3
  309be8: 9b03         	ldr	r3, [sp, #0xc]
  309bea: 681b         	ldr	r3, [r3]
  309bec: 33c8         	adds	r3, #0xc8
  309bee: 681b         	ldr	r3, [r3]
  309bf0: 9903         	ldr	r1, [sp, #0xc]
  309bf2: 9a03         	ldr	r2, [sp, #0xc]
  309bf4: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  309bf8: 4608         	mov	r0, r1
  309bfa: 4611         	mov	r1, r2
  309bfc: 4798         	blx	r3
  309bfe: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x309e5c <ControlsPlacementLayer::init()+0x388>
  309c00: 447b         	add	r3, pc
  309c02: 4618         	mov	r0, r3
  309c04: f0ab f37c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ab6f8
  309c08: 4603         	mov	r3, r0
  309c0a: 2220         	movs	r2, #0x20
  309c0c: 9200         	str	r2, [sp]
  309c0e: 4a94         	ldr	r2, [pc, #0x250]        @ 0x309e60 <ControlsPlacementLayer::init()+0x38c>
  309c10: 447a         	add	r2, pc
  309c12: 4610         	mov	r0, r2
  309c14: 4619         	mov	r1, r3
  309c16: 2220         	movs	r2, #0x20
  309c18: 2320         	movs	r3, #0x20
  309c1a: f29b fbad    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29b75a
  309c1e: 4602         	mov	r2, r0
  309c20: 9b03         	ldr	r3, [sp, #0xc]
  309c22: f8c3 2168    	str.w	r2, [r3, #0x168]
  309c26: 9b03         	ldr	r3, [sp, #0xc]
  309c28: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c2c: 4618         	mov	r0, r3
  309c2e: f28e f95b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28e2b6
  309c32: 9b03         	ldr	r3, [sp, #0xc]
  309c34: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c38: eddd 7a06    	vldr	s15, [sp, #24]
  309c3c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  309c40: ee17 2a90    	vmov	r2, s15
  309c44: 4618         	mov	r0, r3
  309c46: 4611         	mov	r1, r2
  309c48: f29c f89c    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29c138
  309c4c: 9b03         	ldr	r3, [sp, #0xc]
  309c4e: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c52: 681b         	ldr	r3, [r3]
  309c54: 3340         	adds	r3, #0x40
  309c56: 681b         	ldr	r3, [r3]
  309c58: 9a03         	ldr	r2, [sp, #0xc]
  309c5a: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  309c5e: 4610         	mov	r0, r2
  309c60: f243 3133    	movw	r1, #0x3333
  309c64: f6c3 61b3    	movt	r1, #0x3eb3
  309c68: 4798         	blx	r3
  309c6a: 9b03         	ldr	r3, [sp, #0xc]
  309c6c: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c70: 681b         	ldr	r3, [r3]
  309c72: f503 73fc    	add.w	r3, r3, #0x1f8
  309c76: 681b         	ldr	r3, [r3]
  309c78: 9a03         	ldr	r2, [sp, #0xc]
  309c7a: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  309c7e: 4610         	mov	r0, r2
  309c80: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x309e64 <ControlsPlacementLayer::init()+0x390>
  309c82: 447a         	add	r2, pc
  309c84: 4611         	mov	r1, r2
  309c86: 4798         	blx	r3
  309c88: 9b03         	ldr	r3, [sp, #0xc]
  309c8a: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c8e: 681b         	ldr	r3, [r3]
  309c90: 337c         	adds	r3, #0x7c
  309c92: 681d         	ldr	r5, [r3]
  309c94: 9b03         	ldr	r3, [sp, #0xc]
  309c96: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309c9a: 461e         	mov	r6, r3
  309c9c: ab20         	add	r3, sp, #0x80
  309c9e: 4618         	mov	r0, r3
  309ca0: f04f 517c    	mov.w	r1, #0x3f000000
  309ca4: f04f 527c    	mov.w	r2, #0x3f000000
  309ca8: f289 f822    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x289044
  309cac: ab20         	add	r3, sp, #0x80
  309cae: 4630         	mov	r0, r6
  309cb0: 4619         	mov	r1, r3
  309cb2: 47a8         	blx	r5
  309cb4: 9b03         	ldr	r3, [sp, #0xc]
  309cb6: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309cba: 681b         	ldr	r3, [r3]
  309cbc: 334c         	adds	r3, #0x4c
  309cbe: 681d         	ldr	r5, [r3]
  309cc0: 9b03         	ldr	r3, [sp, #0xc]
  309cc2: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  309cc6: 461e         	mov	r6, r3
  309cc8: 4b62         	ldr	r3, [pc, #0x188]        @ 0x309e54 <ControlsPlacementLayer::init()+0x380>
  309cca: 58e3         	ldr	r3, [r4, r3]
  309ccc: ed93 7a00    	vldr	s14, [r3]
  309cd0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  309cd4: eec7 6a27    	vdiv.f32	s13, s14, s15
  309cd8: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x309e54 <ControlsPlacementLayer::init()+0x380>
  309cda: 58e3         	ldr	r3, [r4, r3]
  309cdc: ed93 7a01    	vldr	s14, [r3, #4]
  309ce0: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  309ce4: ee77 7a67    	vsub.f32	s15, s14, s15
  309ce8: ab20         	add	r3, sp, #0x80
  309cea: 4618         	mov	r0, r3
  309cec: ee16 1a90    	vmov	r1, s13
  309cf0: ee17 2a90    	vmov	r2, s15
  309cf4: f288 fffc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288ff8
  309cf8: ab20         	add	r3, sp, #0x80
  309cfa: 4630         	mov	r0, r6
  309cfc: 4619         	mov	r1, r3
  309cfe: 47a8         	blx	r5
  309d00: 9b03         	ldr	r3, [sp, #0xc]
  309d02: 681b         	ldr	r3, [r3]
  309d04: 33c8         	adds	r3, #0xc8
  309d06: 681b         	ldr	r3, [r3]
  309d08: 9903         	ldr	r1, [sp, #0xc]
  309d0a: 9a03         	ldr	r2, [sp, #0xc]
  309d0c: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  309d10: 4608         	mov	r0, r1
  309d12: 4611         	mov	r1, r2
  309d14: 4798         	blx	r3
  309d16: 4b54         	ldr	r3, [pc, #0x150]        @ 0x309e68 <ControlsPlacementLayer::init()+0x394>
  309d18: 447b         	add	r3, pc
  309d1a: 4618         	mov	r0, r3
  309d1c: f2ce faf2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce5e4
  309d20: 4602         	mov	r2, r0
  309d22: 9b03         	ldr	r3, [sp, #0xc]
  309d24: f8c3 2110    	str.w	r2, [r3, #0x110]
  309d28: 9b03         	ldr	r3, [sp, #0xc]
  309d2a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  309d2e: 4618         	mov	r0, r3
  309d30: f28e f8da    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28e1b4
  309d34: 9b03         	ldr	r3, [sp, #0xc]
  309d36: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  309d3a: 681b         	ldr	r3, [r3]
  309d3c: 337c         	adds	r3, #0x7c
  309d3e: 681d         	ldr	r5, [r3]
  309d40: 9b03         	ldr	r3, [sp, #0xc]
  309d42: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  309d46: ab20         	add	r3, sp, #0x80
  309d48: 4618         	mov	r0, r3
  309d4a: f04f 517c    	mov.w	r1, #0x3f000000
  309d4e: f04f 527c    	mov.w	r2, #0x3f000000
  309d52: f288 ffcd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288f9a
  309d56: ab20         	add	r3, sp, #0x80
  309d58: 4630         	mov	r0, r6
  309d5a: 4619         	mov	r1, r3
  309d5c: 47a8         	blx	r5
  309d5e: 9b03         	ldr	r3, [sp, #0xc]
  309d60: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  309d64: 681b         	ldr	r3, [r3]
  309d66: f503 73d2    	add.w	r3, r3, #0x1a4
  309d6a: 681b         	ldr	r3, [r3]
  309d6c: 9a03         	ldr	r2, [sp, #0xc]
  309d6e: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  309d72: 4610         	mov	r0, r2
  309d74: 2196         	movs	r1, #0x96
  309d76: 4798         	blx	r3
  309d78: 9b03         	ldr	r3, [sp, #0xc]
  309d7a: 681b         	ldr	r3, [r3]
  309d7c: 33c8         	adds	r3, #0xc8
  309d7e: 681b         	ldr	r3, [r3]
  309d80: 9903         	ldr	r1, [sp, #0xc]
  309d82: 9a03         	ldr	r2, [sp, #0xc]
  309d84: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  309d88: 4608         	mov	r0, r1
  309d8a: 4611         	mov	r1, r2
  309d8c: 4798         	blx	r3
  309d8e: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x309e6c <ControlsPlacementLayer::init()+0x398>
  309d90: 447b         	add	r3, pc
  309d92: 4618         	mov	r0, r3
  309d94: f2ce fab6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce56c
  309d98: 4602         	mov	r2, r0
  309d9a: 9b03         	ldr	r3, [sp, #0xc]
  309d9c: f8c3 2114    	str.w	r2, [r3, #0x114]
  309da0: 9b03         	ldr	r3, [sp, #0xc]
  309da2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  309da6: 4618         	mov	r0, r3
  309da8: f28e f89e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28e13c
  309dac: 9b03         	ldr	r3, [sp, #0xc]
  309dae: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  309db2: 681b         	ldr	r3, [r3]
  309db4: 337c         	adds	r3, #0x7c
  309db6: 681d         	ldr	r5, [r3]
  309db8: 9b03         	ldr	r3, [sp, #0xc]
  309dba: f8d3 6114    	ldr.w	r6, [r3, #0x114]
  309dbe: ab20         	add	r3, sp, #0x80
  309dc0: 4618         	mov	r0, r3
  309dc2: f04f 517c    	mov.w	r1, #0x3f000000
  309dc6: f04f 527c    	mov.w	r2, #0x3f000000
  309dca: f288 ff91    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288f22
  309dce: ab20         	add	r3, sp, #0x80
  309dd0: 4630         	mov	r0, r6
  309dd2: 4619         	mov	r1, r3
  309dd4: 47a8         	blx	r5
  309dd6: 9b03         	ldr	r3, [sp, #0xc]
  309dd8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  309ddc: 681b         	ldr	r3, [r3]
  309dde: f503 73d2    	add.w	r3, r3, #0x1a4
  309de2: 681b         	ldr	r3, [r3]
  309de4: 9a03         	ldr	r2, [sp, #0xc]
  309de6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  309dea: 4610         	mov	r0, r2
  309dec: 2196         	movs	r1, #0x96
  309dee: 4798         	blx	r3
  309df0: 9b03         	ldr	r3, [sp, #0xc]
  309df2: 681b         	ldr	r3, [r3]
  309df4: 33c8         	adds	r3, #0xc8
  309df6: 681b         	ldr	r3, [r3]
  309df8: 9903         	ldr	r1, [sp, #0xc]
  309dfa: 9a03         	ldr	r2, [sp, #0xc]
  309dfc: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  309e00: 4608         	mov	r0, r1
  309e02: 4611         	mov	r1, r2
  309e04: 4798         	blx	r3
  309e06: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x309e70 <ControlsPlacementLayer::init()+0x39c>
  309e08: 447b         	add	r3, pc
  309e0a: 4618         	mov	r0, r3
  309e0c: f2ce fa7a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce4f4
  309e10: 4602         	mov	r2, r0
  309e12: 9b03         	ldr	r3, [sp, #0xc]
  309e14: f8c3 2128    	str.w	r2, [r3, #0x128]
  309e18: 9b03         	ldr	r3, [sp, #0xc]
  309e1a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  309e1e: 4618         	mov	r0, r3
  309e20: f28e f862    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28e0c4
  309e24: 9b03         	ldr	r3, [sp, #0xc]
  309e26: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  309e2a: 681b         	ldr	r3, [r3]
  309e2c: 337c         	adds	r3, #0x7c
  309e2e: 681d         	ldr	r5, [r3]
  309e30: 9b03         	ldr	r3, [sp, #0xc]
  309e32: f8d3 6128    	ldr.w	r6, [r3, #0x128]
  309e36: ab20         	add	r3, sp, #0x80
  309e38: 4618         	mov	r0, r3
  309e3a: f04f 517c    	mov.w	r1, #0x3f000000
  309e3e: f04f 527c    	mov.w	r2, #0x3f000000
  309e42: f288 ff55    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288eaa
  309e46: ab20         	add	r3, sp, #0x80
  309e48: e014         	b	0x309e74 <ControlsPlacementLayer::init()+0x3a0> @ imm = #0x28
  309e4a: bf00         	nop
  309e4c: 0000         	movs	r0, r0
  309e4e: 43a0         	bics	r0, r4
  309e50: 0000         	movs	r0, r0
  309e52: 43f0         	mvns	r0, r6
  309e54: d724         	bvc	0x309ea0 <ControlsPlacementLayer::init()+0x3cc> @ imm = #0x48
  309e56: ffff c10a    	<unknown>
  309e5a: 004b         	lsls	r3, r1, #0x1
  309e5c: 64e0         	str	r0, [r4, #0x4c]
  309e5e: 0063         	lsls	r3, r4, #0x1
  309e60: c070         	stm	r0!, {r4, r5, r6}
  309e62: 004b         	lsls	r3, r1, #0x1
  309e64: c002         	stm	r0!, {r1}
  309e66: 004b         	lsls	r3, r1, #0x1
  309e68: bf98         	it	ls
  309e6a: 004b         	lslls	r3, r1, #0x1
  309e6c: bf2c         	ite	hs
  309e6e: 004b         	lslhs	r3, r1, #0x1
  309e70: bec0         	bkpt	#0xc0
  309e72: 004b         	lsls	r3, r1, #0x1
  309e74: 4630         	mov	r0, r6
  309e76: 4619         	mov	r1, r3
  309e78: 47a8         	blx	r5
  309e7a: 9b03         	ldr	r3, [sp, #0xc]
  309e7c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  309e80: 681b         	ldr	r3, [r3]
  309e82: f503 73d2    	add.w	r3, r3, #0x1a4
  309e86: 681b         	ldr	r3, [r3]
  309e88: 9a03         	ldr	r2, [sp, #0xc]
  309e8a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  309e8e: 4610         	mov	r0, r2
  309e90: 2196         	movs	r1, #0x96
  309e92: 4798         	blx	r3
  309e94: 9b03         	ldr	r3, [sp, #0xc]
  309e96: 681b         	ldr	r3, [r3]
  309e98: 33c8         	adds	r3, #0xc8
  309e9a: 681b         	ldr	r3, [r3]
  309e9c: 9903         	ldr	r1, [sp, #0xc]
  309e9e: 9a03         	ldr	r2, [sp, #0xc]
  309ea0: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  309ea4: 4608         	mov	r0, r1
  309ea6: 4611         	mov	r1, r2
  309ea8: 4798         	blx	r3
  309eaa: f8df 3968    	ldr.w	r3, [pc, #0x968]        @ 0x30a814 <ControlsPlacementLayer::init()+0xd40>
  309eae: 447b         	add	r3, pc
  309eb0: 4618         	mov	r0, r3
  309eb2: f2ce fa27    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce44e
  309eb6: 4602         	mov	r2, r0
  309eb8: 9b03         	ldr	r3, [sp, #0xc]
  309eba: f8c3 212c    	str.w	r2, [r3, #0x12c]
  309ebe: 9b03         	ldr	r3, [sp, #0xc]
  309ec0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  309ec4: 4618         	mov	r0, r3
  309ec6: f28e f80f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28e01e
  309eca: 9b03         	ldr	r3, [sp, #0xc]
  309ecc: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  309ed0: 681b         	ldr	r3, [r3]
  309ed2: 337c         	adds	r3, #0x7c
  309ed4: 681d         	ldr	r5, [r3]
  309ed6: 9b03         	ldr	r3, [sp, #0xc]
  309ed8: f8d3 612c    	ldr.w	r6, [r3, #0x12c]
  309edc: ab20         	add	r3, sp, #0x80
  309ede: 4618         	mov	r0, r3
  309ee0: f04f 517c    	mov.w	r1, #0x3f000000
  309ee4: f04f 527c    	mov.w	r2, #0x3f000000
  309ee8: f288 ff02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288e04
  309eec: ab20         	add	r3, sp, #0x80
  309eee: 4630         	mov	r0, r6
  309ef0: 4619         	mov	r1, r3
  309ef2: 47a8         	blx	r5
  309ef4: 9b03         	ldr	r3, [sp, #0xc]
  309ef6: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  309efa: 681b         	ldr	r3, [r3]
  309efc: f503 73d2    	add.w	r3, r3, #0x1a4
  309f00: 681b         	ldr	r3, [r3]
  309f02: 9a03         	ldr	r2, [sp, #0xc]
  309f04: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  309f08: 4610         	mov	r0, r2
  309f0a: 2196         	movs	r1, #0x96
  309f0c: 4798         	blx	r3
  309f0e: 9b03         	ldr	r3, [sp, #0xc]
  309f10: 681b         	ldr	r3, [r3]
  309f12: 33c8         	adds	r3, #0xc8
  309f14: 681b         	ldr	r3, [r3]
  309f16: 9903         	ldr	r1, [sp, #0xc]
  309f18: 9a03         	ldr	r2, [sp, #0xc]
  309f1a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  309f1e: 4608         	mov	r0, r1
  309f20: 4611         	mov	r1, r2
  309f22: 4798         	blx	r3
  309f24: f8df 38f0    	ldr.w	r3, [pc, #0x8f0]        @ 0x30a818 <ControlsPlacementLayer::init()+0xd44>
  309f28: 447b         	add	r3, pc
  309f2a: 4618         	mov	r0, r3
  309f2c: f2ce f9ea    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce3d4
  309f30: 4602         	mov	r2, r0
  309f32: 9b03         	ldr	r3, [sp, #0xc]
  309f34: f8c3 2130    	str.w	r2, [r3, #0x130]
  309f38: 9b03         	ldr	r3, [sp, #0xc]
  309f3a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  309f3e: 4618         	mov	r0, r3
  309f40: f28d ffd2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28dfa4
  309f44: 9b03         	ldr	r3, [sp, #0xc]
  309f46: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  309f4a: 681b         	ldr	r3, [r3]
  309f4c: 337c         	adds	r3, #0x7c
  309f4e: 681d         	ldr	r5, [r3]
  309f50: 9b03         	ldr	r3, [sp, #0xc]
  309f52: f8d3 6130    	ldr.w	r6, [r3, #0x130]
  309f56: ab20         	add	r3, sp, #0x80
  309f58: 4618         	mov	r0, r3
  309f5a: f04f 517c    	mov.w	r1, #0x3f000000
  309f5e: f04f 527c    	mov.w	r2, #0x3f000000
  309f62: f288 fec5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288d8a
  309f66: ab20         	add	r3, sp, #0x80
  309f68: 4630         	mov	r0, r6
  309f6a: 4619         	mov	r1, r3
  309f6c: 47a8         	blx	r5
  309f6e: 9b03         	ldr	r3, [sp, #0xc]
  309f70: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  309f74: 681b         	ldr	r3, [r3]
  309f76: f503 73d2    	add.w	r3, r3, #0x1a4
  309f7a: 681b         	ldr	r3, [r3]
  309f7c: 9a03         	ldr	r2, [sp, #0xc]
  309f7e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  309f82: 4610         	mov	r0, r2
  309f84: 2196         	movs	r1, #0x96
  309f86: 4798         	blx	r3
  309f88: 9b03         	ldr	r3, [sp, #0xc]
  309f8a: 681b         	ldr	r3, [r3]
  309f8c: 33c8         	adds	r3, #0xc8
  309f8e: 681b         	ldr	r3, [r3]
  309f90: 9903         	ldr	r1, [sp, #0xc]
  309f92: 9a03         	ldr	r2, [sp, #0xc]
  309f94: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  309f98: 4608         	mov	r0, r1
  309f9a: 4611         	mov	r1, r2
  309f9c: 4798         	blx	r3
  309f9e: f8df 387c    	ldr.w	r3, [pc, #0x87c]        @ 0x30a81c <ControlsPlacementLayer::init()+0xd48>
  309fa2: 447b         	add	r3, pc
  309fa4: 4618         	mov	r0, r3
  309fa6: f2ce f9ad    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce35a
  309faa: 4602         	mov	r2, r0
  309fac: 9b03         	ldr	r3, [sp, #0xc]
  309fae: f8c3 2134    	str.w	r2, [r3, #0x134]
  309fb2: 9b03         	ldr	r3, [sp, #0xc]
  309fb4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  309fb8: 4618         	mov	r0, r3
  309fba: f28d ff95    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28df2a
  309fbe: 9b03         	ldr	r3, [sp, #0xc]
  309fc0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  309fc4: 681b         	ldr	r3, [r3]
  309fc6: 337c         	adds	r3, #0x7c
  309fc8: 681d         	ldr	r5, [r3]
  309fca: 9b03         	ldr	r3, [sp, #0xc]
  309fcc: f8d3 6134    	ldr.w	r6, [r3, #0x134]
  309fd0: ab20         	add	r3, sp, #0x80
  309fd2: 4618         	mov	r0, r3
  309fd4: f04f 517c    	mov.w	r1, #0x3f000000
  309fd8: f04f 527c    	mov.w	r2, #0x3f000000
  309fdc: f288 fe88    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288d10
  309fe0: ab20         	add	r3, sp, #0x80
  309fe2: 4630         	mov	r0, r6
  309fe4: 4619         	mov	r1, r3
  309fe6: 47a8         	blx	r5
  309fe8: 9b03         	ldr	r3, [sp, #0xc]
  309fea: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  309fee: 681b         	ldr	r3, [r3]
  309ff0: f503 73d2    	add.w	r3, r3, #0x1a4
  309ff4: 681b         	ldr	r3, [r3]
  309ff6: 9a03         	ldr	r2, [sp, #0xc]
  309ff8: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  309ffc: 4610         	mov	r0, r2
  309ffe: 2196         	movs	r1, #0x96
  30a000: 4798         	blx	r3
  30a002: 9b03         	ldr	r3, [sp, #0xc]
  30a004: 681b         	ldr	r3, [r3]
  30a006: 33c8         	adds	r3, #0xc8
  30a008: 681b         	ldr	r3, [r3]
  30a00a: 9903         	ldr	r1, [sp, #0xc]
  30a00c: 9a03         	ldr	r2, [sp, #0xc]
  30a00e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  30a012: 4608         	mov	r0, r1
  30a014: 4611         	mov	r1, r2
  30a016: 4798         	blx	r3
  30a018: f8df 3804    	ldr.w	r3, [pc, #0x804]        @ 0x30a820 <ControlsPlacementLayer::init()+0xd4c>
  30a01c: 447b         	add	r3, pc
  30a01e: 4618         	mov	r0, r3
  30a020: f2ce f970    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce2e0
  30a024: 4603         	mov	r3, r0
  30a026: 9308         	str	r3, [sp, #0x20]
  30a028: f8df 37f8    	ldr.w	r3, [pc, #0x7f8]        @ 0x30a824 <ControlsPlacementLayer::init()+0xd50>
  30a02c: 447b         	add	r3, pc
  30a02e: 4618         	mov	r0, r3
  30a030: f2ce f968    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce2d0
  30a034: 4603         	mov	r3, r0
  30a036: 9309         	str	r3, [sp, #0x24]
  30a038: f8df 37ec    	ldr.w	r3, [pc, #0x7ec]        @ 0x30a828 <ControlsPlacementLayer::init()+0xd54>
  30a03c: 447b         	add	r3, pc
  30a03e: 4618         	mov	r0, r3
  30a040: f2ce f960    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce2c0
  30a044: 4603         	mov	r3, r0
  30a046: 930a         	str	r3, [sp, #0x28]
  30a048: f8df 37e0    	ldr.w	r3, [pc, #0x7e0]        @ 0x30a82c <ControlsPlacementLayer::init()+0xd58>
  30a04c: 447b         	add	r3, pc
  30a04e: 4618         	mov	r0, r3
  30a050: f2ce f958    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce2b0
  30a054: 4603         	mov	r3, r0
  30a056: 930b         	str	r3, [sp, #0x2c]
  30a058: f8df 37d4    	ldr.w	r3, [pc, #0x7d4]        @ 0x30a830 <ControlsPlacementLayer::init()+0xd5c>
  30a05c: 447b         	add	r3, pc
  30a05e: 4618         	mov	r0, r3
  30a060: f2ce f950    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce2a0
  30a064: 4603         	mov	r3, r0
  30a066: 930c         	str	r3, [sp, #0x30]
  30a068: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x30a834 <ControlsPlacementLayer::init()+0xd60>
  30a06c: 447b         	add	r3, pc
  30a06e: 4618         	mov	r0, r3
  30a070: f2ce f948    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce290
  30a074: 4603         	mov	r3, r0
  30a076: 930d         	str	r3, [sp, #0x34]
  30a078: f8df 37bc    	ldr.w	r3, [pc, #0x7bc]        @ 0x30a838 <ControlsPlacementLayer::init()+0xd64>
  30a07c: 447b         	add	r3, pc
  30a07e: 4618         	mov	r0, r3
  30a080: f2ce f940    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce280
  30a084: 4603         	mov	r3, r0
  30a086: 930e         	str	r3, [sp, #0x38]
  30a088: f8df 37b0    	ldr.w	r3, [pc, #0x7b0]        @ 0x30a83c <ControlsPlacementLayer::init()+0xd68>
  30a08c: 447b         	add	r3, pc
  30a08e: 4618         	mov	r0, r3
  30a090: f2ce f938    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ce270
  30a094: 4603         	mov	r3, r0
  30a096: 930f         	str	r3, [sp, #0x3c]
  30a098: 9a03         	ldr	r2, [sp, #0xc]
  30a09a: f8df 37a4    	ldr.w	r3, [pc, #0x7a4]        @ 0x30a840 <ControlsPlacementLayer::init()+0xd6c>
  30a09e: 58e3         	ldr	r3, [r4, r3]
  30a0a0: 931a         	str	r3, [sp, #0x68]
  30a0a2: 2300         	movs	r3, #0x0
  30a0a4: 931b         	str	r3, [sp, #0x6c]
  30a0a6: 9b1b         	ldr	r3, [sp, #0x6c]
  30a0a8: 9300         	str	r3, [sp]
  30a0aa: 9b1a         	ldr	r3, [sp, #0x68]
  30a0ac: 9808         	ldr	r0, [sp, #0x20]
  30a0ae: 9909         	ldr	r1, [sp, #0x24]
  30a0b0: f2ae f93c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ae278
  30a0b4: 4602         	mov	r2, r0
  30a0b6: 9b03         	ldr	r3, [sp, #0xc]
  30a0b8: f8c3 2160    	str.w	r2, [r3, #0x160]
  30a0bc: 9b03         	ldr	r3, [sp, #0xc]
  30a0be: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30a0c2: 4618         	mov	r0, r3
  30a0c4: f28d ff10    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28de20
  30a0c8: 9b03         	ldr	r3, [sp, #0xc]
  30a0ca: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30a0ce: 4618         	mov	r0, r3
  30a0d0: 2100         	movs	r1, #0x0
  30a0d2: f2ab f833    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2ab066
  30a0d6: 4602         	mov	r2, r0
  30a0d8: 9b03         	ldr	r3, [sp, #0xc]
  30a0da: f8c3 2154    	str.w	r2, [r3, #0x154]
  30a0de: 9b03         	ldr	r3, [sp, #0xc]
  30a0e0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  30a0e4: 4618         	mov	r0, r3
  30a0e6: f28d feff    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28ddfe
  30a0ea: 9b03         	ldr	r3, [sp, #0xc]
  30a0ec: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  30a0f0: 681b         	ldr	r3, [r3]
  30a0f2: 334c         	adds	r3, #0x4c
  30a0f4: 681d         	ldr	r5, [r3]
  30a0f6: 9b03         	ldr	r3, [sp, #0xc]
  30a0f8: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  30a0fc: 461e         	mov	r6, r3
  30a0fe: ab1e         	add	r3, sp, #0x78
  30a100: 4618         	mov	r0, r3
  30a102: f04f 0100    	mov.w	r1, #0x0
  30a106: f2c4 11c8    	movt	r1, #0x41c8
  30a10a: f04f 0200    	mov.w	r2, #0x0
  30a10e: f2c4 2234    	movt	r2, #0x4234
  30a112: f288 fded    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288bda
  30a116: a920         	add	r1, sp, #0x80
  30a118: aa14         	add	r2, sp, #0x50
  30a11a: ab1e         	add	r3, sp, #0x78
  30a11c: 4608         	mov	r0, r1
  30a11e: 4611         	mov	r1, r2
  30a120: 461a         	mov	r2, r3
  30a122: f7fe fd6f    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x1522
  30a126: ab20         	add	r3, sp, #0x80
  30a128: 4630         	mov	r0, r6
  30a12a: 4619         	mov	r1, r3
  30a12c: 47a8         	blx	r5
  30a12e: 9b03         	ldr	r3, [sp, #0xc]
  30a130: 681b         	ldr	r3, [r3]
  30a132: 33c8         	adds	r3, #0xc8
  30a134: 681b         	ldr	r3, [r3]
  30a136: 9903         	ldr	r1, [sp, #0xc]
  30a138: 9a03         	ldr	r2, [sp, #0xc]
  30a13a: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  30a13e: 4608         	mov	r0, r1
  30a140: 4611         	mov	r1, r2
  30a142: 4798         	blx	r3
  30a144: 9a03         	ldr	r2, [sp, #0xc]
  30a146: f8df 36fc    	ldr.w	r3, [pc, #0x6fc]        @ 0x30a844 <ControlsPlacementLayer::init()+0xd70>
  30a14a: 58e3         	ldr	r3, [r4, r3]
  30a14c: 931c         	str	r3, [sp, #0x70]
  30a14e: 2300         	movs	r3, #0x0
  30a150: 931d         	str	r3, [sp, #0x74]
  30a152: 9b1d         	ldr	r3, [sp, #0x74]
  30a154: 9300         	str	r3, [sp]
  30a156: 9b1c         	ldr	r3, [sp, #0x70]
  30a158: 980a         	ldr	r0, [sp, #0x28]
  30a15a: 990b         	ldr	r1, [sp, #0x2c]
  30a15c: f2ae f8e6    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ae1cc
  30a160: 4602         	mov	r2, r0
  30a162: 9b03         	ldr	r3, [sp, #0xc]
  30a164: f8c3 2164    	str.w	r2, [r3, #0x164]
  30a168: 9b03         	ldr	r3, [sp, #0xc]
  30a16a: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30a16e: 4618         	mov	r0, r3
  30a170: f28d feba    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28dd74
  30a174: 9b03         	ldr	r3, [sp, #0xc]
  30a176: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30a17a: 4618         	mov	r0, r3
  30a17c: 2100         	movs	r1, #0x0
  30a17e: f2aa ffdd    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2aafba
  30a182: 4602         	mov	r2, r0
  30a184: 9b03         	ldr	r3, [sp, #0xc]
  30a186: f8c3 215c    	str.w	r2, [r3, #0x15c]
  30a18a: 9b03         	ldr	r3, [sp, #0xc]
  30a18c: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  30a190: 4618         	mov	r0, r3
  30a192: f28d fea9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28dd52
  30a196: 9b03         	ldr	r3, [sp, #0xc]
  30a198: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  30a19c: 681b         	ldr	r3, [r3]
  30a19e: 334c         	adds	r3, #0x4c
  30a1a0: 681d         	ldr	r5, [r3]
  30a1a2: 9b03         	ldr	r3, [sp, #0xc]
  30a1a4: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  30a1a8: 461e         	mov	r6, r3
  30a1aa: ab1e         	add	r3, sp, #0x78
  30a1ac: 4618         	mov	r0, r3
  30a1ae: f04f 0100    	mov.w	r1, #0x0
  30a1b2: f2cc 11c8    	movt	r1, #0xc1c8
  30a1b6: f04f 0200    	mov.w	r2, #0x0
  30a1ba: f2c4 2234    	movt	r2, #0x4234
  30a1be: f288 fd97    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288b2e
  30a1c2: a920         	add	r1, sp, #0x80
  30a1c4: aa14         	add	r2, sp, #0x50
  30a1c6: ab1e         	add	r3, sp, #0x78
  30a1c8: 4608         	mov	r0, r1
  30a1ca: 4611         	mov	r1, r2
  30a1cc: 461a         	mov	r2, r3
  30a1ce: f7fe fd19    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x15ce
  30a1d2: ab20         	add	r3, sp, #0x80
  30a1d4: 4630         	mov	r0, r6
  30a1d6: 4619         	mov	r1, r3
  30a1d8: 47a8         	blx	r5
  30a1da: 9b03         	ldr	r3, [sp, #0xc]
  30a1dc: 681b         	ldr	r3, [r3]
  30a1de: 33c8         	adds	r3, #0xc8
  30a1e0: 681b         	ldr	r3, [r3]
  30a1e2: 9903         	ldr	r1, [sp, #0xc]
  30a1e4: 9a03         	ldr	r2, [sp, #0xc]
  30a1e6: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  30a1ea: 4608         	mov	r0, r1
  30a1ec: 4611         	mov	r1, r2
  30a1ee: 4798         	blx	r3
  30a1f0: f8df 3654    	ldr.w	r3, [pc, #0x654]        @ 0x30a848 <ControlsPlacementLayer::init()+0xd74>
  30a1f4: 447b         	add	r3, pc
  30a1f6: 4618         	mov	r0, r3
  30a1f8: f0ab f082    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4ab104
  30a1fc: 4603         	mov	r3, r0
  30a1fe: 2220         	movs	r2, #0x20
  30a200: 9200         	str	r2, [sp]
  30a202: f8df 2648    	ldr.w	r2, [pc, #0x648]        @ 0x30a84c <ControlsPlacementLayer::init()+0xd78>
  30a206: 447a         	add	r2, pc
  30a208: 4610         	mov	r0, r2
  30a20a: 4619         	mov	r1, r3
  30a20c: 2220         	movs	r2, #0x20
  30a20e: 2320         	movs	r3, #0x20
  30a210: f29b f8b2    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29b164
  30a214: 4602         	mov	r2, r0
  30a216: 9b03         	ldr	r3, [sp, #0xc]
  30a218: f8c3 2150    	str.w	r2, [r3, #0x150]
  30a21c: 9b03         	ldr	r3, [sp, #0xc]
  30a21e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a222: 4618         	mov	r0, r3
  30a224: f28d fe60    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28dcc0
  30a228: 9b03         	ldr	r3, [sp, #0xc]
  30a22a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a22e: eddd 7a06    	vldr	s15, [sp, #24]
  30a232: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30a236: ee17 2a90    	vmov	r2, s15
  30a23a: 4618         	mov	r0, r3
  30a23c: 4611         	mov	r1, r2
  30a23e: f29b fda1    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29bb42
  30a242: 9b03         	ldr	r3, [sp, #0xc]
  30a244: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a248: 681b         	ldr	r3, [r3]
  30a24a: 3340         	adds	r3, #0x40
  30a24c: 681b         	ldr	r3, [r3]
  30a24e: 9a03         	ldr	r2, [sp, #0xc]
  30a250: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30a254: 4610         	mov	r0, r2
  30a256: f246 6166    	movw	r1, #0x6666
  30a25a: f6c3 7126    	movt	r1, #0x3f26
  30a25e: 4798         	blx	r3
  30a260: 9b03         	ldr	r3, [sp, #0xc]
  30a262: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a266: 681b         	ldr	r3, [r3]
  30a268: f503 73fc    	add.w	r3, r3, #0x1f8
  30a26c: 681b         	ldr	r3, [r3]
  30a26e: 9a03         	ldr	r2, [sp, #0xc]
  30a270: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30a274: 4610         	mov	r0, r2
  30a276: f8df 25d8    	ldr.w	r2, [pc, #0x5d8]        @ 0x30a850 <ControlsPlacementLayer::init()+0xd7c>
  30a27a: 447a         	add	r2, pc
  30a27c: 4611         	mov	r1, r2
  30a27e: 4798         	blx	r3
  30a280: 9b03         	ldr	r3, [sp, #0xc]
  30a282: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a286: 681b         	ldr	r3, [r3]
  30a288: 337c         	adds	r3, #0x7c
  30a28a: 681d         	ldr	r5, [r3]
  30a28c: 9b03         	ldr	r3, [sp, #0xc]
  30a28e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a292: 461e         	mov	r6, r3
  30a294: ab20         	add	r3, sp, #0x80
  30a296: 4618         	mov	r0, r3
  30a298: f04f 517c    	mov.w	r1, #0x3f000000
  30a29c: f04f 527c    	mov.w	r2, #0x3f000000
  30a2a0: f288 fd26    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288a4c
  30a2a4: ab20         	add	r3, sp, #0x80
  30a2a6: 4630         	mov	r0, r6
  30a2a8: 4619         	mov	r1, r3
  30a2aa: 47a8         	blx	r5
  30a2ac: 9b03         	ldr	r3, [sp, #0xc]
  30a2ae: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a2b2: 681b         	ldr	r3, [r3]
  30a2b4: 334c         	adds	r3, #0x4c
  30a2b6: 681d         	ldr	r5, [r3]
  30a2b8: 9b03         	ldr	r3, [sp, #0xc]
  30a2ba: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a2be: 461e         	mov	r6, r3
  30a2c0: ab1e         	add	r3, sp, #0x78
  30a2c2: 4618         	mov	r0, r3
  30a2c4: f04f 0100    	mov.w	r1, #0x0
  30a2c8: f2cc 01a0    	movt	r1, #0xc0a0
  30a2cc: f04f 0200    	mov.w	r2, #0x0
  30a2d0: f288 fd0e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288a1c
  30a2d4: 9b03         	ldr	r3, [sp, #0xc]
  30a2d6: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  30a2da: 681b         	ldr	r3, [r3]
  30a2dc: 3350         	adds	r3, #0x50
  30a2de: 681b         	ldr	r3, [r3]
  30a2e0: 9a03         	ldr	r2, [sp, #0xc]
  30a2e2: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  30a2e6: 4610         	mov	r0, r2
  30a2e8: 4798         	blx	r3
  30a2ea: 4603         	mov	r3, r0
  30a2ec: a920         	add	r1, sp, #0x80
  30a2ee: aa1e         	add	r2, sp, #0x78
  30a2f0: 4608         	mov	r0, r1
  30a2f2: 4611         	mov	r1, r2
  30a2f4: 461a         	mov	r2, r3
  30a2f6: f7fe fc85    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x16f6
  30a2fa: ab20         	add	r3, sp, #0x80
  30a2fc: 4630         	mov	r0, r6
  30a2fe: 4619         	mov	r1, r3
  30a300: 47a8         	blx	r5
  30a302: 9b03         	ldr	r3, [sp, #0xc]
  30a304: 681b         	ldr	r3, [r3]
  30a306: 33c8         	adds	r3, #0xc8
  30a308: 681b         	ldr	r3, [r3]
  30a30a: 9903         	ldr	r1, [sp, #0xc]
  30a30c: 9a03         	ldr	r2, [sp, #0xc]
  30a30e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30a312: 4608         	mov	r0, r1
  30a314: 4611         	mov	r1, r2
  30a316: 4798         	blx	r3
  30a318: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x30a854 <ControlsPlacementLayer::init()+0xd80>
  30a31c: 447b         	add	r3, pc
  30a31e: 4618         	mov	r0, r3
  30a320: f0aa f7ee    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aafdc
  30a324: 4603         	mov	r3, r0
  30a326: 2220         	movs	r2, #0x20
  30a328: 9200         	str	r2, [sp]
  30a32a: f8df 252c    	ldr.w	r2, [pc, #0x52c]        @ 0x30a858 <ControlsPlacementLayer::init()+0xd84>
  30a32e: 447a         	add	r2, pc
  30a330: 4610         	mov	r0, r2
  30a332: 4619         	mov	r1, r3
  30a334: 2220         	movs	r2, #0x20
  30a336: 2320         	movs	r3, #0x20
  30a338: f29b f81e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29b03c
  30a33c: 4602         	mov	r2, r0
  30a33e: 9b03         	ldr	r3, [sp, #0xc]
  30a340: f8c3 2158    	str.w	r2, [r3, #0x158]
  30a344: 9b03         	ldr	r3, [sp, #0xc]
  30a346: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a34a: 4618         	mov	r0, r3
  30a34c: f28d fdcc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28db98
  30a350: 9b03         	ldr	r3, [sp, #0xc]
  30a352: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a356: eddd 7a06    	vldr	s15, [sp, #24]
  30a35a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30a35e: ee17 2a90    	vmov	r2, s15
  30a362: 4618         	mov	r0, r3
  30a364: 4611         	mov	r1, r2
  30a366: f29b fd0d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29ba1a
  30a36a: 9b03         	ldr	r3, [sp, #0xc]
  30a36c: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a370: 681b         	ldr	r3, [r3]
  30a372: 3340         	adds	r3, #0x40
  30a374: 681b         	ldr	r3, [r3]
  30a376: 9a03         	ldr	r2, [sp, #0xc]
  30a378: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30a37c: 4610         	mov	r0, r2
  30a37e: f246 6166    	movw	r1, #0x6666
  30a382: f6c3 7126    	movt	r1, #0x3f26
  30a386: 4798         	blx	r3
  30a388: 9b03         	ldr	r3, [sp, #0xc]
  30a38a: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a38e: 681b         	ldr	r3, [r3]
  30a390: f503 73fc    	add.w	r3, r3, #0x1f8
  30a394: 681b         	ldr	r3, [r3]
  30a396: 9a03         	ldr	r2, [sp, #0xc]
  30a398: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30a39c: 4610         	mov	r0, r2
  30a39e: f8df 24bc    	ldr.w	r2, [pc, #0x4bc]        @ 0x30a85c <ControlsPlacementLayer::init()+0xd88>
  30a3a2: 447a         	add	r2, pc
  30a3a4: 4611         	mov	r1, r2
  30a3a6: 4798         	blx	r3
  30a3a8: 9b03         	ldr	r3, [sp, #0xc]
  30a3aa: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a3ae: 681b         	ldr	r3, [r3]
  30a3b0: 337c         	adds	r3, #0x7c
  30a3b2: 681d         	ldr	r5, [r3]
  30a3b4: 9b03         	ldr	r3, [sp, #0xc]
  30a3b6: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a3ba: 461e         	mov	r6, r3
  30a3bc: ab20         	add	r3, sp, #0x80
  30a3be: 4618         	mov	r0, r3
  30a3c0: f04f 517c    	mov.w	r1, #0x3f000000
  30a3c4: f04f 527c    	mov.w	r2, #0x3f000000
  30a3c8: f288 fc92    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288924
  30a3cc: ab20         	add	r3, sp, #0x80
  30a3ce: 4630         	mov	r0, r6
  30a3d0: 4619         	mov	r1, r3
  30a3d2: 47a8         	blx	r5
  30a3d4: 9b03         	ldr	r3, [sp, #0xc]
  30a3d6: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a3da: 681b         	ldr	r3, [r3]
  30a3dc: 334c         	adds	r3, #0x4c
  30a3de: 681d         	ldr	r5, [r3]
  30a3e0: 9b03         	ldr	r3, [sp, #0xc]
  30a3e2: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a3e6: 461e         	mov	r6, r3
  30a3e8: ab1e         	add	r3, sp, #0x78
  30a3ea: 4618         	mov	r0, r3
  30a3ec: f04f 0100    	mov.w	r1, #0x0
  30a3f0: f2c4 01a0    	movt	r1, #0x40a0
  30a3f4: f04f 0200    	mov.w	r2, #0x0
  30a3f8: f288 fc7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2888f4
  30a3fc: 9b03         	ldr	r3, [sp, #0xc]
  30a3fe: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  30a402: 681b         	ldr	r3, [r3]
  30a404: 3350         	adds	r3, #0x50
  30a406: 681b         	ldr	r3, [r3]
  30a408: 9a03         	ldr	r2, [sp, #0xc]
  30a40a: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  30a40e: 4610         	mov	r0, r2
  30a410: 4798         	blx	r3
  30a412: 4603         	mov	r3, r0
  30a414: a920         	add	r1, sp, #0x80
  30a416: aa1e         	add	r2, sp, #0x78
  30a418: 4608         	mov	r0, r1
  30a41a: 4611         	mov	r1, r2
  30a41c: 461a         	mov	r2, r3
  30a41e: f7fe fbf1    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x181e
  30a422: ab20         	add	r3, sp, #0x80
  30a424: 4630         	mov	r0, r6
  30a426: 4619         	mov	r1, r3
  30a428: 47a8         	blx	r5
  30a42a: 9b03         	ldr	r3, [sp, #0xc]
  30a42c: 681b         	ldr	r3, [r3]
  30a42e: 33c8         	adds	r3, #0xc8
  30a430: 681b         	ldr	r3, [r3]
  30a432: 9903         	ldr	r1, [sp, #0xc]
  30a434: 9a03         	ldr	r2, [sp, #0xc]
  30a436: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30a43a: 4608         	mov	r0, r1
  30a43c: 4611         	mov	r1, r2
  30a43e: 4798         	blx	r3
  30a440: 9b03         	ldr	r3, [sp, #0xc]
  30a442: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30a446: 681b         	ldr	r3, [r3]
  30a448: f503 73d2    	add.w	r3, r3, #0x1a4
  30a44c: 681b         	ldr	r3, [r3]
  30a44e: 9a03         	ldr	r2, [sp, #0xc]
  30a450: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  30a454: 4610         	mov	r0, r2
  30a456: 2164         	movs	r1, #0x64
  30a458: 4798         	blx	r3
  30a45a: 9b03         	ldr	r3, [sp, #0xc]
  30a45c: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30a460: 681b         	ldr	r3, [r3]
  30a462: f503 73d2    	add.w	r3, r3, #0x1a4
  30a466: 681b         	ldr	r3, [r3]
  30a468: 9a03         	ldr	r2, [sp, #0xc]
  30a46a: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  30a46e: 4610         	mov	r0, r2
  30a470: 2164         	movs	r1, #0x64
  30a472: 4798         	blx	r3
  30a474: 9b03         	ldr	r3, [sp, #0xc]
  30a476: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30a47a: 681b         	ldr	r3, [r3]
  30a47c: f503 73d2    	add.w	r3, r3, #0x1a4
  30a480: 681b         	ldr	r3, [r3]
  30a482: 9a03         	ldr	r2, [sp, #0xc]
  30a484: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30a488: 4610         	mov	r0, r2
  30a48a: 2164         	movs	r1, #0x64
  30a48c: 4798         	blx	r3
  30a48e: 9b03         	ldr	r3, [sp, #0xc]
  30a490: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30a494: 681b         	ldr	r3, [r3]
  30a496: f503 73d2    	add.w	r3, r3, #0x1a4
  30a49a: 681b         	ldr	r3, [r3]
  30a49c: 9a03         	ldr	r2, [sp, #0xc]
  30a49e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30a4a2: 4610         	mov	r0, r2
  30a4a4: 2164         	movs	r1, #0x64
  30a4a6: 4798         	blx	r3
  30a4a8: 9a03         	ldr	r2, [sp, #0xc]
  30a4aa: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x30a860 <ControlsPlacementLayer::init()+0xd8c>
  30a4ac: 58e3         	ldr	r3, [r4, r3]
  30a4ae: 931e         	str	r3, [sp, #0x78]
  30a4b0: 2300         	movs	r3, #0x0
  30a4b2: 931f         	str	r3, [sp, #0x7c]
  30a4b4: 9b1f         	ldr	r3, [sp, #0x7c]
  30a4b6: 9300         	str	r3, [sp]
  30a4b8: 9b1e         	ldr	r3, [sp, #0x78]
  30a4ba: 980c         	ldr	r0, [sp, #0x30]
  30a4bc: 990d         	ldr	r1, [sp, #0x34]
  30a4be: f2ad ff35    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ade6a
  30a4c2: 4603         	mov	r3, r0
  30a4c4: 9310         	str	r3, [sp, #0x40]
  30a4c6: 9810         	ldr	r0, [sp, #0x40]
  30a4c8: 2100         	movs	r1, #0x0
  30a4ca: f2aa fe37    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2aac6e
  30a4ce: 4602         	mov	r2, r0
  30a4d0: 9b03         	ldr	r3, [sp, #0xc]
  30a4d2: f8c3 214c    	str.w	r2, [r3, #0x14c]
  30a4d6: 9b03         	ldr	r3, [sp, #0xc]
  30a4d8: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30a4dc: 4618         	mov	r0, r3
  30a4de: f28d fd03    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28da06
  30a4e2: 9b03         	ldr	r3, [sp, #0xc]
  30a4e4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30a4e8: 681b         	ldr	r3, [r3]
  30a4ea: 334c         	adds	r3, #0x4c
  30a4ec: 681d         	ldr	r5, [r3]
  30a4ee: 9b03         	ldr	r3, [sp, #0xc]
  30a4f0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30a4f4: 461e         	mov	r6, r3
  30a4f6: ab18         	add	r3, sp, #0x60
  30a4f8: 4618         	mov	r0, r3
  30a4fa: f04f 0100    	mov.w	r1, #0x0
  30a4fe: f04f 0200    	mov.w	r2, #0x0
  30a502: f288 fbf5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2887ea
  30a506: a920         	add	r1, sp, #0x80
  30a508: aa14         	add	r2, sp, #0x50
  30a50a: ab18         	add	r3, sp, #0x60
  30a50c: 4608         	mov	r0, r1
  30a50e: 4611         	mov	r1, r2
  30a510: 461a         	mov	r2, r3
  30a512: f7fe fb77    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x1912
  30a516: ab20         	add	r3, sp, #0x80
  30a518: 4630         	mov	r0, r6
  30a51a: 4619         	mov	r1, r3
  30a51c: 47a8         	blx	r5
  30a51e: 9b03         	ldr	r3, [sp, #0xc]
  30a520: 681b         	ldr	r3, [r3]
  30a522: 33c8         	adds	r3, #0xc8
  30a524: 681b         	ldr	r3, [r3]
  30a526: 9903         	ldr	r1, [sp, #0xc]
  30a528: 9a03         	ldr	r2, [sp, #0xc]
  30a52a: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  30a52e: 4608         	mov	r0, r1
  30a530: 4611         	mov	r1, r2
  30a532: 4798         	blx	r3
  30a534: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x30a864 <ControlsPlacementLayer::init()+0xd90>
  30a536: 447b         	add	r3, pc
  30a538: 4618         	mov	r0, r3
  30a53a: f0aa f6e1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aadc2
  30a53e: 4603         	mov	r3, r0
  30a540: 2220         	movs	r2, #0x20
  30a542: 9200         	str	r2, [sp]
  30a544: 4ac8         	ldr	r2, [pc, #0x320]        @ 0x30a868 <ControlsPlacementLayer::init()+0xd94>
  30a546: 447a         	add	r2, pc
  30a548: 4610         	mov	r0, r2
  30a54a: 4619         	mov	r1, r3
  30a54c: 2220         	movs	r2, #0x20
  30a54e: 2320         	movs	r3, #0x20
  30a550: f29a ff12    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29ae24
  30a554: 4602         	mov	r2, r0
  30a556: 9b03         	ldr	r3, [sp, #0xc]
  30a558: f8c3 2148    	str.w	r2, [r3, #0x148]
  30a55c: 9b03         	ldr	r3, [sp, #0xc]
  30a55e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a562: 4618         	mov	r0, r3
  30a564: f28d fcc0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28d980
  30a568: 9b03         	ldr	r3, [sp, #0xc]
  30a56a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a56e: eddd 7a06    	vldr	s15, [sp, #24]
  30a572: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30a576: ee17 2a90    	vmov	r2, s15
  30a57a: 4618         	mov	r0, r3
  30a57c: 4611         	mov	r1, r2
  30a57e: f29b fc01    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29b802
  30a582: 9b03         	ldr	r3, [sp, #0xc]
  30a584: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a588: 681b         	ldr	r3, [r3]
  30a58a: 3340         	adds	r3, #0x40
  30a58c: 681b         	ldr	r3, [r3]
  30a58e: 9a03         	ldr	r2, [sp, #0xc]
  30a590: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  30a594: 4610         	mov	r0, r2
  30a596: 9907         	ldr	r1, [sp, #0x1c]
  30a598: 4798         	blx	r3
  30a59a: 9b03         	ldr	r3, [sp, #0xc]
  30a59c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a5a0: 681b         	ldr	r3, [r3]
  30a5a2: f503 73fc    	add.w	r3, r3, #0x1f8
  30a5a6: 681b         	ldr	r3, [r3]
  30a5a8: 9a03         	ldr	r2, [sp, #0xc]
  30a5aa: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  30a5ae: 4610         	mov	r0, r2
  30a5b0: 4aae         	ldr	r2, [pc, #0x2b8]        @ 0x30a86c <ControlsPlacementLayer::init()+0xd98>
  30a5b2: 447a         	add	r2, pc
  30a5b4: 4611         	mov	r1, r2
  30a5b6: 4798         	blx	r3
  30a5b8: 9b03         	ldr	r3, [sp, #0xc]
  30a5ba: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a5be: 681b         	ldr	r3, [r3]
  30a5c0: 337c         	adds	r3, #0x7c
  30a5c2: 681d         	ldr	r5, [r3]
  30a5c4: 9b03         	ldr	r3, [sp, #0xc]
  30a5c6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a5ca: 461e         	mov	r6, r3
  30a5cc: ab20         	add	r3, sp, #0x80
  30a5ce: 4618         	mov	r0, r3
  30a5d0: f04f 517c    	mov.w	r1, #0x3f000000
  30a5d4: f04f 527c    	mov.w	r2, #0x3f000000
  30a5d8: f288 fb8a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288714
  30a5dc: ab20         	add	r3, sp, #0x80
  30a5de: 4630         	mov	r0, r6
  30a5e0: 4619         	mov	r1, r3
  30a5e2: 47a8         	blx	r5
  30a5e4: 9b03         	ldr	r3, [sp, #0xc]
  30a5e6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a5ea: 681b         	ldr	r3, [r3]
  30a5ec: 334c         	adds	r3, #0x4c
  30a5ee: 681d         	ldr	r5, [r3]
  30a5f0: 9b03         	ldr	r3, [sp, #0xc]
  30a5f2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30a5f6: 461e         	mov	r6, r3
  30a5f8: 9b03         	ldr	r3, [sp, #0xc]
  30a5fa: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30a5fe: 681b         	ldr	r3, [r3]
  30a600: 3350         	adds	r3, #0x50
  30a602: 681b         	ldr	r3, [r3]
  30a604: 9a03         	ldr	r2, [sp, #0xc]
  30a606: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  30a60a: 4610         	mov	r0, r2
  30a60c: 4798         	blx	r3
  30a60e: 4603         	mov	r3, r0
  30a610: 4630         	mov	r0, r6
  30a612: 4619         	mov	r1, r3
  30a614: 47a8         	blx	r5
  30a616: 9b03         	ldr	r3, [sp, #0xc]
  30a618: 681b         	ldr	r3, [r3]
  30a61a: 33c8         	adds	r3, #0xc8
  30a61c: 681b         	ldr	r3, [r3]
  30a61e: 9903         	ldr	r1, [sp, #0xc]
  30a620: 9a03         	ldr	r2, [sp, #0xc]
  30a622: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  30a626: 4608         	mov	r0, r1
  30a628: 4611         	mov	r1, r2
  30a62a: 4798         	blx	r3
  30a62c: 9a03         	ldr	r2, [sp, #0xc]
  30a62e: 4b90         	ldr	r3, [pc, #0x240]        @ 0x30a870 <ControlsPlacementLayer::init()+0xd9c>
  30a630: 58e3         	ldr	r3, [r4, r3]
  30a632: 9320         	str	r3, [sp, #0x80]
  30a634: 2300         	movs	r3, #0x0
  30a636: 9321         	str	r3, [sp, #0x84]
  30a638: 9b21         	ldr	r3, [sp, #0x84]
  30a63a: 9300         	str	r3, [sp]
  30a63c: 9b20         	ldr	r3, [sp, #0x80]
  30a63e: 980e         	ldr	r0, [sp, #0x38]
  30a640: 990f         	ldr	r1, [sp, #0x3c]
  30a642: f2ad fe73    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2adce6
  30a646: 4603         	mov	r3, r0
  30a648: 9311         	str	r3, [sp, #0x44]
  30a64a: 9811         	ldr	r0, [sp, #0x44]
  30a64c: 2100         	movs	r1, #0x0
  30a64e: f2aa fd75    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2aaaea
  30a652: 4602         	mov	r2, r0
  30a654: 9b03         	ldr	r3, [sp, #0xc]
  30a656: f8c3 2144    	str.w	r2, [r3, #0x144]
  30a65a: 9b03         	ldr	r3, [sp, #0xc]
  30a65c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30a660: 4618         	mov	r0, r3
  30a662: f28d fc41    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28d882
  30a666: 9b03         	ldr	r3, [sp, #0xc]
  30a668: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30a66c: 681b         	ldr	r3, [r3]
  30a66e: 334c         	adds	r3, #0x4c
  30a670: 681d         	ldr	r5, [r3]
  30a672: 9b03         	ldr	r3, [sp, #0xc]
  30a674: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30a678: 461e         	mov	r6, r3
  30a67a: ab16         	add	r3, sp, #0x58
  30a67c: 4618         	mov	r0, r3
  30a67e: f04f 0100    	mov.w	r1, #0x0
  30a682: f04f 0200    	mov.w	r2, #0x0
  30a686: f2cc 2234    	movt	r2, #0xc234
  30a68a: f288 fb31    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x288662
  30a68e: a918         	add	r1, sp, #0x60
  30a690: aa14         	add	r2, sp, #0x50
  30a692: ab16         	add	r3, sp, #0x58
  30a694: 4608         	mov	r0, r1
  30a696: 4611         	mov	r1, r2
  30a698: 461a         	mov	r2, r3
  30a69a: f7fe fab3    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x1a9a
  30a69e: ab18         	add	r3, sp, #0x60
  30a6a0: 4630         	mov	r0, r6
  30a6a2: 4619         	mov	r1, r3
  30a6a4: 47a8         	blx	r5
  30a6a6: 9b03         	ldr	r3, [sp, #0xc]
  30a6a8: 681b         	ldr	r3, [r3]
  30a6aa: 33c8         	adds	r3, #0xc8
  30a6ac: 681b         	ldr	r3, [r3]
  30a6ae: 9903         	ldr	r1, [sp, #0xc]
  30a6b0: 9a03         	ldr	r2, [sp, #0xc]
  30a6b2: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  30a6b6: 4608         	mov	r0, r1
  30a6b8: 4611         	mov	r1, r2
  30a6ba: 4798         	blx	r3
  30a6bc: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x30a874 <ControlsPlacementLayer::init()+0xda0>
  30a6be: 447b         	add	r3, pc
  30a6c0: 4618         	mov	r0, r3
  30a6c2: f0aa f61d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4aac3a
  30a6c6: 4603         	mov	r3, r0
  30a6c8: 2220         	movs	r2, #0x20
  30a6ca: 9200         	str	r2, [sp]
  30a6cc: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x30a878 <ControlsPlacementLayer::init()+0xda4>
  30a6ce: 447a         	add	r2, pc
  30a6d0: 4610         	mov	r0, r2
  30a6d2: 4619         	mov	r1, r3
  30a6d4: 2220         	movs	r2, #0x20
  30a6d6: 2320         	movs	r3, #0x20
  30a6d8: f29a fe4e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x29ac9c
  30a6dc: 4602         	mov	r2, r0
  30a6de: 9b03         	ldr	r3, [sp, #0xc]
  30a6e0: f8c3 2140    	str.w	r2, [r3, #0x140]
  30a6e4: 9b03         	ldr	r3, [sp, #0xc]
  30a6e6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a6ea: 4618         	mov	r0, r3
  30a6ec: f28d fbfc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x28d7f8
  30a6f0: 9b03         	ldr	r3, [sp, #0xc]
  30a6f2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a6f6: eddd 7a06    	vldr	s15, [sp, #24]
  30a6fa: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30a6fe: ee17 2a90    	vmov	r2, s15
  30a702: 4618         	mov	r0, r3
  30a704: 4611         	mov	r1, r2
  30a706: f29b fb3d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x29b67a
  30a70a: 9b03         	ldr	r3, [sp, #0xc]
  30a70c: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a710: 681b         	ldr	r3, [r3]
  30a712: 3340         	adds	r3, #0x40
  30a714: 681b         	ldr	r3, [r3]
  30a716: 9a03         	ldr	r2, [sp, #0xc]
  30a718: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  30a71c: 4610         	mov	r0, r2
  30a71e: 9907         	ldr	r1, [sp, #0x1c]
  30a720: 4798         	blx	r3
  30a722: 9b03         	ldr	r3, [sp, #0xc]
  30a724: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a728: 681b         	ldr	r3, [r3]
  30a72a: f503 73fc    	add.w	r3, r3, #0x1f8
  30a72e: 681b         	ldr	r3, [r3]
  30a730: 9a03         	ldr	r2, [sp, #0xc]
  30a732: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  30a736: 4610         	mov	r0, r2
  30a738: 4a50         	ldr	r2, [pc, #0x140]        @ 0x30a87c <ControlsPlacementLayer::init()+0xda8>
  30a73a: 447a         	add	r2, pc
  30a73c: 4611         	mov	r1, r2
  30a73e: 4798         	blx	r3
  30a740: 9b03         	ldr	r3, [sp, #0xc]
  30a742: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a746: 681b         	ldr	r3, [r3]
  30a748: 337c         	adds	r3, #0x7c
  30a74a: 681d         	ldr	r5, [r3]
  30a74c: 9b03         	ldr	r3, [sp, #0xc]
  30a74e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a752: 461e         	mov	r6, r3
  30a754: ab18         	add	r3, sp, #0x60
  30a756: 4618         	mov	r0, r3
  30a758: f04f 517c    	mov.w	r1, #0x3f000000
  30a75c: f04f 527c    	mov.w	r2, #0x3f000000
  30a760: f288 fac6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x28858c
  30a764: ab18         	add	r3, sp, #0x60
  30a766: 4630         	mov	r0, r6
  30a768: 4619         	mov	r1, r3
  30a76a: 47a8         	blx	r5
  30a76c: 9b03         	ldr	r3, [sp, #0xc]
  30a76e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a772: 681b         	ldr	r3, [r3]
  30a774: 334c         	adds	r3, #0x4c
  30a776: 681d         	ldr	r5, [r3]
  30a778: 9b03         	ldr	r3, [sp, #0xc]
  30a77a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30a77e: 461e         	mov	r6, r3
  30a780: 9b03         	ldr	r3, [sp, #0xc]
  30a782: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30a786: 681b         	ldr	r3, [r3]
  30a788: 3350         	adds	r3, #0x50
  30a78a: 681b         	ldr	r3, [r3]
  30a78c: 9a03         	ldr	r2, [sp, #0xc]
  30a78e: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  30a792: 4610         	mov	r0, r2
  30a794: 4798         	blx	r3
  30a796: 4603         	mov	r3, r0
  30a798: 4630         	mov	r0, r6
  30a79a: 4619         	mov	r1, r3
  30a79c: 47a8         	blx	r5
  30a79e: 9b03         	ldr	r3, [sp, #0xc]
  30a7a0: 681b         	ldr	r3, [r3]
  30a7a2: 33c8         	adds	r3, #0xc8
  30a7a4: 681b         	ldr	r3, [r3]
  30a7a6: 9903         	ldr	r1, [sp, #0xc]
  30a7a8: 9a03         	ldr	r2, [sp, #0xc]
  30a7aa: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  30a7ae: 4608         	mov	r0, r1
  30a7b0: 4611         	mov	r1, r2
  30a7b2: 4798         	blx	r3
  30a7b4: f2d7 ff3a    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7e74
  30a7b8: 4603         	mov	r3, r0
  30a7ba: 4618         	mov	r0, r3
  30a7bc: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x30a880 <ControlsPlacementLayer::init()+0xdac>
  30a7be: 447b         	add	r3, pc
  30a7c0: 4619         	mov	r1, r3
  30a7c2: 2200         	movs	r2, #0x0
  30a7c4: f2d7 fd30    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d7a60
  30a7c8: 4603         	mov	r3, r0
  30a7ca: 2b01         	cmp	r3, #0x1
  30a7cc: bf14         	ite	ne
  30a7ce: 2300         	movne	r3, #0x0
  30a7d0: 2301         	moveq	r3, #0x1
  30a7d2: b2db         	uxtb	r3, r3
  30a7d4: 2b00         	cmp	r3, #0x0
  30a7d6: d059         	beq	0x30a88c <ControlsPlacementLayer::init()+0xdb8> @ imm = #0xb2
  30a7d8: 9b03         	ldr	r3, [sp, #0xc]
  30a7da: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30a7de: 681b         	ldr	r3, [r3]
  30a7e0: 334c         	adds	r3, #0x4c
  30a7e2: 681b         	ldr	r3, [r3]
  30a7e4: 9a03         	ldr	r2, [sp, #0xc]
  30a7e6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30a7ea: 4610         	mov	r0, r2
  30a7ec: 4a25         	ldr	r2, [pc, #0x94]         @ 0x30a884 <ControlsPlacementLayer::init()+0xdb0>
  30a7ee: 58a2         	ldr	r2, [r4, r2]
  30a7f0: 4611         	mov	r1, r2
  30a7f2: 4798         	blx	r3
  30a7f4: 9b03         	ldr	r3, [sp, #0xc]
  30a7f6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30a7fa: 681b         	ldr	r3, [r3]
  30a7fc: 334c         	adds	r3, #0x4c
  30a7fe: 681b         	ldr	r3, [r3]
  30a800: 9a03         	ldr	r2, [sp, #0xc]
  30a802: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30a806: 4610         	mov	r0, r2
  30a808: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x30a888 <ControlsPlacementLayer::init()+0xdb4>
  30a80a: 58a2         	ldr	r2, [r4, r2]
  30a80c: 4611         	mov	r1, r2
  30a80e: 4798         	blx	r3
  30a810: e058         	b	0x30a8c4 <ControlsPlacementLayer::init()+0xdf0> @ imm = #0xb0
  30a812: bf00         	nop
  30a814: be2a         	bkpt	#0x2a
  30a816: 004b         	lsls	r3, r1, #0x1
  30a818: bdc0         	pop	{r6, r7, pc}
  30a81a: 004b         	lsls	r3, r1, #0x1
  30a81c: bd52         	pop	{r1, r4, r6, pc}
  30a81e: 004b         	lsls	r3, r1, #0x1
  30a820: bce4         	pop	{r2, r5, r6, r7}
  30a822: 004b         	lsls	r3, r1, #0x1
  30a824: bcd4         	pop	{r2, r4, r6, r7}
  30a826: 004b         	lsls	r3, r1, #0x1
  30a828: bcd4         	pop	{r2, r4, r6, r7}
  30a82a: 004b         	lsls	r3, r1, #0x1
  30a82c: bcc4         	pop	{r2, r6, r7}
  30a82e: 004b         	lsls	r3, r1, #0x1
  30a830: bcc4         	pop	{r2, r6, r7}
  30a832: 004b         	lsls	r3, r1, #0x1
  30a834: bcb4         	pop	{r2, r4, r5, r7}
  30a836: 004b         	lsls	r3, r1, #0x1
  30a838: bca4         	pop	{r2, r5, r7}
  30a83a: 004b         	lsls	r3, r1, #0x1
  30a83c: bc94         	pop	{r2, r4, r7}
  30a83e: 004b         	lsls	r3, r1, #0x1
  30a840: d980         	bls	0x30a744 <ControlsPlacementLayer::init()+0xc70> @ imm = #-0x100
  30a842: ffff d984    	<unknown>
  30a846: ffff 5eec    	<unknown>
  30a84a: 0063         	lsls	r3, r4, #0x1
  30a84c: ba7a         	rev16	r2, r7
  30a84e: 004b         	lsls	r3, r1, #0x1
  30a850: bab2         	<unknown>
  30a852: 004b         	lsls	r3, r1, #0x1
  30a854: 5dc4         	ldrb	r4, [r0, r7]
  30a856: 0063         	lsls	r3, r4, #0x1
  30a858: b952         	cbnz	r2, 0x30a870 <ControlsPlacementLayer::init()+0xd9c> @ imm = #0x14
  30a85a: 004b         	lsls	r3, r1, #0x1
  30a85c: b98e         	cbnz	r6, 0x30a882 <ControlsPlacementLayer::init()+0xdae> @ imm = #0x22
  30a85e: 004b         	lsls	r3, r1, #0x1
  30a860: d988         	bls	0x30a774 <ControlsPlacementLayer::init()+0xca0> @ imm = #-0xf0
  30a862: ffff 5baa    	vtbl.8	d21, {d31, fpinst2, mvfr0, mvfr1}, d26
  30a866: 0063         	lsls	r3, r4, #0x1
  30a868: b73a         	<unknown>
  30a86a: 004b         	lsls	r3, r1, #0x1
  30a86c: b782         	<unknown>
  30a86e: 004b         	lsls	r3, r1, #0x1
  30a870: d98c         	bls	0x30a78c <ControlsPlacementLayer::init()+0xcb8> @ imm = #-0xe8
  30a872: ffff 5a22    	vtbl.8	d21, {d15, d16, d17}, d18
  30a876: 0063         	lsls	r3, r4, #0x1
  30a878: b5b2         	push	{r1, r4, r5, r7, lr}
  30a87a: 004b         	lsls	r3, r1, #0x1
  30a87c: b602         	<unknown>
  30a87e: 004b         	lsls	r3, r1, #0x1
  30a880: b586         	push	{r1, r2, r7, lr}
  30a882: 004b         	lsls	r3, r1, #0x1
  30a884: d804         	bhi	0x30a890 <ControlsPlacementLayer::init()+0xdbc> @ imm = #0x8
  30a886: ffff d808    	vtbl.8	d29, {d15}, d8
  30a88a: ffff 9b03    	vtbl.8	d25, {d15, d16, d17, d18}, d3
  30a88e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30a892: 681b         	ldr	r3, [r3]
  30a894: 334c         	adds	r3, #0x4c
  30a896: 681b         	ldr	r3, [r3]
  30a898: 9a03         	ldr	r2, [sp, #0xc]
  30a89a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30a89e: 4610         	mov	r0, r2
  30a8a0: 4a56         	ldr	r2, [pc, #0x158]        @ 0x30a9fc <ControlsPlacementLayer::init()+0xf28>
  30a8a2: 58a2         	ldr	r2, [r4, r2]
  30a8a4: 4611         	mov	r1, r2
  30a8a6: 4798         	blx	r3
  30a8a8: 9b03         	ldr	r3, [sp, #0xc]
  30a8aa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30a8ae: 681b         	ldr	r3, [r3]
  30a8b0: 334c         	adds	r3, #0x4c
  30a8b2: 681b         	ldr	r3, [r3]
  30a8b4: 9a03         	ldr	r2, [sp, #0xc]
  30a8b6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30a8ba: 4610         	mov	r0, r2
  30a8bc: 4a50         	ldr	r2, [pc, #0x140]        @ 0x30aa00 <ControlsPlacementLayer::init()+0xf2c>
  30a8be: 58a2         	ldr	r2, [r4, r2]
  30a8c0: 4611         	mov	r1, r2
  30a8c2: 4798         	blx	r3
  30a8c4: 9b03         	ldr	r3, [sp, #0xc]
  30a8c6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30a8ca: 681b         	ldr	r3, [r3]
  30a8cc: 334c         	adds	r3, #0x4c
  30a8ce: 681b         	ldr	r3, [r3]
  30a8d0: 9a03         	ldr	r2, [sp, #0xc]
  30a8d2: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30a8d6: 4610         	mov	r0, r2
  30a8d8: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x30aa04 <ControlsPlacementLayer::init()+0xf30>
  30a8da: 58a2         	ldr	r2, [r4, r2]
  30a8dc: 4611         	mov	r1, r2
  30a8de: 4798         	blx	r3
  30a8e0: 9b03         	ldr	r3, [sp, #0xc]
  30a8e2: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30a8e6: 681b         	ldr	r3, [r3]
  30a8e8: 334c         	adds	r3, #0x4c
  30a8ea: 681b         	ldr	r3, [r3]
  30a8ec: 9a03         	ldr	r2, [sp, #0xc]
  30a8ee: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30a8f2: 4610         	mov	r0, r2
  30a8f4: 4a44         	ldr	r2, [pc, #0x110]        @ 0x30aa08 <ControlsPlacementLayer::init()+0xf34>
  30a8f6: 58a2         	ldr	r2, [r4, r2]
  30a8f8: 4611         	mov	r1, r2
  30a8fa: 4798         	blx	r3
  30a8fc: 9b03         	ldr	r3, [sp, #0xc]
  30a8fe: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30a902: 681b         	ldr	r3, [r3]
  30a904: 334c         	adds	r3, #0x4c
  30a906: 681b         	ldr	r3, [r3]
  30a908: 9a03         	ldr	r2, [sp, #0xc]
  30a90a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30a90e: 4610         	mov	r0, r2
  30a910: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x30aa0c <ControlsPlacementLayer::init()+0xf38>
  30a912: 58a2         	ldr	r2, [r4, r2]
  30a914: 4611         	mov	r1, r2
  30a916: 4798         	blx	r3
  30a918: 9b03         	ldr	r3, [sp, #0xc]
  30a91a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30a91e: 681b         	ldr	r3, [r3]
  30a920: 334c         	adds	r3, #0x4c
  30a922: 681b         	ldr	r3, [r3]
  30a924: 9a03         	ldr	r2, [sp, #0xc]
  30a926: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  30a92a: 4610         	mov	r0, r2
  30a92c: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x30aa10 <ControlsPlacementLayer::init()+0xf3c>
  30a92e: 58a2         	ldr	r2, [r4, r2]
  30a930: 4611         	mov	r1, r2
  30a932: 4798         	blx	r3
  30a934: 9b03         	ldr	r3, [sp, #0xc]
  30a936: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30a93a: 681b         	ldr	r3, [r3]
  30a93c: 3340         	adds	r3, #0x40
  30a93e: 681b         	ldr	r3, [r3]
  30a940: 9a03         	ldr	r2, [sp, #0xc]
  30a942: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  30a946: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x30aa14 <ControlsPlacementLayer::init()+0xf40>
  30a948: 58a2         	ldr	r2, [r4, r2]
  30a94a: 6812         	ldr	r2, [r2]
  30a94c: 4608         	mov	r0, r1
  30a94e: 4611         	mov	r1, r2
  30a950: 4798         	blx	r3
  30a952: 9b03         	ldr	r3, [sp, #0xc]
  30a954: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30a958: 681b         	ldr	r3, [r3]
  30a95a: 3340         	adds	r3, #0x40
  30a95c: 681b         	ldr	r3, [r3]
  30a95e: 9a03         	ldr	r2, [sp, #0xc]
  30a960: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  30a964: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x30aa18 <ControlsPlacementLayer::init()+0xf44>
  30a966: 58a2         	ldr	r2, [r4, r2]
  30a968: 6812         	ldr	r2, [r2]
  30a96a: 4608         	mov	r0, r1
  30a96c: 4611         	mov	r1, r2
  30a96e: 4798         	blx	r3
  30a970: 9b03         	ldr	r3, [sp, #0xc]
  30a972: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30a976: 681b         	ldr	r3, [r3]
  30a978: 3340         	adds	r3, #0x40
  30a97a: 681b         	ldr	r3, [r3]
  30a97c: 9a03         	ldr	r2, [sp, #0xc]
  30a97e: f8d2 1128    	ldr.w	r1, [r2, #0x128]
  30a982: 4a26         	ldr	r2, [pc, #0x98]         @ 0x30aa1c <ControlsPlacementLayer::init()+0xf48>
  30a984: 58a2         	ldr	r2, [r4, r2]
  30a986: 6812         	ldr	r2, [r2]
  30a988: 4608         	mov	r0, r1
  30a98a: 4611         	mov	r1, r2
  30a98c: 4798         	blx	r3
  30a98e: 9b03         	ldr	r3, [sp, #0xc]
  30a990: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30a994: 681b         	ldr	r3, [r3]
  30a996: 3340         	adds	r3, #0x40
  30a998: 681b         	ldr	r3, [r3]
  30a99a: 9a03         	ldr	r2, [sp, #0xc]
  30a99c: f8d2 112c    	ldr.w	r1, [r2, #0x12c]
  30a9a0: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x30aa20 <ControlsPlacementLayer::init()+0xf4c>
  30a9a2: 58a2         	ldr	r2, [r4, r2]
  30a9a4: 6812         	ldr	r2, [r2]
  30a9a6: 4608         	mov	r0, r1
  30a9a8: 4611         	mov	r1, r2
  30a9aa: 4798         	blx	r3
  30a9ac: 9b03         	ldr	r3, [sp, #0xc]
  30a9ae: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30a9b2: 681b         	ldr	r3, [r3]
  30a9b4: 3340         	adds	r3, #0x40
  30a9b6: 681b         	ldr	r3, [r3]
  30a9b8: 9a03         	ldr	r2, [sp, #0xc]
  30a9ba: f8d2 1130    	ldr.w	r1, [r2, #0x130]
  30a9be: 4a19         	ldr	r2, [pc, #0x64]         @ 0x30aa24 <ControlsPlacementLayer::init()+0xf50>
  30a9c0: 58a2         	ldr	r2, [r4, r2]
  30a9c2: 6812         	ldr	r2, [r2]
  30a9c4: 4608         	mov	r0, r1
  30a9c6: 4611         	mov	r1, r2
  30a9c8: 4798         	blx	r3
  30a9ca: 9b03         	ldr	r3, [sp, #0xc]
  30a9cc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30a9d0: 681b         	ldr	r3, [r3]
  30a9d2: 3340         	adds	r3, #0x40
  30a9d4: 681b         	ldr	r3, [r3]
  30a9d6: 9a03         	ldr	r2, [sp, #0xc]
  30a9d8: f8d2 1134    	ldr.w	r1, [r2, #0x134]
  30a9dc: 4a12         	ldr	r2, [pc, #0x48]         @ 0x30aa28 <ControlsPlacementLayer::init()+0xf54>
  30a9de: 58a2         	ldr	r2, [r4, r2]
  30a9e0: 6812         	ldr	r2, [r2]
  30a9e2: 4608         	mov	r0, r1
  30a9e4: 4611         	mov	r1, r2
  30a9e6: 4798         	blx	r3
  30a9e8: 9803         	ldr	r0, [sp, #0xc]
  30a9ea: f000 fdff    	bl	0x30b5ec <ControlsPlacementLayer::cancelTouches()> @ imm = #0xbfe
  30a9ee: f121 fb5b    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0x1216b6
  30a9f2: 2301         	movs	r3, #0x1
  30a9f4: 4618         	mov	r0, r3
  30a9f6: b022         	add	sp, #0x88
  30a9f8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x30a9f9); words below are literal-pool data ---
  30a9fa: bf00         	nop
  30a9fc: d808         	bhi	0x30aa10 <ControlsPlacementLayer::init()+0xf3c> @ imm = #0x10
  30a9fe: ffff d804    	vtbl.8	d29, {d15}, d4
  30aa02: ffff d80c    	vtbl.8	d29, {d15}, d12
  30aa06: ffff d810    	vqshrun.s64	d29, q0, #0x1
  30aa0a: ffff d818    	vqshrun.s64	d29, q4, #0x1
  30aa0e: ffff d814    	vqshrun.s64	d29, q2, #0x1
  30aa12: ffff d81c    	vqshrun.s64	d29, q6, #0x1
  30aa16: ffff d820    	vtbl.8	d29, {d15}, d16
  30aa1a: ffff d82c    	vtbl.8	d29, {d15}, d28
  30aa1e: ffff d824    	vtbl.8	d29, {d15}, d20
  30aa22: ffff d828    	vtbl.8	d29, {d15}, d24
  30aa26: ffff d830    	vqshrun.s64	d29, q8, #0x1
  30aa2a: ffff b500    	<unknown>

// ==== ControlsPlacementLayer::~ControlsPlacementLayer
//      file offset 0x30aa2c (= ELF address; Ghidra 0x31aa2c), 256 bytes, Thumb-2
  30aa2c: b500         	push	{lr}
  30aa2e: b083         	sub	sp, #0xc
  30aa30: 9001         	str	r0, [sp, #0x4]
  30aa32: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x30ab24 <ControlsPlacementLayer::~ControlsPlacementLayer()+0xf8>
  30aa34: 447b         	add	r3, pc
  30aa36: 9a01         	ldr	r2, [sp, #0x4]
  30aa38: 493b         	ldr	r1, [pc, #0xec]         @ 0x30ab28 <ControlsPlacementLayer::~ControlsPlacementLayer()+0xfc>
  30aa3a: 5859         	ldr	r1, [r3, r1]
  30aa3c: 3108         	adds	r1, #0x8
  30aa3e: 6011         	str	r1, [r2]
  30aa40: 9a01         	ldr	r2, [sp, #0x4]
  30aa42: 4939         	ldr	r1, [pc, #0xe4]         @ 0x30ab28 <ControlsPlacementLayer::~ControlsPlacementLayer()+0xfc>
  30aa44: 5859         	ldr	r1, [r3, r1]
  30aa46: f501 7104    	add.w	r1, r1, #0x210
  30aa4a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  30aa4e: 9a01         	ldr	r2, [sp, #0x4]
  30aa50: 4935         	ldr	r1, [pc, #0xd4]         @ 0x30ab28 <ControlsPlacementLayer::~ControlsPlacementLayer()+0xfc>
  30aa52: 5859         	ldr	r1, [r3, r1]
  30aa54: f501 7110    	add.w	r1, r1, #0x240
  30aa58: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  30aa5c: 9a01         	ldr	r2, [sp, #0x4]
  30aa5e: 4932         	ldr	r1, [pc, #0xc8]         @ 0x30ab28 <ControlsPlacementLayer::~ControlsPlacementLayer()+0xfc>
  30aa60: 585b         	ldr	r3, [r3, r1]
  30aa62: f503 7313    	add.w	r3, r3, #0x24c
  30aa66: f8c2 30ec    	str.w	r3, [r2, #0xec]
  30aa6a: 9b01         	ldr	r3, [sp, #0x4]
  30aa6c: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  30aa70: 4618         	mov	r0, r3
  30aa72: f28d fa21    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d442
  30aa76: 9b01         	ldr	r3, [sp, #0x4]
  30aa78: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30aa7c: 4618         	mov	r0, r3
  30aa7e: f28d fa1b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d436
  30aa82: 9b01         	ldr	r3, [sp, #0x4]
  30aa84: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30aa88: 4618         	mov	r0, r3
  30aa8a: f28d fa15    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d42a
  30aa8e: 9b01         	ldr	r3, [sp, #0x4]
  30aa90: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30aa94: 4618         	mov	r0, r3
  30aa96: f28d fa0f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d41e
  30aa9a: 9b01         	ldr	r3, [sp, #0x4]
  30aa9c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30aaa0: 4618         	mov	r0, r3
  30aaa2: f28d fa09    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d412
  30aaa6: 9b01         	ldr	r3, [sp, #0x4]
  30aaa8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  30aaac: 4618         	mov	r0, r3
  30aaae: f28d fa03    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d406
  30aab2: 9b01         	ldr	r3, [sp, #0x4]
  30aab4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  30aab8: 4618         	mov	r0, r3
  30aaba: f28d f9fd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3fa
  30aabe: 9b01         	ldr	r3, [sp, #0x4]
  30aac0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  30aac4: 4618         	mov	r0, r3
  30aac6: f28d f9f7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3ee
  30aaca: 9b01         	ldr	r3, [sp, #0x4]
  30aacc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  30aad0: 4618         	mov	r0, r3
  30aad2: f28d f9f1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3e2
  30aad6: 9b01         	ldr	r3, [sp, #0x4]
  30aad8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30aadc: 4618         	mov	r0, r3
  30aade: f28d f9eb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3d6
  30aae2: 9b01         	ldr	r3, [sp, #0x4]
  30aae4: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30aae8: 4618         	mov	r0, r3
  30aaea: f28d f9e5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3ca
  30aaee: 9b01         	ldr	r3, [sp, #0x4]
  30aaf0: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30aaf4: 4618         	mov	r0, r3
  30aaf6: f28d f9df    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3be
  30aafa: 9b01         	ldr	r3, [sp, #0x4]
  30aafc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30ab00: 4618         	mov	r0, r3
  30ab02: f28d f9d9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x28d3b2
  30ab06: 9b01         	ldr	r3, [sp, #0x4]
  30ab08: 4618         	mov	r0, r3
  30ab0a: f2a2 fb1f    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2a263e
  30ab0e: 2300         	movs	r3, #0x0
  30ab10: 2b00         	cmp	r3, #0x0
  30ab12: d002         	beq	0x30ab1a <ControlsPlacementLayer::~ControlsPlacementLayer()+0xee> @ imm = #0x4
  30ab14: 9801         	ldr	r0, [sp, #0x4]
  30ab16: f07d f2c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47d58a
  30ab1a: 9b01         	ldr	r3, [sp, #0x4]
  30ab1c: 4618         	mov	r0, r3
  30ab1e: b003         	add	sp, #0xc
  30ab20: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x30ab23); words below are literal-pool data ---
  30ab24: 7fd4         	ldrb	r4, [r2, #0x1f]
  30ab26: 0062         	lsls	r2, r4, #0x1
  30ab28: d97c         	bls	0x30ac24 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0xcc> @ imm = #0xf8
  30ab2a: ffff f1a0    	<unknown>

// ==== ControlsPlacementLayer::~ControlsPlacementLayer
//      file offset 0x30ab2c (= ELF address; Ghidra 0x31ab2c), 8 bytes, Thumb-2
  30ab2c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30ab30: f7ff bf7c    	b.w	0x30aa2c <ControlsPlacementLayer::~ControlsPlacementLayer()> @ imm = #-0x108

// ==== ControlsPlacementLayer::~ControlsPlacementLayer
//      file offset 0x30ab34 (= ELF address; Ghidra 0x31ab34), 28 bytes, Thumb-2
  30ab34: b500         	push	{lr}
  30ab36: b083         	sub	sp, #0xc
  30ab38: 9001         	str	r0, [sp, #0x4]
  30ab3a: 9801         	ldr	r0, [sp, #0x4]
  30ab3c: f7ff ff76    	bl	0x30aa2c <ControlsPlacementLayer::~ControlsPlacementLayer()> @ imm = #-0x114
  30ab40: 9801         	ldr	r0, [sp, #0x4]
  30ab42: f07d f2af    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x47d55e
  30ab46: 9b01         	ldr	r3, [sp, #0x4]
  30ab48: 4618         	mov	r0, r3
  30ab4a: b003         	add	sp, #0xc
  30ab4c: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::~ControlsPlacementLayer
//      file offset 0x30ab50 (= ELF address; Ghidra 0x31ab50), 8 bytes, Thumb-2
  30ab50: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30ab54: f7ff bfee    	b.w	0x30ab34 <ControlsPlacementLayer::~ControlsPlacementLayer()> @ imm = #-0x24

// ==== ControlsPlacementLayer::onDone
//      file offset 0x30ab58 (= ELF address; Ghidra 0x31ab58), 1316 bytes, Thumb-2
  30ab58: b530         	push	{r4, r5, lr}
  30ab5a: b083         	sub	sp, #0xc
  30ab5c: 9001         	str	r0, [sp, #0x4]
  30ab5e: 9100         	str	r1, [sp]
  30ab60: f8df 4490    	ldr.w	r4, [pc, #0x490]        @ 0x30aff4 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x49c>
  30ab64: 447c         	add	r4, pc
  30ab66: 9b01         	ldr	r3, [sp, #0x4]
  30ab68: f893 3108    	ldrb.w	r3, [r3, #0x108]
  30ab6c: 2b00         	cmp	r3, #0x0
  30ab6e: d000         	beq	0x30ab72 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x1a> @ imm = #0x0
  30ab70: e23d         	b	0x30afee <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x496> @ imm = #0x47a
  30ab72: 9b01         	ldr	r3, [sp, #0x4]
  30ab74: 2201         	movs	r2, #0x1
  30ab76: f883 2108    	strb.w	r2, [r3, #0x108]
  30ab7a: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x30aff8 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a0>
  30ab7e: 58e3         	ldr	r3, [r4, r3]
  30ab80: 681b         	ldr	r3, [r3]
  30ab82: 4618         	mov	r0, r3
  30ab84: 210d         	movs	r1, #0xd
  30ab86: f0ed f91b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xed236
  30ab8a: f2d7 fd4f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7a9e
  30ab8e: 4603         	mov	r3, r0
  30ab90: 4618         	mov	r0, r3
  30ab92: f8df 3468    	ldr.w	r3, [pc, #0x468]        @ 0x30affc <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a4>
  30ab96: 447b         	add	r3, pc
  30ab98: 4619         	mov	r1, r3
  30ab9a: 2200         	movs	r2, #0x0
  30ab9c: f2d7 fb44    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2d7688
  30aba0: 4603         	mov	r3, r0
  30aba2: 2b01         	cmp	r3, #0x1
  30aba4: bf14         	ite	ne
  30aba6: 2300         	movne	r3, #0x0
  30aba8: 2301         	moveq	r3, #0x1
  30abaa: b2db         	uxtb	r3, r3
  30abac: 2b00         	cmp	r3, #0x0
  30abae: d026         	beq	0x30abfe <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0xa6> @ imm = #0x4c
  30abb0: 9b01         	ldr	r3, [sp, #0x4]
  30abb2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30abb6: 681b         	ldr	r3, [r3]
  30abb8: 3350         	adds	r3, #0x50
  30abba: 681b         	ldr	r3, [r3]
  30abbc: 9a01         	ldr	r2, [sp, #0x4]
  30abbe: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30abc2: 4610         	mov	r0, r2
  30abc4: 4798         	blx	r3
  30abc6: 4603         	mov	r3, r0
  30abc8: f8df 2434    	ldr.w	r2, [pc, #0x434]        @ 0x30b000 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a8>
  30abcc: 58a2         	ldr	r2, [r4, r2]
  30abce: 4610         	mov	r0, r2
  30abd0: 4619         	mov	r1, r3
  30abd2: f288 f8bb    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x288176
  30abd6: 9b01         	ldr	r3, [sp, #0x4]
  30abd8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30abdc: 681b         	ldr	r3, [r3]
  30abde: 3350         	adds	r3, #0x50
  30abe0: 681b         	ldr	r3, [r3]
  30abe2: 9a01         	ldr	r2, [sp, #0x4]
  30abe4: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30abe8: 4610         	mov	r0, r2
  30abea: 4798         	blx	r3
  30abec: 4603         	mov	r3, r0
  30abee: f8df 2414    	ldr.w	r2, [pc, #0x414]        @ 0x30b004 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4ac>
  30abf2: 58a2         	ldr	r2, [r4, r2]
  30abf4: 4610         	mov	r0, r2
  30abf6: 4619         	mov	r1, r3
  30abf8: f288 f8a8    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x288150
  30abfc: e023         	b	0x30ac46 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0xee> @ imm = #0x46
  30abfe: 9b01         	ldr	r3, [sp, #0x4]
  30ac00: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30ac04: 681b         	ldr	r3, [r3]
  30ac06: 3350         	adds	r3, #0x50
  30ac08: 681b         	ldr	r3, [r3]
  30ac0a: 9a01         	ldr	r2, [sp, #0x4]
  30ac0c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30ac10: 4610         	mov	r0, r2
  30ac12: 4798         	blx	r3
  30ac14: 4603         	mov	r3, r0
  30ac16: 4afa         	ldr	r2, [pc, #0x3e8]        @ 0x30b000 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a8>
  30ac18: 58a2         	ldr	r2, [r4, r2]
  30ac1a: 4610         	mov	r0, r2
  30ac1c: 4619         	mov	r1, r3
  30ac1e: f288 f895    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x28812a
  30ac22: 9b01         	ldr	r3, [sp, #0x4]
  30ac24: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30ac28: 681b         	ldr	r3, [r3]
  30ac2a: 3350         	adds	r3, #0x50
  30ac2c: 681b         	ldr	r3, [r3]
  30ac2e: 9a01         	ldr	r2, [sp, #0x4]
  30ac30: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30ac34: 4610         	mov	r0, r2
  30ac36: 4798         	blx	r3
  30ac38: 4603         	mov	r3, r0
  30ac3a: 4af2         	ldr	r2, [pc, #0x3c8]        @ 0x30b004 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4ac>
  30ac3c: 58a2         	ldr	r2, [r4, r2]
  30ac3e: 4610         	mov	r0, r2
  30ac40: 4619         	mov	r1, r3
  30ac42: f288 f883    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x288106
  30ac46: 9b01         	ldr	r3, [sp, #0x4]
  30ac48: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30ac4c: 681b         	ldr	r3, [r3]
  30ac4e: 3350         	adds	r3, #0x50
  30ac50: 681b         	ldr	r3, [r3]
  30ac52: 9a01         	ldr	r2, [sp, #0x4]
  30ac54: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30ac58: 4610         	mov	r0, r2
  30ac5a: 4798         	blx	r3
  30ac5c: 4603         	mov	r3, r0
  30ac5e: 4aea         	ldr	r2, [pc, #0x3a8]        @ 0x30b008 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b0>
  30ac60: 58a2         	ldr	r2, [r4, r2]
  30ac62: 4610         	mov	r0, r2
  30ac64: 4619         	mov	r1, r3
  30ac66: f288 f871    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2880e2
  30ac6a: 9b01         	ldr	r3, [sp, #0x4]
  30ac6c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30ac70: 681b         	ldr	r3, [r3]
  30ac72: 3350         	adds	r3, #0x50
  30ac74: 681b         	ldr	r3, [r3]
  30ac76: 9a01         	ldr	r2, [sp, #0x4]
  30ac78: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30ac7c: 4610         	mov	r0, r2
  30ac7e: 4798         	blx	r3
  30ac80: 4603         	mov	r3, r0
  30ac82: 4ae2         	ldr	r2, [pc, #0x388]        @ 0x30b00c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b4>
  30ac84: 58a2         	ldr	r2, [r4, r2]
  30ac86: 4610         	mov	r0, r2
  30ac88: 4619         	mov	r1, r3
  30ac8a: f288 f85f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2880be
  30ac8e: 9b01         	ldr	r3, [sp, #0x4]
  30ac90: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30ac94: 681b         	ldr	r3, [r3]
  30ac96: 3350         	adds	r3, #0x50
  30ac98: 681b         	ldr	r3, [r3]
  30ac9a: 9a01         	ldr	r2, [sp, #0x4]
  30ac9c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30aca0: 4610         	mov	r0, r2
  30aca2: 4798         	blx	r3
  30aca4: 4603         	mov	r3, r0
  30aca6: 4ada         	ldr	r2, [pc, #0x368]        @ 0x30b010 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b8>
  30aca8: 58a2         	ldr	r2, [r4, r2]
  30acaa: 4610         	mov	r0, r2
  30acac: 4619         	mov	r1, r3
  30acae: f288 f84d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x28809a
  30acb2: 9b01         	ldr	r3, [sp, #0x4]
  30acb4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30acb8: 681b         	ldr	r3, [r3]
  30acba: 3350         	adds	r3, #0x50
  30acbc: 681b         	ldr	r3, [r3]
  30acbe: 9a01         	ldr	r2, [sp, #0x4]
  30acc0: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  30acc4: 4610         	mov	r0, r2
  30acc6: 4798         	blx	r3
  30acc8: 4603         	mov	r3, r0
  30acca: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x30b014 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4bc>
  30accc: 58a2         	ldr	r2, [r4, r2]
  30acce: 4610         	mov	r0, r2
  30acd0: 4619         	mov	r1, r3
  30acd2: f288 f83b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x288076
  30acd6: 9b01         	ldr	r3, [sp, #0x4]
  30acd8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30acdc: 681b         	ldr	r3, [r3]
  30acde: 3344         	adds	r3, #0x44
  30ace0: 681b         	ldr	r3, [r3]
  30ace2: 9a01         	ldr	r2, [sp, #0x4]
  30ace4: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30ace8: 4610         	mov	r0, r2
  30acea: 4798         	blx	r3
  30acec: 4603         	mov	r3, r0
  30acee: 461a         	mov	r2, r3
  30acf0: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x30b018 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c0>
  30acf2: 58e3         	ldr	r3, [r4, r3]
  30acf4: 601a         	str	r2, [r3]
  30acf6: 9b01         	ldr	r3, [sp, #0x4]
  30acf8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30acfc: 681b         	ldr	r3, [r3]
  30acfe: 3344         	adds	r3, #0x44
  30ad00: 681b         	ldr	r3, [r3]
  30ad02: 9a01         	ldr	r2, [sp, #0x4]
  30ad04: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30ad08: 4610         	mov	r0, r2
  30ad0a: 4798         	blx	r3
  30ad0c: 4603         	mov	r3, r0
  30ad0e: 461a         	mov	r2, r3
  30ad10: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x30b01c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c4>
  30ad12: 58e3         	ldr	r3, [r4, r3]
  30ad14: 601a         	str	r2, [r3]
  30ad16: 9b01         	ldr	r3, [sp, #0x4]
  30ad18: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30ad1c: 681b         	ldr	r3, [r3]
  30ad1e: 3344         	adds	r3, #0x44
  30ad20: 681b         	ldr	r3, [r3]
  30ad22: 9a01         	ldr	r2, [sp, #0x4]
  30ad24: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30ad28: 4610         	mov	r0, r2
  30ad2a: 4798         	blx	r3
  30ad2c: 4603         	mov	r3, r0
  30ad2e: 461a         	mov	r2, r3
  30ad30: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x30b020 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c8>
  30ad32: 58e3         	ldr	r3, [r4, r3]
  30ad34: 601a         	str	r2, [r3]
  30ad36: 9b01         	ldr	r3, [sp, #0x4]
  30ad38: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30ad3c: 681b         	ldr	r3, [r3]
  30ad3e: 3344         	adds	r3, #0x44
  30ad40: 681b         	ldr	r3, [r3]
  30ad42: 9a01         	ldr	r2, [sp, #0x4]
  30ad44: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30ad48: 4610         	mov	r0, r2
  30ad4a: 4798         	blx	r3
  30ad4c: 4603         	mov	r3, r0
  30ad4e: 461a         	mov	r2, r3
  30ad50: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x30b024 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4cc>
  30ad52: 58e3         	ldr	r3, [r4, r3]
  30ad54: 601a         	str	r2, [r3]
  30ad56: 9b01         	ldr	r3, [sp, #0x4]
  30ad58: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30ad5c: 681b         	ldr	r3, [r3]
  30ad5e: 3344         	adds	r3, #0x44
  30ad60: 681b         	ldr	r3, [r3]
  30ad62: 9a01         	ldr	r2, [sp, #0x4]
  30ad64: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30ad68: 4610         	mov	r0, r2
  30ad6a: 4798         	blx	r3
  30ad6c: 4603         	mov	r3, r0
  30ad6e: 461a         	mov	r2, r3
  30ad70: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x30b028 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4d0>
  30ad72: 58e3         	ldr	r3, [r4, r3]
  30ad74: 601a         	str	r2, [r3]
  30ad76: 9b01         	ldr	r3, [sp, #0x4]
  30ad78: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30ad7c: 681b         	ldr	r3, [r3]
  30ad7e: 3344         	adds	r3, #0x44
  30ad80: 681b         	ldr	r3, [r3]
  30ad82: 9a01         	ldr	r2, [sp, #0x4]
  30ad84: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  30ad88: 4610         	mov	r0, r2
  30ad8a: 4798         	blx	r3
  30ad8c: 4603         	mov	r3, r0
  30ad8e: 461a         	mov	r2, r3
  30ad90: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x30b02c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4d4>
  30ad92: 58e3         	ldr	r3, [r4, r3]
  30ad94: 601a         	str	r2, [r3]
  30ad96: f2d7 fc49    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7892
  30ad9a: 4602         	mov	r2, r0
  30ad9c: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x30b018 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c0>
  30ad9e: 58e3         	ldr	r3, [r4, r3]
  30ada0: 681b         	ldr	r3, [r3]
  30ada2: 4610         	mov	r0, r2
  30ada4: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x30b030 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4d8>
  30ada6: 447a         	add	r2, pc
  30ada8: 4611         	mov	r1, r2
  30adaa: 461a         	mov	r2, r3
  30adac: f2d7 fc08    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d7810
  30adb0: f2d7 fc3c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7878
  30adb4: 4602         	mov	r2, r0
  30adb6: 4b99         	ldr	r3, [pc, #0x264]        @ 0x30b01c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c4>
  30adb8: 58e3         	ldr	r3, [r4, r3]
  30adba: 681b         	ldr	r3, [r3]
  30adbc: 4610         	mov	r0, r2
  30adbe: 4a9d         	ldr	r2, [pc, #0x274]        @ 0x30b034 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4dc>
  30adc0: 447a         	add	r2, pc
  30adc2: 4611         	mov	r1, r2
  30adc4: 461a         	mov	r2, r3
  30adc6: f2d7 fbfb    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d77f6
  30adca: f2d7 fc2f    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d785e
  30adce: 4602         	mov	r2, r0
  30add0: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x30b020 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4c8>
  30add2: 58e3         	ldr	r3, [r4, r3]
  30add4: 681b         	ldr	r3, [r3]
  30add6: 4610         	mov	r0, r2
  30add8: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x30b038 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4e0>
  30adda: 447a         	add	r2, pc
  30addc: 4611         	mov	r1, r2
  30adde: 461a         	mov	r2, r3
  30ade0: f2d7 fbee    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d77dc
  30ade4: f2d7 fc22    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7844
  30ade8: 4602         	mov	r2, r0
  30adea: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x30b028 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4d0>
  30adec: 58e3         	ldr	r3, [r4, r3]
  30adee: 681b         	ldr	r3, [r3]
  30adf0: 4610         	mov	r0, r2
  30adf2: 4a92         	ldr	r2, [pc, #0x248]        @ 0x30b03c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4e4>
  30adf4: 447a         	add	r2, pc
  30adf6: 4611         	mov	r1, r2
  30adf8: 461a         	mov	r2, r3
  30adfa: f2d7 fbe1    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d77c2
  30adfe: f2d7 fc15    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d782a
  30ae02: 4602         	mov	r2, r0
  30ae04: 4b89         	ldr	r3, [pc, #0x224]        @ 0x30b02c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4d4>
  30ae06: 58e3         	ldr	r3, [r4, r3]
  30ae08: 681b         	ldr	r3, [r3]
  30ae0a: 4610         	mov	r0, r2
  30ae0c: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x30b040 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4e8>
  30ae0e: 447a         	add	r2, pc
  30ae10: 4611         	mov	r1, r2
  30ae12: 461a         	mov	r2, r3
  30ae14: f2d7 fbd4    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d77a8
  30ae18: f2d7 fc08    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7810
  30ae1c: 4602         	mov	r2, r0
  30ae1e: 4b81         	ldr	r3, [pc, #0x204]        @ 0x30b024 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4cc>
  30ae20: 58e3         	ldr	r3, [r4, r3]
  30ae22: 681b         	ldr	r3, [r3]
  30ae24: 4610         	mov	r0, r2
  30ae26: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x30b044 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4ec>
  30ae28: 447a         	add	r2, pc
  30ae2a: 4611         	mov	r1, r2
  30ae2c: 461a         	mov	r2, r3
  30ae2e: f2d7 fbc7    	bl	0x5e25c0 <cocos2d::CCUserDefault::setFloatForKey(char const*, float)> @ imm = #0x2d778e
  30ae32: f2d7 fbfb    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d77f6
  30ae36: 4603         	mov	r3, r0
  30ae38: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x30b004 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4ac>
  30ae3a: 58a2         	ldr	r2, [r4, r2]
  30ae3c: edd2 7a00    	vldr	s15, [r2]
  30ae40: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30ae44: ee17 2a90    	vmov	r2, s15
  30ae48: 4618         	mov	r0, r3
  30ae4a: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x30b048 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4f0>
  30ae4c: 447b         	add	r3, pc
  30ae4e: 4619         	mov	r1, r3
  30ae50: f2d7 fba6    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d774c
  30ae54: f2d7 fbea    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d77d4
  30ae58: 4603         	mov	r3, r0
  30ae5a: 4a6a         	ldr	r2, [pc, #0x1a8]        @ 0x30b004 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4ac>
  30ae5c: 58a2         	ldr	r2, [r4, r2]
  30ae5e: edd2 7a01    	vldr	s15, [r2, #4]
  30ae62: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30ae66: ee17 2a90    	vmov	r2, s15
  30ae6a: 4618         	mov	r0, r3
  30ae6c: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x30b04c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4f4>
  30ae6e: 447b         	add	r3, pc
  30ae70: 4619         	mov	r1, r3
  30ae72: f2d7 fb95    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d772a
  30ae76: f2d7 fbd9    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d77b2
  30ae7a: 4603         	mov	r3, r0
  30ae7c: 4a60         	ldr	r2, [pc, #0x180]        @ 0x30b000 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a8>
  30ae7e: 58a2         	ldr	r2, [r4, r2]
  30ae80: edd2 7a00    	vldr	s15, [r2]
  30ae84: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30ae88: ee17 2a90    	vmov	r2, s15
  30ae8c: 4618         	mov	r0, r3
  30ae8e: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x30b050 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4f8>
  30ae90: 447b         	add	r3, pc
  30ae92: 4619         	mov	r1, r3
  30ae94: f2d7 fb84    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d7708
  30ae98: f2d7 fbc8    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7790
  30ae9c: 4603         	mov	r3, r0
  30ae9e: 4a58         	ldr	r2, [pc, #0x160]        @ 0x30b000 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4a8>
  30aea0: 58a2         	ldr	r2, [r4, r2]
  30aea2: edd2 7a01    	vldr	s15, [r2, #4]
  30aea6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30aeaa: ee17 2a90    	vmov	r2, s15
  30aeae: 4618         	mov	r0, r3
  30aeb0: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x30b054 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4fc>
  30aeb2: 447b         	add	r3, pc
  30aeb4: 4619         	mov	r1, r3
  30aeb6: f2d7 fb73    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d76e6
  30aeba: f2d7 fbb7    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d776e
  30aebe: 4603         	mov	r3, r0
  30aec0: 4a51         	ldr	r2, [pc, #0x144]        @ 0x30b008 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b0>
  30aec2: 58a2         	ldr	r2, [r4, r2]
  30aec4: edd2 7a00    	vldr	s15, [r2]
  30aec8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30aecc: ee17 2a90    	vmov	r2, s15
  30aed0: 4618         	mov	r0, r3
  30aed2: 4b61         	ldr	r3, [pc, #0x184]        @ 0x30b058 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x500>
  30aed4: 447b         	add	r3, pc
  30aed6: 4619         	mov	r1, r3
  30aed8: f2d7 fb62    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d76c4
  30aedc: f2d7 fba6    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d774c
  30aee0: 4603         	mov	r3, r0
  30aee2: 4a49         	ldr	r2, [pc, #0x124]        @ 0x30b008 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b0>
  30aee4: 58a2         	ldr	r2, [r4, r2]
  30aee6: edd2 7a01    	vldr	s15, [r2, #4]
  30aeea: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30aeee: ee17 2a90    	vmov	r2, s15
  30aef2: 4618         	mov	r0, r3
  30aef4: 4b59         	ldr	r3, [pc, #0x164]        @ 0x30b05c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x504>
  30aef6: 447b         	add	r3, pc
  30aef8: 4619         	mov	r1, r3
  30aefa: f2d7 fb51    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d76a2
  30aefe: f2d7 fb95    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d772a
  30af02: 4603         	mov	r3, r0
  30af04: 4a41         	ldr	r2, [pc, #0x104]        @ 0x30b00c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b4>
  30af06: 58a2         	ldr	r2, [r4, r2]
  30af08: edd2 7a00    	vldr	s15, [r2]
  30af0c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30af10: ee17 2a90    	vmov	r2, s15
  30af14: 4618         	mov	r0, r3
  30af16: 4b52         	ldr	r3, [pc, #0x148]        @ 0x30b060 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x508>
  30af18: 447b         	add	r3, pc
  30af1a: 4619         	mov	r1, r3
  30af1c: f2d7 fb40    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d7680
  30af20: f2d7 fb84    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7708
  30af24: 4603         	mov	r3, r0
  30af26: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x30b00c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b4>
  30af28: 58a2         	ldr	r2, [r4, r2]
  30af2a: edd2 7a01    	vldr	s15, [r2, #4]
  30af2e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30af32: ee17 2a90    	vmov	r2, s15
  30af36: 4618         	mov	r0, r3
  30af38: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x30b064 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x50c>
  30af3a: 447b         	add	r3, pc
  30af3c: 4619         	mov	r1, r3
  30af3e: f2d7 fb2f    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d765e
  30af42: f2d7 fb73    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d76e6
  30af46: 4603         	mov	r3, r0
  30af48: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x30b010 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b8>
  30af4a: 58a2         	ldr	r2, [r4, r2]
  30af4c: edd2 7a00    	vldr	s15, [r2]
  30af50: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30af54: ee17 2a90    	vmov	r2, s15
  30af58: 4618         	mov	r0, r3
  30af5a: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x30b068 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x510>
  30af5c: 447b         	add	r3, pc
  30af5e: 4619         	mov	r1, r3
  30af60: f2d7 fb1e    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d763c
  30af64: f2d7 fb62    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d76c4
  30af68: 4603         	mov	r3, r0
  30af6a: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x30b010 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4b8>
  30af6c: 58a2         	ldr	r2, [r4, r2]
  30af6e: edd2 7a01    	vldr	s15, [r2, #4]
  30af72: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30af76: ee17 2a90    	vmov	r2, s15
  30af7a: 4618         	mov	r0, r3
  30af7c: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x30b06c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x514>
  30af7e: 447b         	add	r3, pc
  30af80: 4619         	mov	r1, r3
  30af82: f2d7 fb0d    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d761a
  30af86: f2d7 fb51    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d76a2
  30af8a: 4603         	mov	r3, r0
  30af8c: 4a21         	ldr	r2, [pc, #0x84]         @ 0x30b014 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4bc>
  30af8e: 58a2         	ldr	r2, [r4, r2]
  30af90: edd2 7a00    	vldr	s15, [r2]
  30af94: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30af98: ee17 2a90    	vmov	r2, s15
  30af9c: 4618         	mov	r0, r3
  30af9e: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x30b070 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x518>
  30afa0: 447b         	add	r3, pc
  30afa2: 4619         	mov	r1, r3
  30afa4: f2d7 fafc    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d75f8
  30afa8: f2d7 fb40    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d7680
  30afac: 4603         	mov	r3, r0
  30afae: 4a19         	ldr	r2, [pc, #0x64]         @ 0x30b014 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4bc>
  30afb0: 58a2         	ldr	r2, [r4, r2]
  30afb2: edd2 7a01    	vldr	s15, [r2, #4]
  30afb6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30afba: ee17 2a90    	vmov	r2, s15
  30afbe: 4618         	mov	r0, r3
  30afc0: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x30b074 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x51c>
  30afc2: 447b         	add	r3, pc
  30afc4: 4619         	mov	r1, r3
  30afc6: f2d7 faeb    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2d75d6
  30afca: f290 fad3    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2905a6
  30afce: 4604         	mov	r4, r0
  30afd0: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x30b078 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x520>
  30afd2: 447b         	add	r3, pc
  30afd4: 681d         	ldr	r5, [r3]
  30afd6: f7fb fa2d    	bl	0x306434 <ControlsLayer::scene()> @ imm = #-0x4ba6
  30afda: 4603         	mov	r3, r0
  30afdc: 4628         	mov	r0, r5
  30afde: 4619         	mov	r1, r3
  30afe0: f2a6 f992    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2a6324
  30afe4: 4603         	mov	r3, r0
  30afe6: 4620         	mov	r0, r4
  30afe8: 4619         	mov	r1, r3
  30afea: f291 f9b7    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x29136e
  30afee: b003         	add	sp, #0xc
  30aff0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30aff1); words below are literal-pool data ---
  30aff2: bf00         	nop
  30aff4: 7ea4         	ldrb	r4, [r4, #0x1a]
  30aff6: 0062         	lsls	r2, r4, #0x1
  30aff8: d730         	bvc	0x30b05c <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x504> @ imm = #0x60
  30affa: ffff b1ae    	<unknown>
  30affe: 004b         	lsls	r3, r1, #0x1
  30b000: d808         	bhi	0x30b014 <ControlsPlacementLayer::onDone(cocos2d::CCObject*)+0x4bc> @ imm = #0x10
  30b002: ffff d804    	vtbl.8	d29, {d15}, d4
  30b006: ffff d80c    	vtbl.8	d29, {d15}, d12
  30b00a: ffff d810    	vqshrun.s64	d29, q0, #0x1
  30b00e: ffff d818    	vqshrun.s64	d29, q4, #0x1
  30b012: ffff d814    	vqshrun.s64	d29, q2, #0x1
  30b016: ffff d81c    	vqshrun.s64	d29, q6, #0x1
  30b01a: ffff d820    	vtbl.8	d29, {d15}, d16
  30b01e: ffff d82c    	vtbl.8	d29, {d15}, d28
  30b022: ffff d824    	vtbl.8	d29, {d15}, d20
  30b026: ffff d828    	vtbl.8	d29, {d15}, d24
  30b02a: ffff d830    	vqshrun.s64	d29, q8, #0x1
  30b02e: ffff afaa    	<unknown>
  30b032: 004b         	lsls	r3, r1, #0x1
  30b034: af9c         	add	r7, sp, #0x270
  30b036: 004b         	lsls	r3, r1, #0x1
  30b038: af8e         	add	r7, sp, #0x238
  30b03a: 004b         	lsls	r3, r1, #0x1
  30b03c: af80         	add	r7, sp, #0x200
  30b03e: 004b         	lsls	r3, r1, #0x1
  30b040: af6e         	add	r7, sp, #0x1b8
  30b042: 004b         	lsls	r3, r1, #0x1
  30b044: af60         	add	r7, sp, #0x180
  30b046: 004b         	lsls	r3, r1, #0x1
  30b048: af48         	add	r7, sp, #0x120
  30b04a: 004b         	lsls	r3, r1, #0x1
  30b04c: af32         	add	r7, sp, #0xc8
  30b04e: 004b         	lsls	r3, r1, #0x1
  30b050: af1c         	add	r7, sp, #0x70
  30b052: 004b         	lsls	r3, r1, #0x1
  30b054: af06         	add	r7, sp, #0x18
  30b056: 004b         	lsls	r3, r1, #0x1
  30b058: aef0         	add	r6, sp, #0x3c0
  30b05a: 004b         	lsls	r3, r1, #0x1
  30b05c: aeda         	add	r6, sp, #0x368
  30b05e: 004b         	lsls	r3, r1, #0x1
  30b060: aec4         	add	r6, sp, #0x310
  30b062: 004b         	lsls	r3, r1, #0x1
  30b064: aeae         	add	r6, sp, #0x2b8
  30b066: 004b         	lsls	r3, r1, #0x1
  30b068: ae98         	add	r6, sp, #0x260
  30b06a: 004b         	lsls	r3, r1, #0x1
  30b06c: ae82         	add	r6, sp, #0x208
  30b06e: 004b         	lsls	r3, r1, #0x1
  30b070: ae6c         	add	r6, sp, #0x1b0
  30b072: 004b         	lsls	r3, r1, #0x1
  30b074: ae56         	add	r6, sp, #0x158
  30b076: 004b         	lsls	r3, r1, #0x1
  30b078: 82ca         	strh	r2, [r1, #0x16]
  30b07a: 0062         	lsls	r2, r4, #0x1

// ==== ControlsPlacementLayer::onDefault
//      file offset 0x30b07c (= ELF address; Ghidra 0x31b07c), 532 bytes, Thumb-2
  30b07c: b510         	push	{r4, lr}
  30b07e: b082         	sub	sp, #0x8
  30b080: 9001         	str	r0, [sp, #0x4]
  30b082: 9100         	str	r1, [sp]
  30b084: 4c73         	ldr	r4, [pc, #0x1cc]        @ 0x30b254 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1d8>
  30b086: 447c         	add	r4, pc
  30b088: f2d7 fad0    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2d75a0
  30b08c: 4603         	mov	r3, r0
  30b08e: 4618         	mov	r0, r3
  30b090: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x30b258 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1dc>
  30b092: 447b         	add	r3, pc
  30b094: 4619         	mov	r1, r3
  30b096: f2d7 f8b9    	bl	0x5e220c <cocos2d::CCUserDefault::getIntegerForKey(char const*)> @ imm = #0x2d7172
  30b09a: 4603         	mov	r3, r0
  30b09c: 2b01         	cmp	r3, #0x1
  30b09e: bf14         	ite	ne
  30b0a0: 2300         	movne	r3, #0x0
  30b0a2: 2301         	moveq	r3, #0x1
  30b0a4: b2db         	uxtb	r3, r3
  30b0a6: 2b00         	cmp	r3, #0x0
  30b0a8: d01c         	beq	0x30b0e4 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x68> @ imm = #0x38
  30b0aa: 9b01         	ldr	r3, [sp, #0x4]
  30b0ac: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30b0b0: 681b         	ldr	r3, [r3]
  30b0b2: 334c         	adds	r3, #0x4c
  30b0b4: 681b         	ldr	r3, [r3]
  30b0b6: 9a01         	ldr	r2, [sp, #0x4]
  30b0b8: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30b0bc: 4610         	mov	r0, r2
  30b0be: 4a67         	ldr	r2, [pc, #0x19c]        @ 0x30b25c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1e0>
  30b0c0: 58a2         	ldr	r2, [r4, r2]
  30b0c2: 4611         	mov	r1, r2
  30b0c4: 4798         	blx	r3
  30b0c6: 9b01         	ldr	r3, [sp, #0x4]
  30b0c8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30b0cc: 681b         	ldr	r3, [r3]
  30b0ce: 334c         	adds	r3, #0x4c
  30b0d0: 681b         	ldr	r3, [r3]
  30b0d2: 9a01         	ldr	r2, [sp, #0x4]
  30b0d4: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30b0d8: 4610         	mov	r0, r2
  30b0da: 4a61         	ldr	r2, [pc, #0x184]        @ 0x30b260 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1e4>
  30b0dc: 58a2         	ldr	r2, [r4, r2]
  30b0de: 4611         	mov	r1, r2
  30b0e0: 4798         	blx	r3
  30b0e2: e01b         	b	0x30b11c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0xa0> @ imm = #0x36
  30b0e4: 9b01         	ldr	r3, [sp, #0x4]
  30b0e6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30b0ea: 681b         	ldr	r3, [r3]
  30b0ec: 334c         	adds	r3, #0x4c
  30b0ee: 681b         	ldr	r3, [r3]
  30b0f0: 9a01         	ldr	r2, [sp, #0x4]
  30b0f2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  30b0f6: 4610         	mov	r0, r2
  30b0f8: 4a59         	ldr	r2, [pc, #0x164]        @ 0x30b260 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1e4>
  30b0fa: 58a2         	ldr	r2, [r4, r2]
  30b0fc: 4611         	mov	r1, r2
  30b0fe: 4798         	blx	r3
  30b100: 9b01         	ldr	r3, [sp, #0x4]
  30b102: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30b106: 681b         	ldr	r3, [r3]
  30b108: 334c         	adds	r3, #0x4c
  30b10a: 681b         	ldr	r3, [r3]
  30b10c: 9a01         	ldr	r2, [sp, #0x4]
  30b10e: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  30b112: 4610         	mov	r0, r2
  30b114: 4a51         	ldr	r2, [pc, #0x144]        @ 0x30b25c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1e0>
  30b116: 58a2         	ldr	r2, [r4, r2]
  30b118: 4611         	mov	r1, r2
  30b11a: 4798         	blx	r3
  30b11c: 9b01         	ldr	r3, [sp, #0x4]
  30b11e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30b122: 681b         	ldr	r3, [r3]
  30b124: 334c         	adds	r3, #0x4c
  30b126: 681b         	ldr	r3, [r3]
  30b128: 9a01         	ldr	r2, [sp, #0x4]
  30b12a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  30b12e: 4610         	mov	r0, r2
  30b130: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x30b264 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1e8>
  30b132: 58a2         	ldr	r2, [r4, r2]
  30b134: 4611         	mov	r1, r2
  30b136: 4798         	blx	r3
  30b138: 9b01         	ldr	r3, [sp, #0x4]
  30b13a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30b13e: 681b         	ldr	r3, [r3]
  30b140: 334c         	adds	r3, #0x4c
  30b142: 681b         	ldr	r3, [r3]
  30b144: 9a01         	ldr	r2, [sp, #0x4]
  30b146: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  30b14a: 4610         	mov	r0, r2
  30b14c: 4a46         	ldr	r2, [pc, #0x118]        @ 0x30b268 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1ec>
  30b14e: 58a2         	ldr	r2, [r4, r2]
  30b150: 4611         	mov	r1, r2
  30b152: 4798         	blx	r3
  30b154: 9b01         	ldr	r3, [sp, #0x4]
  30b156: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30b15a: 681b         	ldr	r3, [r3]
  30b15c: 334c         	adds	r3, #0x4c
  30b15e: 681b         	ldr	r3, [r3]
  30b160: 9a01         	ldr	r2, [sp, #0x4]
  30b162: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  30b166: 4610         	mov	r0, r2
  30b168: 4a40         	ldr	r2, [pc, #0x100]        @ 0x30b26c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1f0>
  30b16a: 58a2         	ldr	r2, [r4, r2]
  30b16c: 4611         	mov	r1, r2
  30b16e: 4798         	blx	r3
  30b170: 9b01         	ldr	r3, [sp, #0x4]
  30b172: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30b176: 681b         	ldr	r3, [r3]
  30b178: 334c         	adds	r3, #0x4c
  30b17a: 681b         	ldr	r3, [r3]
  30b17c: 9a01         	ldr	r2, [sp, #0x4]
  30b17e: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  30b182: 4610         	mov	r0, r2
  30b184: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x30b270 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1f4>
  30b186: 58a2         	ldr	r2, [r4, r2]
  30b188: 4611         	mov	r1, r2
  30b18a: 4798         	blx	r3
  30b18c: 9b01         	ldr	r3, [sp, #0x4]
  30b18e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  30b192: 681b         	ldr	r3, [r3]
  30b194: 3340         	adds	r3, #0x40
  30b196: 681b         	ldr	r3, [r3]
  30b198: 9a01         	ldr	r2, [sp, #0x4]
  30b19a: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  30b19e: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x30b274 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1f8>
  30b1a0: 58a2         	ldr	r2, [r4, r2]
  30b1a2: 6812         	ldr	r2, [r2]
  30b1a4: 4608         	mov	r0, r1
  30b1a6: 4611         	mov	r1, r2
  30b1a8: 4798         	blx	r3
  30b1aa: 9b01         	ldr	r3, [sp, #0x4]
  30b1ac: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  30b1b0: 681b         	ldr	r3, [r3]
  30b1b2: 3340         	adds	r3, #0x40
  30b1b4: 681b         	ldr	r3, [r3]
  30b1b6: 9a01         	ldr	r2, [sp, #0x4]
  30b1b8: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  30b1bc: 4a2e         	ldr	r2, [pc, #0xb8]         @ 0x30b278 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1fc>
  30b1be: 58a2         	ldr	r2, [r4, r2]
  30b1c0: 6812         	ldr	r2, [r2]
  30b1c2: 4608         	mov	r0, r1
  30b1c4: 4611         	mov	r1, r2
  30b1c6: 4798         	blx	r3
  30b1c8: 9b01         	ldr	r3, [sp, #0x4]
  30b1ca: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  30b1ce: 681b         	ldr	r3, [r3]
  30b1d0: 3340         	adds	r3, #0x40
  30b1d2: 681b         	ldr	r3, [r3]
  30b1d4: 9a01         	ldr	r2, [sp, #0x4]
  30b1d6: f8d2 1128    	ldr.w	r1, [r2, #0x128]
  30b1da: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x30b27c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x200>
  30b1dc: 58a2         	ldr	r2, [r4, r2]
  30b1de: 6812         	ldr	r2, [r2]
  30b1e0: 4608         	mov	r0, r1
  30b1e2: 4611         	mov	r1, r2
  30b1e4: 4798         	blx	r3
  30b1e6: 9b01         	ldr	r3, [sp, #0x4]
  30b1e8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  30b1ec: 681b         	ldr	r3, [r3]
  30b1ee: 3340         	adds	r3, #0x40
  30b1f0: 681b         	ldr	r3, [r3]
  30b1f2: 9a01         	ldr	r2, [sp, #0x4]
  30b1f4: f8d2 112c    	ldr.w	r1, [r2, #0x12c]
  30b1f8: 4a21         	ldr	r2, [pc, #0x84]         @ 0x30b280 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x204>
  30b1fa: 58a2         	ldr	r2, [r4, r2]
  30b1fc: 6812         	ldr	r2, [r2]
  30b1fe: 4608         	mov	r0, r1
  30b200: 4611         	mov	r1, r2
  30b202: 4798         	blx	r3
  30b204: 9b01         	ldr	r3, [sp, #0x4]
  30b206: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  30b20a: 681b         	ldr	r3, [r3]
  30b20c: 3340         	adds	r3, #0x40
  30b20e: 681b         	ldr	r3, [r3]
  30b210: 9a01         	ldr	r2, [sp, #0x4]
  30b212: f8d2 1130    	ldr.w	r1, [r2, #0x130]
  30b216: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x30b284 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x208>
  30b218: 58a2         	ldr	r2, [r4, r2]
  30b21a: 6812         	ldr	r2, [r2]
  30b21c: 4608         	mov	r0, r1
  30b21e: 4611         	mov	r1, r2
  30b220: 4798         	blx	r3
  30b222: 9b01         	ldr	r3, [sp, #0x4]
  30b224: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  30b228: 681b         	ldr	r3, [r3]
  30b22a: 3340         	adds	r3, #0x40
  30b22c: 681b         	ldr	r3, [r3]
  30b22e: 9a01         	ldr	r2, [sp, #0x4]
  30b230: f8d2 1134    	ldr.w	r1, [r2, #0x134]
  30b234: 4a14         	ldr	r2, [pc, #0x50]         @ 0x30b288 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x20c>
  30b236: 58a2         	ldr	r2, [r4, r2]
  30b238: 6812         	ldr	r2, [r2]
  30b23a: 4608         	mov	r0, r1
  30b23c: 4611         	mov	r1, r2
  30b23e: 4798         	blx	r3
  30b240: 4b12         	ldr	r3, [pc, #0x48]         @ 0x30b28c <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x210>
  30b242: 58e3         	ldr	r3, [r4, r3]
  30b244: 681b         	ldr	r3, [r3]
  30b246: 4618         	mov	r0, r3
  30b248: 210d         	movs	r1, #0xd
  30b24a: f0ec fdb9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xecb72
  30b24e: b002         	add	sp, #0x8
  30b250: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x30b251); words below are literal-pool data ---
  30b252: bf00         	nop
  30b254: 7982         	ldrb	r2, [r0, #0x6]
  30b256: 0062         	lsls	r2, r4, #0x1
  30b258: acb2         	add	r4, sp, #0x2c8
  30b25a: 004b         	lsls	r3, r1, #0x1
  30b25c: d7f0         	bvc	0x30b240 <ControlsPlacementLayer::onDefault(cocos2d::CCObject*)+0x1c4> @ imm = #-0x20
  30b25e: ffff d7ec    	<unknown>
  30b262: ffff d7f4    	<unknown>
  30b266: ffff d800    	vtbl.8	d29, {d15}, d0
  30b26a: ffff d7fc    	<unknown>
  30b26e: ffff d7f8    	<unknown>
  30b272: ffff d7d4    	<unknown>
  30b276: ffff d7d8    	<unknown>
  30b27a: ffff d7dc    	<unknown>
  30b27e: ffff d7e0    	<unknown>
  30b282: ffff d7e4    	<unknown>
  30b286: ffff d7e8    	<unknown>
  30b28a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  30b28e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ControlsPlacementLayer::onPlus
//      file offset 0x30b290 (= ELF address; Ghidra 0x31b290), 196 bytes, Thumb-2
  30b290: b530         	push	{r4, r5, lr}
  30b292: b083         	sub	sp, #0xc
  30b294: 9001         	str	r0, [sp, #0x4]
  30b296: 9100         	str	r1, [sp]
  30b298: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x30b34c <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xbc>
  30b29a: 447a         	add	r2, pc
  30b29c: 9b01         	ldr	r3, [sp, #0x4]
  30b29e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b2a2: 2b00         	cmp	r3, #0x0
  30b2a4: d045         	beq	0x30b332 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xa2> @ imm = #0x8a
  30b2a6: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x30b350 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xc0>
  30b2a8: 58d3         	ldr	r3, [r2, r3]
  30b2aa: 681b         	ldr	r3, [r3]
  30b2ac: 4618         	mov	r0, r3
  30b2ae: 210d         	movs	r1, #0xd
  30b2b0: f0ec fd86    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xecb0c
  30b2b4: 9b01         	ldr	r3, [sp, #0x4]
  30b2b6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b2ba: 681b         	ldr	r3, [r3]
  30b2bc: 3340         	adds	r3, #0x40
  30b2be: 681c         	ldr	r4, [r3]
  30b2c0: 9b01         	ldr	r3, [sp, #0x4]
  30b2c2: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  30b2c6: 9b01         	ldr	r3, [sp, #0x4]
  30b2c8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b2cc: 681b         	ldr	r3, [r3]
  30b2ce: 3344         	adds	r3, #0x44
  30b2d0: 681b         	ldr	r3, [r3]
  30b2d2: 9a01         	ldr	r2, [sp, #0x4]
  30b2d4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b2d8: 4610         	mov	r0, r2
  30b2da: 4798         	blx	r3
  30b2dc: ee07 0a90    	vmov	s15, r0
  30b2e0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30b2e4: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x30b338 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xa8>
  30b2e8: ee36 6b07    	vadd.f64	d6, d6, d7
  30b2ec: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x30b340 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xb0>
  30b2f0: eeb4 6bc7    	vcmpe.f64	d6, d7
  30b2f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  30b2f8: dd02         	ble	0x30b300 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0x70> @ imm = #0x4
  30b2fa: eddf 7a13    	vldr	s15, [pc, #76]          @ 0x30b348 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xb8>
  30b2fe: e014         	b	0x30b32a <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0x9a> @ imm = #0x28
  30b300: 9b01         	ldr	r3, [sp, #0x4]
  30b302: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b306: 681b         	ldr	r3, [r3]
  30b308: 3344         	adds	r3, #0x44
  30b30a: 681b         	ldr	r3, [r3]
  30b30c: 9a01         	ldr	r2, [sp, #0x4]
  30b30e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b312: 4610         	mov	r0, r2
  30b314: 4798         	blx	r3
  30b316: ee07 0a90    	vmov	s15, r0
  30b31a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30b31e: ed9f 7b06    	vldr	d7, [pc, #24]           @ 0x30b338 <ControlsPlacementLayer::onPlus(cocos2d::CCObject*)+0xa8>
  30b322: ee36 7b07    	vadd.f64	d7, d6, d7
  30b326: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30b32a: 4628         	mov	r0, r5
  30b32c: ee17 1a90    	vmov	r1, s15
  30b330: 47a0         	blx	r4
  30b332: b003         	add	sp, #0xc
  30b334: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30b335); words below are literal-pool data ---
  30b336: bf00         	nop
  30b338: 999a         	ldr	r1, [sp, #0x268]
  30b33a: 9999         	ldr	r1, [sp, #0x264]
  30b33c: 9999         	ldr	r1, [sp, #0x264]
  30b33e: 3fb9         	subs	r7, #0xb9
  30b340: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  30b342: cccc         	ldm	r4!, {r2, r3, r6, r7}
  30b344: cccc         	ldm	r4!, {r2, r3, r6, r7}
  30b346: 3ff4         	subs	r7, #0xf4
  30b348: 6666         	str	r6, [r4, #0x64]
  30b34a: 3fa6         	subs	r7, #0xa6
  30b34c: 776e         	strb	r6, [r5, #0x1d]
  30b34e: 0062         	lsls	r2, r4, #0x1
  30b350: d730         	bvc	0x30b3b4 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  30b352: ffff f3af    	<unknown>

// ==== ControlsPlacementLayer::onMinus
//      file offset 0x30b358 (= ELF address; Ghidra 0x31b358), 184 bytes, Thumb-2
  30b358: b530         	push	{r4, r5, lr}
  30b35a: b083         	sub	sp, #0xc
  30b35c: 9001         	str	r0, [sp, #0x4]
  30b35e: 9100         	str	r1, [sp]
  30b360: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x30b408 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0xb0>
  30b362: 447a         	add	r2, pc
  30b364: 9b01         	ldr	r3, [sp, #0x4]
  30b366: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b36a: 2b00         	cmp	r3, #0x0
  30b36c: d045         	beq	0x30b3fa <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0xa2> @ imm = #0x8a
  30b36e: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x30b40c <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0xb4>
  30b370: 58d3         	ldr	r3, [r2, r3]
  30b372: 681b         	ldr	r3, [r3]
  30b374: 4618         	mov	r0, r3
  30b376: 210d         	movs	r1, #0xd
  30b378: f0ec fd22    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xeca44
  30b37c: 9b01         	ldr	r3, [sp, #0x4]
  30b37e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b382: 681b         	ldr	r3, [r3]
  30b384: 3340         	adds	r3, #0x40
  30b386: 681c         	ldr	r4, [r3]
  30b388: 9b01         	ldr	r3, [sp, #0x4]
  30b38a: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  30b38e: 9b01         	ldr	r3, [sp, #0x4]
  30b390: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b394: 681b         	ldr	r3, [r3]
  30b396: 3344         	adds	r3, #0x44
  30b398: 681b         	ldr	r3, [r3]
  30b39a: 9a01         	ldr	r2, [sp, #0x4]
  30b39c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b3a0: 4610         	mov	r0, r2
  30b3a2: 4798         	blx	r3
  30b3a4: ee07 0a90    	vmov	s15, r0
  30b3a8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30b3ac: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x30b400 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0xa8>
  30b3b0: ee36 6b47    	vsub.f64	d6, d6, d7
  30b3b4: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  30b3b8: eeb4 6bc7    	vcmpe.f64	d6, d7
  30b3bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  30b3c0: d502         	bpl	0x30b3c8 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0x70> @ imm = #0x4
  30b3c2: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  30b3c6: e014         	b	0x30b3f2 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0x9a> @ imm = #0x28
  30b3c8: 9b01         	ldr	r3, [sp, #0x4]
  30b3ca: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b3ce: 681b         	ldr	r3, [r3]
  30b3d0: 3344         	adds	r3, #0x44
  30b3d2: 681b         	ldr	r3, [r3]
  30b3d4: 9a01         	ldr	r2, [sp, #0x4]
  30b3d6: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b3da: 4610         	mov	r0, r2
  30b3dc: 4798         	blx	r3
  30b3de: ee07 0a90    	vmov	s15, r0
  30b3e2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  30b3e6: ed9f 7b06    	vldr	d7, [pc, #24]           @ 0x30b400 <ControlsPlacementLayer::onMinus(cocos2d::CCObject*)+0xa8>
  30b3ea: ee36 7b47    	vsub.f64	d7, d6, d7
  30b3ee: eef7 7bc7    	vcvt.f32.f64	s15, d7
  30b3f2: 4628         	mov	r0, r5
  30b3f4: ee17 1a90    	vmov	r1, s15
  30b3f8: 47a0         	blx	r4
  30b3fa: b003         	add	sp, #0xc
  30b3fc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x30b3fd); words below are literal-pool data ---
  30b3fe: bf00         	nop
  30b400: 999a         	ldr	r1, [sp, #0x268]
  30b402: 9999         	ldr	r1, [sp, #0x264]
  30b404: 9999         	ldr	r1, [sp, #0x264]
  30b406: 3fb9         	subs	r7, #0xb9
  30b408: 76a6         	strb	r6, [r4, #0x1a]
  30b40a: 0062         	lsls	r2, r4, #0x1
  30b40c: d730         	bvc	0x30b470 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x60> @ imm = #0x60
  30b40e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ControlsPlacementLayer::selectItem
//      file offset 0x30b410 (= ELF address; Ghidra 0x31b410), 314 bytes, Thumb-2
  30b410: b510         	push	{r4, lr}
  30b412: ed2d 8b02    	vpush	{d8}
  30b416: b086         	sub	sp, #0x18
  30b418: 9003         	str	r0, [sp, #0xc]
  30b41a: 9102         	str	r1, [sp, #0x8]
  30b41c: 9201         	str	r2, [sp, #0x4]
  30b41e: 9300         	str	r3, [sp]
  30b420: 9b02         	ldr	r3, [sp, #0x8]
  30b422: 681b         	ldr	r3, [r3]
  30b424: 3350         	adds	r3, #0x50
  30b426: 681b         	ldr	r3, [r3]
  30b428: 9a02         	ldr	r2, [sp, #0x8]
  30b42a: 4610         	mov	r0, r2
  30b42c: 4798         	blx	r3
  30b42e: 4603         	mov	r3, r0
  30b430: 4618         	mov	r0, r3
  30b432: 9901         	ldr	r1, [sp, #0x4]
  30b434: f2d6 f988    	bl	0x5e1748 <cocos2d::ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&)> @ imm = #0x2d6310
  30b438: ee08 0a10    	vmov	s16, r0
  30b43c: 9b02         	ldr	r3, [sp, #0x8]
  30b43e: 681b         	ldr	r3, [r3]
  30b440: 338c         	adds	r3, #0x8c
  30b442: 681b         	ldr	r3, [r3]
  30b444: 9a02         	ldr	r2, [sp, #0x8]
  30b446: 4610         	mov	r0, r2
  30b448: 4798         	blx	r3
  30b44a: 4603         	mov	r3, r0
  30b44c: edd3 7a00    	vldr	s15, [r3]
  30b450: eeb4 8ae7    	vcmpe.f32	s16, s15
  30b454: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  30b458: d506         	bpl	0x30b468 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x58> @ imm = #0xc
  30b45a: 9b03         	ldr	r3, [sp, #0xc]
  30b45c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  30b460: 2b00         	cmp	r3, #0x0
  30b462: d101         	bne	0x30b468 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x58> @ imm = #0x2
  30b464: 2301         	movs	r3, #0x1
  30b466: e000         	b	0x30b46a <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x5a> @ imm = #0x0
  30b468: 2300         	movs	r3, #0x0
  30b46a: 2b00         	cmp	r3, #0x0
  30b46c: d067         	beq	0x30b53e <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x12e> @ imm = #0xce
  30b46e: 9803         	ldr	r0, [sp, #0xc]
  30b470: f000 f86c    	bl	0x30b54c <ControlsPlacementLayer::deSelectItem()> @ imm = #0xd8
  30b474: 9b03         	ldr	r3, [sp, #0xc]
  30b476: 9a02         	ldr	r2, [sp, #0x8]
  30b478: f8c3 2118    	str.w	r2, [r3, #0x118]
  30b47c: 9b03         	ldr	r3, [sp, #0xc]
  30b47e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b482: 681b         	ldr	r3, [r3]
  30b484: f503 73d2    	add.w	r3, r3, #0x1a4
  30b488: 681b         	ldr	r3, [r3]
  30b48a: 9a03         	ldr	r2, [sp, #0xc]
  30b48c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b490: 4610         	mov	r0, r2
  30b492: 21ff         	movs	r1, #0xff
  30b494: 4798         	blx	r3
  30b496: 9b03         	ldr	r3, [sp, #0xc]
  30b498: 9a00         	ldr	r2, [sp]
  30b49a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  30b49e: 9b03         	ldr	r3, [sp, #0xc]
  30b4a0: f503 7490    	add.w	r4, r3, #0x120
  30b4a4: 9b03         	ldr	r3, [sp, #0xc]
  30b4a6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b4aa: 681b         	ldr	r3, [r3]
  30b4ac: 3350         	adds	r3, #0x50
  30b4ae: 681b         	ldr	r3, [r3]
  30b4b0: 9a03         	ldr	r2, [sp, #0xc]
  30b4b2: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b4b6: 4610         	mov	r0, r2
  30b4b8: 4798         	blx	r3
  30b4ba: 4603         	mov	r3, r0
  30b4bc: aa04         	add	r2, sp, #0x10
  30b4be: 4610         	mov	r0, r2
  30b4c0: 4619         	mov	r1, r3
  30b4c2: 9a01         	ldr	r2, [sp, #0x4]
  30b4c4: f7fd fbae    	bl	0x308c24 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x280> @ imm = #-0x28a4
  30b4c8: ab04         	add	r3, sp, #0x10
  30b4ca: 4620         	mov	r0, r4
  30b4cc: 4619         	mov	r1, r3
  30b4ce: f287 fc3d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x28787a
  30b4d2: 9b03         	ldr	r3, [sp, #0xc]
  30b4d4: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30b4d8: 681b         	ldr	r3, [r3]
  30b4da: f503 73d2    	add.w	r3, r3, #0x1a4
  30b4de: 681b         	ldr	r3, [r3]
  30b4e0: 9a03         	ldr	r2, [sp, #0xc]
  30b4e2: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  30b4e6: 4610         	mov	r0, r2
  30b4e8: 21ff         	movs	r1, #0xff
  30b4ea: 4798         	blx	r3
  30b4ec: 9b03         	ldr	r3, [sp, #0xc]
  30b4ee: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30b4f2: 681b         	ldr	r3, [r3]
  30b4f4: f503 73d2    	add.w	r3, r3, #0x1a4
  30b4f8: 681b         	ldr	r3, [r3]
  30b4fa: 9a03         	ldr	r2, [sp, #0xc]
  30b4fc: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  30b500: 4610         	mov	r0, r2
  30b502: 21ff         	movs	r1, #0xff
  30b504: 4798         	blx	r3
  30b506: 9b03         	ldr	r3, [sp, #0xc]
  30b508: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30b50c: 681b         	ldr	r3, [r3]
  30b50e: f503 73d2    	add.w	r3, r3, #0x1a4
  30b512: 681b         	ldr	r3, [r3]
  30b514: 9a03         	ldr	r2, [sp, #0xc]
  30b516: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30b51a: 4610         	mov	r0, r2
  30b51c: 21ff         	movs	r1, #0xff
  30b51e: 4798         	blx	r3
  30b520: 9b03         	ldr	r3, [sp, #0xc]
  30b522: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30b526: 681b         	ldr	r3, [r3]
  30b528: f503 73d2    	add.w	r3, r3, #0x1a4
  30b52c: 681b         	ldr	r3, [r3]
  30b52e: 9a03         	ldr	r2, [sp, #0xc]
  30b530: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30b534: 4610         	mov	r0, r2
  30b536: 21ff         	movs	r1, #0xff
  30b538: 4798         	blx	r3
  30b53a: 2301         	movs	r3, #0x1
  30b53c: e000         	b	0x30b540 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)+0x130> @ imm = #0x0
  30b53e: 2300         	movs	r3, #0x0
  30b540: 4618         	mov	r0, r3
  30b542: b006         	add	sp, #0x18
  30b544: ecbd 8b02    	vpop	{d8}
  30b548: bd10         	pop	{r4, pc}

// ==== ControlsPlacementLayer::deSelectItem
//      file offset 0x30b54c (= ELF address; Ghidra 0x31b54c), 160 bytes, Thumb-2
  30b54c: b500         	push	{lr}
  30b54e: b083         	sub	sp, #0xc
  30b550: 9001         	str	r0, [sp, #0x4]
  30b552: 9b01         	ldr	r3, [sp, #0x4]
  30b554: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b558: 2b00         	cmp	r3, #0x0
  30b55a: d044         	beq	0x30b5e6 <ControlsPlacementLayer::deSelectItem()+0x9a> @ imm = #0x88
  30b55c: 9b01         	ldr	r3, [sp, #0x4]
  30b55e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b562: 681b         	ldr	r3, [r3]
  30b564: f503 73d2    	add.w	r3, r3, #0x1a4
  30b568: 681b         	ldr	r3, [r3]
  30b56a: 9a01         	ldr	r2, [sp, #0x4]
  30b56c: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  30b570: 4610         	mov	r0, r2
  30b572: 2196         	movs	r1, #0x96
  30b574: 4798         	blx	r3
  30b576: 9b01         	ldr	r3, [sp, #0x4]
  30b578: 2200         	movs	r2, #0x0
  30b57a: f8c3 2118    	str.w	r2, [r3, #0x118]
  30b57e: 9b01         	ldr	r3, [sp, #0x4]
  30b580: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  30b584: 681b         	ldr	r3, [r3]
  30b586: f503 73d2    	add.w	r3, r3, #0x1a4
  30b58a: 681b         	ldr	r3, [r3]
  30b58c: 9a01         	ldr	r2, [sp, #0x4]
  30b58e: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  30b592: 4610         	mov	r0, r2
  30b594: 2164         	movs	r1, #0x64
  30b596: 4798         	blx	r3
  30b598: 9b01         	ldr	r3, [sp, #0x4]
  30b59a: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  30b59e: 681b         	ldr	r3, [r3]
  30b5a0: f503 73d2    	add.w	r3, r3, #0x1a4
  30b5a4: 681b         	ldr	r3, [r3]
  30b5a6: 9a01         	ldr	r2, [sp, #0x4]
  30b5a8: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  30b5ac: 4610         	mov	r0, r2
  30b5ae: 2164         	movs	r1, #0x64
  30b5b0: 4798         	blx	r3
  30b5b2: 9b01         	ldr	r3, [sp, #0x4]
  30b5b4: f8d3 3158    	ldr.w	r3, [r3, #0x158]
  30b5b8: 681b         	ldr	r3, [r3]
  30b5ba: f503 73d2    	add.w	r3, r3, #0x1a4
  30b5be: 681b         	ldr	r3, [r3]
  30b5c0: 9a01         	ldr	r2, [sp, #0x4]
  30b5c2: f8d2 2158    	ldr.w	r2, [r2, #0x158]
  30b5c6: 4610         	mov	r0, r2
  30b5c8: 2164         	movs	r1, #0x64
  30b5ca: 4798         	blx	r3
  30b5cc: 9b01         	ldr	r3, [sp, #0x4]
  30b5ce: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  30b5d2: 681b         	ldr	r3, [r3]
  30b5d4: f503 73d2    	add.w	r3, r3, #0x1a4
  30b5d8: 681b         	ldr	r3, [r3]
  30b5da: 9a01         	ldr	r2, [sp, #0x4]
  30b5dc: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  30b5e0: 4610         	mov	r0, r2
  30b5e2: 2164         	movs	r1, #0x64
  30b5e4: 4798         	blx	r3
  30b5e6: b003         	add	sp, #0xc
  30b5e8: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::cancelTouches
//      file offset 0x30b5ec (= ELF address; Ghidra 0x31b5ec), 66 bytes, Thumb-2
  30b5ec: b510         	push	{r4, lr}
  30b5ee: b084         	sub	sp, #0x10
  30b5f0: 9001         	str	r0, [sp, #0x4]
  30b5f2: 9b01         	ldr	r3, [sp, #0x4]
  30b5f4: 2200         	movs	r2, #0x0
  30b5f6: f8c3 211c    	str.w	r2, [r3, #0x11c]
  30b5fa: 9b01         	ldr	r3, [sp, #0x4]
  30b5fc: 2200         	movs	r2, #0x0
  30b5fe: f8c3 2118    	str.w	r2, [r3, #0x118]
  30b602: 9b01         	ldr	r3, [sp, #0x4]
  30b604: f503 7490    	add.w	r4, r3, #0x120
  30b608: ab02         	add	r3, sp, #0x8
  30b60a: 4618         	mov	r0, r3
  30b60c: f04f 0100    	mov.w	r1, #0x0
  30b610: f04f 0200    	mov.w	r2, #0x0
  30b614: f287 fb6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2876d8
  30b618: ab02         	add	r3, sp, #0x8
  30b61a: 4620         	mov	r0, r4
  30b61c: 4619         	mov	r1, r3
  30b61e: f287 fb95    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x28772a
  30b622: 9b01         	ldr	r3, [sp, #0x4]
  30b624: 2200         	movs	r2, #0x0
  30b626: f883 2170    	strb.w	r2, [r3, #0x170]
  30b62a: b004         	add	sp, #0x10
  30b62c: bd10         	pop	{r4, pc}

// ==== ControlsPlacementLayer::touchBeganHandler
//      file offset 0x30b630 (= ELF address; Ghidra 0x31b630), 224 bytes, Thumb-2
  30b630: b510         	push	{r4, lr}
  30b632: b086         	sub	sp, #0x18
  30b634: 9003         	str	r0, [sp, #0xc]
  30b636: 9102         	str	r1, [sp, #0x8]
  30b638: 9201         	str	r2, [sp, #0x4]
  30b63a: 9b03         	ldr	r3, [sp, #0xc]
  30b63c: f8d3 4128    	ldr.w	r4, [r3, #0x128]
  30b640: ab04         	add	r3, sp, #0x10
  30b642: 4618         	mov	r0, r3
  30b644: 9902         	ldr	r1, [sp, #0x8]
  30b646: f287 fb61    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x2876c2
  30b64a: ab04         	add	r3, sp, #0x10
  30b64c: 9803         	ldr	r0, [sp, #0xc]
  30b64e: 4621         	mov	r1, r4
  30b650: 461a         	mov	r2, r3
  30b652: 9b01         	ldr	r3, [sp, #0x4]
  30b654: f7ff fedc    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x248
  30b658: 4603         	mov	r3, r0
  30b65a: 2b00         	cmp	r3, #0x0
  30b65c: d156         	bne	0x30b70c <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)+0xdc> @ imm = #0xac
  30b65e: 9b03         	ldr	r3, [sp, #0xc]
  30b660: f8d3 412c    	ldr.w	r4, [r3, #0x12c]
  30b664: ab04         	add	r3, sp, #0x10
  30b666: 4618         	mov	r0, r3
  30b668: 9902         	ldr	r1, [sp, #0x8]
  30b66a: f287 fb4f    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x28769e
  30b66e: ab04         	add	r3, sp, #0x10
  30b670: 9803         	ldr	r0, [sp, #0xc]
  30b672: 4621         	mov	r1, r4
  30b674: 461a         	mov	r2, r3
  30b676: 9b01         	ldr	r3, [sp, #0x4]
  30b678: f7ff feca    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x26c
  30b67c: 4603         	mov	r3, r0
  30b67e: 2b00         	cmp	r3, #0x0
  30b680: d144         	bne	0x30b70c <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)+0xdc> @ imm = #0x88
  30b682: 9b03         	ldr	r3, [sp, #0xc]
  30b684: f8d3 4130    	ldr.w	r4, [r3, #0x130]
  30b688: ab04         	add	r3, sp, #0x10
  30b68a: 4618         	mov	r0, r3
  30b68c: 9902         	ldr	r1, [sp, #0x8]
  30b68e: f287 fb3d    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x28767a
  30b692: ab04         	add	r3, sp, #0x10
  30b694: 9803         	ldr	r0, [sp, #0xc]
  30b696: 4621         	mov	r1, r4
  30b698: 461a         	mov	r2, r3
  30b69a: 9b01         	ldr	r3, [sp, #0x4]
  30b69c: f7ff feb8    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x290
  30b6a0: 4603         	mov	r3, r0
  30b6a2: 2b00         	cmp	r3, #0x0
  30b6a4: d132         	bne	0x30b70c <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)+0xdc> @ imm = #0x64
  30b6a6: 9b03         	ldr	r3, [sp, #0xc]
  30b6a8: f8d3 4134    	ldr.w	r4, [r3, #0x134]
  30b6ac: ab04         	add	r3, sp, #0x10
  30b6ae: 4618         	mov	r0, r3
  30b6b0: 9902         	ldr	r1, [sp, #0x8]
  30b6b2: f287 fb2b    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x287656
  30b6b6: ab04         	add	r3, sp, #0x10
  30b6b8: 9803         	ldr	r0, [sp, #0xc]
  30b6ba: 4621         	mov	r1, r4
  30b6bc: 461a         	mov	r2, r3
  30b6be: 9b01         	ldr	r3, [sp, #0x4]
  30b6c0: f7ff fea6    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x2b4
  30b6c4: 4603         	mov	r3, r0
  30b6c6: 2b00         	cmp	r3, #0x0
  30b6c8: d120         	bne	0x30b70c <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)+0xdc> @ imm = #0x40
  30b6ca: 9b03         	ldr	r3, [sp, #0xc]
  30b6cc: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  30b6d0: ab04         	add	r3, sp, #0x10
  30b6d2: 4618         	mov	r0, r3
  30b6d4: 9902         	ldr	r1, [sp, #0x8]
  30b6d6: f287 fb19    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x287632
  30b6da: ab04         	add	r3, sp, #0x10
  30b6dc: 9803         	ldr	r0, [sp, #0xc]
  30b6de: 4621         	mov	r1, r4
  30b6e0: 461a         	mov	r2, r3
  30b6e2: 9b01         	ldr	r3, [sp, #0x4]
  30b6e4: f7ff fe94    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x2d8
  30b6e8: 4603         	mov	r3, r0
  30b6ea: 2b00         	cmp	r3, #0x0
  30b6ec: d10e         	bne	0x30b70c <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)+0xdc> @ imm = #0x1c
  30b6ee: 9b03         	ldr	r3, [sp, #0xc]
  30b6f0: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  30b6f4: ab04         	add	r3, sp, #0x10
  30b6f6: 4618         	mov	r0, r3
  30b6f8: 9902         	ldr	r1, [sp, #0x8]
  30b6fa: f287 fb07    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x28760e
  30b6fe: ab04         	add	r3, sp, #0x10
  30b700: 9803         	ldr	r0, [sp, #0xc]
  30b702: 4621         	mov	r1, r4
  30b704: 461a         	mov	r2, r3
  30b706: 9b01         	ldr	r3, [sp, #0x4]
  30b708: f7ff fe82    	bl	0x30b410 <ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long)> @ imm = #-0x2fc
  30b70c: b006         	add	sp, #0x18
  30b70e: bd10         	pop	{r4, pc}

// ==== ControlsPlacementLayer::touchMoveHandler
//      file offset 0x30b710 (= ELF address; Ghidra 0x31b710), 88 bytes, Thumb-2
  30b710: b530         	push	{r4, r5, lr}
  30b712: b087         	sub	sp, #0x1c
  30b714: 9003         	str	r0, [sp, #0xc]
  30b716: 9102         	str	r1, [sp, #0x8]
  30b718: 9201         	str	r2, [sp, #0x4]
  30b71a: 9b03         	ldr	r3, [sp, #0xc]
  30b71c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b720: 2b00         	cmp	r3, #0x0
  30b722: d01f         	beq	0x30b764 <ControlsPlacementLayer::touchMoveHandler(cocos2d::CCPoint, long)+0x54> @ imm = #0x3e
  30b724: 9b03         	ldr	r3, [sp, #0xc]
  30b726: f8d3 211c    	ldr.w	r2, [r3, #0x11c]
  30b72a: 9b01         	ldr	r3, [sp, #0x4]
  30b72c: 429a         	cmp	r2, r3
  30b72e: d119         	bne	0x30b764 <ControlsPlacementLayer::touchMoveHandler(cocos2d::CCPoint, long)+0x54> @ imm = #0x32
  30b730: 9b03         	ldr	r3, [sp, #0xc]
  30b732: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b736: 681b         	ldr	r3, [r3]
  30b738: 334c         	adds	r3, #0x4c
  30b73a: 681c         	ldr	r4, [r3]
  30b73c: 9b03         	ldr	r3, [sp, #0xc]
  30b73e: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  30b742: 9b03         	ldr	r3, [sp, #0xc]
  30b744: f503 7390    	add.w	r3, r3, #0x120
  30b748: aa04         	add	r2, sp, #0x10
  30b74a: 4610         	mov	r0, r2
  30b74c: 9902         	ldr	r1, [sp, #0x8]
  30b74e: 461a         	mov	r2, r3
  30b750: f7fd fa58    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x2b50
  30b754: ab04         	add	r3, sp, #0x10
  30b756: 4628         	mov	r0, r5
  30b758: 4619         	mov	r1, r3
  30b75a: 47a0         	blx	r4
  30b75c: 9b03         	ldr	r3, [sp, #0xc]
  30b75e: 2201         	movs	r2, #0x1
  30b760: f883 2170    	strb.w	r2, [r3, #0x170]
  30b764: b007         	add	sp, #0x1c
  30b766: bd30         	pop	{r4, r5, pc}

// ==== ControlsPlacementLayer::touchEndHandler
//      file offset 0x30b768 (= ELF address; Ghidra 0x31b768), 228 bytes, Thumb-2
  30b768: b570         	push	{r4, r5, r6, lr}
  30b76a: b08a         	sub	sp, #0x28
  30b76c: 9003         	str	r0, [sp, #0xc]
  30b76e: 9102         	str	r1, [sp, #0x8]
  30b770: 9201         	str	r2, [sp, #0x4]
  30b772: 4c34         	ldr	r4, [pc, #0xd0]         @ 0x30b844 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)+0xdc>
  30b774: 447c         	add	r4, pc
  30b776: 9b03         	ldr	r3, [sp, #0xc]
  30b778: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b77c: 2b00         	cmp	r3, #0x0
  30b77e: d05f         	beq	0x30b840 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)+0xd8> @ imm = #0xbe
  30b780: 9b03         	ldr	r3, [sp, #0xc]
  30b782: f8d3 211c    	ldr.w	r2, [r3, #0x11c]
  30b786: 9b01         	ldr	r3, [sp, #0x4]
  30b788: 429a         	cmp	r2, r3
  30b78a: d159         	bne	0x30b840 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)+0xd8> @ imm = #0xb2
  30b78c: 9b03         	ldr	r3, [sp, #0xc]
  30b78e: f893 3170    	ldrb.w	r3, [r3, #0x170]
  30b792: 2b00         	cmp	r3, #0x0
  30b794: d045         	beq	0x30b822 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)+0xba> @ imm = #0x8a
  30b796: 9b03         	ldr	r3, [sp, #0xc]
  30b798: f503 7390    	add.w	r3, r3, #0x120
  30b79c: aa06         	add	r2, sp, #0x18
  30b79e: 4610         	mov	r0, r2
  30b7a0: 9902         	ldr	r1, [sp, #0x8]
  30b7a2: 461a         	mov	r2, r3
  30b7a4: f7fd fa2e    	bl	0x308c04 <ControlsLayer::onPrevRightInv(cocos2d::CCObject*)+0x260> @ imm = #-0x2ba4
  30b7a8: ed9d 7a06    	vldr	s14, [sp, #24]
  30b7ac: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  30b7b0: eec7 7a27    	vdiv.f32	s15, s14, s15
  30b7b4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30b7b8: ee17 3a90    	vmov	r3, s15
  30b7bc: 9304         	str	r3, [sp, #0x10]
  30b7be: ed9d 7a07    	vldr	s14, [sp, #28]
  30b7c2: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  30b7c6: eec7 7a27    	vdiv.f32	s15, s14, s15
  30b7ca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  30b7ce: ee17 3a90    	vmov	r3, s15
  30b7d2: 9305         	str	r3, [sp, #0x14]
  30b7d4: 9b03         	ldr	r3, [sp, #0xc]
  30b7d6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  30b7da: 681b         	ldr	r3, [r3]
  30b7dc: 334c         	adds	r3, #0x4c
  30b7de: 681d         	ldr	r5, [r3]
  30b7e0: 9b03         	ldr	r3, [sp, #0xc]
  30b7e2: f8d3 6118    	ldr.w	r6, [r3, #0x118]
  30b7e6: 9a04         	ldr	r2, [sp, #0x10]
  30b7e8: 4613         	mov	r3, r2
  30b7ea: 009b         	lsls	r3, r3, #0x2
  30b7ec: 4413         	add	r3, r2
  30b7ee: 005b         	lsls	r3, r3, #0x1
  30b7f0: ee06 3a90    	vmov	s13, r3
  30b7f4: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  30b7f8: 9a05         	ldr	r2, [sp, #0x14]
  30b7fa: 4613         	mov	r3, r2
  30b7fc: 009b         	lsls	r3, r3, #0x2
  30b7fe: 4413         	add	r3, r2
  30b800: 005b         	lsls	r3, r3, #0x1
  30b802: ee06 3a90    	vmov	s13, r3
  30b806: eef8 7ae6    	vcvt.f32.s32	s15, s13
  30b80a: ab08         	add	r3, sp, #0x20
  30b80c: 4618         	mov	r0, r3
  30b80e: ee17 1a10    	vmov	r1, s14
  30b812: ee17 2a90    	vmov	r2, s15
  30b816: f287 fa6b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2874d6
  30b81a: ab08         	add	r3, sp, #0x20
  30b81c: 4630         	mov	r0, r6
  30b81e: 4619         	mov	r1, r3
  30b820: 47a8         	blx	r5
  30b822: 9b03         	ldr	r3, [sp, #0xc]
  30b824: 2200         	movs	r2, #0x0
  30b826: f8c3 211c    	str.w	r2, [r3, #0x11c]
  30b82a: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x30b848 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)+0xe0>
  30b82c: 58e3         	ldr	r3, [r4, r3]
  30b82e: 681b         	ldr	r3, [r3]
  30b830: 4618         	mov	r0, r3
  30b832: 210e         	movs	r1, #0xe
  30b834: f0ec fac4    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xec588
  30b838: 9b03         	ldr	r3, [sp, #0xc]
  30b83a: 2200         	movs	r2, #0x0
  30b83c: f883 2170    	strb.w	r2, [r3, #0x170]
  30b840: b00a         	add	sp, #0x28
  30b842: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x30b843); words below are literal-pool data ---
  30b844: 7294         	strb	r4, [r2, #0xa]
  30b846: 0062         	lsls	r2, r4, #0x1
  30b848: d730         	bvc	0x30b8ac <ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x40> @ imm = #0x60
  30b84a: ffff b500    	<unknown>

// ==== ControlsPlacementLayer::ccTouchesCancelled
//      file offset 0x30b84c (= ELF address; Ghidra 0x31b84c), 22 bytes, Thumb-2
  30b84c: b500         	push	{lr}
  30b84e: b085         	sub	sp, #0x14
  30b850: 9003         	str	r0, [sp, #0xc]
  30b852: 9102         	str	r1, [sp, #0x8]
  30b854: 9201         	str	r2, [sp, #0x4]
  30b856: 9803         	ldr	r0, [sp, #0xc]
  30b858: f7ff fec8    	bl	0x30b5ec <ControlsPlacementLayer::cancelTouches()> @ imm = #-0x270
  30b85c: b005         	add	sp, #0x14
  30b85e: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::ccTouchesCancelled
//      file offset 0x30b864 (= ELF address; Ghidra 0x31b864), 8 bytes, Thumb-2
  30b864: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30b868: f7ff bff0    	b.w	0x30b84c <ControlsPlacementLayer::ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0x20

// ==== ControlsPlacementLayer::ccTouchesBegan
//      file offset 0x30b86c (= ELF address; Ghidra 0x31b86c), 164 bytes, Thumb-2
  30b86c: b500         	push	{lr}
  30b86e: b08d         	sub	sp, #0x34
  30b870: 9003         	str	r0, [sp, #0xc]
  30b872: 9102         	str	r1, [sp, #0x8]
  30b874: 9201         	str	r2, [sp, #0x4]
  30b876: ab05         	add	r3, sp, #0x14
  30b878: 4618         	mov	r0, r3
  30b87a: f000 f8f9    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #0x1f2
  30b87e: 9802         	ldr	r0, [sp, #0x8]
  30b880: f28c fd7c    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x28caf8
  30b884: 4603         	mov	r3, r0
  30b886: 9305         	str	r3, [sp, #0x14]
  30b888: e031         	b	0x30b8ee <ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x82> @ imm = #0x62
  30b88a: ab05         	add	r3, sp, #0x14
  30b88c: 4618         	mov	r0, r3
  30b88e: f000 f91d    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #0x23a
  30b892: 4603         	mov	r3, r0
  30b894: 681b         	ldr	r3, [r3]
  30b896: 9306         	str	r3, [sp, #0x18]
  30b898: 9b06         	ldr	r3, [sp, #0x18]
  30b89a: 2b00         	cmp	r3, #0x0
  30b89c: d035         	beq	0x30b90a <ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x9e> @ imm = #0x6a
  30b89e: ab08         	add	r3, sp, #0x20
  30b8a0: 4618         	mov	r0, r3
  30b8a2: 9906         	ldr	r1, [sp, #0x18]
  30b8a4: f2f5 fa40    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x2f5480
  30b8a8: f28f fe64    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28fcc8
  30b8ac: 4602         	mov	r2, r0
  30b8ae: a90a         	add	r1, sp, #0x28
  30b8b0: ab08         	add	r3, sp, #0x20
  30b8b2: 4608         	mov	r0, r1
  30b8b4: 4611         	mov	r1, r2
  30b8b6: 461a         	mov	r2, r3
  30b8b8: f290 fc10    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x290820
  30b8bc: aa08         	add	r2, sp, #0x20
  30b8be: ab0a         	add	r3, sp, #0x28
  30b8c0: 4610         	mov	r0, r2
  30b8c2: 4619         	mov	r1, r3
  30b8c4: f287 fa42    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x287484
  30b8c8: 9b06         	ldr	r3, [sp, #0x18]
  30b8ca: 9307         	str	r3, [sp, #0x1c]
  30b8cc: aa0a         	add	r2, sp, #0x28
  30b8ce: ab08         	add	r3, sp, #0x20
  30b8d0: 4610         	mov	r0, r2
  30b8d2: 4619         	mov	r1, r3
  30b8d4: f287 fa1a    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x287434
  30b8d8: ab0a         	add	r3, sp, #0x28
  30b8da: 9803         	ldr	r0, [sp, #0xc]
  30b8dc: 4619         	mov	r1, r3
  30b8de: 9a07         	ldr	r2, [sp, #0x1c]
  30b8e0: f7ff fea6    	bl	0x30b630 <ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long)> @ imm = #-0x2b4
  30b8e4: ab05         	add	r3, sp, #0x14
  30b8e6: 4618         	mov	r0, r3
  30b8e8: 2100         	movs	r1, #0x0
  30b8ea: f000 f8db    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #0x1b6
  30b8ee: 9802         	ldr	r0, [sp, #0x8]
  30b8f0: f28c fd52    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x28caa4
  30b8f4: 4603         	mov	r3, r0
  30b8f6: 930a         	str	r3, [sp, #0x28]
  30b8f8: aa05         	add	r2, sp, #0x14
  30b8fa: ab0a         	add	r3, sp, #0x28
  30b8fc: 4610         	mov	r0, r2
  30b8fe: 4619         	mov	r1, r3
  30b900: f000 f8c0    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #0x180
  30b904: 4603         	mov	r3, r0
  30b906: 2b00         	cmp	r3, #0x0
  30b908: d1bf         	bne	0x30b88a <ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x82
  30b90a: b00d         	add	sp, #0x34
  30b90c: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::ccTouchesBegan
//      file offset 0x30b910 (= ELF address; Ghidra 0x31b910), 8 bytes, Thumb-2
  30b910: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30b914: f7ff bfaa    	b.w	0x30b86c <ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xac

// ==== ControlsPlacementLayer::ccTouchesMoved
//      file offset 0x30b918 (= ELF address; Ghidra 0x31b918), 164 bytes, Thumb-2
  30b918: b500         	push	{lr}
  30b91a: b08d         	sub	sp, #0x34
  30b91c: 9003         	str	r0, [sp, #0xc]
  30b91e: 9102         	str	r1, [sp, #0x8]
  30b920: 9201         	str	r2, [sp, #0x4]
  30b922: ab05         	add	r3, sp, #0x14
  30b924: 4618         	mov	r0, r3
  30b926: f000 f8a3    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #0x146
  30b92a: 9802         	ldr	r0, [sp, #0x8]
  30b92c: f28c fd26    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x28ca4c
  30b930: 4603         	mov	r3, r0
  30b932: 9305         	str	r3, [sp, #0x14]
  30b934: e031         	b	0x30b99a <ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0x82> @ imm = #0x62
  30b936: ab05         	add	r3, sp, #0x14
  30b938: 4618         	mov	r0, r3
  30b93a: f000 f8c7    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #0x18e
  30b93e: 4603         	mov	r3, r0
  30b940: 681b         	ldr	r3, [r3]
  30b942: 9306         	str	r3, [sp, #0x18]
  30b944: 9b06         	ldr	r3, [sp, #0x18]
  30b946: 2b00         	cmp	r3, #0x0
  30b948: d035         	beq	0x30b9b6 <ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0x9e> @ imm = #0x6a
  30b94a: ab08         	add	r3, sp, #0x20
  30b94c: 4618         	mov	r0, r3
  30b94e: 9906         	ldr	r1, [sp, #0x18]
  30b950: f2f5 f9ea    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x2f53d4
  30b954: f28f fe0e    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28fc1c
  30b958: 4602         	mov	r2, r0
  30b95a: a90a         	add	r1, sp, #0x28
  30b95c: ab08         	add	r3, sp, #0x20
  30b95e: 4608         	mov	r0, r1
  30b960: 4611         	mov	r1, r2
  30b962: 461a         	mov	r2, r3
  30b964: f290 fbba    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x290774
  30b968: aa08         	add	r2, sp, #0x20
  30b96a: ab0a         	add	r3, sp, #0x28
  30b96c: 4610         	mov	r0, r2
  30b96e: 4619         	mov	r1, r3
  30b970: f287 f9ec    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2873d8
  30b974: 9b06         	ldr	r3, [sp, #0x18]
  30b976: 9307         	str	r3, [sp, #0x1c]
  30b978: aa0a         	add	r2, sp, #0x28
  30b97a: ab08         	add	r3, sp, #0x20
  30b97c: 4610         	mov	r0, r2
  30b97e: 4619         	mov	r1, r3
  30b980: f287 f9c4    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x287388
  30b984: ab0a         	add	r3, sp, #0x28
  30b986: 9803         	ldr	r0, [sp, #0xc]
  30b988: 4619         	mov	r1, r3
  30b98a: 9a07         	ldr	r2, [sp, #0x1c]
  30b98c: f7ff fec0    	bl	0x30b710 <ControlsPlacementLayer::touchMoveHandler(cocos2d::CCPoint, long)> @ imm = #-0x280
  30b990: ab05         	add	r3, sp, #0x14
  30b992: 4618         	mov	r0, r3
  30b994: 2100         	movs	r1, #0x0
  30b996: f000 f885    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #0x10a
  30b99a: 9802         	ldr	r0, [sp, #0x8]
  30b99c: f28c fcfc    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x28c9f8
  30b9a0: 4603         	mov	r3, r0
  30b9a2: 930a         	str	r3, [sp, #0x28]
  30b9a4: aa05         	add	r2, sp, #0x14
  30b9a6: ab0a         	add	r3, sp, #0x28
  30b9a8: 4610         	mov	r0, r2
  30b9aa: 4619         	mov	r1, r3
  30b9ac: f000 f86a    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #0xd4
  30b9b0: 4603         	mov	r3, r0
  30b9b2: 2b00         	cmp	r3, #0x0
  30b9b4: d1bf         	bne	0x30b936 <ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x82
  30b9b6: b00d         	add	sp, #0x34
  30b9b8: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::ccTouchesMoved
//      file offset 0x30b9bc (= ELF address; Ghidra 0x31b9bc), 8 bytes, Thumb-2
  30b9bc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30b9c0: f7ff bfaa    	b.w	0x30b918 <ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xac

// ==== ControlsPlacementLayer::ccTouchesEnded
//      file offset 0x30b9c4 (= ELF address; Ghidra 0x31b9c4), 164 bytes, Thumb-2
  30b9c4: b500         	push	{lr}
  30b9c6: b08d         	sub	sp, #0x34
  30b9c8: 9003         	str	r0, [sp, #0xc]
  30b9ca: 9102         	str	r1, [sp, #0x8]
  30b9cc: 9201         	str	r2, [sp, #0x4]
  30b9ce: ab05         	add	r3, sp, #0x14
  30b9d0: 4618         	mov	r0, r3
  30b9d2: f000 f84d    	bl	0x30ba70 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator()> @ imm = #0x9a
  30b9d6: 9802         	ldr	r0, [sp, #0x8]
  30b9d8: f28c fcd0    	bl	0x59837c <cocos2d::CCSet::begin()> @ imm = #0x28c9a0
  30b9dc: 4603         	mov	r3, r0
  30b9de: 9305         	str	r3, [sp, #0x14]
  30b9e0: e031         	b	0x30ba46 <ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x82> @ imm = #0x62
  30b9e2: ab05         	add	r3, sp, #0x14
  30b9e4: 4618         	mov	r0, r3
  30b9e6: f000 f871    	bl	0x30bacc <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*() const> @ imm = #0xe2
  30b9ea: 4603         	mov	r3, r0
  30b9ec: 681b         	ldr	r3, [r3]
  30b9ee: 9306         	str	r3, [sp, #0x18]
  30b9f0: 9b06         	ldr	r3, [sp, #0x18]
  30b9f2: 2b00         	cmp	r3, #0x0
  30b9f4: d035         	beq	0x30ba62 <ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x9e> @ imm = #0x6a
  30b9f6: ab08         	add	r3, sp, #0x20
  30b9f8: 4618         	mov	r0, r3
  30b9fa: 9906         	ldr	r1, [sp, #0x18]
  30b9fc: f2f5 f994    	bl	0x600d28 <cocos2d::CCTouch::getLocationInView() const> @ imm = #0x2f5328
  30ba00: f28f fdb8    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x28fb70
  30ba04: 4602         	mov	r2, r0
  30ba06: a90a         	add	r1, sp, #0x28
  30ba08: ab08         	add	r3, sp, #0x20
  30ba0a: 4608         	mov	r0, r1
  30ba0c: 4611         	mov	r1, r2
  30ba0e: 461a         	mov	r2, r3
  30ba10: f290 fb64    	bl	0x59c0dc <cocos2d::CCDirector::convertToGL(cocos2d::CCPoint const&)> @ imm = #0x2906c8
  30ba14: aa08         	add	r2, sp, #0x20
  30ba16: ab0a         	add	r3, sp, #0x28
  30ba18: 4610         	mov	r0, r2
  30ba1a: 4619         	mov	r1, r3
  30ba1c: f287 f996    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x28732c
  30ba20: 9b06         	ldr	r3, [sp, #0x18]
  30ba22: 9307         	str	r3, [sp, #0x1c]
  30ba24: aa0a         	add	r2, sp, #0x28
  30ba26: ab08         	add	r3, sp, #0x20
  30ba28: 4610         	mov	r0, r2
  30ba2a: 4619         	mov	r1, r3
  30ba2c: f287 f96e    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x2872dc
  30ba30: ab0a         	add	r3, sp, #0x28
  30ba32: 9803         	ldr	r0, [sp, #0xc]
  30ba34: 4619         	mov	r1, r3
  30ba36: 9a07         	ldr	r2, [sp, #0x1c]
  30ba38: f7ff fe96    	bl	0x30b768 <ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long)> @ imm = #-0x2d4
  30ba3c: ab05         	add	r3, sp, #0x14
  30ba3e: 4618         	mov	r0, r3
  30ba40: 2100         	movs	r1, #0x0
  30ba42: f000 f82f    	bl	0x30baa4 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++(int)> @ imm = #0x5e
  30ba46: 9802         	ldr	r0, [sp, #0x8]
  30ba48: f28c fca6    	bl	0x598398 <cocos2d::CCSet::end()> @ imm = #0x28c94c
  30ba4c: 4603         	mov	r3, r0
  30ba4e: 930a         	str	r3, [sp, #0x28]
  30ba50: aa05         	add	r2, sp, #0x14
  30ba52: ab0a         	add	r3, sp, #0x28
  30ba54: 4610         	mov	r0, r2
  30ba56: 4619         	mov	r1, r3
  30ba58: f000 f814    	bl	0x30ba84 <std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=(std::_Rb_tree_const_iterator<cocos2d::CCObject*> const&) const> @ imm = #0x28
  30ba5c: 4603         	mov	r3, r0
  30ba5e: 2b00         	cmp	r3, #0x0
  30ba60: d1bf         	bne	0x30b9e2 <ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)+0x1e> @ imm = #-0x82
  30ba62: b00d         	add	sp, #0x34
  30ba64: f85d fb04    	ldr	pc, [sp], #4

// ==== ControlsPlacementLayer::ccTouchesEnded
//      file offset 0x30ba68 (= ELF address; Ghidra 0x31ba68), 8 bytes, Thumb-2
  30ba68: f1a0 00e4    	sub.w	r0, r0, #0xe4
  30ba6c: f7ff bfaa    	b.w	0x30b9c4 <ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)> @ imm = #-0xac
