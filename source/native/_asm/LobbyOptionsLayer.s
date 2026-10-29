// LobbyOptionsLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LobbyOptionsLayer.cpp

// ==== LobbyOptionsLayer::create
//      file offset 0x397e64 (= ELF address; Ghidra 0x3a7e64), 112 bytes, Thumb-2
  397e64: b510         	push	{r4, lr}
  397e66: b082         	sub	sp, #0x8
  397e68: f44f 708a    	mov.w	r0, #0x114
  397e6c: f3ef fd7a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3efaf4
  397e70: 4603         	mov	r3, r0
  397e72: 461c         	mov	r4, r3
  397e74: 4620         	mov	r0, r4
  397e76: f000 f879    	bl	0x397f6c <LobbyOptionsLayer::LobbyOptionsLayer()> @ imm = #0xf2
  397e7a: 9401         	str	r4, [sp, #0x4]
  397e7c: 9b01         	ldr	r3, [sp, #0x4]
  397e7e: 2b00         	cmp	r3, #0x0
  397e80: d00a         	beq	0x397e98 <LobbyOptionsLayer::create()+0x34> @ imm = #0x14
  397e82: 9b01         	ldr	r3, [sp, #0x4]
  397e84: 681b         	ldr	r3, [r3]
  397e86: 3318         	adds	r3, #0x18
  397e88: 681b         	ldr	r3, [r3]
  397e8a: 9801         	ldr	r0, [sp, #0x4]
  397e8c: 4798         	blx	r3
  397e8e: 4603         	mov	r3, r0
  397e90: 2b00         	cmp	r3, #0x0
  397e92: d001         	beq	0x397e98 <LobbyOptionsLayer::create()+0x34> @ imm = #0x2
  397e94: 2301         	movs	r3, #0x1
  397e96: e000         	b	0x397e9a <LobbyOptionsLayer::create()+0x36> @ imm = #0x0
  397e98: 2300         	movs	r3, #0x0
  397e9a: 2b00         	cmp	r3, #0x0
  397e9c: d005         	beq	0x397eaa <LobbyOptionsLayer::create()+0x46> @ imm = #0xa
  397e9e: 9b01         	ldr	r3, [sp, #0x4]
  397ea0: 4618         	mov	r0, r3
  397ea2: f200 f82b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x200056
  397ea6: 9b01         	ldr	r3, [sp, #0x4]
  397ea8: e011         	b	0x397ece <LobbyOptionsLayer::create()+0x6a> @ imm = #0x22
  397eaa: 9b01         	ldr	r3, [sp, #0x4]
  397eac: 2b00         	cmp	r3, #0x0
  397eae: d005         	beq	0x397ebc <LobbyOptionsLayer::create()+0x58> @ imm = #0xa
  397eb0: 9b01         	ldr	r3, [sp, #0x4]
  397eb2: 681b         	ldr	r3, [r3]
  397eb4: 3308         	adds	r3, #0x8
  397eb6: 681b         	ldr	r3, [r3]
  397eb8: 9801         	ldr	r0, [sp, #0x4]
  397eba: 4798         	blx	r3
  397ebc: 2300         	movs	r3, #0x0
  397ebe: 9301         	str	r3, [sp, #0x4]
  397ec0: 2300         	movs	r3, #0x0
  397ec2: e004         	b	0x397ece <LobbyOptionsLayer::create()+0x6a> @ imm = #0x8
  397ec4: 4620         	mov	r0, r4
  397ec6: f3f0 f8ed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f01da
  397eca: f3f0 f8ef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f01de
  397ece: 4618         	mov	r0, r3
  397ed0: b002         	add	sp, #0x8
  397ed2: bd10         	pop	{r4, pc}

// ==== LobbyOptionsLayer::LobbyOptionsLayer
//      file offset 0x397f6c (= ELF address; Ghidra 0x3a7f6c), 44 bytes, Thumb-2
  397f6c: b510         	push	{r4, lr}
  397f6e: b082         	sub	sp, #0x8
  397f70: 9001         	str	r0, [sp, #0x4]
  397f72: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x397f90 <LobbyOptionsLayer::LobbyOptionsLayer()+0x24>
  397f74: 447c         	add	r4, pc
  397f76: 9b01         	ldr	r3, [sp, #0x4]
  397f78: 4618         	mov	r0, r3
  397f7a: f1f7 fb5d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1f76ba
  397f7e: 9b01         	ldr	r3, [sp, #0x4]
  397f80: 4a04         	ldr	r2, [pc, #0x10]         @ 0x397f94 <LobbyOptionsLayer::LobbyOptionsLayer()+0x28>
  397f82: 58a2         	ldr	r2, [r4, r2]
  397f84: 3208         	adds	r2, #0x8
  397f86: 601a         	str	r2, [r3]
  397f88: 9b01         	ldr	r3, [sp, #0x4]
  397f8a: 4618         	mov	r0, r3
  397f8c: b002         	add	sp, #0x8
  397f8e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x397f8f); words below are literal-pool data ---
  397f90: aa94         	add	r2, sp, #0x250
  397f92: 0059         	lsls	r1, r3, #0x1
  397f94: dd28         	ble	0x397fe8 <LobbyOptionsLayer::init()+0x50> @ imm = #0x50
  397f96: ffff b5f0    	<unknown>

// ==== LobbyOptionsLayer::init
//      file offset 0x397f98 (= ELF address; Ghidra 0x3a7f98), 3632 bytes, Thumb-2
  397f98: b5f0         	push	{r4, r5, r6, r7, lr}
  397f9a: ed2d 8b02    	vpush	{d8}
  397f9e: b0b9         	sub	sp, #0xe4
  397fa0: 9003         	str	r0, [sp, #0xc]
  397fa2: 4c09         	ldr	r4, [pc, #0x24]         @ 0x397fc8 <LobbyOptionsLayer::init()+0x30>
  397fa4: 447c         	add	r4, pc
  397fa6: 9b03         	ldr	r3, [sp, #0xc]
  397fa8: 4618         	mov	r0, r3
  397faa: f1f7 fd4f    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1f7a9e
  397fae: 4603         	mov	r3, r0
  397fb0: f88d 3013    	strb.w	r3, [sp, #0x13]
  397fb4: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  397fb8: f083 0301    	eor	r3, r3, #0x1
  397fbc: b2db         	uxtb	r3, r3
  397fbe: 2b00         	cmp	r3, #0x0
  397fc0: d004         	beq	0x397fcc <LobbyOptionsLayer::init()+0x34> @ imm = #0x8
  397fc2: 2300         	movs	r3, #0x0
  397fc4: f000 bef2    	b.w	0x398dac <LobbyOptionsLayer::init()+0xe14> @ imm = #0xde4
  397fc8: aa64         	add	r2, sp, #0x190
  397fca: 0059         	lsls	r1, r3, #0x1
  397fcc: ab1a         	add	r3, sp, #0x68
  397fce: 4618         	mov	r0, r3
  397fd0: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x398288 <LobbyOptionsLayer::init()+0x2f0>
  397fd2: 58e3         	ldr	r3, [r4, r3]
  397fd4: 4619         	mov	r1, r3
  397fd6: f1fb f86b    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1fb0d6
  397fda: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x398288 <LobbyOptionsLayer::init()+0x2f0>
  397fdc: 58e3         	ldr	r3, [r4, r3]
  397fde: ed93 7a00    	vldr	s14, [r3]
  397fe2: eddf 7aa7    	vldr	s15, [pc, #668]         @ 0x398280 <LobbyOptionsLayer::init()+0x2e8>
  397fe6: ee77 6a67    	vsub.f32	s13, s14, s15
  397fea: 4ba7         	ldr	r3, [pc, #0x29c]        @ 0x398288 <LobbyOptionsLayer::init()+0x2f0>
  397fec: 58e3         	ldr	r3, [r4, r3]
  397fee: ed93 7a01    	vldr	s14, [r3, #4]
  397ff2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  397ff6: eec7 7a27    	vdiv.f32	s15, s14, s15
  397ffa: ab1c         	add	r3, sp, #0x70
  397ffc: 4618         	mov	r0, r3
  397ffe: ee16 1a90    	vmov	r1, s13
  398002: ee17 2a90    	vmov	r2, s15
  398006: f1fa fe73    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1face6
  39800a: 9b03         	ldr	r3, [sp, #0xc]
  39800c: 2200         	movs	r2, #0x0
  39800e: f883 20e4    	strb.w	r2, [r3, #0xe4]
  398012: f64c 43cd    	movw	r3, #0xcccd
  398016: f6c3 730c    	movt	r3, #0x3f0c
  39801a: 9306         	str	r3, [sp, #0x18]
  39801c: f04f 0300    	mov.w	r3, #0x0
  398020: f2c4 13c0    	movt	r3, #0x41c0
  398024: 9307         	str	r3, [sp, #0x1c]
  398026: f04f 4341    	mov.w	r3, #0xc1000000
  39802a: 9308         	str	r3, [sp, #0x20]
  39802c: 4b97         	ldr	r3, [pc, #0x25c]        @ 0x39828c <LobbyOptionsLayer::init()+0x2f4>
  39802e: 447b         	add	r3, pc
  398030: 4618         	mov	r0, r3
  398032: f240 f967    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2402ce
  398036: 4603         	mov	r3, r0
  398038: 9309         	str	r3, [sp, #0x24]
  39803a: 4b95         	ldr	r3, [pc, #0x254]        @ 0x398290 <LobbyOptionsLayer::init()+0x2f8>
  39803c: 447b         	add	r3, pc
  39803e: 4618         	mov	r0, r3
  398040: f240 f960    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2402c0
  398044: 4603         	mov	r3, r0
  398046: 930a         	str	r3, [sp, #0x28]
  398048: 4b92         	ldr	r3, [pc, #0x248]        @ 0x398294 <LobbyOptionsLayer::init()+0x2fc>
  39804a: 447b         	add	r3, pc
  39804c: 4618         	mov	r0, r3
  39804e: f240 f959    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2402b2
  398052: 4603         	mov	r3, r0
  398054: 930b         	str	r3, [sp, #0x2c]
  398056: 4b90         	ldr	r3, [pc, #0x240]        @ 0x398298 <LobbyOptionsLayer::init()+0x300>
  398058: 447b         	add	r3, pc
  39805a: 4618         	mov	r0, r3
  39805c: f240 f952    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2402a4
  398060: 4603         	mov	r3, r0
  398062: 930c         	str	r3, [sp, #0x30]
  398064: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x39829c <LobbyOptionsLayer::init()+0x304>
  398066: 447b         	add	r3, pc
  398068: 4618         	mov	r0, r3
  39806a: f240 f94b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x240296
  39806e: 4603         	mov	r3, r0
  398070: 930d         	str	r3, [sp, #0x34]
  398072: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x3982a0 <LobbyOptionsLayer::init()+0x308>
  398074: 447b         	add	r3, pc
  398076: 4618         	mov	r0, r3
  398078: f240 f944    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x240288
  39807c: 4603         	mov	r3, r0
  39807e: 930e         	str	r3, [sp, #0x38]
  398080: 4b88         	ldr	r3, [pc, #0x220]        @ 0x3982a4 <LobbyOptionsLayer::init()+0x30c>
  398082: 447b         	add	r3, pc
  398084: 4618         	mov	r0, r3
  398086: f240 f93d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24027a
  39808a: 4603         	mov	r3, r0
  39808c: 930f         	str	r3, [sp, #0x3c]
  39808e: 4b86         	ldr	r3, [pc, #0x218]        @ 0x3982a8 <LobbyOptionsLayer::init()+0x310>
  398090: 447b         	add	r3, pc
  398092: 4618         	mov	r0, r3
  398094: f240 f936    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24026c
  398098: 4603         	mov	r3, r0
  39809a: 9310         	str	r3, [sp, #0x40]
  39809c: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x3982ac <LobbyOptionsLayer::init()+0x314>
  39809e: 447b         	add	r3, pc
  3980a0: 4618         	mov	r0, r3
  3980a2: f240 f92f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24025e
  3980a6: 4603         	mov	r3, r0
  3980a8: 9311         	str	r3, [sp, #0x44]
  3980aa: 4b81         	ldr	r3, [pc, #0x204]        @ 0x3982b0 <LobbyOptionsLayer::init()+0x318>
  3980ac: 447b         	add	r3, pc
  3980ae: 4618         	mov	r0, r3
  3980b0: f240 f928    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x240250
  3980b4: 4603         	mov	r3, r0
  3980b6: 9312         	str	r3, [sp, #0x48]
  3980b8: 9a03         	ldr	r2, [sp, #0xc]
  3980ba: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x3982b4 <LobbyOptionsLayer::init()+0x31c>
  3980bc: 58e3         	ldr	r3, [r4, r3]
  3980be: 9326         	str	r3, [sp, #0x98]
  3980c0: 2300         	movs	r3, #0x0
  3980c2: 9327         	str	r3, [sp, #0x9c]
  3980c4: 9b27         	ldr	r3, [sp, #0x9c]
  3980c6: 9300         	str	r3, [sp]
  3980c8: 9b26         	ldr	r3, [sp, #0x98]
  3980ca: 9809         	ldr	r0, [sp, #0x24]
  3980cc: 990a         	ldr	r1, [sp, #0x28]
  3980ce: f220 f92d    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x22025a
  3980d2: 4603         	mov	r3, r0
  3980d4: 9313         	str	r3, [sp, #0x4c]
  3980d6: 9a03         	ldr	r2, [sp, #0xc]
  3980d8: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x3982b8 <LobbyOptionsLayer::init()+0x320>
  3980da: 58e3         	ldr	r3, [r4, r3]
  3980dc: 9328         	str	r3, [sp, #0xa0]
  3980de: 2300         	movs	r3, #0x0
  3980e0: 9329         	str	r3, [sp, #0xa4]
  3980e2: 9b29         	ldr	r3, [sp, #0xa4]
  3980e4: 9300         	str	r3, [sp]
  3980e6: 9b28         	ldr	r3, [sp, #0xa0]
  3980e8: 980b         	ldr	r0, [sp, #0x2c]
  3980ea: 990c         	ldr	r1, [sp, #0x30]
  3980ec: f220 f91e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x22023c
  3980f0: 4603         	mov	r3, r0
  3980f2: 9314         	str	r3, [sp, #0x50]
  3980f4: 9a03         	ldr	r2, [sp, #0xc]
  3980f6: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x3982bc <LobbyOptionsLayer::init()+0x324>
  3980f8: 58e3         	ldr	r3, [r4, r3]
  3980fa: 932a         	str	r3, [sp, #0xa8]
  3980fc: 2300         	movs	r3, #0x0
  3980fe: 932b         	str	r3, [sp, #0xac]
  398100: 9b2b         	ldr	r3, [sp, #0xac]
  398102: 9300         	str	r3, [sp]
  398104: 9b2a         	ldr	r3, [sp, #0xa8]
  398106: 980d         	ldr	r0, [sp, #0x34]
  398108: 990e         	ldr	r1, [sp, #0x38]
  39810a: f220 f90f    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x22021e
  39810e: 4603         	mov	r3, r0
  398110: 9315         	str	r3, [sp, #0x54]
  398112: 9813         	ldr	r0, [sp, #0x4c]
  398114: 2100         	movs	r1, #0x0
  398116: f21d f811    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21d022
  39811a: 4602         	mov	r2, r0
  39811c: 9b03         	ldr	r3, [sp, #0xc]
  39811e: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  398122: 9b03         	ldr	r3, [sp, #0xc]
  398124: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  398128: 4618         	mov	r0, r3
  39812a: f1ff fedd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ffdba
  39812e: 9b03         	ldr	r3, [sp, #0xc]
  398130: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  398134: 681b         	ldr	r3, [r3]
  398136: 334c         	adds	r3, #0x4c
  398138: 681d         	ldr	r5, [r3]
  39813a: 9b03         	ldr	r3, [sp, #0xc]
  39813c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  398140: 461e         	mov	r6, r3
  398142: 9b1c         	ldr	r3, [sp, #0x70]
  398144: ed9d 7a1d    	vldr	s14, [sp, #116]
  398148: eddf 7a4e    	vldr	s15, [pc, #312]         @ 0x398284 <LobbyOptionsLayer::init()+0x2ec>
  39814c: ee77 7a67    	vsub.f32	s15, s14, s15
  398150: aa34         	add	r2, sp, #0xd0
  398152: 4610         	mov	r0, r2
  398154: 4619         	mov	r1, r3
  398156: ee17 2a90    	vmov	r2, s15
  39815a: f1fa fdc9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fab92
  39815e: ab34         	add	r3, sp, #0xd0
  398160: 4630         	mov	r0, r6
  398162: 4619         	mov	r1, r3
  398164: 47a8         	blx	r5
  398166: 9b03         	ldr	r3, [sp, #0xc]
  398168: 681b         	ldr	r3, [r3]
  39816a: 33c8         	adds	r3, #0xc8
  39816c: 681b         	ldr	r3, [r3]
  39816e: 9903         	ldr	r1, [sp, #0xc]
  398170: 9a03         	ldr	r2, [sp, #0xc]
  398172: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  398176: 4608         	mov	r0, r1
  398178: 4611         	mov	r1, r2
  39817a: 4798         	blx	r3
  39817c: 2320         	movs	r3, #0x20
  39817e: 9316         	str	r3, [sp, #0x58]
  398180: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x3982c0 <LobbyOptionsLayer::init()+0x328>
  398182: 447b         	add	r3, pc
  398184: 4618         	mov	r0, r3
  398186: f01d f0bb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41d176
  39818a: 4603         	mov	r3, r0
  39818c: 9a16         	ldr	r2, [sp, #0x58]
  39818e: 9200         	str	r2, [sp]
  398190: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x3982c4 <LobbyOptionsLayer::init()+0x32c>
  398192: 447a         	add	r2, pc
  398194: 4610         	mov	r0, r2
  398196: 4619         	mov	r1, r3
  398198: 2220         	movs	r2, #0x20
  39819a: 2320         	movs	r3, #0x20
  39819c: f20d f8ec    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20d1d8
  3981a0: 4602         	mov	r2, r0
  3981a2: 9b03         	ldr	r3, [sp, #0xc]
  3981a4: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3981a8: 9b03         	ldr	r3, [sp, #0xc]
  3981aa: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3981ae: 4618         	mov	r0, r3
  3981b0: f1ff fe9a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ffd34
  3981b4: 9b03         	ldr	r3, [sp, #0xc]
  3981b6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3981ba: eddd 7a07    	vldr	s15, [sp, #28]
  3981be: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3981c2: ee17 2a90    	vmov	r2, s15
  3981c6: 4618         	mov	r0, r3
  3981c8: 4611         	mov	r1, r2
  3981ca: f20d fddb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20dbb6
  3981ce: 9b03         	ldr	r3, [sp, #0xc]
  3981d0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3981d4: 681b         	ldr	r3, [r3]
  3981d6: 3340         	adds	r3, #0x40
  3981d8: 681b         	ldr	r3, [r3]
  3981da: 9a03         	ldr	r2, [sp, #0xc]
  3981dc: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3981e0: 4610         	mov	r0, r2
  3981e2: 9906         	ldr	r1, [sp, #0x18]
  3981e4: 4798         	blx	r3
  3981e6: 9b03         	ldr	r3, [sp, #0xc]
  3981e8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3981ec: 681b         	ldr	r3, [r3]
  3981ee: 3350         	adds	r3, #0x50
  3981f0: 681b         	ldr	r3, [r3]
  3981f2: 9a03         	ldr	r2, [sp, #0xc]
  3981f4: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3981f8: 4610         	mov	r0, r2
  3981fa: 4798         	blx	r3
  3981fc: 4603         	mov	r3, r0
  3981fe: 681d         	ldr	r5, [r3]
  398200: 9b03         	ldr	r3, [sp, #0xc]
  398202: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  398206: 681b         	ldr	r3, [r3]
  398208: 3350         	adds	r3, #0x50
  39820a: 681b         	ldr	r3, [r3]
  39820c: 9a03         	ldr	r2, [sp, #0xc]
  39820e: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  398212: 4610         	mov	r0, r2
  398214: 4798         	blx	r3
  398216: 4603         	mov	r3, r0
  398218: 685b         	ldr	r3, [r3, #0x4]
  39821a: aa2c         	add	r2, sp, #0xb0
  39821c: 4610         	mov	r0, r2
  39821e: 4629         	mov	r1, r5
  398220: 461a         	mov	r2, r3
  398222: f1fa fd65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1faaca
  398226: eddd 7a08    	vldr	s15, [sp, #32]
  39822a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39822e: ab30         	add	r3, sp, #0xc0
  398230: 4618         	mov	r0, r3
  398232: ed9f 0b11    	vldr	d0, [pc, #68]           @ 0x398278 <LobbyOptionsLayer::init()+0x2e0>
  398236: eeb0 1b47    	vmov.f64	d1, d7
  39823a: f7fe ff1d    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x11c6
  39823e: ed9d 8b30    	vldr	d8, [sp, #192]
  398242: 9b03         	ldr	r3, [sp, #0xc]
  398244: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  398248: 681b         	ldr	r3, [r3]
  39824a: f503 73fe    	add.w	r3, r3, #0x1fc
  39824e: 681b         	ldr	r3, [r3]
  398250: 9a03         	ldr	r2, [sp, #0xc]
  398252: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  398256: 4610         	mov	r0, r2
  398258: 4798         	blx	r3
  39825a: 4605         	mov	r5, r0
  39825c: ab22         	add	r3, sp, #0x88
  39825e: 4618         	mov	r0, r3
  398260: f3f2 f8c8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f2190
  398264: aa24         	add	r2, sp, #0x90
  398266: ab22         	add	r3, sp, #0x88
  398268: 4610         	mov	r0, r2
  39826a: 4629         	mov	r1, r5
  39826c: 461a         	mov	r2, r3
  39826e: f01e f3f7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41e7ee
  398272: ab24         	add	r3, sp, #0x90
  398274: 4618         	mov	r0, r3
  398276: e027         	b	0x3982c8 <LobbyOptionsLayer::init()+0x330> @ imm = #0x4e
  398280: 0000         	movs	r0, r0
  398282: 42b4         	cmp	r4, r6
  398284: 0000         	movs	r0, r0
  398286: 42dc         	cmn	r4, r3
  398288: d724         	bvc	0x3982d4 <LobbyOptionsLayer::init()+0x33c> @ imm = #0x48
  39828a: ffff 9dde    	<unknown>
  39828e: 0043         	lsls	r3, r0, #0x1
  398290: 9dd0         	ldr	r5, [sp, #0x340]
  398292: 0043         	lsls	r3, r0, #0x1
  398294: 9dc2         	ldr	r5, [sp, #0x308]
  398296: 0043         	lsls	r3, r0, #0x1
  398298: 9db4         	ldr	r5, [sp, #0x2d0]
  39829a: 0043         	lsls	r3, r0, #0x1
  39829c: 9da6         	ldr	r5, [sp, #0x298]
  39829e: 0043         	lsls	r3, r0, #0x1
  3982a0: 9d98         	ldr	r5, [sp, #0x260]
  3982a2: 0043         	lsls	r3, r0, #0x1
  3982a4: 9d96         	ldr	r5, [sp, #0x258]
  3982a6: 0043         	lsls	r3, r0, #0x1
  3982a8: 9d88         	ldr	r5, [sp, #0x220]
  3982aa: 0043         	lsls	r3, r0, #0x1
  3982ac: 9d8a         	ldr	r5, [sp, #0x228]
  3982ae: 0043         	lsls	r3, r0, #0x1
  3982b0: 9d7c         	ldr	r5, [sp, #0x1f0]
  3982b2: 0043         	lsls	r3, r0, #0x1
  3982b4: dd2c         	ble	0x398310 <LobbyOptionsLayer::init()+0x378> @ imm = #0x58
  3982b6: ffff dd30    	<unknown>
  3982ba: ffff dd34    	<unknown>
  3982be: ffff 8ece    	<unknown>
  3982c2: 005a         	lsls	r2, r3, #0x1
  3982c4: 9ca6         	ldr	r4, [sp, #0x298]
  3982c6: 0043         	lsls	r3, r0, #0x1
  3982c8: f01c f6c8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41cd90
  3982cc: 4603         	mov	r3, r0
  3982ce: ee07 3a90    	vmov	s15, r3
  3982d2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3982d6: eddd 7a07    	vldr	s15, [sp, #28]
  3982da: ee27 7a27    	vmul.f32	s14, s14, s15
  3982de: eddd 7a06    	vldr	s15, [sp, #24]
  3982e2: ee27 7a27    	vmul.f32	s14, s14, s15
  3982e6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3982ea: eec7 7a27    	vdiv.f32	s15, s14, s15
  3982ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3982f2: ee38 7b47    	vsub.f64	d7, d8, d7
  3982f6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3982fa: eddd 7a08    	vldr	s15, [sp, #32]
  3982fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398302: ab34         	add	r3, sp, #0xd0
  398304: 4618         	mov	r0, r3
  398306: ed9f 0bb0    	vldr	d0, [pc, #704]          @ 0x3985c8 <LobbyOptionsLayer::init()+0x630>
  39830a: eeb0 1b47    	vmov.f64	d1, d7
  39830e: f7fe feb3    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x129a
  398312: ed9d 7b36    	vldr	d7, [sp, #216]
  398316: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39831a: ab2e         	add	r3, sp, #0xb8
  39831c: 4618         	mov	r0, r3
  39831e: ee18 1a10    	vmov	r1, s16
  398322: ee17 2a90    	vmov	r2, s15
  398326: f1fa fce3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa9c6
  39832a: a91e         	add	r1, sp, #0x78
  39832c: aa2c         	add	r2, sp, #0xb0
  39832e: ab2e         	add	r3, sp, #0xb8
  398330: 4608         	mov	r0, r1
  398332: 4611         	mov	r1, r2
  398334: 461a         	mov	r2, r3
  398336: f7fe fe8f    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x12e2
  39833a: ab24         	add	r3, sp, #0x90
  39833c: 4618         	mov	r0, r3
  39833e: f01d f2e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41d5d2
  398342: ab22         	add	r3, sp, #0x88
  398344: 4618         	mov	r0, r3
  398346: f3f2 f859    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f20b2
  39834a: 9b03         	ldr	r3, [sp, #0xc]
  39834c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  398350: 681b         	ldr	r3, [r3]
  398352: 334c         	adds	r3, #0x4c
  398354: 681b         	ldr	r3, [r3]
  398356: 9a03         	ldr	r2, [sp, #0xc]
  398358: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39835c: 4611         	mov	r1, r2
  39835e: aa1e         	add	r2, sp, #0x78
  398360: 4608         	mov	r0, r1
  398362: 4611         	mov	r1, r2
  398364: 4798         	blx	r3
  398366: 9b03         	ldr	r3, [sp, #0xc]
  398368: 681b         	ldr	r3, [r3]
  39836a: 33c8         	adds	r3, #0xc8
  39836c: 681b         	ldr	r3, [r3]
  39836e: 9903         	ldr	r1, [sp, #0xc]
  398370: 9a03         	ldr	r2, [sp, #0xc]
  398372: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  398376: 4608         	mov	r0, r1
  398378: 4611         	mov	r1, r2
  39837a: 4798         	blx	r3
  39837c: 9815         	ldr	r0, [sp, #0x54]
  39837e: 2100         	movs	r1, #0x0
  398380: f21c fedc    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21cdb8
  398384: 4602         	mov	r2, r0
  398386: 9b03         	ldr	r3, [sp, #0xc]
  398388: f8c3 2100    	str.w	r2, [r3, #0x100]
  39838c: 9b03         	ldr	r3, [sp, #0xc]
  39838e: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  398392: 4618         	mov	r0, r3
  398394: f1ff fda8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ffb50
  398398: 9b03         	ldr	r3, [sp, #0xc]
  39839a: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39839e: 681b         	ldr	r3, [r3]
  3983a0: 334c         	adds	r3, #0x4c
  3983a2: 681d         	ldr	r5, [r3]
  3983a4: 9b03         	ldr	r3, [sp, #0xc]
  3983a6: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3983aa: 461e         	mov	r6, r3
  3983ac: 9b1c         	ldr	r3, [sp, #0x70]
  3983ae: ed9d 7a1d    	vldr	s14, [sp, #116]
  3983b2: eddf 7a87    	vldr	s15, [pc, #540]         @ 0x3985d0 <LobbyOptionsLayer::init()+0x638>
  3983b6: ee77 7a67    	vsub.f32	s15, s14, s15
  3983ba: aa34         	add	r2, sp, #0xd0
  3983bc: 4610         	mov	r0, r2
  3983be: 4619         	mov	r1, r3
  3983c0: ee17 2a90    	vmov	r2, s15
  3983c4: f1fa fc94    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa928
  3983c8: ab34         	add	r3, sp, #0xd0
  3983ca: 4630         	mov	r0, r6
  3983cc: 4619         	mov	r1, r3
  3983ce: 47a8         	blx	r5
  3983d0: 9b03         	ldr	r3, [sp, #0xc]
  3983d2: 681b         	ldr	r3, [r3]
  3983d4: 33c8         	adds	r3, #0xc8
  3983d6: 681b         	ldr	r3, [r3]
  3983d8: 9903         	ldr	r1, [sp, #0xc]
  3983da: 9a03         	ldr	r2, [sp, #0xc]
  3983dc: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3983e0: 4608         	mov	r0, r1
  3983e2: 4611         	mov	r1, r2
  3983e4: 4798         	blx	r3
  3983e6: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3985d4 <LobbyOptionsLayer::init()+0x63c>
  3983e8: 447b         	add	r3, pc
  3983ea: 4618         	mov	r0, r3
  3983ec: f01c f788    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41cf10
  3983f0: 4603         	mov	r3, r0
  3983f2: 9a16         	ldr	r2, [sp, #0x58]
  3983f4: 9200         	str	r2, [sp]
  3983f6: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3985d8 <LobbyOptionsLayer::init()+0x640>
  3983f8: 447a         	add	r2, pc
  3983fa: 4610         	mov	r0, r2
  3983fc: 4619         	mov	r1, r3
  3983fe: 2220         	movs	r2, #0x20
  398400: 2320         	movs	r3, #0x20
  398402: f20c ffb9    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20cf72
  398406: 4602         	mov	r2, r0
  398408: 9b03         	ldr	r3, [sp, #0xc]
  39840a: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  39840e: 9b03         	ldr	r3, [sp, #0xc]
  398410: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  398414: 4618         	mov	r0, r3
  398416: f1ff fd67    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fface
  39841a: 9b03         	ldr	r3, [sp, #0xc]
  39841c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  398420: eddd 7a07    	vldr	s15, [sp, #28]
  398424: eefd 7ae7    	vcvt.s32.f32	s15, s15
  398428: ee17 2a90    	vmov	r2, s15
  39842c: 4618         	mov	r0, r3
  39842e: 4611         	mov	r1, r2
  398430: f20d fca8    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20d950
  398434: 9b03         	ldr	r3, [sp, #0xc]
  398436: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39843a: 681b         	ldr	r3, [r3]
  39843c: 3340         	adds	r3, #0x40
  39843e: 681b         	ldr	r3, [r3]
  398440: 9a03         	ldr	r2, [sp, #0xc]
  398442: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  398446: 4610         	mov	r0, r2
  398448: 9906         	ldr	r1, [sp, #0x18]
  39844a: 4798         	blx	r3
  39844c: 9b03         	ldr	r3, [sp, #0xc]
  39844e: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  398452: 681b         	ldr	r3, [r3]
  398454: 3350         	adds	r3, #0x50
  398456: 681b         	ldr	r3, [r3]
  398458: 9a03         	ldr	r2, [sp, #0xc]
  39845a: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  39845e: 4610         	mov	r0, r2
  398460: 4798         	blx	r3
  398462: 4603         	mov	r3, r0
  398464: 681d         	ldr	r5, [r3]
  398466: 9b03         	ldr	r3, [sp, #0xc]
  398468: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39846c: 681b         	ldr	r3, [r3]
  39846e: 3350         	adds	r3, #0x50
  398470: 681b         	ldr	r3, [r3]
  398472: 9a03         	ldr	r2, [sp, #0xc]
  398474: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  398478: 4610         	mov	r0, r2
  39847a: 4798         	blx	r3
  39847c: 4603         	mov	r3, r0
  39847e: 685b         	ldr	r3, [r3, #0x4]
  398480: aa2c         	add	r2, sp, #0xb0
  398482: 4610         	mov	r0, r2
  398484: 4629         	mov	r1, r5
  398486: 461a         	mov	r2, r3
  398488: f1fa fc32    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa864
  39848c: eddd 7a08    	vldr	s15, [sp, #32]
  398490: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398494: ab30         	add	r3, sp, #0xc0
  398496: 4618         	mov	r0, r3
  398498: ed9f 0b4b    	vldr	d0, [pc, #300]          @ 0x3985c8 <LobbyOptionsLayer::init()+0x630>
  39849c: eeb0 1b47    	vmov.f64	d1, d7
  3984a0: f7fe fdea    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x142c
  3984a4: ed9d 8b30    	vldr	d8, [sp, #192]
  3984a8: 9b03         	ldr	r3, [sp, #0xc]
  3984aa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3984ae: 681b         	ldr	r3, [r3]
  3984b0: f503 73fe    	add.w	r3, r3, #0x1fc
  3984b4: 681b         	ldr	r3, [r3]
  3984b6: 9a03         	ldr	r2, [sp, #0xc]
  3984b8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3984bc: 4610         	mov	r0, r2
  3984be: 4798         	blx	r3
  3984c0: 4605         	mov	r5, r0
  3984c2: ab22         	add	r3, sp, #0x88
  3984c4: 4618         	mov	r0, r3
  3984c6: f3f1 ff95    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f1f2a
  3984ca: aa24         	add	r2, sp, #0x90
  3984cc: ab22         	add	r3, sp, #0x88
  3984ce: 4610         	mov	r0, r2
  3984d0: 4629         	mov	r1, r5
  3984d2: 461a         	mov	r2, r3
  3984d4: f01e f2c4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41e588
  3984d8: ab24         	add	r3, sp, #0x90
  3984da: 4618         	mov	r0, r3
  3984dc: f01c f5be    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41cb7c
  3984e0: 4603         	mov	r3, r0
  3984e2: ee07 3a90    	vmov	s15, r3
  3984e6: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3984ea: eddd 7a07    	vldr	s15, [sp, #28]
  3984ee: ee27 7a27    	vmul.f32	s14, s14, s15
  3984f2: eddd 7a06    	vldr	s15, [sp, #24]
  3984f6: ee27 7a27    	vmul.f32	s14, s14, s15
  3984fa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3984fe: eec7 7a27    	vdiv.f32	s15, s14, s15
  398502: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398506: ee38 7b47    	vsub.f64	d7, d8, d7
  39850a: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39850e: eddd 7a08    	vldr	s15, [sp, #32]
  398512: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398516: ab34         	add	r3, sp, #0xd0
  398518: 4618         	mov	r0, r3
  39851a: ed9f 0b2b    	vldr	d0, [pc, #172]          @ 0x3985c8 <LobbyOptionsLayer::init()+0x630>
  39851e: eeb0 1b47    	vmov.f64	d1, d7
  398522: f7fe fda9    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x14ae
  398526: ed9d 7b36    	vldr	d7, [sp, #216]
  39852a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39852e: ab2e         	add	r3, sp, #0xb8
  398530: 4618         	mov	r0, r3
  398532: ee18 1a10    	vmov	r1, s16
  398536: ee17 2a90    	vmov	r2, s15
  39853a: f1fa fbd9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa7b2
  39853e: a920         	add	r1, sp, #0x80
  398540: aa2c         	add	r2, sp, #0xb0
  398542: ab2e         	add	r3, sp, #0xb8
  398544: 4608         	mov	r0, r1
  398546: 4611         	mov	r1, r2
  398548: 461a         	mov	r2, r3
  39854a: f7fe fd85    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x14f6
  39854e: ab24         	add	r3, sp, #0x90
  398550: 4618         	mov	r0, r3
  398552: f01d f1df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41d3be
  398556: ab22         	add	r3, sp, #0x88
  398558: 4618         	mov	r0, r3
  39855a: f3f1 ff4f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1e9e
  39855e: 9b03         	ldr	r3, [sp, #0xc]
  398560: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  398564: 681b         	ldr	r3, [r3]
  398566: 334c         	adds	r3, #0x4c
  398568: 681b         	ldr	r3, [r3]
  39856a: 9a03         	ldr	r2, [sp, #0xc]
  39856c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  398570: 4611         	mov	r1, r2
  398572: aa20         	add	r2, sp, #0x80
  398574: 4608         	mov	r0, r1
  398576: 4611         	mov	r1, r2
  398578: 4798         	blx	r3
  39857a: 9b03         	ldr	r3, [sp, #0xc]
  39857c: 681b         	ldr	r3, [r3]
  39857e: 33c8         	adds	r3, #0xc8
  398580: 681b         	ldr	r3, [r3]
  398582: 9903         	ldr	r1, [sp, #0xc]
  398584: 9a03         	ldr	r2, [sp, #0xc]
  398586: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  39858a: 4608         	mov	r0, r1
  39858c: 4611         	mov	r1, r2
  39858e: 4798         	blx	r3
  398590: 9814         	ldr	r0, [sp, #0x50]
  398592: 2100         	movs	r1, #0x0
  398594: f21c fdd2    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21cba4
  398598: 4602         	mov	r2, r0
  39859a: 9b03         	ldr	r3, [sp, #0xc]
  39859c: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3985a0: 9b03         	ldr	r3, [sp, #0xc]
  3985a2: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3985a6: 4618         	mov	r0, r3
  3985a8: f1ff fc9e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff93c
  3985ac: 9b03         	ldr	r3, [sp, #0xc]
  3985ae: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3985b2: 681b         	ldr	r3, [r3]
  3985b4: 334c         	adds	r3, #0x4c
  3985b6: 681d         	ldr	r5, [r3]
  3985b8: 9b03         	ldr	r3, [sp, #0xc]
  3985ba: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3985be: 461e         	mov	r6, r3
  3985c0: e00c         	b	0x3985dc <LobbyOptionsLayer::init()+0x644> @ imm = #0x18
  3985c2: bf00         	nop
  3985c4: f3af 8000    	nop.w
  3985d0: 0000         	movs	r0, r0
  3985d2: 4282         	cmp	r2, r0
  3985d4: 8c68         	ldrh	r0, [r5, #0x22]
  3985d6: 005a         	lsls	r2, r3, #0x1
  3985d8: 9a48         	ldr	r2, [sp, #0x120]
  3985da: 0043         	lsls	r3, r0, #0x1
  3985dc: 9b1c         	ldr	r3, [sp, #0x70]
  3985de: ed9d 7a1d    	vldr	s14, [sp, #116]
  3985e2: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3985e6: ee77 7a67    	vsub.f32	s15, s14, s15
  3985ea: aa34         	add	r2, sp, #0xd0
  3985ec: 4610         	mov	r0, r2
  3985ee: 4619         	mov	r1, r3
  3985f0: ee17 2a90    	vmov	r2, s15
  3985f4: f1fa fb7c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa6f8
  3985f8: ab34         	add	r3, sp, #0xd0
  3985fa: 4630         	mov	r0, r6
  3985fc: 4619         	mov	r1, r3
  3985fe: 47a8         	blx	r5
  398600: 9b03         	ldr	r3, [sp, #0xc]
  398602: 681b         	ldr	r3, [r3]
  398604: 33c8         	adds	r3, #0xc8
  398606: 681b         	ldr	r3, [r3]
  398608: 9903         	ldr	r1, [sp, #0xc]
  39860a: 9a03         	ldr	r2, [sp, #0xc]
  39860c: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  398610: 4608         	mov	r0, r1
  398612: 4611         	mov	r1, r2
  398614: 4798         	blx	r3
  398616: f8df 3548    	ldr.w	r3, [pc, #0x548]        @ 0x398b60 <LobbyOptionsLayer::init()+0xbc8>
  39861a: 447b         	add	r3, pc
  39861c: 4618         	mov	r0, r3
  39861e: f01c f66f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41ccde
  398622: 4603         	mov	r3, r0
  398624: 9a16         	ldr	r2, [sp, #0x58]
  398626: 9200         	str	r2, [sp]
  398628: f8df 2538    	ldr.w	r2, [pc, #0x538]        @ 0x398b64 <LobbyOptionsLayer::init()+0xbcc>
  39862c: 447a         	add	r2, pc
  39862e: 4610         	mov	r0, r2
  398630: 4619         	mov	r1, r3
  398632: 2220         	movs	r2, #0x20
  398634: 2320         	movs	r3, #0x20
  398636: f20c fe9f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20cd3e
  39863a: 4602         	mov	r2, r0
  39863c: 9b03         	ldr	r3, [sp, #0xc]
  39863e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  398642: 9b03         	ldr	r3, [sp, #0xc]
  398644: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  398648: 4618         	mov	r0, r3
  39864a: f1ff fc4d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff89a
  39864e: 9b03         	ldr	r3, [sp, #0xc]
  398650: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  398654: 681b         	ldr	r3, [r3]
  398656: 334c         	adds	r3, #0x4c
  398658: 681d         	ldr	r5, [r3]
  39865a: 9b03         	ldr	r3, [sp, #0xc]
  39865c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  398660: 461e         	mov	r6, r3
  398662: 9b03         	ldr	r3, [sp, #0xc]
  398664: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  398668: 681b         	ldr	r3, [r3]
  39866a: 3350         	adds	r3, #0x50
  39866c: 681b         	ldr	r3, [r3]
  39866e: 9a03         	ldr	r2, [sp, #0xc]
  398670: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  398674: 4610         	mov	r0, r2
  398676: 4798         	blx	r3
  398678: 4603         	mov	r3, r0
  39867a: 681f         	ldr	r7, [r3]
  39867c: 9b03         	ldr	r3, [sp, #0xc]
  39867e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  398682: 681b         	ldr	r3, [r3]
  398684: 3350         	adds	r3, #0x50
  398686: 681b         	ldr	r3, [r3]
  398688: 9a03         	ldr	r2, [sp, #0xc]
  39868a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  39868e: 4610         	mov	r0, r2
  398690: 4798         	blx	r3
  398692: 4603         	mov	r3, r0
  398694: 685b         	ldr	r3, [r3, #0x4]
  398696: aa24         	add	r2, sp, #0x90
  398698: 4610         	mov	r0, r2
  39869a: 4639         	mov	r1, r7
  39869c: 461a         	mov	r2, r3
  39869e: f1fa fb27    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa64e
  3986a2: ed9d 7a08    	vldr	s14, [sp, #32]
  3986a6: eef2 7a0a    	vmov.f32	s15, #1.300000e+01
  3986aa: ee77 7a27    	vadd.f32	s15, s14, s15
  3986ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3986b2: ab30         	add	r3, sp, #0xc0
  3986b4: 4618         	mov	r0, r3
  3986b6: eeb2 0b0e    	vmov.f64	d0, #1.500000e+01
  3986ba: eeb0 1b47    	vmov.f64	d1, d7
  3986be: f7fe fcdb    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x164a
  3986c2: ed9d 8b30    	vldr	d8, [sp, #192]
  3986c6: 9b03         	ldr	r3, [sp, #0xc]
  3986c8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3986cc: 681b         	ldr	r3, [r3]
  3986ce: f503 73fe    	add.w	r3, r3, #0x1fc
  3986d2: 681b         	ldr	r3, [r3]
  3986d4: 9a03         	ldr	r2, [sp, #0xc]
  3986d6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3986da: 4610         	mov	r0, r2
  3986dc: 4798         	blx	r3
  3986de: 4607         	mov	r7, r0
  3986e0: ab05         	add	r3, sp, #0x14
  3986e2: 4618         	mov	r0, r3
  3986e4: f3f1 fe86    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f1d0c
  3986e8: aa22         	add	r2, sp, #0x88
  3986ea: ab05         	add	r3, sp, #0x14
  3986ec: 4610         	mov	r0, r2
  3986ee: 4639         	mov	r1, r7
  3986f0: 461a         	mov	r2, r3
  3986f2: f01e f1b5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41e36a
  3986f6: ab22         	add	r3, sp, #0x88
  3986f8: 4618         	mov	r0, r3
  3986fa: f01c f4af    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41c95e
  3986fe: 4603         	mov	r3, r0
  398700: ee07 3a90    	vmov	s15, r3
  398704: eeb8 7a67    	vcvt.f32.u32	s14, s15
  398708: eddd 7a07    	vldr	s15, [sp, #28]
  39870c: ee27 7a27    	vmul.f32	s14, s14, s15
  398710: eddd 7a06    	vldr	s15, [sp, #24]
  398714: ee27 7a27    	vmul.f32	s14, s14, s15
  398718: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39871c: eec7 7a27    	vdiv.f32	s15, s14, s15
  398720: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398724: ee38 7b47    	vsub.f64	d7, d8, d7
  398728: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39872c: ed9d 7a08    	vldr	s14, [sp, #32]
  398730: eef2 7a0a    	vmov.f32	s15, #1.300000e+01
  398734: ee77 7a27    	vadd.f32	s15, s14, s15
  398738: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39873c: ab34         	add	r3, sp, #0xd0
  39873e: 4618         	mov	r0, r3
  398740: eeb2 0b0e    	vmov.f64	d0, #1.500000e+01
  398744: eeb0 1b47    	vmov.f64	d1, d7
  398748: f7fe fc96    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x16d4
  39874c: ed9d 7b36    	vldr	d7, [sp, #216]
  398750: eef7 7bc7    	vcvt.f32.f64	s15, d7
  398754: ab2c         	add	r3, sp, #0xb0
  398756: 4618         	mov	r0, r3
  398758: ee18 1a10    	vmov	r1, s16
  39875c: ee17 2a90    	vmov	r2, s15
  398760: f1fa fac6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa58c
  398764: a92e         	add	r1, sp, #0xb8
  398766: aa24         	add	r2, sp, #0x90
  398768: ab2c         	add	r3, sp, #0xb0
  39876a: 4608         	mov	r0, r1
  39876c: 4611         	mov	r1, r2
  39876e: 461a         	mov	r2, r3
  398770: f7fe fc72    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x171c
  398774: ab2e         	add	r3, sp, #0xb8
  398776: 4630         	mov	r0, r6
  398778: 4619         	mov	r1, r3
  39877a: 47a8         	blx	r5
  39877c: ab22         	add	r3, sp, #0x88
  39877e: 4618         	mov	r0, r3
  398780: f01d f0c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41d190
  398784: ab05         	add	r3, sp, #0x14
  398786: 4618         	mov	r0, r3
  398788: f3f1 fe38    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1c70
  39878c: 9b03         	ldr	r3, [sp, #0xc]
  39878e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  398792: eddd 7a07    	vldr	s15, [sp, #28]
  398796: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39879a: ee17 2a90    	vmov	r2, s15
  39879e: 4618         	mov	r0, r3
  3987a0: 4611         	mov	r1, r2
  3987a2: f20d faef    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20d5de
  3987a6: 9b03         	ldr	r3, [sp, #0xc]
  3987a8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3987ac: 681b         	ldr	r3, [r3]
  3987ae: 3340         	adds	r3, #0x40
  3987b0: 681b         	ldr	r3, [r3]
  3987b2: 9a03         	ldr	r2, [sp, #0xc]
  3987b4: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3987b8: 4610         	mov	r0, r2
  3987ba: f649 119a    	movw	r1, #0x999a
  3987be: f6c3 6199    	movt	r1, #0x3e99
  3987c2: 4798         	blx	r3
  3987c4: 9b03         	ldr	r3, [sp, #0xc]
  3987c6: 681b         	ldr	r3, [r3]
  3987c8: 33c8         	adds	r3, #0xc8
  3987ca: 681b         	ldr	r3, [r3]
  3987cc: 9903         	ldr	r1, [sp, #0xc]
  3987ce: 9a03         	ldr	r2, [sp, #0xc]
  3987d0: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3987d4: 4608         	mov	r0, r1
  3987d6: 4611         	mov	r1, r2
  3987d8: 4798         	blx	r3
  3987da: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x398b68 <LobbyOptionsLayer::init()+0xbd0>
  3987dc: 447b         	add	r3, pc
  3987de: 4618         	mov	r0, r3
  3987e0: f01c f58e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41cb1c
  3987e4: 4603         	mov	r3, r0
  3987e6: 9a16         	ldr	r2, [sp, #0x58]
  3987e8: 9200         	str	r2, [sp]
  3987ea: 4ae0         	ldr	r2, [pc, #0x380]        @ 0x398b6c <LobbyOptionsLayer::init()+0xbd4>
  3987ec: 447a         	add	r2, pc
  3987ee: 4610         	mov	r0, r2
  3987f0: 4619         	mov	r1, r3
  3987f2: 2220         	movs	r2, #0x20
  3987f4: 2320         	movs	r3, #0x20
  3987f6: f20c fdbf    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20cb7e
  3987fa: 4602         	mov	r2, r0
  3987fc: 9b03         	ldr	r3, [sp, #0xc]
  3987fe: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  398802: 9b03         	ldr	r3, [sp, #0xc]
  398804: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398808: 4618         	mov	r0, r3
  39880a: f1ff fb6d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff6da
  39880e: 9b03         	ldr	r3, [sp, #0xc]
  398810: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398814: eddd 7a07    	vldr	s15, [sp, #28]
  398818: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39881c: ee17 2a90    	vmov	r2, s15
  398820: 4618         	mov	r0, r3
  398822: 4611         	mov	r1, r2
  398824: f20d faae    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20d55c
  398828: 9b03         	ldr	r3, [sp, #0xc]
  39882a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  39882e: 681b         	ldr	r3, [r3]
  398830: 3340         	adds	r3, #0x40
  398832: 681b         	ldr	r3, [r3]
  398834: 9a03         	ldr	r2, [sp, #0xc]
  398836: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  39883a: 4610         	mov	r0, r2
  39883c: 9906         	ldr	r1, [sp, #0x18]
  39883e: 4798         	blx	r3
  398840: 9b03         	ldr	r3, [sp, #0xc]
  398842: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  398846: 681b         	ldr	r3, [r3]
  398848: 3350         	adds	r3, #0x50
  39884a: 681b         	ldr	r3, [r3]
  39884c: 9a03         	ldr	r2, [sp, #0xc]
  39884e: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  398852: 4610         	mov	r0, r2
  398854: 4798         	blx	r3
  398856: 4603         	mov	r3, r0
  398858: 681d         	ldr	r5, [r3]
  39885a: 9b03         	ldr	r3, [sp, #0xc]
  39885c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  398860: 681b         	ldr	r3, [r3]
  398862: 3350         	adds	r3, #0x50
  398864: 681b         	ldr	r3, [r3]
  398866: 9a03         	ldr	r2, [sp, #0xc]
  398868: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  39886c: 4610         	mov	r0, r2
  39886e: 4798         	blx	r3
  398870: 4603         	mov	r3, r0
  398872: 685b         	ldr	r3, [r3, #0x4]
  398874: aa2c         	add	r2, sp, #0xb0
  398876: 4610         	mov	r0, r2
  398878: 4629         	mov	r1, r5
  39887a: 461a         	mov	r2, r3
  39887c: f1fa fa38    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa470
  398880: ed9d 7a08    	vldr	s14, [sp, #32]
  398884: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  398888: ee77 7a67    	vsub.f32	s15, s14, s15
  39888c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398890: ab30         	add	r3, sp, #0xc0
  398892: 4618         	mov	r0, r3
  398894: ed9f 0bb0    	vldr	d0, [pc, #704]          @ 0x398b58 <LobbyOptionsLayer::init()+0xbc0>
  398898: eeb0 1b47    	vmov.f64	d1, d7
  39889c: f7fe fbec    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x1828
  3988a0: ed9d 8b30    	vldr	d8, [sp, #192]
  3988a4: 9b03         	ldr	r3, [sp, #0xc]
  3988a6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3988aa: 681b         	ldr	r3, [r3]
  3988ac: f503 73fe    	add.w	r3, r3, #0x1fc
  3988b0: 681b         	ldr	r3, [r3]
  3988b2: 9a03         	ldr	r2, [sp, #0xc]
  3988b4: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3988b8: 4610         	mov	r0, r2
  3988ba: 4798         	blx	r3
  3988bc: 4605         	mov	r5, r0
  3988be: ab05         	add	r3, sp, #0x14
  3988c0: 4618         	mov	r0, r3
  3988c2: f3f1 fd97    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f1b2e
  3988c6: aa24         	add	r2, sp, #0x90
  3988c8: ab05         	add	r3, sp, #0x14
  3988ca: 4610         	mov	r0, r2
  3988cc: 4629         	mov	r1, r5
  3988ce: 461a         	mov	r2, r3
  3988d0: f01e f0c6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41e18c
  3988d4: ab24         	add	r3, sp, #0x90
  3988d6: 4618         	mov	r0, r3
  3988d8: f01c f3c0    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41c780
  3988dc: 4603         	mov	r3, r0
  3988de: ee07 3a90    	vmov	s15, r3
  3988e2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3988e6: eddd 7a07    	vldr	s15, [sp, #28]
  3988ea: ee27 7a27    	vmul.f32	s14, s14, s15
  3988ee: eddd 7a06    	vldr	s15, [sp, #24]
  3988f2: ee27 7a27    	vmul.f32	s14, s14, s15
  3988f6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3988fa: eec7 7a27    	vdiv.f32	s15, s14, s15
  3988fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398902: ee38 7b47    	vsub.f64	d7, d8, d7
  398906: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39890a: ed9d 7a08    	vldr	s14, [sp, #32]
  39890e: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  398912: ee77 7a67    	vsub.f32	s15, s14, s15
  398916: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39891a: ab34         	add	r3, sp, #0xd0
  39891c: 4618         	mov	r0, r3
  39891e: ed9f 0b8e    	vldr	d0, [pc, #568]          @ 0x398b58 <LobbyOptionsLayer::init()+0xbc0>
  398922: eeb0 1b47    	vmov.f64	d1, d7
  398926: f7fe fba7    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x18b2
  39892a: ed9d 7b36    	vldr	d7, [sp, #216]
  39892e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  398932: ab2e         	add	r3, sp, #0xb8
  398934: 4618         	mov	r0, r3
  398936: ee18 1a10    	vmov	r1, s16
  39893a: ee17 2a90    	vmov	r2, s15
  39893e: f1fa f9d7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa3ae
  398942: a922         	add	r1, sp, #0x88
  398944: aa2c         	add	r2, sp, #0xb0
  398946: ab2e         	add	r3, sp, #0xb8
  398948: 4608         	mov	r0, r1
  39894a: 4611         	mov	r1, r2
  39894c: 461a         	mov	r2, r3
  39894e: f7fe fb83    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x18fa
  398952: ab24         	add	r3, sp, #0x90
  398954: 4618         	mov	r0, r3
  398956: f01c f7dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cfba
  39895a: ab05         	add	r3, sp, #0x14
  39895c: 4618         	mov	r0, r3
  39895e: f3f1 fd4d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1a9a
  398962: 9b03         	ldr	r3, [sp, #0xc]
  398964: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398968: 681b         	ldr	r3, [r3]
  39896a: 334c         	adds	r3, #0x4c
  39896c: 681b         	ldr	r3, [r3]
  39896e: 9a03         	ldr	r2, [sp, #0xc]
  398970: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  398974: 4611         	mov	r1, r2
  398976: aa22         	add	r2, sp, #0x88
  398978: 4608         	mov	r0, r1
  39897a: 4611         	mov	r1, r2
  39897c: 4798         	blx	r3
  39897e: 9b03         	ldr	r3, [sp, #0xc]
  398980: 681b         	ldr	r3, [r3]
  398982: 33c8         	adds	r3, #0xc8
  398984: 681b         	ldr	r3, [r3]
  398986: 9903         	ldr	r1, [sp, #0xc]
  398988: 9a03         	ldr	r2, [sp, #0xc]
  39898a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  39898e: 4608         	mov	r0, r1
  398990: 4611         	mov	r1, r2
  398992: 4798         	blx	r3
  398994: f04f 0300    	mov.w	r3, #0x0
  398998: f2c4 2382    	movt	r3, #0x4282
  39899c: 9317         	str	r3, [sp, #0x5c]
  39899e: 9a03         	ldr	r2, [sp, #0xc]
  3989a0: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x398b70 <LobbyOptionsLayer::init()+0xbd8>
  3989a2: 58e3         	ldr	r3, [r4, r3]
  3989a4: 932c         	str	r3, [sp, #0xb0]
  3989a6: 2300         	movs	r3, #0x0
  3989a8: 932d         	str	r3, [sp, #0xb4]
  3989aa: 9b2d         	ldr	r3, [sp, #0xb4]
  3989ac: 9300         	str	r3, [sp]
  3989ae: 9b2c         	ldr	r3, [sp, #0xb0]
  3989b0: 980f         	ldr	r0, [sp, #0x3c]
  3989b2: 9910         	ldr	r1, [sp, #0x40]
  3989b4: f21f fcba    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21f974
  3989b8: 4603         	mov	r3, r0
  3989ba: 9318         	str	r3, [sp, #0x60]
  3989bc: 9818         	ldr	r0, [sp, #0x60]
  3989be: 2100         	movs	r1, #0x0
  3989c0: f21c fbbc    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21c778
  3989c4: 4602         	mov	r2, r0
  3989c6: 9b03         	ldr	r3, [sp, #0xc]
  3989c8: f8c3 2108    	str.w	r2, [r3, #0x108]
  3989cc: 9b03         	ldr	r3, [sp, #0xc]
  3989ce: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3989d2: 4618         	mov	r0, r3
  3989d4: f1ff fa88    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff510
  3989d8: 9b03         	ldr	r3, [sp, #0xc]
  3989da: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3989de: 681b         	ldr	r3, [r3]
  3989e0: 334c         	adds	r3, #0x4c
  3989e2: 681d         	ldr	r5, [r3]
  3989e4: 9b03         	ldr	r3, [sp, #0xc]
  3989e6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3989ea: 461e         	mov	r6, r3
  3989ec: ed9d 7a1c    	vldr	s14, [sp, #112]
  3989f0: eddd 7a17    	vldr	s15, [sp, #92]
  3989f4: ee77 6a27    	vadd.f32	s13, s14, s15
  3989f8: ed9d 7a1d    	vldr	s14, [sp, #116]
  3989fc: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  398a00: ee77 7a27    	vadd.f32	s15, s14, s15
  398a04: ab34         	add	r3, sp, #0xd0
  398a06: 4618         	mov	r0, r3
  398a08: ee16 1a90    	vmov	r1, s13
  398a0c: ee17 2a90    	vmov	r2, s15
  398a10: f1fa f96e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa2dc
  398a14: ab34         	add	r3, sp, #0xd0
  398a16: 4630         	mov	r0, r6
  398a18: 4619         	mov	r1, r3
  398a1a: 47a8         	blx	r5
  398a1c: 9b03         	ldr	r3, [sp, #0xc]
  398a1e: 681b         	ldr	r3, [r3]
  398a20: 33c8         	adds	r3, #0xc8
  398a22: 681b         	ldr	r3, [r3]
  398a24: 9903         	ldr	r1, [sp, #0xc]
  398a26: 9a03         	ldr	r2, [sp, #0xc]
  398a28: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  398a2c: 4608         	mov	r0, r1
  398a2e: 4611         	mov	r1, r2
  398a30: 4798         	blx	r3
  398a32: 9a03         	ldr	r2, [sp, #0xc]
  398a34: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x398b74 <LobbyOptionsLayer::init()+0xbdc>
  398a36: 58e3         	ldr	r3, [r4, r3]
  398a38: 932e         	str	r3, [sp, #0xb8]
  398a3a: 2300         	movs	r3, #0x0
  398a3c: 932f         	str	r3, [sp, #0xbc]
  398a3e: 9b2f         	ldr	r3, [sp, #0xbc]
  398a40: 9300         	str	r3, [sp]
  398a42: 9b2e         	ldr	r3, [sp, #0xb8]
  398a44: 9811         	ldr	r0, [sp, #0x44]
  398a46: 9912         	ldr	r1, [sp, #0x48]
  398a48: f21f fc70    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21f8e0
  398a4c: 4603         	mov	r3, r0
  398a4e: 9319         	str	r3, [sp, #0x64]
  398a50: 9819         	ldr	r0, [sp, #0x64]
  398a52: 2100         	movs	r1, #0x0
  398a54: f21c fb72    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21c6e4
  398a58: 4602         	mov	r2, r0
  398a5a: 9b03         	ldr	r3, [sp, #0xc]
  398a5c: f8c3 210c    	str.w	r2, [r3, #0x10c]
  398a60: 9b03         	ldr	r3, [sp, #0xc]
  398a62: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  398a66: 4618         	mov	r0, r3
  398a68: f1ff fa3e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff47c
  398a6c: 9b03         	ldr	r3, [sp, #0xc]
  398a6e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  398a72: 681b         	ldr	r3, [r3]
  398a74: 334c         	adds	r3, #0x4c
  398a76: 681d         	ldr	r5, [r3]
  398a78: 9b03         	ldr	r3, [sp, #0xc]
  398a7a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  398a7e: 461e         	mov	r6, r3
  398a80: ed9d 7a1c    	vldr	s14, [sp, #112]
  398a84: eddd 7a17    	vldr	s15, [sp, #92]
  398a88: ee77 6a67    	vsub.f32	s13, s14, s15
  398a8c: ed9d 7a1d    	vldr	s14, [sp, #116]
  398a90: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  398a94: ee77 7a27    	vadd.f32	s15, s14, s15
  398a98: ab34         	add	r3, sp, #0xd0
  398a9a: 4618         	mov	r0, r3
  398a9c: ee16 1a90    	vmov	r1, s13
  398aa0: ee17 2a90    	vmov	r2, s15
  398aa4: f1fa f924    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa248
  398aa8: ab34         	add	r3, sp, #0xd0
  398aaa: 4630         	mov	r0, r6
  398aac: 4619         	mov	r1, r3
  398aae: 47a8         	blx	r5
  398ab0: 9b03         	ldr	r3, [sp, #0xc]
  398ab2: 681b         	ldr	r3, [r3]
  398ab4: 33c8         	adds	r3, #0xc8
  398ab6: 681b         	ldr	r3, [r3]
  398ab8: 9903         	ldr	r1, [sp, #0xc]
  398aba: 9a03         	ldr	r2, [sp, #0xc]
  398abc: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  398ac0: 4608         	mov	r0, r1
  398ac2: 4611         	mov	r1, r2
  398ac4: 4798         	blx	r3
  398ac6: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x398b78 <LobbyOptionsLayer::init()+0xbe0>
  398ac8: 447b         	add	r3, pc
  398aca: 4618         	mov	r0, r3
  398acc: f23f fc1a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23f834
  398ad0: 4602         	mov	r2, r0
  398ad2: 9b03         	ldr	r3, [sp, #0xc]
  398ad4: f8c3 2110    	str.w	r2, [r3, #0x110]
  398ad8: 9b03         	ldr	r3, [sp, #0xc]
  398ada: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  398ade: 4618         	mov	r0, r3
  398ae0: f1ff fa02    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff404
  398ae4: 9b03         	ldr	r3, [sp, #0xc]
  398ae6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  398aea: 681b         	ldr	r3, [r3]
  398aec: 334c         	adds	r3, #0x4c
  398aee: 681d         	ldr	r5, [r3]
  398af0: 9b03         	ldr	r3, [sp, #0xc]
  398af2: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  398af6: 9b1c         	ldr	r3, [sp, #0x70]
  398af8: ed9d 7a1d    	vldr	s14, [sp, #116]
  398afc: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  398b00: ee77 7a27    	vadd.f32	s15, s14, s15
  398b04: aa34         	add	r2, sp, #0xd0
  398b06: 4610         	mov	r0, r2
  398b08: 4619         	mov	r1, r3
  398b0a: ee17 2a90    	vmov	r2, s15
  398b0e: f1fa f8ef    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa1de
  398b12: ab34         	add	r3, sp, #0xd0
  398b14: 4630         	mov	r0, r6
  398b16: 4619         	mov	r1, r3
  398b18: 47a8         	blx	r5
  398b1a: 9b03         	ldr	r3, [sp, #0xc]
  398b1c: 681b         	ldr	r3, [r3]
  398b1e: 33c8         	adds	r3, #0xc8
  398b20: 681b         	ldr	r3, [r3]
  398b22: 9903         	ldr	r1, [sp, #0xc]
  398b24: 9a03         	ldr	r2, [sp, #0xc]
  398b26: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  398b2a: 4608         	mov	r0, r1
  398b2c: 4611         	mov	r1, r2
  398b2e: 4798         	blx	r3
  398b30: 9b03         	ldr	r3, [sp, #0xc]
  398b32: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  398b36: 681b         	ldr	r3, [r3]
  398b38: f503 73de    	add.w	r3, r3, #0x1bc
  398b3c: 681d         	ldr	r5, [r3]
  398b3e: 9b03         	ldr	r3, [sp, #0xc]
  398b40: f8d3 1110    	ldr.w	r1, [r3, #0x110]
  398b44: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x398b7c <LobbyOptionsLayer::init()+0xbe4>
  398b46: 58e3         	ldr	r3, [r4, r3]
  398b48: 681a         	ldr	r2, [r3]
  398b4a: 4613         	mov	r3, r2
  398b4c: 005b         	lsls	r3, r3, #0x1
  398b4e: 4413         	add	r3, r2
  398b50: e016         	b	0x398b80 <LobbyOptionsLayer::init()+0xbe8> @ imm = #0x2c
  398b52: bf00         	nop
  398b54: f3af 8000    	nop.w
  398b60: 8a36         	ldrh	r6, [r6, #0x10]
  398b62: 005a         	lsls	r2, r3, #0x1
  398b64: 9820         	ldr	r0, [sp, #0x80]
  398b66: 0043         	lsls	r3, r0, #0x1
  398b68: 8874         	ldrh	r4, [r6, #0x2]
  398b6a: 005a         	lsls	r2, r3, #0x1
  398b6c: 9668         	str	r6, [sp, #0x1a0]
  398b6e: 0043         	lsls	r3, r0, #0x1
  398b70: dd38         	ble	0x398be4 <LobbyOptionsLayer::init()+0xc4c> @ imm = #0x70
  398b72: ffff dd3c    	<unknown>
  398b76: ffff 9398    	vrsra.u64	d25, d8, #0x1
  398b7a: 0043         	lsls	r3, r0, #0x1
  398b7c: d7d0         	bvc	0x398b20 <LobbyOptionsLayer::init()+0xb88> @ imm = #-0x60
  398b7e: ffff 4a8d    	vtbl.8	d20, {d31, fpinst2, mvfr0}, d13
  398b82: 58a2         	ldr	r2, [r4, r2]
  398b84: 4413         	add	r3, r2
  398b86: 4608         	mov	r0, r1
  398b88: 4619         	mov	r1, r3
  398b8a: 47a8         	blx	r5
  398b8c: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x398dbc <LobbyOptionsLayer::init()+0xe24>
  398b8e: 447b         	add	r3, pc
  398b90: 4618         	mov	r0, r3
  398b92: f01c f3b5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41c76a
  398b96: 4603         	mov	r3, r0
  398b98: 9a16         	ldr	r2, [sp, #0x58]
  398b9a: 9200         	str	r2, [sp]
  398b9c: 4a88         	ldr	r2, [pc, #0x220]        @ 0x398dc0 <LobbyOptionsLayer::init()+0xe28>
  398b9e: 447a         	add	r2, pc
  398ba0: 4610         	mov	r0, r2
  398ba2: 4619         	mov	r1, r3
  398ba4: 2220         	movs	r2, #0x20
  398ba6: 2320         	movs	r3, #0x20
  398ba8: f20c fbe6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20c7cc
  398bac: 4602         	mov	r2, r0
  398bae: 9b03         	ldr	r3, [sp, #0xc]
  398bb0: f8c3 2104    	str.w	r2, [r3, #0x104]
  398bb4: 9b03         	ldr	r3, [sp, #0xc]
  398bb6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398bba: 4618         	mov	r0, r3
  398bbc: f1ff f994    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1ff328
  398bc0: 9b03         	ldr	r3, [sp, #0xc]
  398bc2: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398bc6: eddd 7a07    	vldr	s15, [sp, #28]
  398bca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  398bce: ee17 2a90    	vmov	r2, s15
  398bd2: 4618         	mov	r0, r3
  398bd4: 4611         	mov	r1, r2
  398bd6: f20d f8d5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20d1aa
  398bda: 9b03         	ldr	r3, [sp, #0xc]
  398bdc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398be0: 681b         	ldr	r3, [r3]
  398be2: 3340         	adds	r3, #0x40
  398be4: 681b         	ldr	r3, [r3]
  398be6: 9a03         	ldr	r2, [sp, #0xc]
  398be8: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  398bec: 4610         	mov	r0, r2
  398bee: 9906         	ldr	r1, [sp, #0x18]
  398bf0: 4798         	blx	r3
  398bf2: ed9d 7a1c    	vldr	s14, [sp, #112]
  398bf6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  398bfa: ee77 7a67    	vsub.f32	s15, s14, s15
  398bfe: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  398c02: ed9d 7a1d    	vldr	s14, [sp, #116]
  398c06: eddd 7a08    	vldr	s15, [sp, #32]
  398c0a: ee37 7a27    	vadd.f32	s14, s14, s15
  398c0e: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  398c12: ee77 7a27    	vadd.f32	s15, s14, s15
  398c16: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398c1a: ab30         	add	r3, sp, #0xc0
  398c1c: 4618         	mov	r0, r3
  398c1e: eeb0 0b46    	vmov.f64	d0, d6
  398c22: eeb0 1b47    	vmov.f64	d1, d7
  398c26: f7fe fa27    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x1bb2
  398c2a: ed9d 8b30    	vldr	d8, [sp, #192]
  398c2e: 9b03         	ldr	r3, [sp, #0xc]
  398c30: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398c34: 681b         	ldr	r3, [r3]
  398c36: f503 73fe    	add.w	r3, r3, #0x1fc
  398c3a: 681b         	ldr	r3, [r3]
  398c3c: 9a03         	ldr	r2, [sp, #0xc]
  398c3e: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  398c42: 4610         	mov	r0, r2
  398c44: 4798         	blx	r3
  398c46: 4605         	mov	r5, r0
  398c48: ab04         	add	r3, sp, #0x10
  398c4a: 4618         	mov	r0, r3
  398c4c: f3f1 fbd2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f17a4
  398c50: aa05         	add	r2, sp, #0x14
  398c52: ab04         	add	r3, sp, #0x10
  398c54: 4610         	mov	r0, r2
  398c56: 4629         	mov	r1, r5
  398c58: 461a         	mov	r2, r3
  398c5a: f01d f701    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41de02
  398c5e: ab05         	add	r3, sp, #0x14
  398c60: 4618         	mov	r0, r3
  398c62: f01c f1fb    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41c3f6
  398c66: 4603         	mov	r3, r0
  398c68: ee07 3a90    	vmov	s15, r3
  398c6c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  398c70: eddd 7a07    	vldr	s15, [sp, #28]
  398c74: ee27 7a27    	vmul.f32	s14, s14, s15
  398c78: eddd 7a06    	vldr	s15, [sp, #24]
  398c7c: ee27 7a27    	vmul.f32	s14, s14, s15
  398c80: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  398c84: eec7 7a27    	vdiv.f32	s15, s14, s15
  398c88: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398c8c: ee38 7b47    	vsub.f64	d7, d8, d7
  398c90: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  398c94: ed9d 7a1c    	vldr	s14, [sp, #112]
  398c98: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  398c9c: ee77 7a67    	vsub.f32	s15, s14, s15
  398ca0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  398ca4: ed9d 7a1d    	vldr	s14, [sp, #116]
  398ca8: eddd 7a08    	vldr	s15, [sp, #32]
  398cac: ee37 7a27    	vadd.f32	s14, s14, s15
  398cb0: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  398cb4: ee77 7a27    	vadd.f32	s15, s14, s15
  398cb8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  398cbc: ab34         	add	r3, sp, #0xd0
  398cbe: 4618         	mov	r0, r3
  398cc0: eeb0 0b46    	vmov.f64	d0, d6
  398cc4: eeb0 1b47    	vmov.f64	d1, d7
  398cc8: f7fe f9d6    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x1c54
  398ccc: ed9d 7b36    	vldr	d7, [sp, #216]
  398cd0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  398cd4: ab24         	add	r3, sp, #0x90
  398cd6: 4618         	mov	r0, r3
  398cd8: ee18 1a10    	vmov	r1, s16
  398cdc: ee17 2a90    	vmov	r2, s15
  398ce0: f1fa f806    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1fa00c
  398ce4: ab05         	add	r3, sp, #0x14
  398ce6: 4618         	mov	r0, r3
  398ce8: f01c f614    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cc28
  398cec: ab04         	add	r3, sp, #0x10
  398cee: 4618         	mov	r0, r3
  398cf0: f3f1 fb84    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1708
  398cf4: 9b03         	ldr	r3, [sp, #0xc]
  398cf6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398cfa: 681b         	ldr	r3, [r3]
  398cfc: 334c         	adds	r3, #0x4c
  398cfe: 681b         	ldr	r3, [r3]
  398d00: 9a03         	ldr	r2, [sp, #0xc]
  398d02: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  398d06: 4611         	mov	r1, r2
  398d08: aa24         	add	r2, sp, #0x90
  398d0a: 4608         	mov	r0, r1
  398d0c: 4611         	mov	r1, r2
  398d0e: 4798         	blx	r3
  398d10: 9b03         	ldr	r3, [sp, #0xc]
  398d12: 681b         	ldr	r3, [r3]
  398d14: 33c8         	adds	r3, #0xc8
  398d16: 681b         	ldr	r3, [r3]
  398d18: 9903         	ldr	r1, [sp, #0xc]
  398d1a: 9a03         	ldr	r2, [sp, #0xc]
  398d1c: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  398d20: 4608         	mov	r0, r1
  398d22: 4611         	mov	r1, r2
  398d24: 4798         	blx	r3
  398d26: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x398dc4 <LobbyOptionsLayer::init()+0xe2c>
  398d28: 58e3         	ldr	r3, [r4, r3]
  398d2a: 681b         	ldr	r3, [r3]
  398d2c: 9803         	ldr	r0, [sp, #0xc]
  398d2e: 4619         	mov	r1, r3
  398d30: f000 f8e0    	bl	0x398ef4 <LobbyOptionsLayer::updateChatLabel(int)> @ imm = #0x1c0
  398d34: 9803         	ldr	r0, [sp, #0xc]
  398d36: f000 f97f    	bl	0x399038 <LobbyOptionsLayer::updateTeamColor()> @ imm = #0x2fe
  398d3a: 2301         	movs	r3, #0x1
  398d3c: e036         	b	0x398dac <LobbyOptionsLayer::init()+0xe14> @ imm = #0x6c
  398d3e: ab24         	add	r3, sp, #0x90
  398d40: 4618         	mov	r0, r3
  398d42: f01c f5e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cbce
  398d46: e7ff         	b	0x398d48 <LobbyOptionsLayer::init()+0xdb0> @ imm = #-0x2
  398d48: ab22         	add	r3, sp, #0x88
  398d4a: 4618         	mov	r0, r3
  398d4c: f3f1 fb56    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f16ac
  398d50: f3ef f9ac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ef358
  398d54: ab24         	add	r3, sp, #0x90
  398d56: 4618         	mov	r0, r3
  398d58: f01c f5dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cbb8
  398d5c: e7ff         	b	0x398d5e <LobbyOptionsLayer::init()+0xdc6> @ imm = #-0x2
  398d5e: ab22         	add	r3, sp, #0x88
  398d60: 4618         	mov	r0, r3
  398d62: f3f1 fb4b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1696
  398d66: f3ef f9a1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ef342
  398d6a: ab22         	add	r3, sp, #0x88
  398d6c: 4618         	mov	r0, r3
  398d6e: f01c f5d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cba2
  398d72: e7ff         	b	0x398d74 <LobbyOptionsLayer::init()+0xddc> @ imm = #-0x2
  398d74: ab05         	add	r3, sp, #0x14
  398d76: 4618         	mov	r0, r3
  398d78: f3f1 fb40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1680
  398d7c: f3ef f996    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ef32c
  398d80: ab24         	add	r3, sp, #0x90
  398d82: 4618         	mov	r0, r3
  398d84: f01c f5c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cb8c
  398d88: e7ff         	b	0x398d8a <LobbyOptionsLayer::init()+0xdf2> @ imm = #-0x2
  398d8a: ab05         	add	r3, sp, #0x14
  398d8c: 4618         	mov	r0, r3
  398d8e: f3f1 fb35    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f166a
  398d92: f3ef f98b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ef316
  398d96: ab05         	add	r3, sp, #0x14
  398d98: 4618         	mov	r0, r3
  398d9a: f01c f5bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41cb76
  398d9e: e7ff         	b	0x398da0 <LobbyOptionsLayer::init()+0xe08> @ imm = #-0x2
  398da0: ab04         	add	r3, sp, #0x10
  398da2: 4618         	mov	r0, r3
  398da4: f3f1 fb2a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f1654
  398da8: f3ef f980    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ef300
  398dac: 4618         	mov	r0, r3
  398dae: b039         	add	sp, #0xe4
  398db0: ecbd 8b02    	vpop	{d8}
  398db4: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x398db5); words below are literal-pool data ---
  398db6: bf00         	nop
  398db8: d7b8         	bvc	0x398d2c <LobbyOptionsLayer::init()+0xd94> @ imm = #-0x90
  398dba: ffff 84c2    	<unknown>
  398dbe: 005a         	lsls	r2, r3, #0x1
  398dc0: 92d2         	str	r2, [sp, #0x348]
  398dc2: 0043         	lsls	r3, r0, #0x1
  398dc4: d790         	bvc	0x398ce8 <LobbyOptionsLayer::init()+0xd50> @ imm = #-0xe0
  398dc6: ffff b500    	<unknown>

// ==== LobbyOptionsLayer::~LobbyOptionsLayer
//      file offset 0x398dc8 (= ELF address; Ghidra 0x3a8dc8), 208 bytes, Thumb-2
  398dc8: b500         	push	{lr}
  398dca: b083         	sub	sp, #0xc
  398dcc: 9001         	str	r0, [sp, #0x4]
  398dce: 4930         	ldr	r1, [pc, #0xc0]         @ 0x398e90 <LobbyOptionsLayer::~LobbyOptionsLayer()+0xc8>
  398dd0: 4479         	add	r1, pc
  398dd2: 9b01         	ldr	r3, [sp, #0x4]
  398dd4: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x398e94 <LobbyOptionsLayer::~LobbyOptionsLayer()+0xcc>
  398dd6: 588a         	ldr	r2, [r1, r2]
  398dd8: 3208         	adds	r2, #0x8
  398dda: 601a         	str	r2, [r3]
  398ddc: f247 fc68    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2478d0
  398de0: 4602         	mov	r2, r0
  398de2: 9b01         	ldr	r3, [sp, #0x4]
  398de4: 4610         	mov	r0, r2
  398de6: 4619         	mov	r1, r3
  398de8: f247 fd9a    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x247b34
  398dec: 9b01         	ldr	r3, [sp, #0x4]
  398dee: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  398df2: 4618         	mov	r0, r3
  398df4: f1ff f860    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff0c0
  398df8: 9b01         	ldr	r3, [sp, #0x4]
  398dfa: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  398dfe: 4618         	mov	r0, r3
  398e00: f1ff f85a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff0b4
  398e04: 9b01         	ldr	r3, [sp, #0x4]
  398e06: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  398e0a: 4618         	mov	r0, r3
  398e0c: f1ff f854    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff0a8
  398e10: 9b01         	ldr	r3, [sp, #0x4]
  398e12: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  398e16: 4618         	mov	r0, r3
  398e18: f1ff f84e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff09c
  398e1c: 9b01         	ldr	r3, [sp, #0x4]
  398e1e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  398e22: 4618         	mov	r0, r3
  398e24: f1ff f848    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff090
  398e28: 9b01         	ldr	r3, [sp, #0x4]
  398e2a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  398e2e: 4618         	mov	r0, r3
  398e30: f1ff f842    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff084
  398e34: 9b01         	ldr	r3, [sp, #0x4]
  398e36: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  398e3a: 4618         	mov	r0, r3
  398e3c: f1ff f83c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff078
  398e40: 9b01         	ldr	r3, [sp, #0x4]
  398e42: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398e46: 4618         	mov	r0, r3
  398e48: f1ff f836    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff06c
  398e4c: 9b01         	ldr	r3, [sp, #0x4]
  398e4e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  398e52: 4618         	mov	r0, r3
  398e54: f1ff f830    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff060
  398e58: 9b01         	ldr	r3, [sp, #0x4]
  398e5a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  398e5e: 4618         	mov	r0, r3
  398e60: f1ff f82a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff054
  398e64: 9b01         	ldr	r3, [sp, #0x4]
  398e66: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  398e6a: 4618         	mov	r0, r3
  398e6c: f1ff f824    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1ff048
  398e70: 9b01         	ldr	r3, [sp, #0x4]
  398e72: 4618         	mov	r0, r3
  398e74: f1f6 fce6    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1f69cc
  398e78: 2300         	movs	r3, #0x0
  398e7a: 2b00         	cmp	r3, #0x0
  398e7c: d002         	beq	0x398e84 <LobbyOptionsLayer::~LobbyOptionsLayer()+0xbc> @ imm = #0x4
  398e7e: 9801         	ldr	r0, [sp, #0x4]
  398e80: f3ef f910    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ef220
  398e84: 9b01         	ldr	r3, [sp, #0x4]
  398e86: 4618         	mov	r0, r3
  398e88: b003         	add	sp, #0xc
  398e8a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x398e8d); words below are literal-pool data ---
  398e8e: bf00         	nop
  398e90: 9c38         	ldr	r4, [sp, #0xe0]
  398e92: 0059         	lsls	r1, r3, #0x1
  398e94: dd28         	ble	0x398ee8 <LobbyOptionsLayer::onDone(cocos2d::CCObject*)+0x34> @ imm = #0x50
  398e96: ffff b500    	<unknown>

// ==== LobbyOptionsLayer::~LobbyOptionsLayer
//      file offset 0x398e98 (= ELF address; Ghidra 0x3a8e98), 28 bytes, Thumb-2
  398e98: b500         	push	{lr}
  398e9a: b083         	sub	sp, #0xc
  398e9c: 9001         	str	r0, [sp, #0x4]
  398e9e: 9801         	ldr	r0, [sp, #0x4]
  398ea0: f7ff ff92    	bl	0x398dc8 <LobbyOptionsLayer::~LobbyOptionsLayer()> @ imm = #-0xdc
  398ea4: 9801         	ldr	r0, [sp, #0x4]
  398ea6: f3ef f8fd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ef1fa
  398eaa: 9b01         	ldr	r3, [sp, #0x4]
  398eac: 4618         	mov	r0, r3
  398eae: b003         	add	sp, #0xc
  398eb0: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyOptionsLayer::onDone
//      file offset 0x398eb4 (= ELF address; Ghidra 0x3a8eb4), 64 bytes, Thumb-2
  398eb4: b500         	push	{lr}
  398eb6: b083         	sub	sp, #0xc
  398eb8: 9001         	str	r0, [sp, #0x4]
  398eba: 9100         	str	r1, [sp]
  398ebc: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x398ee8 <LobbyOptionsLayer::onDone(cocos2d::CCObject*)+0x34>
  398ebe: 447a         	add	r2, pc
  398ec0: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x398eec <LobbyOptionsLayer::onDone(cocos2d::CCObject*)+0x38>
  398ec2: 58d3         	ldr	r3, [r2, r3]
  398ec4: 681b         	ldr	r3, [r3]
  398ec6: 4618         	mov	r0, r3
  398ec8: 210d         	movs	r1, #0xd
  398eca: f05e ff79    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5eef2
  398ece: f247 fbef    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2477de
  398ed2: 4603         	mov	r3, r0
  398ed4: 4618         	mov	r0, r3
  398ed6: 4b06         	ldr	r3, [pc, #0x18]         @ 0x398ef0 <LobbyOptionsLayer::onDone(cocos2d::CCObject*)+0x3c>
  398ed8: 447b         	add	r3, pc
  398eda: 4619         	mov	r1, r3
  398edc: 2200         	movs	r2, #0x0
  398ede: f247 fe25    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x247c4a
  398ee2: b003         	add	sp, #0xc
  398ee4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x398ee7); words below are literal-pool data ---
  398ee8: 9b4a         	ldr	r3, [sp, #0x128]
  398eea: 0059         	lsls	r1, r3, #0x1
  398eec: d730         	bvc	0x398f50 <LobbyOptionsLayer::updateChatLabel(int)+0x5c> @ imm = #0x60
  398eee: ffff 8fa0    	<unknown>
  398ef2: 0043         	lsls	r3, r0, #0x1

// ==== LobbyOptionsLayer::updateChatLabel
//      file offset 0x398ef4 (= ELF address; Ghidra 0x3a8ef4), 140 bytes, Thumb-2
  398ef4: b500         	push	{lr}
  398ef6: b083         	sub	sp, #0xc
  398ef8: 9001         	str	r0, [sp, #0x4]
  398efa: 9100         	str	r1, [sp]
  398efc: 9b00         	ldr	r3, [sp]
  398efe: 2b01         	cmp	r3, #0x1
  398f00: d004         	beq	0x398f0c <LobbyOptionsLayer::updateChatLabel(int)+0x18> @ imm = #0x8
  398f02: 2b02         	cmp	r3, #0x2
  398f04: d012         	beq	0x398f2c <LobbyOptionsLayer::updateChatLabel(int)+0x38> @ imm = #0x24
  398f06: 2b00         	cmp	r3, #0x0
  398f08: d020         	beq	0x398f4c <LobbyOptionsLayer::updateChatLabel(int)+0x58> @ imm = #0x40
  398f0a: e02f         	b	0x398f6c <LobbyOptionsLayer::updateChatLabel(int)+0x78> @ imm = #0x5e
  398f0c: 9b01         	ldr	r3, [sp, #0x4]
  398f0e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398f12: 681b         	ldr	r3, [r3]
  398f14: f503 73fc    	add.w	r3, r3, #0x1f8
  398f18: 681b         	ldr	r3, [r3]
  398f1a: 9a01         	ldr	r2, [sp, #0x4]
  398f1c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  398f20: 4610         	mov	r0, r2
  398f22: 4a14         	ldr	r2, [pc, #0x50]         @ 0x398f74 <LobbyOptionsLayer::updateChatLabel(int)+0x80>
  398f24: 447a         	add	r2, pc
  398f26: 4611         	mov	r1, r2
  398f28: 4798         	blx	r3
  398f2a: e01f         	b	0x398f6c <LobbyOptionsLayer::updateChatLabel(int)+0x78> @ imm = #0x3e
  398f2c: 9b01         	ldr	r3, [sp, #0x4]
  398f2e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398f32: 681b         	ldr	r3, [r3]
  398f34: f503 73fc    	add.w	r3, r3, #0x1f8
  398f38: 681b         	ldr	r3, [r3]
  398f3a: 9a01         	ldr	r2, [sp, #0x4]
  398f3c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  398f40: 4610         	mov	r0, r2
  398f42: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x398f78 <LobbyOptionsLayer::updateChatLabel(int)+0x84>
  398f44: 447a         	add	r2, pc
  398f46: 4611         	mov	r1, r2
  398f48: 4798         	blx	r3
  398f4a: e00f         	b	0x398f6c <LobbyOptionsLayer::updateChatLabel(int)+0x78> @ imm = #0x1e
  398f4c: 9b01         	ldr	r3, [sp, #0x4]
  398f4e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  398f52: 681b         	ldr	r3, [r3]
  398f54: f503 73fc    	add.w	r3, r3, #0x1f8
  398f58: 681b         	ldr	r3, [r3]
  398f5a: 9a01         	ldr	r2, [sp, #0x4]
  398f5c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  398f60: 4610         	mov	r0, r2
  398f62: 4a06         	ldr	r2, [pc, #0x18]         @ 0x398f7c <LobbyOptionsLayer::updateChatLabel(int)+0x88>
  398f64: 447a         	add	r2, pc
  398f66: 4611         	mov	r1, r2
  398f68: 4798         	blx	r3
  398f6a: bf00         	nop
  398f6c: b003         	add	sp, #0xc
  398f6e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x398f71); words below are literal-pool data ---
  398f72: bf00         	nop
  398f74: 8f64         	ldrh	r4, [r4, #0x3a]
  398f76: 0043         	lsls	r3, r0, #0x1
  398f78: 8f50         	ldrh	r0, [r2, #0x3a]
  398f7a: 0043         	lsls	r3, r0, #0x1
  398f7c: 8ef0         	ldrh	r0, [r6, #0x36]
  398f7e: 0043         	lsls	r3, r0, #0x1

// ==== LobbyOptionsLayer::onChat
//      file offset 0x398f80 (= ELF address; Ghidra 0x3a8f80), 120 bytes, Thumb-2
  398f80: b510         	push	{r4, lr}
  398f82: b082         	sub	sp, #0x8
  398f84: 9001         	str	r0, [sp, #0x4]
  398f86: 9100         	str	r1, [sp]
  398f88: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x398fe8 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x68>
  398f8a: 447c         	add	r4, pc
  398f8c: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x398fec <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x6c>
  398f8e: 58e3         	ldr	r3, [r4, r3]
  398f90: 681b         	ldr	r3, [r3]
  398f92: 4618         	mov	r0, r3
  398f94: 210d         	movs	r1, #0xd
  398f96: f05e ff13    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5ee26
  398f9a: 4b15         	ldr	r3, [pc, #0x54]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398f9c: 58e3         	ldr	r3, [r4, r3]
  398f9e: 681b         	ldr	r3, [r3]
  398fa0: 1c5a         	adds	r2, r3, #0x1
  398fa2: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398fa4: 58e3         	ldr	r3, [r4, r3]
  398fa6: 601a         	str	r2, [r3]
  398fa8: 4b11         	ldr	r3, [pc, #0x44]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398faa: 58e3         	ldr	r3, [r4, r3]
  398fac: 681b         	ldr	r3, [r3]
  398fae: 2b02         	cmp	r3, #0x2
  398fb0: dd03         	ble	0x398fba <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x3a> @ imm = #0x6
  398fb2: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398fb4: 58e3         	ldr	r3, [r4, r3]
  398fb6: 2200         	movs	r2, #0x0
  398fb8: 601a         	str	r2, [r3]
  398fba: f249 fb37    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x24966e
  398fbe: 4602         	mov	r2, r0
  398fc0: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398fc2: 58e3         	ldr	r3, [r4, r3]
  398fc4: 681b         	ldr	r3, [r3]
  398fc6: 4610         	mov	r0, r2
  398fc8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x398ff4 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x74>
  398fca: 447a         	add	r2, pc
  398fcc: 4611         	mov	r1, r2
  398fce: 461a         	mov	r2, r3
  398fd0: f249 fae6    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2495cc
  398fd4: 4b06         	ldr	r3, [pc, #0x18]         @ 0x398ff0 <LobbyOptionsLayer::onChat(cocos2d::CCObject*)+0x70>
  398fd6: 58e3         	ldr	r3, [r4, r3]
  398fd8: 681b         	ldr	r3, [r3]
  398fda: 9801         	ldr	r0, [sp, #0x4]
  398fdc: 4619         	mov	r1, r3
  398fde: f7ff ff89    	bl	0x398ef4 <LobbyOptionsLayer::updateChatLabel(int)> @ imm = #-0xee
  398fe2: b002         	add	sp, #0x8
  398fe4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x398fe5); words below are literal-pool data ---
  398fe6: bf00         	nop
  398fe8: 9a7e         	ldr	r2, [sp, #0x1f8]
  398fea: 0059         	lsls	r1, r3, #0x1
  398fec: d730         	bvc	0x399050 <LobbyOptionsLayer::updateTeamColor()+0x18> @ imm = #0x60
  398fee: ffff d790    	vqshl.u64	d29, d0, #0x3f
  398ff2: ffff 8ed6    	<unknown>
  398ff6: 0043         	lsls	r3, r0, #0x1

// ==== LobbyOptionsLayer::onStats
//      file offset 0x398ff8 (= ELF address; Ghidra 0x3a8ff8), 64 bytes, Thumb-2
  398ff8: b500         	push	{lr}
  398ffa: b083         	sub	sp, #0xc
  398ffc: 9001         	str	r0, [sp, #0x4]
  398ffe: 9100         	str	r1, [sp]
  399000: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x39902c <LobbyOptionsLayer::onStats(cocos2d::CCObject*)+0x34>
  399002: 447a         	add	r2, pc
  399004: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x399030 <LobbyOptionsLayer::onStats(cocos2d::CCObject*)+0x38>
  399006: 58d3         	ldr	r3, [r2, r3]
  399008: 681b         	ldr	r3, [r3]
  39900a: 4618         	mov	r0, r3
  39900c: 210d         	movs	r1, #0xd
  39900e: f05e fed7    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5edae
  399012: f247 fb4d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x24769a
  399016: 4603         	mov	r3, r0
  399018: 4618         	mov	r0, r3
  39901a: 4b06         	ldr	r3, [pc, #0x18]         @ 0x399034 <LobbyOptionsLayer::onStats(cocos2d::CCObject*)+0x3c>
  39901c: 447b         	add	r3, pc
  39901e: 4619         	mov	r1, r3
  399020: 2200         	movs	r2, #0x0
  399022: f247 fd83    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x247b06
  399026: b003         	add	sp, #0xc
  399028: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39902b); words below are literal-pool data ---
  39902c: 9a06         	ldr	r2, [sp, #0x18]
  39902e: 0059         	lsls	r1, r3, #0x1
  399030: d730         	bvc	0x399094 <LobbyOptionsLayer::updateTeamColor()+0x5c> @ imm = #0x60
  399032: ffff 8e90    	<unknown>
  399036: 0043         	lsls	r3, r0, #0x1

// ==== LobbyOptionsLayer::updateTeamColor
//      file offset 0x399038 (= ELF address; Ghidra 0x3a9038), 112 bytes, Thumb-2
  399038: b530         	push	{r4, r5, lr}
  39903a: b083         	sub	sp, #0xc
  39903c: 9001         	str	r0, [sp, #0x4]
  39903e: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x39909c <LobbyOptionsLayer::updateTeamColor()+0x64>
  399040: 447c         	add	r4, pc
  399042: 9b01         	ldr	r3, [sp, #0x4]
  399044: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  399048: 681b         	ldr	r3, [r3]
  39904a: 3390         	adds	r3, #0x90
  39904c: 681b         	ldr	r3, [r3]
  39904e: 9a01         	ldr	r2, [sp, #0x4]
  399050: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  399054: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3990a0 <LobbyOptionsLayer::updateTeamColor()+0x68>
  399056: 58a2         	ldr	r2, [r4, r2]
  399058: 6812         	ldr	r2, [r2]
  39905a: 2a00         	cmp	r2, #0x0
  39905c: bf0c         	ite	eq
  39905e: 2200         	moveq	r2, #0x0
  399060: 2201         	movne	r2, #0x1
  399062: b2d2         	uxtb	r2, r2
  399064: 4608         	mov	r0, r1
  399066: 4611         	mov	r1, r2
  399068: 4798         	blx	r3
  39906a: 9b01         	ldr	r3, [sp, #0x4]
  39906c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  399070: 681b         	ldr	r3, [r3]
  399072: f503 73de    	add.w	r3, r3, #0x1bc
  399076: 681d         	ldr	r5, [r3]
  399078: 9b01         	ldr	r3, [sp, #0x4]
  39907a: f8d3 1110    	ldr.w	r1, [r3, #0x110]
  39907e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3990a0 <LobbyOptionsLayer::updateTeamColor()+0x68>
  399080: 58e3         	ldr	r3, [r4, r3]
  399082: 681a         	ldr	r2, [r3]
  399084: 4613         	mov	r3, r2
  399086: 005b         	lsls	r3, r3, #0x1
  399088: 4413         	add	r3, r2
  39908a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3990a4 <LobbyOptionsLayer::updateTeamColor()+0x6c>
  39908c: 58a2         	ldr	r2, [r4, r2]
  39908e: 4413         	add	r3, r2
  399090: 4608         	mov	r0, r1
  399092: 4619         	mov	r1, r3
  399094: 47a8         	blx	r5
  399096: b003         	add	sp, #0xc
  399098: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x399099); words below are literal-pool data ---
  39909a: bf00         	nop
  39909c: 99c8         	ldr	r1, [sp, #0x320]
  39909e: 0059         	lsls	r1, r3, #0x1
  3990a0: d7d0         	bvc	0x399044 <LobbyOptionsLayer::updateTeamColor()+0xc> @ imm = #-0x60
  3990a2: ffff d7b8    	vqshl.u64	d29, d24, #0x3f
  3990a6: ffff b500    	<unknown>

// ==== LobbyOptionsLayer::onPrevTeam
//      file offset 0x3990a8 (= ELF address; Ghidra 0x3a90a8), 92 bytes, Thumb-2
  3990a8: b500         	push	{lr}
  3990aa: b083         	sub	sp, #0xc
  3990ac: 9001         	str	r0, [sp, #0x4]
  3990ae: 9100         	str	r1, [sp]
  3990b0: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3990f4 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x4c>
  3990b2: 447b         	add	r3, pc
  3990b4: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3990f8 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x50>
  3990b6: 589a         	ldr	r2, [r3, r2]
  3990b8: 6812         	ldr	r2, [r2]
  3990ba: 1e51         	subs	r1, r2, #0x1
  3990bc: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3990f8 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x50>
  3990be: 589a         	ldr	r2, [r3, r2]
  3990c0: 6011         	str	r1, [r2]
  3990c2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3990f8 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x50>
  3990c4: 589a         	ldr	r2, [r3, r2]
  3990c6: 6812         	ldr	r2, [r2]
  3990c8: 2a00         	cmp	r2, #0x0
  3990ca: da06         	bge	0x3990da <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x32> @ imm = #0xc
  3990cc: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3990fc <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x54>
  3990ce: 589a         	ldr	r2, [r3, r2]
  3990d0: 6812         	ldr	r2, [r2]
  3990d2: 1e51         	subs	r1, r2, #0x1
  3990d4: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3990f8 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x50>
  3990d6: 589a         	ldr	r2, [r3, r2]
  3990d8: 6011         	str	r1, [r2]
  3990da: 4a09         	ldr	r2, [pc, #0x24]         @ 0x399100 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x58>
  3990dc: 589b         	ldr	r3, [r3, r2]
  3990de: 681b         	ldr	r3, [r3]
  3990e0: 4618         	mov	r0, r3
  3990e2: 210d         	movs	r1, #0xd
  3990e4: f05e fe6c    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5ecd8
  3990e8: 9801         	ldr	r0, [sp, #0x4]
  3990ea: f7ff ffa5    	bl	0x399038 <LobbyOptionsLayer::updateTeamColor()> @ imm = #-0xb6
  3990ee: b003         	add	sp, #0xc
  3990f0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3990f3); words below are literal-pool data ---
  3990f4: 9956         	ldr	r1, [sp, #0x158]
  3990f6: 0059         	lsls	r1, r3, #0x1
  3990f8: d7d0         	bvc	0x39909c <LobbyOptionsLayer::updateTeamColor()+0x64> @ imm = #-0x60
  3990fa: ffff dd40    	<unknown>
  3990fe: ffff d730    	vqshl.u32	d29, d16, #0x1f
  399102: ffff b500    	<unknown>

// ==== LobbyOptionsLayer::onNextTeam
//      file offset 0x399104 (= ELF address; Ghidra 0x3a9104), 92 bytes, Thumb-2
  399104: b500         	push	{lr}
  399106: b083         	sub	sp, #0xc
  399108: 9001         	str	r0, [sp, #0x4]
  39910a: 9100         	str	r1, [sp]
  39910c: 4b10         	ldr	r3, [pc, #0x40]         @ 0x399150 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x4c>
  39910e: 447b         	add	r3, pc
  399110: 4a10         	ldr	r2, [pc, #0x40]         @ 0x399154 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x50>
  399112: 589a         	ldr	r2, [r3, r2]
  399114: 6812         	ldr	r2, [r2]
  399116: 1c51         	adds	r1, r2, #0x1
  399118: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x399154 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x50>
  39911a: 589a         	ldr	r2, [r3, r2]
  39911c: 6011         	str	r1, [r2]
  39911e: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x399154 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x50>
  399120: 589a         	ldr	r2, [r3, r2]
  399122: 6811         	ldr	r1, [r2]
  399124: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x399158 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x54>
  399126: 589a         	ldr	r2, [r3, r2]
  399128: 6812         	ldr	r2, [r2]
  39912a: 4291         	cmp	r1, r2
  39912c: db03         	blt	0x399136 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x32> @ imm = #0x6
  39912e: 4a09         	ldr	r2, [pc, #0x24]         @ 0x399154 <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x50>
  399130: 589a         	ldr	r2, [r3, r2]
  399132: 2100         	movs	r1, #0x0
  399134: 6011         	str	r1, [r2]
  399136: 4a09         	ldr	r2, [pc, #0x24]         @ 0x39915c <LobbyOptionsLayer::onNextTeam(cocos2d::CCObject*)+0x58>
  399138: 589b         	ldr	r3, [r3, r2]
  39913a: 681b         	ldr	r3, [r3]
  39913c: 4618         	mov	r0, r3
  39913e: 210e         	movs	r1, #0xe
  399140: f05e fe3e    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5ec7c
  399144: 9801         	ldr	r0, [sp, #0x4]
  399146: f7ff ff77    	bl	0x399038 <LobbyOptionsLayer::updateTeamColor()> @ imm = #-0x112
  39914a: b003         	add	sp, #0xc
  39914c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39914f); words below are literal-pool data ---
  399150: 98fa         	ldr	r0, [sp, #0x3e8]
  399152: 0059         	lsls	r1, r3, #0x1
  399154: d7d0         	bvc	0x3990f8 <LobbyOptionsLayer::onPrevTeam(cocos2d::CCObject*)+0x50> @ imm = #-0x60
  399156: ffff dd40    	<unknown>
  39915a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  39915e: ffff b510    	vsli.32	d27, d0, #0x1f
