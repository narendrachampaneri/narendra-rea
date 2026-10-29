// NewsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../NewsLayer.cpp

// ==== NewsLayer::create
//      file offset 0x388d94 (= ELF address; Ghidra 0x398d94), 112 bytes, Thumb-2
  388d94: b510         	push	{r4, lr}
  388d96: b082         	sub	sp, #0x8
  388d98: f44f 708c    	mov.w	r0, #0x118
  388d9c: f3fe fde2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3febc4
  388da0: 4603         	mov	r3, r0
  388da2: 461c         	mov	r4, r3
  388da4: 4620         	mov	r0, r4
  388da6: f000 f82d    	bl	0x388e04 <NewsLayer::NewsLayer()> @ imm = #0x5a
  388daa: 9401         	str	r4, [sp, #0x4]
  388dac: 9b01         	ldr	r3, [sp, #0x4]
  388dae: 2b00         	cmp	r3, #0x0
  388db0: d00a         	beq	0x388dc8 <NewsLayer::create()+0x34> @ imm = #0x14
  388db2: 9b01         	ldr	r3, [sp, #0x4]
  388db4: 681b         	ldr	r3, [r3]
  388db6: 3318         	adds	r3, #0x18
  388db8: 681b         	ldr	r3, [r3]
  388dba: 9801         	ldr	r0, [sp, #0x4]
  388dbc: 4798         	blx	r3
  388dbe: 4603         	mov	r3, r0
  388dc0: 2b00         	cmp	r3, #0x0
  388dc2: d001         	beq	0x388dc8 <NewsLayer::create()+0x34> @ imm = #0x2
  388dc4: 2301         	movs	r3, #0x1
  388dc6: e000         	b	0x388dca <NewsLayer::create()+0x36> @ imm = #0x0
  388dc8: 2300         	movs	r3, #0x0
  388dca: 2b00         	cmp	r3, #0x0
  388dcc: d005         	beq	0x388dda <NewsLayer::create()+0x46> @ imm = #0xa
  388dce: 9b01         	ldr	r3, [sp, #0x4]
  388dd0: 4618         	mov	r0, r3
  388dd2: f20f f893    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x20f126
  388dd6: 9b01         	ldr	r3, [sp, #0x4]
  388dd8: e011         	b	0x388dfe <NewsLayer::create()+0x6a> @ imm = #0x22
  388dda: 9b01         	ldr	r3, [sp, #0x4]
  388ddc: 2b00         	cmp	r3, #0x0
  388dde: d005         	beq	0x388dec <NewsLayer::create()+0x58> @ imm = #0xa
  388de0: 9b01         	ldr	r3, [sp, #0x4]
  388de2: 681b         	ldr	r3, [r3]
  388de4: 3308         	adds	r3, #0x8
  388de6: 681b         	ldr	r3, [r3]
  388de8: 9801         	ldr	r0, [sp, #0x4]
  388dea: 4798         	blx	r3
  388dec: 2300         	movs	r3, #0x0
  388dee: 9301         	str	r3, [sp, #0x4]
  388df0: 2300         	movs	r3, #0x0
  388df2: e004         	b	0x388dfe <NewsLayer::create()+0x6a> @ imm = #0x8
  388df4: 4620         	mov	r0, r4
  388df6: f3ff f955    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ff2aa
  388dfa: f3ff f957    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ff2ae
  388dfe: 4618         	mov	r0, r3
  388e00: b002         	add	sp, #0x8
  388e02: bd10         	pop	{r4, pc}

// ==== NewsLayer::NewsLayer
//      file offset 0x388e04 (= ELF address; Ghidra 0x398e04), 88 bytes, Thumb-2
  388e04: b510         	push	{r4, lr}
  388e06: b082         	sub	sp, #0x8
  388e08: 9001         	str	r0, [sp, #0x4]
  388e0a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x388e54 <NewsLayer::NewsLayer()+0x50>
  388e0c: 447c         	add	r4, pc
  388e0e: 9b01         	ldr	r3, [sp, #0x4]
  388e10: 4618         	mov	r0, r3
  388e12: f224 f923    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x224246
  388e16: 9b01         	ldr	r3, [sp, #0x4]
  388e18: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x388e58 <NewsLayer::NewsLayer()+0x54>
  388e1a: 58a2         	ldr	r2, [r4, r2]
  388e1c: 3208         	adds	r2, #0x8
  388e1e: 601a         	str	r2, [r3]
  388e20: 9b01         	ldr	r3, [sp, #0x4]
  388e22: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x388e58 <NewsLayer::NewsLayer()+0x54>
  388e24: 58a2         	ldr	r2, [r4, r2]
  388e26: f502 7204    	add.w	r2, r2, #0x210
  388e2a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  388e2e: 9b01         	ldr	r3, [sp, #0x4]
  388e30: 4a09         	ldr	r2, [pc, #0x24]         @ 0x388e58 <NewsLayer::NewsLayer()+0x54>
  388e32: 58a2         	ldr	r2, [r4, r2]
  388e34: f502 7210    	add.w	r2, r2, #0x240
  388e38: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  388e3c: 9b01         	ldr	r3, [sp, #0x4]
  388e3e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x388e58 <NewsLayer::NewsLayer()+0x54>
  388e40: 58a2         	ldr	r2, [r4, r2]
  388e42: f502 7213    	add.w	r2, r2, #0x24c
  388e46: f8c3 20ec    	str.w	r2, [r3, #0xec]
  388e4a: 9b01         	ldr	r3, [sp, #0x4]
  388e4c: 4618         	mov	r0, r3
  388e4e: b002         	add	sp, #0x8
  388e50: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x388e51); words below are literal-pool data ---
  388e52: bf00         	nop
  388e54: 9bfc         	ldr	r3, [sp, #0x3f0]
  388e56: 005a         	lsls	r2, r3, #0x1
  388e58: dcf0         	bgt	0x388e3c <NewsLayer::NewsLayer()+0x38> @ imm = #-0x20
  388e5a: ffff b500    	<unknown>

// ==== NewsLayer::scene
//      file offset 0x388e5c (= ELF address; Ghidra 0x398e5c), 46 bytes, Thumb-2
  388e5c: b500         	push	{lr}
  388e5e: b083         	sub	sp, #0xc
  388e60: f226 fdfe    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x226bfc
  388e64: 4603         	mov	r3, r0
  388e66: 9300         	str	r3, [sp]
  388e68: f7ff ff94    	bl	0x388d94 <NewsLayer::create()> @ imm = #-0xd8
  388e6c: 4603         	mov	r3, r0
  388e6e: 9301         	str	r3, [sp, #0x4]
  388e70: 9b00         	ldr	r3, [sp]
  388e72: 681b         	ldr	r3, [r3]
  388e74: 33c8         	adds	r3, #0xc8
  388e76: 681b         	ldr	r3, [r3]
  388e78: 9a00         	ldr	r2, [sp]
  388e7a: 4610         	mov	r0, r2
  388e7c: 9901         	ldr	r1, [sp, #0x4]
  388e7e: 4798         	blx	r3
  388e80: 9b00         	ldr	r3, [sp]
  388e82: 4618         	mov	r0, r3
  388e84: b003         	add	sp, #0xc
  388e86: f85d fb04    	ldr	pc, [sp], #4

// ==== NewsLayer::init
//      file offset 0x388e90 (= ELF address; Ghidra 0x398e90), 952 bytes, Thumb-2
  388e90: b570         	push	{r4, r5, r6, lr}
  388e92: ed2d 8b02    	vpush	{d8}
  388e96: b0a4         	sub	sp, #0x90
  388e98: 9003         	str	r0, [sp, #0xc]
  388e9a: 4ce2         	ldr	r4, [pc, #0x388]        @ 0x389224 <NewsLayer::init()+0x394>
  388e9c: 447c         	add	r4, pc
  388e9e: 9b03         	ldr	r3, [sp, #0xc]
  388ea0: 4618         	mov	r0, r3
  388ea2: f224 f9a9    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x224352
  388ea6: 4603         	mov	r3, r0
  388ea8: f88d 3017    	strb.w	r3, [sp, #0x17]
  388eac: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  388eb0: f083 0301    	eor	r3, r3, #0x1
  388eb4: b2db         	uxtb	r3, r3
  388eb6: 2b00         	cmp	r3, #0x0
  388eb8: d001         	beq	0x388ebe <NewsLayer::init()+0x2e> @ imm = #0x2
  388eba: 2300         	movs	r3, #0x0
  388ebc: e1a7         	b	0x38920e <NewsLayer::init()+0x37e> @ imm = #0x34e
  388ebe: 9b03         	ldr	r3, [sp, #0xc]
  388ec0: 2200         	movs	r2, #0x0
  388ec2: f883 2108    	strb.w	r2, [r3, #0x108]
  388ec6: ab0c         	add	r3, sp, #0x30
  388ec8: 4618         	mov	r0, r3
  388eca: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x389228 <NewsLayer::init()+0x398>
  388ecc: 58e3         	ldr	r3, [r4, r3]
  388ece: 4619         	mov	r1, r3
  388ed0: f20a f8ee    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x20a1dc
  388ed4: ed9d 7a0c    	vldr	s14, [sp, #48]
  388ed8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  388edc: eec7 6a27    	vdiv.f32	s13, s14, s15
  388ee0: ed9d 7a0d    	vldr	s14, [sp, #52]
  388ee4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  388ee8: eec7 7a27    	vdiv.f32	s15, s14, s15
  388eec: ab0e         	add	r3, sp, #0x38
  388eee: 4618         	mov	r0, r3
  388ef0: ee16 1a90    	vmov	r1, s13
  388ef4: ee17 2a90    	vmov	r2, s15
  388ef8: f209 fefa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x209df4
  388efc: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x38922c <NewsLayer::init()+0x39c>
  388efe: 447b         	add	r3, pc
  388f00: 4618         	mov	r0, r3
  388f02: f24f f93f    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x24f27e
  388f06: 4602         	mov	r2, r0
  388f08: 9b03         	ldr	r3, [sp, #0xc]
  388f0a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  388f0e: 9b03         	ldr	r3, [sp, #0xc]
  388f10: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  388f14: 681b         	ldr	r3, [r3]
  388f16: 334c         	adds	r3, #0x4c
  388f18: 681b         	ldr	r3, [r3]
  388f1a: 9a03         	ldr	r2, [sp, #0xc]
  388f1c: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  388f20: aa0e         	add	r2, sp, #0x38
  388f22: 4608         	mov	r0, r1
  388f24: 4611         	mov	r1, r2
  388f26: 4798         	blx	r3
  388f28: 9b03         	ldr	r3, [sp, #0xc]
  388f2a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  388f2e: 681b         	ldr	r3, [r3]
  388f30: f503 73d2    	add.w	r3, r3, #0x1a4
  388f34: 681b         	ldr	r3, [r3]
  388f36: 9a03         	ldr	r2, [sp, #0xc]
  388f38: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  388f3c: 4610         	mov	r0, r2
  388f3e: 2123         	movs	r1, #0x23
  388f40: 4798         	blx	r3
  388f42: 9b03         	ldr	r3, [sp, #0xc]
  388f44: 681b         	ldr	r3, [r3]
  388f46: 33c8         	adds	r3, #0xc8
  388f48: 681b         	ldr	r3, [r3]
  388f4a: 9903         	ldr	r1, [sp, #0xc]
  388f4c: 9a03         	ldr	r2, [sp, #0xc]
  388f4e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  388f52: 4608         	mov	r0, r1
  388f54: 4611         	mov	r1, r2
  388f56: 4798         	blx	r3
  388f58: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x389228 <NewsLayer::init()+0x398>
  388f5a: 58e3         	ldr	r3, [r4, r3]
  388f5c: 681b         	ldr	r3, [r3]
  388f5e: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x389228 <NewsLayer::init()+0x398>
  388f60: 58a2         	ldr	r2, [r4, r2]
  388f62: ed92 7a01    	vldr	s14, [r2, #4]
  388f66: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x389220 <NewsLayer::init()+0x390>
  388f6a: ee77 7a67    	vsub.f32	s15, s14, s15
  388f6e: aa20         	add	r2, sp, #0x80
  388f70: edcd 7a00    	vstr	s15, [sp]
  388f74: 4610         	mov	r0, r2
  388f76: f04f 0100    	mov.w	r1, #0x0
  388f7a: f04f 0200    	mov.w	r2, #0x0
  388f7e: f20a f9af    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x20a35e
  388f82: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x389230 <NewsLayer::init()+0x3a0>
  388f84: 58e3         	ldr	r3, [r4, r3]
  388f86: 6819         	ldr	r1, [r3]
  388f88: 9a20         	ldr	r2, [sp, #0x80]
  388f8a: 9b21         	ldr	r3, [sp, #0x84]
  388f8c: 9d22         	ldr	r5, [sp, #0x88]
  388f8e: 9823         	ldr	r0, [sp, #0x8c]
  388f90: 9500         	str	r5, [sp]
  388f92: 9001         	str	r0, [sp, #0x4]
  388f94: 4608         	mov	r0, r1
  388f96: 49a7         	ldr	r1, [pc, #0x29c]        @ 0x389234 <NewsLayer::init()+0x3a4>
  388f98: 4479         	add	r1, pc
  388f9a: f09f fe97    	bl	0x428ccc <ZYWebView::showWebView(char const*, float, float, float, float)> @ imm = #0x9fd2e
  388f9e: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x389238 <NewsLayer::init()+0x3a8>
  388fa0: 447b         	add	r3, pc
  388fa2: 4618         	mov	r0, r3
  388fa4: f24f f9ae    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24f35c
  388fa8: 4603         	mov	r3, r0
  388faa: 9307         	str	r3, [sp, #0x1c]
  388fac: 9a03         	ldr	r2, [sp, #0xc]
  388fae: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x38923c <NewsLayer::init()+0x3ac>
  388fb0: 58e3         	ldr	r3, [r4, r3]
  388fb2: 9316         	str	r3, [sp, #0x58]
  388fb4: 2300         	movs	r3, #0x0
  388fb6: 9317         	str	r3, [sp, #0x5c]
  388fb8: 9b17         	ldr	r3, [sp, #0x5c]
  388fba: 9300         	str	r3, [sp]
  388fbc: 9b16         	ldr	r3, [sp, #0x58]
  388fbe: 9807         	ldr	r0, [sp, #0x1c]
  388fc0: 9907         	ldr	r1, [sp, #0x1c]
  388fc2: f22f f9b3    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x22f366
  388fc6: 4603         	mov	r3, r0
  388fc8: 9308         	str	r3, [sp, #0x20]
  388fca: 9808         	ldr	r0, [sp, #0x20]
  388fcc: 2100         	movs	r1, #0x0
  388fce: f22c f8b5    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x22c16a
  388fd2: 4602         	mov	r2, r0
  388fd4: 9b03         	ldr	r3, [sp, #0xc]
  388fd6: f8c3 2114    	str.w	r2, [r3, #0x114]
  388fda: 9b03         	ldr	r3, [sp, #0xc]
  388fdc: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  388fe0: 4618         	mov	r0, r3
  388fe2: f20e ff81    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20ef02
  388fe6: 9b03         	ldr	r3, [sp, #0xc]
  388fe8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  388fec: 681b         	ldr	r3, [r3]
  388fee: 334c         	adds	r3, #0x4c
  388ff0: 681c         	ldr	r4, [r3]
  388ff2: 9b03         	ldr	r3, [sp, #0xc]
  388ff4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  388ff8: 461d         	mov	r5, r3
  388ffa: ab1c         	add	r3, sp, #0x70
  388ffc: 4618         	mov	r0, r3
  388ffe: f04f 0100    	mov.w	r1, #0x0
  389002: f2c4 2160    	movt	r1, #0x4260
  389006: f04f 4284    	mov.w	r2, #0x42000000
  38900a: f209 fe71    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x209ce2
  38900e: ab1c         	add	r3, sp, #0x70
  389010: 4628         	mov	r0, r5
  389012: 4619         	mov	r1, r3
  389014: 47a0         	blx	r4
  389016: 9b03         	ldr	r3, [sp, #0xc]
  389018: 681b         	ldr	r3, [r3]
  38901a: 33c8         	adds	r3, #0xc8
  38901c: 681b         	ldr	r3, [r3]
  38901e: 9903         	ldr	r1, [sp, #0xc]
  389020: 9a03         	ldr	r2, [sp, #0xc]
  389022: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  389026: 4608         	mov	r0, r1
  389028: 4611         	mov	r1, r2
  38902a: 4798         	blx	r3
  38902c: f64c 43cd    	movw	r3, #0xcccd
  389030: f6c3 730c    	movt	r3, #0x3f0c
  389034: 9309         	str	r3, [sp, #0x24]
  389036: f04f 0300    	mov.w	r3, #0x0
  38903a: f2c4 13c0    	movt	r3, #0x41c0
  38903e: 930a         	str	r3, [sp, #0x28]
  389040: f04f 4341    	mov.w	r3, #0xc1000000
  389044: 930b         	str	r3, [sp, #0x2c]
  389046: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x389240 <NewsLayer::init()+0x3b0>
  389048: 447b         	add	r3, pc
  38904a: 4618         	mov	r0, r3
  38904c: f02c f158    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x42c2b0
  389050: 4603         	mov	r3, r0
  389052: 2220         	movs	r2, #0x20
  389054: 9200         	str	r2, [sp]
  389056: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x389244 <NewsLayer::init()+0x3b4>
  389058: 447a         	add	r2, pc
  38905a: 4610         	mov	r0, r2
  38905c: 4619         	mov	r1, r3
  38905e: 2220         	movs	r2, #0x20
  389060: 2320         	movs	r3, #0x20
  389062: f21c f989    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x21c312
  389066: 4602         	mov	r2, r0
  389068: 9b03         	ldr	r3, [sp, #0xc]
  38906a: f8c3 2110    	str.w	r2, [r3, #0x110]
  38906e: 9b03         	ldr	r3, [sp, #0xc]
  389070: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  389074: 4618         	mov	r0, r3
  389076: f20e ff37    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20ee6e
  38907a: 9b03         	ldr	r3, [sp, #0xc]
  38907c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  389080: 681b         	ldr	r3, [r3]
  389082: 334c         	adds	r3, #0x4c
  389084: 681c         	ldr	r4, [r3]
  389086: 9b03         	ldr	r3, [sp, #0xc]
  389088: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  38908c: 461d         	mov	r5, r3
  38908e: 9b03         	ldr	r3, [sp, #0xc]
  389090: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  389094: 681b         	ldr	r3, [r3]
  389096: 3350         	adds	r3, #0x50
  389098: 681b         	ldr	r3, [r3]
  38909a: 9a03         	ldr	r2, [sp, #0xc]
  38909c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3890a0: 4610         	mov	r0, r2
  3890a2: 4798         	blx	r3
  3890a4: 4603         	mov	r3, r0
  3890a6: 681e         	ldr	r6, [r3]
  3890a8: 9b03         	ldr	r3, [sp, #0xc]
  3890aa: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3890ae: 681b         	ldr	r3, [r3]
  3890b0: 3350         	adds	r3, #0x50
  3890b2: 681b         	ldr	r3, [r3]
  3890b4: 9a03         	ldr	r2, [sp, #0xc]
  3890b6: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3890ba: 4610         	mov	r0, r2
  3890bc: 4798         	blx	r3
  3890be: 4603         	mov	r3, r0
  3890c0: 685b         	ldr	r3, [r3, #0x4]
  3890c2: aa10         	add	r2, sp, #0x40
  3890c4: 4610         	mov	r0, r2
  3890c6: 4631         	mov	r1, r6
  3890c8: 461a         	mov	r2, r3
  3890ca: f209 fe11    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x209c22
  3890ce: eddd 7a0b    	vldr	s15, [sp, #44]
  3890d2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3890d6: ab18         	add	r3, sp, #0x60
  3890d8: 4618         	mov	r0, r3
  3890da: ed9f 0b4f    	vldr	d0, [pc, #316]          @ 0x389218 <NewsLayer::init()+0x388>
  3890de: eeb0 1b47    	vmov.f64	d1, d7
  3890e2: f7fe ff97    	bl	0x388014 <cocos2d::CCDouble::~CCDouble()+0x1c8> @ imm = #-0x10d2
  3890e6: ed9d 8b18    	vldr	d8, [sp, #96]
  3890ea: 9b03         	ldr	r3, [sp, #0xc]
  3890ec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3890f0: 681b         	ldr	r3, [r3]
  3890f2: f503 73fe    	add.w	r3, r3, #0x1fc
  3890f6: 681b         	ldr	r3, [r3]
  3890f8: 9a03         	ldr	r2, [sp, #0xc]
  3890fa: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3890fe: 4610         	mov	r0, r2
  389100: 4798         	blx	r3
  389102: 4606         	mov	r6, r0
  389104: ab05         	add	r3, sp, #0x14
  389106: 4618         	mov	r0, r3
  389108: f001 f174    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4012e8
  38910c: aa06         	add	r2, sp, #0x18
  38910e: ab05         	add	r3, sp, #0x14
  389110: 4610         	mov	r0, r2
  389112: 4631         	mov	r1, r6
  389114: 461a         	mov	r2, r3
  389116: f02d f4a3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x42d946
  38911a: ab06         	add	r3, sp, #0x18
  38911c: 4618         	mov	r0, r3
  38911e: f02b f79d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x42bf3a
  389122: 4603         	mov	r3, r0
  389124: ee07 3a90    	vmov	s15, r3
  389128: eeb8 7a67    	vcvt.f32.u32	s14, s15
  38912c: eddd 7a0a    	vldr	s15, [sp, #40]
  389130: ee27 7a27    	vmul.f32	s14, s14, s15
  389134: eddd 7a09    	vldr	s15, [sp, #36]
  389138: ee27 7a27    	vmul.f32	s14, s14, s15
  38913c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  389140: eec7 7a27    	vdiv.f32	s15, s14, s15
  389144: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  389148: ee38 7b47    	vsub.f64	d7, d8, d7
  38914c: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  389150: eddd 7a0b    	vldr	s15, [sp, #44]
  389154: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  389158: ab1c         	add	r3, sp, #0x70
  38915a: 4618         	mov	r0, r3
  38915c: ed9f 0b2e    	vldr	d0, [pc, #184]          @ 0x389218 <NewsLayer::init()+0x388>
  389160: eeb0 1b47    	vmov.f64	d1, d7
  389164: f7fe ff56    	bl	0x388014 <cocos2d::CCDouble::~CCDouble()+0x1c8> @ imm = #-0x1154
  389168: ed9d 7b1e    	vldr	d7, [sp, #120]
  38916c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  389170: ab12         	add	r3, sp, #0x48
  389172: 4618         	mov	r0, r3
  389174: ee18 1a10    	vmov	r1, s16
  389178: ee17 2a90    	vmov	r2, s15
  38917c: f209 fdb8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x209b70
  389180: a914         	add	r1, sp, #0x50
  389182: aa10         	add	r2, sp, #0x40
  389184: ab12         	add	r3, sp, #0x48
  389186: 4608         	mov	r0, r1
  389188: 4611         	mov	r1, r2
  38918a: 461a         	mov	r2, r3
  38918c: f7fe ff32    	bl	0x387ff4 <cocos2d::CCDouble::~CCDouble()+0x1a8> @ imm = #-0x119c
  389190: ab14         	add	r3, sp, #0x50
  389192: 4628         	mov	r0, r5
  389194: 4619         	mov	r1, r3
  389196: 47a0         	blx	r4
  389198: ab06         	add	r3, sp, #0x18
  38919a: 4618         	mov	r0, r3
  38919c: f02c f3ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42c774
  3891a0: ab05         	add	r3, sp, #0x14
  3891a2: 4618         	mov	r0, r3
  3891a4: f001 f12a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x401254
  3891a8: 9b03         	ldr	r3, [sp, #0xc]
  3891aa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3891ae: 681b         	ldr	r3, [r3]
  3891b0: 3340         	adds	r3, #0x40
  3891b2: 681b         	ldr	r3, [r3]
  3891b4: 9a03         	ldr	r2, [sp, #0xc]
  3891b6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3891ba: 4610         	mov	r0, r2
  3891bc: 9909         	ldr	r1, [sp, #0x24]
  3891be: 4798         	blx	r3
  3891c0: 9b03         	ldr	r3, [sp, #0xc]
  3891c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3891c6: eddd 7a0a    	vldr	s15, [sp, #40]
  3891ca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3891ce: ee17 2a90    	vmov	r2, s15
  3891d2: 4618         	mov	r0, r3
  3891d4: 4611         	mov	r1, r2
  3891d6: f21c fdd5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x21cbaa
  3891da: 9b03         	ldr	r3, [sp, #0xc]
  3891dc: 681b         	ldr	r3, [r3]
  3891de: 33c8         	adds	r3, #0xc8
  3891e0: 681b         	ldr	r3, [r3]
  3891e2: 9903         	ldr	r1, [sp, #0xc]
  3891e4: 9a03         	ldr	r2, [sp, #0xc]
  3891e6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3891ea: 4608         	mov	r0, r1
  3891ec: 4611         	mov	r1, r2
  3891ee: 4798         	blx	r3
  3891f0: f0a2 ff5a    	bl	0x42c0a8 <ApplicationInterface::removeAdBanner()> @ imm = #0xa2eb4
  3891f4: 2301         	movs	r3, #0x1
  3891f6: e00a         	b	0x38920e <NewsLayer::init()+0x37e> @ imm = #0x14
  3891f8: ab06         	add	r3, sp, #0x18
  3891fa: 4618         	mov	r0, r3
  3891fc: f02c f38a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42c714
  389200: e7ff         	b	0x389202 <NewsLayer::init()+0x372> @ imm = #-0x2
  389202: ab05         	add	r3, sp, #0x14
  389204: 4618         	mov	r0, r3
  389206: f001 f0f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4011f2
  38920a: f3fe ff4f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fee9e
  38920e: 4618         	mov	r0, r3
  389210: b024         	add	sp, #0x90
  389212: ecbd 8b02    	vpop	{d8}
  389216: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x389217); words below are literal-pool data ---
  389220: 0000         	movs	r0, r0
  389222: 4280         	cmp	r0, r0
  389224: 9b6c         	ldr	r3, [sp, #0x1b0]
  389226: 005a         	lsls	r2, r3, #0x1
  389228: d724         	bvc	0x389274 <NewsLayer::~NewsLayer()+0x2c> @ imm = #0x48
  38922a: ffff 7b9e    	<unknown>
  38922e: 0044         	lsls	r4, r0, #0x1
  389230: d75c         	bvc	0x3892ec <NewsLayer::~NewsLayer()+0x10> @ imm = #0xb8
  389232: ffff 7b18    	<unknown>
  389236: 0044         	lsls	r4, r0, #0x1
  389238: 7b50         	ldrb	r0, [r2, #0xd]
  38923a: 0044         	lsls	r4, r0, #0x1
  38923c: dcf4         	bgt	0x389228 <NewsLayer::init()+0x398> @ imm = #-0x18
  38923e: ffff 7ec0    	<unknown>
  389242: 005b         	lsls	r3, r3, #0x1
  389244: 7aa4         	ldrb	r4, [r4, #0xa]
  389246: 0044         	lsls	r4, r0, #0x1

// ==== NewsLayer::~NewsLayer
//      file offset 0x389248 (= ELF address; Ghidra 0x399248), 140 bytes, Thumb-2
  389248: b510         	push	{r4, lr}
  38924a: b082         	sub	sp, #0x8
  38924c: 9001         	str	r0, [sp, #0x4]
  38924e: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x3892c8 <NewsLayer::~NewsLayer()+0x80>
  389250: 447c         	add	r4, pc
  389252: 9b01         	ldr	r3, [sp, #0x4]
  389254: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x3892cc <NewsLayer::~NewsLayer()+0x84>
  389256: 58a2         	ldr	r2, [r4, r2]
  389258: 3208         	adds	r2, #0x8
  38925a: 601a         	str	r2, [r3]
  38925c: 9b01         	ldr	r3, [sp, #0x4]
  38925e: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3892cc <NewsLayer::~NewsLayer()+0x84>
  389260: 58a2         	ldr	r2, [r4, r2]
  389262: f502 7204    	add.w	r2, r2, #0x210
  389266: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  38926a: 9b01         	ldr	r3, [sp, #0x4]
  38926c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3892cc <NewsLayer::~NewsLayer()+0x84>
  38926e: 58a2         	ldr	r2, [r4, r2]
  389270: f502 7210    	add.w	r2, r2, #0x240
  389274: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  389278: 9b01         	ldr	r3, [sp, #0x4]
  38927a: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3892cc <NewsLayer::~NewsLayer()+0x84>
  38927c: 58a2         	ldr	r2, [r4, r2]
  38927e: f502 7213    	add.w	r2, r2, #0x24c
  389282: f8c3 20ec    	str.w	r2, [r3, #0xec]
  389286: 9b01         	ldr	r3, [sp, #0x4]
  389288: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  38928c: 4618         	mov	r0, r3
  38928e: f20e fe13    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20ec26
  389292: 9b01         	ldr	r3, [sp, #0x4]
  389294: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  389298: 4618         	mov	r0, r3
  38929a: f20e fe0d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20ec1a
  38929e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3892d0 <NewsLayer::~NewsLayer()+0x88>
  3892a0: 58e3         	ldr	r3, [r4, r3]
  3892a2: 681b         	ldr	r3, [r3]
  3892a4: 4618         	mov	r0, r3
  3892a6: f0aa ff09    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0xaae12
  3892aa: 9b01         	ldr	r3, [sp, #0x4]
  3892ac: 4618         	mov	r0, r3
  3892ae: f223 ff4d    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x223e9a
  3892b2: 2300         	movs	r3, #0x0
  3892b4: 2b00         	cmp	r3, #0x0
  3892b6: d002         	beq	0x3892be <NewsLayer::~NewsLayer()+0x76> @ imm = #0x4
  3892b8: 9801         	ldr	r0, [sp, #0x4]
  3892ba: f3fe fef3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fede6
  3892be: 9b01         	ldr	r3, [sp, #0x4]
  3892c0: 4618         	mov	r0, r3
  3892c2: b002         	add	sp, #0x8
  3892c4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3892c5); words below are literal-pool data ---
  3892c6: bf00         	nop
  3892c8: 97b8         	str	r7, [sp, #0x2e0]
  3892ca: 005a         	lsls	r2, r3, #0x1
  3892cc: dcf0         	bgt	0x3892b0 <NewsLayer::~NewsLayer()+0x68> @ imm = #-0x20
  3892ce: ffff d75c    	<unknown>
  3892d2: ffff f1a0    	<unknown>

// ==== NewsLayer::~NewsLayer
//      file offset 0x3892d4 (= ELF address; Ghidra 0x3992d4), 8 bytes, Thumb-2
  3892d4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3892d8: f7ff bfb6    	b.w	0x389248 <NewsLayer::~NewsLayer()> @ imm = #-0x94

// ==== NewsLayer::~NewsLayer
//      file offset 0x3892dc (= ELF address; Ghidra 0x3992dc), 28 bytes, Thumb-2
  3892dc: b500         	push	{lr}
  3892de: b083         	sub	sp, #0xc
  3892e0: 9001         	str	r0, [sp, #0x4]
  3892e2: 9801         	ldr	r0, [sp, #0x4]
  3892e4: f7ff ffb0    	bl	0x389248 <NewsLayer::~NewsLayer()> @ imm = #-0xa0
  3892e8: 9801         	ldr	r0, [sp, #0x4]
  3892ea: f3fe fedb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fedb6
  3892ee: 9b01         	ldr	r3, [sp, #0x4]
  3892f0: 4618         	mov	r0, r3
  3892f2: b003         	add	sp, #0xc
  3892f4: f85d fb04    	ldr	pc, [sp], #4

// ==== NewsLayer::~NewsLayer
//      file offset 0x3892f8 (= ELF address; Ghidra 0x3992f8), 8 bytes, Thumb-2
  3892f8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3892fc: f7ff bfee    	b.w	0x3892dc <NewsLayer::~NewsLayer()> @ imm = #-0x24

// ==== NewsLayer::onBack
//      file offset 0x389300 (= ELF address; Ghidra 0x399300), 100 bytes, Thumb-2
  389300: b530         	push	{r4, r5, lr}
  389302: b083         	sub	sp, #0xc
  389304: 9001         	str	r0, [sp, #0x4]
  389306: 9100         	str	r1, [sp]
  389308: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x389358 <NewsLayer::onBack(cocos2d::CCObject*)+0x58>
  38930a: 447a         	add	r2, pc
  38930c: 9b01         	ldr	r3, [sp, #0x4]
  38930e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  389312: 2b00         	cmp	r3, #0x0
  389314: d000         	beq	0x389318 <NewsLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  389316: e01c         	b	0x389352 <NewsLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  389318: 9b01         	ldr	r3, [sp, #0x4]
  38931a: 2101         	movs	r1, #0x1
  38931c: f883 1108    	strb.w	r1, [r3, #0x108]
  389320: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x38935c <NewsLayer::onBack(cocos2d::CCObject*)+0x5c>
  389322: 58d3         	ldr	r3, [r2, r3]
  389324: 681b         	ldr	r3, [r3]
  389326: 4618         	mov	r0, r3
  389328: 210d         	movs	r1, #0xd
  38932a: f06e fd49    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x6ea92
  38932e: f212 f921    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x212242
  389332: 4604         	mov	r4, r0
  389334: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x389360 <NewsLayer::onBack(cocos2d::CCObject*)+0x60>
  389336: 447b         	add	r3, pc
  389338: 681d         	ldr	r5, [r3]
  38933a: f7e0 fbcb    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #-0x1f86a
  38933e: 4603         	mov	r3, r0
  389340: 4628         	mov	r0, r5
  389342: 4619         	mov	r1, r3
  389344: f227 ffe0    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x227fc0
  389348: 4603         	mov	r3, r0
  38934a: 4620         	mov	r0, r4
  38934c: 4619         	mov	r1, r3
  38934e: f213 f805    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x21300a
  389352: b003         	add	sp, #0xc
  389354: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x389355); words below are literal-pool data ---
  389356: bf00         	nop
  389358: 96fe         	str	r6, [sp, #0x3f8]
  38935a: 005a         	lsls	r2, r3, #0x1
  38935c: d730         	bvc	0x3893c0 <NewsLayer::onBack(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  38935e: ffff a202    	<unknown>
  389362: 005a         	lsls	r2, r3, #0x1
