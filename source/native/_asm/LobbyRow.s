// LobbyRow: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LobbyRow.cpp

// ==== LobbyRow::create
//      file offset 0x397ed4 (= ELF address; Ghidra 0x3a7ed4), 112 bytes, Thumb-2
  397ed4: b510         	push	{r4, lr}
  397ed6: b082         	sub	sp, #0x8
  397ed8: f44f 708e    	mov.w	r0, #0x11c
  397edc: f3ef fd42    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3efa84
  397ee0: 4603         	mov	r3, r0
  397ee2: 461c         	mov	r4, r3
  397ee4: 4620         	mov	r0, r4
  397ee6: f001 f93b    	bl	0x399160 <LobbyRow::LobbyRow()> @ imm = #0x1276
  397eea: 9401         	str	r4, [sp, #0x4]
  397eec: 9b01         	ldr	r3, [sp, #0x4]
  397eee: 2b00         	cmp	r3, #0x0
  397ef0: d00a         	beq	0x397f08 <LobbyRow::create()+0x34> @ imm = #0x14
  397ef2: 9b01         	ldr	r3, [sp, #0x4]
  397ef4: 681b         	ldr	r3, [r3]
  397ef6: 3318         	adds	r3, #0x18
  397ef8: 681b         	ldr	r3, [r3]
  397efa: 9801         	ldr	r0, [sp, #0x4]
  397efc: 4798         	blx	r3
  397efe: 4603         	mov	r3, r0
  397f00: 2b00         	cmp	r3, #0x0
  397f02: d001         	beq	0x397f08 <LobbyRow::create()+0x34> @ imm = #0x2
  397f04: 2301         	movs	r3, #0x1
  397f06: e000         	b	0x397f0a <LobbyRow::create()+0x36> @ imm = #0x0
  397f08: 2300         	movs	r3, #0x0
  397f0a: 2b00         	cmp	r3, #0x0
  397f0c: d005         	beq	0x397f1a <LobbyRow::create()+0x46> @ imm = #0xa
  397f0e: 9b01         	ldr	r3, [sp, #0x4]
  397f10: 4618         	mov	r0, r3
  397f12: f1ff fff3    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1fffe6
  397f16: 9b01         	ldr	r3, [sp, #0x4]
  397f18: e011         	b	0x397f3e <LobbyRow::create()+0x6a> @ imm = #0x22
  397f1a: 9b01         	ldr	r3, [sp, #0x4]
  397f1c: 2b00         	cmp	r3, #0x0
  397f1e: d005         	beq	0x397f2c <LobbyRow::create()+0x58> @ imm = #0xa
  397f20: 9b01         	ldr	r3, [sp, #0x4]
  397f22: 681b         	ldr	r3, [r3]
  397f24: 3308         	adds	r3, #0x8
  397f26: 681b         	ldr	r3, [r3]
  397f28: 9801         	ldr	r0, [sp, #0x4]
  397f2a: 4798         	blx	r3
  397f2c: 2300         	movs	r3, #0x0
  397f2e: 9301         	str	r3, [sp, #0x4]
  397f30: 2300         	movs	r3, #0x0
  397f32: e004         	b	0x397f3e <LobbyRow::create()+0x6a> @ imm = #0x8
  397f34: 4620         	mov	r0, r4
  397f36: f3f0 f8b5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f016a
  397f3a: f3f0 f8b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f016e
  397f3e: 4618         	mov	r0, r3
  397f40: b002         	add	sp, #0x8
  397f42: bd10         	pop	{r4, pc}

// ==== LobbyRow::LobbyRow
//      file offset 0x399160 (= ELF address; Ghidra 0x3a9160), 92 bytes, Thumb-2
  399160: b510         	push	{r4, lr}
  399162: b082         	sub	sp, #0x8
  399164: 9001         	str	r0, [sp, #0x4]
  399166: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x3991b4 <LobbyRow::LobbyRow()+0x54>
  399168: 447c         	add	r4, pc
  39916a: 9b01         	ldr	r3, [sp, #0x4]
  39916c: 4618         	mov	r0, r3
  39916e: f1f6 fa63    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1f64c6
  399172: 9b01         	ldr	r3, [sp, #0x4]
  399174: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3991b8 <LobbyRow::LobbyRow()+0x58>
  399176: 58a2         	ldr	r2, [r4, r2]
  399178: 3208         	adds	r2, #0x8
  39917a: 601a         	str	r2, [r3]
  39917c: 9b01         	ldr	r3, [sp, #0x4]
  39917e: 33f4         	adds	r3, #0xf4
  399180: 4618         	mov	r0, r3
  399182: f01c f015    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x41c02a
  399186: 9b01         	ldr	r3, [sp, #0x4]
  399188: f503 7382    	add.w	r3, r3, #0x104
  39918c: 4618         	mov	r0, r3
  39918e: f1f9 fda1    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1f9b42
  399192: 9b01         	ldr	r3, [sp, #0x4]
  399194: e00b         	b	0x3991ae <LobbyRow::LobbyRow()+0x4e> @ imm = #0x16
  399196: 9b01         	ldr	r3, [sp, #0x4]
  399198: 33f4         	adds	r3, #0xf4
  39919a: 4618         	mov	r0, r3
  39919c: f01c f3ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41c774
  3991a0: e7ff         	b	0x3991a2 <LobbyRow::LobbyRow()+0x42> @ imm = #-0x2
  3991a2: 9b01         	ldr	r3, [sp, #0x4]
  3991a4: 4618         	mov	r0, r3
  3991a6: f1f6 fb4d    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1f669a
  3991aa: f3ee ff7f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eeefe
  3991ae: 4618         	mov	r0, r3
  3991b0: b002         	add	sp, #0x8
  3991b2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3991b3); words below are literal-pool data ---
  3991b4: 98a0         	ldr	r0, [sp, #0x280]
  3991b6: 0059         	lsls	r1, r3, #0x1
  3991b8: dd44         	ble	0x399244 <LobbyRow::init()+0x88> @ imm = #0x88
  3991ba: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LobbyRow::init
//      file offset 0x3991bc (= ELF address; Ghidra 0x3a91bc), 1404 bytes, Thumb-2
  3991bc: b530         	push	{r4, r5, lr}
  3991be: b08d         	sub	sp, #0x34
  3991c0: 9003         	str	r0, [sp, #0xc]
  3991c2: 9b03         	ldr	r3, [sp, #0xc]
  3991c4: 4618         	mov	r0, r3
  3991c6: f1f6 fc41    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1f6882
  3991ca: 4603         	mov	r3, r0
  3991cc: f88d 3017    	strb.w	r3, [sp, #0x17]
  3991d0: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3991d4: f083 0301    	eor	r3, r3, #0x1
  3991d8: b2db         	uxtb	r3, r3
  3991da: 2b00         	cmp	r3, #0x0
  3991dc: d001         	beq	0x3991e2 <LobbyRow::init()+0x26> @ imm = #0x2
  3991de: 2300         	movs	r3, #0x0
  3991e0: e291         	b	0x399706 <LobbyRow::init()+0x54a> @ imm = #0x522
  3991e2: 9b03         	ldr	r3, [sp, #0xc]
  3991e4: 33f4         	adds	r3, #0xf4
  3991e6: 4618         	mov	r0, r3
  3991e8: f8df 3520    	ldr.w	r3, [pc, #0x520]        @ 0x39970c <LobbyRow::init()+0x550>
  3991ec: 447b         	add	r3, pc
  3991ee: 4619         	mov	r1, r3
  3991f0: f01c f63e    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x41cc7c
  3991f4: 9b03         	ldr	r3, [sp, #0xc]
  3991f6: 2201         	movs	r2, #0x1
  3991f8: f8c3 2118    	str.w	r2, [r3, #0x118]
  3991fc: ab08         	add	r3, sp, #0x20
  3991fe: f04f 0200    	mov.w	r2, #0x0
  399202: 9200         	str	r2, [sp]
  399204: 4618         	mov	r0, r3
  399206: f04f 0100    	mov.w	r1, #0x0
  39920a: f04f 0200    	mov.w	r2, #0x0
  39920e: f04f 0300    	mov.w	r3, #0x0
  399212: f1fa f865    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x1fa0ca
  399216: ab08         	add	r3, sp, #0x20
  399218: f8df 24f4    	ldr.w	r2, [pc, #0x4f4]        @ 0x399710 <LobbyRow::init()+0x554>
  39921c: 447a         	add	r2, pc
  39921e: 4610         	mov	r0, r2
  399220: 4619         	mov	r1, r3
  399222: f23e ffed    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x23efda
  399226: 4602         	mov	r2, r0
  399228: 9b03         	ldr	r3, [sp, #0xc]
  39922a: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  39922e: 9b03         	ldr	r3, [sp, #0xc]
  399230: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399234: 4618         	mov	r0, r3
  399236: f1fe fe57    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fecae
  39923a: 9b03         	ldr	r3, [sp, #0xc]
  39923c: f04f 32ff    	mov.w	r2, #0xffffffff
  399240: f8c3 2110    	str.w	r2, [r3, #0x110]
  399244: 9b03         	ldr	r3, [sp, #0xc]
  399246: 2200         	movs	r2, #0x0
  399248: f8c3 2114    	str.w	r2, [r3, #0x114]
  39924c: f8df 34c4    	ldr.w	r3, [pc, #0x4c4]        @ 0x399714 <LobbyRow::init()+0x558>
  399250: 447b         	add	r3, pc
  399252: 4618         	mov	r0, r3
  399254: f23f f856    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23f0ac
  399258: 4602         	mov	r2, r0
  39925a: 9b03         	ldr	r3, [sp, #0xc]
  39925c: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  399260: 9b03         	ldr	r3, [sp, #0xc]
  399262: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399266: 4618         	mov	r0, r3
  399268: f1fe fe3e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fec7c
  39926c: 9b03         	ldr	r3, [sp, #0xc]
  39926e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399272: 681b         	ldr	r3, [r3]
  399274: 334c         	adds	r3, #0x4c
  399276: 681c         	ldr	r4, [r3]
  399278: 9b03         	ldr	r3, [sp, #0xc]
  39927a: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  39927e: ab08         	add	r3, sp, #0x20
  399280: 4618         	mov	r0, r3
  399282: f04f 0100    	mov.w	r1, #0x0
  399286: f2cc 1140    	movt	r1, #0xc140
  39928a: f04f 0200    	mov.w	r2, #0x0
  39928e: f2cc 1210    	movt	r2, #0xc110
  399292: f1f9 fd2d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f9a5a
  399296: ab08         	add	r3, sp, #0x20
  399298: 4628         	mov	r0, r5
  39929a: 4619         	mov	r1, r3
  39929c: 47a0         	blx	r4
  39929e: ab08         	add	r3, sp, #0x20
  3992a0: f04f 0200    	mov.w	r2, #0x0
  3992a4: 9200         	str	r2, [sp]
  3992a6: 4618         	mov	r0, r3
  3992a8: f04f 0100    	mov.w	r1, #0x0
  3992ac: f04f 0200    	mov.w	r2, #0x0
  3992b0: f04f 0300    	mov.w	r3, #0x0
  3992b4: f1fa f814    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x1fa028
  3992b8: ab08         	add	r3, sp, #0x20
  3992ba: f8df 245c    	ldr.w	r2, [pc, #0x45c]        @ 0x399718 <LobbyRow::init()+0x55c>
  3992be: 447a         	add	r2, pc
  3992c0: 4610         	mov	r0, r2
  3992c2: 4619         	mov	r1, r3
  3992c4: f23e ff9c    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x23ef38
  3992c8: 4602         	mov	r2, r0
  3992ca: 9b03         	ldr	r3, [sp, #0xc]
  3992cc: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3992d0: 9b03         	ldr	r3, [sp, #0xc]
  3992d2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3992d6: 4618         	mov	r0, r3
  3992d8: f1fe fe06    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fec0c
  3992dc: 9b03         	ldr	r3, [sp, #0xc]
  3992de: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3992e2: 681b         	ldr	r3, [r3]
  3992e4: 334c         	adds	r3, #0x4c
  3992e6: 681c         	ldr	r4, [r3]
  3992e8: 9b03         	ldr	r3, [sp, #0xc]
  3992ea: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3992ee: ab08         	add	r3, sp, #0x20
  3992f0: 4618         	mov	r0, r3
  3992f2: f04f 0100    	mov.w	r1, #0x0
  3992f6: f2cc 21f4    	movt	r1, #0xc2f4
  3992fa: f04f 0200    	mov.w	r2, #0x0
  3992fe: f2cc 02e0    	movt	r2, #0xc0e0
  399302: f1f9 fcf5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f99ea
  399306: ab08         	add	r3, sp, #0x20
  399308: 4628         	mov	r0, r5
  39930a: 4619         	mov	r1, r3
  39930c: 47a0         	blx	r4
  39930e: 9b03         	ldr	r3, [sp, #0xc]
  399310: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  399314: 681b         	ldr	r3, [r3]
  399316: 3340         	adds	r3, #0x40
  399318: 681b         	ldr	r3, [r3]
  39931a: 9a03         	ldr	r2, [sp, #0xc]
  39931c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  399320: 4610         	mov	r0, r2
  399322: f04f 517d    	mov.w	r1, #0x3f400000
  399326: 4798         	blx	r3
  399328: 2320         	movs	r3, #0x20
  39932a: 9300         	str	r3, [sp]
  39932c: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x39971c <LobbyRow::init()+0x560>
  39932e: 447b         	add	r3, pc
  399330: 4618         	mov	r0, r3
  399332: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x399720 <LobbyRow::init()+0x564>
  399334: 447b         	add	r3, pc
  399336: 4619         	mov	r1, r3
  399338: 2220         	movs	r2, #0x20
  39933a: 2320         	movs	r3, #0x20
  39933c: f20c f81c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20c038
  399340: 4602         	mov	r2, r0
  399342: 9b03         	ldr	r3, [sp, #0xc]
  399344: f8c3 20ec    	str.w	r2, [r3, #0xec]
  399348: 9b03         	ldr	r3, [sp, #0xc]
  39934a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  39934e: 4618         	mov	r0, r3
  399350: f1fe fdca    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1feb94
  399354: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x399724 <LobbyRow::init()+0x568>
  399356: 447b         	add	r3, pc
  399358: 4618         	mov	r0, r3
  39935a: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x399728 <LobbyRow::init()+0x56c>
  39935c: 447b         	add	r3, pc
  39935e: 4619         	mov	r1, r3
  399360: f04f 0200    	mov.w	r2, #0x0
  399364: f2c4 12f0    	movt	r2, #0x41f0
  399368: f212 fe5a    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x212cb4
  39936c: 4602         	mov	r2, r0
  39936e: 9b03         	ldr	r3, [sp, #0xc]
  399370: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  399374: 9b03         	ldr	r3, [sp, #0xc]
  399376: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  39937a: 4618         	mov	r0, r3
  39937c: f1fe fdb4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1feb68
  399380: 9b03         	ldr	r3, [sp, #0xc]
  399382: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  399386: 681b         	ldr	r3, [r3]
  399388: 3340         	adds	r3, #0x40
  39938a: 681b         	ldr	r3, [r3]
  39938c: 9a03         	ldr	r2, [sp, #0xc]
  39938e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  399392: 4610         	mov	r0, r2
  399394: f649 119a    	movw	r1, #0x999a
  399398: f6c3 7119    	movt	r1, #0x3f19
  39939c: 4798         	blx	r3
  39939e: 9b03         	ldr	r3, [sp, #0xc]
  3993a0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3993a4: 681b         	ldr	r3, [r3]
  3993a6: 334c         	adds	r3, #0x4c
  3993a8: 681c         	ldr	r4, [r3]
  3993aa: 9b03         	ldr	r3, [sp, #0xc]
  3993ac: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3993b0: 461d         	mov	r5, r3
  3993b2: ab08         	add	r3, sp, #0x20
  3993b4: 4618         	mov	r0, r3
  3993b6: f04f 0100    	mov.w	r1, #0x0
  3993ba: f2cc 2140    	movt	r1, #0xc240
  3993be: f04f 0200    	mov.w	r2, #0x0
  3993c2: f1f9 fc95    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f992a
  3993c6: ab08         	add	r3, sp, #0x20
  3993c8: 4628         	mov	r0, r5
  3993ca: 4619         	mov	r1, r3
  3993cc: 47a0         	blx	r4
  3993ce: 9b03         	ldr	r3, [sp, #0xc]
  3993d0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3993d4: 681b         	ldr	r3, [r3]
  3993d6: 337c         	adds	r3, #0x7c
  3993d8: 681c         	ldr	r4, [r3]
  3993da: 9b03         	ldr	r3, [sp, #0xc]
  3993dc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3993e0: 461d         	mov	r5, r3
  3993e2: ab08         	add	r3, sp, #0x20
  3993e4: 4618         	mov	r0, r3
  3993e6: f04f 0100    	mov.w	r1, #0x0
  3993ea: f04f 527c    	mov.w	r2, #0x3f000000
  3993ee: f1f9 fc7f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f98fe
  3993f2: ab08         	add	r3, sp, #0x20
  3993f4: 4628         	mov	r0, r5
  3993f6: 4619         	mov	r1, r3
  3993f8: 47a0         	blx	r4
  3993fa: 9b03         	ldr	r3, [sp, #0xc]
  3993fc: f503 7482    	add.w	r4, r3, #0x104
  399400: 9b03         	ldr	r3, [sp, #0xc]
  399402: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  399406: 681b         	ldr	r3, [r3]
  399408: 3350         	adds	r3, #0x50
  39940a: 681b         	ldr	r3, [r3]
  39940c: 9a03         	ldr	r2, [sp, #0xc]
  39940e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  399412: 4610         	mov	r0, r2
  399414: 4798         	blx	r3
  399416: 4605         	mov	r5, r0
  399418: ab06         	add	r3, sp, #0x18
  39941a: 4618         	mov	r0, r3
  39941c: f04f 0100    	mov.w	r1, #0x0
  399420: f2cc 11b0    	movt	r1, #0xc1b0
  399424: f04f 0200    	mov.w	r2, #0x0
  399428: f2cc 0280    	movt	r2, #0xc080
  39942c: f1f9 fc60    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f98c0
  399430: aa08         	add	r2, sp, #0x20
  399432: ab06         	add	r3, sp, #0x18
  399434: 4610         	mov	r0, r2
  399436: 4629         	mov	r1, r5
  399438: 461a         	mov	r2, r3
  39943a: f7fd fe0d    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x23e6
  39943e: ab08         	add	r3, sp, #0x20
  399440: 4620         	mov	r0, r4
  399442: 4619         	mov	r1, r3
  399444: f1f9 fc82    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1f9904
  399448: 9b03         	ldr	r3, [sp, #0xc]
  39944a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  39944e: 4618         	mov	r0, r3
  399450: 2118         	movs	r1, #0x18
  399452: f20c fc97    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20c92e
  399456: 9b03         	ldr	r3, [sp, #0xc]
  399458: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  39945c: 681b         	ldr	r3, [r3]
  39945e: 3340         	adds	r3, #0x40
  399460: 681b         	ldr	r3, [r3]
  399462: 9a03         	ldr	r2, [sp, #0xc]
  399464: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  399468: 4610         	mov	r0, r2
  39946a: f64c 41cd    	movw	r1, #0xcccd
  39946e: f6c3 61cc    	movt	r1, #0x3ecc
  399472: 4798         	blx	r3
  399474: 9b03         	ldr	r3, [sp, #0xc]
  399476: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  39947a: 681b         	ldr	r3, [r3]
  39947c: 334c         	adds	r3, #0x4c
  39947e: 681c         	ldr	r4, [r3]
  399480: 9b03         	ldr	r3, [sp, #0xc]
  399482: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399486: 461d         	mov	r5, r3
  399488: ab08         	add	r3, sp, #0x20
  39948a: 4618         	mov	r0, r3
  39948c: f04f 0100    	mov.w	r1, #0x0
  399490: f2cc 2140    	movt	r1, #0xc240
  399494: f04f 0200    	mov.w	r2, #0x0
  399498: f2cc 1270    	movt	r2, #0xc170
  39949c: f1f9 fc28    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f9850
  3994a0: ab08         	add	r3, sp, #0x20
  3994a2: 4628         	mov	r0, r5
  3994a4: 4619         	mov	r1, r3
  3994a6: 47a0         	blx	r4
  3994a8: 9b03         	ldr	r3, [sp, #0xc]
  3994aa: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3994ae: 681b         	ldr	r3, [r3]
  3994b0: 337c         	adds	r3, #0x7c
  3994b2: 681c         	ldr	r4, [r3]
  3994b4: 9b03         	ldr	r3, [sp, #0xc]
  3994b6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3994ba: 461d         	mov	r5, r3
  3994bc: ab08         	add	r3, sp, #0x20
  3994be: 4618         	mov	r0, r3
  3994c0: f04f 0100    	mov.w	r1, #0x0
  3994c4: f04f 527c    	mov.w	r2, #0x3f000000
  3994c8: f1f9 fc12    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f9824
  3994cc: ab08         	add	r3, sp, #0x20
  3994ce: 4628         	mov	r0, r5
  3994d0: 4619         	mov	r1, r3
  3994d2: 47a0         	blx	r4
  3994d4: 2320         	movs	r3, #0x20
  3994d6: 9300         	str	r3, [sp]
  3994d8: 4b94         	ldr	r3, [pc, #0x250]        @ 0x39972c <LobbyRow::init()+0x570>
  3994da: 447b         	add	r3, pc
  3994dc: 4618         	mov	r0, r3
  3994de: 4b94         	ldr	r3, [pc, #0x250]        @ 0x399730 <LobbyRow::init()+0x574>
  3994e0: 447b         	add	r3, pc
  3994e2: 4619         	mov	r1, r3
  3994e4: 2220         	movs	r2, #0x20
  3994e6: 2320         	movs	r3, #0x20
  3994e8: f20b ff46    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20be8c
  3994ec: 4602         	mov	r2, r0
  3994ee: 9b03         	ldr	r3, [sp, #0xc]
  3994f0: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3994f4: 9b03         	ldr	r3, [sp, #0xc]
  3994f6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3994fa: 4618         	mov	r0, r3
  3994fc: f1fe fcf4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fe9e8
  399500: 9b03         	ldr	r3, [sp, #0xc]
  399502: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399506: 4618         	mov	r0, r3
  399508: 2118         	movs	r1, #0x18
  39950a: f20c fc3b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20c876
  39950e: 9b03         	ldr	r3, [sp, #0xc]
  399510: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399514: 681b         	ldr	r3, [r3]
  399516: 3340         	adds	r3, #0x40
  399518: 681b         	ldr	r3, [r3]
  39951a: 9a03         	ldr	r2, [sp, #0xc]
  39951c: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  399520: 4610         	mov	r0, r2
  399522: f243 3133    	movw	r1, #0x3333
  399526: f6c3 61b3    	movt	r1, #0x3eb3
  39952a: 4798         	blx	r3
  39952c: 9b03         	ldr	r3, [sp, #0xc]
  39952e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399532: 681b         	ldr	r3, [r3]
  399534: 3338         	adds	r3, #0x38
  399536: 681b         	ldr	r3, [r3]
  399538: 9a03         	ldr	r2, [sp, #0xc]
  39953a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  39953e: 4610         	mov	r0, r2
  399540: f246 6166    	movw	r1, #0x6666
  399544: f6c3 61e6    	movt	r1, #0x3ee6
  399548: 4798         	blx	r3
  39954a: 9b03         	ldr	r3, [sp, #0xc]
  39954c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399550: 681b         	ldr	r3, [r3]
  399552: 337c         	adds	r3, #0x7c
  399554: 681c         	ldr	r4, [r3]
  399556: 9b03         	ldr	r3, [sp, #0xc]
  399558: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  39955c: 461d         	mov	r5, r3
  39955e: ab08         	add	r3, sp, #0x20
  399560: 4618         	mov	r0, r3
  399562: f04f 517c    	mov.w	r1, #0x3f000000
  399566: f04f 527c    	mov.w	r2, #0x3f000000
  39956a: f1f9 fbc1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f9782
  39956e: ab08         	add	r3, sp, #0x20
  399570: 4628         	mov	r0, r5
  399572: 4619         	mov	r1, r3
  399574: 47a0         	blx	r4
  399576: 9b03         	ldr	r3, [sp, #0xc]
  399578: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  39957c: 681b         	ldr	r3, [r3]
  39957e: 334c         	adds	r3, #0x4c
  399580: 681c         	ldr	r4, [r3]
  399582: 9b03         	ldr	r3, [sp, #0xc]
  399584: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399588: 461d         	mov	r5, r3
  39958a: ab08         	add	r3, sp, #0x20
  39958c: 4618         	mov	r0, r3
  39958e: f04f 0100    	mov.w	r1, #0x0
  399592: f2cc 21c8    	movt	r1, #0xc2c8
  399596: f04f 0200    	mov.w	r2, #0x0
  39959a: f6cb 7280    	movt	r2, #0xbf80
  39959e: f1f9 fba7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f974e
  3995a2: ab08         	add	r3, sp, #0x20
  3995a4: 4628         	mov	r0, r5
  3995a6: 4619         	mov	r1, r3
  3995a8: 47a0         	blx	r4
  3995aa: ab08         	add	r3, sp, #0x20
  3995ac: f04f 0200    	mov.w	r2, #0x0
  3995b0: 9200         	str	r2, [sp]
  3995b2: 4618         	mov	r0, r3
  3995b4: f04f 0100    	mov.w	r1, #0x0
  3995b8: f04f 0200    	mov.w	r2, #0x0
  3995bc: f04f 0300    	mov.w	r3, #0x0
  3995c0: f1f9 fe8e    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x1f9d1c
  3995c4: ab08         	add	r3, sp, #0x20
  3995c6: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x399734 <LobbyRow::init()+0x578>
  3995c8: 447a         	add	r2, pc
  3995ca: 4610         	mov	r0, r2
  3995cc: 4619         	mov	r1, r3
  3995ce: f23e fe17    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x23ec2e
  3995d2: 4602         	mov	r2, r0
  3995d4: 9b03         	ldr	r3, [sp, #0xc]
  3995d6: f8c3 2100    	str.w	r2, [r3, #0x100]
  3995da: 9b03         	ldr	r3, [sp, #0xc]
  3995dc: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3995e0: 4618         	mov	r0, r3
  3995e2: f1fe fc81    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fe902
  3995e6: 9b03         	ldr	r3, [sp, #0xc]
  3995e8: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3995ec: 681b         	ldr	r3, [r3]
  3995ee: 3340         	adds	r3, #0x40
  3995f0: 681b         	ldr	r3, [r3]
  3995f2: 9a03         	ldr	r2, [sp, #0xc]
  3995f4: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3995f8: 4610         	mov	r0, r2
  3995fa: f649 119a    	movw	r1, #0x999a
  3995fe: f6c3 7119    	movt	r1, #0x3f19
  399602: 4798         	blx	r3
  399604: 9b03         	ldr	r3, [sp, #0xc]
  399606: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39960a: 681b         	ldr	r3, [r3]
  39960c: 334c         	adds	r3, #0x4c
  39960e: 681c         	ldr	r4, [r3]
  399610: 9b03         	ldr	r3, [sp, #0xc]
  399612: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  399616: ab08         	add	r3, sp, #0x20
  399618: 4618         	mov	r0, r3
  39961a: f04f 0100    	mov.w	r1, #0x0
  39961e: f2cc 21c6    	movt	r1, #0xc2c6
  399622: f04f 0200    	mov.w	r2, #0x0
  399626: f2cc 1270    	movt	r2, #0xc170
  39962a: f1f9 fb61    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f96c2
  39962e: ab08         	add	r3, sp, #0x20
  399630: 4628         	mov	r0, r5
  399632: 4619         	mov	r1, r3
  399634: 47a0         	blx	r4
  399636: 9b03         	ldr	r3, [sp, #0xc]
  399638: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39963c: 681b         	ldr	r3, [r3]
  39963e: 3390         	adds	r3, #0x90
  399640: 681b         	ldr	r3, [r3]
  399642: 9a03         	ldr	r2, [sp, #0xc]
  399644: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  399648: 4610         	mov	r0, r2
  39964a: 2100         	movs	r1, #0x0
  39964c: 4798         	blx	r3
  39964e: 9b03         	ldr	r3, [sp, #0xc]
  399650: 681b         	ldr	r3, [r3]
  399652: 33cc         	adds	r3, #0xcc
  399654: 681b         	ldr	r3, [r3]
  399656: 9903         	ldr	r1, [sp, #0xc]
  399658: 9a03         	ldr	r2, [sp, #0xc]
  39965a: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  39965e: 4608         	mov	r0, r1
  399660: 4611         	mov	r1, r2
  399662: 2200         	movs	r2, #0x0
  399664: 4798         	blx	r3
  399666: 9b03         	ldr	r3, [sp, #0xc]
  399668: 681b         	ldr	r3, [r3]
  39966a: 33cc         	adds	r3, #0xcc
  39966c: 681b         	ldr	r3, [r3]
  39966e: 9903         	ldr	r1, [sp, #0xc]
  399670: 9a03         	ldr	r2, [sp, #0xc]
  399672: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  399676: 4608         	mov	r0, r1
  399678: 4611         	mov	r1, r2
  39967a: 2201         	movs	r2, #0x1
  39967c: 4798         	blx	r3
  39967e: 9b03         	ldr	r3, [sp, #0xc]
  399680: 681b         	ldr	r3, [r3]
  399682: 33cc         	adds	r3, #0xcc
  399684: 681b         	ldr	r3, [r3]
  399686: 9903         	ldr	r1, [sp, #0xc]
  399688: 9a03         	ldr	r2, [sp, #0xc]
  39968a: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  39968e: 4608         	mov	r0, r1
  399690: 4611         	mov	r1, r2
  399692: 2201         	movs	r2, #0x1
  399694: 4798         	blx	r3
  399696: 9b03         	ldr	r3, [sp, #0xc]
  399698: 681b         	ldr	r3, [r3]
  39969a: 33cc         	adds	r3, #0xcc
  39969c: 681b         	ldr	r3, [r3]
  39969e: 9903         	ldr	r1, [sp, #0xc]
  3996a0: 9a03         	ldr	r2, [sp, #0xc]
  3996a2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3996a6: 4608         	mov	r0, r1
  3996a8: 4611         	mov	r1, r2
  3996aa: 2201         	movs	r2, #0x1
  3996ac: 4798         	blx	r3
  3996ae: 9b03         	ldr	r3, [sp, #0xc]
  3996b0: 681b         	ldr	r3, [r3]
  3996b2: 33cc         	adds	r3, #0xcc
  3996b4: 681b         	ldr	r3, [r3]
  3996b6: 9903         	ldr	r1, [sp, #0xc]
  3996b8: 9a03         	ldr	r2, [sp, #0xc]
  3996ba: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3996be: 4608         	mov	r0, r1
  3996c0: 4611         	mov	r1, r2
  3996c2: 2202         	movs	r2, #0x2
  3996c4: 4798         	blx	r3
  3996c6: 9b03         	ldr	r3, [sp, #0xc]
  3996c8: 681b         	ldr	r3, [r3]
  3996ca: 33cc         	adds	r3, #0xcc
  3996cc: 681b         	ldr	r3, [r3]
  3996ce: 9903         	ldr	r1, [sp, #0xc]
  3996d0: 9a03         	ldr	r2, [sp, #0xc]
  3996d2: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3996d6: 4608         	mov	r0, r1
  3996d8: 4611         	mov	r1, r2
  3996da: 2202         	movs	r2, #0x2
  3996dc: 4798         	blx	r3
  3996de: 9803         	ldr	r0, [sp, #0xc]
  3996e0: 2100         	movs	r1, #0x0
  3996e2: f000 fa53    	bl	0x399b8c <LobbyRow::setRank(int)> @ imm = #0x4a6
  3996e6: 9803         	ldr	r0, [sp, #0xc]
  3996e8: 2100         	movs	r1, #0x0
  3996ea: f000 fa97    	bl	0x399c1c <LobbyRow::setSkill(int)> @ imm = #0x52e
  3996ee: 9b03         	ldr	r3, [sp, #0xc]
  3996f0: 681b         	ldr	r3, [r3]
  3996f2: 3340         	adds	r3, #0x40
  3996f4: 681b         	ldr	r3, [r3]
  3996f6: 9a03         	ldr	r2, [sp, #0xc]
  3996f8: 4610         	mov	r0, r2
  3996fa: f64c 41cd    	movw	r1, #0xcccd
  3996fe: f6c3 714c    	movt	r1, #0x3f4c
  399702: 4798         	blx	r3
  399704: 2301         	movs	r3, #0x1
  399706: 4618         	mov	r0, r3
  399708: b00d         	add	sp, #0x34
  39970a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39970b); words below are literal-pool data ---
  39970c: 8cd0         	ldrh	r0, [r2, #0x26]
  39970e: 0043         	lsls	r3, r0, #0x1
  399710: 8ca4         	ldrh	r4, [r4, #0x24]
  399712: 0043         	lsls	r3, r0, #0x1
  399714: 8c80         	ldrh	r0, [r0, #0x24]
  399716: 0043         	lsls	r3, r0, #0x1
  399718: 8c02         	ldrh	r2, [r0, #0x20]
  39971a: 0043         	lsls	r3, r0, #0x1
  39971c: 8b8e         	ldrh	r6, [r1, #0x1c]
  39971e: 0043         	lsls	r3, r0, #0x1
  399720: 8bac         	ldrh	r4, [r5, #0x1c]
  399722: 0043         	lsls	r3, r0, #0x1
  399724: 8b66         	ldrh	r6, [r4, #0x1a]
  399726: 0043         	lsls	r3, r0, #0x1
  399728: 8b94         	ldrh	r4, [r2, #0x1c]
  39972a: 0043         	lsls	r3, r0, #0x1
  39972c: 8a26         	ldrh	r6, [r4, #0x10]
  39972e: 0043         	lsls	r3, r0, #0x1
  399730: 8a00         	ldrh	r0, [r0, #0x10]
  399732: 0043         	lsls	r3, r0, #0x1
  399734: 88f8         	ldrh	r0, [r7, #0x6]
  399736: 0043         	lsls	r3, r0, #0x1

// ==== LobbyRow::~LobbyRow
//      file offset 0x399738 (= ELF address; Ghidra 0x3a9738), 192 bytes, Thumb-2
  399738: b500         	push	{lr}
  39973a: b083         	sub	sp, #0xc
  39973c: 9001         	str	r0, [sp, #0x4]
  39973e: 492c         	ldr	r1, [pc, #0xb0]         @ 0x3997f0 <LobbyRow::~LobbyRow()+0xb8>
  399740: 4479         	add	r1, pc
  399742: 9b01         	ldr	r3, [sp, #0x4]
  399744: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x3997f4 <LobbyRow::~LobbyRow()+0xbc>
  399746: 588a         	ldr	r2, [r1, r2]
  399748: 3208         	adds	r2, #0x8
  39974a: 601a         	str	r2, [r3]
  39974c: 9b01         	ldr	r3, [sp, #0x4]
  39974e: 4618         	mov	r0, r3
  399750: f1f6 ff6c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1f6ed8
  399754: 9b01         	ldr	r3, [sp, #0x4]
  399756: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  39975a: 2b00         	cmp	r3, #0x0
  39975c: d005         	beq	0x39976a <LobbyRow::~LobbyRow()+0x32> @ imm = #0xa
  39975e: 9b01         	ldr	r3, [sp, #0x4]
  399760: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399764: 4618         	mov	r0, r3
  399766: f1fe fba7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe74e
  39976a: 9b01         	ldr	r3, [sp, #0x4]
  39976c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399770: 4618         	mov	r0, r3
  399772: f1fe fba1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe742
  399776: 9b01         	ldr	r3, [sp, #0x4]
  399778: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  39977c: 4618         	mov	r0, r3
  39977e: f1fe fb9b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe736
  399782: 9b01         	ldr	r3, [sp, #0x4]
  399784: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399788: 4618         	mov	r0, r3
  39978a: f1fe fb95    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe72a
  39978e: 9b01         	ldr	r3, [sp, #0x4]
  399790: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  399794: 4618         	mov	r0, r3
  399796: f1fe fb8f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe71e
  39979a: 9b01         	ldr	r3, [sp, #0x4]
  39979c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3997a0: 4618         	mov	r0, r3
  3997a2: f1fe fb89    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe712
  3997a6: 9b01         	ldr	r3, [sp, #0x4]
  3997a8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3997ac: 4618         	mov	r0, r3
  3997ae: f1fe fb83    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe706
  3997b2: 9b01         	ldr	r3, [sp, #0x4]
  3997b4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3997b8: 2b00         	cmp	r3, #0x0
  3997ba: d005         	beq	0x3997c8 <LobbyRow::~LobbyRow()+0x90> @ imm = #0xa
  3997bc: 9b01         	ldr	r3, [sp, #0x4]
  3997be: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3997c2: 4618         	mov	r0, r3
  3997c4: f1fe fb78    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe6f0
  3997c8: 9b01         	ldr	r3, [sp, #0x4]
  3997ca: 33f4         	adds	r3, #0xf4
  3997cc: 4618         	mov	r0, r3
  3997ce: f01c f0a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41c142
  3997d2: 9b01         	ldr	r3, [sp, #0x4]
  3997d4: 4618         	mov	r0, r3
  3997d6: f1f6 f835    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1f606a
  3997da: 2300         	movs	r3, #0x0
  3997dc: 2b00         	cmp	r3, #0x0
  3997de: d002         	beq	0x3997e6 <LobbyRow::~LobbyRow()+0xae> @ imm = #0x4
  3997e0: 9801         	ldr	r0, [sp, #0x4]
  3997e2: f3ee fc5f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ee8be
  3997e6: 9b01         	ldr	r3, [sp, #0x4]
  3997e8: 4618         	mov	r0, r3
  3997ea: b003         	add	sp, #0xc
  3997ec: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3997ef); words below are literal-pool data ---
  3997f0: 92c8         	str	r2, [sp, #0x320]
  3997f2: 0059         	lsls	r1, r3, #0x1
  3997f4: dd44         	ble	0x399880 <LobbyRow::setTeamId(int)+0x34> @ imm = #0x88
  3997f6: ffff b500    	<unknown>

// ==== LobbyRow::~LobbyRow
//      file offset 0x3997f8 (= ELF address; Ghidra 0x3a97f8), 28 bytes, Thumb-2
  3997f8: b500         	push	{lr}
  3997fa: b083         	sub	sp, #0xc
  3997fc: 9001         	str	r0, [sp, #0x4]
  3997fe: 9801         	ldr	r0, [sp, #0x4]
  399800: f7ff ff9a    	bl	0x399738 <LobbyRow::~LobbyRow()> @ imm = #-0xcc
  399804: 9801         	ldr	r0, [sp, #0x4]
  399806: f3ee fc4d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ee89a
  39980a: 9b01         	ldr	r3, [sp, #0x4]
  39980c: 4618         	mov	r0, r3
  39980e: b003         	add	sp, #0xc
  399810: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyRow::setPeerId
//      file offset 0x399814 (= ELF address; Ghidra 0x3a9814), 26 bytes, Thumb-2
  399814: b500         	push	{lr}
  399816: b083         	sub	sp, #0xc
  399818: 9001         	str	r0, [sp, #0x4]
  39981a: 9100         	str	r1, [sp]
  39981c: 9b01         	ldr	r3, [sp, #0x4]
  39981e: 33f4         	adds	r3, #0xf4
  399820: 4618         	mov	r0, r3
  399822: 9900         	ldr	r1, [sp]
  399824: f01c f6c6    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x41cd8c
  399828: b003         	add	sp, #0xc
  39982a: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyRow::getPeerId
//      file offset 0x399830 (= ELF address; Ghidra 0x3a9830), 28 bytes, Thumb-2
  399830: b500         	push	{lr}
  399832: b083         	sub	sp, #0xc
  399834: 9001         	str	r0, [sp, #0x4]
  399836: 9100         	str	r1, [sp]
  399838: 9b00         	ldr	r3, [sp]
  39983a: 33f4         	adds	r3, #0xf4
  39983c: 9801         	ldr	r0, [sp, #0x4]
  39983e: 4619         	mov	r1, r3
  399840: f01c f652    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x41cca4
  399844: 9801         	ldr	r0, [sp, #0x4]
  399846: b003         	add	sp, #0xc
  399848: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyRow::setTeamId
//      file offset 0x39984c (= ELF address; Ghidra 0x3a984c), 120 bytes, Thumb-2
  39984c: b510         	push	{r4, lr}
  39984e: b082         	sub	sp, #0x8
  399850: 9001         	str	r0, [sp, #0x4]
  399852: 9100         	str	r1, [sp]
  399854: 4819         	ldr	r0, [pc, #0x64]         @ 0x3998bc <LobbyRow::setTeamId(int)+0x70>
  399856: 4478         	add	r0, pc
  399858: 9b01         	ldr	r3, [sp, #0x4]
  39985a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39985e: 681b         	ldr	r3, [r3]
  399860: f503 73de    	add.w	r3, r3, #0x1bc
  399864: 681c         	ldr	r4, [r3]
  399866: 9b01         	ldr	r3, [sp, #0x4]
  399868: f8d3 10f8    	ldr.w	r1, [r3, #0xf8]
  39986c: 9a00         	ldr	r2, [sp]
  39986e: 4613         	mov	r3, r2
  399870: 005b         	lsls	r3, r3, #0x1
  399872: 4413         	add	r3, r2
  399874: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3998c0 <LobbyRow::setTeamId(int)+0x74>
  399876: 5882         	ldr	r2, [r0, r2]
  399878: 4413         	add	r3, r2
  39987a: 4608         	mov	r0, r1
  39987c: 4619         	mov	r1, r3
  39987e: 47a0         	blx	r4
  399880: 9b00         	ldr	r3, [sp]
  399882: 2b00         	cmp	r3, #0x0
  399884: d10c         	bne	0x3998a0 <LobbyRow::setTeamId(int)+0x54> @ imm = #0x18
  399886: 9b01         	ldr	r3, [sp, #0x4]
  399888: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39988c: 681b         	ldr	r3, [r3]
  39988e: 3390         	adds	r3, #0x90
  399890: 681b         	ldr	r3, [r3]
  399892: 9a01         	ldr	r2, [sp, #0x4]
  399894: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  399898: 4610         	mov	r0, r2
  39989a: 2100         	movs	r1, #0x0
  39989c: 4798         	blx	r3
  39989e: e00b         	b	0x3998b8 <LobbyRow::setTeamId(int)+0x6c> @ imm = #0x16
  3998a0: 9b01         	ldr	r3, [sp, #0x4]
  3998a2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3998a6: 681b         	ldr	r3, [r3]
  3998a8: 3390         	adds	r3, #0x90
  3998aa: 681b         	ldr	r3, [r3]
  3998ac: 9a01         	ldr	r2, [sp, #0x4]
  3998ae: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3998b2: 4610         	mov	r0, r2
  3998b4: 2101         	movs	r1, #0x1
  3998b6: 4798         	blx	r3
  3998b8: b002         	add	sp, #0x8
  3998ba: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3998bb); words below are literal-pool data ---
  3998bc: 91b2         	str	r1, [sp, #0x2c8]
  3998be: 0059         	lsls	r1, r3, #0x1
  3998c0: d7b8         	bvc	0x399834 <LobbyRow::getPeerId()+0x4> @ imm = #-0x90
  3998c2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LobbyRow::setPlayerName
//      file offset 0x3998c4 (= ELF address; Ghidra 0x3a98c4), 96 bytes, Thumb-2
  3998c4: b530         	push	{r4, r5, lr}
  3998c6: b083         	sub	sp, #0xc
  3998c8: 9001         	str	r0, [sp, #0x4]
  3998ca: 9100         	str	r1, [sp]
  3998cc: 9b01         	ldr	r3, [sp, #0x4]
  3998ce: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3998d2: 681b         	ldr	r3, [r3]
  3998d4: f503 7310    	add.w	r3, r3, #0x240
  3998d8: 681b         	ldr	r3, [r3]
  3998da: 9a01         	ldr	r2, [sp, #0x4]
  3998dc: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3998e0: 4610         	mov	r0, r2
  3998e2: 4798         	blx	r3
  3998e4: 4603         	mov	r3, r0
  3998e6: 9800         	ldr	r0, [sp]
  3998e8: 4619         	mov	r1, r3
  3998ea: f01b f71b    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x41be36
  3998ee: 4603         	mov	r3, r0
  3998f0: 2b00         	cmp	r3, #0x0
  3998f2: bf0c         	ite	eq
  3998f4: 2300         	moveq	r3, #0x0
  3998f6: 2301         	movne	r3, #0x1
  3998f8: b2db         	uxtb	r3, r3
  3998fa: 2b00         	cmp	r3, #0x0
  3998fc: d010         	beq	0x399920 <LobbyRow::setPlayerName(std::string)+0x5c> @ imm = #0x20
  3998fe: 9b01         	ldr	r3, [sp, #0x4]
  399900: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  399904: 681b         	ldr	r3, [r3]
  399906: f503 730f    	add.w	r3, r3, #0x23c
  39990a: 681c         	ldr	r4, [r3]
  39990c: 9b01         	ldr	r3, [sp, #0x4]
  39990e: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  399912: 9800         	ldr	r0, [sp]
  399914: f01b f4f4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41b9e8
  399918: 4603         	mov	r3, r0
  39991a: 4628         	mov	r0, r5
  39991c: 4619         	mov	r1, r3
  39991e: 47a0         	blx	r4
  399920: b003         	add	sp, #0xc
  399922: bd30         	pop	{r4, r5, pc}

// ==== LobbyRow::setHead
//      file offset 0x399924 (= ELF address; Ghidra 0x3a9924), 616 bytes, Thumb-2
  399924: b570         	push	{r4, r5, r6, lr}
  399926: b08e         	sub	sp, #0x38
  399928: 9003         	str	r0, [sp, #0xc]
  39992a: 9102         	str	r1, [sp, #0x8]
  39992c: 9201         	str	r2, [sp, #0x4]
  39992e: 9b01         	ldr	r3, [sp, #0x4]
  399930: 2b00         	cmp	r3, #0x0
  399932: da0c         	bge	0x39994e <LobbyRow::setHead(cocos2d::CCArray*, int)+0x2a> @ imm = #0x18
  399934: 9b03         	ldr	r3, [sp, #0xc]
  399936: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  39993a: 681b         	ldr	r3, [r3]
  39993c: 3390         	adds	r3, #0x90
  39993e: 681b         	ldr	r3, [r3]
  399940: 9a03         	ldr	r2, [sp, #0xc]
  399942: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  399946: 4610         	mov	r0, r2
  399948: 2100         	movs	r1, #0x0
  39994a: 4798         	blx	r3
  39994c: e11c         	b	0x399b88 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x264> @ imm = #0x238
  39994e: 2300         	movs	r3, #0x0
  399950: f88d 3017    	strb.w	r3, [sp, #0x17]
  399954: 9b03         	ldr	r3, [sp, #0xc]
  399956: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39995a: 2b00         	cmp	r3, #0x0
  39995c: d011         	beq	0x399982 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x5e> @ imm = #0x22
  39995e: 9b02         	ldr	r3, [sp, #0x8]
  399960: 2b00         	cmp	r3, #0x0
  399962: d00e         	beq	0x399982 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x5e> @ imm = #0x1c
  399964: 9b03         	ldr	r3, [sp, #0xc]
  399966: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39996a: 4618         	mov	r0, r3
  39996c: f200 fbb8    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x200770
  399970: 4604         	mov	r4, r0
  399972: 9802         	ldr	r0, [sp, #0x8]
  399974: f200 fbb4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x200768
  399978: 4603         	mov	r3, r0
  39997a: 429c         	cmp	r4, r3
  39997c: d101         	bne	0x399982 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x5e> @ imm = #0x2
  39997e: 2301         	movs	r3, #0x1
  399980: e000         	b	0x399984 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x60> @ imm = #0x0
  399982: 2300         	movs	r3, #0x0
  399984: 2b00         	cmp	r3, #0x0
  399986: d03c         	beq	0x399a02 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xde> @ imm = #0x78
  399988: 2300         	movs	r3, #0x0
  39998a: 9306         	str	r3, [sp, #0x18]
  39998c: e02c         	b	0x3999e8 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xc4> @ imm = #0x58
  39998e: 9b06         	ldr	r3, [sp, #0x18]
  399990: 9802         	ldr	r0, [sp, #0x8]
  399992: 4619         	mov	r1, r3
  399994: f200 fbc4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x200788
  399998: 4603         	mov	r3, r0
  39999a: 9307         	str	r3, [sp, #0x1c]
  39999c: 9b03         	ldr	r3, [sp, #0xc]
  39999e: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  3999a2: 9b06         	ldr	r3, [sp, #0x18]
  3999a4: 4610         	mov	r0, r2
  3999a6: 4619         	mov	r1, r3
  3999a8: f200 fbba    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x200774
  3999ac: 4603         	mov	r3, r0
  3999ae: 9308         	str	r3, [sp, #0x20]
  3999b0: 9b07         	ldr	r3, [sp, #0x1c]
  3999b2: 2b00         	cmp	r3, #0x0
  3999b4: d00c         	beq	0x3999d0 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xac> @ imm = #0x18
  3999b6: 9b08         	ldr	r3, [sp, #0x20]
  3999b8: 2b00         	cmp	r3, #0x0
  3999ba: d009         	beq	0x3999d0 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xac> @ imm = #0x12
  3999bc: 9807         	ldr	r0, [sp, #0x1c]
  3999be: f753 fa49    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xacb6e
  3999c2: 4604         	mov	r4, r0
  3999c4: 9808         	ldr	r0, [sp, #0x20]
  3999c6: f753 fa45    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xacb76
  3999ca: 4603         	mov	r3, r0
  3999cc: 429c         	cmp	r4, r3
  3999ce: d001         	beq	0x3999d4 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xb0> @ imm = #0x2
  3999d0: 2301         	movs	r3, #0x1
  3999d2: e000         	b	0x3999d6 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xb2> @ imm = #0x0
  3999d4: 2300         	movs	r3, #0x0
  3999d6: 2b00         	cmp	r3, #0x0
  3999d8: d003         	beq	0x3999e2 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xbe> @ imm = #0x6
  3999da: 2301         	movs	r3, #0x1
  3999dc: f88d 3017    	strb.w	r3, [sp, #0x17]
  3999e0: e00e         	b	0x399a00 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xdc> @ imm = #0x1c
  3999e2: 9b06         	ldr	r3, [sp, #0x18]
  3999e4: 3301         	adds	r3, #0x1
  3999e6: 9306         	str	r3, [sp, #0x18]
  3999e8: 9c06         	ldr	r4, [sp, #0x18]
  3999ea: 9802         	ldr	r0, [sp, #0x8]
  3999ec: f200 fb78    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2006f0
  3999f0: 4603         	mov	r3, r0
  3999f2: 429c         	cmp	r4, r3
  3999f4: bf2c         	ite	hs
  3999f6: 2300         	movhs	r3, #0x0
  3999f8: 2301         	movlo	r3, #0x1
  3999fa: b2db         	uxtb	r3, r3
  3999fc: 2b00         	cmp	r3, #0x0
  3999fe: d1c6         	bne	0x39998e <LobbyRow::setHead(cocos2d::CCArray*, int)+0x6a> @ imm = #-0x74
  399a00: e002         	b	0x399a08 <LobbyRow::setHead(cocos2d::CCArray*, int)+0xe4> @ imm = #0x4
  399a02: 2301         	movs	r3, #0x1
  399a04: f88d 3017    	strb.w	r3, [sp, #0x17]
  399a08: 9b03         	ldr	r3, [sp, #0xc]
  399a0a: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  399a0e: 9b01         	ldr	r3, [sp, #0x4]
  399a10: 429a         	cmp	r2, r3
  399a12: d104         	bne	0x399a1e <LobbyRow::setHead(cocos2d::CCArray*, int)+0xfa> @ imm = #0x8
  399a14: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  399a18: 2b00         	cmp	r3, #0x0
  399a1a: f000 80b5    	beq.w	0x399b88 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x264> @ imm = #0x16a
  399a1e: f75a f84b    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xa5f6a
  399a22: 4603         	mov	r3, r0
  399a24: 4618         	mov	r0, r3
  399a26: 9902         	ldr	r1, [sp, #0x8]
  399a28: 9a01         	ldr	r2, [sp, #0x4]
  399a2a: f75d fb21    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0xa29be
  399a2e: 4603         	mov	r3, r0
  399a30: 9309         	str	r3, [sp, #0x24]
  399a32: 9b03         	ldr	r3, [sp, #0xc]
  399a34: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399a38: 2b00         	cmp	r3, #0x0
  399a3a: d010         	beq	0x399a5e <LobbyRow::setHead(cocos2d::CCArray*, int)+0x13a> @ imm = #0x20
  399a3c: 9b03         	ldr	r3, [sp, #0xc]
  399a3e: 681b         	ldr	r3, [r3]
  399a40: 33f0         	adds	r3, #0xf0
  399a42: 681b         	ldr	r3, [r3]
  399a44: 9903         	ldr	r1, [sp, #0xc]
  399a46: 9a03         	ldr	r2, [sp, #0xc]
  399a48: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  399a4c: 4608         	mov	r0, r1
  399a4e: 4611         	mov	r1, r2
  399a50: 4798         	blx	r3
  399a52: 9b03         	ldr	r3, [sp, #0xc]
  399a54: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399a58: 4618         	mov	r0, r3
  399a5a: f1fe fa2d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe45a
  399a5e: 9809         	ldr	r0, [sp, #0x24]
  399a60: f23e fb12    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x23e624
  399a64: 4602         	mov	r2, r0
  399a66: 9b03         	ldr	r3, [sp, #0xc]
  399a68: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  399a6c: 9b03         	ldr	r3, [sp, #0xc]
  399a6e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399a72: 4618         	mov	r0, r3
  399a74: f1fe fa38    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fe470
  399a78: 9b03         	ldr	r3, [sp, #0xc]
  399a7a: 681b         	ldr	r3, [r3]
  399a7c: 33cc         	adds	r3, #0xcc
  399a7e: 681b         	ldr	r3, [r3]
  399a80: 9903         	ldr	r1, [sp, #0xc]
  399a82: 9a03         	ldr	r2, [sp, #0xc]
  399a84: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  399a88: 4608         	mov	r0, r1
  399a8a: 4611         	mov	r1, r2
  399a8c: 2200         	movs	r2, #0x0
  399a8e: 4798         	blx	r3
  399a90: 9b03         	ldr	r3, [sp, #0xc]
  399a92: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399a96: 681b         	ldr	r3, [r3]
  399a98: 3390         	adds	r3, #0x90
  399a9a: 681b         	ldr	r3, [r3]
  399a9c: 9a03         	ldr	r2, [sp, #0xc]
  399a9e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  399aa2: 4610         	mov	r0, r2
  399aa4: 2101         	movs	r1, #0x1
  399aa6: 4798         	blx	r3
  399aa8: 9b03         	ldr	r3, [sp, #0xc]
  399aaa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399aae: 681b         	ldr	r3, [r3]
  399ab0: 334c         	adds	r3, #0x4c
  399ab2: 681c         	ldr	r4, [r3]
  399ab4: 9b03         	ldr	r3, [sp, #0xc]
  399ab6: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  399aba: 9b03         	ldr	r3, [sp, #0xc]
  399abc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  399ac0: 681b         	ldr	r3, [r3]
  399ac2: 3350         	adds	r3, #0x50
  399ac4: 681b         	ldr	r3, [r3]
  399ac6: 9a03         	ldr	r2, [sp, #0xc]
  399ac8: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  399acc: 4610         	mov	r0, r2
  399ace: 4798         	blx	r3
  399ad0: 4606         	mov	r6, r0
  399ad2: ab0a         	add	r3, sp, #0x28
  399ad4: 4618         	mov	r0, r3
  399ad6: f04f 0100    	mov.w	r1, #0x0
  399ada: f2cc 11a0    	movt	r1, #0xc1a0
  399ade: f04f 0200    	mov.w	r2, #0x0
  399ae2: f2cc 0280    	movt	r2, #0xc080
  399ae6: f1f9 f903    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f9206
  399aea: aa0c         	add	r2, sp, #0x30
  399aec: ab0a         	add	r3, sp, #0x28
  399aee: 4610         	mov	r0, r2
  399af0: 4631         	mov	r1, r6
  399af2: 461a         	mov	r2, r3
  399af4: f7fd fab0    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x2aa0
  399af8: ab0c         	add	r3, sp, #0x30
  399afa: 4628         	mov	r0, r5
  399afc: 4619         	mov	r1, r3
  399afe: 47a0         	blx	r4
  399b00: 9b03         	ldr	r3, [sp, #0xc]
  399b02: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399b06: 681b         	ldr	r3, [r3]
  399b08: 3340         	adds	r3, #0x40
  399b0a: 681b         	ldr	r3, [r3]
  399b0c: 9a03         	ldr	r2, [sp, #0xc]
  399b0e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  399b12: 4610         	mov	r0, r2
  399b14: f243 3133    	movw	r1, #0x3333
  399b18: f6c3 7133    	movt	r1, #0x3f33
  399b1c: 4798         	blx	r3
  399b1e: 9b03         	ldr	r3, [sp, #0xc]
  399b20: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  399b24: 681b         	ldr	r3, [r3]
  399b26: 337c         	adds	r3, #0x7c
  399b28: 681c         	ldr	r4, [r3]
  399b2a: 9b03         	ldr	r3, [sp, #0xc]
  399b2c: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  399b30: ab0c         	add	r3, sp, #0x30
  399b32: 4618         	mov	r0, r3
  399b34: f04f 517c    	mov.w	r1, #0x3f000000
  399b38: f04f 527c    	mov.w	r2, #0x3f000000
  399b3c: f1f9 f8d8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f91b0
  399b40: ab0c         	add	r3, sp, #0x30
  399b42: 4628         	mov	r0, r5
  399b44: 4619         	mov	r1, r3
  399b46: 47a0         	blx	r4
  399b48: 9b03         	ldr	r3, [sp, #0xc]
  399b4a: 9a01         	ldr	r2, [sp, #0x4]
  399b4c: f8c3 2110    	str.w	r2, [r3, #0x110]
  399b50: 9b03         	ldr	r3, [sp, #0xc]
  399b52: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  399b56: 2b00         	cmp	r3, #0x0
  399b58: d009         	beq	0x399b6e <LobbyRow::setHead(cocos2d::CCArray*, int)+0x24a> @ imm = #0x12
  399b5a: 9b03         	ldr	r3, [sp, #0xc]
  399b5c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  399b60: 4618         	mov	r0, r3
  399b62: f1fe f9a9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fe352
  399b66: 9b03         	ldr	r3, [sp, #0xc]
  399b68: 2200         	movs	r2, #0x0
  399b6a: f8c3 2114    	str.w	r2, [r3, #0x114]
  399b6e: 9802         	ldr	r0, [sp, #0x8]
  399b70: f200 f98a    	bl	0x599e88 <cocos2d::CCArray::createWithArray(cocos2d::CCArray*)> @ imm = #0x200314
  399b74: 4602         	mov	r2, r0
  399b76: 9b03         	ldr	r3, [sp, #0xc]
  399b78: f8c3 2114    	str.w	r2, [r3, #0x114]
  399b7c: 9b03         	ldr	r3, [sp, #0xc]
  399b7e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  399b82: 4618         	mov	r0, r3
  399b84: f1fe f9b0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fe360
  399b88: b00e         	add	sp, #0x38
  399b8a: bd70         	pop	{r4, r5, r6, pc}

// ==== LobbyRow::setRank
//      file offset 0x399b8c (= ELF address; Ghidra 0x3a9b8c), 60 bytes, Thumb-2
  399b8c: b510         	push	{r4, lr}
  399b8e: b082         	sub	sp, #0x8
  399b90: 9001         	str	r0, [sp, #0x4]
  399b92: 9100         	str	r1, [sp]
  399b94: 4c0a         	ldr	r4, [pc, #0x28]         @ 0x399bc0 <LobbyRow::setRank(int)+0x34>
  399b96: 447c         	add	r4, pc
  399b98: 9b01         	ldr	r3, [sp, #0x4]
  399b9a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  399b9e: 681b         	ldr	r3, [r3]
  399ba0: f503 7302    	add.w	r3, r3, #0x208
  399ba4: 681b         	ldr	r3, [r3]
  399ba6: 9a01         	ldr	r2, [sp, #0x4]
  399ba8: f8d2 10fc    	ldr.w	r1, [r2, #0xfc]
  399bac: 9a00         	ldr	r2, [sp]
  399bae: 0110         	lsls	r0, r2, #0x4
  399bb0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x399bc4 <LobbyRow::setRank(int)+0x38>
  399bb2: 58a2         	ldr	r2, [r4, r2]
  399bb4: 4402         	add	r2, r0
  399bb6: 4608         	mov	r0, r1
  399bb8: 4611         	mov	r1, r2
  399bba: 4798         	blx	r3
  399bbc: b002         	add	sp, #0x8
  399bbe: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x399bbf); words below are literal-pool data ---
  399bc0: 8e72         	ldrh	r2, [r6, #0x32]
  399bc2: 0059         	lsls	r1, r3, #0x1
  399bc4: d7c0         	bvc	0x399b48 <LobbyRow::setHead(cocos2d::CCArray*, int)+0x224> @ imm = #-0x80
  399bc6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== LobbyRow::setOS
//      file offset 0x399bc8 (= ELF address; Ghidra 0x3a9bc8), 84 bytes, Thumb-2
  399bc8: b510         	push	{r4, lr}
  399bca: b082         	sub	sp, #0x8
  399bcc: 9001         	str	r0, [sp, #0x4]
  399bce: 9100         	str	r1, [sp]
  399bd0: 4c10         	ldr	r4, [pc, #0x40]         @ 0x399c14 <LobbyRow::setOS(int)+0x4c>
  399bd2: 447c         	add	r4, pc
  399bd4: 9b01         	ldr	r3, [sp, #0x4]
  399bd6: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  399bda: 681b         	ldr	r3, [r3]
  399bdc: f503 7302    	add.w	r3, r3, #0x208
  399be0: 681b         	ldr	r3, [r3]
  399be2: 9a01         	ldr	r2, [sp, #0x4]
  399be4: f8d2 1100    	ldr.w	r1, [r2, #0x100]
  399be8: 9a00         	ldr	r2, [sp]
  399bea: 0110         	lsls	r0, r2, #0x4
  399bec: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x399c18 <LobbyRow::setOS(int)+0x50>
  399bee: 58a2         	ldr	r2, [r4, r2]
  399bf0: 4402         	add	r2, r0
  399bf2: 4608         	mov	r0, r1
  399bf4: 4611         	mov	r1, r2
  399bf6: 4798         	blx	r3
  399bf8: 9b01         	ldr	r3, [sp, #0x4]
  399bfa: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  399bfe: 681b         	ldr	r3, [r3]
  399c00: 3390         	adds	r3, #0x90
  399c02: 681b         	ldr	r3, [r3]
  399c04: 9a01         	ldr	r2, [sp, #0x4]
  399c06: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  399c0a: 4610         	mov	r0, r2
  399c0c: 2101         	movs	r1, #0x1
  399c0e: 4798         	blx	r3
  399c10: b002         	add	sp, #0x8
  399c12: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x399c13); words below are literal-pool data ---
  399c14: 8e36         	ldrh	r6, [r6, #0x30]
  399c16: 0059         	lsls	r1, r3, #0x1
  399c18: d7c4         	bvc	0x399ba4 <LobbyRow::setRank(int)+0x18> @ imm = #-0x78
  399c1a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LobbyRow::setSkill
//      file offset 0x399c1c (= ELF address; Ghidra 0x3a9c1c), 64 bytes, Thumb-2
  399c1c: b530         	push	{r4, r5, lr}
  399c1e: b083         	sub	sp, #0xc
  399c20: 9001         	str	r0, [sp, #0x4]
  399c22: 9100         	str	r1, [sp]
  399c24: 9b01         	ldr	r3, [sp, #0x4]
  399c26: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  399c2a: 681b         	ldr	r3, [r3]
  399c2c: f503 73fc    	add.w	r3, r3, #0x1f8
  399c30: 681c         	ldr	r4, [r3]
  399c32: 9b01         	ldr	r3, [sp, #0x4]
  399c34: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  399c38: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x399c58 <LobbyRow::setSkill(int)+0x3c>
  399c3a: 447b         	add	r3, pc
  399c3c: 4618         	mov	r0, r3
  399c3e: 9900         	ldr	r1, [sp]
  399c40: f1ff ff66    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1ffecc
  399c44: 4603         	mov	r3, r0
  399c46: 4618         	mov	r0, r3
  399c48: f1ff fe6e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1ffcdc
  399c4c: 4603         	mov	r3, r0
  399c4e: 4628         	mov	r0, r5
  399c50: 4619         	mov	r1, r3
  399c52: 47a0         	blx	r4
  399c54: b003         	add	sp, #0xc
  399c56: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x399c57); words below are literal-pool data ---
  399c58: 82ca         	strh	r2, [r1, #0x16]
  399c5a: 0043         	lsls	r3, r0, #0x1

// ==== LobbyRow::updateState
//      file offset 0x399c5c (= ELF address; Ghidra 0x3a9c5c), 432 bytes, Thumb-2
  399c5c: b530         	push	{r4, r5, lr}
  399c5e: b085         	sub	sp, #0x14
  399c60: 9001         	str	r0, [sp, #0x4]
  399c62: 9b01         	ldr	r3, [sp, #0x4]
  399c64: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  399c68: 2b02         	cmp	r3, #0x2
  399c6a: d034         	beq	0x399cd6 <LobbyRow::updateState()+0x7a> @ imm = #0x68
  399c6c: 2b03         	cmp	r3, #0x3
  399c6e: d002         	beq	0x399c76 <LobbyRow::updateState()+0x1a> @ imm = #0x4
  399c70: 2b01         	cmp	r3, #0x1
  399c72: d060         	beq	0x399d36 <LobbyRow::updateState()+0xda> @ imm = #0xc0
  399c74: e08f         	b	0x399d96 <LobbyRow::updateState()+0x13a> @ imm = #0x11e
  399c76: 9b01         	ldr	r3, [sp, #0x4]
  399c78: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399c7c: 681b         	ldr	r3, [r3]
  399c7e: f503 73fc    	add.w	r3, r3, #0x1f8
  399c82: 681b         	ldr	r3, [r3]
  399c84: 9a01         	ldr	r2, [sp, #0x4]
  399c86: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  399c8a: 4610         	mov	r0, r2
  399c8c: 4a5b         	ldr	r2, [pc, #0x16c]        @ 0x399dfc <LobbyRow::updateState()+0x1a0>
  399c8e: 447a         	add	r2, pc
  399c90: 4611         	mov	r1, r2
  399c92: 4798         	blx	r3
  399c94: 9b01         	ldr	r3, [sp, #0x4]
  399c96: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399c9a: 681b         	ldr	r3, [r3]
  399c9c: f503 73de    	add.w	r3, r3, #0x1bc
  399ca0: 681c         	ldr	r4, [r3]
  399ca2: 9b01         	ldr	r3, [sp, #0x4]
  399ca4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399ca8: 461d         	mov	r5, r3
  399caa: 2000         	movs	r0, #0x0
  399cac: 21ff         	movs	r1, #0xff
  399cae: 2200         	movs	r2, #0x0
  399cb0: f7fd f9a4    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x2cb8
  399cb4: 4603         	mov	r3, r0
  399cb6: 461a         	mov	r2, r3
  399cb8: f88d 200c    	strb.w	r2, [sp, #0xc]
  399cbc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  399cc0: f88d 200d    	strb.w	r2, [sp, #0xd]
  399cc4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  399cc8: f88d 300e    	strb.w	r3, [sp, #0xe]
  399ccc: ab03         	add	r3, sp, #0xc
  399cce: 4628         	mov	r0, r5
  399cd0: 4619         	mov	r1, r3
  399cd2: 47a0         	blx	r4
  399cd4: e08f         	b	0x399df6 <LobbyRow::updateState()+0x19a> @ imm = #0x11e
  399cd6: 9b01         	ldr	r3, [sp, #0x4]
  399cd8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399cdc: 681b         	ldr	r3, [r3]
  399cde: f503 73fc    	add.w	r3, r3, #0x1f8
  399ce2: 681b         	ldr	r3, [r3]
  399ce4: 9a01         	ldr	r2, [sp, #0x4]
  399ce6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  399cea: 4610         	mov	r0, r2
  399cec: 4a44         	ldr	r2, [pc, #0x110]        @ 0x399e00 <LobbyRow::updateState()+0x1a4>
  399cee: 447a         	add	r2, pc
  399cf0: 4611         	mov	r1, r2
  399cf2: 4798         	blx	r3
  399cf4: 9b01         	ldr	r3, [sp, #0x4]
  399cf6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399cfa: 681b         	ldr	r3, [r3]
  399cfc: f503 73de    	add.w	r3, r3, #0x1bc
  399d00: 681c         	ldr	r4, [r3]
  399d02: 9b01         	ldr	r3, [sp, #0x4]
  399d04: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399d08: 461d         	mov	r5, r3
  399d0a: 20ff         	movs	r0, #0xff
  399d0c: 21ff         	movs	r1, #0xff
  399d0e: 2200         	movs	r2, #0x0
  399d10: f7fd f974    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x2d18
  399d14: 4603         	mov	r3, r0
  399d16: 461a         	mov	r2, r3
  399d18: f88d 200c    	strb.w	r2, [sp, #0xc]
  399d1c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  399d20: f88d 200d    	strb.w	r2, [sp, #0xd]
  399d24: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  399d28: f88d 300e    	strb.w	r3, [sp, #0xe]
  399d2c: ab03         	add	r3, sp, #0xc
  399d2e: 4628         	mov	r0, r5
  399d30: 4619         	mov	r1, r3
  399d32: 47a0         	blx	r4
  399d34: e05f         	b	0x399df6 <LobbyRow::updateState()+0x19a> @ imm = #0xbe
  399d36: 9b01         	ldr	r3, [sp, #0x4]
  399d38: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399d3c: 681b         	ldr	r3, [r3]
  399d3e: f503 73fc    	add.w	r3, r3, #0x1f8
  399d42: 681b         	ldr	r3, [r3]
  399d44: 9a01         	ldr	r2, [sp, #0x4]
  399d46: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  399d4a: 4610         	mov	r0, r2
  399d4c: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x399e04 <LobbyRow::updateState()+0x1a8>
  399d4e: 447a         	add	r2, pc
  399d50: 4611         	mov	r1, r2
  399d52: 4798         	blx	r3
  399d54: 9b01         	ldr	r3, [sp, #0x4]
  399d56: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399d5a: 681b         	ldr	r3, [r3]
  399d5c: f503 73de    	add.w	r3, r3, #0x1bc
  399d60: 681c         	ldr	r4, [r3]
  399d62: 9b01         	ldr	r3, [sp, #0x4]
  399d64: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399d68: 461d         	mov	r5, r3
  399d6a: 20ff         	movs	r0, #0xff
  399d6c: 2100         	movs	r1, #0x0
  399d6e: 2200         	movs	r2, #0x0
  399d70: f7fd f944    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x2d78
  399d74: 4603         	mov	r3, r0
  399d76: 461a         	mov	r2, r3
  399d78: f88d 200c    	strb.w	r2, [sp, #0xc]
  399d7c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  399d80: f88d 200d    	strb.w	r2, [sp, #0xd]
  399d84: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  399d88: f88d 300e    	strb.w	r3, [sp, #0xe]
  399d8c: ab03         	add	r3, sp, #0xc
  399d8e: 4628         	mov	r0, r5
  399d90: 4619         	mov	r1, r3
  399d92: 47a0         	blx	r4
  399d94: e02f         	b	0x399df6 <LobbyRow::updateState()+0x19a> @ imm = #0x5e
  399d96: 9b01         	ldr	r3, [sp, #0x4]
  399d98: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399d9c: 681b         	ldr	r3, [r3]
  399d9e: f503 73fc    	add.w	r3, r3, #0x1f8
  399da2: 681b         	ldr	r3, [r3]
  399da4: 9a01         	ldr	r2, [sp, #0x4]
  399da6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  399daa: 4610         	mov	r0, r2
  399dac: 4a16         	ldr	r2, [pc, #0x58]         @ 0x399e08 <LobbyRow::updateState()+0x1ac>
  399dae: 447a         	add	r2, pc
  399db0: 4611         	mov	r1, r2
  399db2: 4798         	blx	r3
  399db4: 9b01         	ldr	r3, [sp, #0x4]
  399db6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399dba: 681b         	ldr	r3, [r3]
  399dbc: f503 73de    	add.w	r3, r3, #0x1bc
  399dc0: 681c         	ldr	r4, [r3]
  399dc2: 9b01         	ldr	r3, [sp, #0x4]
  399dc4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  399dc8: 461d         	mov	r5, r3
  399dca: 20b4         	movs	r0, #0xb4
  399dcc: 21b4         	movs	r1, #0xb4
  399dce: 22b4         	movs	r2, #0xb4
  399dd0: f7fd f914    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x2dd8
  399dd4: 4603         	mov	r3, r0
  399dd6: 461a         	mov	r2, r3
  399dd8: f88d 200c    	strb.w	r2, [sp, #0xc]
  399ddc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  399de0: f88d 200d    	strb.w	r2, [sp, #0xd]
  399de4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  399de8: f88d 300e    	strb.w	r3, [sp, #0xe]
  399dec: ab03         	add	r3, sp, #0xc
  399dee: 4628         	mov	r0, r5
  399df0: 4619         	mov	r1, r3
  399df2: 47a0         	blx	r4
  399df4: bf00         	nop
  399df6: b005         	add	sp, #0x14
  399df8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x399df9); words below are literal-pool data ---
  399dfa: bf00         	nop
  399dfc: 827a         	strh	r2, [r7, #0x12]
  399dfe: 0043         	lsls	r3, r0, #0x1
  399e00: 822a         	strh	r2, [r5, #0x10]
  399e02: 0043         	lsls	r3, r0, #0x1
  399e04: 81da         	strh	r2, [r3, #0xe]
  399e06: 0043         	lsls	r3, r0, #0x1
  399e08: 8186         	strh	r6, [r0, #0xc]
  399e0a: 0043         	lsls	r3, r0, #0x1
