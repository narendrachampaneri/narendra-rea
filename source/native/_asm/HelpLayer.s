// HelpLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HelpLayer.cpp

// ==== HelpLayer::create
//      file offset 0x34394c (= ELF address; Ghidra 0x35394c), 112 bytes, Thumb-2
  34394c: b510         	push	{r4, lr}
  34394e: b082         	sub	sp, #0x8
  343950: f44f 7090    	mov.w	r0, #0x120
  343954: f044 f006    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44400c
  343958: 4603         	mov	r3, r0
  34395a: 461c         	mov	r4, r3
  34395c: 4620         	mov	r0, r4
  34395e: f000 f82d    	bl	0x3439bc <HelpLayer::HelpLayer()> @ imm = #0x5a
  343962: 9401         	str	r4, [sp, #0x4]
  343964: 9b01         	ldr	r3, [sp, #0x4]
  343966: 2b00         	cmp	r3, #0x0
  343968: d00a         	beq	0x343980 <HelpLayer::create()+0x34> @ imm = #0x14
  34396a: 9b01         	ldr	r3, [sp, #0x4]
  34396c: 681b         	ldr	r3, [r3]
  34396e: 3318         	adds	r3, #0x18
  343970: 681b         	ldr	r3, [r3]
  343972: 9801         	ldr	r0, [sp, #0x4]
  343974: 4798         	blx	r3
  343976: 4603         	mov	r3, r0
  343978: 2b00         	cmp	r3, #0x0
  34397a: d001         	beq	0x343980 <HelpLayer::create()+0x34> @ imm = #0x2
  34397c: 2301         	movs	r3, #0x1
  34397e: e000         	b	0x343982 <HelpLayer::create()+0x36> @ imm = #0x0
  343980: 2300         	movs	r3, #0x0
  343982: 2b00         	cmp	r3, #0x0
  343984: d005         	beq	0x343992 <HelpLayer::create()+0x46> @ imm = #0xa
  343986: 9b01         	ldr	r3, [sp, #0x4]
  343988: 4618         	mov	r0, r3
  34398a: f254 fab7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25456e
  34398e: 9b01         	ldr	r3, [sp, #0x4]
  343990: e011         	b	0x3439b6 <HelpLayer::create()+0x6a> @ imm = #0x22
  343992: 9b01         	ldr	r3, [sp, #0x4]
  343994: 2b00         	cmp	r3, #0x0
  343996: d005         	beq	0x3439a4 <HelpLayer::create()+0x58> @ imm = #0xa
  343998: 9b01         	ldr	r3, [sp, #0x4]
  34399a: 681b         	ldr	r3, [r3]
  34399c: 3308         	adds	r3, #0x8
  34399e: 681b         	ldr	r3, [r3]
  3439a0: 9801         	ldr	r0, [sp, #0x4]
  3439a2: 4798         	blx	r3
  3439a4: 2300         	movs	r3, #0x0
  3439a6: 9301         	str	r3, [sp, #0x4]
  3439a8: 2300         	movs	r3, #0x0
  3439aa: e004         	b	0x3439b6 <HelpLayer::create()+0x6a> @ imm = #0x8
  3439ac: 4620         	mov	r0, r4
  3439ae: f044 f379    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4446f2
  3439b2: f044 f37b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4446f6
  3439b6: 4618         	mov	r0, r3
  3439b8: b002         	add	sp, #0x8
  3439ba: bd10         	pop	{r4, pc}

// ==== HelpLayer::HelpLayer
//      file offset 0x3439bc (= ELF address; Ghidra 0x3539bc), 88 bytes, Thumb-2
  3439bc: b510         	push	{r4, lr}
  3439be: b082         	sub	sp, #0x8
  3439c0: 9001         	str	r0, [sp, #0x4]
  3439c2: 4c12         	ldr	r4, [pc, #0x48]         @ 0x343a0c <HelpLayer::HelpLayer()+0x50>
  3439c4: 447c         	add	r4, pc
  3439c6: 9b01         	ldr	r3, [sp, #0x4]
  3439c8: 4618         	mov	r0, r3
  3439ca: f269 fb47    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x26968e
  3439ce: 9b01         	ldr	r3, [sp, #0x4]
  3439d0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x343a10 <HelpLayer::HelpLayer()+0x54>
  3439d2: 58a2         	ldr	r2, [r4, r2]
  3439d4: 3208         	adds	r2, #0x8
  3439d6: 601a         	str	r2, [r3]
  3439d8: 9b01         	ldr	r3, [sp, #0x4]
  3439da: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x343a10 <HelpLayer::HelpLayer()+0x54>
  3439dc: 58a2         	ldr	r2, [r4, r2]
  3439de: f502 7204    	add.w	r2, r2, #0x210
  3439e2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3439e6: 9b01         	ldr	r3, [sp, #0x4]
  3439e8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x343a10 <HelpLayer::HelpLayer()+0x54>
  3439ea: 58a2         	ldr	r2, [r4, r2]
  3439ec: f502 7210    	add.w	r2, r2, #0x240
  3439f0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3439f4: 9b01         	ldr	r3, [sp, #0x4]
  3439f6: 4a06         	ldr	r2, [pc, #0x18]         @ 0x343a10 <HelpLayer::HelpLayer()+0x54>
  3439f8: 58a2         	ldr	r2, [r4, r2]
  3439fa: f502 7213    	add.w	r2, r2, #0x24c
  3439fe: f8c3 20ec    	str.w	r2, [r3, #0xec]
  343a02: 9b01         	ldr	r3, [sp, #0x4]
  343a04: 4618         	mov	r0, r3
  343a06: b002         	add	sp, #0x8
  343a08: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x343a09); words below are literal-pool data ---
  343a0a: bf00         	nop
  343a0c: f044 005e    	orr	r0, r4, #0x5e
  343a10: db28         	blt	0x343a64 <HelpLayer::init()+0x1c> @ imm = #0x50
  343a12: ffff b500    	<unknown>

// ==== HelpLayer::scene
//      file offset 0x343a14 (= ELF address; Ghidra 0x353a14), 46 bytes, Thumb-2
  343a14: b500         	push	{lr}
  343a16: b083         	sub	sp, #0xc
  343a18: f26c f822    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x26c044
  343a1c: 4603         	mov	r3, r0
  343a1e: 9300         	str	r3, [sp]
  343a20: f7ff ff94    	bl	0x34394c <HelpLayer::create()> @ imm = #-0xd8
  343a24: 4603         	mov	r3, r0
  343a26: 9301         	str	r3, [sp, #0x4]
  343a28: 9b00         	ldr	r3, [sp]
  343a2a: 681b         	ldr	r3, [r3]
  343a2c: 33c8         	adds	r3, #0xc8
  343a2e: 681b         	ldr	r3, [r3]
  343a30: 9a00         	ldr	r2, [sp]
  343a32: 4610         	mov	r0, r2
  343a34: 9901         	ldr	r1, [sp, #0x4]
  343a36: 4798         	blx	r3
  343a38: 9b00         	ldr	r3, [sp]
  343a3a: 4618         	mov	r0, r3
  343a3c: b003         	add	sp, #0xc
  343a3e: f85d fb04    	ldr	pc, [sp], #4

// ==== HelpLayer::init
//      file offset 0x343a48 (= ELF address; Ghidra 0x353a48), 1512 bytes, Thumb-2
  343a48: b570         	push	{r4, r5, r6, lr}
  343a4a: ed2d 8b02    	vpush	{d8}
  343a4e: b0a4         	sub	sp, #0x90
  343a50: 9003         	str	r0, [sp, #0xc]
  343a52: 4c09         	ldr	r4, [pc, #0x24]         @ 0x343a78 <HelpLayer::init()+0x30>
  343a54: 447c         	add	r4, pc
  343a56: 9b03         	ldr	r3, [sp, #0xc]
  343a58: 4618         	mov	r0, r3
  343a5a: f269 fbcd    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x26979a
  343a5e: 4603         	mov	r3, r0
  343a60: f88d 3017    	strb.w	r3, [sp, #0x17]
  343a64: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  343a68: f083 0301    	eor	r3, r3, #0x1
  343a6c: b2db         	uxtb	r3, r3
  343a6e: 2b00         	cmp	r3, #0x0
  343a70: d004         	beq	0x343a7c <HelpLayer::init()+0x34> @ imm = #0x8
  343a72: 2300         	movs	r3, #0x0
  343a74: e2d2         	b	0x34401c <HelpLayer::init()+0x5d4> @ imm = #0x5a4
  343a76: bf00         	nop
  343a78: efb4 005e    	vshr.s32	q0, q7, #0xc
  343a7c: 9b03         	ldr	r3, [sp, #0xc]
  343a7e: 2200         	movs	r2, #0x0
  343a80: f883 2108    	strb.w	r2, [r3, #0x108]
  343a84: ab0e         	add	r3, sp, #0x38
  343a86: 4618         	mov	r0, r3
  343a88: f8df 3448    	ldr.w	r3, [pc, #0x448]        @ 0x343ed4 <HelpLayer::init()+0x48c>
  343a8c: 58e3         	ldr	r3, [r4, r3]
  343a8e: 4619         	mov	r1, r3
  343a90: f24f fb0e    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x24f61c
  343a94: ed9d 7a0e    	vldr	s14, [sp, #56]
  343a98: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  343a9c: eec7 6a27    	vdiv.f32	s13, s14, s15
  343aa0: ed9d 7a0f    	vldr	s14, [sp, #60]
  343aa4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  343aa8: eec7 7a27    	vdiv.f32	s15, s14, s15
  343aac: ab10         	add	r3, sp, #0x40
  343aae: 4618         	mov	r0, r3
  343ab0: ee16 1a90    	vmov	r1, s13
  343ab4: ee17 2a90    	vmov	r2, s15
  343ab8: f24f f91a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24f234
  343abc: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x343ed8 <HelpLayer::init()+0x490>
  343ac0: 447b         	add	r3, pc
  343ac2: 4618         	mov	r0, r3
  343ac4: f294 fb5e    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2946bc
  343ac8: 4602         	mov	r2, r0
  343aca: 9b03         	ldr	r3, [sp, #0xc]
  343acc: f8c3 210c    	str.w	r2, [r3, #0x10c]
  343ad0: 9b03         	ldr	r3, [sp, #0xc]
  343ad2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  343ad6: 681b         	ldr	r3, [r3]
  343ad8: 334c         	adds	r3, #0x4c
  343ada: 681b         	ldr	r3, [r3]
  343adc: 9a03         	ldr	r2, [sp, #0xc]
  343ade: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  343ae2: aa10         	add	r2, sp, #0x40
  343ae4: 4608         	mov	r0, r1
  343ae6: 4611         	mov	r1, r2
  343ae8: 4798         	blx	r3
  343aea: 9b03         	ldr	r3, [sp, #0xc]
  343aec: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  343af0: 681b         	ldr	r3, [r3]
  343af2: f503 73d2    	add.w	r3, r3, #0x1a4
  343af6: 681b         	ldr	r3, [r3]
  343af8: 9a03         	ldr	r2, [sp, #0xc]
  343afa: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  343afe: 4610         	mov	r0, r2
  343b00: 2123         	movs	r1, #0x23
  343b02: 4798         	blx	r3
  343b04: 9b03         	ldr	r3, [sp, #0xc]
  343b06: 681b         	ldr	r3, [r3]
  343b08: 33c8         	adds	r3, #0xc8
  343b0a: 681b         	ldr	r3, [r3]
  343b0c: 9903         	ldr	r1, [sp, #0xc]
  343b0e: 9a03         	ldr	r2, [sp, #0xc]
  343b10: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  343b14: 4608         	mov	r0, r1
  343b16: 4611         	mov	r1, r2
  343b18: 4798         	blx	r3
  343b1a: 9803         	ldr	r0, [sp, #0xc]
  343b1c: f000 faf0    	bl	0x344100 <HelpLayer::showWebView()> @ imm = #0x5e0
  343b20: 4bee         	ldr	r3, [pc, #0x3b8]        @ 0x343edc <HelpLayer::init()+0x494>
  343b22: 447b         	add	r3, pc
  343b24: 4618         	mov	r0, r3
  343b26: f294 fbed    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2947da
  343b2a: 4603         	mov	r3, r0
  343b2c: 9307         	str	r3, [sp, #0x1c]
  343b2e: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x343ee0 <HelpLayer::init()+0x498>
  343b30: 447b         	add	r3, pc
  343b32: 4618         	mov	r0, r3
  343b34: f294 fbe6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2947cc
  343b38: 4603         	mov	r3, r0
  343b3a: 9308         	str	r3, [sp, #0x20]
  343b3c: 9a03         	ldr	r2, [sp, #0xc]
  343b3e: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x343ee4 <HelpLayer::init()+0x49c>
  343b40: 58e3         	ldr	r3, [r4, r3]
  343b42: 9318         	str	r3, [sp, #0x60]
  343b44: 2300         	movs	r3, #0x0
  343b46: 9319         	str	r3, [sp, #0x64]
  343b48: 9b19         	ldr	r3, [sp, #0x64]
  343b4a: 9300         	str	r3, [sp]
  343b4c: 9b18         	ldr	r3, [sp, #0x60]
  343b4e: 9807         	ldr	r0, [sp, #0x1c]
  343b50: 9907         	ldr	r1, [sp, #0x1c]
  343b52: f274 fbeb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2747d6
  343b56: 4603         	mov	r3, r0
  343b58: 9309         	str	r3, [sp, #0x24]
  343b5a: 9809         	ldr	r0, [sp, #0x24]
  343b5c: 2100         	movs	r1, #0x0
  343b5e: f271 faed    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2715da
  343b62: 4602         	mov	r2, r0
  343b64: 9b03         	ldr	r3, [sp, #0xc]
  343b66: f8c3 2114    	str.w	r2, [r3, #0x114]
  343b6a: 9b03         	ldr	r3, [sp, #0xc]
  343b6c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  343b70: 4618         	mov	r0, r3
  343b72: f254 f9b9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x254372
  343b76: 9b03         	ldr	r3, [sp, #0xc]
  343b78: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  343b7c: 681b         	ldr	r3, [r3]
  343b7e: 334c         	adds	r3, #0x4c
  343b80: 681d         	ldr	r5, [r3]
  343b82: 9b03         	ldr	r3, [sp, #0xc]
  343b84: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  343b88: 461e         	mov	r6, r3
  343b8a: ab20         	add	r3, sp, #0x80
  343b8c: 4618         	mov	r0, r3
  343b8e: f04f 0100    	mov.w	r1, #0x0
  343b92: f2c4 2160    	movt	r1, #0x4260
  343b96: f04f 4284    	mov.w	r2, #0x42000000
  343b9a: f24f f8a9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24f152
  343b9e: ab20         	add	r3, sp, #0x80
  343ba0: 4630         	mov	r0, r6
  343ba2: 4619         	mov	r1, r3
  343ba4: 47a8         	blx	r5
  343ba6: 9b03         	ldr	r3, [sp, #0xc]
  343ba8: 681b         	ldr	r3, [r3]
  343baa: 33c8         	adds	r3, #0xc8
  343bac: 681b         	ldr	r3, [r3]
  343bae: 9903         	ldr	r1, [sp, #0xc]
  343bb0: 9a03         	ldr	r2, [sp, #0xc]
  343bb2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  343bb6: 4608         	mov	r0, r1
  343bb8: 4611         	mov	r1, r2
  343bba: 4798         	blx	r3
  343bbc: 9a03         	ldr	r2, [sp, #0xc]
  343bbe: 4bca         	ldr	r3, [pc, #0x328]        @ 0x343ee8 <HelpLayer::init()+0x4a0>
  343bc0: 58e3         	ldr	r3, [r4, r3]
  343bc2: 931a         	str	r3, [sp, #0x68]
  343bc4: 2300         	movs	r3, #0x0
  343bc6: 931b         	str	r3, [sp, #0x6c]
  343bc8: 9b1b         	ldr	r3, [sp, #0x6c]
  343bca: 9300         	str	r3, [sp]
  343bcc: 9b1a         	ldr	r3, [sp, #0x68]
  343bce: 9808         	ldr	r0, [sp, #0x20]
  343bd0: 9908         	ldr	r1, [sp, #0x20]
  343bd2: f274 fbab    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x274756
  343bd6: 4603         	mov	r3, r0
  343bd8: 930a         	str	r3, [sp, #0x28]
  343bda: 980a         	ldr	r0, [sp, #0x28]
  343bdc: 2100         	movs	r1, #0x0
  343bde: f271 faad    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x27155a
  343be2: 4602         	mov	r2, r0
  343be4: 9b03         	ldr	r3, [sp, #0xc]
  343be6: f8c3 211c    	str.w	r2, [r3, #0x11c]
  343bea: 9b03         	ldr	r3, [sp, #0xc]
  343bec: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  343bf0: 4618         	mov	r0, r3
  343bf2: f254 f979    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2542f2
  343bf6: 9b03         	ldr	r3, [sp, #0xc]
  343bf8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  343bfc: 681b         	ldr	r3, [r3]
  343bfe: 334c         	adds	r3, #0x4c
  343c00: 681c         	ldr	r4, [r3]
  343c02: 9b03         	ldr	r3, [sp, #0xc]
  343c04: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  343c08: 461d         	mov	r5, r3
  343c0a: ed9d 7a0e    	vldr	s14, [sp, #56]
  343c0e: eddf 7ab0    	vldr	s15, [pc, #704]         @ 0x343ed0 <HelpLayer::init()+0x488>
  343c12: ee77 7a67    	vsub.f32	s15, s14, s15
  343c16: ab20         	add	r3, sp, #0x80
  343c18: 4618         	mov	r0, r3
  343c1a: ee17 1a90    	vmov	r1, s15
  343c1e: f04f 4284    	mov.w	r2, #0x42000000
  343c22: f24f f865    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24f0ca
  343c26: ab20         	add	r3, sp, #0x80
  343c28: 4628         	mov	r0, r5
  343c2a: 4619         	mov	r1, r3
  343c2c: 47a0         	blx	r4
  343c2e: 9b03         	ldr	r3, [sp, #0xc]
  343c30: 681b         	ldr	r3, [r3]
  343c32: 33c8         	adds	r3, #0xc8
  343c34: 681b         	ldr	r3, [r3]
  343c36: 9903         	ldr	r1, [sp, #0xc]
  343c38: 9a03         	ldr	r2, [sp, #0xc]
  343c3a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  343c3e: 4608         	mov	r0, r1
  343c40: 4611         	mov	r1, r2
  343c42: 4798         	blx	r3
  343c44: f64c 43cd    	movw	r3, #0xcccd
  343c48: f6c3 730c    	movt	r3, #0x3f0c
  343c4c: 930b         	str	r3, [sp, #0x2c]
  343c4e: f04f 0300    	mov.w	r3, #0x0
  343c52: f2c4 13c0    	movt	r3, #0x41c0
  343c56: 930c         	str	r3, [sp, #0x30]
  343c58: f04f 4341    	mov.w	r3, #0xc1000000
  343c5c: 930d         	str	r3, [sp, #0x34]
  343c5e: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x343eec <HelpLayer::init()+0x4a4>
  343c60: 447b         	add	r3, pc
  343c62: 4618         	mov	r0, r3
  343c64: f071 f34c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x471698
  343c68: 4603         	mov	r3, r0
  343c6a: 2220         	movs	r2, #0x20
  343c6c: 9200         	str	r2, [sp]
  343c6e: 4aa0         	ldr	r2, [pc, #0x280]        @ 0x343ef0 <HelpLayer::init()+0x4a8>
  343c70: 447a         	add	r2, pc
  343c72: 4610         	mov	r0, r2
  343c74: 4619         	mov	r1, r3
  343c76: 2220         	movs	r2, #0x20
  343c78: 2320         	movs	r3, #0x20
  343c7a: f261 fb7d    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2616fa
  343c7e: 4602         	mov	r2, r0
  343c80: 9b03         	ldr	r3, [sp, #0xc]
  343c82: f8c3 2110    	str.w	r2, [r3, #0x110]
  343c86: 9b03         	ldr	r3, [sp, #0xc]
  343c88: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343c8c: 4618         	mov	r0, r3
  343c8e: f254 f92b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x254256
  343c92: 9b03         	ldr	r3, [sp, #0xc]
  343c94: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343c98: 681b         	ldr	r3, [r3]
  343c9a: 334c         	adds	r3, #0x4c
  343c9c: 681c         	ldr	r4, [r3]
  343c9e: 9b03         	ldr	r3, [sp, #0xc]
  343ca0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343ca4: 461d         	mov	r5, r3
  343ca6: 9b03         	ldr	r3, [sp, #0xc]
  343ca8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  343cac: 681b         	ldr	r3, [r3]
  343cae: 3350         	adds	r3, #0x50
  343cb0: 681b         	ldr	r3, [r3]
  343cb2: 9a03         	ldr	r2, [sp, #0xc]
  343cb4: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  343cb8: 4610         	mov	r0, r2
  343cba: 4798         	blx	r3
  343cbc: 4603         	mov	r3, r0
  343cbe: 681e         	ldr	r6, [r3]
  343cc0: 9b03         	ldr	r3, [sp, #0xc]
  343cc2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  343cc6: 681b         	ldr	r3, [r3]
  343cc8: 3350         	adds	r3, #0x50
  343cca: 681b         	ldr	r3, [r3]
  343ccc: 9a03         	ldr	r2, [sp, #0xc]
  343cce: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  343cd2: 4610         	mov	r0, r2
  343cd4: 4798         	blx	r3
  343cd6: 4603         	mov	r3, r0
  343cd8: 685b         	ldr	r3, [r3, #0x4]
  343cda: aa12         	add	r2, sp, #0x48
  343cdc: 4610         	mov	r0, r2
  343cde: 4631         	mov	r1, r6
  343ce0: 461a         	mov	r2, r3
  343ce2: f24f f805    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24f00a
  343ce6: eddd 7a0d    	vldr	s15, [sp, #52]
  343cea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343cee: ab1c         	add	r3, sp, #0x70
  343cf0: 4618         	mov	r0, r3
  343cf2: ed9f 0b75    	vldr	d0, [pc, #468]          @ 0x343ec8 <HelpLayer::init()+0x480>
  343cf6: eeb0 1b47    	vmov.f64	d1, d7
  343cfa: f7fe ff69    	bl	0x342bd0 <HeartMeter::setMeters(double, double)+0x2a0> @ imm = #-0x112e
  343cfe: ed9d 8b1c    	vldr	d8, [sp, #112]
  343d02: 9b03         	ldr	r3, [sp, #0xc]
  343d04: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343d08: 681b         	ldr	r3, [r3]
  343d0a: f503 73fe    	add.w	r3, r3, #0x1fc
  343d0e: 681b         	ldr	r3, [r3]
  343d10: 9a03         	ldr	r2, [sp, #0xc]
  343d12: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  343d16: 4610         	mov	r0, r2
  343d18: 4798         	blx	r3
  343d1a: 4606         	mov	r6, r0
  343d1c: ab05         	add	r3, sp, #0x14
  343d1e: 4618         	mov	r0, r3
  343d20: f046 f368    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4466d0
  343d24: aa06         	add	r2, sp, #0x18
  343d26: ab05         	add	r3, sp, #0x14
  343d28: 4610         	mov	r0, r2
  343d2a: 4631         	mov	r1, r6
  343d2c: 461a         	mov	r2, r3
  343d2e: f072 f697    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472d2e
  343d32: ab06         	add	r3, sp, #0x18
  343d34: 4618         	mov	r0, r3
  343d36: f071 f191    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x471322
  343d3a: 4603         	mov	r3, r0
  343d3c: ee07 3a90    	vmov	s15, r3
  343d40: eeb8 7a67    	vcvt.f32.u32	s14, s15
  343d44: eddd 7a0c    	vldr	s15, [sp, #48]
  343d48: ee27 7a27    	vmul.f32	s14, s14, s15
  343d4c: eddd 7a0b    	vldr	s15, [sp, #44]
  343d50: ee27 7a27    	vmul.f32	s14, s14, s15
  343d54: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  343d58: eec7 7a27    	vdiv.f32	s15, s14, s15
  343d5c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343d60: ee38 7b47    	vsub.f64	d7, d8, d7
  343d64: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  343d68: eddd 7a0d    	vldr	s15, [sp, #52]
  343d6c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343d70: ab20         	add	r3, sp, #0x80
  343d72: 4618         	mov	r0, r3
  343d74: ed9f 0b54    	vldr	d0, [pc, #336]          @ 0x343ec8 <HelpLayer::init()+0x480>
  343d78: eeb0 1b47    	vmov.f64	d1, d7
  343d7c: f7fe ff28    	bl	0x342bd0 <HeartMeter::setMeters(double, double)+0x2a0> @ imm = #-0x11b0
  343d80: ed9d 7b22    	vldr	d7, [sp, #136]
  343d84: eef7 7bc7    	vcvt.f32.f64	s15, d7
  343d88: ab14         	add	r3, sp, #0x50
  343d8a: 4618         	mov	r0, r3
  343d8c: ee18 1a10    	vmov	r1, s16
  343d90: ee17 2a90    	vmov	r2, s15
  343d94: f24e ffac    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24ef58
  343d98: a916         	add	r1, sp, #0x58
  343d9a: aa12         	add	r2, sp, #0x48
  343d9c: ab14         	add	r3, sp, #0x50
  343d9e: 4608         	mov	r0, r1
  343da0: 4611         	mov	r1, r2
  343da2: 461a         	mov	r2, r3
  343da4: f7fe ff04    	bl	0x342bb0 <HeartMeter::setMeters(double, double)+0x280> @ imm = #-0x11f8
  343da8: ab16         	add	r3, sp, #0x58
  343daa: 4628         	mov	r0, r5
  343dac: 4619         	mov	r1, r3
  343dae: 47a0         	blx	r4
  343db0: ab06         	add	r3, sp, #0x18
  343db2: 4618         	mov	r0, r3
  343db4: f071 f5ae    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471b5c
  343db8: ab05         	add	r3, sp, #0x14
  343dba: 4618         	mov	r0, r3
  343dbc: f046 f31e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44663c
  343dc0: 9b03         	ldr	r3, [sp, #0xc]
  343dc2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343dc6: 681b         	ldr	r3, [r3]
  343dc8: 3340         	adds	r3, #0x40
  343dca: 681b         	ldr	r3, [r3]
  343dcc: 9a03         	ldr	r2, [sp, #0xc]
  343dce: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  343dd2: 4610         	mov	r0, r2
  343dd4: 990b         	ldr	r1, [sp, #0x2c]
  343dd6: 4798         	blx	r3
  343dd8: 9b03         	ldr	r3, [sp, #0xc]
  343dda: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  343dde: eddd 7a0c    	vldr	s15, [sp, #48]
  343de2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  343de6: ee17 2a90    	vmov	r2, s15
  343dea: 4618         	mov	r0, r3
  343dec: 4611         	mov	r1, r2
  343dee: f261 ffc9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x261f92
  343df2: 9b03         	ldr	r3, [sp, #0xc]
  343df4: 681b         	ldr	r3, [r3]
  343df6: 33c8         	adds	r3, #0xc8
  343df8: 681b         	ldr	r3, [r3]
  343dfa: 9903         	ldr	r1, [sp, #0xc]
  343dfc: 9a03         	ldr	r2, [sp, #0xc]
  343dfe: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  343e02: 4608         	mov	r0, r1
  343e04: 4611         	mov	r1, r2
  343e06: 4798         	blx	r3
  343e08: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x343ef4 <HelpLayer::init()+0x4ac>
  343e0a: 447b         	add	r3, pc
  343e0c: 4618         	mov	r0, r3
  343e0e: f071 f277    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4714ee
  343e12: 4603         	mov	r3, r0
  343e14: 2220         	movs	r2, #0x20
  343e16: 9200         	str	r2, [sp]
  343e18: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x343ef8 <HelpLayer::init()+0x4b0>
  343e1a: 447a         	add	r2, pc
  343e1c: 4610         	mov	r0, r2
  343e1e: 4619         	mov	r1, r3
  343e20: 2220         	movs	r2, #0x20
  343e22: 2320         	movs	r3, #0x20
  343e24: f261 faa8    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x261550
  343e28: 4602         	mov	r2, r0
  343e2a: 9b03         	ldr	r3, [sp, #0xc]
  343e2c: f8c3 2118    	str.w	r2, [r3, #0x118]
  343e30: 9b03         	ldr	r3, [sp, #0xc]
  343e32: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343e36: 4618         	mov	r0, r3
  343e38: f254 f856    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2540ac
  343e3c: 9b03         	ldr	r3, [sp, #0xc]
  343e3e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343e42: 681b         	ldr	r3, [r3]
  343e44: 334c         	adds	r3, #0x4c
  343e46: 681c         	ldr	r4, [r3]
  343e48: 9b03         	ldr	r3, [sp, #0xc]
  343e4a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343e4e: 461d         	mov	r5, r3
  343e50: 9b03         	ldr	r3, [sp, #0xc]
  343e52: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  343e56: 681b         	ldr	r3, [r3]
  343e58: 3350         	adds	r3, #0x50
  343e5a: 681b         	ldr	r3, [r3]
  343e5c: 9a03         	ldr	r2, [sp, #0xc]
  343e5e: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  343e62: 4610         	mov	r0, r2
  343e64: 4798         	blx	r3
  343e66: 4603         	mov	r3, r0
  343e68: 681e         	ldr	r6, [r3]
  343e6a: 9b03         	ldr	r3, [sp, #0xc]
  343e6c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  343e70: 681b         	ldr	r3, [r3]
  343e72: 3350         	adds	r3, #0x50
  343e74: 681b         	ldr	r3, [r3]
  343e76: 9a03         	ldr	r2, [sp, #0xc]
  343e78: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  343e7c: 4610         	mov	r0, r2
  343e7e: 4798         	blx	r3
  343e80: 4603         	mov	r3, r0
  343e82: 685b         	ldr	r3, [r3, #0x4]
  343e84: aa12         	add	r2, sp, #0x48
  343e86: 4610         	mov	r0, r2
  343e88: 4631         	mov	r1, r6
  343e8a: 461a         	mov	r2, r3
  343e8c: f24e ff30    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24ee60
  343e90: eddd 7a0d    	vldr	s15, [sp, #52]
  343e94: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343e98: ab1c         	add	r3, sp, #0x70
  343e9a: 4618         	mov	r0, r3
  343e9c: ed9f 0b0a    	vldr	d0, [pc, #40]           @ 0x343ec8 <HelpLayer::init()+0x480>
  343ea0: eeb0 1b47    	vmov.f64	d1, d7
  343ea4: f7fe fe94    	bl	0x342bd0 <HeartMeter::setMeters(double, double)+0x2a0> @ imm = #-0x12d8
  343ea8: ed9d 8b1c    	vldr	d8, [sp, #112]
  343eac: 9b03         	ldr	r3, [sp, #0xc]
  343eae: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343eb2: 681b         	ldr	r3, [r3]
  343eb4: f503 73fe    	add.w	r3, r3, #0x1fc
  343eb8: 681b         	ldr	r3, [r3]
  343eba: 9a03         	ldr	r2, [sp, #0xc]
  343ebc: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  343ec0: 4610         	mov	r0, r2
  343ec2: 4798         	blx	r3
  343ec4: 4606         	mov	r6, r0
  343ec6: e019         	b	0x343efc <HelpLayer::init()+0x4b4> @ imm = #0x32
  343ed0: 0000         	movs	r0, r0
  343ed2: 4260         	rsbs	r0, r4, #0
  343ed4: d724         	bvc	0x343f20 <HelpLayer::init()+0x4d8> @ imm = #0x48
  343ed6: ffff 66fc    	vqshlu.s64	q11, q14, #0x3f
  343eda: 0048         	lsls	r0, r1, #0x1
  343edc: 66ae         	str	r6, [r5, #0x68]
  343ede: 0048         	lsls	r0, r1, #0x1
  343ee0: 66a0         	str	r0, [r4, #0x68]
  343ee2: 0048         	lsls	r0, r1, #0x1
  343ee4: db2c         	blt	0x343f40 <HelpLayer::init()+0x4f8> @ imm = #0x58
  343ee6: ffff db30    	<unknown>
  343eea: ffff c878    	vqrshrun.s64	d28, q12, #0x1
  343eee: 005f         	lsls	r7, r3, #0x1
  343ef0: 656c         	str	r4, [r5, #0x54]
  343ef2: 0048         	lsls	r0, r1, #0x1
  343ef4: c6ce         	stm	r6!, {r1, r2, r3, r6, r7}
  343ef6: 005f         	lsls	r7, r3, #0x1
  343ef8: 63ca         	str	r2, [r1, #0x3c]
  343efa: 0048         	lsls	r0, r1, #0x1
  343efc: ab05         	add	r3, sp, #0x14
  343efe: 4618         	mov	r0, r3
  343f00: f046 f278    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4464f0
  343f04: aa06         	add	r2, sp, #0x18
  343f06: ab05         	add	r3, sp, #0x14
  343f08: 4610         	mov	r0, r2
  343f0a: 4631         	mov	r1, r6
  343f0c: 461a         	mov	r2, r3
  343f0e: f072 f5a7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472b4e
  343f12: ab06         	add	r3, sp, #0x18
  343f14: 4618         	mov	r0, r3
  343f16: f071 f0a1    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x471142
  343f1a: 4603         	mov	r3, r0
  343f1c: ee07 3a90    	vmov	s15, r3
  343f20: eeb8 7a67    	vcvt.f32.u32	s14, s15
  343f24: eddd 7a0c    	vldr	s15, [sp, #48]
  343f28: ee27 7a27    	vmul.f32	s14, s14, s15
  343f2c: eddd 7a0b    	vldr	s15, [sp, #44]
  343f30: ee27 7a27    	vmul.f32	s14, s14, s15
  343f34: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  343f38: eec7 7a27    	vdiv.f32	s15, s14, s15
  343f3c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343f40: ee38 7b47    	vsub.f64	d7, d8, d7
  343f44: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  343f48: eddd 7a0d    	vldr	s15, [sp, #52]
  343f4c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  343f50: ab20         	add	r3, sp, #0x80
  343f52: 4618         	mov	r0, r3
  343f54: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x344028 <HelpLayer::init()+0x5e0>
  343f58: eeb0 1b47    	vmov.f64	d1, d7
  343f5c: f7fe fe38    	bl	0x342bd0 <HeartMeter::setMeters(double, double)+0x2a0> @ imm = #-0x1390
  343f60: ed9d 7b22    	vldr	d7, [sp, #136]
  343f64: eef7 7bc7    	vcvt.f32.f64	s15, d7
  343f68: ab14         	add	r3, sp, #0x50
  343f6a: 4618         	mov	r0, r3
  343f6c: ee18 1a10    	vmov	r1, s16
  343f70: ee17 2a90    	vmov	r2, s15
  343f74: f24e febc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24ed78
  343f78: a916         	add	r1, sp, #0x58
  343f7a: aa12         	add	r2, sp, #0x48
  343f7c: ab14         	add	r3, sp, #0x50
  343f7e: 4608         	mov	r0, r1
  343f80: 4611         	mov	r1, r2
  343f82: 461a         	mov	r2, r3
  343f84: f7fe fe14    	bl	0x342bb0 <HeartMeter::setMeters(double, double)+0x280> @ imm = #-0x13d8
  343f88: ab16         	add	r3, sp, #0x58
  343f8a: 4628         	mov	r0, r5
  343f8c: 4619         	mov	r1, r3
  343f8e: 47a0         	blx	r4
  343f90: ab06         	add	r3, sp, #0x18
  343f92: 4618         	mov	r0, r3
  343f94: f071 f4be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47197c
  343f98: ab05         	add	r3, sp, #0x14
  343f9a: 4618         	mov	r0, r3
  343f9c: f046 f22e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44645c
  343fa0: 9b03         	ldr	r3, [sp, #0xc]
  343fa2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343fa6: 681b         	ldr	r3, [r3]
  343fa8: 3340         	adds	r3, #0x40
  343faa: 681b         	ldr	r3, [r3]
  343fac: 9a03         	ldr	r2, [sp, #0xc]
  343fae: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  343fb2: 4610         	mov	r0, r2
  343fb4: 990b         	ldr	r1, [sp, #0x2c]
  343fb6: 4798         	blx	r3
  343fb8: 9b03         	ldr	r3, [sp, #0xc]
  343fba: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  343fbe: eddd 7a0c    	vldr	s15, [sp, #48]
  343fc2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  343fc6: ee17 2a90    	vmov	r2, s15
  343fca: 4618         	mov	r0, r3
  343fcc: 4611         	mov	r1, r2
  343fce: f261 fed9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x261db2
  343fd2: 9b03         	ldr	r3, [sp, #0xc]
  343fd4: 681b         	ldr	r3, [r3]
  343fd6: 33c8         	adds	r3, #0xc8
  343fd8: 681b         	ldr	r3, [r3]
  343fda: 9903         	ldr	r1, [sp, #0xc]
  343fdc: 9a03         	ldr	r2, [sp, #0xc]
  343fde: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  343fe2: 4608         	mov	r0, r1
  343fe4: 4611         	mov	r1, r2
  343fe6: 4798         	blx	r3
  343fe8: f0e8 f85e    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0xe80bc
  343fec: 2301         	movs	r3, #0x1
  343fee: e015         	b	0x34401c <HelpLayer::init()+0x5d4> @ imm = #0x2a
  343ff0: ab06         	add	r3, sp, #0x18
  343ff2: 4618         	mov	r0, r3
  343ff4: f071 f48e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47191c
  343ff8: e7ff         	b	0x343ffa <HelpLayer::init()+0x5b2> @ imm = #-0x2
  343ffa: ab05         	add	r3, sp, #0x14
  343ffc: 4618         	mov	r0, r3
  343ffe: f046 f1fd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4463fa
  344002: f044 f053    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4440a6
  344006: ab06         	add	r3, sp, #0x18
  344008: 4618         	mov	r0, r3
  34400a: f071 f483    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471906
  34400e: e7ff         	b	0x344010 <HelpLayer::init()+0x5c8> @ imm = #-0x2
  344010: ab05         	add	r3, sp, #0x14
  344012: 4618         	mov	r0, r3
  344014: f046 f1f2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4463e4
  344018: f044 f048    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x444090
  34401c: 4618         	mov	r0, r3
  34401e: b024         	add	sp, #0x90
  344020: ecbd 8b02    	vpop	{d8}
  344024: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x344025); words below are literal-pool data ---
  344026: bf00         	nop

// ==== HelpLayer::~HelpLayer
//      file offset 0x344030 (= ELF address; Ghidra 0x354030), 164 bytes, Thumb-2
  344030: b510         	push	{r4, lr}
  344032: b082         	sub	sp, #0x8
  344034: 9001         	str	r0, [sp, #0x4]
  344036: 4c24         	ldr	r4, [pc, #0x90]         @ 0x3440c8 <HelpLayer::~HelpLayer()+0x98>
  344038: 447c         	add	r4, pc
  34403a: 9b01         	ldr	r3, [sp, #0x4]
  34403c: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3440cc <HelpLayer::~HelpLayer()+0x9c>
  34403e: 58a2         	ldr	r2, [r4, r2]
  344040: 3208         	adds	r2, #0x8
  344042: 601a         	str	r2, [r3]
  344044: 9b01         	ldr	r3, [sp, #0x4]
  344046: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3440cc <HelpLayer::~HelpLayer()+0x9c>
  344048: 58a2         	ldr	r2, [r4, r2]
  34404a: f502 7204    	add.w	r2, r2, #0x210
  34404e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  344052: 9b01         	ldr	r3, [sp, #0x4]
  344054: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3440cc <HelpLayer::~HelpLayer()+0x9c>
  344056: 58a2         	ldr	r2, [r4, r2]
  344058: f502 7210    	add.w	r2, r2, #0x240
  34405c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  344060: 9b01         	ldr	r3, [sp, #0x4]
  344062: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3440cc <HelpLayer::~HelpLayer()+0x9c>
  344064: 58a2         	ldr	r2, [r4, r2]
  344066: f502 7213    	add.w	r2, r2, #0x24c
  34406a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  34406e: 9b01         	ldr	r3, [sp, #0x4]
  344070: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  344074: 4618         	mov	r0, r3
  344076: f253 ff1f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x253e3e
  34407a: 9b01         	ldr	r3, [sp, #0x4]
  34407c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  344080: 4618         	mov	r0, r3
  344082: f253 ff19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x253e32
  344086: 9b01         	ldr	r3, [sp, #0x4]
  344088: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  34408c: 4618         	mov	r0, r3
  34408e: f253 ff13    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x253e26
  344092: 9b01         	ldr	r3, [sp, #0x4]
  344094: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  344098: 4618         	mov	r0, r3
  34409a: f253 ff0d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x253e1a
  34409e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3440d0 <HelpLayer::~HelpLayer()+0xa0>
  3440a0: 58e3         	ldr	r3, [r4, r3]
  3440a2: 681b         	ldr	r3, [r3]
  3440a4: 4618         	mov	r0, r3
  3440a6: f0f0 f809    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0xf0012
  3440aa: 9b01         	ldr	r3, [sp, #0x4]
  3440ac: 4618         	mov	r0, r3
  3440ae: f269 f84d    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x26909a
  3440b2: 2300         	movs	r3, #0x0
  3440b4: 2b00         	cmp	r3, #0x0
  3440b6: d002         	beq	0x3440be <HelpLayer::~HelpLayer()+0x8e> @ imm = #0x4
  3440b8: 9801         	ldr	r0, [sp, #0x4]
  3440ba: f043 f7f3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x443fe6
  3440be: 9b01         	ldr	r3, [sp, #0x4]
  3440c0: 4618         	mov	r0, r3
  3440c2: b002         	add	sp, #0x8
  3440c4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3440c5); words below are literal-pool data ---
  3440c6: bf00         	nop
  3440c8: e9d0 005e    	ldrd	r0, r0, [r0, #376]
  3440cc: db28         	blt	0x344120 <HelpLayer::showWebView()+0x20> @ imm = #0x50
  3440ce: ffff d75c    	<unknown>
  3440d2: ffff f1a0    	<unknown>

// ==== HelpLayer::~HelpLayer
//      file offset 0x3440d4 (= ELF address; Ghidra 0x3540d4), 8 bytes, Thumb-2
  3440d4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3440d8: f7ff bfaa    	b.w	0x344030 <HelpLayer::~HelpLayer()> @ imm = #-0xac

// ==== HelpLayer::~HelpLayer
//      file offset 0x3440dc (= ELF address; Ghidra 0x3540dc), 28 bytes, Thumb-2
  3440dc: b500         	push	{lr}
  3440de: b083         	sub	sp, #0xc
  3440e0: 9001         	str	r0, [sp, #0x4]
  3440e2: 9801         	ldr	r0, [sp, #0x4]
  3440e4: f7ff ffa4    	bl	0x344030 <HelpLayer::~HelpLayer()> @ imm = #-0xb8
  3440e8: 9801         	ldr	r0, [sp, #0x4]
  3440ea: f043 f7db    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x443fb6
  3440ee: 9b01         	ldr	r3, [sp, #0x4]
  3440f0: 4618         	mov	r0, r3
  3440f2: b003         	add	sp, #0xc
  3440f4: f85d fb04    	ldr	pc, [sp], #4

// ==== HelpLayer::~HelpLayer
//      file offset 0x3440f8 (= ELF address; Ghidra 0x3540f8), 8 bytes, Thumb-2
  3440f8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3440fc: f7ff bfee    	b.w	0x3440dc <HelpLayer::~HelpLayer()> @ imm = #-0x24

// ==== HelpLayer::showWebView
//      file offset 0x344100 (= ELF address; Ghidra 0x354100), 104 bytes, Thumb-2
  344100: b510         	push	{r4, lr}
  344102: b088         	sub	sp, #0x20
  344104: 9003         	str	r0, [sp, #0xc]
  344106: 4c14         	ldr	r4, [pc, #0x50]         @ 0x344158 <HelpLayer::showWebView()+0x58>
  344108: 447c         	add	r4, pc
  34410a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x34415c <HelpLayer::showWebView()+0x5c>
  34410c: 58e3         	ldr	r3, [r4, r3]
  34410e: 681b         	ldr	r3, [r3]
  344110: 4a12         	ldr	r2, [pc, #0x48]         @ 0x34415c <HelpLayer::showWebView()+0x5c>
  344112: 58a2         	ldr	r2, [r4, r2]
  344114: ed92 7a01    	vldr	s14, [r2, #4]
  344118: eddf 7a0e    	vldr	s15, [pc, #56]          @ 0x344154 <HelpLayer::showWebView()+0x54>
  34411c: ee77 7a67    	vsub.f32	s15, s14, s15
  344120: aa04         	add	r2, sp, #0x10
  344122: edcd 7a00    	vstr	s15, [sp]
  344126: 4610         	mov	r0, r2
  344128: f04f 0100    	mov.w	r1, #0x0
  34412c: f04f 0200    	mov.w	r2, #0x0
  344130: f24f f8d6    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x24f1ac
  344134: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x344160 <HelpLayer::showWebView()+0x60>
  344136: 58e3         	ldr	r3, [r4, r3]
  344138: 6819         	ldr	r1, [r3]
  34413a: 9a04         	ldr	r2, [sp, #0x10]
  34413c: 9b05         	ldr	r3, [sp, #0x14]
  34413e: 9c06         	ldr	r4, [sp, #0x18]
  344140: 9807         	ldr	r0, [sp, #0x1c]
  344142: 9400         	str	r4, [sp]
  344144: 9001         	str	r0, [sp, #0x4]
  344146: 4608         	mov	r0, r1
  344148: 4906         	ldr	r1, [pc, #0x18]         @ 0x344164 <HelpLayer::showWebView()+0x64>
  34414a: 4479         	add	r1, pc
  34414c: f0e4 fdbe    	bl	0x428ccc <ZYWebView::showWebView(char const*, float, float, float, float)> @ imm = #0xe4b7c
  344150: b008         	add	sp, #0x20
  344152: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x344153); words below are literal-pool data ---
  344154: 0000         	movs	r0, r0
  344156: 4280         	cmp	r0, r0
  344158: e900 005e    	stmdb	r0, {r1, r2, r3, r4, r6}
  34415c: d724         	bvc	0x3441a8 <HelpLayer::onBack(cocos2d::CCObject*)+0x40> @ imm = #0x48
  34415e: ffff d75c    	<unknown>
  344162: ffff 609e    	vshr.u64	d22, d14, #0x1
  344166: 0048         	lsls	r0, r1, #0x1

// ==== HelpLayer::onBack
//      file offset 0x344168 (= ELF address; Ghidra 0x354168), 116 bytes, Thumb-2
  344168: b570         	push	{r4, r5, r6, lr}
  34416a: b082         	sub	sp, #0x8
  34416c: 9001         	str	r0, [sp, #0x4]
  34416e: 9100         	str	r1, [sp]
  344170: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3441cc <HelpLayer::onBack(cocos2d::CCObject*)+0x64>
  344172: 447c         	add	r4, pc
  344174: 9b01         	ldr	r3, [sp, #0x4]
  344176: f893 3108    	ldrb.w	r3, [r3, #0x108]
  34417a: 2b00         	cmp	r3, #0x0
  34417c: d000         	beq	0x344180 <HelpLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  34417e: e022         	b	0x3441c6 <HelpLayer::onBack(cocos2d::CCObject*)+0x5e> @ imm = #0x44
  344180: 9b01         	ldr	r3, [sp, #0x4]
  344182: 2201         	movs	r2, #0x1
  344184: f883 2108    	strb.w	r2, [r3, #0x108]
  344188: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3441d0 <HelpLayer::onBack(cocos2d::CCObject*)+0x68>
  34418a: 58e3         	ldr	r3, [r4, r3]
  34418c: 681b         	ldr	r3, [r3]
  34418e: 4618         	mov	r0, r3
  344190: 210d         	movs	r1, #0xd
  344192: f0b3 fe15    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xb3c2a
  344196: f257 f9ed    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2573da
  34419a: 4605         	mov	r5, r0
  34419c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3441d4 <HelpLayer::onBack(cocos2d::CCObject*)+0x6c>
  34419e: 447b         	add	r3, pc
  3441a0: 681e         	ldr	r6, [r3]
  3441a2: f025 fc97    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x2592e
  3441a6: 4603         	mov	r3, r0
  3441a8: 4630         	mov	r0, r6
  3441aa: 4619         	mov	r1, r3
  3441ac: f26d f8ac    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x26d158
  3441b0: 4603         	mov	r3, r0
  3441b2: 4628         	mov	r0, r5
  3441b4: 4619         	mov	r1, r3
  3441b6: f258 f8d1    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2581a2
  3441ba: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3441d8 <HelpLayer::onBack(cocos2d::CCObject*)+0x70>
  3441bc: 58e3         	ldr	r3, [r4, r3]
  3441be: 681b         	ldr	r3, [r3]
  3441c0: 4618         	mov	r0, r3
  3441c2: f0ef ff7b    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0xefef6
  3441c6: b002         	add	sp, #0x8
  3441c8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3441c9); words below are literal-pool data ---
  3441ca: bf00         	nop
  3441cc: e896 005e    	ldm.w	r6, {r1, r2, r3, r4, r6}
  3441d0: d730         	bvc	0x344234 <HelpLayer::onContact(cocos2d::CCObject*)+0x58> @ imm = #0x60
  3441d2: ffff f1c6    	<unknown>
  3441d6: 005e         	lsls	r6, r3, #0x1
  3441d8: d75c         	bvc	0x344294 <HelpLayer::onContact(cocos2d::CCObject*)+0xb8> @ imm = #0xb8
  3441da: ffff b570    	<unknown>

// ==== HelpLayer::onContact
//      file offset 0x3441dc (= ELF address; Ghidra 0x3541dc), 452 bytes, Thumb-2
  3441dc: b570         	push	{r4, r5, r6, lr}
  3441de: b08e         	sub	sp, #0x38
  3441e0: 9003         	str	r0, [sp, #0xc]
  3441e2: 9102         	str	r1, [sp, #0x8]
  3441e4: 4c65         	ldr	r4, [pc, #0x194]        @ 0x34437c <HelpLayer::onContact(cocos2d::CCObject*)+0x1a0>
  3441e6: 447c         	add	r4, pc
  3441e8: 4b65         	ldr	r3, [pc, #0x194]        @ 0x344380 <HelpLayer::onContact(cocos2d::CCObject*)+0x1a4>
  3441ea: 58e3         	ldr	r3, [r4, r3]
  3441ec: 681b         	ldr	r3, [r3]
  3441ee: 4618         	mov	r0, r3
  3441f0: 210d         	movs	r1, #0xd
  3441f2: f0b3 fde5    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xb3bca
  3441f6: ab07         	add	r3, sp, #0x1c
  3441f8: 4618         	mov	r0, r3
  3441fa: f046 f0fb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4461f6
  3441fe: aa0c         	add	r2, sp, #0x30
  344200: ab07         	add	r3, sp, #0x1c
  344202: 4610         	mov	r0, r2
  344204: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x344384 <HelpLayer::onContact(cocos2d::CCObject*)+0x1a8>
  344206: 447a         	add	r2, pc
  344208: 4611         	mov	r1, r2
  34420a: 461a         	mov	r2, r3
  34420c: f072 f428    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472850
  344210: ab08         	add	r3, sp, #0x20
  344212: 4618         	mov	r0, r3
  344214: f046 f0ee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4461dc
  344218: aa0d         	add	r2, sp, #0x34
  34421a: ab08         	add	r3, sp, #0x20
  34421c: 4610         	mov	r0, r2
  34421e: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x344388 <HelpLayer::onContact(cocos2d::CCObject*)+0x1ac>
  344220: 447a         	add	r2, pc
  344222: 4611         	mov	r1, r2
  344224: 461a         	mov	r2, r3
  344226: f072 f41b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472836
  34422a: ab04         	add	r3, sp, #0x10
  34422c: 4618         	mov	r0, r3
  34422e: f046 f0e1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4461c2
  344232: aa09         	add	r2, sp, #0x24
  344234: ab04         	add	r3, sp, #0x10
  344236: 4610         	mov	r0, r2
  344238: 4a54         	ldr	r2, [pc, #0x150]        @ 0x34438c <HelpLayer::onContact(cocos2d::CCObject*)+0x1b0>
  34423a: 447a         	add	r2, pc
  34423c: 4611         	mov	r1, r2
  34423e: 461a         	mov	r2, r3
  344240: f072 f40e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47281c
  344244: ab09         	add	r3, sp, #0x24
  344246: 4618         	mov	r0, r3
  344248: f255 fbf8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2557f0
  34424c: 4606         	mov	r6, r0
  34424e: ab05         	add	r3, sp, #0x14
  344250: 4618         	mov	r0, r3
  344252: f046 f0cf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44619e
  344256: aa0a         	add	r2, sp, #0x28
  344258: ab05         	add	r3, sp, #0x14
  34425a: 4610         	mov	r0, r2
  34425c: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x344390 <HelpLayer::onContact(cocos2d::CCObject*)+0x1b4>
  34425e: 447a         	add	r2, pc
  344260: 4611         	mov	r1, r2
  344262: 461a         	mov	r2, r3
  344264: f072 f3fc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4727f8
  344268: ab0a         	add	r3, sp, #0x28
  34426a: 4618         	mov	r0, r3
  34426c: f255 fbe6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2557cc
  344270: 4605         	mov	r5, r0
  344272: ab06         	add	r3, sp, #0x18
  344274: 4618         	mov	r0, r3
  344276: f046 f0bd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44617a
  34427a: aa0b         	add	r2, sp, #0x2c
  34427c: ab06         	add	r3, sp, #0x18
  34427e: 4610         	mov	r0, r2
  344280: 4a44         	ldr	r2, [pc, #0x110]        @ 0x344394 <HelpLayer::onContact(cocos2d::CCObject*)+0x1b8>
  344282: 447a         	add	r2, pc
  344284: 4611         	mov	r1, r2
  344286: 461a         	mov	r2, r3
  344288: f072 f3ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4727d4
  34428c: ab0b         	add	r3, sp, #0x2c
  34428e: 4618         	mov	r0, r3
  344290: f255 fbd4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2557a8
  344294: 4603         	mov	r3, r0
  344296: 4630         	mov	r0, r6
  344298: 4629         	mov	r1, r5
  34429a: 461a         	mov	r2, r3
  34429c: 2300         	movs	r3, #0x0
  34429e: f255 fdb7    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x255b6e
  3442a2: 4603         	mov	r3, r0
  3442a4: 9803         	ldr	r0, [sp, #0xc]
  3442a6: a90c         	add	r1, sp, #0x30
  3442a8: aa0d         	add	r2, sp, #0x34
  3442aa: 2500         	movs	r5, #0x0
  3442ac: 9500         	str	r5, [sp]
  3442ae: 9001         	str	r0, [sp, #0x4]
  3442b0: 4839         	ldr	r0, [pc, #0xe4]         @ 0x344398 <HelpLayer::onContact(cocos2d::CCObject*)+0x1bc>
  3442b2: 5820         	ldr	r0, [r4, r0]
  3442b4: f79b fa9e    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x64ac4
  3442b8: ab0b         	add	r3, sp, #0x2c
  3442ba: 4618         	mov	r0, r3
  3442bc: f071 f32a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471654
  3442c0: ab06         	add	r3, sp, #0x18
  3442c2: 4618         	mov	r0, r3
  3442c4: f046 f09a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x446134
  3442c8: ab0a         	add	r3, sp, #0x28
  3442ca: 4618         	mov	r0, r3
  3442cc: f071 f322    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471644
  3442d0: ab05         	add	r3, sp, #0x14
  3442d2: 4618         	mov	r0, r3
  3442d4: f046 f092    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x446124
  3442d8: ab09         	add	r3, sp, #0x24
  3442da: 4618         	mov	r0, r3
  3442dc: f071 f31a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471634
  3442e0: ab04         	add	r3, sp, #0x10
  3442e2: 4618         	mov	r0, r3
  3442e4: f046 f08a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x446114
  3442e8: ab0d         	add	r3, sp, #0x34
  3442ea: 4618         	mov	r0, r3
  3442ec: f071 f312    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471624
  3442f0: ab08         	add	r3, sp, #0x20
  3442f2: 4618         	mov	r0, r3
  3442f4: f046 f082    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x446104
  3442f8: ab0c         	add	r3, sp, #0x30
  3442fa: 4618         	mov	r0, r3
  3442fc: f071 f30a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471614
  344300: ab07         	add	r3, sp, #0x1c
  344302: 4618         	mov	r0, r3
  344304: f046 f07a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4460f4
  344308: 4b24         	ldr	r3, [pc, #0x90]         @ 0x34439c <HelpLayer::onContact(cocos2d::CCObject*)+0x1c0>
  34430a: 58e3         	ldr	r3, [r4, r3]
  34430c: 681b         	ldr	r3, [r3]
  34430e: 4618         	mov	r0, r3
  344310: f0ef fed4    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0xefda8
  344314: e030         	b	0x344378 <HelpLayer::onContact(cocos2d::CCObject*)+0x19c> @ imm = #0x60
  344316: ab0b         	add	r3, sp, #0x2c
  344318: 4618         	mov	r0, r3
  34431a: f071 f2fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4715f6
  34431e: e7ff         	b	0x344320 <HelpLayer::onContact(cocos2d::CCObject*)+0x144> @ imm = #-0x2
  344320: ab06         	add	r3, sp, #0x18
  344322: 4618         	mov	r0, r3
  344324: f046 f06a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4460d4
  344328: e7ff         	b	0x34432a <HelpLayer::onContact(cocos2d::CCObject*)+0x14e> @ imm = #-0x2
  34432a: ab0a         	add	r3, sp, #0x28
  34432c: 4618         	mov	r0, r3
  34432e: f071 f2f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4715e2
  344332: e7ff         	b	0x344334 <HelpLayer::onContact(cocos2d::CCObject*)+0x158> @ imm = #-0x2
  344334: ab05         	add	r3, sp, #0x14
  344336: 4618         	mov	r0, r3
  344338: f046 f060    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4460c0
  34433c: e7ff         	b	0x34433e <HelpLayer::onContact(cocos2d::CCObject*)+0x162> @ imm = #-0x2
  34433e: ab09         	add	r3, sp, #0x24
  344340: 4618         	mov	r0, r3
  344342: f071 f2e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4715ce
  344346: e7ff         	b	0x344348 <HelpLayer::onContact(cocos2d::CCObject*)+0x16c> @ imm = #-0x2
  344348: ab04         	add	r3, sp, #0x10
  34434a: 4618         	mov	r0, r3
  34434c: f046 f056    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4460ac
  344350: ab0d         	add	r3, sp, #0x34
  344352: 4618         	mov	r0, r3
  344354: f071 f2de    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4715bc
  344358: e7ff         	b	0x34435a <HelpLayer::onContact(cocos2d::CCObject*)+0x17e> @ imm = #-0x2
  34435a: ab08         	add	r3, sp, #0x20
  34435c: 4618         	mov	r0, r3
  34435e: f046 f04d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44609a
  344362: ab0c         	add	r3, sp, #0x30
  344364: 4618         	mov	r0, r3
  344366: f071 f2d5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4715aa
  34436a: e7ff         	b	0x34436c <HelpLayer::onContact(cocos2d::CCObject*)+0x190> @ imm = #-0x2
  34436c: ab07         	add	r3, sp, #0x1c
  34436e: 4618         	mov	r0, r3
  344370: f046 f044    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x446088
  344374: f043 f69a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x443d34
  344378: b00e         	add	sp, #0x38
  34437a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x34437b); words below are literal-pool data ---
  34437c: e822 005e    	<unknown>
  344380: d730         	bvc	0x3443e4 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x44> @ imm = #0x60
  344382: ffff 6026    	<unknown>
  344386: 0048         	lsls	r0, r1, #0x1
  344388: 601c         	str	r4, [r3]
  34438a: 0048         	lsls	r0, r1, #0x1
  34438c: 601a         	str	r2, [r3]
  34438e: 0048         	lsls	r0, r1, #0x1
  344390: 6002         	str	r2, [r0]
  344392: 0048         	lsls	r0, r1, #0x1
  344394: 5fe6         	ldrsh	r6, [r4, r7]
  344396: 0048         	lsls	r0, r1, #0x1
  344398: db34         	blt	0x344404 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x64> @ imm = #0x68
  34439a: ffff d75c    	<unknown>
  34439e: ffff b5f0    	<unknown>

// ==== HelpLayer::messageBoxHandler
//      file offset 0x3443a0 (= ELF address; Ghidra 0x3543a0), 1740 bytes, Thumb-2
  3443a0: b5f0         	push	{r4, r5, r6, r7, lr}
  3443a2: b0a1         	sub	sp, #0x84
  3443a4: 9005         	str	r0, [sp, #0x14]
  3443a6: 9104         	str	r1, [sp, #0x10]
  3443a8: 9203         	str	r2, [sp, #0xc]
  3443aa: 9b05         	ldr	r3, [sp, #0x14]
  3443ac: 2b02         	cmp	r3, #0x2
  3443ae: d105         	bne	0x3443bc <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c> @ imm = #0xa
  3443b0: 9b03         	ldr	r3, [sp, #0xc]
  3443b2: 931f         	str	r3, [sp, #0x7c]
  3443b4: 981f         	ldr	r0, [sp, #0x7c]
  3443b6: f7ff fea3    	bl	0x344100 <HelpLayer::showWebView()> @ imm = #-0x2ba
  3443ba: e32c         	b	0x344a16 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x676> @ imm = #0x658
  3443bc: ab08         	add	r3, sp, #0x20
  3443be: 4618         	mov	r0, r3
  3443c0: f070 f6f6    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x470dec
  3443c4: ab09         	add	r3, sp, #0x24
  3443c6: 4618         	mov	r0, r3
  3443c8: f070 f6f2    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x470de4
  3443cc: ab0a         	add	r3, sp, #0x28
  3443ce: 4618         	mov	r0, r3
  3443d0: f070 f6ee    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x470ddc
  3443d4: 9b05         	ldr	r3, [sp, #0x14]
  3443d6: 2b00         	cmp	r3, #0x0
  3443d8: d129         	bne	0x34442e <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x8e> @ imm = #0x52
  3443da: f033 fbb1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x33762
  3443de: 4604         	mov	r4, r0
  3443e0: ab1e         	add	r3, sp, #0x78
  3443e2: 4618         	mov	r0, r3
  3443e4: f046 f006    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44600c
  3443e8: aa0b         	add	r2, sp, #0x2c
  3443ea: ab1e         	add	r3, sp, #0x78
  3443ec: 4610         	mov	r0, r2
  3443ee: f8df 262c    	ldr.w	r2, [pc, #0x62c]        @ 0x344a1c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x67c>
  3443f2: 447a         	add	r2, pc
  3443f4: 4611         	mov	r1, r2
  3443f6: 461a         	mov	r2, r3
  3443f8: f072 f332    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472664
  3443fc: aa0c         	add	r2, sp, #0x30
  3443fe: ab0b         	add	r3, sp, #0x2c
  344400: 4610         	mov	r0, r2
  344402: 4621         	mov	r1, r4
  344404: 461a         	mov	r2, r3
  344406: f033 fadb    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x335b6
  34440a: aa08         	add	r2, sp, #0x20
  34440c: ab0c         	add	r3, sp, #0x30
  34440e: 4610         	mov	r0, r2
  344410: 4619         	mov	r1, r3
  344412: f070 f769    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x470ed2
  344416: ab0c         	add	r3, sp, #0x30
  344418: 4618         	mov	r0, r3
  34441a: f071 f27b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4714f6
  34441e: ab0b         	add	r3, sp, #0x2c
  344420: 4618         	mov	r0, r3
  344422: f071 f277    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4714ee
  344426: ab1e         	add	r3, sp, #0x78
  344428: 4618         	mov	r0, r3
  34442a: f045 f7e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445fce
  34442e: 9b05         	ldr	r3, [sp, #0x14]
  344430: 2b01         	cmp	r3, #0x1
  344432: f040 8124    	bne.w	0x34467e <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x2de> @ imm = #0x248
  344436: f033 fb83    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x33706
  34443a: 4604         	mov	r4, r0
  34443c: ab1e         	add	r3, sp, #0x78
  34443e: 4618         	mov	r0, r3
  344440: f045 f7d8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445fb0
  344444: aa0d         	add	r2, sp, #0x34
  344446: ab1e         	add	r3, sp, #0x78
  344448: 4610         	mov	r0, r2
  34444a: f8df 25d4    	ldr.w	r2, [pc, #0x5d4]        @ 0x344a20 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x680>
  34444e: 447a         	add	r2, pc
  344450: 4611         	mov	r1, r2
  344452: 461a         	mov	r2, r3
  344454: f072 f304    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472608
  344458: aa0e         	add	r2, sp, #0x38
  34445a: ab0d         	add	r3, sp, #0x34
  34445c: 4610         	mov	r0, r2
  34445e: 4621         	mov	r1, r4
  344460: 461a         	mov	r2, r3
  344462: f033 faad    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x3355a
  344466: aa08         	add	r2, sp, #0x20
  344468: ab0e         	add	r3, sp, #0x38
  34446a: 4610         	mov	r0, r2
  34446c: 4619         	mov	r1, r3
  34446e: f070 f73b    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x470e76
  344472: ab0e         	add	r3, sp, #0x38
  344474: 4618         	mov	r0, r3
  344476: f071 f24d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47149a
  34447a: ab0d         	add	r3, sp, #0x34
  34447c: 4618         	mov	r0, r3
  34447e: f071 f249    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471492
  344482: ab1e         	add	r3, sp, #0x78
  344484: 4618         	mov	r0, r3
  344486: f045 f7b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445f72
  34448a: ab0a         	add	r3, sp, #0x28
  34448c: 4618         	mov	r0, r3
  34448e: f8df 3594    	ldr.w	r3, [pc, #0x594]        @ 0x344a24 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x684>
  344492: 447b         	add	r3, pc
  344494: 4619         	mov	r1, r3
  344496: f071 f72b    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471e56
  34449a: f033 fb51    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x336a2
  34449e: 4604         	mov	r4, r0
  3444a0: ab1e         	add	r3, sp, #0x78
  3444a2: 4618         	mov	r0, r3
  3444a4: f045 f7a6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445f4c
  3444a8: aa0f         	add	r2, sp, #0x3c
  3444aa: ab1e         	add	r3, sp, #0x78
  3444ac: 4610         	mov	r0, r2
  3444ae: f8df 2578    	ldr.w	r2, [pc, #0x578]        @ 0x344a28 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x688>
  3444b2: 447a         	add	r2, pc
  3444b4: 4611         	mov	r1, r2
  3444b6: 461a         	mov	r2, r3
  3444b8: f072 f2d2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4725a4
  3444bc: aa10         	add	r2, sp, #0x40
  3444be: ab0f         	add	r3, sp, #0x3c
  3444c0: 4610         	mov	r0, r2
  3444c2: 4621         	mov	r1, r4
  3444c4: 461a         	mov	r2, r3
  3444c6: f033 fa7b    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x334f6
  3444ca: aa0a         	add	r2, sp, #0x28
  3444cc: ab10         	add	r3, sp, #0x40
  3444ce: 4610         	mov	r0, r2
  3444d0: 4619         	mov	r1, r3
  3444d2: f071 f625    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x471c4a
  3444d6: ab10         	add	r3, sp, #0x40
  3444d8: 4618         	mov	r0, r3
  3444da: f071 f21b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471436
  3444de: ab0f         	add	r3, sp, #0x3c
  3444e0: 4618         	mov	r0, r3
  3444e2: f071 f217    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47142e
  3444e6: ab1e         	add	r3, sp, #0x78
  3444e8: 4618         	mov	r0, r3
  3444ea: f045 f787    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445f0e
  3444ee: ab0a         	add	r3, sp, #0x28
  3444f0: 4618         	mov	r0, r3
  3444f2: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x344a2c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x68c>
  3444f6: 447b         	add	r3, pc
  3444f8: 4619         	mov	r1, r3
  3444fa: f071 f6f9    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471df2
  3444fe: f033 fb1f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3363e
  344502: 4604         	mov	r4, r0
  344504: ab1e         	add	r3, sp, #0x78
  344506: 4618         	mov	r0, r3
  344508: f045 f774    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445ee8
  34450c: aa11         	add	r2, sp, #0x44
  34450e: ab1e         	add	r3, sp, #0x78
  344510: 4610         	mov	r0, r2
  344512: f8df 251c    	ldr.w	r2, [pc, #0x51c]        @ 0x344a30 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x690>
  344516: 447a         	add	r2, pc
  344518: 4611         	mov	r1, r2
  34451a: 461a         	mov	r2, r3
  34451c: f072 f2a0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472540
  344520: aa12         	add	r2, sp, #0x48
  344522: ab11         	add	r3, sp, #0x44
  344524: 4610         	mov	r0, r2
  344526: 4621         	mov	r1, r4
  344528: 461a         	mov	r2, r3
  34452a: f033 fa49    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x33492
  34452e: aa0a         	add	r2, sp, #0x28
  344530: ab12         	add	r3, sp, #0x48
  344532: 4610         	mov	r0, r2
  344534: 4619         	mov	r1, r3
  344536: f071 f5f3    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x471be6
  34453a: ab12         	add	r3, sp, #0x48
  34453c: 4618         	mov	r0, r3
  34453e: f071 f1e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4713d2
  344542: ab11         	add	r3, sp, #0x44
  344544: 4618         	mov	r0, r3
  344546: f071 f1e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4713ca
  34454a: ab1e         	add	r3, sp, #0x78
  34454c: 4618         	mov	r0, r3
  34454e: f045 f755    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445eaa
  344552: ab0a         	add	r3, sp, #0x28
  344554: 4618         	mov	r0, r3
  344556: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x344a34 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x694>
  34455a: 447b         	add	r3, pc
  34455c: 4619         	mov	r1, r3
  34455e: f071 f6c7    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471d8e
  344562: f033 faed    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x335da
  344566: 4604         	mov	r4, r0
  344568: ab13         	add	r3, sp, #0x4c
  34456a: 4618         	mov	r0, r3
  34456c: f0de f810    	bl	0x422590 <ApplicationInterface::getDiagnosticProperties()> @ imm = #0xde020
  344570: aa14         	add	r2, sp, #0x50
  344572: ab13         	add	r3, sp, #0x4c
  344574: 4610         	mov	r0, r2
  344576: 4621         	mov	r1, r4
  344578: 461a         	mov	r2, r3
  34457a: f033 fa21    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x33442
  34457e: aa0a         	add	r2, sp, #0x28
  344580: ab14         	add	r3, sp, #0x50
  344582: 4610         	mov	r0, r2
  344584: 4619         	mov	r1, r3
  344586: f071 f5cb    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x471b96
  34458a: ab14         	add	r3, sp, #0x50
  34458c: 4618         	mov	r0, r3
  34458e: f071 f1c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471382
  344592: ab13         	add	r3, sp, #0x4c
  344594: 4618         	mov	r0, r3
  344596: f071 f1bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47137a
  34459a: ab0a         	add	r3, sp, #0x28
  34459c: 4618         	mov	r0, r3
  34459e: f8df 3498    	ldr.w	r3, [pc, #0x498]        @ 0x344a38 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x698>
  3445a2: 447b         	add	r3, pc
  3445a4: 4619         	mov	r1, r3
  3445a6: f071 f6a3    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471d46
  3445aa: f033 fac9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x33592
  3445ae: 4604         	mov	r4, r0
  3445b0: ab1e         	add	r3, sp, #0x78
  3445b2: 4618         	mov	r0, r3
  3445b4: f045 f71e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445e3c
  3445b8: aa15         	add	r2, sp, #0x54
  3445ba: ab1e         	add	r3, sp, #0x78
  3445bc: 4610         	mov	r0, r2
  3445be: f8df 247c    	ldr.w	r2, [pc, #0x47c]        @ 0x344a3c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x69c>
  3445c2: 447a         	add	r2, pc
  3445c4: 4611         	mov	r1, r2
  3445c6: 461a         	mov	r2, r3
  3445c8: f072 f24a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472494
  3445cc: aa16         	add	r2, sp, #0x58
  3445ce: ab15         	add	r3, sp, #0x54
  3445d0: 4610         	mov	r0, r2
  3445d2: 4621         	mov	r1, r4
  3445d4: 461a         	mov	r2, r3
  3445d6: f033 f9f3    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x333e6
  3445da: aa0a         	add	r2, sp, #0x28
  3445dc: ab16         	add	r3, sp, #0x58
  3445de: 4610         	mov	r0, r2
  3445e0: 4619         	mov	r1, r3
  3445e2: f071 f59d    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x471b3a
  3445e6: ab16         	add	r3, sp, #0x58
  3445e8: 4618         	mov	r0, r3
  3445ea: f071 f193    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471326
  3445ee: ab15         	add	r3, sp, #0x54
  3445f0: 4618         	mov	r0, r3
  3445f2: f071 f18f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47131e
  3445f6: ab1e         	add	r3, sp, #0x78
  3445f8: 4618         	mov	r0, r3
  3445fa: f045 f6ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445dfe
  3445fe: ab0a         	add	r3, sp, #0x28
  344600: 4618         	mov	r0, r3
  344602: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x344a40 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6a0>
  344606: 447b         	add	r3, pc
  344608: 4619         	mov	r1, r3
  34460a: f071 f671    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471ce2
  34460e: f033 fa97    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3352e
  344612: 4604         	mov	r4, r0
  344614: ab1e         	add	r3, sp, #0x78
  344616: 4618         	mov	r0, r3
  344618: f045 f6ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445dd8
  34461c: aa17         	add	r2, sp, #0x5c
  34461e: ab1e         	add	r3, sp, #0x78
  344620: 4610         	mov	r0, r2
  344622: f8df 2420    	ldr.w	r2, [pc, #0x420]        @ 0x344a44 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6a4>
  344626: 447a         	add	r2, pc
  344628: 4611         	mov	r1, r2
  34462a: 461a         	mov	r2, r3
  34462c: f072 f218    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472430
  344630: aa18         	add	r2, sp, #0x60
  344632: ab17         	add	r3, sp, #0x5c
  344634: 4610         	mov	r0, r2
  344636: 4621         	mov	r1, r4
  344638: 461a         	mov	r2, r3
  34463a: f033 f9c1    	bl	0x3779c0 <NetworkManager::urlEncode(std::string)> @ imm = #0x33382
  34463e: aa0a         	add	r2, sp, #0x28
  344640: ab18         	add	r3, sp, #0x60
  344642: 4610         	mov	r0, r2
  344644: 4619         	mov	r1, r3
  344646: f071 f56b    	bl	0x7b6120 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19670> @ imm = #0x471ad6
  34464a: ab18         	add	r3, sp, #0x60
  34464c: 4618         	mov	r0, r3
  34464e: f071 f161    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4712c2
  344652: ab17         	add	r3, sp, #0x5c
  344654: 4618         	mov	r0, r3
  344656: f071 f15d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4712ba
  34465a: ab1e         	add	r3, sp, #0x78
  34465c: 4618         	mov	r0, r3
  34465e: f045 f6cd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445d9a
  344662: ab0a         	add	r3, sp, #0x28
  344664: 4618         	mov	r0, r3
  344666: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x344a48 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6a8>
  344668: 447b         	add	r3, pc
  34466a: 4619         	mov	r1, r3
  34466c: f071 f640    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471c80
  344670: ab0a         	add	r3, sp, #0x28
  344672: 4618         	mov	r0, r3
  344674: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x344a4c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6ac>
  344676: 447b         	add	r3, pc
  344678: 4619         	mov	r1, r3
  34467a: f071 f639    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x471c72
  34467e: f0dd fed7    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #0xdddae
  344682: 4603         	mov	r3, r0
  344684: 2400         	movs	r4, #0x0
  344686: 2500         	movs	r5, #0x0
  344688: 2600         	movs	r6, #0x0
  34468a: 2b00         	cmp	r3, #0x0
  34468c: d016         	beq	0x3446bc <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x31c> @ imm = #0x2c
  34468e: ab19         	add	r3, sp, #0x64
  344690: 4618         	mov	r0, r3
  344692: f0dd fdab    	bl	0x4221ec <ApplicationInterface::getClaimedIdentity()> @ imm = #0xddb56
  344696: 2401         	movs	r4, #0x1
  344698: ab19         	add	r3, sp, #0x64
  34469a: 4618         	mov	r0, r3
  34469c: f070 f630    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470c60
  3446a0: 4607         	mov	r7, r0
  3446a2: ab07         	add	r3, sp, #0x1c
  3446a4: 4618         	mov	r0, r3
  3446a6: f045 f6a5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445d4a
  3446aa: 2501         	movs	r5, #0x1
  3446ac: aa1a         	add	r2, sp, #0x68
  3446ae: ab07         	add	r3, sp, #0x1c
  3446b0: 4610         	mov	r0, r2
  3446b2: 4639         	mov	r1, r7
  3446b4: 461a         	mov	r2, r3
  3446b6: f072 f1d3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4723a6
  3446ba: e029         	b	0x344710 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x370> @ imm = #0x52
  3446bc: f0dd fed0    	bl	0x422460 <ApplicationInterface::hasDeviceIdentity()> @ imm = #0xddda0
  3446c0: 4603         	mov	r3, r0
  3446c2: 2b00         	cmp	r3, #0x0
  3446c4: d004         	beq	0x3446d0 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x330> @ imm = #0x8
  3446c6: ab1a         	add	r3, sp, #0x68
  3446c8: 4618         	mov	r0, r3
  3446ca: f0dd fe0f    	bl	0x4222ec <ApplicationInterface::getDeviceIdentity()> @ imm = #0xddc1e
  3446ce: e01f         	b	0x344710 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x370> @ imm = #0x3e
  3446d0: f033 fa36    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3346c
  3446d4: 4603         	mov	r3, r0
  3446d6: 4618         	mov	r0, r3
  3446d8: f036 fc88    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #0x36910
  3446dc: 4603         	mov	r3, r0
  3446de: 2b00         	cmp	r3, #0x0
  3446e0: d008         	beq	0x3446f4 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x354> @ imm = #0x10
  3446e2: f033 fa2d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x3345a
  3446e6: 4603         	mov	r3, r0
  3446e8: aa1a         	add	r2, sp, #0x68
  3446ea: 4610         	mov	r0, r2
  3446ec: 4619         	mov	r1, r3
  3446ee: f036 fc9d    	bl	0x37b02c <NetworkManager::getPrivateClientToken()> @ imm = #0x3693a
  3446f2: e00d         	b	0x344710 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x370> @ imm = #0x1a
  3446f4: ab06         	add	r3, sp, #0x18
  3446f6: 4618         	mov	r0, r3
  3446f8: f045 f67c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445cf8
  3446fc: 2601         	movs	r6, #0x1
  3446fe: aa1a         	add	r2, sp, #0x68
  344700: ab06         	add	r3, sp, #0x18
  344702: 4610         	mov	r0, r2
  344704: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x344a50 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6b0>
  344706: 447a         	add	r2, pc
  344708: 4611         	mov	r1, r2
  34470a: 461a         	mov	r2, r3
  34470c: f072 f1a8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472350
  344710: aa09         	add	r2, sp, #0x24
  344712: ab1a         	add	r3, sp, #0x68
  344714: 4610         	mov	r0, r2
  344716: 4619         	mov	r1, r3
  344718: f071 f74c    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x471e98
  34471c: ab1a         	add	r3, sp, #0x68
  34471e: 4618         	mov	r0, r3
  344720: f071 f0f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4711f0
  344724: 2e00         	cmp	r6, #0x0
  344726: d003         	beq	0x344730 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x390> @ imm = #0x6
  344728: ab06         	add	r3, sp, #0x18
  34472a: 4618         	mov	r0, r3
  34472c: f045 f666    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445ccc
  344730: 2d00         	cmp	r5, #0x0
  344732: d003         	beq	0x34473c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x39c> @ imm = #0x6
  344734: ab07         	add	r3, sp, #0x1c
  344736: 4618         	mov	r0, r3
  344738: f045 f660    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445cc0
  34473c: 2c00         	cmp	r4, #0x0
  34473e: d005         	beq	0x34474c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3ac> @ imm = #0xa
  344740: bf00         	nop
  344742: ab19         	add	r3, sp, #0x64
  344744: 4618         	mov	r0, r3
  344746: f071 f0e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4711ca
  34474a: e000         	b	0x34474e <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3ae> @ imm = #0x0
  34474c: bf00         	nop
  34474e: ab1b         	add	r3, sp, #0x6c
  344750: 4618         	mov	r0, r3
  344752: f070 f52d    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x470a5a
  344756: f0dd fefd    	bl	0x422554 <ApplicationInterface::getPlatformId()> @ imm = #0xdddfa
  34475a: 4603         	mov	r3, r0
  34475c: 2b14         	cmp	r3, #0x14
  34475e: d00b         	beq	0x344778 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3d8> @ imm = #0x16
  344760: 2b1e         	cmp	r3, #0x1e
  344762: d011         	beq	0x344788 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3e8> @ imm = #0x22
  344764: 2b0a         	cmp	r3, #0xa
  344766: d117         	bne	0x344798 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x3f8> @ imm = #0x2e
  344768: ab1b         	add	r3, sp, #0x6c
  34476a: 4618         	mov	r0, r3
  34476c: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x344a54 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6b4>
  34476e: 447b         	add	r3, pc
  344770: 4619         	mov	r1, r3
  344772: f071 f37d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4716fa
  344776: e017         	b	0x3447a8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x408> @ imm = #0x2e
  344778: ab1b         	add	r3, sp, #0x6c
  34477a: 4618         	mov	r0, r3
  34477c: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x344a58 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6b8>
  34477e: 447b         	add	r3, pc
  344780: 4619         	mov	r1, r3
  344782: f071 f375    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4716ea
  344786: e00f         	b	0x3447a8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x408> @ imm = #0x1e
  344788: ab1b         	add	r3, sp, #0x6c
  34478a: 4618         	mov	r0, r3
  34478c: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x344a5c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6bc>
  34478e: 447b         	add	r3, pc
  344790: 4619         	mov	r1, r3
  344792: f071 f36d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4716da
  344796: e007         	b	0x3447a8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x408> @ imm = #0xe
  344798: ab1b         	add	r3, sp, #0x6c
  34479a: 4618         	mov	r0, r3
  34479c: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x344a60 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6c0>
  34479e: 447b         	add	r3, pc
  3447a0: 4619         	mov	r1, r3
  3447a2: f071 f365    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4716ca
  3447a6: bf00         	nop
  3447a8: ab1b         	add	r3, sp, #0x6c
  3447aa: 4618         	mov	r0, r3
  3447ac: f070 f5a8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470b50
  3447b0: 4604         	mov	r4, r0
  3447b2: ab1d         	add	r3, sp, #0x74
  3447b4: 4618         	mov	r0, r3
  3447b6: f0e7 fd11    	bl	0x42c1dc <ApplicationInterface::getAppVersion()> @ imm = #0xe7a22
  3447ba: ab1d         	add	r3, sp, #0x74
  3447bc: 4618         	mov	r0, r3
  3447be: f070 f59f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470b3e
  3447c2: 4603         	mov	r3, r0
  3447c4: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x344a64 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6c4>
  3447c6: 447a         	add	r2, pc
  3447c8: 4610         	mov	r0, r2
  3447ca: 4621         	mov	r1, r4
  3447cc: 461a         	mov	r2, r3
  3447ce: f255 f99f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x25533e
  3447d2: 4603         	mov	r3, r0
  3447d4: 4618         	mov	r0, r3
  3447d6: f255 f8a7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25514e
  3447da: 4604         	mov	r4, r0
  3447dc: ab1e         	add	r3, sp, #0x78
  3447de: 4618         	mov	r0, r3
  3447e0: f045 f608    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445c10
  3447e4: aa1c         	add	r2, sp, #0x70
  3447e6: ab1e         	add	r3, sp, #0x78
  3447e8: 4610         	mov	r0, r2
  3447ea: 4621         	mov	r1, r4
  3447ec: 461a         	mov	r2, r3
  3447ee: f072 f137    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47226e
  3447f2: ab1e         	add	r3, sp, #0x78
  3447f4: 4618         	mov	r0, r3
  3447f6: f045 f601    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445c02
  3447fa: ab1d         	add	r3, sp, #0x74
  3447fc: 4618         	mov	r0, r3
  3447fe: f071 f089    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471112
  344802: ab08         	add	r3, sp, #0x20
  344804: 4618         	mov	r0, r3
  344806: f070 f57b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470af6
  34480a: 4606         	mov	r6, r0
  34480c: ab1c         	add	r3, sp, #0x70
  34480e: 4618         	mov	r0, r3
  344810: f070 f576    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470aec
  344814: 4605         	mov	r5, r0
  344816: ab09         	add	r3, sp, #0x24
  344818: 4618         	mov	r0, r3
  34481a: f070 f571    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470ae2
  34481e: 4604         	mov	r4, r0
  344820: ab0a         	add	r3, sp, #0x28
  344822: 4618         	mov	r0, r3
  344824: f070 f56c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x470ad8
  344828: 4603         	mov	r3, r0
  34482a: 9300         	str	r3, [sp]
  34482c: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x344a68 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x6c8>
  34482e: 447b         	add	r3, pc
  344830: 4618         	mov	r0, r3
  344832: 4631         	mov	r1, r6
  344834: 462a         	mov	r2, r5
  344836: 4623         	mov	r3, r4
  344838: f255 f96a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2552d4
  34483c: 4603         	mov	r3, r0
  34483e: 4618         	mov	r0, r3
  344840: f255 f872    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2550e4
  344844: 4604         	mov	r4, r0
  344846: ab1e         	add	r3, sp, #0x78
  344848: 4618         	mov	r0, r3
  34484a: f045 f5d3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x445ba6
  34484e: aa1d         	add	r2, sp, #0x74
  344850: ab1e         	add	r3, sp, #0x78
  344852: 4610         	mov	r0, r2
  344854: 4621         	mov	r1, r4
  344856: 461a         	mov	r2, r3
  344858: f072 f102    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x472204
  34485c: ab1e         	add	r3, sp, #0x78
  34485e: 4618         	mov	r0, r3
  344860: f045 f5cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445b98
  344864: aa1e         	add	r2, sp, #0x78
  344866: ab1d         	add	r3, sp, #0x74
  344868: 4610         	mov	r0, r2
  34486a: 4619         	mov	r1, r3
  34486c: f071 f63c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x471c78
  344870: ab1e         	add	r3, sp, #0x78
  344872: 4618         	mov	r0, r3
  344874: f0e7 fbb2    	bl	0x42bfdc <ApplicationInterface::openURL(std::string)> @ imm = #0xe7764
  344878: ab1e         	add	r3, sp, #0x78
  34487a: 4618         	mov	r0, r3
  34487c: f071 f04a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471094
  344880: ab1d         	add	r3, sp, #0x74
  344882: 4618         	mov	r0, r3
  344884: f071 f046    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47108c
  344888: ab1c         	add	r3, sp, #0x70
  34488a: 4618         	mov	r0, r3
  34488c: f071 f042    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471084
  344890: ab1b         	add	r3, sp, #0x6c
  344892: 4618         	mov	r0, r3
  344894: f071 f03e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47107c
  344898: ab0a         	add	r3, sp, #0x28
  34489a: 4618         	mov	r0, r3
  34489c: f071 f03a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471074
  3448a0: ab09         	add	r3, sp, #0x24
  3448a2: 4618         	mov	r0, r3
  3448a4: f071 f036    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47106c
  3448a8: ab08         	add	r3, sp, #0x20
  3448aa: 4618         	mov	r0, r3
  3448ac: f071 f032    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471064
  3448b0: e0b1         	b	0x344a16 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x676> @ imm = #0x162
  3448b2: ab0c         	add	r3, sp, #0x30
  3448b4: 4618         	mov	r0, r3
  3448b6: f071 f02d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47105a
  3448ba: e7ff         	b	0x3448bc <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x51c> @ imm = #-0x2
  3448bc: ab0b         	add	r3, sp, #0x2c
  3448be: 4618         	mov	r0, r3
  3448c0: f071 f028    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471050
  3448c4: e7ff         	b	0x3448c6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x526> @ imm = #-0x2
  3448c6: ab1e         	add	r3, sp, #0x78
  3448c8: 4618         	mov	r0, r3
  3448ca: f045 f597    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445b2e
  3448ce: e092         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x124
  3448d0: ab0e         	add	r3, sp, #0x38
  3448d2: 4618         	mov	r0, r3
  3448d4: f071 f01e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47103c
  3448d8: e7ff         	b	0x3448da <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x53a> @ imm = #-0x2
  3448da: ab0d         	add	r3, sp, #0x34
  3448dc: 4618         	mov	r0, r3
  3448de: f071 f019    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471032
  3448e2: e7ff         	b	0x3448e4 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x544> @ imm = #-0x2
  3448e4: ab1e         	add	r3, sp, #0x78
  3448e6: 4618         	mov	r0, r3
  3448e8: f045 f588    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445b10
  3448ec: e083         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x106
  3448ee: ab10         	add	r3, sp, #0x40
  3448f0: 4618         	mov	r0, r3
  3448f2: f071 f00f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47101e
  3448f6: e7ff         	b	0x3448f8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x558> @ imm = #-0x2
  3448f8: ab0f         	add	r3, sp, #0x3c
  3448fa: 4618         	mov	r0, r3
  3448fc: f071 f00a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471014
  344900: e7ff         	b	0x344902 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x562> @ imm = #-0x2
  344902: ab1e         	add	r3, sp, #0x78
  344904: 4618         	mov	r0, r3
  344906: f045 f579    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445af2
  34490a: e074         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0xe8
  34490c: ab12         	add	r3, sp, #0x48
  34490e: 4618         	mov	r0, r3
  344910: f071 f000    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x471000
  344914: e7ff         	b	0x344916 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x576> @ imm = #-0x2
  344916: ab11         	add	r3, sp, #0x44
  344918: 4618         	mov	r0, r3
  34491a: f070 f7fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470ff6
  34491e: e7ff         	b	0x344920 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x580> @ imm = #-0x2
  344920: ab1e         	add	r3, sp, #0x78
  344922: 4618         	mov	r0, r3
  344924: f045 f56a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445ad4
  344928: e065         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0xca
  34492a: ab14         	add	r3, sp, #0x50
  34492c: 4618         	mov	r0, r3
  34492e: f070 f7f1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fe2
  344932: e7ff         	b	0x344934 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x594> @ imm = #-0x2
  344934: ab13         	add	r3, sp, #0x4c
  344936: 4618         	mov	r0, r3
  344938: f070 f7ec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fd8
  34493c: e05b         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0xb6
  34493e: ab16         	add	r3, sp, #0x58
  344940: 4618         	mov	r0, r3
  344942: f070 f7e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fce
  344946: e7ff         	b	0x344948 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5a8> @ imm = #-0x2
  344948: ab15         	add	r3, sp, #0x54
  34494a: 4618         	mov	r0, r3
  34494c: f070 f7e2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fc4
  344950: e7ff         	b	0x344952 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5b2> @ imm = #-0x2
  344952: ab1e         	add	r3, sp, #0x78
  344954: 4618         	mov	r0, r3
  344956: f045 f551    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445aa2
  34495a: e04c         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x98
  34495c: ab18         	add	r3, sp, #0x60
  34495e: 4618         	mov	r0, r3
  344960: f070 f7d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fb0
  344964: e7ff         	b	0x344966 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c6> @ imm = #-0x2
  344966: ab17         	add	r3, sp, #0x5c
  344968: 4618         	mov	r0, r3
  34496a: f070 f7d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470fa6
  34496e: e7ff         	b	0x344970 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5d0> @ imm = #-0x2
  344970: ab1e         	add	r3, sp, #0x78
  344972: 4618         	mov	r0, r3
  344974: f045 f542    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445a84
  344978: e03d         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x7a
  34497a: ab1a         	add	r3, sp, #0x68
  34497c: 4618         	mov	r0, r3
  34497e: f070 f7c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f92
  344982: e7ff         	b	0x344984 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5e4> @ imm = #-0x2
  344984: 2e00         	cmp	r6, #0x0
  344986: d003         	beq	0x344990 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5f0> @ imm = #0x6
  344988: ab06         	add	r3, sp, #0x18
  34498a: 4618         	mov	r0, r3
  34498c: f045 f536    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445a6c
  344990: 2d00         	cmp	r5, #0x0
  344992: d003         	beq	0x34499c <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5fc> @ imm = #0x6
  344994: ab07         	add	r3, sp, #0x1c
  344996: 4618         	mov	r0, r3
  344998: f045 f530    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445a60
  34499c: 2c00         	cmp	r4, #0x0
  34499e: d029         	beq	0x3449f4 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x654> @ imm = #0x52
  3449a0: bf00         	nop
  3449a2: ab19         	add	r3, sp, #0x64
  3449a4: 4618         	mov	r0, r3
  3449a6: f070 f7b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f6a
  3449aa: e024         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x48
  3449ac: ab1e         	add	r3, sp, #0x78
  3449ae: 4618         	mov	r0, r3
  3449b0: f045 f524    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445a48
  3449b4: e7ff         	b	0x3449b6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x616> @ imm = #-0x2
  3449b6: ab1d         	add	r3, sp, #0x74
  3449b8: 4618         	mov	r0, r3
  3449ba: f070 f7ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f56
  3449be: e013         	b	0x3449e8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x648> @ imm = #0x26
  3449c0: ab1e         	add	r3, sp, #0x78
  3449c2: 4618         	mov	r0, r3
  3449c4: f045 f51a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x445a34
  3449c8: e009         	b	0x3449de <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x63e> @ imm = #0x12
  3449ca: ab1e         	add	r3, sp, #0x78
  3449cc: 4618         	mov	r0, r3
  3449ce: f070 f7a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f42
  3449d2: e7ff         	b	0x3449d4 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x634> @ imm = #-0x2
  3449d4: ab1d         	add	r3, sp, #0x74
  3449d6: 4618         	mov	r0, r3
  3449d8: f070 f79c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f38
  3449dc: e7ff         	b	0x3449de <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x63e> @ imm = #-0x2
  3449de: ab1c         	add	r3, sp, #0x70
  3449e0: 4618         	mov	r0, r3
  3449e2: f070 f797    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f2e
  3449e6: e7ff         	b	0x3449e8 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x648> @ imm = #-0x2
  3449e8: ab1b         	add	r3, sp, #0x6c
  3449ea: 4618         	mov	r0, r3
  3449ec: f070 f792    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f24
  3449f0: e001         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x2
  3449f2: e000         	b	0x3449f6 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x656> @ imm = #0x0
  3449f4: bf00         	nop
  3449f6: ab0a         	add	r3, sp, #0x28
  3449f8: 4618         	mov	r0, r3
  3449fa: f070 f78b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f16
  3449fe: e7ff         	b	0x344a00 <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x660> @ imm = #-0x2
  344a00: ab09         	add	r3, sp, #0x24
  344a02: 4618         	mov	r0, r3
  344a04: f070 f786    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f0c
  344a08: e7ff         	b	0x344a0a <HelpLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x66a> @ imm = #-0x2
  344a0a: ab08         	add	r3, sp, #0x20
  344a0c: 4618         	mov	r0, r3
  344a0e: f070 f781    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x470f02
  344a12: f043 f34b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x443696
  344a16: b021         	add	sp, #0x84
  344a18: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x344a19); words below are literal-pool data ---
  344a1a: bf00         	nop
  344a1c: 5e7e         	ldrsh	r6, [r7, r1]
  344a1e: 0048         	lsls	r0, r1, #0x1
  344a20: 5e3a         	ldrsh	r2, [r7, r0]
  344a22: 0048         	lsls	r0, r1, #0x1
  344a24: 5e0a         	ldrsh	r2, [r1, r0]
  344a26: 0048         	lsls	r0, r1, #0x1
  344a28: 5df2         	ldrb	r2, [r6, r7]
  344a2a: 0048         	lsls	r0, r1, #0x1
  344a2c: 5da6         	ldrb	r6, [r4, r6]
  344a2e: 0048         	lsls	r0, r1, #0x1
  344a30: 5db2         	ldrb	r2, [r6, r6]
  344a32: 0048         	lsls	r0, r1, #0x1
  344a34: 5d42         	ldrb	r2, [r0, r5]
  344a36: 0048         	lsls	r0, r1, #0x1
  344a38: 5cfa         	ldrb	r2, [r7, r3]
  344a3a: 0048         	lsls	r0, r1, #0x1
  344a3c: 5d2a         	ldrb	r2, [r5, r4]
  344a3e: 0048         	lsls	r0, r1, #0x1
  344a40: 5c96         	ldrb	r6, [r2, r2]
  344a42: 0048         	lsls	r0, r1, #0x1
  344a44: 5cea         	ldrb	r2, [r5, r3]
  344a46: 0048         	lsls	r0, r1, #0x1
  344a48: 5c34         	ldrb	r4, [r6, r0]
  344a4a: 0048         	lsls	r0, r1, #0x1
  344a4c: 5c26         	ldrb	r6, [r4, r0]
  344a4e: 0048         	lsls	r0, r1, #0x1
  344a50: 5c2e         	ldrb	r6, [r5, r0]
  344a52: 0048         	lsls	r0, r1, #0x1
  344a54: 5bce         	ldrh	r6, [r1, r7]
  344a56: 0048         	lsls	r0, r1, #0x1
  344a58: 5bc2         	ldrh	r2, [r0, r7]
  344a5a: 0048         	lsls	r0, r1, #0x1
  344a5c: 5bb6         	ldrh	r6, [r6, r6]
  344a5e: 0048         	lsls	r0, r1, #0x1
  344a60: 5baa         	ldrh	r2, [r5, r6]
  344a62: 0048         	lsls	r0, r1, #0x1
  344a64: 5b86         	ldrh	r6, [r0, r6]
  344a66: 0048         	lsls	r0, r1, #0x1
  344a68: 5b2a         	ldrh	r2, [r5, r4]
  344a6a: 0048         	lsls	r0, r1, #0x1
