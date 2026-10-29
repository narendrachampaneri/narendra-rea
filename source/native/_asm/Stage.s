// Stage: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 31 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Stage.cpp

// ==== Stage::Stage
//      file offset 0x3faecc (= ELF address; Ghidra 0x40aecc), 148 bytes, Thumb-2
  3faecc: b510         	push	{r4, lr}
  3faece: b082         	sub	sp, #0x8
  3faed0: 9001         	str	r0, [sp, #0x4]
  3faed2: 4c21         	ldr	r4, [pc, #0x84]         @ 0x3faf58 <Stage::Stage()+0x8c>
  3faed4: 447c         	add	r4, pc
  3faed6: 9b01         	ldr	r3, [sp, #0x4]
  3faed8: 4618         	mov	r0, r3
  3faeda: f1b2 f8bf    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x1b217e
  3faede: 9b01         	ldr	r3, [sp, #0x4]
  3faee0: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3faf5c <Stage::Stage()+0x90>
  3faee2: 58a2         	ldr	r2, [r4, r2]
  3faee4: 3208         	adds	r2, #0x8
  3faee6: 601a         	str	r2, [r3]
  3faee8: 9b01         	ldr	r3, [sp, #0x4]
  3faeea: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x3faf5c <Stage::Stage()+0x90>
  3faeec: 58a2         	ldr	r2, [r4, r2]
  3faeee: f502 721b    	add.w	r2, r2, #0x26c
  3faef2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3faef6: 9b01         	ldr	r3, [sp, #0x4]
  3faef8: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3faf5c <Stage::Stage()+0x90>
  3faefa: 58a2         	ldr	r2, [r4, r2]
  3faefc: f502 7227    	add.w	r2, r2, #0x29c
  3faf00: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3faf04: 9b01         	ldr	r3, [sp, #0x4]
  3faf06: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3faf5c <Stage::Stage()+0x90>
  3faf08: 58a2         	ldr	r2, [r4, r2]
  3faf0a: f502 722a    	add.w	r2, r2, #0x2a8
  3faf0e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3faf12: 9b01         	ldr	r3, [sp, #0x4]
  3faf14: f503 7390    	add.w	r3, r3, #0x120
  3faf18: 4618         	mov	r0, r3
  3faf1a: f198 f8ad    	bl	0x593078 <cocos2d::CCSize::CCSize()> @ imm = #0x19815a
  3faf1e: 9b01         	ldr	r3, [sp, #0x4]
  3faf20: f503 7394    	add.w	r3, r3, #0x128
  3faf24: 4618         	mov	r0, r3
  3faf26: f197 fed5    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x197daa
  3faf2a: 9b01         	ldr	r3, [sp, #0x4]
  3faf2c: f503 739a    	add.w	r3, r3, #0x134
  3faf30: 4618         	mov	r0, r3
  3faf32: f197 fecf    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x197d9e
  3faf36: 9b01         	ldr	r3, [sp, #0x4]
  3faf38: f503 739e    	add.w	r3, r3, #0x13c
  3faf3c: 4618         	mov	r0, r3
  3faf3e: f197 fec9    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x197d92
  3faf42: 9b01         	ldr	r3, [sp, #0x4]
  3faf44: e005         	b	0x3faf52 <Stage::Stage()+0x86> @ imm = #0xa
  3faf46: 9b01         	ldr	r3, [sp, #0x4]
  3faf48: 4618         	mov	r0, r3
  3faf4a: f1b2 f8ff    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1b21fe
  3faf4e: f38d f8ad    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38d15a
  3faf52: 4618         	mov	r0, r3
  3faf54: b002         	add	sp, #0x8
  3faf56: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3faf57); words below are literal-pool data ---
  3faf58: 7b34         	ldrb	r4, [r6, #0xc]
  3faf5a: 0053         	lsls	r3, r2, #0x1
  3faf5c: df40         	svc	#0x40
  3faf5e: ffff b570    	<unknown>

// ==== Stage::init
//      file offset 0x3faf60 (= ELF address; Ghidra 0x40af60), 504 bytes, Thumb-2
  3faf60: b570         	push	{r4, r5, r6, lr}
  3faf62: b086         	sub	sp, #0x18
  3faf64: 9001         	str	r0, [sp, #0x4]
  3faf66: 4c75         	ldr	r4, [pc, #0x1d4]        @ 0x3fb13c <Stage::init()+0x1dc>
  3faf68: 447c         	add	r4, pc
  3faf6a: 9b01         	ldr	r3, [sp, #0x4]
  3faf6c: 4618         	mov	r0, r3
  3faf6e: f1b2 f943    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x1b2286
  3faf72: 4603         	mov	r3, r0
  3faf74: f88d 300f    	strb.w	r3, [sp, #0xf]
  3faf78: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3faf7c: f083 0301    	eor	r3, r3, #0x1
  3faf80: b2db         	uxtb	r3, r3
  3faf82: 2b00         	cmp	r3, #0x0
  3faf84: d001         	beq	0x3faf8a <Stage::init()+0x2a> @ imm = #0x2
  3faf86: 2300         	movs	r3, #0x0
  3faf88: e0d5         	b	0x3fb136 <Stage::init()+0x1d6> @ imm = #0x1aa
  3faf8a: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x3fb140 <Stage::init()+0x1e0>
  3faf8c: 58e3         	ldr	r3, [r4, r3]
  3faf8e: f64c 42cd    	movw	r2, #0xcccd
  3faf92: f6c3 62cc    	movt	r2, #0x3ecc
  3faf96: 601a         	str	r2, [r3]
  3faf98: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3fb144 <Stage::init()+0x1e4>
  3faf9a: 58e3         	ldr	r3, [r4, r3]
  3faf9c: 4618         	mov	r0, r3
  3faf9e: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3fb148 <Stage::init()+0x1e8>
  3fafa0: 447b         	add	r3, pc
  3fafa2: 4619         	mov	r1, r3
  3fafa4: f3ba ff64    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3baec8
  3fafa8: 9b01         	ldr	r3, [sp, #0x4]
  3fafaa: 2201         	movs	r2, #0x1
  3fafac: f883 2151    	strb.w	r2, [r3, #0x151]
  3fafb0: 4b66         	ldr	r3, [pc, #0x198]        @ 0x3fb14c <Stage::init()+0x1ec>
  3fafb2: 447b         	add	r3, pc
  3fafb4: 4618         	mov	r0, r3
  3fafb6: f1dd f9a5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1dd34a
  3fafba: 4602         	mov	r2, r0
  3fafbc: 9b01         	ldr	r3, [sp, #0x4]
  3fafbe: f8c3 2148    	str.w	r2, [r3, #0x148]
  3fafc2: 9b01         	ldr	r3, [sp, #0x4]
  3fafc4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fafc8: 4618         	mov	r0, r3
  3fafca: f19c ff8d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cf1a
  3fafce: 9b01         	ldr	r3, [sp, #0x4]
  3fafd0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fafd4: 681b         	ldr	r3, [r3]
  3fafd6: 337c         	adds	r3, #0x7c
  3fafd8: 681d         	ldr	r5, [r3]
  3fafda: 9b01         	ldr	r3, [sp, #0x4]
  3fafdc: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fafe0: ab04         	add	r3, sp, #0x10
  3fafe2: 4618         	mov	r0, r3
  3fafe4: f04f 517c    	mov.w	r1, #0x3f000000
  3fafe8: f04f 527c    	mov.w	r2, #0x3f000000
  3fafec: f197 fe80    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x197d00
  3faff0: ab04         	add	r3, sp, #0x10
  3faff2: 4630         	mov	r0, r6
  3faff4: 4619         	mov	r1, r3
  3faff6: 47a8         	blx	r5
  3faff8: 9b01         	ldr	r3, [sp, #0x4]
  3faffa: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3faffe: 681b         	ldr	r3, [r3]
  3fb000: f503 73d2    	add.w	r3, r3, #0x1a4
  3fb004: 681b         	ldr	r3, [r3]
  3fb006: 9a01         	ldr	r2, [sp, #0x4]
  3fb008: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3fb00c: 4610         	mov	r0, r2
  3fb00e: 21eb         	movs	r1, #0xeb
  3fb010: 4798         	blx	r3
  3fb012: f7ff ff23    	bl	0x3fae5c <LaserSight::create()> @ imm = #-0x1ba
  3fb016: 4602         	mov	r2, r0
  3fb018: 9b01         	ldr	r3, [sp, #0x4]
  3fb01a: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3fb01e: 9b01         	ldr	r3, [sp, #0x4]
  3fb020: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fb024: 4618         	mov	r0, r3
  3fb026: f19c ff5f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cebe
  3fb02a: 9b01         	ldr	r3, [sp, #0x4]
  3fb02c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fb030: 681b         	ldr	r3, [r3]
  3fb032: 337c         	adds	r3, #0x7c
  3fb034: 681d         	ldr	r5, [r3]
  3fb036: 9b01         	ldr	r3, [sp, #0x4]
  3fb038: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fb03c: 461e         	mov	r6, r3
  3fb03e: ab04         	add	r3, sp, #0x10
  3fb040: 4618         	mov	r0, r3
  3fb042: f04f 517c    	mov.w	r1, #0x3f000000
  3fb046: f04f 527c    	mov.w	r2, #0x3f000000
  3fb04a: f197 fe51    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x197ca2
  3fb04e: ab04         	add	r3, sp, #0x10
  3fb050: 4630         	mov	r0, r6
  3fb052: 4619         	mov	r1, r3
  3fb054: 47a8         	blx	r5
  3fb056: 9b01         	ldr	r3, [sp, #0x4]
  3fb058: 681b         	ldr	r3, [r3]
  3fb05a: f503 7300    	add.w	r3, r3, #0x200
  3fb05e: 681b         	ldr	r3, [r3]
  3fb060: 9801         	ldr	r0, [sp, #0x4]
  3fb062: 4798         	blx	r3
  3fb064: ab03         	add	r3, sp, #0xc
  3fb066: 4618         	mov	r0, r3
  3fb068: f38f f9c4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38f388
  3fb06c: aa04         	add	r2, sp, #0x10
  3fb06e: ab03         	add	r3, sp, #0xc
  3fb070: 4610         	mov	r0, r2
  3fb072: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x3fb150 <Stage::init()+0x1f0>
  3fb074: 447a         	add	r2, pc
  3fb076: 4611         	mov	r1, r2
  3fb078: 461a         	mov	r2, r3
  3fb07a: f3bb fcf1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bb9e2
  3fb07e: ab04         	add	r3, sp, #0x10
  3fb080: 4618         	mov	r0, r3
  3fb082: f751 f907    	bl	0x34c294 <ItemPurchase::isItemPurchased(std::string)> @ imm = #-0xaedf2
  3fb086: 4603         	mov	r3, r0
  3fb088: 461d         	mov	r5, r3
  3fb08a: ab04         	add	r3, sp, #0x10
  3fb08c: 4618         	mov	r0, r3
  3fb08e: f3ba fc41    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ba882
  3fb092: ab03         	add	r3, sp, #0xc
  3fb094: 4618         	mov	r0, r3
  3fb096: f38f f9b1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38f362
  3fb09a: 2d00         	cmp	r5, #0x0
  3fb09c: d010         	beq	0x3fb0c0 <Stage::init()+0x160> @ imm = #0x20
  3fb09e: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3fb154 <Stage::init()+0x1f4>
  3fb0a0: 58e3         	ldr	r3, [r4, r3]
  3fb0a2: 681b         	ldr	r3, [r3]
  3fb0a4: 681b         	ldr	r3, [r3]
  3fb0a6: 33cc         	adds	r3, #0xcc
  3fb0a8: 681b         	ldr	r3, [r3]
  3fb0aa: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3fb154 <Stage::init()+0x1f4>
  3fb0ac: 58a2         	ldr	r2, [r4, r2]
  3fb0ae: 6812         	ldr	r2, [r2]
  3fb0b0: 4611         	mov	r1, r2
  3fb0b2: 9a01         	ldr	r2, [sp, #0x4]
  3fb0b4: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3fb0b8: 4608         	mov	r0, r1
  3fb0ba: 4611         	mov	r1, r2
  3fb0bc: 2201         	movs	r2, #0x1
  3fb0be: 4798         	blx	r3
  3fb0c0: 9b01         	ldr	r3, [sp, #0x4]
  3fb0c2: f04f 0200    	mov.w	r2, #0x0
  3fb0c6: f8c3 2154    	str.w	r2, [r3, #0x154]
  3fb0ca: 9b01         	ldr	r3, [sp, #0x4]
  3fb0cc: f04f 0200    	mov.w	r2, #0x0
  3fb0d0: f8c3 2158    	str.w	r2, [r3, #0x158]
  3fb0d4: 9b01         	ldr	r3, [sp, #0x4]
  3fb0d6: f04f 0200    	mov.w	r2, #0x0
  3fb0da: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3fb0de: 9b01         	ldr	r3, [sp, #0x4]
  3fb0e0: f04f 0200    	mov.w	r2, #0x0
  3fb0e4: f8c3 2160    	str.w	r2, [r3, #0x160]
  3fb0e8: 9b01         	ldr	r3, [sp, #0x4]
  3fb0ea: 2200         	movs	r2, #0x0
  3fb0ec: f883 2164    	strb.w	r2, [r3, #0x164]
  3fb0f0: 9b01         	ldr	r3, [sp, #0x4]
  3fb0f2: f04f 0200    	mov.w	r2, #0x0
  3fb0f6: f8c3 2168    	str.w	r2, [r3, #0x168]
  3fb0fa: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3fb154 <Stage::init()+0x1f4>
  3fb0fc: 58e3         	ldr	r3, [r4, r3]
  3fb0fe: 681b         	ldr	r3, [r3]
  3fb100: 681b         	ldr	r3, [r3]
  3fb102: 33cc         	adds	r3, #0xcc
  3fb104: 681b         	ldr	r3, [r3]
  3fb106: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3fb154 <Stage::init()+0x1f4>
  3fb108: 58a2         	ldr	r2, [r4, r2]
  3fb10a: 6812         	ldr	r2, [r2]
  3fb10c: 4611         	mov	r1, r2
  3fb10e: 9a01         	ldr	r2, [sp, #0x4]
  3fb110: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3fb114: 4608         	mov	r0, r1
  3fb116: 4611         	mov	r1, r2
  3fb118: 2206         	movs	r2, #0x6
  3fb11a: 4798         	blx	r3
  3fb11c: 2301         	movs	r3, #0x1
  3fb11e: e00a         	b	0x3fb136 <Stage::init()+0x1d6> @ imm = #0x14
  3fb120: ab04         	add	r3, sp, #0x10
  3fb122: 4618         	mov	r0, r3
  3fb124: f3ba fbf6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ba7ec
  3fb128: e7ff         	b	0x3fb12a <Stage::init()+0x1ca> @ imm = #-0x2
  3fb12a: ab03         	add	r3, sp, #0xc
  3fb12c: 4618         	mov	r0, r3
  3fb12e: f38f f965    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38f2ca
  3fb132: f38c ffbb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38cf76
  3fb136: 4618         	mov	r0, r3
  3fb138: b006         	add	sp, #0x18
  3fb13a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fb13b); words below are literal-pool data ---
  3fb13c: 7aa0         	ldrb	r0, [r4, #0xa]
  3fb13e: 0053         	lsls	r3, r2, #0x1
  3fb140: d748         	bvc	0x3fb1d4 <Stage::~Stage()+0x7c> @ imm = #0x90
  3fb142: ffff dd10    	<unknown>
  3fb146: ffff e55c    	vsli.32	q15, q6, #0x1f
  3fb14a: 003d         	movs	r5, r7
  3fb14c: e54e         	b	0x3fabec <SplashLayer::inviteCheck(float)+0xe10> @ imm = #-0x564
  3fb14e: 003d         	movs	r5, r7
  3fb150: e494         	b	0x3faa7c <SplashLayer::inviteCheck(float)+0xca0> @ imm = #-0x6d8
  3fb152: 003d         	movs	r5, r7
  3fb154: d744         	bvc	0x3fb1e0 <Stage::~Stage()+0x88> @ imm = #0x88
  3fb156: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Stage::~Stage
//      file offset 0x3fb158 (= ELF address; Ghidra 0x40b158), 380 bytes, Thumb-2
  3fb158: b510         	push	{r4, lr}
  3fb15a: b082         	sub	sp, #0x8
  3fb15c: 9001         	str	r0, [sp, #0x4]
  3fb15e: 4c57         	ldr	r4, [pc, #0x15c]        @ 0x3fb2bc <Stage::~Stage()+0x164>
  3fb160: 447c         	add	r4, pc
  3fb162: 9b01         	ldr	r3, [sp, #0x4]
  3fb164: 4a56         	ldr	r2, [pc, #0x158]        @ 0x3fb2c0 <Stage::~Stage()+0x168>
  3fb166: 58a2         	ldr	r2, [r4, r2]
  3fb168: 3208         	adds	r2, #0x8
  3fb16a: 601a         	str	r2, [r3]
  3fb16c: 9b01         	ldr	r3, [sp, #0x4]
  3fb16e: 4a54         	ldr	r2, [pc, #0x150]        @ 0x3fb2c0 <Stage::~Stage()+0x168>
  3fb170: 58a2         	ldr	r2, [r4, r2]
  3fb172: f502 721b    	add.w	r2, r2, #0x26c
  3fb176: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3fb17a: 9b01         	ldr	r3, [sp, #0x4]
  3fb17c: 4a50         	ldr	r2, [pc, #0x140]        @ 0x3fb2c0 <Stage::~Stage()+0x168>
  3fb17e: 58a2         	ldr	r2, [r4, r2]
  3fb180: f502 7227    	add.w	r2, r2, #0x29c
  3fb184: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3fb188: 9b01         	ldr	r3, [sp, #0x4]
  3fb18a: 4a4d         	ldr	r2, [pc, #0x134]        @ 0x3fb2c0 <Stage::~Stage()+0x168>
  3fb18c: 58a2         	ldr	r2, [r4, r2]
  3fb18e: f502 722a    	add.w	r2, r2, #0x2a8
  3fb192: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3fb196: 9b01         	ldr	r3, [sp, #0x4]
  3fb198: 4618         	mov	r0, r3
  3fb19a: f195 fa47    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x19548e
  3fb19e: f1e5 fa87    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e550e
  3fb1a2: 4602         	mov	r2, r0
  3fb1a4: 9b01         	ldr	r3, [sp, #0x4]
  3fb1a6: 4610         	mov	r0, r2
  3fb1a8: 4619         	mov	r1, r3
  3fb1aa: f1e5 fbb9    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x1e5772
  3fb1ae: 4b45         	ldr	r3, [pc, #0x114]        @ 0x3fb2c4 <Stage::~Stage()+0x16c>
  3fb1b0: 58e3         	ldr	r3, [r4, r3]
  3fb1b2: 681b         	ldr	r3, [r3]
  3fb1b4: 681b         	ldr	r3, [r3]
  3fb1b6: f503 7380    	add.w	r3, r3, #0x100
  3fb1ba: 681b         	ldr	r3, [r3]
  3fb1bc: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3fb2c4 <Stage::~Stage()+0x16c>
  3fb1be: 58a2         	ldr	r2, [r4, r2]
  3fb1c0: 6812         	ldr	r2, [r2]
  3fb1c2: 4610         	mov	r0, r2
  3fb1c4: 4798         	blx	r3
  3fb1c6: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3fb2c8 <Stage::~Stage()+0x170>
  3fb1c8: 58e3         	ldr	r3, [r4, r3]
  3fb1ca: 681b         	ldr	r3, [r3]
  3fb1cc: 681b         	ldr	r3, [r3]
  3fb1ce: f503 7380    	add.w	r3, r3, #0x100
  3fb1d2: 681b         	ldr	r3, [r3]
  3fb1d4: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3fb2c8 <Stage::~Stage()+0x170>
  3fb1d6: 58a2         	ldr	r2, [r4, r2]
  3fb1d8: 6812         	ldr	r2, [r2]
  3fb1da: 4610         	mov	r0, r2
  3fb1dc: 4798         	blx	r3
  3fb1de: 9b01         	ldr	r3, [sp, #0x4]
  3fb1e0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb1e4: 4618         	mov	r0, r3
  3fb1e6: f19c fe67    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19ccce
  3fb1ea: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x3fb2cc <Stage::~Stage()+0x174>
  3fb1ec: 58e3         	ldr	r3, [r4, r3]
  3fb1ee: 681b         	ldr	r3, [r3]
  3fb1f0: 4618         	mov	r0, r3
  3fb1f2: f19c fe61    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19ccc2
  3fb1f6: 9b01         	ldr	r3, [sp, #0x4]
  3fb1f8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fb1fc: 4618         	mov	r0, r3
  3fb1fe: f740 fd57    	bl	0x33bcb0 <HUD::removeAllDependencies()> @ imm = #-0xbf552
  3fb202: 9b01         	ldr	r3, [sp, #0x4]
  3fb204: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fb208: 4618         	mov	r0, r3
  3fb20a: f19c fe55    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19ccaa
  3fb20e: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x3fb2d0 <Stage::~Stage()+0x178>
  3fb210: 58e3         	ldr	r3, [r4, r3]
  3fb212: 681b         	ldr	r3, [r3]
  3fb214: 4618         	mov	r0, r3
  3fb216: f19c fe4f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc9e
  3fb21a: 9b01         	ldr	r3, [sp, #0x4]
  3fb21c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fb220: 4618         	mov	r0, r3
  3fb222: f01e fe5d    	bl	0x419ee0 <WeaponManager::removeAllWeaponsFromSpace()> @ imm = #0x1ecba
  3fb226: 9b01         	ldr	r3, [sp, #0x4]
  3fb228: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fb22c: 4618         	mov	r0, r3
  3fb22e: f19c fe43    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc86
  3fb232: 9b01         	ldr	r3, [sp, #0x4]
  3fb234: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3fb238: 4618         	mov	r0, r3
  3fb23a: f19c fe3d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc7a
  3fb23e: 9b01         	ldr	r3, [sp, #0x4]
  3fb240: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3fb244: 4618         	mov	r0, r3
  3fb246: f19c fe37    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc6e
  3fb24a: 9b01         	ldr	r3, [sp, #0x4]
  3fb24c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fb250: 4618         	mov	r0, r3
  3fb252: f19c fe31    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc62
  3fb256: 9b01         	ldr	r3, [sp, #0x4]
  3fb258: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fb25c: 4618         	mov	r0, r3
  3fb25e: f19c fe2b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc56
  3fb262: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3fb2c4 <Stage::~Stage()+0x16c>
  3fb264: 58e3         	ldr	r3, [r4, r3]
  3fb266: 681b         	ldr	r3, [r3]
  3fb268: 4618         	mov	r0, r3
  3fb26a: f19c fe25    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc4a
  3fb26e: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3fb2c8 <Stage::~Stage()+0x170>
  3fb270: 58e3         	ldr	r3, [r4, r3]
  3fb272: 681b         	ldr	r3, [r3]
  3fb274: 4618         	mov	r0, r3
  3fb276: f19c fe1f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc3e
  3fb27a: 9b01         	ldr	r3, [sp, #0x4]
  3fb27c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fb280: 4618         	mov	r0, r3
  3fb282: f19c fe19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19cc32
  3fb286: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3fb2c4 <Stage::~Stage()+0x16c>
  3fb288: 58e3         	ldr	r3, [r4, r3]
  3fb28a: 2200         	movs	r2, #0x0
  3fb28c: 601a         	str	r2, [r3]
  3fb28e: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3fb2d0 <Stage::~Stage()+0x178>
  3fb290: 58e3         	ldr	r3, [r4, r3]
  3fb292: 2200         	movs	r2, #0x0
  3fb294: 601a         	str	r2, [r3]
  3fb296: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3fb2cc <Stage::~Stage()+0x174>
  3fb298: 58e3         	ldr	r3, [r4, r3]
  3fb29a: 2200         	movs	r2, #0x0
  3fb29c: 601a         	str	r2, [r3]
  3fb29e: 9b01         	ldr	r3, [sp, #0x4]
  3fb2a0: 4618         	mov	r0, r3
  3fb2a2: f1b1 ff53    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x1b1ea6
  3fb2a6: 2300         	movs	r3, #0x0
  3fb2a8: 2b00         	cmp	r3, #0x0
  3fb2aa: d002         	beq	0x3fb2b2 <Stage::~Stage()+0x15a> @ imm = #0x4
  3fb2ac: 9801         	ldr	r0, [sp, #0x4]
  3fb2ae: f38c fef9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38cdf2
  3fb2b2: 9b01         	ldr	r3, [sp, #0x4]
  3fb2b4: 4618         	mov	r0, r3
  3fb2b6: b002         	add	sp, #0x8
  3fb2b8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fb2b9); words below are literal-pool data ---
  3fb2ba: bf00         	nop
  3fb2bc: 78a8         	ldrb	r0, [r5, #0x2]
  3fb2be: 0053         	lsls	r3, r2, #0x1
  3fb2c0: df40         	svc	#0x40
  3fb2c2: ffff d744    	<unknown>
  3fb2c6: ffff d720    	<unknown>
  3fb2ca: ffff df04    	<unknown>
  3fb2ce: ffff d910    	vqshrn.u64	d29, q0, #0x1
  3fb2d2: ffff f1a0    	<unknown>

// ==== Stage::~Stage
//      file offset 0x3fb2d4 (= ELF address; Ghidra 0x40b2d4), 8 bytes, Thumb-2
  3fb2d4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3fb2d8: f7ff bf3e    	b.w	0x3fb158 <Stage::~Stage()> @ imm = #-0x184

// ==== Stage::~Stage
//      file offset 0x3fb2dc (= ELF address; Ghidra 0x40b2dc), 28 bytes, Thumb-2
  3fb2dc: b500         	push	{lr}
  3fb2de: b083         	sub	sp, #0xc
  3fb2e0: 9001         	str	r0, [sp, #0x4]
  3fb2e2: 9801         	ldr	r0, [sp, #0x4]
  3fb2e4: f7ff ff38    	bl	0x3fb158 <Stage::~Stage()> @ imm = #-0x190
  3fb2e8: 9801         	ldr	r0, [sp, #0x4]
  3fb2ea: f38c fedb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38cdb6
  3fb2ee: 9b01         	ldr	r3, [sp, #0x4]
  3fb2f0: 4618         	mov	r0, r3
  3fb2f2: b003         	add	sp, #0xc
  3fb2f4: f85d fb04    	ldr	pc, [sp], #4

// ==== Stage::~Stage
//      file offset 0x3fb2f8 (= ELF address; Ghidra 0x40b2f8), 8 bytes, Thumb-2
  3fb2f8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3fb2fc: f7ff bfee    	b.w	0x3fb2dc <Stage::~Stage()> @ imm = #-0x24

// ==== Stage::setupStage
//      file offset 0x3fb300 (= ELF address; Ghidra 0x40b300), 1412 bytes, Thumb-2
  3fb300: b570         	push	{r4, r5, r6, lr}
  3fb302: b096         	sub	sp, #0x58
  3fb304: 9003         	str	r0, [sp, #0xc]
  3fb306: f8df 4428    	ldr.w	r4, [pc, #0x428]        @ 0x3fb730 <Stage::setupStage()+0x430>
  3fb30a: 447c         	add	r4, pc
  3fb30c: 9b03         	ldr	r3, [sp, #0xc]
  3fb30e: f503 7590    	add.w	r5, r3, #0x120
  3fb312: f1a0 f92f    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1a025e
  3fb316: 4603         	mov	r3, r0
  3fb318: aa14         	add	r2, sp, #0x50
  3fb31a: 4610         	mov	r0, r2
  3fb31c: 4619         	mov	r1, r3
  3fb31e: f1a0 ff9d    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x1a0f3a
  3fb322: ab14         	add	r3, sp, #0x50
  3fb324: 4628         	mov	r0, r5
  3fb326: 4619         	mov	r1, r3
  3fb328: f197 fee2    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x197dc4
  3fb32c: f1b1 ff96    	bl	0x5ad25c <cocos2d::CCLayer::create()> @ imm = #0x1b1f2c
  3fb330: 4603         	mov	r3, r0
  3fb332: 461a         	mov	r2, r3
  3fb334: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x3fb734 <Stage::setupStage()+0x434>
  3fb336: 58e3         	ldr	r3, [r4, r3]
  3fb338: 601a         	str	r2, [r3]
  3fb33a: f1b1 ff8f    	bl	0x5ad25c <cocos2d::CCLayer::create()> @ imm = #0x1b1f1e
  3fb33e: 4603         	mov	r3, r0
  3fb340: 461a         	mov	r2, r3
  3fb342: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x3fb738 <Stage::setupStage()+0x438>
  3fb344: 58e3         	ldr	r3, [r4, r3]
  3fb346: 601a         	str	r2, [r3]
  3fb348: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x3fb734 <Stage::setupStage()+0x434>
  3fb34a: 58e3         	ldr	r3, [r4, r3]
  3fb34c: 681b         	ldr	r3, [r3]
  3fb34e: 4618         	mov	r0, r3
  3fb350: f19c fdca    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cb94
  3fb354: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x3fb738 <Stage::setupStage()+0x438>
  3fb356: 58e3         	ldr	r3, [r4, r3]
  3fb358: 681b         	ldr	r3, [r3]
  3fb35a: 4618         	mov	r0, r3
  3fb35c: f19c fdc4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cb88
  3fb360: f7ff fd0c    	bl	0x3fad7c <HUD::create()> @ imm = #-0x5e8
  3fb364: 4602         	mov	r2, r0
  3fb366: 9b03         	ldr	r3, [sp, #0xc]
  3fb368: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3fb36c: 9b03         	ldr	r3, [sp, #0xc]
  3fb36e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fb372: 4618         	mov	r0, r3
  3fb374: f19c fdb8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cb70
  3fb378: 2014         	movs	r0, #0x14
  3fb37a: f38c faf3    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38c5e6
  3fb37e: 4605         	mov	r5, r0
  3fb380: 4628         	mov	r0, r5
  3fb382: f796 fa0f    	bl	0x3917a4 <PhysicsManager::PhysicsManager()> @ imm = #-0x69be2
  3fb386: 9b03         	ldr	r3, [sp, #0xc]
  3fb388: f8c3 5114    	str.w	r5, [r3, #0x114]
  3fb38c: 2064         	movs	r0, #0x64
  3fb38e: f38c fae9    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38c5d2
  3fb392: 4603         	mov	r3, r0
  3fb394: 461d         	mov	r5, r3
  3fb396: 4628         	mov	r0, r5
  3fb398: f763 fab0    	bl	0x35e8fc <MapManager::MapManager()> @ imm = #-0x9caa0
  3fb39c: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x3fb73c <Stage::setupStage()+0x43c>
  3fb39e: 58e3         	ldr	r3, [r4, r3]
  3fb3a0: 601d         	str	r5, [r3]
  3fb3a2: 4be6         	ldr	r3, [pc, #0x398]        @ 0x3fb73c <Stage::setupStage()+0x43c>
  3fb3a4: 58e3         	ldr	r3, [r4, r3]
  3fb3a6: 681b         	ldr	r3, [r3]
  3fb3a8: 4618         	mov	r0, r3
  3fb3aa: f763 fc1f    	bl	0x35ebec <MapManager::getGravityFactor()> @ imm = #-0x9c7c2
  3fb3ae: 4603         	mov	r3, r0
  3fb3b0: 461a         	mov	r2, r3
  3fb3b2: 4be3         	ldr	r3, [pc, #0x38c]        @ 0x3fb740 <Stage::setupStage()+0x440>
  3fb3b4: 58e3         	ldr	r3, [r4, r3]
  3fb3b6: 601a         	str	r2, [r3]
  3fb3b8: 2038         	movs	r0, #0x38
  3fb3ba: f38c fad3    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38c5a6
  3fb3be: 4603         	mov	r3, r0
  3fb3c0: 461d         	mov	r5, r3
  3fb3c2: 4628         	mov	r0, r5
  3fb3c4: f7f0 fb20    	bl	0x3eba08 <SoldierManager::SoldierManager()> @ imm = #-0xf9c0
  3fb3c8: 4bde         	ldr	r3, [pc, #0x378]        @ 0x3fb744 <Stage::setupStage()+0x444>
  3fb3ca: 58e3         	ldr	r3, [r4, r3]
  3fb3cc: 601d         	str	r5, [r3]
  3fb3ce: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x3fb744 <Stage::setupStage()+0x444>
  3fb3d0: 58e3         	ldr	r3, [r4, r3]
  3fb3d2: 681b         	ldr	r3, [r3]
  3fb3d4: 4618         	mov	r0, r3
  3fb3d6: f7f1 fa13    	bl	0x3ec800 <SoldierManager::spawnPlayer()> @ imm = #-0xebda
  3fb3da: 2030         	movs	r0, #0x30
  3fb3dc: f38c fac2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38c584
  3fb3e0: 4605         	mov	r5, r0
  3fb3e2: 4628         	mov	r0, r5
  3fb3e4: f7b8 f892    	bl	0x3b350c <ProjectileManager::ProjectileManager()> @ imm = #-0x47edc
  3fb3e8: 9b03         	ldr	r3, [sp, #0xc]
  3fb3ea: f8c3 5118    	str.w	r5, [r3, #0x118]
  3fb3ee: 204c         	movs	r0, #0x4c
  3fb3f0: f38c fab8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38c570
  3fb3f4: 4605         	mov	r5, r0
  3fb3f6: 4628         	mov	r0, r5
  3fb3f8: f01e fb94    	bl	0x419b24 <WeaponManager::WeaponManager()> @ imm = #0x1e728
  3fb3fc: 9b03         	ldr	r3, [sp, #0xc]
  3fb3fe: f8c3 5110    	str.w	r5, [r3, #0x110]
  3fb402: f7ff fcf3    	bl	0x3fadec <EffectsManager::create()> @ imm = #-0x61a
  3fb406: 4602         	mov	r2, r0
  3fb408: 9b03         	ldr	r3, [sp, #0xc]
  3fb40a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3fb40e: 9b03         	ldr	r3, [sp, #0xc]
  3fb410: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3fb414: 4618         	mov	r0, r3
  3fb416: f19c fd67    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19cace
  3fb41a: 9b03         	ldr	r3, [sp, #0xc]
  3fb41c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3fb420: 4ac9         	ldr	r2, [pc, #0x324]        @ 0x3fb748 <Stage::setupStage()+0x448>
  3fb422: 58a2         	ldr	r2, [r4, r2]
  3fb424: 7812         	ldrb	r2, [r2]
  3fb426: f883 2138    	strb.w	r2, [r3, #0x138]
  3fb42a: f7d6 ff4d    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x29166
  3fb42e: 4603         	mov	r3, r0
  3fb430: 4618         	mov	r0, r3
  3fb432: f7d7 f9bb    	bl	0x3d27ac <ScoreKeeper::clearScores()> @ imm = #-0x28c8a
  3fb436: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x3fb73c <Stage::setupStage()+0x43c>
  3fb438: 58e3         	ldr	r3, [r4, r3]
  3fb43a: 681b         	ldr	r3, [r3]
  3fb43c: aa14         	add	r2, sp, #0x50
  3fb43e: 4610         	mov	r0, r2
  3fb440: 4619         	mov	r1, r3
  3fb442: f763 fbc5    	bl	0x35ebd0 <MapManager::getBackground()> @ imm = #-0x9c876
  3fb446: ab14         	add	r3, sp, #0x50
  3fb448: 4618         	mov	r0, r3
  3fb44a: f3b9 ff59    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b9eb2
  3fb44e: 4603         	mov	r3, r0
  3fb450: 4618         	mov	r0, r3
  3fb452: f1dc fe97    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x1dcd2e
  3fb456: 4602         	mov	r2, r0
  3fb458: 9b03         	ldr	r3, [sp, #0xc]
  3fb45a: f8c3 2108    	str.w	r2, [r3, #0x108]
  3fb45e: ab14         	add	r3, sp, #0x50
  3fb460: 4618         	mov	r0, r3
  3fb462: f3ba fa57    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ba4ae
  3fb466: 9b03         	ldr	r3, [sp, #0xc]
  3fb468: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb46c: 4618         	mov	r0, r3
  3fb46e: f19c fd3b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x19ca76
  3fb472: 9b03         	ldr	r3, [sp, #0xc]
  3fb474: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb478: 681b         	ldr	r3, [r3]
  3fb47a: 3338         	adds	r3, #0x38
  3fb47c: 681b         	ldr	r3, [r3]
  3fb47e: 9a03         	ldr	r2, [sp, #0xc]
  3fb480: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3fb484: 49b1         	ldr	r1, [pc, #0x2c4]        @ 0x3fb74c <Stage::setupStage()+0x44c>
  3fb486: 5861         	ldr	r1, [r4, r1]
  3fb488: ed91 7a01    	vldr	s14, [r1, #4]
  3fb48c: eddf 7aa6    	vldr	s15, [pc, #664]         @ 0x3fb728 <Stage::setupStage()+0x428>
  3fb490: eec7 7a27    	vdiv.f32	s15, s14, s15
  3fb494: 4610         	mov	r0, r2
  3fb496: ee17 1a90    	vmov	r1, s15
  3fb49a: 4798         	blx	r3
  3fb49c: 9b03         	ldr	r3, [sp, #0xc]
  3fb49e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb4a2: 681b         	ldr	r3, [r3]
  3fb4a4: 3330         	adds	r3, #0x30
  3fb4a6: 681b         	ldr	r3, [r3]
  3fb4a8: 9a03         	ldr	r2, [sp, #0xc]
  3fb4aa: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3fb4ae: 49a7         	ldr	r1, [pc, #0x29c]        @ 0x3fb74c <Stage::setupStage()+0x44c>
  3fb4b0: 5861         	ldr	r1, [r4, r1]
  3fb4b2: ed91 7a00    	vldr	s14, [r1]
  3fb4b6: eddf 7a9d    	vldr	s15, [pc, #628]         @ 0x3fb72c <Stage::setupStage()+0x42c>
  3fb4ba: eec7 7a27    	vdiv.f32	s15, s14, s15
  3fb4be: 4610         	mov	r0, r2
  3fb4c0: ee17 1a90    	vmov	r1, s15
  3fb4c4: 4798         	blx	r3
  3fb4c6: 4ba2         	ldr	r3, [pc, #0x288]        @ 0x3fb750 <Stage::setupStage()+0x450>
  3fb4c8: 58e3         	ldr	r3, [r4, r3]
  3fb4ca: 781b         	ldrb	r3, [r3]
  3fb4cc: 2b00         	cmp	r3, #0x0
  3fb4ce: d00c         	beq	0x3fb4ea <Stage::setupStage()+0x1ea> @ imm = #0x18
  3fb4d0: 9b03         	ldr	r3, [sp, #0xc]
  3fb4d2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb4d6: 681b         	ldr	r3, [r3]
  3fb4d8: f503 73d2    	add.w	r3, r3, #0x1a4
  3fb4dc: 681b         	ldr	r3, [r3]
  3fb4de: 9a03         	ldr	r2, [sp, #0xc]
  3fb4e0: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3fb4e4: 4610         	mov	r0, r2
  3fb4e6: 2164         	movs	r1, #0x64
  3fb4e8: 4798         	blx	r3
  3fb4ea: 9b03         	ldr	r3, [sp, #0xc]
  3fb4ec: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3fb4f0: 681b         	ldr	r3, [r3]
  3fb4f2: 334c         	adds	r3, #0x4c
  3fb4f4: 681d         	ldr	r5, [r3]
  3fb4f6: 9b03         	ldr	r3, [sp, #0xc]
  3fb4f8: f8d3 6108    	ldr.w	r6, [r3, #0x108]
  3fb4fc: 9b03         	ldr	r3, [sp, #0xc]
  3fb4fe: ed93 7a48    	vldr	s14, [r3, #288]
  3fb502: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fb506: eec7 6a27    	vdiv.f32	s13, s14, s15
  3fb50a: 9b03         	ldr	r3, [sp, #0xc]
  3fb50c: ed93 7a49    	vldr	s14, [r3, #292]
  3fb510: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fb514: eec7 7a27    	vdiv.f32	s15, s14, s15
  3fb518: ab14         	add	r3, sp, #0x50
  3fb51a: 4618         	mov	r0, r3
  3fb51c: ee16 1a90    	vmov	r1, s13
  3fb520: ee17 2a90    	vmov	r2, s15
  3fb524: f197 fbe4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1977c8
  3fb528: ab14         	add	r3, sp, #0x50
  3fb52a: 4630         	mov	r0, r6
  3fb52c: 4619         	mov	r1, r3
  3fb52e: 47a8         	blx	r5
  3fb530: 9b03         	ldr	r3, [sp, #0xc]
  3fb532: 2200         	movs	r2, #0x0
  3fb534: f883 2150    	strb.w	r2, [r3, #0x150]
  3fb538: 9b03         	ldr	r3, [sp, #0xc]
  3fb53a: ed93 7a48    	vldr	s14, [r3, #288]
  3fb53e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fb542: eec7 6a27    	vdiv.f32	s13, s14, s15
  3fb546: 9b03         	ldr	r3, [sp, #0xc]
  3fb548: ed93 7a49    	vldr	s14, [r3, #292]
  3fb54c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fb550: eec7 7a27    	vdiv.f32	s15, s14, s15
  3fb554: ab14         	add	r3, sp, #0x50
  3fb556: 4618         	mov	r0, r3
  3fb558: ee16 1a90    	vmov	r1, s13
  3fb55c: ee17 2a90    	vmov	r2, s15
  3fb560: f197 fbc6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19778c
  3fb564: ab14         	add	r3, sp, #0x50
  3fb566: 4a7b         	ldr	r2, [pc, #0x1ec]        @ 0x3fb754 <Stage::setupStage()+0x454>
  3fb568: 58a2         	ldr	r2, [r4, r2]
  3fb56a: 4610         	mov	r0, r2
  3fb56c: 4619         	mov	r1, r3
  3fb56e: f197 fbed    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1977da
  3fb572: 9b03         	ldr	r3, [sp, #0xc]
  3fb574: f503 759e    	add.w	r5, r3, #0x13c
  3fb578: ab14         	add	r3, sp, #0x50
  3fb57a: 4618         	mov	r0, r3
  3fb57c: f04f 0100    	mov.w	r1, #0x0
  3fb580: f04f 0200    	mov.w	r2, #0x0
  3fb584: f197 fbb4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x197768
  3fb588: ab14         	add	r3, sp, #0x50
  3fb58a: 4628         	mov	r0, r5
  3fb58c: 4619         	mov	r1, r3
  3fb58e: f197 fbdd    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1977ba
  3fb592: 9b03         	ldr	r3, [sp, #0xc]
  3fb594: 681b         	ldr	r3, [r3]
  3fb596: 33cc         	adds	r3, #0xcc
  3fb598: 681b         	ldr	r3, [r3]
  3fb59a: 9903         	ldr	r1, [sp, #0xc]
  3fb59c: 9a03         	ldr	r2, [sp, #0xc]
  3fb59e: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3fb5a2: 4608         	mov	r0, r1
  3fb5a4: 4611         	mov	r1, r2
  3fb5a6: 2200         	movs	r2, #0x0
  3fb5a8: 4798         	blx	r3
  3fb5aa: 9b03         	ldr	r3, [sp, #0xc]
  3fb5ac: 681b         	ldr	r3, [r3]
  3fb5ae: 33cc         	adds	r3, #0xcc
  3fb5b0: 681b         	ldr	r3, [r3]
  3fb5b2: 9903         	ldr	r1, [sp, #0xc]
  3fb5b4: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x3fb734 <Stage::setupStage()+0x434>
  3fb5b6: 58a2         	ldr	r2, [r4, r2]
  3fb5b8: 6812         	ldr	r2, [r2]
  3fb5ba: 4608         	mov	r0, r1
  3fb5bc: 4611         	mov	r1, r2
  3fb5be: 2201         	movs	r2, #0x1
  3fb5c0: 4798         	blx	r3
  3fb5c2: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3fb734 <Stage::setupStage()+0x434>
  3fb5c4: 58e3         	ldr	r3, [r4, r3]
  3fb5c6: 681b         	ldr	r3, [r3]
  3fb5c8: 681b         	ldr	r3, [r3]
  3fb5ca: 33cc         	adds	r3, #0xcc
  3fb5cc: 681b         	ldr	r3, [r3]
  3fb5ce: 4a59         	ldr	r2, [pc, #0x164]        @ 0x3fb734 <Stage::setupStage()+0x434>
  3fb5d0: 58a2         	ldr	r2, [r4, r2]
  3fb5d2: 6812         	ldr	r2, [r2]
  3fb5d4: 4611         	mov	r1, r2
  3fb5d6: 4a58         	ldr	r2, [pc, #0x160]        @ 0x3fb738 <Stage::setupStage()+0x438>
  3fb5d8: 58a2         	ldr	r2, [r4, r2]
  3fb5da: 6812         	ldr	r2, [r2]
  3fb5dc: 4608         	mov	r0, r1
  3fb5de: 4611         	mov	r1, r2
  3fb5e0: 2202         	movs	r2, #0x2
  3fb5e2: 4798         	blx	r3
  3fb5e4: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3fb73c <Stage::setupStage()+0x43c>
  3fb5e6: 58e3         	ldr	r3, [r4, r3]
  3fb5e8: 681a         	ldr	r2, [r3]
  3fb5ea: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x3fb738 <Stage::setupStage()+0x438>
  3fb5ec: 58e3         	ldr	r3, [r4, r3]
  3fb5ee: 681b         	ldr	r3, [r3]
  3fb5f0: 4610         	mov	r0, r2
  3fb5f2: 4619         	mov	r1, r3
  3fb5f4: 2201         	movs	r2, #0x1
  3fb5f6: 2305         	movs	r3, #0x5
  3fb5f8: f764 fc9c    	bl	0x35ff34 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)> @ imm = #-0x9b6c8
  3fb5fc: 9b03         	ldr	r3, [sp, #0xc]
  3fb5fe: 681b         	ldr	r3, [r3]
  3fb600: 33cc         	adds	r3, #0xcc
  3fb602: 681b         	ldr	r3, [r3]
  3fb604: 9903         	ldr	r1, [sp, #0xc]
  3fb606: 9a03         	ldr	r2, [sp, #0xc]
  3fb608: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3fb60c: 4608         	mov	r0, r1
  3fb60e: 4611         	mov	r1, r2
  3fb610: 2205         	movs	r2, #0x5
  3fb612: 4798         	blx	r3
  3fb614: 9b03         	ldr	r3, [sp, #0xc]
  3fb616: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3fb61a: 4618         	mov	r0, r3
  3fb61c: f7b8 f8dc    	bl	0x3b37d8 <ProjectileManager::addBodyShapeSprite()> @ imm = #-0x47e48
  3fb620: f1e5 f846    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e508c
  3fb624: 4602         	mov	r2, r0
  3fb626: 9b03         	ldr	r3, [sp, #0xc]
  3fb628: 494b         	ldr	r1, [pc, #0x12c]        @ 0x3fb758 <Stage::setupStage()+0x458>
  3fb62a: 4479         	add	r1, pc
  3fb62c: ac04         	add	r4, sp, #0x10
  3fb62e: c903         	ldm	r1, {r0, r1}
  3fb630: e884 0003    	stm.w	r4, {r0, r1}
  3fb634: 4949         	ldr	r1, [pc, #0x124]        @ 0x3fb75c <Stage::setupStage()+0x45c>
  3fb636: 4479         	add	r1, pc
  3fb638: 9100         	str	r1, [sp]
  3fb63a: 2100         	movs	r1, #0x0
  3fb63c: 9101         	str	r1, [sp, #0x4]
  3fb63e: 4610         	mov	r0, r2
  3fb640: 4619         	mov	r1, r3
  3fb642: ab04         	add	r3, sp, #0x10
  3fb644: cb0c         	ldm	r3, {r2, r3}
  3fb646: f1e5 f8cf    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e519e
  3fb64a: f1e5 f831    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e5062
  3fb64e: 4602         	mov	r2, r0
  3fb650: 9b03         	ldr	r3, [sp, #0xc]
  3fb652: 4943         	ldr	r1, [pc, #0x10c]        @ 0x3fb760 <Stage::setupStage()+0x460>
  3fb654: 4479         	add	r1, pc
  3fb656: ac06         	add	r4, sp, #0x18
  3fb658: c903         	ldm	r1, {r0, r1}
  3fb65a: e884 0003    	stm.w	r4, {r0, r1}
  3fb65e: 4941         	ldr	r1, [pc, #0x104]        @ 0x3fb764 <Stage::setupStage()+0x464>
  3fb660: 4479         	add	r1, pc
  3fb662: 9100         	str	r1, [sp]
  3fb664: 2100         	movs	r1, #0x0
  3fb666: 9101         	str	r1, [sp, #0x4]
  3fb668: 4610         	mov	r0, r2
  3fb66a: 4619         	mov	r1, r3
  3fb66c: ab06         	add	r3, sp, #0x18
  3fb66e: cb0c         	ldm	r3, {r2, r3}
  3fb670: f1e5 f8ba    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e5174
  3fb674: f1e5 f81c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e5038
  3fb678: 4602         	mov	r2, r0
  3fb67a: 9b03         	ldr	r3, [sp, #0xc]
  3fb67c: 493a         	ldr	r1, [pc, #0xe8]         @ 0x3fb768 <Stage::setupStage()+0x468>
  3fb67e: 4479         	add	r1, pc
  3fb680: ac08         	add	r4, sp, #0x20
  3fb682: c903         	ldm	r1, {r0, r1}
  3fb684: e884 0003    	stm.w	r4, {r0, r1}
  3fb688: 4938         	ldr	r1, [pc, #0xe0]         @ 0x3fb76c <Stage::setupStage()+0x46c>
  3fb68a: 4479         	add	r1, pc
  3fb68c: 9100         	str	r1, [sp]
  3fb68e: 2100         	movs	r1, #0x0
  3fb690: 9101         	str	r1, [sp, #0x4]
  3fb692: 4610         	mov	r0, r2
  3fb694: 4619         	mov	r1, r3
  3fb696: ab08         	add	r3, sp, #0x20
  3fb698: cb0c         	ldm	r3, {r2, r3}
  3fb69a: f1e5 f8a5    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e514a
  3fb69e: f1e5 f807    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e500e
  3fb6a2: 4602         	mov	r2, r0
  3fb6a4: 9b03         	ldr	r3, [sp, #0xc]
  3fb6a6: 4932         	ldr	r1, [pc, #0xc8]         @ 0x3fb770 <Stage::setupStage()+0x470>
  3fb6a8: 4479         	add	r1, pc
  3fb6aa: ac0a         	add	r4, sp, #0x28
  3fb6ac: c903         	ldm	r1, {r0, r1}
  3fb6ae: e884 0003    	stm.w	r4, {r0, r1}
  3fb6b2: 4930         	ldr	r1, [pc, #0xc0]         @ 0x3fb774 <Stage::setupStage()+0x474>
  3fb6b4: 4479         	add	r1, pc
  3fb6b6: 9100         	str	r1, [sp]
  3fb6b8: 2100         	movs	r1, #0x0
  3fb6ba: 9101         	str	r1, [sp, #0x4]
  3fb6bc: 4610         	mov	r0, r2
  3fb6be: 4619         	mov	r1, r3
  3fb6c0: ab0a         	add	r3, sp, #0x28
  3fb6c2: cb0c         	ldm	r3, {r2, r3}
  3fb6c4: f1e5 f890    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e5120
  3fb6c8: f1e4 fff2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e4fe4
  3fb6cc: 4602         	mov	r2, r0
  3fb6ce: 9b03         	ldr	r3, [sp, #0xc]
  3fb6d0: 4929         	ldr	r1, [pc, #0xa4]         @ 0x3fb778 <Stage::setupStage()+0x478>
  3fb6d2: 4479         	add	r1, pc
  3fb6d4: ac0c         	add	r4, sp, #0x30
  3fb6d6: c903         	ldm	r1, {r0, r1}
  3fb6d8: e884 0003    	stm.w	r4, {r0, r1}
  3fb6dc: 4927         	ldr	r1, [pc, #0x9c]         @ 0x3fb77c <Stage::setupStage()+0x47c>
  3fb6de: 4479         	add	r1, pc
  3fb6e0: 9100         	str	r1, [sp]
  3fb6e2: 2100         	movs	r1, #0x0
  3fb6e4: 9101         	str	r1, [sp, #0x4]
  3fb6e6: 4610         	mov	r0, r2
  3fb6e8: 4619         	mov	r1, r3
  3fb6ea: ab0c         	add	r3, sp, #0x30
  3fb6ec: cb0c         	ldm	r3, {r2, r3}
  3fb6ee: f1e5 f87b    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e50f6
  3fb6f2: f1e4 ffdd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e4fba
  3fb6f6: 4602         	mov	r2, r0
  3fb6f8: 9b03         	ldr	r3, [sp, #0xc]
  3fb6fa: 4921         	ldr	r1, [pc, #0x84]         @ 0x3fb780 <Stage::setupStage()+0x480>
  3fb6fc: 4479         	add	r1, pc
  3fb6fe: ac0e         	add	r4, sp, #0x38
  3fb700: c903         	ldm	r1, {r0, r1}
  3fb702: e884 0003    	stm.w	r4, {r0, r1}
  3fb706: 491f         	ldr	r1, [pc, #0x7c]         @ 0x3fb784 <Stage::setupStage()+0x484>
  3fb708: 4479         	add	r1, pc
  3fb70a: 9100         	str	r1, [sp]
  3fb70c: 2100         	movs	r1, #0x0
  3fb70e: 9101         	str	r1, [sp, #0x4]
  3fb710: 4610         	mov	r0, r2
  3fb712: 4619         	mov	r1, r3
  3fb714: ab0e         	add	r3, sp, #0x38
  3fb716: cb0c         	ldm	r3, {r2, r3}
  3fb718: f1e5 f866    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e50cc
  3fb71c: f1e4 ffc8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e4f90
  3fb720: 4602         	mov	r2, r0
  3fb722: 9b03         	ldr	r3, [sp, #0xc]
  3fb724: e030         	b	0x3fb788 <Stage::setupStage()+0x488> @ imm = #0x60
  3fb726: bf00         	nop
  3fb728: 0000         	movs	r0, r0
  3fb72a: 43a0         	bics	r0, r4
  3fb72c: 0000         	movs	r0, r0
  3fb72e: 43f0         	mvns	r0, r6
  3fb730: 76fe         	strb	r6, [r7, #0x1b]
  3fb732: 0053         	lsls	r3, r2, #0x1
  3fb734: d720         	bvc	0x3fb778 <Stage::setupStage()+0x478> @ imm = #0x40
  3fb736: ffff d744    	<unknown>
  3fb73a: ffff df04    	<unknown>
  3fb73e: ffff da30    	<unknown>
  3fb742: ffff d910    	vqshrn.u64	d29, q0, #0x1
  3fb746: ffff d794    	vqshl.u64	d29, d4, #0x3f
  3fb74a: ffff d724    	<unknown>
  3fb74e: ffff db98    	<unknown>
  3fb752: ffff d728    	<unknown>
  3fb756: ffff df8e    	<unknown>
  3fb75a: 003d         	movs	r5, r7
  3fb75c: dede         	udf	#0xde
  3fb75e: 003d         	movs	r5, r7
  3fb760: df6c         	svc	#0x6c
  3fb762: 003d         	movs	r5, r7
  3fb764: decc         	udf	#0xcc
  3fb766: 003d         	movs	r5, r7
  3fb768: df4a         	svc	#0x4a
  3fb76a: 003d         	movs	r5, r7
  3fb76c: deb6         	udf	#0xb6
  3fb76e: 003d         	movs	r5, r7
  3fb770: df28         	svc	#0x28
  3fb772: 003d         	movs	r5, r7
  3fb774: dea0         	udf	#0xa0
  3fb776: 003d         	movs	r5, r7
  3fb778: df06         	svc	#0x6
  3fb77a: 003d         	movs	r5, r7
  3fb77c: de8e         	udf	#0x8e
  3fb77e: 003d         	movs	r5, r7
  3fb780: dee4         	udf	#0xe4
  3fb782: 003d         	movs	r5, r7
  3fb784: de7c         	udf	#0x7c
  3fb786: 003d         	movs	r5, r7
  3fb788: 4938         	ldr	r1, [pc, #0xe0]         @ 0x3fb86c <Stage::setupStage()+0x56c>
  3fb78a: 4479         	add	r1, pc
  3fb78c: ac10         	add	r4, sp, #0x40
  3fb78e: c903         	ldm	r1, {r0, r1}
  3fb790: e884 0003    	stm.w	r4, {r0, r1}
  3fb794: 4936         	ldr	r1, [pc, #0xd8]         @ 0x3fb870 <Stage::setupStage()+0x570>
  3fb796: 4479         	add	r1, pc
  3fb798: 9100         	str	r1, [sp]
  3fb79a: 2100         	movs	r1, #0x0
  3fb79c: 9101         	str	r1, [sp, #0x4]
  3fb79e: 4610         	mov	r0, r2
  3fb7a0: 4619         	mov	r1, r3
  3fb7a2: ab10         	add	r3, sp, #0x40
  3fb7a4: cb0c         	ldm	r3, {r2, r3}
  3fb7a6: f1e5 f81f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e503e
  3fb7aa: f1e4 ff81    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e4f02
  3fb7ae: 4602         	mov	r2, r0
  3fb7b0: 9b03         	ldr	r3, [sp, #0xc]
  3fb7b2: 4930         	ldr	r1, [pc, #0xc0]         @ 0x3fb874 <Stage::setupStage()+0x574>
  3fb7b4: 4479         	add	r1, pc
  3fb7b6: ac12         	add	r4, sp, #0x48
  3fb7b8: c903         	ldm	r1, {r0, r1}
  3fb7ba: e884 0003    	stm.w	r4, {r0, r1}
  3fb7be: 492e         	ldr	r1, [pc, #0xb8]         @ 0x3fb878 <Stage::setupStage()+0x578>
  3fb7c0: 4479         	add	r1, pc
  3fb7c2: 9100         	str	r1, [sp]
  3fb7c4: 2100         	movs	r1, #0x0
  3fb7c6: 9101         	str	r1, [sp, #0x4]
  3fb7c8: 4610         	mov	r0, r2
  3fb7ca: 4619         	mov	r1, r3
  3fb7cc: ab12         	add	r3, sp, #0x48
  3fb7ce: cb0c         	ldm	r3, {r2, r3}
  3fb7d0: f1e5 f80a    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e5014
  3fb7d4: f1e4 ff6c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e4ed8
  3fb7d8: 4602         	mov	r2, r0
  3fb7da: 9b03         	ldr	r3, [sp, #0xc]
  3fb7dc: 4927         	ldr	r1, [pc, #0x9c]         @ 0x3fb87c <Stage::setupStage()+0x57c>
  3fb7de: 4479         	add	r1, pc
  3fb7e0: ac14         	add	r4, sp, #0x50
  3fb7e2: c903         	ldm	r1, {r0, r1}
  3fb7e4: e884 0003    	stm.w	r4, {r0, r1}
  3fb7e8: 4925         	ldr	r1, [pc, #0x94]         @ 0x3fb880 <Stage::setupStage()+0x580>
  3fb7ea: 4479         	add	r1, pc
  3fb7ec: 9100         	str	r1, [sp]
  3fb7ee: 2100         	movs	r1, #0x0
  3fb7f0: 9101         	str	r1, [sp, #0x4]
  3fb7f2: 4610         	mov	r0, r2
  3fb7f4: 4619         	mov	r1, r3
  3fb7f6: ab14         	add	r3, sp, #0x50
  3fb7f8: cb0c         	ldm	r3, {r2, r3}
  3fb7fa: f1e4 fff5    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1e4fea
  3fb7fe: 9b03         	ldr	r3, [sp, #0xc]
  3fb800: 681b         	ldr	r3, [r3]
  3fb802: f503 730d    	add.w	r3, r3, #0x234
  3fb806: 681b         	ldr	r3, [r3]
  3fb808: 9803         	ldr	r0, [sp, #0xc]
  3fb80a: 4798         	blx	r3
  3fb80c: 9b03         	ldr	r3, [sp, #0xc]
  3fb80e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fb812: 4618         	mov	r0, r3
  3fb814: f741 fec8    	bl	0x33d5a8 <HUD::addHostPlayer()> @ imm = #-0xbe270
  3fb818: f77c f992    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x83cdc
  3fb81c: 4603         	mov	r3, r0
  3fb81e: 4618         	mov	r0, r3
  3fb820: 2100         	movs	r1, #0x0
  3fb822: f77d fc71    	bl	0x379108 <NetworkManager::sendPlayerEnteredGame(cocos2d::CCObject*)> @ imm = #-0x8271e
  3fb826: e01e         	b	0x3fb866 <Stage::setupStage()+0x566> @ imm = #0x3c
  3fb828: 4628         	mov	r0, r5
  3fb82a: f38c fc3b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38c876
  3fb82e: f38c fc3d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c87a
  3fb832: 4628         	mov	r0, r5
  3fb834: f38c fc36    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38c86c
  3fb838: f38c fc38    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c870
  3fb83c: 4628         	mov	r0, r5
  3fb83e: f38c fc31    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38c862
  3fb842: f38c fc33    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c866
  3fb846: 4628         	mov	r0, r5
  3fb848: f38c fc2c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38c858
  3fb84c: f38c fc2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c85c
  3fb850: 4628         	mov	r0, r5
  3fb852: f38c fc27    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38c84e
  3fb856: f38c fc29    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c852
  3fb85a: ab14         	add	r3, sp, #0x50
  3fb85c: 4618         	mov	r0, r3
  3fb85e: f3ba f859    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ba0b2
  3fb862: f38c fc23    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c846
  3fb866: b016         	add	sp, #0x58
  3fb868: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fb869); words below are literal-pool data ---
  3fb86a: bf00         	nop
  3fb86c: de5e         	udf	#0x5e
  3fb86e: 003d         	movs	r5, r7
  3fb870: ddfa         	ble	0x3fb868 <Stage::setupStage()+0x568> @ imm = #-0xc
  3fb872: 003d         	movs	r5, r7
  3fb874: de3c         	udf	#0x3c
  3fb876: 003d         	movs	r5, r7
  3fb878: dddc         	ble	0x3fb834 <Stage::setupStage()+0x534> @ imm = #-0x48
  3fb87a: 003d         	movs	r5, r7
  3fb87c: de1a         	udf	#0x1a
  3fb87e: 003d         	movs	r5, r7
  3fb880: ddbe         	ble	0x3fb800 <Stage::setupStage()+0x500> @ imm = #-0x84
  3fb882: 003d         	movs	r5, r7

// ==== Stage::sendNetworkData
//      file offset 0x3fb888 (= ELF address; Ghidra 0x40b888), 368 bytes, Thumb-2
  3fb888: b500         	push	{lr}
  3fb88a: b085         	sub	sp, #0x14
  3fb88c: 9001         	str	r0, [sp, #0x4]
  3fb88e: 9100         	str	r1, [sp]
  3fb890: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3fb9f0 <Stage::sendNetworkData(float)+0x168>
  3fb892: 447b         	add	r3, pc
  3fb894: 9a01         	ldr	r2, [sp, #0x4]
  3fb896: ed92 7a55    	vldr	s14, [r2, #340]
  3fb89a: eddd 7a00    	vldr	s15, [sp]
  3fb89e: ee77 7a27    	vadd.f32	s15, s14, s15
  3fb8a2: 9a01         	ldr	r2, [sp, #0x4]
  3fb8a4: edc2 7a55    	vstr	s15, [r2, #340]
  3fb8a8: 9a01         	ldr	r2, [sp, #0x4]
  3fb8aa: ed92 7a56    	vldr	s14, [r2, #344]
  3fb8ae: eddd 7a00    	vldr	s15, [sp]
  3fb8b2: ee77 7a27    	vadd.f32	s15, s14, s15
  3fb8b6: 9a01         	ldr	r2, [sp, #0x4]
  3fb8b8: edc2 7a56    	vstr	s15, [r2, #344]
  3fb8bc: 9a01         	ldr	r2, [sp, #0x4]
  3fb8be: ed92 7a57    	vldr	s14, [r2, #348]
  3fb8c2: eddd 7a00    	vldr	s15, [sp]
  3fb8c6: ee77 7a27    	vadd.f32	s15, s14, s15
  3fb8ca: 9a01         	ldr	r2, [sp, #0x4]
  3fb8cc: edc2 7a57    	vstr	s15, [r2, #348]
  3fb8d0: 9a01         	ldr	r2, [sp, #0x4]
  3fb8d2: ed92 7a58    	vldr	s14, [r2, #352]
  3fb8d6: eddd 7a00    	vldr	s15, [sp]
  3fb8da: ee77 7a27    	vadd.f32	s15, s14, s15
  3fb8de: 9a01         	ldr	r2, [sp, #0x4]
  3fb8e0: edc2 7a58    	vstr	s15, [r2, #352]
  3fb8e4: 9a01         	ldr	r2, [sp, #0x4]
  3fb8e6: 2100         	movs	r1, #0x0
  3fb8e8: f882 1164    	strb.w	r1, [r2, #0x164]
  3fb8ec: f245 12ec    	movw	r2, #0x51ec
  3fb8f0: f6c3 52b8    	movt	r2, #0x3db8
  3fb8f4: 9203         	str	r2, [sp, #0xc]
  3fb8f6: 9a01         	ldr	r2, [sp, #0x4]
  3fb8f8: ed92 7a57    	vldr	s14, [r2, #348]
  3fb8fc: eddd 7a03    	vldr	s15, [sp, #12]
  3fb900: eeb4 7ae7    	vcmpe.f32	s14, s15
  3fb904: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3fb908: dd48         	ble	0x3fb99c <Stage::sendNetworkData(float)+0x114> @ imm = #0x90
  3fb90a: 9a01         	ldr	r2, [sp, #0x4]
  3fb90c: ed92 7a56    	vldr	s14, [r2, #344]
  3fb910: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  3fb914: eeb4 7ae7    	vcmpe.f32	s14, s15
  3fb918: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3fb91c: dc0e         	bgt	0x3fb93c <Stage::sendNetworkData(float)+0xb4> @ imm = #0x1c
  3fb91e: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x3fb9f4 <Stage::sendNetworkData(float)+0x16c>
  3fb920: 589a         	ldr	r2, [r3, r2]
  3fb922: 6812         	ldr	r2, [r2]
  3fb924: 6812         	ldr	r2, [r2]
  3fb926: f502 7219    	add.w	r2, r2, #0x264
  3fb92a: 6812         	ldr	r2, [r2]
  3fb92c: 4931         	ldr	r1, [pc, #0xc4]         @ 0x3fb9f4 <Stage::sendNetworkData(float)+0x16c>
  3fb92e: 585b         	ldr	r3, [r3, r1]
  3fb930: 681b         	ldr	r3, [r3]
  3fb932: 4618         	mov	r0, r3
  3fb934: 4790         	blx	r2
  3fb936: 4603         	mov	r3, r0
  3fb938: 2b00         	cmp	r3, #0x0
  3fb93a: d001         	beq	0x3fb940 <Stage::sendNetworkData(float)+0xb8> @ imm = #0x2
  3fb93c: 2301         	movs	r3, #0x1
  3fb93e: e000         	b	0x3fb942 <Stage::sendNetworkData(float)+0xba> @ imm = #0x0
  3fb940: 2300         	movs	r3, #0x0
  3fb942: 2b00         	cmp	r3, #0x0
  3fb944: d00d         	beq	0x3fb962 <Stage::sendNetworkData(float)+0xda> @ imm = #0x1a
  3fb946: f77c f8fb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x83e0a
  3fb94a: 4603         	mov	r3, r0
  3fb94c: 4618         	mov	r0, r3
  3fb94e: 9900         	ldr	r1, [sp]
  3fb950: 2201         	movs	r2, #0x1
  3fb952: f77d f8db    	bl	0x378b0c <NetworkManager::sendPositionData(float, bool)> @ imm = #-0x82e4a
  3fb956: 9b01         	ldr	r3, [sp, #0x4]
  3fb958: f04f 0200    	mov.w	r2, #0x0
  3fb95c: f8c3 2158    	str.w	r2, [r3, #0x158]
  3fb960: e007         	b	0x3fb972 <Stage::sendNetworkData(float)+0xea> @ imm = #0xe
  3fb962: f77c f8ed    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x83e26
  3fb966: 4603         	mov	r3, r0
  3fb968: 4618         	mov	r0, r3
  3fb96a: 9900         	ldr	r1, [sp]
  3fb96c: 2200         	movs	r2, #0x0
  3fb96e: f77d f8cd    	bl	0x378b0c <NetworkManager::sendPositionData(float, bool)> @ imm = #-0x82e66
  3fb972: 9b01         	ldr	r3, [sp, #0x4]
  3fb974: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fb978: 4618         	mov	r0, r3
  3fb97a: 9900         	ldr	r1, [sp]
  3fb97c: f01e fe98    	bl	0x41a6b0 <WeaponManager::updateWeaponsStep(float)> @ imm = #0x1ed30
  3fb980: 9b01         	ldr	r3, [sp, #0x4]
  3fb982: ed93 7a57    	vldr	s14, [r3, #348]
  3fb986: eddd 7a03    	vldr	s15, [sp, #12]
  3fb98a: ee77 7a67    	vsub.f32	s15, s14, s15
  3fb98e: 9b01         	ldr	r3, [sp, #0x4]
  3fb990: edc3 7a57    	vstr	s15, [r3, #348]
  3fb994: 9b01         	ldr	r3, [sp, #0x4]
  3fb996: 2201         	movs	r2, #0x1
  3fb998: f883 2164    	strb.w	r2, [r3, #0x164]
  3fb99c: 9b01         	ldr	r3, [sp, #0x4]
  3fb99e: edd3 7a55    	vldr	s15, [r3, #340]
  3fb9a2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3fb9a6: ed9f 7b10    	vldr	d7, [pc, #64]           @ 0x3fb9e8 <Stage::sendNetworkData(float)+0x160>
  3fb9aa: eeb4 6bc7    	vcmpe.f64	d6, d7
  3fb9ae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3fb9b2: dd14         	ble	0x3fb9de <Stage::sendNetworkData(float)+0x156> @ imm = #0x28
  3fb9b4: f77c f8c4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x83e78
  3fb9b8: 4603         	mov	r3, r0
  3fb9ba: 4618         	mov	r0, r3
  3fb9bc: 2100         	movs	r1, #0x0
  3fb9be: f77d fbc1    	bl	0x379144 <NetworkManager::sendPing(cocos2d::CCObject*)> @ imm = #-0x8287e
  3fb9c2: 9b01         	ldr	r3, [sp, #0x4]
  3fb9c4: edd3 7a55    	vldr	s15, [r3, #340]
  3fb9c8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3fb9cc: ed9f 7b06    	vldr	d7, [pc, #24]           @ 0x3fb9e8 <Stage::sendNetworkData(float)+0x160>
  3fb9d0: ee36 7b47    	vsub.f64	d7, d6, d7
  3fb9d4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fb9d8: 9b01         	ldr	r3, [sp, #0x4]
  3fb9da: edc3 7a55    	vstr	s15, [r3, #340]
  3fb9de: b005         	add	sp, #0x14
  3fb9e0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3fb9e3); words below are literal-pool data ---
  3fb9e4: f3af 8000    	nop.w
  3fb9e8: c28f         	stm	r2!, {r0, r1, r2, r3, r7}
  3fb9ea: 28f5         	cmp	r0, #0xf5
  3fb9ec: 8f5c         	ldrh	r4, [r3, #0x3a]
  3fb9ee: 400c         	ands	r4, r1
  3fb9f0: 7176         	strb	r6, [r6, #0x5]
  3fb9f2: 0053         	lsls	r3, r2, #0x1
  3fb9f4: d784         	bvc	0x3fb900 <Stage::sendNetworkData(float)+0x78> @ imm = #-0xf8
  3fb9f6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== Stage::onPlayerDead
//      file offset 0x3fb9f8 (= ELF address; Ghidra 0x40b9f8), 816 bytes, Thumb-2
  3fb9f8: b530         	push	{r4, r5, lr}
  3fb9fa: b08b         	sub	sp, #0x2c
  3fb9fc: 9001         	str	r0, [sp, #0x4]
  3fb9fe: 9100         	str	r1, [sp]
  3fba00: 4cc4         	ldr	r4, [pc, #0x310]        @ 0x3fbd14 <Stage::onPlayerDead(cocos2d::CCObject*)+0x31c>
  3fba02: 447c         	add	r4, pc
  3fba04: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fba06: 58e3         	ldr	r3, [r4, r3]
  3fba08: 681b         	ldr	r3, [r3]
  3fba0a: 681b         	ldr	r3, [r3]
  3fba0c: f503 73dc    	add.w	r3, r3, #0x1b8
  3fba10: 681b         	ldr	r3, [r3]
  3fba12: 4ac1         	ldr	r2, [pc, #0x304]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fba14: 58a2         	ldr	r2, [r4, r2]
  3fba16: 6812         	ldr	r2, [r2]
  3fba18: a906         	add	r1, sp, #0x18
  3fba1a: 4608         	mov	r0, r1
  3fba1c: 4611         	mov	r1, r2
  3fba1e: 4798         	blx	r3
  3fba20: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fba22: 58e3         	ldr	r3, [r4, r3]
  3fba24: 681b         	ldr	r3, [r3]
  3fba26: 681b         	ldr	r3, [r3]
  3fba28: f503 73e0    	add.w	r3, r3, #0x1c0
  3fba2c: 681b         	ldr	r3, [r3]
  3fba2e: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fba30: 58a2         	ldr	r2, [r4, r2]
  3fba32: 6812         	ldr	r2, [r2]
  3fba34: a907         	add	r1, sp, #0x1c
  3fba36: 4608         	mov	r0, r1
  3fba38: 4611         	mov	r1, r2
  3fba3a: 4798         	blx	r3
  3fba3c: aa06         	add	r2, sp, #0x18
  3fba3e: ab07         	add	r3, sp, #0x1c
  3fba40: 4610         	mov	r0, r2
  3fba42: 4619         	mov	r1, r3
  3fba44: f3b9 fe1a    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3b9c34
  3fba48: 4603         	mov	r3, r0
  3fba4a: 2b00         	cmp	r3, #0x0
  3fba4c: bf14         	ite	ne
  3fba4e: 2300         	movne	r3, #0x0
  3fba50: 2301         	moveq	r3, #0x1
  3fba52: b2dd         	uxtb	r5, r3
  3fba54: ab07         	add	r3, sp, #0x1c
  3fba56: 4618         	mov	r0, r3
  3fba58: f3b9 ff5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9eb8
  3fba5c: ab06         	add	r3, sp, #0x18
  3fba5e: 4618         	mov	r0, r3
  3fba60: f3b9 ff58    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9eb0
  3fba64: 2d00         	cmp	r5, #0x0
  3fba66: d052         	beq	0x3fbb0e <Stage::onPlayerDead(cocos2d::CCObject*)+0x116> @ imm = #0xa4
  3fba68: 9b01         	ldr	r3, [sp, #0x4]
  3fba6a: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fba6e: ab03         	add	r3, sp, #0xc
  3fba70: 4618         	mov	r0, r3
  3fba72: f38e fcbf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e97e
  3fba76: aa06         	add	r2, sp, #0x18
  3fba78: ab03         	add	r3, sp, #0xc
  3fba7a: 4610         	mov	r0, r2
  3fba7c: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x3fbd1c <Stage::onPlayerDead(cocos2d::CCObject*)+0x324>
  3fba7e: 447a         	add	r2, pc
  3fba80: 4611         	mov	r1, r2
  3fba82: 461a         	mov	r2, r3
  3fba84: f3ba ffec    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bafd8
  3fba88: ab06         	add	r3, sp, #0x18
  3fba8a: 4618         	mov	r0, r3
  3fba8c: f19d ffd6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x19dfac
  3fba90: 4603         	mov	r3, r0
  3fba92: 4618         	mov	r0, r3
  3fba94: f19d ff48    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19de90
  3fba98: 4605         	mov	r5, r0
  3fba9a: ab04         	add	r3, sp, #0x10
  3fba9c: 4618         	mov	r0, r3
  3fba9e: f38e fca9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e952
  3fbaa2: aa07         	add	r2, sp, #0x1c
  3fbaa4: ab04         	add	r3, sp, #0x10
  3fbaa6: 4610         	mov	r0, r2
  3fbaa8: 4629         	mov	r1, r5
  3fbaaa: 461a         	mov	r2, r3
  3fbaac: f3ba ffd8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bafb0
  3fbab0: 20ff         	movs	r0, #0xff
  3fbab2: 2100         	movs	r1, #0x0
  3fbab4: 2200         	movs	r2, #0x0
  3fbab6: f7fe fa43    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x1b7a
  3fbaba: 4603         	mov	r3, r0
  3fbabc: 461a         	mov	r2, r3
  3fbabe: f88d 2014    	strb.w	r2, [sp, #0x14]
  3fbac2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fbac6: f88d 2015    	strb.w	r2, [sp, #0x15]
  3fbaca: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fbace: f88d 3016    	strb.w	r3, [sp, #0x16]
  3fbad2: ab07         	add	r3, sp, #0x1c
  3fbad4: 4620         	mov	r0, r4
  3fbad6: 4619         	mov	r1, r3
  3fbad8: 9a05         	ldr	r2, [sp, #0x14]
  3fbada: 2305         	movs	r3, #0x5
  3fbadc: f741 fbf0    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbe820
  3fbae0: ab07         	add	r3, sp, #0x1c
  3fbae2: 4618         	mov	r0, r3
  3fbae4: f3b9 ff16    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9e2c
  3fbae8: ab04         	add	r3, sp, #0x10
  3fbaea: 4618         	mov	r0, r3
  3fbaec: f38e fc86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e90c
  3fbaf0: ab06         	add	r3, sp, #0x18
  3fbaf2: 4618         	mov	r0, r3
  3fbaf4: f3b9 ff0e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9e1c
  3fbaf8: ab03         	add	r3, sp, #0xc
  3fbafa: 4618         	mov	r0, r3
  3fbafc: f38e fc7e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e8fc
  3fbb00: f7d6 fbe2    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x2983c
  3fbb04: 4603         	mov	r3, r0
  3fbb06: 4618         	mov	r0, r3
  3fbb08: f7d6 fece    	bl	0x3d28a8 <ScoreKeeper::addSuicide()> @ imm = #-0x29264
  3fbb0c: e100         	b	0x3fbd10 <Stage::onPlayerDead(cocos2d::CCObject*)+0x318> @ imm = #0x200
  3fbb0e: 4b82         	ldr	r3, [pc, #0x208]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fbb10: 58e3         	ldr	r3, [r4, r3]
  3fbb12: 681b         	ldr	r3, [r3]
  3fbb14: 681b         	ldr	r3, [r3]
  3fbb16: f503 73dc    	add.w	r3, r3, #0x1b8
  3fbb1a: 681b         	ldr	r3, [r3]
  3fbb1c: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x3fbd18 <Stage::onPlayerDead(cocos2d::CCObject*)+0x320>
  3fbb1e: 58a2         	ldr	r2, [r4, r2]
  3fbb20: 6812         	ldr	r2, [r2]
  3fbb22: a904         	add	r1, sp, #0x10
  3fbb24: 4608         	mov	r0, r1
  3fbb26: 4611         	mov	r1, r2
  3fbb28: 4798         	blx	r3
  3fbb2a: f77c f809    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x83fee
  3fbb2e: 4603         	mov	r3, r0
  3fbb30: 4618         	mov	r0, r3
  3fbb32: f77c fda1    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x834be
  3fbb36: 4604         	mov	r4, r0
  3fbb38: ab04         	add	r3, sp, #0x10
  3fbb3a: 4618         	mov	r0, r3
  3fbb3c: f3b9 fbe0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b97c0
  3fbb40: 4605         	mov	r5, r0
  3fbb42: ab07         	add	r3, sp, #0x1c
  3fbb44: 4618         	mov	r0, r3
  3fbb46: f38e fc55    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e8aa
  3fbb4a: aa05         	add	r2, sp, #0x14
  3fbb4c: ab07         	add	r3, sp, #0x1c
  3fbb4e: 4610         	mov	r0, r2
  3fbb50: 4629         	mov	r1, r5
  3fbb52: 461a         	mov	r2, r3
  3fbb54: f3ba ff84    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3baf08
  3fbb58: ab05         	add	r3, sp, #0x14
  3fbb5a: 4620         	mov	r0, r4
  3fbb5c: 4619         	mov	r1, r3
  3fbb5e: f198 f9c7    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x19838e
  3fbb62: 4603         	mov	r3, r0
  3fbb64: 9308         	str	r3, [sp, #0x20]
  3fbb66: ab05         	add	r3, sp, #0x14
  3fbb68: 4618         	mov	r0, r3
  3fbb6a: f3b9 fed3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9da6
  3fbb6e: ab07         	add	r3, sp, #0x1c
  3fbb70: 4618         	mov	r0, r3
  3fbb72: f38e fc43    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e886
  3fbb76: 9b08         	ldr	r3, [sp, #0x20]
  3fbb78: 2b00         	cmp	r3, #0x0
  3fbb7a: d139         	bne	0x3fbbf0 <Stage::onPlayerDead(cocos2d::CCObject*)+0x1f8> @ imm = #0x72
  3fbb7c: 9b01         	ldr	r3, [sp, #0x4]
  3fbb7e: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fbb82: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x3fbd20 <Stage::onPlayerDead(cocos2d::CCObject*)+0x328>
  3fbb84: 447b         	add	r3, pc
  3fbb86: 4618         	mov	r0, r3
  3fbb88: f19d ffc2    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19df84
  3fbb8c: 4603         	mov	r3, r0
  3fbb8e: 4618         	mov	r0, r3
  3fbb90: f19d feca    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19dd94
  3fbb94: 4605         	mov	r5, r0
  3fbb96: ab07         	add	r3, sp, #0x1c
  3fbb98: 4618         	mov	r0, r3
  3fbb9a: f38e fc2b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e856
  3fbb9e: aa06         	add	r2, sp, #0x18
  3fbba0: ab07         	add	r3, sp, #0x1c
  3fbba2: 4610         	mov	r0, r2
  3fbba4: 4629         	mov	r1, r5
  3fbba6: 461a         	mov	r2, r3
  3fbba8: f3ba ff5a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3baeb4
  3fbbac: 20ff         	movs	r0, #0xff
  3fbbae: 2100         	movs	r1, #0x0
  3fbbb0: 2200         	movs	r2, #0x0
  3fbbb2: f7fe f9c5    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x1c76
  3fbbb6: 4603         	mov	r3, r0
  3fbbb8: 461a         	mov	r2, r3
  3fbbba: f88d 2008    	strb.w	r2, [sp, #0x8]
  3fbbbe: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fbbc2: f88d 2009    	strb.w	r2, [sp, #0x9]
  3fbbc6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fbbca: f88d 300a    	strb.w	r3, [sp, #0xa]
  3fbbce: ab06         	add	r3, sp, #0x18
  3fbbd0: 4620         	mov	r0, r4
  3fbbd2: 4619         	mov	r1, r3
  3fbbd4: 9a02         	ldr	r2, [sp, #0x8]
  3fbbd6: 2305         	movs	r3, #0x5
  3fbbd8: f741 fb72    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbe91c
  3fbbdc: ab06         	add	r3, sp, #0x18
  3fbbde: 4618         	mov	r0, r3
  3fbbe0: f3b9 fe98    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9d30
  3fbbe4: ab07         	add	r3, sp, #0x1c
  3fbbe6: 4618         	mov	r0, r3
  3fbbe8: f38e fc08    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e810
  3fbbec: 2400         	movs	r4, #0x0
  3fbbee: e043         	b	0x3fbc78 <Stage::onPlayerDead(cocos2d::CCObject*)+0x280> @ imm = #0x86
  3fbbf0: 9808         	ldr	r0, [sp, #0x20]
  3fbbf2: 2101         	movs	r1, #0x1
  3fbbf4: f19e fa94    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19e528
  3fbbf8: 4603         	mov	r3, r0
  3fbbfa: 9309         	str	r3, [sp, #0x24]
  3fbbfc: 9b01         	ldr	r3, [sp, #0x4]
  3fbbfe: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fbc02: 9809         	ldr	r0, [sp, #0x24]
  3fbc04: f19d fe90    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19dd20
  3fbc08: 4603         	mov	r3, r0
  3fbc0a: 4a46         	ldr	r2, [pc, #0x118]        @ 0x3fbd24 <Stage::onPlayerDead(cocos2d::CCObject*)+0x32c>
  3fbc0c: 447a         	add	r2, pc
  3fbc0e: 4610         	mov	r0, r2
  3fbc10: 4619         	mov	r1, r3
  3fbc12: f19d ff7d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19defa
  3fbc16: 4603         	mov	r3, r0
  3fbc18: 4618         	mov	r0, r3
  3fbc1a: f19d fe85    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19dd0a
  3fbc1e: 4605         	mov	r5, r0
  3fbc20: ab06         	add	r3, sp, #0x18
  3fbc22: 4618         	mov	r0, r3
  3fbc24: f38e fbe6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e7cc
  3fbc28: aa07         	add	r2, sp, #0x1c
  3fbc2a: ab06         	add	r3, sp, #0x18
  3fbc2c: 4610         	mov	r0, r2
  3fbc2e: 4629         	mov	r1, r5
  3fbc30: 461a         	mov	r2, r3
  3fbc32: f3ba ff15    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bae2a
  3fbc36: 20ff         	movs	r0, #0xff
  3fbc38: 2100         	movs	r1, #0x0
  3fbc3a: 2200         	movs	r2, #0x0
  3fbc3c: f7fe f980    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x1d00
  3fbc40: 4603         	mov	r3, r0
  3fbc42: 461a         	mov	r2, r3
  3fbc44: f88d 200c    	strb.w	r2, [sp, #0xc]
  3fbc48: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fbc4c: f88d 200d    	strb.w	r2, [sp, #0xd]
  3fbc50: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fbc54: f88d 300e    	strb.w	r3, [sp, #0xe]
  3fbc58: ab07         	add	r3, sp, #0x1c
  3fbc5a: 4620         	mov	r0, r4
  3fbc5c: 4619         	mov	r1, r3
  3fbc5e: 9a03         	ldr	r2, [sp, #0xc]
  3fbc60: 2305         	movs	r3, #0x5
  3fbc62: f741 fb2d    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbe9a6
  3fbc66: ab07         	add	r3, sp, #0x1c
  3fbc68: 4618         	mov	r0, r3
  3fbc6a: f3b9 fe53    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9ca6
  3fbc6e: ab06         	add	r3, sp, #0x18
  3fbc70: 4618         	mov	r0, r3
  3fbc72: f38e fbc3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e786
  3fbc76: 2401         	movs	r4, #0x1
  3fbc78: ab04         	add	r3, sp, #0x10
  3fbc7a: 4618         	mov	r0, r3
  3fbc7c: f3b9 fe4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c94
  3fbc80: 2c01         	cmp	r4, #0x1
  3fbc82: d145         	bne	0x3fbd10 <Stage::onPlayerDead(cocos2d::CCObject*)+0x318> @ imm = #0x8a
  3fbc84: bf00         	nop
  3fbc86: e043         	b	0x3fbd10 <Stage::onPlayerDead(cocos2d::CCObject*)+0x318> @ imm = #0x86
  3fbc88: ab07         	add	r3, sp, #0x1c
  3fbc8a: 4618         	mov	r0, r3
  3fbc8c: f3b9 fe42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c84
  3fbc90: e7ff         	b	0x3fbc92 <Stage::onPlayerDead(cocos2d::CCObject*)+0x29a> @ imm = #-0x2
  3fbc92: ab06         	add	r3, sp, #0x18
  3fbc94: 4618         	mov	r0, r3
  3fbc96: f3b9 fe3d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c7a
  3fbc9a: f38c fa07    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c40e
  3fbc9e: ab07         	add	r3, sp, #0x1c
  3fbca0: 4618         	mov	r0, r3
  3fbca2: f3b9 fe37    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c6e
  3fbca6: e7ff         	b	0x3fbca8 <Stage::onPlayerDead(cocos2d::CCObject*)+0x2b0> @ imm = #-0x2
  3fbca8: ab04         	add	r3, sp, #0x10
  3fbcaa: 4618         	mov	r0, r3
  3fbcac: f38e fba6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e74c
  3fbcb0: e7ff         	b	0x3fbcb2 <Stage::onPlayerDead(cocos2d::CCObject*)+0x2ba> @ imm = #-0x2
  3fbcb2: ab06         	add	r3, sp, #0x18
  3fbcb4: 4618         	mov	r0, r3
  3fbcb6: f3b9 fe2d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c5a
  3fbcba: e7ff         	b	0x3fbcbc <Stage::onPlayerDead(cocos2d::CCObject*)+0x2c4> @ imm = #-0x2
  3fbcbc: ab03         	add	r3, sp, #0xc
  3fbcbe: 4618         	mov	r0, r3
  3fbcc0: f38e fb9c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e738
  3fbcc4: f38c f9f2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c3e4
  3fbcc8: ab05         	add	r3, sp, #0x14
  3fbcca: 4618         	mov	r0, r3
  3fbccc: f3b9 fe22    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c44
  3fbcd0: e7ff         	b	0x3fbcd2 <Stage::onPlayerDead(cocos2d::CCObject*)+0x2da> @ imm = #-0x2
  3fbcd2: ab07         	add	r3, sp, #0x1c
  3fbcd4: 4618         	mov	r0, r3
  3fbcd6: f38e fb91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e722
  3fbcda: e013         	b	0x3fbd04 <Stage::onPlayerDead(cocos2d::CCObject*)+0x30c> @ imm = #0x26
  3fbcdc: ab06         	add	r3, sp, #0x18
  3fbcde: 4618         	mov	r0, r3
  3fbce0: f3b9 fe18    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c30
  3fbce4: e7ff         	b	0x3fbce6 <Stage::onPlayerDead(cocos2d::CCObject*)+0x2ee> @ imm = #-0x2
  3fbce6: ab07         	add	r3, sp, #0x1c
  3fbce8: 4618         	mov	r0, r3
  3fbcea: f38e fb87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e70e
  3fbcee: e009         	b	0x3fbd04 <Stage::onPlayerDead(cocos2d::CCObject*)+0x30c> @ imm = #0x12
  3fbcf0: ab07         	add	r3, sp, #0x1c
  3fbcf2: 4618         	mov	r0, r3
  3fbcf4: f3b9 fe0e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c1c
  3fbcf8: e7ff         	b	0x3fbcfa <Stage::onPlayerDead(cocos2d::CCObject*)+0x302> @ imm = #-0x2
  3fbcfa: ab06         	add	r3, sp, #0x18
  3fbcfc: 4618         	mov	r0, r3
  3fbcfe: f38e fb7d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e6fa
  3fbd02: e7ff         	b	0x3fbd04 <Stage::onPlayerDead(cocos2d::CCObject*)+0x30c> @ imm = #-0x2
  3fbd04: ab04         	add	r3, sp, #0x10
  3fbd06: 4618         	mov	r0, r3
  3fbd08: f3b9 fe04    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9c08
  3fbd0c: f38c f9ce    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c39c
  3fbd10: b00b         	add	sp, #0x2c
  3fbd12: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fbd13); words below are literal-pool data ---
  3fbd14: 7006         	strb	r6, [r0]
  3fbd16: 0053         	lsls	r3, r2, #0x1
  3fbd18: d784         	bvc	0x3fbc24 <Stage::onPlayerDead(cocos2d::CCObject*)+0x22c> @ imm = #-0xf8
  3fbd1a: ffff db82    	vtbl.8	d29, {d31, fpinst2, mvfr0, mvfr1}, d2
  3fbd1e: 003d         	movs	r5, r7
  3fbd20: da94         	bge	0x3fbc4c <Stage::onPlayerDead(cocos2d::CCObject*)+0x254> @ imm = #-0xd8
  3fbd22: 003d         	movs	r5, r7
  3fbd24: da1c         	bge	0x3fbd60 <Stage::receivedIM(cocos2d::CCObject*)+0x38> @ imm = #0x38
  3fbd26: 003d         	movs	r5, r7

// ==== Stage::receivedIM
//      file offset 0x3fbd28 (= ELF address; Ghidra 0x40bd28), 856 bytes, Thumb-2
  3fbd28: b570         	push	{r4, r5, r6, lr}
  3fbd2a: b092         	sub	sp, #0x48
  3fbd2c: 9003         	str	r0, [sp, #0xc]
  3fbd2e: 9102         	str	r1, [sp, #0x8]
  3fbd30: 4ccc         	ldr	r4, [pc, #0x330]        @ 0x3fc064 <Stage::receivedIM(cocos2d::CCObject*)+0x33c>
  3fbd32: 447c         	add	r4, pc
  3fbd34: 9b02         	ldr	r3, [sp, #0x8]
  3fbd36: 930e         	str	r3, [sp, #0x38]
  3fbd38: 9b0e         	ldr	r3, [sp, #0x38]
  3fbd3a: 2b00         	cmp	r3, #0x0
  3fbd3c: d100         	bne	0x3fbd40 <Stage::receivedIM(cocos2d::CCObject*)+0x18> @ imm = #0x0
  3fbd3e: e18e         	b	0x3fc05e <Stage::receivedIM(cocos2d::CCObject*)+0x336> @ imm = #0x31c
  3fbd40: 980e         	ldr	r0, [sp, #0x38]
  3fbd42: 2100         	movs	r1, #0x0
  3fbd44: f19e f9ec    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19e3d8
  3fbd48: 4603         	mov	r3, r0
  3fbd4a: 4618         	mov	r0, r3
  3fbd4c: f19d fdec    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19dbd8
  3fbd50: 4605         	mov	r5, r0
  3fbd52: ab0d         	add	r3, sp, #0x34
  3fbd54: 4618         	mov	r0, r3
  3fbd56: f38e fb4d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e69a
  3fbd5a: aa07         	add	r2, sp, #0x1c
  3fbd5c: ab0d         	add	r3, sp, #0x34
  3fbd5e: 4610         	mov	r0, r2
  3fbd60: 4629         	mov	r1, r5
  3fbd62: 461a         	mov	r2, r3
  3fbd64: f3ba fe7c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bacf8
  3fbd68: ab0d         	add	r3, sp, #0x34
  3fbd6a: 4618         	mov	r0, r3
  3fbd6c: f38e fb46    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e68c
  3fbd70: 980e         	ldr	r0, [sp, #0x38]
  3fbd72: 2101         	movs	r1, #0x1
  3fbd74: f19e f9d4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19e3a8
  3fbd78: 4603         	mov	r3, r0
  3fbd7a: 930f         	str	r3, [sp, #0x3c]
  3fbd7c: 9b0f         	ldr	r3, [sp, #0x3c]
  3fbd7e: 2b00         	cmp	r3, #0x0
  3fbd80: d101         	bne	0x3fbd86 <Stage::receivedIM(cocos2d::CCObject*)+0x5e> @ imm = #0x2
  3fbd82: 2400         	movs	r4, #0x0
  3fbd84: e120         	b	0x3fbfc8 <Stage::receivedIM(cocos2d::CCObject*)+0x2a0> @ imm = #0x240
  3fbd86: ab0d         	add	r3, sp, #0x34
  3fbd88: 4618         	mov	r0, r3
  3fbd8a: f38e fb33    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e666
  3fbd8e: aa08         	add	r2, sp, #0x20
  3fbd90: ab0d         	add	r3, sp, #0x34
  3fbd92: 4610         	mov	r0, r2
  3fbd94: 4ab4         	ldr	r2, [pc, #0x2d0]        @ 0x3fc068 <Stage::receivedIM(cocos2d::CCObject*)+0x340>
  3fbd96: 447a         	add	r2, pc
  3fbd98: 4611         	mov	r1, r2
  3fbd9a: 461a         	mov	r2, r3
  3fbd9c: f3ba fe60    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bacc0
  3fbda0: ab0d         	add	r3, sp, #0x34
  3fbda2: 4618         	mov	r0, r3
  3fbda4: f38e fb2a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e654
  3fbda8: ab07         	add	r3, sp, #0x1c
  3fbdaa: 4618         	mov	r0, r3
  3fbdac: f3b9 f956    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3b92ac
  3fbdb0: 4603         	mov	r3, r0
  3fbdb2: 2b00         	cmp	r3, #0x0
  3fbdb4: d00b         	beq	0x3fbdce <Stage::receivedIM(cocos2d::CCObject*)+0xa6> @ imm = #0x16
  3fbdb6: ab07         	add	r3, sp, #0x1c
  3fbdb8: 4618         	mov	r0, r3
  3fbdba: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x3fc06c <Stage::receivedIM(cocos2d::CCObject*)+0x344>
  3fbdbc: 447b         	add	r3, pc
  3fbdbe: 4619         	mov	r1, r3
  3fbdc0: f3b9 fcb0    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x3b9960
  3fbdc4: 4603         	mov	r3, r0
  3fbdc6: 2b00         	cmp	r3, #0x0
  3fbdc8: d001         	beq	0x3fbdce <Stage::receivedIM(cocos2d::CCObject*)+0xa6> @ imm = #0x2
  3fbdca: 2301         	movs	r3, #0x1
  3fbdcc: e000         	b	0x3fbdd0 <Stage::receivedIM(cocos2d::CCObject*)+0xa8> @ imm = #0x0
  3fbdce: 2300         	movs	r3, #0x0
  3fbdd0: 2b00         	cmp	r3, #0x0
  3fbdd2: d038         	beq	0x3fbe46 <Stage::receivedIM(cocos2d::CCObject*)+0x11e> @ imm = #0x70
  3fbdd4: f77b feb4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x84298
  3fbdd8: 4603         	mov	r3, r0
  3fbdda: 4618         	mov	r0, r3
  3fbddc: f77c fc4c    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x83768
  3fbde0: 4605         	mov	r5, r0
  3fbde2: ab07         	add	r3, sp, #0x1c
  3fbde4: 4618         	mov	r0, r3
  3fbde6: f3b9 fa8b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b9516
  3fbdea: 4606         	mov	r6, r0
  3fbdec: ab0d         	add	r3, sp, #0x34
  3fbdee: 4618         	mov	r0, r3
  3fbdf0: f38e fb00    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e600
  3fbdf4: aa09         	add	r2, sp, #0x24
  3fbdf6: ab0d         	add	r3, sp, #0x34
  3fbdf8: 4610         	mov	r0, r2
  3fbdfa: 4631         	mov	r1, r6
  3fbdfc: 461a         	mov	r2, r3
  3fbdfe: f3ba fe2f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3bac5e
  3fbe02: ab09         	add	r3, sp, #0x24
  3fbe04: 4628         	mov	r0, r5
  3fbe06: 4619         	mov	r1, r3
  3fbe08: f198 f872    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1980e4
  3fbe0c: 4603         	mov	r3, r0
  3fbe0e: 9310         	str	r3, [sp, #0x40]
  3fbe10: ab09         	add	r3, sp, #0x24
  3fbe12: 4618         	mov	r0, r3
  3fbe14: f3b9 fd7e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9afc
  3fbe18: ab0d         	add	r3, sp, #0x34
  3fbe1a: 4618         	mov	r0, r3
  3fbe1c: f38e faee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e5dc
  3fbe20: 9b10         	ldr	r3, [sp, #0x40]
  3fbe22: 2b00         	cmp	r3, #0x0
  3fbe24: d101         	bne	0x3fbe2a <Stage::receivedIM(cocos2d::CCObject*)+0x102> @ imm = #0x2
  3fbe26: 2400         	movs	r4, #0x0
  3fbe28: e0c4         	b	0x3fbfb4 <Stage::receivedIM(cocos2d::CCObject*)+0x28c> @ imm = #0x188
  3fbe2a: 9810         	ldr	r0, [sp, #0x40]
  3fbe2c: 2101         	movs	r1, #0x1
  3fbe2e: f19e f977    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19e2ee
  3fbe32: 4603         	mov	r3, r0
  3fbe34: 4618         	mov	r0, r3
  3fbe36: f19d fd77    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19daee
  3fbe3a: 4603         	mov	r3, r0
  3fbe3c: aa08         	add	r2, sp, #0x20
  3fbe3e: 4610         	mov	r0, r2
  3fbe40: 4619         	mov	r1, r3
  3fbe42: f3ba f815    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3ba02a
  3fbe46: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x3fc070 <Stage::receivedIM(cocos2d::CCObject*)+0x348>
  3fbe48: 58e3         	ldr	r3, [r4, r3]
  3fbe4a: 681d         	ldr	r5, [r3]
  3fbe4c: ab07         	add	r3, sp, #0x1c
  3fbe4e: 4618         	mov	r0, r3
  3fbe50: f3b9 fa56    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b94ac
  3fbe54: 4606         	mov	r6, r0
  3fbe56: ab0d         	add	r3, sp, #0x34
  3fbe58: 4618         	mov	r0, r3
  3fbe5a: f38e facb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e596
  3fbe5e: aa0a         	add	r2, sp, #0x28
  3fbe60: ab0d         	add	r3, sp, #0x34
  3fbe62: 4610         	mov	r0, r2
  3fbe64: 4631         	mov	r1, r6
  3fbe66: 461a         	mov	r2, r3
  3fbe68: f3ba fdfa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3babf4
  3fbe6c: ab0a         	add	r3, sp, #0x28
  3fbe6e: 4628         	mov	r0, r5
  3fbe70: 4619         	mov	r1, r3
  3fbe72: f198 f83d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x19807a
  3fbe76: 4603         	mov	r3, r0
  3fbe78: 9311         	str	r3, [sp, #0x44]
  3fbe7a: ab0a         	add	r3, sp, #0x28
  3fbe7c: 4618         	mov	r0, r3
  3fbe7e: f3b9 fd49    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9a92
  3fbe82: ab0d         	add	r3, sp, #0x34
  3fbe84: 4618         	mov	r0, r3
  3fbe86: f38e fab9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e572
  3fbe8a: 9b11         	ldr	r3, [sp, #0x44]
  3fbe8c: 2b00         	cmp	r3, #0x0
  3fbe8e: d04d         	beq	0x3fbf2c <Stage::receivedIM(cocos2d::CCObject*)+0x204> @ imm = #0x9a
  3fbe90: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x3fc074 <Stage::receivedIM(cocos2d::CCObject*)+0x34c>
  3fbe92: 58e3         	ldr	r3, [r4, r3]
  3fbe94: 681d         	ldr	r5, [r3]
  3fbe96: 980f         	ldr	r0, [sp, #0x3c]
  3fbe98: f19d fd46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19da8c
  3fbe9c: 4604         	mov	r4, r0
  3fbe9e: ab0d         	add	r3, sp, #0x34
  3fbea0: 4618         	mov	r0, r3
  3fbea2: f38e faa7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e54e
  3fbea6: aa0b         	add	r2, sp, #0x2c
  3fbea8: ab0d         	add	r3, sp, #0x34
  3fbeaa: 4610         	mov	r0, r2
  3fbeac: 4621         	mov	r1, r4
  3fbeae: 461a         	mov	r2, r3
  3fbeb0: f3ba fdd6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3babac
  3fbeb4: 9b11         	ldr	r3, [sp, #0x44]
  3fbeb6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3fbeba: ac0b         	add	r4, sp, #0x2c
  3fbebc: 466a         	mov	r2, sp
  3fbebe: f103 0130    	add.w	r1, r3, #0x30
  3fbec2: c903         	ldm	r1, {r0, r1}
  3fbec4: e882 0003    	stm.w	r2, {r0, r1}
  3fbec8: 3328         	adds	r3, #0x28
  3fbeca: cb0c         	ldm	r3, {r2, r3}
  3fbecc: 4628         	mov	r0, r5
  3fbece: 4621         	mov	r1, r4
  3fbed0: f7fc f8e8    	bl	0x3f80a4 <Sound::playTaunt(std::string, cpVect)> @ imm = #-0x3e30
  3fbed4: 4603         	mov	r3, r0
  3fbed6: f88d 3017    	strb.w	r3, [sp, #0x17]
  3fbeda: ab0b         	add	r3, sp, #0x2c
  3fbedc: 4618         	mov	r0, r3
  3fbede: f3b9 fd19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9a32
  3fbee2: ab0d         	add	r3, sp, #0x34
  3fbee4: 4618         	mov	r0, r3
  3fbee6: f38e fa89    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e512
  3fbeea: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3fbeee: 2b00         	cmp	r3, #0x0
  3fbef0: d01c         	beq	0x3fbf2c <Stage::receivedIM(cocos2d::CCObject*)+0x204> @ imm = #0x38
  3fbef2: f1e4 fbdd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e47ba
  3fbef6: 4604         	mov	r4, r0
  3fbef8: 9b11         	ldr	r3, [sp, #0x44]
  3fbefa: 681b         	ldr	r3, [r3]
  3fbefc: f503 73e0    	add.w	r3, r3, #0x1c0
  3fbf00: 681b         	ldr	r3, [r3]
  3fbf02: 9a11         	ldr	r2, [sp, #0x44]
  3fbf04: a90c         	add	r1, sp, #0x30
  3fbf06: 4608         	mov	r0, r1
  3fbf08: 4611         	mov	r1, r2
  3fbf0a: 4798         	blx	r3
  3fbf0c: ab0c         	add	r3, sp, #0x30
  3fbf0e: 4618         	mov	r0, r3
  3fbf10: f19d fd94    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x19db28
  3fbf14: 4603         	mov	r3, r0
  3fbf16: 4620         	mov	r0, r4
  3fbf18: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x3fc078 <Stage::receivedIM(cocos2d::CCObject*)+0x350>
  3fbf1a: 447a         	add	r2, pc
  3fbf1c: 4611         	mov	r1, r2
  3fbf1e: 461a         	mov	r2, r3
  3fbf20: f1e4 fe04    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1e4c08
  3fbf24: ab0c         	add	r3, sp, #0x30
  3fbf26: 4618         	mov	r0, r3
  3fbf28: f3b9 fcf4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b99e8
  3fbf2c: 9b03         	ldr	r3, [sp, #0xc]
  3fbf2e: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fbf32: ab08         	add	r3, sp, #0x20
  3fbf34: 4618         	mov	r0, r3
  3fbf36: f3b9 f9e3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b93c6
  3fbf3a: 4605         	mov	r5, r0
  3fbf3c: 980f         	ldr	r0, [sp, #0x3c]
  3fbf3e: f19d fcf3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d9e6
  3fbf42: 4603         	mov	r3, r0
  3fbf44: 4a4d         	ldr	r2, [pc, #0x134]        @ 0x3fc07c <Stage::receivedIM(cocos2d::CCObject*)+0x354>
  3fbf46: 447a         	add	r2, pc
  3fbf48: 4610         	mov	r0, r2
  3fbf4a: 4629         	mov	r1, r5
  3fbf4c: 461a         	mov	r2, r3
  3fbf4e: f19d fddf    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19dbbe
  3fbf52: 4603         	mov	r3, r0
  3fbf54: 4618         	mov	r0, r3
  3fbf56: f19d fce7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d9ce
  3fbf5a: 4605         	mov	r5, r0
  3fbf5c: ab0c         	add	r3, sp, #0x30
  3fbf5e: 4618         	mov	r0, r3
  3fbf60: f38e fa48    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e490
  3fbf64: aa0d         	add	r2, sp, #0x34
  3fbf66: ab0c         	add	r3, sp, #0x30
  3fbf68: 4610         	mov	r0, r2
  3fbf6a: 4629         	mov	r1, r5
  3fbf6c: 461a         	mov	r2, r3
  3fbf6e: f3ba fd77    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3baaee
  3fbf72: 20ff         	movs	r0, #0xff
  3fbf74: 21ff         	movs	r1, #0xff
  3fbf76: 22ff         	movs	r2, #0xff
  3fbf78: f7fd ffe2    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x203c
  3fbf7c: 4603         	mov	r3, r0
  3fbf7e: 461a         	mov	r2, r3
  3fbf80: f88d 2018    	strb.w	r2, [sp, #0x18]
  3fbf84: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fbf88: f88d 2019    	strb.w	r2, [sp, #0x19]
  3fbf8c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fbf90: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3fbf94: ab0d         	add	r3, sp, #0x34
  3fbf96: 4620         	mov	r0, r4
  3fbf98: 4619         	mov	r1, r3
  3fbf9a: 9a06         	ldr	r2, [sp, #0x18]
  3fbf9c: 2305         	movs	r3, #0x5
  3fbf9e: f741 f98f    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbece2
  3fbfa2: ab0d         	add	r3, sp, #0x34
  3fbfa4: 4618         	mov	r0, r3
  3fbfa6: f3b9 fcb5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b996a
  3fbfaa: ab0c         	add	r3, sp, #0x30
  3fbfac: 4618         	mov	r0, r3
  3fbfae: f38e fa25    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e44a
  3fbfb2: 2401         	movs	r4, #0x1
  3fbfb4: ab08         	add	r3, sp, #0x20
  3fbfb6: 4618         	mov	r0, r3
  3fbfb8: f3b9 fcac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9958
  3fbfbc: 2c01         	cmp	r4, #0x1
  3fbfbe: d001         	beq	0x3fbfc4 <Stage::receivedIM(cocos2d::CCObject*)+0x29c> @ imm = #0x2
  3fbfc0: 2400         	movs	r4, #0x0
  3fbfc2: e001         	b	0x3fbfc8 <Stage::receivedIM(cocos2d::CCObject*)+0x2a0> @ imm = #0x2
  3fbfc4: bf00         	nop
  3fbfc6: 2401         	movs	r4, #0x1
  3fbfc8: ab07         	add	r3, sp, #0x1c
  3fbfca: 4618         	mov	r0, r3
  3fbfcc: f3b9 fca2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9944
  3fbfd0: 2c01         	cmp	r4, #0x1
  3fbfd2: d144         	bne	0x3fc05e <Stage::receivedIM(cocos2d::CCObject*)+0x336> @ imm = #0x88
  3fbfd4: bf00         	nop
  3fbfd6: e042         	b	0x3fc05e <Stage::receivedIM(cocos2d::CCObject*)+0x336> @ imm = #0x84
  3fbfd8: ab0d         	add	r3, sp, #0x34
  3fbfda: 4618         	mov	r0, r3
  3fbfdc: f38e fa0e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e41c
  3fbfe0: f38c f864    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c0c8
  3fbfe4: ab0d         	add	r3, sp, #0x34
  3fbfe6: 4618         	mov	r0, r3
  3fbfe8: f38e fa08    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e410
  3fbfec: e031         	b	0x3fc052 <Stage::receivedIM(cocos2d::CCObject*)+0x32a> @ imm = #0x62
  3fbfee: ab09         	add	r3, sp, #0x24
  3fbff0: 4618         	mov	r0, r3
  3fbff2: f3b9 fc8f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b991e
  3fbff6: e7ff         	b	0x3fbff8 <Stage::receivedIM(cocos2d::CCObject*)+0x2d0> @ imm = #-0x2
  3fbff8: ab0d         	add	r3, sp, #0x34
  3fbffa: 4618         	mov	r0, r3
  3fbffc: f38e f9fe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e3fc
  3fc000: e022         	b	0x3fc048 <Stage::receivedIM(cocos2d::CCObject*)+0x320> @ imm = #0x44
  3fc002: ab0a         	add	r3, sp, #0x28
  3fc004: 4618         	mov	r0, r3
  3fc006: f3b9 fc85    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b990a
  3fc00a: e7ff         	b	0x3fc00c <Stage::receivedIM(cocos2d::CCObject*)+0x2e4> @ imm = #-0x2
  3fc00c: ab0d         	add	r3, sp, #0x34
  3fc00e: 4618         	mov	r0, r3
  3fc010: f38e f9f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e3e8
  3fc014: e018         	b	0x3fc048 <Stage::receivedIM(cocos2d::CCObject*)+0x320> @ imm = #0x30
  3fc016: ab0b         	add	r3, sp, #0x2c
  3fc018: 4618         	mov	r0, r3
  3fc01a: f3b9 fc7b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b98f6
  3fc01e: e7ff         	b	0x3fc020 <Stage::receivedIM(cocos2d::CCObject*)+0x2f8> @ imm = #-0x2
  3fc020: ab0d         	add	r3, sp, #0x34
  3fc022: 4618         	mov	r0, r3
  3fc024: f38e f9ea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e3d4
  3fc028: e00e         	b	0x3fc048 <Stage::receivedIM(cocos2d::CCObject*)+0x320> @ imm = #0x1c
  3fc02a: ab0c         	add	r3, sp, #0x30
  3fc02c: 4618         	mov	r0, r3
  3fc02e: f3b9 fc71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b98e2
  3fc032: e009         	b	0x3fc048 <Stage::receivedIM(cocos2d::CCObject*)+0x320> @ imm = #0x12
  3fc034: ab0d         	add	r3, sp, #0x34
  3fc036: 4618         	mov	r0, r3
  3fc038: f3b9 fc6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b98d8
  3fc03c: e7ff         	b	0x3fc03e <Stage::receivedIM(cocos2d::CCObject*)+0x316> @ imm = #-0x2
  3fc03e: ab0c         	add	r3, sp, #0x30
  3fc040: 4618         	mov	r0, r3
  3fc042: f38e f9db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e3b6
  3fc046: e7ff         	b	0x3fc048 <Stage::receivedIM(cocos2d::CCObject*)+0x320> @ imm = #-0x2
  3fc048: ab08         	add	r3, sp, #0x20
  3fc04a: 4618         	mov	r0, r3
  3fc04c: f3b9 fc62    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b98c4
  3fc050: e7ff         	b	0x3fc052 <Stage::receivedIM(cocos2d::CCObject*)+0x32a> @ imm = #-0x2
  3fc052: ab07         	add	r3, sp, #0x1c
  3fc054: 4618         	mov	r0, r3
  3fc056: f3b9 fc5d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b98ba
  3fc05a: f38c f827    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38c04e
  3fc05e: b012         	add	sp, #0x48
  3fc060: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fc061); words below are literal-pool data ---
  3fc062: bf00         	nop
  3fc064: 6cd6         	ldr	r6, [r2, #0x4c]
  3fc066: 0053         	lsls	r3, r2, #0x1
  3fc068: d8aa         	bhi	0x3fbfc0 <Stage::receivedIM(cocos2d::CCObject*)+0x298> @ imm = #-0xac
  3fc06a: 003d         	movs	r5, r7
  3fc06c: d884         	bhi	0x3fbf78 <Stage::receivedIM(cocos2d::CCObject*)+0x250> @ imm = #-0xf8
  3fc06e: 003d         	movs	r5, r7
  3fc070: d920         	bls	0x3fc0b4 <Stage::sentIM(cocos2d::CCObject*)+0x34> @ imm = #0x40
  3fc072: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3fc076: ffff d72e    	<unknown>
  3fc07a: 003d         	movs	r5, r7
  3fc07c: d70e         	bvc	0x3fc09c <Stage::sentIM(cocos2d::CCObject*)+0x1c> @ imm = #0x1c
  3fc07e: 003d         	movs	r5, r7

// ==== Stage::sentIM
//      file offset 0x3fc080 (= ELF address; Ghidra 0x40c080), 456 bytes, Thumb-2
  3fc080: b570         	push	{r4, r5, r6, lr}
  3fc082: b08a         	sub	sp, #0x28
  3fc084: 9003         	str	r0, [sp, #0xc]
  3fc086: 9102         	str	r1, [sp, #0x8]
  3fc088: 4c6a         	ldr	r4, [pc, #0x1a8]        @ 0x3fc234 <Stage::sentIM(cocos2d::CCObject*)+0x1b4>
  3fc08a: 447c         	add	r4, pc
  3fc08c: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3fc238 <Stage::sentIM(cocos2d::CCObject*)+0x1b8>
  3fc08e: 58e3         	ldr	r3, [r4, r3]
  3fc090: 681e         	ldr	r6, [r3]
  3fc092: 9802         	ldr	r0, [sp, #0x8]
  3fc094: f19d fc48    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d890
  3fc098: 4605         	mov	r5, r0
  3fc09a: ab08         	add	r3, sp, #0x20
  3fc09c: 4618         	mov	r0, r3
  3fc09e: f38e f9a9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e352
  3fc0a2: aa09         	add	r2, sp, #0x24
  3fc0a4: ab08         	add	r3, sp, #0x20
  3fc0a6: 4610         	mov	r0, r2
  3fc0a8: 4629         	mov	r1, r5
  3fc0aa: 461a         	mov	r2, r3
  3fc0ac: f3ba fcd8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba9b0
  3fc0b0: 4b62         	ldr	r3, [pc, #0x188]        @ 0x3fc23c <Stage::sentIM(cocos2d::CCObject*)+0x1bc>
  3fc0b2: 58e3         	ldr	r3, [r4, r3]
  3fc0b4: 681b         	ldr	r3, [r3]
  3fc0b6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3fc0ba: ad09         	add	r5, sp, #0x24
  3fc0bc: 466a         	mov	r2, sp
  3fc0be: f103 0130    	add.w	r1, r3, #0x30
  3fc0c2: c903         	ldm	r1, {r0, r1}
  3fc0c4: e882 0003    	stm.w	r2, {r0, r1}
  3fc0c8: 3328         	adds	r3, #0x28
  3fc0ca: cb0c         	ldm	r3, {r2, r3}
  3fc0cc: 4630         	mov	r0, r6
  3fc0ce: 4629         	mov	r1, r5
  3fc0d0: f7fb ffe8    	bl	0x3f80a4 <Sound::playTaunt(std::string, cpVect)> @ imm = #-0x4030
  3fc0d4: ab09         	add	r3, sp, #0x24
  3fc0d6: 4618         	mov	r0, r3
  3fc0d8: f3b9 fc1c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9838
  3fc0dc: ab08         	add	r3, sp, #0x20
  3fc0de: 4618         	mov	r0, r3
  3fc0e0: f38e f98c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e318
  3fc0e4: 4b55         	ldr	r3, [pc, #0x154]        @ 0x3fc23c <Stage::sentIM(cocos2d::CCObject*)+0x1bc>
  3fc0e6: 58e3         	ldr	r3, [r4, r3]
  3fc0e8: 681b         	ldr	r3, [r3]
  3fc0ea: 681b         	ldr	r3, [r3]
  3fc0ec: f503 73ec    	add.w	r3, r3, #0x1d8
  3fc0f0: 681b         	ldr	r3, [r3]
  3fc0f2: 4a52         	ldr	r2, [pc, #0x148]        @ 0x3fc23c <Stage::sentIM(cocos2d::CCObject*)+0x1bc>
  3fc0f4: 58a2         	ldr	r2, [r4, r2]
  3fc0f6: 6812         	ldr	r2, [r2]
  3fc0f8: 4610         	mov	r0, r2
  3fc0fa: 4798         	blx	r3
  3fc0fc: 4603         	mov	r3, r0
  3fc0fe: aa07         	add	r2, sp, #0x1c
  3fc100: 4610         	mov	r0, r2
  3fc102: 4619         	mov	r1, r3
  3fc104: f7f7 ff4c    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #-0x8168
  3fc108: 9802         	ldr	r0, [sp, #0x8]
  3fc10a: f19d fc0d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d81a
  3fc10e: 4604         	mov	r4, r0
  3fc110: ab09         	add	r3, sp, #0x24
  3fc112: 4618         	mov	r0, r3
  3fc114: f38e f96e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e2dc
  3fc118: aa08         	add	r2, sp, #0x20
  3fc11a: ab09         	add	r3, sp, #0x24
  3fc11c: 4610         	mov	r0, r2
  3fc11e: 4621         	mov	r1, r4
  3fc120: 461a         	mov	r2, r3
  3fc122: f3ba fc9d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba93a
  3fc126: ab09         	add	r3, sp, #0x24
  3fc128: 4618         	mov	r0, r3
  3fc12a: f38e f967    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e2ce
  3fc12e: ab08         	add	r3, sp, #0x20
  3fc130: 4618         	mov	r0, r3
  3fc132: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x3fc240 <Stage::sentIM(cocos2d::CCObject*)+0x1c0>
  3fc134: 447b         	add	r3, pc
  3fc136: 4619         	mov	r1, r3
  3fc138: f3b9 faf4    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x3b95e8
  3fc13c: 4603         	mov	r3, r0
  3fc13e: 2b00         	cmp	r3, #0x0
  3fc140: bf0c         	ite	eq
  3fc142: 2300         	moveq	r3, #0x0
  3fc144: 2301         	movne	r3, #0x1
  3fc146: b2db         	uxtb	r3, r3
  3fc148: 2b00         	cmp	r3, #0x0
  3fc14a: d043         	beq	0x3fc1d4 <Stage::sentIM(cocos2d::CCObject*)+0x154> @ imm = #0x86
  3fc14c: 9b03         	ldr	r3, [sp, #0xc]
  3fc14e: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc152: ab07         	add	r3, sp, #0x1c
  3fc154: 4618         	mov	r0, r3
  3fc156: f3b9 f8d3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b91a6
  3fc15a: 4605         	mov	r5, r0
  3fc15c: ab08         	add	r3, sp, #0x20
  3fc15e: 4618         	mov	r0, r3
  3fc160: f3b9 f8ce    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b919c
  3fc164: 4603         	mov	r3, r0
  3fc166: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x3fc244 <Stage::sentIM(cocos2d::CCObject*)+0x1c4>
  3fc168: 447a         	add	r2, pc
  3fc16a: 4610         	mov	r0, r2
  3fc16c: 4629         	mov	r1, r5
  3fc16e: 461a         	mov	r2, r3
  3fc170: f19d fcce    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19d99c
  3fc174: 4603         	mov	r3, r0
  3fc176: 4618         	mov	r0, r3
  3fc178: f19d fbd6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d7ac
  3fc17c: 4605         	mov	r5, r0
  3fc17e: ab05         	add	r3, sp, #0x14
  3fc180: 4618         	mov	r0, r3
  3fc182: f38e f937    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e26e
  3fc186: aa09         	add	r2, sp, #0x24
  3fc188: ab05         	add	r3, sp, #0x14
  3fc18a: 4610         	mov	r0, r2
  3fc18c: 4629         	mov	r1, r5
  3fc18e: 461a         	mov	r2, r3
  3fc190: f3ba fc66    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba8cc
  3fc194: 20ff         	movs	r0, #0xff
  3fc196: 21ff         	movs	r1, #0xff
  3fc198: 22ff         	movs	r2, #0xff
  3fc19a: f7fd fed1    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x225e
  3fc19e: 4603         	mov	r3, r0
  3fc1a0: 461a         	mov	r2, r3
  3fc1a2: f88d 2018    	strb.w	r2, [sp, #0x18]
  3fc1a6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fc1aa: f88d 2019    	strb.w	r2, [sp, #0x19]
  3fc1ae: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fc1b2: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3fc1b6: ab09         	add	r3, sp, #0x24
  3fc1b8: 4620         	mov	r0, r4
  3fc1ba: 4619         	mov	r1, r3
  3fc1bc: 9a06         	ldr	r2, [sp, #0x18]
  3fc1be: 2305         	movs	r3, #0x5
  3fc1c0: f741 f87e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbef04
  3fc1c4: ab09         	add	r3, sp, #0x24
  3fc1c6: 4618         	mov	r0, r3
  3fc1c8: f3b9 fba4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9748
  3fc1cc: ab05         	add	r3, sp, #0x14
  3fc1ce: 4618         	mov	r0, r3
  3fc1d0: f38e f914    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e228
  3fc1d4: ab08         	add	r3, sp, #0x20
  3fc1d6: 4618         	mov	r0, r3
  3fc1d8: f3b9 fb9c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9738
  3fc1dc: ab07         	add	r3, sp, #0x1c
  3fc1de: 4618         	mov	r0, r3
  3fc1e0: f3b9 fb98    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9730
  3fc1e4: e024         	b	0x3fc230 <Stage::sentIM(cocos2d::CCObject*)+0x1b0> @ imm = #0x48
  3fc1e6: ab09         	add	r3, sp, #0x24
  3fc1e8: 4618         	mov	r0, r3
  3fc1ea: f3b9 fb93    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9726
  3fc1ee: e7ff         	b	0x3fc1f0 <Stage::sentIM(cocos2d::CCObject*)+0x170> @ imm = #-0x2
  3fc1f0: ab08         	add	r3, sp, #0x20
  3fc1f2: 4618         	mov	r0, r3
  3fc1f4: f38e f902    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e204
  3fc1f8: f38b ff58    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38beb0
  3fc1fc: ab09         	add	r3, sp, #0x24
  3fc1fe: 4618         	mov	r0, r3
  3fc200: f38e f8fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e1f8
  3fc204: e00e         	b	0x3fc224 <Stage::sentIM(cocos2d::CCObject*)+0x1a4> @ imm = #0x1c
  3fc206: ab09         	add	r3, sp, #0x24
  3fc208: 4618         	mov	r0, r3
  3fc20a: f3b9 fb83    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9706
  3fc20e: e7ff         	b	0x3fc210 <Stage::sentIM(cocos2d::CCObject*)+0x190> @ imm = #-0x2
  3fc210: ab05         	add	r3, sp, #0x14
  3fc212: 4618         	mov	r0, r3
  3fc214: f38e f8f2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e1e4
  3fc218: e7ff         	b	0x3fc21a <Stage::sentIM(cocos2d::CCObject*)+0x19a> @ imm = #-0x2
  3fc21a: ab08         	add	r3, sp, #0x20
  3fc21c: 4618         	mov	r0, r3
  3fc21e: f3b9 fb79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b96f2
  3fc222: e7ff         	b	0x3fc224 <Stage::sentIM(cocos2d::CCObject*)+0x1a4> @ imm = #-0x2
  3fc224: ab07         	add	r3, sp, #0x1c
  3fc226: 4618         	mov	r0, r3
  3fc228: f3b9 fb74    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b96e8
  3fc22c: f38b ff3e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38be7c
  3fc230: b00a         	add	sp, #0x28
  3fc232: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fc233); words below are literal-pool data ---
  3fc234: 697e         	ldr	r6, [r7, #0x14]
  3fc236: 0053         	lsls	r3, r2, #0x1
  3fc238: d730         	bvc	0x3fc29c <Stage::showAlert(cocos2d::CCObject*)+0x54> @ imm = #0x60
  3fc23a: ffff d784    	<unknown>
  3fc23e: ffff d528    	<unknown>
  3fc242: 003d         	movs	r5, r7
  3fc244: d4ec         	bmi	0x3fc220 <Stage::sentIM(cocos2d::CCObject*)+0x1a0> @ imm = #-0x28
  3fc246: 003d         	movs	r5, r7

// ==== Stage::showAlert
//      file offset 0x3fc248 (= ELF address; Ghidra 0x40c248), 232 bytes, Thumb-2
  3fc248: b530         	push	{r4, r5, lr}
  3fc24a: b087         	sub	sp, #0x1c
  3fc24c: 9001         	str	r0, [sp, #0x4]
  3fc24e: 9100         	str	r1, [sp]
  3fc250: 9800         	ldr	r0, [sp]
  3fc252: f19d fb69    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d6d2
  3fc256: 4604         	mov	r4, r0
  3fc258: ab05         	add	r3, sp, #0x14
  3fc25a: 4618         	mov	r0, r3
  3fc25c: f38e f8ca    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e194
  3fc260: aa04         	add	r2, sp, #0x10
  3fc262: ab05         	add	r3, sp, #0x14
  3fc264: 4610         	mov	r0, r2
  3fc266: 4621         	mov	r1, r4
  3fc268: 461a         	mov	r2, r3
  3fc26a: f3ba fbf9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba7f2
  3fc26e: ab05         	add	r3, sp, #0x14
  3fc270: 4618         	mov	r0, r3
  3fc272: f38e f8c3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e186
  3fc276: 9b01         	ldr	r3, [sp, #0x4]
  3fc278: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc27c: ab04         	add	r3, sp, #0x10
  3fc27e: 4618         	mov	r0, r3
  3fc280: f3b9 f83e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b907c
  3fc284: 4603         	mov	r3, r0
  3fc286: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x3fc32c <Stage::showAlert(cocos2d::CCObject*)+0xe4>
  3fc288: 447a         	add	r2, pc
  3fc28a: 4610         	mov	r0, r2
  3fc28c: 4619         	mov	r1, r3
  3fc28e: f19d fc3f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19d87e
  3fc292: 4603         	mov	r3, r0
  3fc294: 4618         	mov	r0, r3
  3fc296: f19d fb47    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d68e
  3fc29a: 4605         	mov	r5, r0
  3fc29c: ab02         	add	r3, sp, #0x8
  3fc29e: 4618         	mov	r0, r3
  3fc2a0: f38e f8a8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e150
  3fc2a4: aa05         	add	r2, sp, #0x14
  3fc2a6: ab02         	add	r3, sp, #0x8
  3fc2a8: 4610         	mov	r0, r2
  3fc2aa: 4629         	mov	r1, r5
  3fc2ac: 461a         	mov	r2, r3
  3fc2ae: f3ba fbd7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba7ae
  3fc2b2: 20fa         	movs	r0, #0xfa
  3fc2b4: 21fa         	movs	r1, #0xfa
  3fc2b6: 2200         	movs	r2, #0x0
  3fc2b8: f7fd fe42    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x237c
  3fc2bc: 4603         	mov	r3, r0
  3fc2be: 461a         	mov	r2, r3
  3fc2c0: f88d 200c    	strb.w	r2, [sp, #0xc]
  3fc2c4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fc2c8: f88d 200d    	strb.w	r2, [sp, #0xd]
  3fc2cc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fc2d0: f88d 300e    	strb.w	r3, [sp, #0xe]
  3fc2d4: ab05         	add	r3, sp, #0x14
  3fc2d6: 4620         	mov	r0, r4
  3fc2d8: 4619         	mov	r1, r3
  3fc2da: 9a03         	ldr	r2, [sp, #0xc]
  3fc2dc: 2305         	movs	r3, #0x5
  3fc2de: f740 ffef    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbf022
  3fc2e2: ab05         	add	r3, sp, #0x14
  3fc2e4: 4618         	mov	r0, r3
  3fc2e6: f3b9 fb15    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b962a
  3fc2ea: ab02         	add	r3, sp, #0x8
  3fc2ec: 4618         	mov	r0, r3
  3fc2ee: f38e f885    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e10a
  3fc2f2: ab04         	add	r3, sp, #0x10
  3fc2f4: 4618         	mov	r0, r3
  3fc2f6: f3b9 fb0d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b961a
  3fc2fa: e015         	b	0x3fc328 <Stage::showAlert(cocos2d::CCObject*)+0xe0> @ imm = #0x2a
  3fc2fc: ab05         	add	r3, sp, #0x14
  3fc2fe: 4618         	mov	r0, r3
  3fc300: f38e f87c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e0f8
  3fc304: f38b fed2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38bda4
  3fc308: ab05         	add	r3, sp, #0x14
  3fc30a: 4618         	mov	r0, r3
  3fc30c: f3b9 fb02    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9604
  3fc310: e7ff         	b	0x3fc312 <Stage::showAlert(cocos2d::CCObject*)+0xca> @ imm = #-0x2
  3fc312: ab02         	add	r3, sp, #0x8
  3fc314: 4618         	mov	r0, r3
  3fc316: f38e f871    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e0e2
  3fc31a: e7ff         	b	0x3fc31c <Stage::showAlert(cocos2d::CCObject*)+0xd4> @ imm = #-0x2
  3fc31c: ab04         	add	r3, sp, #0x10
  3fc31e: 4618         	mov	r0, r3
  3fc320: f3b9 faf8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b95f0
  3fc324: f38b fec2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38bd84
  3fc328: b007         	add	sp, #0x1c
  3fc32a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fc32b); words below are literal-pool data ---
  3fc32c: d3dc         	blo	0x3fc2e8 <Stage::showAlert(cocos2d::CCObject*)+0xa0> @ imm = #-0x48
  3fc32e: 003d         	movs	r5, r7

// ==== Stage::addRemotePlayersFromPeerList
//      file offset 0x3fc330 (= ELF address; Ghidra 0x40c330), 824 bytes, Thumb-2
  3fc330: b530         	push	{r4, r5, lr}
  3fc332: b099         	sub	sp, #0x64
  3fc334: 9003         	str	r0, [sp, #0xc]
  3fc336: 2300         	movs	r3, #0x0
  3fc338: 930c         	str	r3, [sp, #0x30]
  3fc33a: f77b fc01    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x847fe
  3fc33e: 4603         	mov	r3, r0
  3fc340: 4618         	mov	r0, r3
  3fc342: f77c f999    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x83cce
  3fc346: 4603         	mov	r3, r0
  3fc348: 930e         	str	r3, [sp, #0x38]
  3fc34a: 2300         	movs	r3, #0x0
  3fc34c: 930d         	str	r3, [sp, #0x34]
  3fc34e: 9b0e         	ldr	r3, [sp, #0x38]
  3fc350: 2b00         	cmp	r3, #0x0
  3fc352: d007         	beq	0x3fc364 <Stage::addRemotePlayersFromPeerList()+0x34> @ imm = #0xe
  3fc354: 980e         	ldr	r0, [sp, #0x38]
  3fc356: f197 fc89    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x197912
  3fc35a: 4603         	mov	r3, r0
  3fc35c: 2b00         	cmp	r3, #0x0
  3fc35e: d001         	beq	0x3fc364 <Stage::addRemotePlayersFromPeerList()+0x34> @ imm = #0x2
  3fc360: 2301         	movs	r3, #0x1
  3fc362: e000         	b	0x3fc366 <Stage::addRemotePlayersFromPeerList()+0x36> @ imm = #0x0
  3fc364: 2300         	movs	r3, #0x0
  3fc366: 2b00         	cmp	r3, #0x0
  3fc368: f000 8179    	beq.w	0x3fc65e <Stage::addRemotePlayersFromPeerList()+0x32e> @ imm = #0x2f2
  3fc36c: 9b0e         	ldr	r3, [sp, #0x38]
  3fc36e: 695b         	ldr	r3, [r3, #0x14]
  3fc370: 930c         	str	r3, [sp, #0x30]
  3fc372: 9b0e         	ldr	r3, [sp, #0x38]
  3fc374: 695b         	ldr	r3, [r3, #0x14]
  3fc376: 2b00         	cmp	r3, #0x0
  3fc378: d004         	beq	0x3fc384 <Stage::addRemotePlayersFromPeerList()+0x54> @ imm = #0x8
  3fc37a: 9b0e         	ldr	r3, [sp, #0x38]
  3fc37c: 695b         	ldr	r3, [r3, #0x14]
  3fc37e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fc382: e000         	b	0x3fc386 <Stage::addRemotePlayersFromPeerList()+0x56> @ imm = #0x0
  3fc384: 2300         	movs	r3, #0x0
  3fc386: 930d         	str	r3, [sp, #0x34]
  3fc388: e135         	b	0x3fc5f6 <Stage::addRemotePlayersFromPeerList()+0x2c6> @ imm = #0x26a
  3fc38a: 980c         	ldr	r0, [sp, #0x30]
  3fc38c: f77a f87c    	bl	0x376488 <cocos2d::CCDictElement::getStrKey() const> @ imm = #-0x85f08
  3fc390: 4604         	mov	r4, r0
  3fc392: ab0b         	add	r3, sp, #0x2c
  3fc394: 4618         	mov	r0, r3
  3fc396: f38e f82d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38e05a
  3fc39a: aa06         	add	r2, sp, #0x18
  3fc39c: ab0b         	add	r3, sp, #0x2c
  3fc39e: 4610         	mov	r0, r2
  3fc3a0: 4621         	mov	r1, r4
  3fc3a2: 461a         	mov	r2, r3
  3fc3a4: f3ba fb5c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba6b8
  3fc3a8: ab0b         	add	r3, sp, #0x2c
  3fc3aa: 4618         	mov	r0, r3
  3fc3ac: f38e f826    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38e04c
  3fc3b0: 9b03         	ldr	r3, [sp, #0xc]
  3fc3b2: 681b         	ldr	r3, [r3]
  3fc3b4: f503 7309    	add.w	r3, r3, #0x224
  3fc3b8: 681c         	ldr	r4, [r3]
  3fc3ba: aa07         	add	r2, sp, #0x1c
  3fc3bc: ab06         	add	r3, sp, #0x18
  3fc3be: 4610         	mov	r0, r2
  3fc3c0: 4619         	mov	r1, r3
  3fc3c2: f3ba f891    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3ba122
  3fc3c6: ab07         	add	r3, sp, #0x1c
  3fc3c8: 9803         	ldr	r0, [sp, #0xc]
  3fc3ca: 4619         	mov	r1, r3
  3fc3cc: 47a0         	blx	r4
  3fc3ce: 4603         	mov	r3, r0
  3fc3d0: 930f         	str	r3, [sp, #0x3c]
  3fc3d2: ab07         	add	r3, sp, #0x1c
  3fc3d4: 4618         	mov	r0, r3
  3fc3d6: f3b9 fa9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b953a
  3fc3da: f77b fbb1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x8489e
  3fc3de: 4603         	mov	r3, r0
  3fc3e0: 4618         	mov	r0, r3
  3fc3e2: f77c f949    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x83d6e
  3fc3e6: 4602         	mov	r2, r0
  3fc3e8: ab06         	add	r3, sp, #0x18
  3fc3ea: 4610         	mov	r0, r2
  3fc3ec: 4619         	mov	r1, r3
  3fc3ee: f197 fd7f    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x197afe
  3fc3f2: 4603         	mov	r3, r0
  3fc3f4: 9310         	str	r3, [sp, #0x40]
  3fc3f6: 9b10         	ldr	r3, [sp, #0x40]
  3fc3f8: 2b00         	cmp	r3, #0x0
  3fc3fa: d101         	bne	0x3fc400 <Stage::addRemotePlayersFromPeerList()+0xd0> @ imm = #0x2
  3fc3fc: 2400         	movs	r4, #0x0
  3fc3fe: e0e8         	b	0x3fc5d2 <Stage::addRemotePlayersFromPeerList()+0x2a2> @ imm = #0x1d0
  3fc400: 9810         	ldr	r0, [sp, #0x40]
  3fc402: 2101         	movs	r1, #0x1
  3fc404: f19d fe8c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19dd18
  3fc408: 4603         	mov	r3, r0
  3fc40a: 4618         	mov	r0, r3
  3fc40c: f19d fa8c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d518
  3fc410: 4604         	mov	r4, r0
  3fc412: ab0b         	add	r3, sp, #0x2c
  3fc414: 4618         	mov	r0, r3
  3fc416: f38d ffed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38dfda
  3fc41a: aa08         	add	r2, sp, #0x20
  3fc41c: ab0b         	add	r3, sp, #0x2c
  3fc41e: 4610         	mov	r0, r2
  3fc420: 4621         	mov	r1, r4
  3fc422: 461a         	mov	r2, r3
  3fc424: f3ba fb1c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba638
  3fc428: ab0b         	add	r3, sp, #0x2c
  3fc42a: 4618         	mov	r0, r3
  3fc42c: f38d ffe6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38dfcc
  3fc430: 9b0f         	ldr	r3, [sp, #0x3c]
  3fc432: 681b         	ldr	r3, [r3]
  3fc434: f503 73ec    	add.w	r3, r3, #0x1d8
  3fc438: 681b         	ldr	r3, [r3]
  3fc43a: 980f         	ldr	r0, [sp, #0x3c]
  3fc43c: 4798         	blx	r3
  3fc43e: 4604         	mov	r4, r0
  3fc440: aa09         	add	r2, sp, #0x24
  3fc442: ab08         	add	r3, sp, #0x20
  3fc444: 4610         	mov	r0, r2
  3fc446: 4619         	mov	r1, r3
  3fc448: f3ba f84e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3ba09c
  3fc44c: ab09         	add	r3, sp, #0x24
  3fc44e: 4620         	mov	r0, r4
  3fc450: 4619         	mov	r1, r3
  3fc452: f7f7 fd87    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #-0x84f2
  3fc456: ab09         	add	r3, sp, #0x24
  3fc458: 4618         	mov	r0, r3
  3fc45a: f3b9 fa5b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b94b6
  3fc45e: 9810         	ldr	r0, [sp, #0x40]
  3fc460: 2102         	movs	r1, #0x2
  3fc462: f19d fe5d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19dcba
  3fc466: 4603         	mov	r3, r0
  3fc468: 4618         	mov	r0, r3
  3fc46a: f6f0 fcf3    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x10f61a
  3fc46e: 4603         	mov	r3, r0
  3fc470: 9311         	str	r3, [sp, #0x44]
  3fc472: 9810         	ldr	r0, [sp, #0x40]
  3fc474: 2107         	movs	r1, #0x7
  3fc476: f19d fe53    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19dca6
  3fc47a: 4603         	mov	r3, r0
  3fc47c: 9312         	str	r3, [sp, #0x48]
  3fc47e: f6f7 fb1b    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x1089ca
  3fc482: 4603         	mov	r3, r0
  3fc484: 4618         	mov	r0, r3
  3fc486: 9912         	ldr	r1, [sp, #0x48]
  3fc488: 9a11         	ldr	r2, [sp, #0x44]
  3fc48a: f6fa fdf1    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x10541e
  3fc48e: 4603         	mov	r3, r0
  3fc490: 9313         	str	r3, [sp, #0x4c]
  3fc492: f6f7 fb11    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x1089de
  3fc496: 4603         	mov	r3, r0
  3fc498: 4618         	mov	r0, r3
  3fc49a: 9912         	ldr	r1, [sp, #0x48]
  3fc49c: 9a11         	ldr	r2, [sp, #0x44]
  3fc49e: f6fb fcf1    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0x10461e
  3fc4a2: 4603         	mov	r3, r0
  3fc4a4: 9314         	str	r3, [sp, #0x50]
  3fc4a6: f6f7 fb07    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x1089f2
  3fc4aa: 4603         	mov	r3, r0
  3fc4ac: 4618         	mov	r0, r3
  3fc4ae: 9912         	ldr	r1, [sp, #0x48]
  3fc4b0: 9a11         	ldr	r2, [sp, #0x44]
  3fc4b2: f6fb fd85    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0x1044f6
  3fc4b6: 4603         	mov	r3, r0
  3fc4b8: 9315         	str	r3, [sp, #0x54]
  3fc4ba: f6f7 fafd    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x108a06
  3fc4be: 4603         	mov	r3, r0
  3fc4c0: 4618         	mov	r0, r3
  3fc4c2: 9912         	ldr	r1, [sp, #0x48]
  3fc4c4: 9a11         	ldr	r2, [sp, #0x44]
  3fc4c6: f6fb fe19    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0x1043ce
  3fc4ca: 4603         	mov	r3, r0
  3fc4cc: 9316         	str	r3, [sp, #0x58]
  3fc4ce: f6f7 faf3    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x108a1a
  3fc4d2: 4603         	mov	r3, r0
  3fc4d4: 4618         	mov	r0, r3
  3fc4d6: 9912         	ldr	r1, [sp, #0x48]
  3fc4d8: 9a11         	ldr	r2, [sp, #0x44]
  3fc4da: f6fb fead    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #-0x1042a6
  3fc4de: 4603         	mov	r3, r0
  3fc4e0: 9317         	str	r3, [sp, #0x5c]
  3fc4e2: 9b0f         	ldr	r3, [sp, #0x3c]
  3fc4e4: 681b         	ldr	r3, [r3]
  3fc4e6: f503 73ec    	add.w	r3, r3, #0x1d8
  3fc4ea: 681b         	ldr	r3, [r3]
  3fc4ec: 980f         	ldr	r0, [sp, #0x3c]
  3fc4ee: 4798         	blx	r3
  3fc4f0: 4603         	mov	r3, r0
  3fc4f2: 9a15         	ldr	r2, [sp, #0x54]
  3fc4f4: 9200         	str	r2, [sp]
  3fc4f6: 9a16         	ldr	r2, [sp, #0x58]
  3fc4f8: 9201         	str	r2, [sp, #0x4]
  3fc4fa: 4618         	mov	r0, r3
  3fc4fc: 9917         	ldr	r1, [sp, #0x5c]
  3fc4fe: 9a13         	ldr	r2, [sp, #0x4c]
  3fc500: 9b14         	ldr	r3, [sp, #0x50]
  3fc502: f7f7 fdbf    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #-0x8482
  3fc506: 9b0f         	ldr	r3, [sp, #0x3c]
  3fc508: 681b         	ldr	r3, [r3]
  3fc50a: f503 73e4    	add.w	r3, r3, #0x1c8
  3fc50e: 681c         	ldr	r4, [r3]
  3fc510: 9810         	ldr	r0, [sp, #0x40]
  3fc512: 2104         	movs	r1, #0x4
  3fc514: f19d fe04    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19dc08
  3fc518: 4603         	mov	r3, r0
  3fc51a: 4618         	mov	r0, r3
  3fc51c: f6f0 fc9a    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x10f6cc
  3fc520: 4603         	mov	r3, r0
  3fc522: 980f         	ldr	r0, [sp, #0x3c]
  3fc524: 4619         	mov	r1, r3
  3fc526: 47a0         	blx	r4
  3fc528: 9b03         	ldr	r3, [sp, #0xc]
  3fc52a: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc52e: aa0a         	add	r2, sp, #0x28
  3fc530: ab06         	add	r3, sp, #0x18
  3fc532: 4610         	mov	r0, r2
  3fc534: 4619         	mov	r1, r3
  3fc536: f3b9 ffd7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b9fae
  3fc53a: ab0a         	add	r3, sp, #0x28
  3fc53c: 4620         	mov	r0, r4
  3fc53e: 4619         	mov	r1, r3
  3fc540: f740 ff8a    	bl	0x33d458 <HUD::addPlayer(std::string)> @ imm = #-0xbf0ec
  3fc544: ab0a         	add	r3, sp, #0x28
  3fc546: 4618         	mov	r0, r3
  3fc548: f3b9 f9e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b93c8
  3fc54c: 9b03         	ldr	r3, [sp, #0xc]
  3fc54e: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc552: ab08         	add	r3, sp, #0x20
  3fc554: 4618         	mov	r0, r3
  3fc556: f3b8 fed3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b8da6
  3fc55a: 4603         	mov	r3, r0
  3fc55c: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3fc664 <Stage::addRemotePlayersFromPeerList()+0x334>
  3fc55e: 447a         	add	r2, pc
  3fc560: 4610         	mov	r0, r2
  3fc562: 4619         	mov	r1, r3
  3fc564: f19d fad4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19d5a8
  3fc568: 4603         	mov	r3, r0
  3fc56a: 4618         	mov	r0, r3
  3fc56c: f19d f9dc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d3b8
  3fc570: 4605         	mov	r5, r0
  3fc572: ab0a         	add	r3, sp, #0x28
  3fc574: 4618         	mov	r0, r3
  3fc576: f38d ff3d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38de7a
  3fc57a: aa0b         	add	r2, sp, #0x2c
  3fc57c: ab0a         	add	r3, sp, #0x28
  3fc57e: 4610         	mov	r0, r2
  3fc580: 4629         	mov	r1, r5
  3fc582: 461a         	mov	r2, r3
  3fc584: f3ba fa6c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba4d8
  3fc588: 2019         	movs	r0, #0x19
  3fc58a: 2119         	movs	r1, #0x19
  3fc58c: 22e1         	movs	r2, #0xe1
  3fc58e: f7fd fcd7    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x2652
  3fc592: 4603         	mov	r3, r0
  3fc594: 461a         	mov	r2, r3
  3fc596: f88d 2014    	strb.w	r2, [sp, #0x14]
  3fc59a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fc59e: f88d 2015    	strb.w	r2, [sp, #0x15]
  3fc5a2: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fc5a6: f88d 3016    	strb.w	r3, [sp, #0x16]
  3fc5aa: ab0b         	add	r3, sp, #0x2c
  3fc5ac: 4620         	mov	r0, r4
  3fc5ae: 4619         	mov	r1, r3
  3fc5b0: 9a05         	ldr	r2, [sp, #0x14]
  3fc5b2: 2305         	movs	r3, #0x5
  3fc5b4: f740 fe84    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbf2f8
  3fc5b8: ab0b         	add	r3, sp, #0x2c
  3fc5ba: 4618         	mov	r0, r3
  3fc5bc: f3b9 f9aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9354
  3fc5c0: ab0a         	add	r3, sp, #0x28
  3fc5c2: 4618         	mov	r0, r3
  3fc5c4: f38d ff1a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38de34
  3fc5c8: ab08         	add	r3, sp, #0x20
  3fc5ca: 4618         	mov	r0, r3
  3fc5cc: f3b9 f9a2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9344
  3fc5d0: 2401         	movs	r4, #0x1
  3fc5d2: ab06         	add	r3, sp, #0x18
  3fc5d4: 4618         	mov	r0, r3
  3fc5d6: f3b9 f99d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b933a
  3fc5da: 2c01         	cmp	r4, #0x1
  3fc5dc: d140         	bne	0x3fc660 <Stage::addRemotePlayersFromPeerList()+0x330> @ imm = #0x80
  3fc5de: bf00         	nop
  3fc5e0: 9b0d         	ldr	r3, [sp, #0x34]
  3fc5e2: 930c         	str	r3, [sp, #0x30]
  3fc5e4: 9b0d         	ldr	r3, [sp, #0x34]
  3fc5e6: 2b00         	cmp	r3, #0x0
  3fc5e8: d003         	beq	0x3fc5f2 <Stage::addRemotePlayersFromPeerList()+0x2c2> @ imm = #0x6
  3fc5ea: 9b0d         	ldr	r3, [sp, #0x34]
  3fc5ec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fc5f0: e000         	b	0x3fc5f4 <Stage::addRemotePlayersFromPeerList()+0x2c4> @ imm = #0x0
  3fc5f2: 2300         	movs	r3, #0x0
  3fc5f4: 930d         	str	r3, [sp, #0x34]
  3fc5f6: 9b0c         	ldr	r3, [sp, #0x30]
  3fc5f8: 2b00         	cmp	r3, #0x0
  3fc5fa: f47f aec6    	bne.w	0x3fc38a <Stage::addRemotePlayersFromPeerList()+0x5a> @ imm = #-0x274
  3fc5fe: e02f         	b	0x3fc660 <Stage::addRemotePlayersFromPeerList()+0x330> @ imm = #0x5e
  3fc600: ab0b         	add	r3, sp, #0x2c
  3fc602: 4618         	mov	r0, r3
  3fc604: f38d fefa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38ddf4
  3fc608: f38b fd50    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38baa0
  3fc60c: ab07         	add	r3, sp, #0x1c
  3fc60e: 4618         	mov	r0, r3
  3fc610: f3b9 f980    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9300
  3fc614: e01d         	b	0x3fc652 <Stage::addRemotePlayersFromPeerList()+0x322> @ imm = #0x3a
  3fc616: ab0b         	add	r3, sp, #0x2c
  3fc618: 4618         	mov	r0, r3
  3fc61a: f38d feef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38ddde
  3fc61e: e018         	b	0x3fc652 <Stage::addRemotePlayersFromPeerList()+0x322> @ imm = #0x30
  3fc620: ab09         	add	r3, sp, #0x24
  3fc622: 4618         	mov	r0, r3
  3fc624: f3b9 f976    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b92ec
  3fc628: e00e         	b	0x3fc648 <Stage::addRemotePlayersFromPeerList()+0x318> @ imm = #0x1c
  3fc62a: ab0a         	add	r3, sp, #0x28
  3fc62c: 4618         	mov	r0, r3
  3fc62e: f3b9 f971    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b92e2
  3fc632: e009         	b	0x3fc648 <Stage::addRemotePlayersFromPeerList()+0x318> @ imm = #0x12
  3fc634: ab0b         	add	r3, sp, #0x2c
  3fc636: 4618         	mov	r0, r3
  3fc638: f3b9 f96c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b92d8
  3fc63c: e7ff         	b	0x3fc63e <Stage::addRemotePlayersFromPeerList()+0x30e> @ imm = #-0x2
  3fc63e: ab0a         	add	r3, sp, #0x28
  3fc640: 4618         	mov	r0, r3
  3fc642: f38d fedb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38ddb6
  3fc646: e7ff         	b	0x3fc648 <Stage::addRemotePlayersFromPeerList()+0x318> @ imm = #-0x2
  3fc648: ab08         	add	r3, sp, #0x20
  3fc64a: 4618         	mov	r0, r3
  3fc64c: f3b9 f962    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b92c4
  3fc650: e7ff         	b	0x3fc652 <Stage::addRemotePlayersFromPeerList()+0x322> @ imm = #-0x2
  3fc652: ab06         	add	r3, sp, #0x18
  3fc654: 4618         	mov	r0, r3
  3fc656: f3b9 f95d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b92ba
  3fc65a: f38b fd27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38ba4e
  3fc65e: bf00         	nop
  3fc660: b019         	add	sp, #0x64
  3fc662: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fc663); words below are literal-pool data ---
  3fc664: d10a         	bne	0x3fc67c <Stage::onPlayerEntered(cocos2d::CCObject*)+0x14> @ imm = #0x14
  3fc666: 003d         	movs	r5, r7

// ==== Stage::onPlayerEntered
//      file offset 0x3fc668 (= ELF address; Ghidra 0x40c668), 28 bytes, Thumb-2
  3fc668: b500         	push	{lr}
  3fc66a: b083         	sub	sp, #0xc
  3fc66c: 9001         	str	r0, [sp, #0x4]
  3fc66e: 9100         	str	r1, [sp]
  3fc670: f77b fa66    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x84b34
  3fc674: 4603         	mov	r3, r0
  3fc676: 4618         	mov	r0, r3
  3fc678: 2100         	movs	r1, #0x0
  3fc67a: f77c faa5    	bl	0x378bc8 <NetworkManager::sendWeaponChange(cocos2d::CCObject*)> @ imm = #-0x83ab6
  3fc67e: b003         	add	sp, #0xc
  3fc680: f85d fb04    	ldr	pc, [sp], #4

// ==== Stage::addRemotePlayer
//      file offset 0x3fc684 (= ELF address; Ghidra 0x40c684), 164 bytes, Thumb-2
  3fc684: b570         	push	{r4, r5, r6, lr}
  3fc686: b084         	sub	sp, #0x10
  3fc688: 9001         	str	r0, [sp, #0x4]
  3fc68a: 9100         	str	r1, [sp]
  3fc68c: 4c23         	ldr	r4, [pc, #0x8c]         @ 0x3fc71c <Stage::addRemotePlayer(std::string)+0x98>
  3fc68e: 447c         	add	r4, pc
  3fc690: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3fc720 <Stage::addRemotePlayer(std::string)+0x9c>
  3fc692: 58e3         	ldr	r3, [r4, r3]
  3fc694: 681b         	ldr	r3, [r3]
  3fc696: 681b         	ldr	r3, [r3]
  3fc698: f503 7313    	add.w	r3, r3, #0x24c
  3fc69c: 681d         	ldr	r5, [r3]
  3fc69e: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3fc720 <Stage::addRemotePlayer(std::string)+0x9c>
  3fc6a0: 58e3         	ldr	r3, [r4, r3]
  3fc6a2: 681b         	ldr	r3, [r3]
  3fc6a4: 461e         	mov	r6, r3
  3fc6a6: f77b fa4b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x84b6a
  3fc6aa: 4603         	mov	r3, r0
  3fc6ac: aa02         	add	r2, sp, #0x8
  3fc6ae: 4610         	mov	r0, r2
  3fc6b0: 4619         	mov	r1, r3
  3fc6b2: f77d fa49    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x82b6e
  3fc6b6: ab02         	add	r3, sp, #0x8
  3fc6b8: 4630         	mov	r0, r6
  3fc6ba: 4619         	mov	r1, r3
  3fc6bc: 47a8         	blx	r5
  3fc6be: ab02         	add	r3, sp, #0x8
  3fc6c0: 4618         	mov	r0, r3
  3fc6c2: f3b9 f927    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b924e
  3fc6c6: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3fc724 <Stage::addRemotePlayer(std::string)+0xa0>
  3fc6c8: 58e3         	ldr	r3, [r4, r3]
  3fc6ca: 681c         	ldr	r4, [r3]
  3fc6cc: ab02         	add	r3, sp, #0x8
  3fc6ce: 4618         	mov	r0, r3
  3fc6d0: 9900         	ldr	r1, [sp]
  3fc6d2: f3b9 ff09    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b9e12
  3fc6d6: ab02         	add	r3, sp, #0x8
  3fc6d8: 4620         	mov	r0, r4
  3fc6da: 4619         	mov	r1, r3
  3fc6dc: f7ef fdde    	bl	0x3ec29c <SoldierManager::addRemotePlayer(std::string)> @ imm = #-0x10444
  3fc6e0: 4603         	mov	r3, r0
  3fc6e2: 9303         	str	r3, [sp, #0xc]
  3fc6e4: ab02         	add	r3, sp, #0x8
  3fc6e6: 4618         	mov	r0, r3
  3fc6e8: f3b9 f914    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9228
  3fc6ec: f77b fa28    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x84bb0
  3fc6f0: 4603         	mov	r3, r0
  3fc6f2: 4618         	mov	r0, r3
  3fc6f4: 2100         	movs	r1, #0x0
  3fc6f6: f77c fa67    	bl	0x378bc8 <NetworkManager::sendWeaponChange(cocos2d::CCObject*)> @ imm = #-0x83b32
  3fc6fa: 9b03         	ldr	r3, [sp, #0xc]
  3fc6fc: e00b         	b	0x3fc716 <Stage::addRemotePlayer(std::string)+0x92> @ imm = #0x16
  3fc6fe: ab02         	add	r3, sp, #0x8
  3fc700: 4618         	mov	r0, r3
  3fc702: f3b9 f907    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b920e
  3fc706: f38b fcd1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38b9a2
  3fc70a: ab02         	add	r3, sp, #0x8
  3fc70c: 4618         	mov	r0, r3
  3fc70e: f3b9 f901    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9202
  3fc712: f38b fccb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38b996
  3fc716: 4618         	mov	r0, r3
  3fc718: b004         	add	sp, #0x10
  3fc71a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fc71b); words below are literal-pool data ---
  3fc71c: 637a         	str	r2, [r7, #0x34]
  3fc71e: 0053         	lsls	r3, r2, #0x1
  3fc720: d784         	bvc	0x3fc62c <Stage::addRemotePlayersFromPeerList()+0x2fc> @ imm = #-0xf8
  3fc722: ffff d910    	vqshrn.u64	d29, q0, #0x1
  3fc726: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== Stage::removeRemotePlayer
//      file offset 0x3fc728 (= ELF address; Ghidra 0x40c728), 508 bytes, Thumb-2
  3fc728: b530         	push	{r4, r5, lr}
  3fc72a: b08b         	sub	sp, #0x2c
  3fc72c: 9001         	str	r0, [sp, #0x4]
  3fc72e: 9100         	str	r1, [sp]
  3fc730: 4c79         	ldr	r4, [pc, #0x1e4]        @ 0x3fc918 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1f0>
  3fc732: 447c         	add	r4, pc
  3fc734: 9800         	ldr	r0, [sp]
  3fc736: f19d f8f7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d1ee
  3fc73a: 4605         	mov	r5, r0
  3fc73c: ab08         	add	r3, sp, #0x20
  3fc73e: 4618         	mov	r0, r3
  3fc740: f38d fe58    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38dcb0
  3fc744: aa03         	add	r2, sp, #0xc
  3fc746: ab08         	add	r3, sp, #0x20
  3fc748: 4610         	mov	r0, r2
  3fc74a: 4629         	mov	r1, r5
  3fc74c: 461a         	mov	r2, r3
  3fc74e: f3ba f987    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba30e
  3fc752: ab08         	add	r3, sp, #0x20
  3fc754: 4618         	mov	r0, r3
  3fc756: f38d fe51    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38dca2
  3fc75a: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x3fc91c <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1f4>
  3fc75c: 58e3         	ldr	r3, [r4, r3]
  3fc75e: 681c         	ldr	r4, [r3]
  3fc760: aa04         	add	r2, sp, #0x10
  3fc762: ab03         	add	r3, sp, #0xc
  3fc764: 4610         	mov	r0, r2
  3fc766: 4619         	mov	r1, r3
  3fc768: f3b9 febe    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b9d7c
  3fc76c: ab04         	add	r3, sp, #0x10
  3fc76e: 4620         	mov	r0, r4
  3fc770: 4619         	mov	r1, r3
  3fc772: f7ef fe03    	bl	0x3ec37c <SoldierManager::removeRemotePlayer(std::string)> @ imm = #-0x103fa
  3fc776: ab04         	add	r3, sp, #0x10
  3fc778: 4618         	mov	r0, r3
  3fc77a: f3b9 f8cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9196
  3fc77e: 9b01         	ldr	r3, [sp, #0x4]
  3fc780: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  3fc784: aa05         	add	r2, sp, #0x14
  3fc786: ab03         	add	r3, sp, #0xc
  3fc788: 4610         	mov	r0, r2
  3fc78a: 4619         	mov	r1, r3
  3fc78c: f3b9 feac    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b9d58
  3fc790: ab05         	add	r3, sp, #0x14
  3fc792: 4620         	mov	r0, r4
  3fc794: 4619         	mov	r1, r3
  3fc796: f01f fa43    	bl	0x41bc20 <WeaponManager::removeAllWeaponsForPeer(std::string)> @ imm = #0x1f486
  3fc79a: ab05         	add	r3, sp, #0x14
  3fc79c: 4618         	mov	r0, r3
  3fc79e: f3b9 f8b9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9172
  3fc7a2: f77b f9cd    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x84c66
  3fc7a6: 4603         	mov	r3, r0
  3fc7a8: 4618         	mov	r0, r3
  3fc7aa: f77b ff65    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x84136
  3fc7ae: 4602         	mov	r2, r0
  3fc7b0: ab03         	add	r3, sp, #0xc
  3fc7b2: 4610         	mov	r0, r2
  3fc7b4: 4619         	mov	r1, r3
  3fc7b6: f197 fb9b    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x197736
  3fc7ba: 4603         	mov	r3, r0
  3fc7bc: 9309         	str	r3, [sp, #0x24]
  3fc7be: 9b09         	ldr	r3, [sp, #0x24]
  3fc7c0: 2b00         	cmp	r3, #0x0
  3fc7c2: d101         	bne	0x3fc7c8 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0xa0> @ imm = #0x2
  3fc7c4: 2400         	movs	r4, #0x0
  3fc7c6: e06c         	b	0x3fc8a2 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x17a> @ imm = #0xd8
  3fc7c8: 9809         	ldr	r0, [sp, #0x24]
  3fc7ca: 2101         	movs	r1, #0x1
  3fc7cc: f19d fca8    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x19d950
  3fc7d0: 4603         	mov	r3, r0
  3fc7d2: 4618         	mov	r0, r3
  3fc7d4: f19d f8a8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d150
  3fc7d8: 4604         	mov	r4, r0
  3fc7da: ab08         	add	r3, sp, #0x20
  3fc7dc: 4618         	mov	r0, r3
  3fc7de: f38d fe09    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38dc12
  3fc7e2: aa06         	add	r2, sp, #0x18
  3fc7e4: ab08         	add	r3, sp, #0x20
  3fc7e6: 4610         	mov	r0, r2
  3fc7e8: 4621         	mov	r1, r4
  3fc7ea: 461a         	mov	r2, r3
  3fc7ec: f3ba f938    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba270
  3fc7f0: ab08         	add	r3, sp, #0x20
  3fc7f2: 4618         	mov	r0, r3
  3fc7f4: f38d fe02    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38dc04
  3fc7f8: 9b01         	ldr	r3, [sp, #0x4]
  3fc7fa: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc7fe: ab06         	add	r3, sp, #0x18
  3fc800: 4618         	mov	r0, r3
  3fc802: f3b8 fd7d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3b8afa
  3fc806: 4603         	mov	r3, r0
  3fc808: 4a45         	ldr	r2, [pc, #0x114]        @ 0x3fc920 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1f8>
  3fc80a: 447a         	add	r2, pc
  3fc80c: 4610         	mov	r0, r2
  3fc80e: 4619         	mov	r1, r3
  3fc810: f19d f97e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x19d2fc
  3fc814: 4603         	mov	r3, r0
  3fc816: 4618         	mov	r0, r3
  3fc818: f19d f886    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x19d10c
  3fc81c: 4605         	mov	r5, r0
  3fc81e: ab08         	add	r3, sp, #0x20
  3fc820: 4618         	mov	r0, r3
  3fc822: f38d fde7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38dbce
  3fc826: aa07         	add	r2, sp, #0x1c
  3fc828: ab08         	add	r3, sp, #0x20
  3fc82a: 4610         	mov	r0, r2
  3fc82c: 4629         	mov	r1, r5
  3fc82e: 461a         	mov	r2, r3
  3fc830: f3ba f916    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ba22c
  3fc834: 20fa         	movs	r0, #0xfa
  3fc836: 21fa         	movs	r1, #0xfa
  3fc838: 2200         	movs	r2, #0x0
  3fc83a: f7fd fb81    	bl	0x3f9f40 <SplashLayer::inviteCheck(float)+0x164> @ imm = #-0x28fe
  3fc83e: 4603         	mov	r3, r0
  3fc840: 461a         	mov	r2, r3
  3fc842: f88d 2008    	strb.w	r2, [sp, #0x8]
  3fc846: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3fc84a: f88d 2009    	strb.w	r2, [sp, #0x9]
  3fc84e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3fc852: f88d 300a    	strb.w	r3, [sp, #0xa]
  3fc856: ab07         	add	r3, sp, #0x1c
  3fc858: 4620         	mov	r0, r4
  3fc85a: 4619         	mov	r1, r3
  3fc85c: 9a02         	ldr	r2, [sp, #0x8]
  3fc85e: 2305         	movs	r3, #0x5
  3fc860: f740 fd2e    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xbf5a4
  3fc864: ab07         	add	r3, sp, #0x1c
  3fc866: 4618         	mov	r0, r3
  3fc868: f3b9 f854    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b90a8
  3fc86c: ab08         	add	r3, sp, #0x20
  3fc86e: 4618         	mov	r0, r3
  3fc870: f38d fdc4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38db88
  3fc874: 9b01         	ldr	r3, [sp, #0x4]
  3fc876: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  3fc87a: aa08         	add	r2, sp, #0x20
  3fc87c: ab03         	add	r3, sp, #0xc
  3fc87e: 4610         	mov	r0, r2
  3fc880: 4619         	mov	r1, r3
  3fc882: f3b9 fe31    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b9c62
  3fc886: ab08         	add	r3, sp, #0x20
  3fc888: 4620         	mov	r0, r4
  3fc88a: 4619         	mov	r1, r3
  3fc88c: f740 fdaa    	bl	0x33d3e4 <HUD::removePlayer(std::string)> @ imm = #-0xbf4ac
  3fc890: ab08         	add	r3, sp, #0x20
  3fc892: 4618         	mov	r0, r3
  3fc894: f3b9 f83e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b907c
  3fc898: ab06         	add	r3, sp, #0x18
  3fc89a: 4618         	mov	r0, r3
  3fc89c: f3b9 f83a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9074
  3fc8a0: 2401         	movs	r4, #0x1
  3fc8a2: ab03         	add	r3, sp, #0xc
  3fc8a4: 4618         	mov	r0, r3
  3fc8a6: f3b9 f835    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b906a
  3fc8aa: 2c01         	cmp	r4, #0x1
  3fc8ac: d000         	beq	0x3fc8b0 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x188> @ imm = #0x0
  3fc8ae: e030         	b	0x3fc912 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1ea> @ imm = #0x60
  3fc8b0: bf00         	nop
  3fc8b2: e02e         	b	0x3fc912 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1ea> @ imm = #0x5c
  3fc8b4: ab08         	add	r3, sp, #0x20
  3fc8b6: 4618         	mov	r0, r3
  3fc8b8: f38d fda0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38db40
  3fc8bc: f38b fbf6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38b7ec
  3fc8c0: ab04         	add	r3, sp, #0x10
  3fc8c2: 4618         	mov	r0, r3
  3fc8c4: f3b9 f826    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b904c
  3fc8c8: e01d         	b	0x3fc906 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1de> @ imm = #0x3a
  3fc8ca: ab05         	add	r3, sp, #0x14
  3fc8cc: 4618         	mov	r0, r3
  3fc8ce: f3b9 f821    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9042
  3fc8d2: e018         	b	0x3fc906 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1de> @ imm = #0x30
  3fc8d4: ab08         	add	r3, sp, #0x20
  3fc8d6: 4618         	mov	r0, r3
  3fc8d8: f38d fd90    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38db20
  3fc8dc: e013         	b	0x3fc906 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1de> @ imm = #0x26
  3fc8de: ab07         	add	r3, sp, #0x1c
  3fc8e0: 4618         	mov	r0, r3
  3fc8e2: f3b9 f817    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b902e
  3fc8e6: e7ff         	b	0x3fc8e8 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1c0> @ imm = #-0x2
  3fc8e8: ab08         	add	r3, sp, #0x20
  3fc8ea: 4618         	mov	r0, r3
  3fc8ec: f38d fd86    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38db0c
  3fc8f0: e004         	b	0x3fc8fc <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1d4> @ imm = #0x8
  3fc8f2: ab08         	add	r3, sp, #0x20
  3fc8f4: 4618         	mov	r0, r3
  3fc8f6: f3b9 f80d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b901a
  3fc8fa: e7ff         	b	0x3fc8fc <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1d4> @ imm = #-0x2
  3fc8fc: ab06         	add	r3, sp, #0x18
  3fc8fe: 4618         	mov	r0, r3
  3fc900: f3b9 f808    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9010
  3fc904: e7ff         	b	0x3fc906 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x1de> @ imm = #-0x2
  3fc906: ab03         	add	r3, sp, #0xc
  3fc908: 4618         	mov	r0, r3
  3fc90a: f3b9 f803    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b9006
  3fc90e: f38b fbcd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38b79a
  3fc912: b00b         	add	sp, #0x2c
  3fc914: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3fc915); words below are literal-pool data ---
  3fc916: bf00         	nop
  3fc918: 62d6         	str	r6, [r2, #0x2c]
  3fc91a: 0053         	lsls	r3, r2, #0x1
  3fc91c: d910         	bls	0x3fc940 <Stage::draw()+0x1c> @ imm = #0x20
  3fc91e: ffff ce72    	vcvt.f32.u32	q14, q9, #0x1
  3fc922: 003d         	movs	r5, r7

// ==== Stage::draw
//      file offset 0x3fc924 (= ELF address; Ghidra 0x40c924), 52 bytes, Thumb-2
  3fc924: b510         	push	{r4, lr}
  3fc926: b082         	sub	sp, #0x8
  3fc928: 9001         	str	r0, [sp, #0x4]
  3fc92a: 4c09         	ldr	r4, [pc, #0x24]         @ 0x3fc950 <Stage::draw()+0x2c>
  3fc92c: 447c         	add	r4, pc
  3fc92e: 9b01         	ldr	r3, [sp, #0x4]
  3fc930: 4618         	mov	r0, r3
  3fc932: f193 ffef    	bl	0x590914 <cocos2d::CCNode::draw()> @ imm = #0x193fde
  3fc936: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3fc954 <Stage::draw()+0x30>
  3fc938: 58e3         	ldr	r3, [r4, r3]
  3fc93a: 781b         	ldrb	r3, [r3]
  3fc93c: 2b00         	cmp	r3, #0x0
  3fc93e: d005         	beq	0x3fc94c <Stage::draw()+0x28> @ imm = #0xa
  3fc940: 9b01         	ldr	r3, [sp, #0x4]
  3fc942: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fc946: 4618         	mov	r0, r3
  3fc948: f795 f8a2    	bl	0x391a90 <PhysicsManager::drawShapes()> @ imm = #-0x6aebc
  3fc94c: b002         	add	sp, #0x8
  3fc94e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fc94f); words below are literal-pool data ---
  3fc950: 60dc         	str	r4, [r3, #0xc]
  3fc952: 0053         	lsls	r3, r2, #0x1
  3fc954: db98         	blt	0x3fc888 <Stage::removeRemotePlayer(cocos2d::CCObject*)+0x160> @ imm = #-0xd0
  3fc956: ffff b570    	<unknown>

// ==== Stage::updateSight
//      file offset 0x3fc958 (= ELF address; Ghidra 0x40c958), 736 bytes, Thumb-2
  3fc958: b570         	push	{r4, r5, r6, lr}
  3fc95a: b08e         	sub	sp, #0x38
  3fc95c: 9001         	str	r0, [sp, #0x4]
  3fc95e: 9100         	str	r1, [sp]
  3fc960: 4cb3         	ldr	r4, [pc, #0x2cc]        @ 0x3fcc30 <Stage::updateSight(float)+0x2d8>
  3fc962: 447c         	add	r4, pc
  3fc964: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc966: 58e3         	ldr	r3, [r4, r3]
  3fc968: 681b         	ldr	r3, [r3]
  3fc96a: 681b         	ldr	r3, [r3]
  3fc96c: f503 73ec    	add.w	r3, r3, #0x1d8
  3fc970: 681b         	ldr	r3, [r3]
  3fc972: 4ab0         	ldr	r2, [pc, #0x2c0]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc974: 58a2         	ldr	r2, [r4, r2]
  3fc976: 6812         	ldr	r2, [r2]
  3fc978: 4610         	mov	r0, r2
  3fc97a: 4798         	blx	r3
  3fc97c: 4603         	mov	r3, r0
  3fc97e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fc982: 681a         	ldr	r2, [r3]
  3fc984: 329c         	adds	r2, #0x9c
  3fc986: 6812         	ldr	r2, [r2]
  3fc988: 4618         	mov	r0, r3
  3fc98a: 4790         	blx	r2
  3fc98c: 4603         	mov	r3, r0
  3fc98e: 9302         	str	r3, [sp, #0x8]
  3fc990: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc992: 58e3         	ldr	r3, [r4, r3]
  3fc994: 681b         	ldr	r3, [r3]
  3fc996: 681b         	ldr	r3, [r3]
  3fc998: f503 73ec    	add.w	r3, r3, #0x1d8
  3fc99c: 681b         	ldr	r3, [r3]
  3fc99e: 4aa5         	ldr	r2, [pc, #0x294]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc9a0: 58a2         	ldr	r2, [r4, r2]
  3fc9a2: 6812         	ldr	r2, [r2]
  3fc9a4: 4610         	mov	r0, r2
  3fc9a6: 4798         	blx	r3
  3fc9a8: 4603         	mov	r3, r0
  3fc9aa: 4618         	mov	r0, r3
  3fc9ac: f7f5 fff4    	bl	0x3f2998 <SoldierView::setNormalArmRotation()> @ imm = #-0xa018
  3fc9b0: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc9b2: 58e3         	ldr	r3, [r4, r3]
  3fc9b4: 681b         	ldr	r3, [r3]
  3fc9b6: 681b         	ldr	r3, [r3]
  3fc9b8: f503 73fa    	add.w	r3, r3, #0x1f4
  3fc9bc: 681b         	ldr	r3, [r3]
  3fc9be: 4a9d         	ldr	r2, [pc, #0x274]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fc9c0: 58a2         	ldr	r2, [r4, r2]
  3fc9c2: 6812         	ldr	r2, [r2]
  3fc9c4: 4610         	mov	r0, r2
  3fc9c6: 4798         	blx	r3
  3fc9c8: 4603         	mov	r3, r0
  3fc9ca: 9303         	str	r3, [sp, #0xc]
  3fc9cc: 9b03         	ldr	r3, [sp, #0xc]
  3fc9ce: 2b00         	cmp	r3, #0x0
  3fc9d0: f000 80cf    	beq.w	0x3fcb72 <Stage::updateSight(float)+0x21a> @ imm = #0x19e
  3fc9d4: 9b03         	ldr	r3, [sp, #0xc]
  3fc9d6: 681b         	ldr	r3, [r3]
  3fc9d8: f503 7348    	add.w	r3, r3, #0x320
  3fc9dc: 681b         	ldr	r3, [r3]
  3fc9de: aa06         	add	r2, sp, #0x18
  3fc9e0: 4610         	mov	r0, r2
  3fc9e2: 9903         	ldr	r1, [sp, #0xc]
  3fc9e4: 4798         	blx	r3
  3fc9e6: 9b01         	ldr	r3, [sp, #0x4]
  3fc9e8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fc9ec: 681b         	ldr	r3, [r3]
  3fc9ee: 3398         	adds	r3, #0x98
  3fc9f0: 681d         	ldr	r5, [r3]
  3fc9f2: 9b01         	ldr	r3, [sp, #0x4]
  3fc9f4: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fc9f8: 9b01         	ldr	r3, [sp, #0x4]
  3fc9fa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fc9fe: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fca02: 4618         	mov	r0, r3
  3fca04: f751 fd6c    	bl	0x34e4e0 <Joypad::getFireAngle()> @ imm = #-0xae528
  3fca08: 4603         	mov	r3, r0
  3fca0a: 4630         	mov	r0, r6
  3fca0c: 4619         	mov	r1, r3
  3fca0e: 47a8         	blx	r5
  3fca10: 9b01         	ldr	r3, [sp, #0x4]
  3fca12: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fca16: 681b         	ldr	r3, [r3]
  3fca18: 334c         	adds	r3, #0x4c
  3fca1a: 681d         	ldr	r5, [r3]
  3fca1c: 9b01         	ldr	r3, [sp, #0x4]
  3fca1e: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fca22: ed9d 7b06    	vldr	d7, [sp, #24]
  3fca26: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3fca2a: ed9d 7b08    	vldr	d7, [sp, #32]
  3fca2e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fca32: ab0a         	add	r3, sp, #0x28
  3fca34: 4618         	mov	r0, r3
  3fca36: ee16 1a90    	vmov	r1, s13
  3fca3a: ee17 2a90    	vmov	r2, s15
  3fca3e: f196 f957    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1962ae
  3fca42: ab0a         	add	r3, sp, #0x28
  3fca44: 4630         	mov	r0, r6
  3fca46: 4619         	mov	r1, r3
  3fca48: 47a8         	blx	r5
  3fca4a: 9b01         	ldr	r3, [sp, #0x4]
  3fca4c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fca50: 681b         	ldr	r3, [r3]
  3fca52: 337c         	adds	r3, #0x7c
  3fca54: 681d         	ldr	r5, [r3]
  3fca56: 9b01         	ldr	r3, [sp, #0x4]
  3fca58: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fca5c: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fca5e: 58e3         	ldr	r3, [r4, r3]
  3fca60: 681b         	ldr	r3, [r3]
  3fca62: edd3 7a6a    	vldr	s15, [r3, #424]
  3fca66: eebf 7a00    	vmov.f32	s14, #-1.000000e+00
  3fca6a: eec7 7a27    	vdiv.f32	s15, s14, s15
  3fca6e: ab0a         	add	r3, sp, #0x28
  3fca70: 4618         	mov	r0, r3
  3fca72: ee17 1a90    	vmov	r1, s15
  3fca76: f04f 527c    	mov.w	r2, #0x3f000000
  3fca7a: f196 f939    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x196272
  3fca7e: ab0a         	add	r3, sp, #0x28
  3fca80: 4630         	mov	r0, r6
  3fca82: 4619         	mov	r1, r3
  3fca84: 47a8         	blx	r5
  3fca86: 9b01         	ldr	r3, [sp, #0x4]
  3fca88: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fca8c: 681b         	ldr	r3, [r3]
  3fca8e: 3330         	adds	r3, #0x30
  3fca90: 681d         	ldr	r5, [r3]
  3fca92: 9b01         	ldr	r3, [sp, #0x4]
  3fca94: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fca98: 4b66         	ldr	r3, [pc, #0x198]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fca9a: 58e3         	ldr	r3, [r4, r3]
  3fca9c: 681b         	ldr	r3, [r3]
  3fca9e: 681b         	ldr	r3, [r3]
  3fcaa0: f503 7332    	add.w	r3, r3, #0x2c8
  3fcaa4: 681b         	ldr	r3, [r3]
  3fcaa6: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcaa8: 58a2         	ldr	r2, [r4, r2]
  3fcaaa: 6812         	ldr	r2, [r2]
  3fcaac: 4610         	mov	r0, r2
  3fcaae: 4798         	blx	r3
  3fcab0: ee07 0a10    	vmov	s14, r0
  3fcab4: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  3fcab8: eec7 7a87    	vdiv.f32	s15, s15, s14
  3fcabc: 4630         	mov	r0, r6
  3fcabe: ee17 1a90    	vmov	r1, s15
  3fcac2: 47a8         	blx	r5
  3fcac4: 9b01         	ldr	r3, [sp, #0x4]
  3fcac6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fcaca: 681b         	ldr	r3, [r3]
  3fcacc: 3338         	adds	r3, #0x38
  3fcace: 681d         	ldr	r5, [r3]
  3fcad0: 9b01         	ldr	r3, [sp, #0x4]
  3fcad2: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fcad6: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcad8: 58e3         	ldr	r3, [r4, r3]
  3fcada: 681b         	ldr	r3, [r3]
  3fcadc: 681b         	ldr	r3, [r3]
  3fcade: f503 7332    	add.w	r3, r3, #0x2c8
  3fcae2: 681b         	ldr	r3, [r3]
  3fcae4: 4a53         	ldr	r2, [pc, #0x14c]        @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcae6: 58a2         	ldr	r2, [r4, r2]
  3fcae8: 6812         	ldr	r2, [r2]
  3fcaea: 4610         	mov	r0, r2
  3fcaec: 4798         	blx	r3
  3fcaee: ee07 0a10    	vmov	s14, r0
  3fcaf2: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3fcaf6: eec7 7a87    	vdiv.f32	s15, s15, s14
  3fcafa: 4630         	mov	r0, r6
  3fcafc: ee17 1a90    	vmov	r1, s15
  3fcb00: 47a8         	blx	r5
  3fcb02: 9b03         	ldr	r3, [sp, #0xc]
  3fcb04: 681b         	ldr	r3, [r3]
  3fcb06: f503 7348    	add.w	r3, r3, #0x320
  3fcb0a: 681b         	ldr	r3, [r3]
  3fcb0c: aa0a         	add	r2, sp, #0x28
  3fcb0e: 4610         	mov	r0, r2
  3fcb10: 9903         	ldr	r1, [sp, #0xc]
  3fcb12: 4798         	blx	r3
  3fcb14: 9b01         	ldr	r3, [sp, #0x4]
  3fcb16: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fcb1a: 681b         	ldr	r3, [r3]
  3fcb1c: 334c         	adds	r3, #0x4c
  3fcb1e: 681d         	ldr	r5, [r3]
  3fcb20: 9b01         	ldr	r3, [sp, #0x4]
  3fcb22: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fcb26: 461e         	mov	r6, r3
  3fcb28: ed9d 7b0a    	vldr	d7, [sp, #40]
  3fcb2c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3fcb30: ed9d 7b0c    	vldr	d7, [sp, #48]
  3fcb34: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fcb38: ab04         	add	r3, sp, #0x10
  3fcb3a: 4618         	mov	r0, r3
  3fcb3c: ee16 1a90    	vmov	r1, s13
  3fcb40: ee17 2a90    	vmov	r2, s15
  3fcb44: f196 f8d4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1961a8
  3fcb48: ab04         	add	r3, sp, #0x10
  3fcb4a: 4630         	mov	r0, r6
  3fcb4c: 4619         	mov	r1, r3
  3fcb4e: 47a8         	blx	r5
  3fcb50: 9b01         	ldr	r3, [sp, #0x4]
  3fcb52: f8d3 514c    	ldr.w	r5, [r3, #0x14c]
  3fcb56: 9b01         	ldr	r3, [sp, #0x4]
  3fcb58: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fcb5c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fcb60: 4618         	mov	r0, r3
  3fcb62: f751 fcbd    	bl	0x34e4e0 <Joypad::getFireAngle()> @ imm = #-0xae686
  3fcb66: 4603         	mov	r3, r0
  3fcb68: 4628         	mov	r0, r5
  3fcb6a: 9900         	ldr	r1, [sp]
  3fcb6c: 461a         	mov	r2, r3
  3fcb6e: f753 f845    	bl	0x34fbfc <LaserSight::updateStep(float, float)> @ imm = #-0xacf76
  3fcb72: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcb74: 58e3         	ldr	r3, [r4, r3]
  3fcb76: 681b         	ldr	r3, [r3]
  3fcb78: 681b         	ldr	r3, [r3]
  3fcb7a: f503 73ec    	add.w	r3, r3, #0x1d8
  3fcb7e: 681b         	ldr	r3, [r3]
  3fcb80: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcb82: 58a2         	ldr	r2, [r4, r2]
  3fcb84: 6812         	ldr	r2, [r2]
  3fcb86: 4610         	mov	r0, r2
  3fcb88: 4798         	blx	r3
  3fcb8a: 4603         	mov	r3, r0
  3fcb8c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fcb90: 681a         	ldr	r2, [r3]
  3fcb92: 3298         	adds	r2, #0x98
  3fcb94: 6812         	ldr	r2, [r2]
  3fcb96: 4618         	mov	r0, r3
  3fcb98: 9902         	ldr	r1, [sp, #0x8]
  3fcb9a: 4790         	blx	r2
  3fcb9c: 9b01         	ldr	r3, [sp, #0x4]
  3fcb9e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3fcba2: 681b         	ldr	r3, [r3]
  3fcba4: 3390         	adds	r3, #0x90
  3fcba6: 681d         	ldr	r5, [r3]
  3fcba8: 9b01         	ldr	r3, [sp, #0x4]
  3fcbaa: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3fcbae: 9b03         	ldr	r3, [sp, #0xc]
  3fcbb0: 2b00         	cmp	r3, #0x0
  3fcbb2: d013         	beq	0x3fcbdc <Stage::updateSight(float)+0x284> @ imm = #0x26
  3fcbb4: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcbb6: 58e3         	ldr	r3, [r4, r3]
  3fcbb8: 681b         	ldr	r3, [r3]
  3fcbba: 681b         	ldr	r3, [r3]
  3fcbbc: f503 7319    	add.w	r3, r3, #0x264
  3fcbc0: 681b         	ldr	r3, [r3]
  3fcbc2: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcbc4: 58a2         	ldr	r2, [r4, r2]
  3fcbc6: 6812         	ldr	r2, [r2]
  3fcbc8: 4610         	mov	r0, r2
  3fcbca: 4798         	blx	r3
  3fcbcc: 4603         	mov	r3, r0
  3fcbce: f083 0301    	eor	r3, r3, #0x1
  3fcbd2: b2db         	uxtb	r3, r3
  3fcbd4: 2b00         	cmp	r3, #0x0
  3fcbd6: d001         	beq	0x3fcbdc <Stage::updateSight(float)+0x284> @ imm = #0x2
  3fcbd8: 2301         	movs	r3, #0x1
  3fcbda: e000         	b	0x3fcbde <Stage::updateSight(float)+0x286> @ imm = #0x0
  3fcbdc: 2300         	movs	r3, #0x0
  3fcbde: 4630         	mov	r0, r6
  3fcbe0: 4619         	mov	r1, r3
  3fcbe2: 47a8         	blx	r5
  3fcbe4: 9b03         	ldr	r3, [sp, #0xc]
  3fcbe6: 2b00         	cmp	r3, #0x0
  3fcbe8: d00e         	beq	0x3fcc08 <Stage::updateSight(float)+0x2b0> @ imm = #0x1c
  3fcbea: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcbec: 58e3         	ldr	r3, [r4, r3]
  3fcbee: 681b         	ldr	r3, [r3]
  3fcbf0: 681b         	ldr	r3, [r3]
  3fcbf2: f503 7319    	add.w	r3, r3, #0x264
  3fcbf6: 681b         	ldr	r3, [r3]
  3fcbf8: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3fcc34 <Stage::updateSight(float)+0x2dc>
  3fcbfa: 58a2         	ldr	r2, [r4, r2]
  3fcbfc: 6812         	ldr	r2, [r2]
  3fcbfe: 4610         	mov	r0, r2
  3fcc00: 4798         	blx	r3
  3fcc02: 4603         	mov	r3, r0
  3fcc04: 2b00         	cmp	r3, #0x0
  3fcc06: d001         	beq	0x3fcc0c <Stage::updateSight(float)+0x2b4> @ imm = #0x2
  3fcc08: 2301         	movs	r3, #0x1
  3fcc0a: e000         	b	0x3fcc0e <Stage::updateSight(float)+0x2b6> @ imm = #0x0
  3fcc0c: 2300         	movs	r3, #0x0
  3fcc0e: 2b00         	cmp	r3, #0x0
  3fcc10: d00b         	beq	0x3fcc2a <Stage::updateSight(float)+0x2d2> @ imm = #0x16
  3fcc12: 9b01         	ldr	r3, [sp, #0x4]
  3fcc14: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fcc18: 681b         	ldr	r3, [r3]
  3fcc1a: 3390         	adds	r3, #0x90
  3fcc1c: 681b         	ldr	r3, [r3]
  3fcc1e: 9a01         	ldr	r2, [sp, #0x4]
  3fcc20: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3fcc24: 4610         	mov	r0, r2
  3fcc26: 2100         	movs	r1, #0x0
  3fcc28: 4798         	blx	r3
  3fcc2a: b00e         	add	sp, #0x38
  3fcc2c: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3fcc2d); words below are literal-pool data ---
  3fcc2e: bf00         	nop
  3fcc30: 60a6         	str	r6, [r4, #0x8]
  3fcc32: 0053         	lsls	r3, r2, #0x1
  3fcc34: d784         	bvc	0x3fcb40 <Stage::updateSight(float)+0x1e8> @ imm = #-0xf8
  3fcc36: ffff b5f0    	<unknown>

// ==== Stage::updateView
//      file offset 0x3fcc38 (= ELF address; Ghidra 0x40cc38), 832 bytes, Thumb-2
  3fcc38: b5f0         	push	{r4, r5, r6, r7, lr}
  3fcc3a: ed2d 8b04    	vpush	{d8, d9}
  3fcc3e: b093         	sub	sp, #0x4c
  3fcc40: 9001         	str	r0, [sp, #0x4]
  3fcc42: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x3fcd04 <Stage::updateView()+0xcc>
  3fcc44: 447c         	add	r4, pc
  3fcc46: 9b01         	ldr	r3, [sp, #0x4]
  3fcc48: f503 7594    	add.w	r5, r3, #0x128
  3fcc4c: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x3fcd08 <Stage::updateView()+0xd0>
  3fcc4e: 58e3         	ldr	r3, [r4, r3]
  3fcc50: ed93 7a00    	vldr	s14, [r3]
  3fcc54: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fcc58: eec7 6a27    	vdiv.f32	s13, s14, s15
  3fcc5c: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x3fcd08 <Stage::updateView()+0xd0>
  3fcc5e: 58e3         	ldr	r3, [r4, r3]
  3fcc60: ed93 7a01    	vldr	s14, [r3, #4]
  3fcc64: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3fcc68: ee87 7a27    	vdiv.f32	s14, s14, s15
  3fcc6c: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3fcc70: ee77 7a67    	vsub.f32	s15, s14, s15
  3fcc74: ab0e         	add	r3, sp, #0x38
  3fcc76: 4618         	mov	r0, r3
  3fcc78: ee16 1a90    	vmov	r1, s13
  3fcc7c: ee17 2a90    	vmov	r2, s15
  3fcc80: f196 f836    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19606c
  3fcc84: ab0e         	add	r3, sp, #0x38
  3fcc86: 4628         	mov	r0, r5
  3fcc88: 4619         	mov	r1, r3
  3fcc8a: f196 f85f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1960be
  3fcc8e: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3fcd0c <Stage::updateView()+0xd4>
  3fcc90: 58e3         	ldr	r3, [r4, r3]
  3fcc92: 681b         	ldr	r3, [r3]
  3fcc94: 681b         	ldr	r3, [r3]
  3fcc96: f503 73ec    	add.w	r3, r3, #0x1d8
  3fcc9a: 681b         	ldr	r3, [r3]
  3fcc9c: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3fcd0c <Stage::updateView()+0xd4>
  3fcc9e: 58a2         	ldr	r2, [r4, r2]
  3fcca0: 6812         	ldr	r2, [r2]
  3fcca2: 4610         	mov	r0, r2
  3fcca4: 4798         	blx	r3
  3fcca6: 4603         	mov	r3, r0
  3fcca8: ed93 7a6e    	vldr	s14, [r3, #440]
  3fccac: eddf 7a14    	vldr	s15, [pc, #80]          @ 0x3fcd00 <Stage::updateView()+0xc8>
  3fccb0: ee67 7a27    	vmul.f32	s15, s14, s15
  3fccb4: edcd 7a02    	vstr	s15, [sp, #8]
  3fccb8: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3fcd10 <Stage::updateView()+0xd8>
  3fccba: 58e3         	ldr	r3, [r4, r3]
  3fccbc: 681b         	ldr	r3, [r3]
  3fccbe: 4618         	mov	r0, r3
  3fccc0: f7ef fbcc    	bl	0x3ec45c <SoldierManager::getHostController()> @ imm = #-0x10868
  3fccc4: 4603         	mov	r3, r0
  3fccc6: 681a         	ldr	r2, [r3]
  3fccc8: f502 722d    	add.w	r2, r2, #0x2b4
  3fcccc: 6812         	ldr	r2, [r2]
  3fccce: 4618         	mov	r0, r3
  3fccd0: 4790         	blx	r2
  3fccd2: 4603         	mov	r3, r0
  3fccd4: 2b28         	cmp	r3, #0x28
  3fccd6: dd21         	ble	0x3fcd1c <Stage::updateView()+0xe4> @ imm = #0x42
  3fccd8: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3fcd10 <Stage::updateView()+0xd8>
  3fccda: 58e3         	ldr	r3, [r4, r3]
  3fccdc: 681b         	ldr	r3, [r3]
  3fccde: 4618         	mov	r0, r3
  3fcce0: f7ef fbbc    	bl	0x3ec45c <SoldierManager::getHostController()> @ imm = #-0x10888
  3fcce4: 4603         	mov	r3, r0
  3fcce6: 681a         	ldr	r2, [r3]
  3fcce8: f502 722d    	add.w	r2, r2, #0x2b4
  3fccec: 6812         	ldr	r2, [r2]
  3fccee: 4618         	mov	r0, r3
  3fccf0: 4790         	blx	r2
  3fccf2: 4603         	mov	r3, r0
  3fccf4: ee07 3a10    	vmov	s14, r3
  3fccf8: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3fccfc: e010         	b	0x3fcd20 <Stage::updateView()+0xe8> @ imm = #0x20
  3fccfe: bf00         	nop
  3fcd00: fa35 3c8e    	<unknown>
  3fcd04: 5dc4         	ldrb	r4, [r0, r7]
  3fcd06: 0053         	lsls	r3, r2, #0x1
  3fcd08: d724         	bvc	0x3fcd54 <Stage::updateView()+0x11c> @ imm = #0x48
  3fcd0a: ffff d784    	<unknown>
  3fcd0e: ffff d910    	vqshrn.u64	d29, q0, #0x1
  3fcd12: ffff 0000    	<unknown>
  3fcd16: 4220         	tst	r0, r4
  3fcd18: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  3fcd1a: 3ccc         	subs	r4, #0xcc
  3fcd1c: ed5f 7a03    	vldr	s15, [pc, #-12]         @ 0x3fcd14 <Stage::updateView()+0xdc>
  3fcd20: edcd 7a03    	vstr	s15, [sp, #12]
  3fcd24: eddd 7a03    	vldr	s15, [sp, #12]
  3fcd28: eef1 7a67    	vneg.f32	s15, s15
  3fcd2c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3fcd30: eddd 7a02    	vldr	s15, [sp, #8]
  3fcd34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3fcd38: ec51 0b17    	vmov	r0, r1, d7
  3fcd3c: f6d9 e8e4    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x126e38
  3fcd40: ec41 0b17    	vmov	d7, r0, r1
  3fcd44: ee28 7b07    	vmul.f64	d7, d8, d7
  3fcd48: eeb7 9bc7    	vcvt.f32.f64	s18, d7
  3fcd4c: eddd 7a03    	vldr	s15, [sp, #12]
  3fcd50: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3fcd54: eddd 7a02    	vldr	s15, [sp, #8]
  3fcd58: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3fcd5c: ec51 0b17    	vmov	r0, r1, d7
  3fcd60: f6d9 e8d8    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x126e50
  3fcd64: ec41 0b17    	vmov	d7, r0, r1
  3fcd68: ee28 7b07    	vmul.f64	d7, d8, d7
  3fcd6c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fcd70: ab04         	add	r3, sp, #0x10
  3fcd72: 4618         	mov	r0, r3
  3fcd74: ee19 1a10    	vmov	r1, s18
  3fcd78: ee17 2a90    	vmov	r2, s15
  3fcd7c: f195 ffb8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x195f70
  3fcd80: 9b01         	ldr	r3, [sp, #0x4]
  3fcd82: f503 739e    	add.w	r3, r3, #0x13c
  3fcd86: a906         	add	r1, sp, #0x18
  3fcd88: aa04         	add	r2, sp, #0x10
  3fcd8a: 4608         	mov	r0, r1
  3fcd8c: 4611         	mov	r1, r2
  3fcd8e: 461a         	mov	r2, r3
  3fcd90: f7fd f914    	bl	0x3f9fbc <SplashLayer::inviteCheck(float)+0x1e0> @ imm = #-0x2dd8
  3fcd94: 9b01         	ldr	r3, [sp, #0x4]
  3fcd96: f503 759e    	add.w	r5, r3, #0x13c
  3fcd9a: 9b01         	ldr	r3, [sp, #0x4]
  3fcd9c: f503 769e    	add.w	r6, r3, #0x13c
  3fcda0: aa0c         	add	r2, sp, #0x30
  3fcda2: ab06         	add	r3, sp, #0x18
  3fcda4: 4610         	mov	r0, r2
  3fcda6: 4619         	mov	r1, r3
  3fcda8: ed1f 0a25    	vldr	s0, [pc, #-148]         @ 0x3fcd18 <Stage::updateView()+0xe0>
  3fcdac: f7fd f916    	bl	0x3f9fdc <SplashLayer::inviteCheck(float)+0x200> @ imm = #-0x2dd4
  3fcdb0: aa0e         	add	r2, sp, #0x38
  3fcdb2: ab0c         	add	r3, sp, #0x30
  3fcdb4: 4610         	mov	r0, r2
  3fcdb6: 4631         	mov	r1, r6
  3fcdb8: 461a         	mov	r2, r3
  3fcdba: f7fd f8ef    	bl	0x3f9f9c <SplashLayer::inviteCheck(float)+0x1c0> @ imm = #-0x2e22
  3fcdbe: ab0e         	add	r3, sp, #0x38
  3fcdc0: 4628         	mov	r0, r5
  3fcdc2: 4619         	mov	r1, r3
  3fcdc4: f195 ffc2    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x195f84
  3fcdc8: 9b01         	ldr	r3, [sp, #0x4]
  3fcdca: f503 7594    	add.w	r5, r3, #0x128
  3fcdce: 4b65         	ldr	r3, [pc, #0x194]        @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcdd0: 58e3         	ldr	r3, [r4, r3]
  3fcdd2: 681b         	ldr	r3, [r3]
  3fcdd4: 681b         	ldr	r3, [r3]
  3fcdd6: 3350         	adds	r3, #0x50
  3fcdd8: 681b         	ldr	r3, [r3]
  3fcdda: 4a62         	ldr	r2, [pc, #0x188]        @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcddc: 58a2         	ldr	r2, [r4, r2]
  3fcdde: 6812         	ldr	r2, [r2]
  3fcde0: 4610         	mov	r0, r2
  3fcde2: 4798         	blx	r3
  3fcde4: 4603         	mov	r3, r0
  3fcde6: aa0e         	add	r2, sp, #0x38
  3fcde8: 4610         	mov	r0, r2
  3fcdea: 4629         	mov	r1, r5
  3fcdec: 461a         	mov	r2, r3
  3fcdee: f7fd f8e5    	bl	0x3f9fbc <SplashLayer::inviteCheck(float)+0x1e0> @ imm = #-0x2e36
  3fcdf2: ab0e         	add	r3, sp, #0x38
  3fcdf4: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x3fcf68 <Stage::updateView()+0x330>
  3fcdf6: 58a2         	ldr	r2, [r4, r2]
  3fcdf8: 4610         	mov	r0, r2
  3fcdfa: 4619         	mov	r1, r3
  3fcdfc: f195 ffa6    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x195f4c
  3fce00: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3fcf6c <Stage::updateView()+0x334>
  3fce02: 58e3         	ldr	r3, [r4, r3]
  3fce04: 681b         	ldr	r3, [r3]
  3fce06: 4618         	mov	r0, r3
  3fce08: f7ef fb28    	bl	0x3ec45c <SoldierManager::getHostController()> @ imm = #-0x109b0
  3fce0c: 4603         	mov	r3, r0
  3fce0e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3fce12: ad0e         	add	r5, sp, #0x38
  3fce14: 3328         	adds	r3, #0x28
  3fce16: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3fce18: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3fce1c: ed9d 7b0e    	vldr	d7, [sp, #56]
  3fce20: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3fce24: ed9d 7b10    	vldr	d7, [sp, #64]
  3fce28: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fce2c: ab0c         	add	r3, sp, #0x30
  3fce2e: 4618         	mov	r0, r3
  3fce30: ee16 1a90    	vmov	r1, s13
  3fce34: ee17 2a90    	vmov	r2, s15
  3fce38: f195 ff5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x195eb4
  3fce3c: aa08         	add	r2, sp, #0x20
  3fce3e: ab0c         	add	r3, sp, #0x30
  3fce40: 4610         	mov	r0, r2
  3fce42: 4619         	mov	r1, r3
  3fce44: 4b48         	ldr	r3, [pc, #0x120]        @ 0x3fcf68 <Stage::updateView()+0x330>
  3fce46: 58e3         	ldr	r3, [r4, r3]
  3fce48: 461a         	mov	r2, r3
  3fce4a: f7fd f8b7    	bl	0x3f9fbc <SplashLayer::inviteCheck(float)+0x1e0> @ imm = #-0x2e92
  3fce4e: 4b45         	ldr	r3, [pc, #0x114]        @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce50: 58e3         	ldr	r3, [r4, r3]
  3fce52: 681b         	ldr	r3, [r3]
  3fce54: 681b         	ldr	r3, [r3]
  3fce56: 334c         	adds	r3, #0x4c
  3fce58: 681d         	ldr	r5, [r3]
  3fce5a: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce5c: 58e3         	ldr	r3, [r4, r3]
  3fce5e: 681b         	ldr	r3, [r3]
  3fce60: 461e         	mov	r6, r3
  3fce62: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce64: 58e3         	ldr	r3, [r4, r3]
  3fce66: 681b         	ldr	r3, [r3]
  3fce68: 681b         	ldr	r3, [r3]
  3fce6a: 3350         	adds	r3, #0x50
  3fce6c: 681b         	ldr	r3, [r3]
  3fce6e: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce70: 58a2         	ldr	r2, [r4, r2]
  3fce72: 6812         	ldr	r2, [r2]
  3fce74: 4610         	mov	r0, r2
  3fce76: 4798         	blx	r3
  3fce78: 4602         	mov	r2, r0
  3fce7a: a90c         	add	r1, sp, #0x30
  3fce7c: ab08         	add	r3, sp, #0x20
  3fce7e: 4608         	mov	r0, r1
  3fce80: 4611         	mov	r1, r2
  3fce82: 461a         	mov	r2, r3
  3fce84: f7fd f89a    	bl	0x3f9fbc <SplashLayer::inviteCheck(float)+0x1e0> @ imm = #-0x2ecc
  3fce88: ab0c         	add	r3, sp, #0x30
  3fce8a: 4630         	mov	r0, r6
  3fce8c: 4619         	mov	r1, r3
  3fce8e: 47a8         	blx	r5
  3fce90: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce92: 58e3         	ldr	r3, [r4, r3]
  3fce94: 681b         	ldr	r3, [r3]
  3fce96: 681b         	ldr	r3, [r3]
  3fce98: 334c         	adds	r3, #0x4c
  3fce9a: 681d         	ldr	r5, [r3]
  3fce9c: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fce9e: 58e3         	ldr	r3, [r4, r3]
  3fcea0: 681b         	ldr	r3, [r3]
  3fcea2: 461e         	mov	r6, r3
  3fcea4: 9b01         	ldr	r3, [sp, #0x4]
  3fcea6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3fceaa: aa0a         	add	r2, sp, #0x28
  3fceac: 4610         	mov	r0, r2
  3fceae: 4619         	mov	r1, r3
  3fceb0: f717 ff0e    	bl	0x314cd0 <EffectsManager::getShakeOffset()> @ imm = #-0xe81e4
  3fceb4: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fceb6: 58e3         	ldr	r3, [r4, r3]
  3fceb8: 681b         	ldr	r3, [r3]
  3fceba: 681b         	ldr	r3, [r3]
  3fcebc: 3350         	adds	r3, #0x50
  3fcebe: 681b         	ldr	r3, [r3]
  3fcec0: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcec2: 58a2         	ldr	r2, [r4, r2]
  3fcec4: 6812         	ldr	r2, [r2]
  3fcec6: 4610         	mov	r0, r2
  3fcec8: 4798         	blx	r3
  3fceca: 4603         	mov	r3, r0
  3fcecc: a90c         	add	r1, sp, #0x30
  3fcece: aa0a         	add	r2, sp, #0x28
  3fced0: 4608         	mov	r0, r1
  3fced2: 4611         	mov	r1, r2
  3fced4: 461a         	mov	r2, r3
  3fced6: f7fd f861    	bl	0x3f9f9c <SplashLayer::inviteCheck(float)+0x1c0> @ imm = #-0x2f3e
  3fceda: ab0c         	add	r3, sp, #0x30
  3fcedc: 4630         	mov	r0, r6
  3fcede: 4619         	mov	r1, r3
  3fcee0: 47a8         	blx	r5
  3fcee2: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcee4: 58e3         	ldr	r3, [r4, r3]
  3fcee6: 681b         	ldr	r3, [r3]
  3fcee8: 681b         	ldr	r3, [r3]
  3fceea: 334c         	adds	r3, #0x4c
  3fceec: 681d         	ldr	r5, [r3]
  3fceee: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcef0: 58e3         	ldr	r3, [r4, r3]
  3fcef2: 681b         	ldr	r3, [r3]
  3fcef4: 461e         	mov	r6, r3
  3fcef6: 9b01         	ldr	r3, [sp, #0x4]
  3fcef8: f503 779e    	add.w	r7, r3, #0x13c
  3fcefc: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcefe: 58e3         	ldr	r3, [r4, r3]
  3fcf00: 681b         	ldr	r3, [r3]
  3fcf02: 681b         	ldr	r3, [r3]
  3fcf04: 3350         	adds	r3, #0x50
  3fcf06: 681b         	ldr	r3, [r3]
  3fcf08: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3fcf64 <Stage::updateView()+0x32c>
  3fcf0a: 58a2         	ldr	r2, [r4, r2]
  3fcf0c: 6812         	ldr	r2, [r2]
  3fcf0e: 4610         	mov	r0, r2
  3fcf10: 4798         	blx	r3
  3fcf12: 4603         	mov	r3, r0
  3fcf14: aa0c         	add	r2, sp, #0x30
  3fcf16: 4610         	mov	r0, r2
  3fcf18: 4639         	mov	r1, r7
  3fcf1a: 461a         	mov	r2, r3
  3fcf1c: f7fd f83e    	bl	0x3f9f9c <SplashLayer::inviteCheck(float)+0x1c0> @ imm = #-0x2f84
  3fcf20: ab0c         	add	r3, sp, #0x30
  3fcf22: 4630         	mov	r0, r6
  3fcf24: 4619         	mov	r1, r3
  3fcf26: 47a8         	blx	r5
  3fcf28: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3fcf70 <Stage::updateView()+0x338>
  3fcf2a: 58e3         	ldr	r3, [r4, r3]
  3fcf2c: 681b         	ldr	r3, [r3]
  3fcf2e: 681b         	ldr	r3, [r3]
  3fcf30: 3340         	adds	r3, #0x40
  3fcf32: 681d         	ldr	r5, [r3]
  3fcf34: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3fcf70 <Stage::updateView()+0x338>
  3fcf36: 58e3         	ldr	r3, [r4, r3]
  3fcf38: 681b         	ldr	r3, [r3]
  3fcf3a: 461e         	mov	r6, r3
  3fcf3c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x3fcf74 <Stage::updateView()+0x33c>
  3fcf3e: 58e3         	ldr	r3, [r4, r3]
  3fcf40: 681b         	ldr	r3, [r3]
  3fcf42: 681b         	ldr	r3, [r3]
  3fcf44: f503 7332    	add.w	r3, r3, #0x2c8
  3fcf48: 681b         	ldr	r3, [r3]
  3fcf4a: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3fcf74 <Stage::updateView()+0x33c>
  3fcf4c: 58a2         	ldr	r2, [r4, r2]
  3fcf4e: 6812         	ldr	r2, [r2]
  3fcf50: 4610         	mov	r0, r2
  3fcf52: 4798         	blx	r3
  3fcf54: 4603         	mov	r3, r0
  3fcf56: 4630         	mov	r0, r6
  3fcf58: 4619         	mov	r1, r3
  3fcf5a: 47a8         	blx	r5
  3fcf5c: b013         	add	sp, #0x4c
  3fcf5e: ecbd 8b04    	vpop	{d8, d9}
  3fcf62: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3fcf63); words below are literal-pool data ---
  3fcf64: d744         	bvc	0x3fcff0 <Stage::updateStep(float)+0x78> @ imm = #0x88
  3fcf66: ffff d728    	<unknown>
  3fcf6a: ffff d910    	vqshrn.u64	d29, q0, #0x1
  3fcf6e: ffff d720    	<unknown>
  3fcf72: ffff d784    	<unknown>
  3fcf76: ffff b5f0    	<unknown>

// ==== Stage::updateStep
//      file offset 0x3fcf78 (= ELF address; Ghidra 0x40cf78), 992 bytes, Thumb-2
  3fcf78: b5f0         	push	{r4, r5, r6, r7, lr}
  3fcf7a: ed2d 8b02    	vpush	{d8}
  3fcf7e: b09f         	sub	sp, #0x7c
  3fcf80: 9009         	str	r0, [sp, #0x24]
  3fcf82: 9108         	str	r1, [sp, #0x20]
  3fcf84: 4cd3         	ldr	r4, [pc, #0x34c]        @ 0x3fd2d4 <Stage::updateStep(float)+0x35c>
  3fcf86: 447c         	add	r4, pc
  3fcf88: 9b09         	ldr	r3, [sp, #0x24]
  3fcf8a: ed93 7a51    	vldr	s14, [r3, #324]
  3fcf8e: eddd 7a08    	vldr	s15, [sp, #32]
  3fcf92: ee77 7a27    	vadd.f32	s15, s14, s15
  3fcf96: 9b09         	ldr	r3, [sp, #0x24]
  3fcf98: edc3 7a51    	vstr	s15, [r3, #324]
  3fcf9c: 9b09         	ldr	r3, [sp, #0x24]
  3fcf9e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fcfa2: 4618         	mov	r0, r3
  3fcfa4: 9908         	ldr	r1, [sp, #0x20]
  3fcfa6: f740 fc4d    	bl	0x33d844 <HUD::updateStep(float)> @ imm = #-0xbf766
  3fcfaa: 9b09         	ldr	r3, [sp, #0x24]
  3fcfac: 681b         	ldr	r3, [r3]
  3fcfae: f503 7301    	add.w	r3, r3, #0x204
  3fcfb2: 681b         	ldr	r3, [r3]
  3fcfb4: 9809         	ldr	r0, [sp, #0x24]
  3fcfb6: 9908         	ldr	r1, [sp, #0x20]
  3fcfb8: 4798         	blx	r3
  3fcfba: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x3fd2d8 <Stage::updateStep(float)+0x360>
  3fcfbc: 58e3         	ldr	r3, [r4, r3]
  3fcfbe: 781b         	ldrb	r3, [r3]
  3fcfc0: f083 0301    	eor	r3, r3, #0x1
  3fcfc4: b2db         	uxtb	r3, r3
  3fcfc6: 2b00         	cmp	r3, #0x0
  3fcfc8: f000 81ba    	beq.w	0x3fd340 <Stage::updateStep(float)+0x3c8> @ imm = #0x374
  3fcfcc: 9b09         	ldr	r3, [sp, #0x24]
  3fcfce: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3fcfd2: 4618         	mov	r0, r3
  3fcfd4: 9908         	ldr	r1, [sp, #0x20]
  3fcfd6: f794 fd81    	bl	0x391adc <PhysicsManager::updateStep(float)> @ imm = #-0x6b4fe
  3fcfda: 9b09         	ldr	r3, [sp, #0x24]
  3fcfdc: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3fcfe0: 4618         	mov	r0, r3
  3fcfe2: 9908         	ldr	r1, [sp, #0x20]
  3fcfe4: f717 fb00    	bl	0x3145e8 <EffectsManager::updateStep(float)> @ imm = #-0xe8a00
  3fcfe8: 9b09         	ldr	r3, [sp, #0x24]
  3fcfea: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3fcfee: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fcff0: 58e3         	ldr	r3, [r4, r3]
  3fcff2: 681b         	ldr	r3, [r3]
  3fcff4: 681b         	ldr	r3, [r3]
  3fcff6: f503 7317    	add.w	r3, r3, #0x25c
  3fcffa: 681b         	ldr	r3, [r3]
  3fcffc: 4ab7         	ldr	r2, [pc, #0x2dc]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fcffe: 58a2         	ldr	r2, [r4, r2]
  3fd000: 6812         	ldr	r2, [r2]
  3fd002: 4610         	mov	r0, r2
  3fd004: 4798         	blx	r3
  3fd006: 4603         	mov	r3, r0
  3fd008: ee07 3a10    	vmov	s14, r3
  3fd00c: eef8 8ac7    	vcvt.f32.s32	s17, s14
  3fd010: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd012: 58e3         	ldr	r3, [r4, r3]
  3fd014: 681b         	ldr	r3, [r3]
  3fd016: 681b         	ldr	r3, [r3]
  3fd018: f503 7328    	add.w	r3, r3, #0x2a0
  3fd01c: 681b         	ldr	r3, [r3]
  3fd01e: 4aaf         	ldr	r2, [pc, #0x2bc]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd020: 58a2         	ldr	r2, [r4, r2]
  3fd022: 6812         	ldr	r2, [r2]
  3fd024: 4610         	mov	r0, r2
  3fd026: 4798         	blx	r3
  3fd028: ee07 0a10    	vmov	s14, r0
  3fd02c: eddf 7aa8    	vldr	s15, [pc, #672]         @ 0x3fd2d0 <Stage::updateStep(float)+0x358>
  3fd030: ee27 8a27    	vmul.f32	s16, s14, s15
  3fd034: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd036: 58e3         	ldr	r3, [r4, r3]
  3fd038: 681b         	ldr	r3, [r3]
  3fd03a: 681b         	ldr	r3, [r3]
  3fd03c: f503 7323    	add.w	r3, r3, #0x28c
  3fd040: 681b         	ldr	r3, [r3]
  3fd042: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd044: 58a2         	ldr	r2, [r4, r2]
  3fd046: 6812         	ldr	r2, [r2]
  3fd048: 4610         	mov	r0, r2
  3fd04a: 4798         	blx	r3
  3fd04c: 4603         	mov	r3, r0
  3fd04e: ee07 3a10    	vmov	s14, r3
  3fd052: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3fd056: eec8 7a27    	vdiv.f32	s15, s16, s15
  3fd05a: 4628         	mov	r0, r5
  3fd05c: ee18 1a90    	vmov	r1, s17
  3fd060: ee17 2a90    	vmov	r2, s15
  3fd064: f73e fff0    	bl	0x33c048 <HUD::setMeters(float, float)> @ imm = #-0xc1020
  3fd068: 9b09         	ldr	r3, [sp, #0x24]
  3fd06a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd06e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd072: 4618         	mov	r0, r3
  3fd074: 9908         	ldr	r1, [sp, #0x20]
  3fd076: f751 fc65    	bl	0x34e944 <Joypad::updateSpecialInput(float)> @ imm = #-0xae736
  3fd07a: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd07c: 58e3         	ldr	r3, [r4, r3]
  3fd07e: 681b         	ldr	r3, [r3]
  3fd080: 681b         	ldr	r3, [r3]
  3fd082: f503 730e    	add.w	r3, r3, #0x238
  3fd086: 681d         	ldr	r5, [r3]
  3fd088: 4b94         	ldr	r3, [pc, #0x250]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd08a: 58e3         	ldr	r3, [r4, r3]
  3fd08c: 681e         	ldr	r6, [r3]
  3fd08e: 9b09         	ldr	r3, [sp, #0x24]
  3fd090: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd094: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd098: 4618         	mov	r0, r3
  3fd09a: f751 fa21    	bl	0x34e4e0 <Joypad::getFireAngle()> @ imm = #-0xaebbe
  3fd09e: 4603         	mov	r3, r0
  3fd0a0: 4630         	mov	r0, r6
  3fd0a2: 4619         	mov	r1, r3
  3fd0a4: 47a8         	blx	r5
  3fd0a6: 4b8e         	ldr	r3, [pc, #0x238]        @ 0x3fd2e0 <Stage::updateStep(float)+0x368>
  3fd0a8: 58e3         	ldr	r3, [r4, r3]
  3fd0aa: 681b         	ldr	r3, [r3]
  3fd0ac: 4618         	mov	r0, r3
  3fd0ae: f761 fda5    	bl	0x35ebfc <MapManager::updatePlayerModifiers()> @ imm = #-0x9e4b6
  3fd0b2: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd0b4: 58e3         	ldr	r3, [r4, r3]
  3fd0b6: 681b         	ldr	r3, [r3]
  3fd0b8: 9a09         	ldr	r2, [sp, #0x24]
  3fd0ba: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3fd0be: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3fd0c2: f892 212f    	ldrb.w	r2, [r2, #0x12f]
  3fd0c6: f883 211c    	strb.w	r2, [r3, #0x11c]
  3fd0ca: 4b84         	ldr	r3, [pc, #0x210]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd0cc: 58e3         	ldr	r3, [r4, r3]
  3fd0ce: 681b         	ldr	r3, [r3]
  3fd0d0: 681b         	ldr	r3, [r3]
  3fd0d2: f503 733e    	add.w	r3, r3, #0x2f8
  3fd0d6: 681e         	ldr	r6, [r3]
  3fd0d8: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd0da: 58e3         	ldr	r3, [r4, r3]
  3fd0dc: 681f         	ldr	r7, [r3]
  3fd0de: 9b09         	ldr	r3, [sp, #0x24]
  3fd0e0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd0e4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd0e8: aa0e         	add	r2, sp, #0x38
  3fd0ea: 4610         	mov	r0, r2
  3fd0ec: 4619         	mov	r1, r3
  3fd0ee: f751 fb19    	bl	0x34e724 <Joypad::getDirectionVector()> @ imm = #-0xae9ce
  3fd0f2: 9b09         	ldr	r3, [sp, #0x24]
  3fd0f4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd0f8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd0fc: aa12         	add	r2, sp, #0x48
  3fd0fe: 4610         	mov	r0, r2
  3fd100: 4619         	mov	r1, r3
  3fd102: f751 f9fd    	bl	0x34e500 <Joypad::getOffset()> @ imm = #-0xaec06
  3fd106: 9b09         	ldr	r3, [sp, #0x24]
  3fd108: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd10c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd110: 4618         	mov	r0, r3
  3fd112: f751 fa17    	bl	0x34e544 <Joypad::getXOffset()> @ imm = #-0xaebd2
  3fd116: 4686         	mov	lr, r0
  3fd118: ad02         	add	r5, sp, #0x8
  3fd11a: ab12         	add	r3, sp, #0x48
  3fd11c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3fd11e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3fd122: f8cd e018    	str.w	lr, [sp, #0x18]
  3fd126: 466b         	mov	r3, sp
  3fd128: aa10         	add	r2, sp, #0x40
  3fd12a: e892 0003    	ldm.w	r2, {r0, r1}
  3fd12e: e883 0003    	stm.w	r3, {r0, r1}
  3fd132: ab0e         	add	r3, sp, #0x38
  3fd134: cb0c         	ldm	r3, {r2, r3}
  3fd136: 4638         	mov	r0, r7
  3fd138: 9908         	ldr	r1, [sp, #0x20]
  3fd13a: 47b0         	blx	r6
  3fd13c: 9b09         	ldr	r3, [sp, #0x24]
  3fd13e: 681b         	ldr	r3, [r3]
  3fd140: f503 7313    	add.w	r3, r3, #0x24c
  3fd144: 681b         	ldr	r3, [r3]
  3fd146: 9809         	ldr	r0, [sp, #0x24]
  3fd148: 9908         	ldr	r1, [sp, #0x20]
  3fd14a: 4798         	blx	r3
  3fd14c: 9b09         	ldr	r3, [sp, #0x24]
  3fd14e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd152: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd156: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3fd15a: 681b         	ldr	r3, [r3]
  3fd15c: 3390         	adds	r3, #0x90
  3fd15e: 681d         	ldr	r5, [r3]
  3fd160: 9b09         	ldr	r3, [sp, #0x24]
  3fd162: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd166: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd16a: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  3fd16e: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd170: 58e3         	ldr	r3, [r4, r3]
  3fd172: 681b         	ldr	r3, [r3]
  3fd174: 681b         	ldr	r3, [r3]
  3fd176: f503 73f6    	add.w	r3, r3, #0x1ec
  3fd17a: 681b         	ldr	r3, [r3]
  3fd17c: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd17e: 58a2         	ldr	r2, [r4, r2]
  3fd180: 6812         	ldr	r2, [r2]
  3fd182: 4610         	mov	r0, r2
  3fd184: 4798         	blx	r3
  3fd186: 4603         	mov	r3, r0
  3fd188: 4630         	mov	r0, r6
  3fd18a: 4619         	mov	r1, r3
  3fd18c: 47a8         	blx	r5
  3fd18e: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd190: 58e3         	ldr	r3, [r4, r3]
  3fd192: 681b         	ldr	r3, [r3]
  3fd194: 681b         	ldr	r3, [r3]
  3fd196: f503 730c    	add.w	r3, r3, #0x230
  3fd19a: 681d         	ldr	r5, [r3]
  3fd19c: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd19e: 58e3         	ldr	r3, [r4, r3]
  3fd1a0: 681b         	ldr	r3, [r3]
  3fd1a2: 461e         	mov	r6, r3
  3fd1a4: 9b09         	ldr	r3, [sp, #0x24]
  3fd1a6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd1aa: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd1ae: 4618         	mov	r0, r3
  3fd1b0: f751 f9c8    	bl	0x34e544 <Joypad::getXOffset()> @ imm = #-0xaec70
  3fd1b4: ee07 0a90    	vmov	s15, r0
  3fd1b8: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3fd1bc: 9b09         	ldr	r3, [sp, #0x24]
  3fd1be: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd1c2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd1c6: 4618         	mov	r0, r3
  3fd1c8: f751 f9f2    	bl	0x34e5b0 <Joypad::getYOffset()> @ imm = #-0xaec1c
  3fd1cc: ee07 0a90    	vmov	s15, r0
  3fd1d0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3fd1d4: ab16         	add	r3, sp, #0x58
  3fd1d6: 4618         	mov	r0, r3
  3fd1d8: eeb0 0b48    	vmov.f64	d0, d8
  3fd1dc: eeb0 1b47    	vmov.f64	d1, d7
  3fd1e0: f7fc ff0c    	bl	0x3f9ffc <SplashLayer::inviteCheck(float)+0x220> @ imm = #-0x31e8
  3fd1e4: 466b         	mov	r3, sp
  3fd1e6: aa18         	add	r2, sp, #0x60
  3fd1e8: e892 0003    	ldm.w	r2, {r0, r1}
  3fd1ec: e883 0003    	stm.w	r3, {r0, r1}
  3fd1f0: ab16         	add	r3, sp, #0x58
  3fd1f2: cb0c         	ldm	r3, {r2, r3}
  3fd1f4: 4630         	mov	r0, r6
  3fd1f6: 47a8         	blx	r5
  3fd1f8: 9b09         	ldr	r3, [sp, #0x24]
  3fd1fa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd1fe: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd202: 4618         	mov	r0, r3
  3fd204: f751 fb28    	bl	0x34e858 <Joypad::fire()> @ imm = #-0xae9b0
  3fd208: 4603         	mov	r3, r0
  3fd20a: 2b00         	cmp	r3, #0x0
  3fd20c: d00c         	beq	0x3fd228 <Stage::updateStep(float)+0x2b0> @ imm = #0x18
  3fd20e: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd210: 58e3         	ldr	r3, [r4, r3]
  3fd212: 681b         	ldr	r3, [r3]
  3fd214: 681b         	ldr	r3, [r3]
  3fd216: f503 7310    	add.w	r3, r3, #0x240
  3fd21a: 681b         	ldr	r3, [r3]
  3fd21c: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x3fd2dc <Stage::updateStep(float)+0x364>
  3fd21e: 58a2         	ldr	r2, [r4, r2]
  3fd220: 6812         	ldr	r2, [r2]
  3fd222: 4610         	mov	r0, r2
  3fd224: 9908         	ldr	r1, [sp, #0x20]
  3fd226: 4798         	blx	r3
  3fd228: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3fd2e0 <Stage::updateStep(float)+0x368>
  3fd22a: 58e3         	ldr	r3, [r4, r3]
  3fd22c: 681d         	ldr	r5, [r3]
  3fd22e: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3fd2e4 <Stage::updateStep(float)+0x36c>
  3fd230: 58e3         	ldr	r3, [r4, r3]
  3fd232: 681b         	ldr	r3, [r3]
  3fd234: 681b         	ldr	r3, [r3]
  3fd236: 3350         	adds	r3, #0x50
  3fd238: 681b         	ldr	r3, [r3]
  3fd23a: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x3fd2e4 <Stage::updateStep(float)+0x36c>
  3fd23c: 58a2         	ldr	r2, [r4, r2]
  3fd23e: 6812         	ldr	r2, [r2]
  3fd240: 4610         	mov	r0, r2
  3fd242: 4798         	blx	r3
  3fd244: 4603         	mov	r3, r0
  3fd246: edd3 7a00    	vldr	s15, [r3]
  3fd24a: eef1 7a67    	vneg.f32	s15, s15
  3fd24e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3fd252: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3fd2e4 <Stage::updateStep(float)+0x36c>
  3fd254: 58e3         	ldr	r3, [r4, r3]
  3fd256: 681b         	ldr	r3, [r3]
  3fd258: 681b         	ldr	r3, [r3]
  3fd25a: 3350         	adds	r3, #0x50
  3fd25c: 681b         	ldr	r3, [r3]
  3fd25e: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3fd2e4 <Stage::updateStep(float)+0x36c>
  3fd260: 58a2         	ldr	r2, [r4, r2]
  3fd262: 6812         	ldr	r2, [r2]
  3fd264: 4610         	mov	r0, r2
  3fd266: 4798         	blx	r3
  3fd268: 4603         	mov	r3, r0
  3fd26a: edd3 7a01    	vldr	s15, [r3, #4]
  3fd26e: eef1 7a67    	vneg.f32	s15, s15
  3fd272: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3fd276: ab1a         	add	r3, sp, #0x68
  3fd278: 4618         	mov	r0, r3
  3fd27a: eeb0 0b48    	vmov.f64	d0, d8
  3fd27e: eeb0 1b47    	vmov.f64	d1, d7
  3fd282: f7fc febb    	bl	0x3f9ffc <SplashLayer::inviteCheck(float)+0x220> @ imm = #-0x328a
  3fd286: 466b         	mov	r3, sp
  3fd288: aa1c         	add	r2, sp, #0x70
  3fd28a: e892 0003    	ldm.w	r2, {r0, r1}
  3fd28e: e883 0003    	stm.w	r3, {r0, r1}
  3fd292: ab1a         	add	r3, sp, #0x68
  3fd294: cb0c         	ldm	r3, {r2, r3}
  3fd296: 4628         	mov	r0, r5
  3fd298: f763 fb72    	bl	0x360980 <MapManager::updateVisibleTiles(cpVect)> @ imm = #-0x9c91c
  3fd29c: 9b09         	ldr	r3, [sp, #0x24]
  3fd29e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3fd2a2: 4618         	mov	r0, r3
  3fd2a4: 9908         	ldr	r1, [sp, #0x20]
  3fd2a6: f7b6 faeb    	bl	0x3b3880 <ProjectileManager::updateStep(float)> @ imm = #-0x49a2a
  3fd2aa: 9b09         	ldr	r3, [sp, #0x24]
  3fd2ac: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3fd2b0: 4618         	mov	r0, r3
  3fd2b2: 9908         	ldr	r1, [sp, #0x20]
  3fd2b4: f01c fe88    	bl	0x419fc8 <WeaponManager::updateStep(float)> @ imm = #0x1cd10
  3fd2b8: 9b09         	ldr	r3, [sp, #0x24]
  3fd2ba: 681b         	ldr	r3, [r3]
  3fd2bc: f503 7316    	add.w	r3, r3, #0x258
  3fd2c0: 681b         	ldr	r3, [r3]
  3fd2c2: 9809         	ldr	r0, [sp, #0x24]
  3fd2c4: 4798         	blx	r3
  3fd2c6: f77a fc3b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x8578a
  3fd2ca: 4603         	mov	r3, r0
  3fd2cc: e00c         	b	0x3fd2e8 <Stage::updateStep(float)+0x370> @ imm = #0x18
  3fd2ce: bf00         	nop
  3fd2d0: 0000         	movs	r0, r0
  3fd2d2: 42c8         	cmn	r0, r1
  3fd2d4: 5a82         	ldrh	r2, [r0, r2]
  3fd2d6: 0053         	lsls	r3, r2, #0x1
  3fd2d8: db18         	blt	0x3fd30c <Stage::updateStep(float)+0x394> @ imm = #0x30
  3fd2da: ffff d784    	<unknown>
  3fd2de: ffff df04    	<unknown>
  3fd2e2: ffff d744    	<unknown>
  3fd2e6: ffff 4618    	vqshlu.s32	d20, d8, #0x1f
  3fd2ea: 9908         	ldr	r1, [sp, #0x20]
  3fd2ec: f77c fb8e    	bl	0x379a0c <NetworkManager::updateNetworkObjects(float)> @ imm = #-0x838e4
  3fd2f0: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3fd350 <Stage::updateStep(float)+0x3d8>
  3fd2f2: 58e3         	ldr	r3, [r4, r3]
  3fd2f4: 681b         	ldr	r3, [r3]
  3fd2f6: 4618         	mov	r0, r3
  3fd2f8: 9908         	ldr	r1, [sp, #0x20]
  3fd2fa: f7ee fdaf    	bl	0x3ebe5c <SoldierManager::updateStep(float)> @ imm = #-0x114a2
  3fd2fe: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3fd354 <Stage::updateStep(float)+0x3dc>
  3fd300: 58e3         	ldr	r3, [r4, r3]
  3fd302: 681b         	ldr	r3, [r3]
  3fd304: 681b         	ldr	r3, [r3]
  3fd306: f503 73d8    	add.w	r3, r3, #0x1b0
  3fd30a: 681b         	ldr	r3, [r3]
  3fd30c: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3fd354 <Stage::updateStep(float)+0x3dc>
  3fd30e: 58a2         	ldr	r2, [r4, r2]
  3fd310: 6812         	ldr	r2, [r2]
  3fd312: a90a         	add	r1, sp, #0x28
  3fd314: 4608         	mov	r0, r1
  3fd316: 4611         	mov	r1, r2
  3fd318: 4798         	blx	r3
  3fd31a: ab0a         	add	r3, sp, #0x28
  3fd31c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3fd31e: f2d9 fecb    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d9d96
  3fd322: ec41 0b16    	vmov	d6, r0, r1
  3fd326: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x3fd348 <Stage::updateStep(float)+0x3d0>
  3fd32a: ee26 6b07    	vmul.f64	d6, d6, d7
  3fd32e: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3fd332: ee36 7b07    	vadd.f64	d7, d6, d7
  3fd336: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3fd33a: 9b09         	ldr	r3, [sp, #0x24]
  3fd33c: edc3 7a5a    	vstr	s15, [r3, #360]
  3fd340: b01f         	add	sp, #0x7c
  3fd342: ecbd 8b02    	vpop	{d8}
  3fd346: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3fd347); words below are literal-pool data ---
  3fd348: 3650         	adds	r6, #0x50
  3fd34a: 0ae5         	lsrs	r5, r4, #0xb
  3fd34c: 72ef         	strb	r7, [r5, #0xb]
  3fd34e: bf61         	itttt	vs
  3fd350: d910         	bvs	0x3fd374 <Stage::returnToLobby(cocos2d::CCObject*)+0x1c> @ imm = #0x20
  3fd352: ffff d784    	<unknown>
  3fd356: ffff b500    	<unknown>

// ==== Stage::returnToLobby
//      file offset 0x3fd358 (= ELF address; Ghidra 0x40d358), 100 bytes, Thumb-2
  3fd358: b500         	push	{lr}
  3fd35a: b083         	sub	sp, #0xc
  3fd35c: 9001         	str	r0, [sp, #0x4]
  3fd35e: 9100         	str	r1, [sp]
  3fd360: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3fd3ac <Stage::returnToLobby(cocos2d::CCObject*)+0x54>
  3fd362: 447a         	add	r2, pc
  3fd364: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3fd3b0 <Stage::returnToLobby(cocos2d::CCObject*)+0x58>
  3fd366: 58d3         	ldr	r3, [r2, r3]
  3fd368: 681b         	ldr	r3, [r3]
  3fd36a: 4618         	mov	r0, r3
  3fd36c: f7ee fd12    	bl	0x3ebd94 <SoldierManager::removeRemotePlayers()> @ imm = #-0x115dc
  3fd370: 9b01         	ldr	r3, [sp, #0x4]
  3fd372: f893 3151    	ldrb.w	r3, [r3, #0x151]
  3fd376: 2b00         	cmp	r3, #0x0
  3fd378: d00a         	beq	0x3fd390 <Stage::returnToLobby(cocos2d::CCObject*)+0x38> @ imm = #0x14
  3fd37a: f1e3 f999    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e3332
  3fd37e: 4603         	mov	r3, r0
  3fd380: 4618         	mov	r0, r3
  3fd382: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3fd3b4 <Stage::returnToLobby(cocos2d::CCObject*)+0x5c>
  3fd384: 447b         	add	r3, pc
  3fd386: 4619         	mov	r1, r3
  3fd388: 2200         	movs	r2, #0x0
  3fd38a: f1e3 fbcf    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1e379e
  3fd38e: e009         	b	0x3fd3a4 <Stage::returnToLobby(cocos2d::CCObject*)+0x4c> @ imm = #0x12
  3fd390: f1e3 f98e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1e331c
  3fd394: 4603         	mov	r3, r0
  3fd396: 4618         	mov	r0, r3
  3fd398: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x3fd3b8 <Stage::returnToLobby(cocos2d::CCObject*)+0x60>
  3fd39a: 447b         	add	r3, pc
  3fd39c: 4619         	mov	r1, r3
  3fd39e: 2200         	movs	r2, #0x0
  3fd3a0: f1e3 fbc4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1e3788
  3fd3a4: b003         	add	sp, #0xc
  3fd3a6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3fd3a9); words below are literal-pool data ---
  3fd3aa: bf00         	nop
  3fd3ac: 56a6         	ldrsb	r6, [r4, r2]
  3fd3ae: 0053         	lsls	r3, r2, #0x1
  3fd3b0: d910         	bls	0x3fd3d4 <Stage::onPauseGame(cocos2d::CCObject*)+0x18> @ imm = #0x20
  3fd3b2: ffff c30c    	<unknown>
  3fd3b6: 003d         	movs	r5, r7
  3fd3b8: c306         	stm	r3!, {r1, r2}
  3fd3ba: 003d         	movs	r5, r7

// ==== Stage::onPauseGame
//      file offset 0x3fd3bc (= ELF address; Ghidra 0x40d3bc), 32 bytes, Thumb-2
  3fd3bc: b082         	sub	sp, #0x8
  3fd3be: 9001         	str	r0, [sp, #0x4]
  3fd3c0: 9100         	str	r1, [sp]
  3fd3c2: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3fd3d4 <Stage::onPauseGame(cocos2d::CCObject*)+0x18>
  3fd3c4: 447a         	add	r2, pc
  3fd3c6: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3fd3d8 <Stage::onPauseGame(cocos2d::CCObject*)+0x1c>
  3fd3c8: 58d3         	ldr	r3, [r2, r3]
  3fd3ca: 2201         	movs	r2, #0x1
  3fd3cc: 701a         	strb	r2, [r3]
  3fd3ce: b002         	add	sp, #0x8
  3fd3d0: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3fd3d1); words below are literal-pool data ---
  3fd3d2: bf00         	nop
  3fd3d4: 5644         	ldrsb	r4, [r0, r1]
  3fd3d6: 0053         	lsls	r3, r2, #0x1
  3fd3d8: db18         	blt	0x3fd40c <Stage::onWeaponChange(cocos2d::CCObject*)+0x10> @ imm = #0x30
  3fd3da: ffff b082    	<unknown>

// ==== Stage::onResumeGame
//      file offset 0x3fd3dc (= ELF address; Ghidra 0x40d3dc), 32 bytes, Thumb-2
  3fd3dc: b082         	sub	sp, #0x8
  3fd3de: 9001         	str	r0, [sp, #0x4]
  3fd3e0: 9100         	str	r1, [sp]
  3fd3e2: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3fd3f4 <Stage::onResumeGame(cocos2d::CCObject*)+0x18>
  3fd3e4: 447a         	add	r2, pc
  3fd3e6: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3fd3f8 <Stage::onResumeGame(cocos2d::CCObject*)+0x1c>
  3fd3e8: 58d3         	ldr	r3, [r2, r3]
  3fd3ea: 2200         	movs	r2, #0x0
  3fd3ec: 701a         	strb	r2, [r3]
  3fd3ee: b002         	add	sp, #0x8
  3fd3f0: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3fd3f1); words below are literal-pool data ---
  3fd3f2: bf00         	nop
  3fd3f4: 5624         	ldrsb	r4, [r4, r0]
  3fd3f6: 0053         	lsls	r3, r2, #0x1
  3fd3f8: db18         	blt	0x3fd42c <Stage::onWeaponChange(cocos2d::CCObject*)+0x30> @ imm = #0x30
  3fd3fa: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Stage::onWeaponChange
//      file offset 0x3fd3fc (= ELF address; Ghidra 0x40d3fc), 156 bytes, Thumb-2
  3fd3fc: b510         	push	{r4, lr}
  3fd3fe: b084         	sub	sp, #0x10
  3fd400: 9001         	str	r0, [sp, #0x4]
  3fd402: 9100         	str	r1, [sp]
  3fd404: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3fd490 <Stage::onWeaponChange(cocos2d::CCObject*)+0x94>
  3fd406: 447b         	add	r3, pc
  3fd408: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3fd494 <Stage::onWeaponChange(cocos2d::CCObject*)+0x98>
  3fd40a: 589a         	ldr	r2, [r3, r2]
  3fd40c: 6812         	ldr	r2, [r2]
  3fd40e: 6812         	ldr	r2, [r2]
  3fd410: f502 72fa    	add.w	r2, r2, #0x1f4
  3fd414: 6812         	ldr	r2, [r2]
  3fd416: 491f         	ldr	r1, [pc, #0x7c]         @ 0x3fd494 <Stage::onWeaponChange(cocos2d::CCObject*)+0x98>
  3fd418: 585b         	ldr	r3, [r3, r1]
  3fd41a: 681b         	ldr	r3, [r3]
  3fd41c: 4618         	mov	r0, r3
  3fd41e: 4790         	blx	r2
  3fd420: 4603         	mov	r3, r0
  3fd422: 9303         	str	r3, [sp, #0xc]
  3fd424: 9b03         	ldr	r3, [sp, #0xc]
  3fd426: 2b00         	cmp	r3, #0x0
  3fd428: d013         	beq	0x3fd452 <Stage::onWeaponChange(cocos2d::CCObject*)+0x56> @ imm = #0x26
  3fd42a: f01a faab    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x1a556
  3fd42e: 4604         	mov	r4, r0
  3fd430: 9b03         	ldr	r3, [sp, #0xc]
  3fd432: 681b         	ldr	r3, [r3]
  3fd434: f503 731f    	add.w	r3, r3, #0x27c
  3fd438: 681b         	ldr	r3, [r3]
  3fd43a: 9803         	ldr	r0, [sp, #0xc]
  3fd43c: 4798         	blx	r3
  3fd43e: 4603         	mov	r3, r0
  3fd440: 4620         	mov	r0, r4
  3fd442: 4619         	mov	r1, r3
  3fd444: f01b fa6c    	bl	0x418920 <WeaponFactory::isLaserSight(ItemType)> @ imm = #0x1b4d8
  3fd448: 4603         	mov	r3, r0
  3fd44a: 2b00         	cmp	r3, #0x0
  3fd44c: d001         	beq	0x3fd452 <Stage::onWeaponChange(cocos2d::CCObject*)+0x56> @ imm = #0x2
  3fd44e: 2301         	movs	r3, #0x1
  3fd450: e000         	b	0x3fd454 <Stage::onWeaponChange(cocos2d::CCObject*)+0x58> @ imm = #0x0
  3fd452: 2300         	movs	r3, #0x0
  3fd454: 2b00         	cmp	r3, #0x0
  3fd456: d00c         	beq	0x3fd472 <Stage::onWeaponChange(cocos2d::CCObject*)+0x76> @ imm = #0x18
  3fd458: 9b01         	ldr	r3, [sp, #0x4]
  3fd45a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fd45e: 681b         	ldr	r3, [r3]
  3fd460: 3390         	adds	r3, #0x90
  3fd462: 681b         	ldr	r3, [r3]
  3fd464: 9a01         	ldr	r2, [sp, #0x4]
  3fd466: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3fd46a: 4610         	mov	r0, r2
  3fd46c: 2101         	movs	r1, #0x1
  3fd46e: 4798         	blx	r3
  3fd470: e00b         	b	0x3fd48a <Stage::onWeaponChange(cocos2d::CCObject*)+0x8e> @ imm = #0x16
  3fd472: 9b01         	ldr	r3, [sp, #0x4]
  3fd474: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3fd478: 681b         	ldr	r3, [r3]
  3fd47a: 3390         	adds	r3, #0x90
  3fd47c: 681b         	ldr	r3, [r3]
  3fd47e: 9a01         	ldr	r2, [sp, #0x4]
  3fd480: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3fd484: 4610         	mov	r0, r2
  3fd486: 2100         	movs	r1, #0x0
  3fd488: 4798         	blx	r3
  3fd48a: b004         	add	sp, #0x10
  3fd48c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3fd48d); words below are literal-pool data ---
  3fd48e: bf00         	nop
  3fd490: 5602         	ldrsb	r2, [r0, r0]
  3fd492: 0053         	lsls	r3, r2, #0x1
  3fd494: d784         	bvc	0x3fd3a0 <Stage::returnToLobby(cocos2d::CCObject*)+0x48> @ imm = #-0xf8
  3fd496: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Stage::touchBeganHandler
//      file offset 0x3fd498 (= ELF address; Ghidra 0x40d498), 46 bytes, Thumb-2
  3fd498: b510         	push	{r4, lr}
  3fd49a: b086         	sub	sp, #0x18
  3fd49c: 9003         	str	r0, [sp, #0xc]
  3fd49e: 9102         	str	r1, [sp, #0x8]
  3fd4a0: 9201         	str	r2, [sp, #0x4]
  3fd4a2: 9b03         	ldr	r3, [sp, #0xc]
  3fd4a4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd4a8: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  3fd4ac: ab04         	add	r3, sp, #0x10
  3fd4ae: 4618         	mov	r0, r3
  3fd4b0: 9902         	ldr	r1, [sp, #0x8]
  3fd4b2: f195 fc2b    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x195856
  3fd4b6: ab04         	add	r3, sp, #0x10
  3fd4b8: 4620         	mov	r0, r4
  3fd4ba: 4619         	mov	r1, r3
  3fd4bc: 9a01         	ldr	r2, [sp, #0x4]
  3fd4be: f750 fe63    	bl	0x34e188 <Joypad::touchBeganHandler(cocos2d::CCPoint, long)> @ imm = #-0xaf33a
  3fd4c2: b006         	add	sp, #0x18
  3fd4c4: bd10         	pop	{r4, pc}

// ==== Stage::touchMoveHandler
//      file offset 0x3fd4c8 (= ELF address; Ghidra 0x40d4c8), 46 bytes, Thumb-2
  3fd4c8: b510         	push	{r4, lr}
  3fd4ca: b086         	sub	sp, #0x18
  3fd4cc: 9003         	str	r0, [sp, #0xc]
  3fd4ce: 9102         	str	r1, [sp, #0x8]
  3fd4d0: 9201         	str	r2, [sp, #0x4]
  3fd4d2: 9b03         	ldr	r3, [sp, #0xc]
  3fd4d4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd4d8: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  3fd4dc: ab04         	add	r3, sp, #0x10
  3fd4de: 4618         	mov	r0, r3
  3fd4e0: 9902         	ldr	r1, [sp, #0x8]
  3fd4e2: f195 fc13    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x195826
  3fd4e6: ab04         	add	r3, sp, #0x10
  3fd4e8: 4620         	mov	r0, r4
  3fd4ea: 4619         	mov	r1, r3
  3fd4ec: 9a01         	ldr	r2, [sp, #0x4]
  3fd4ee: f750 fe5f    	bl	0x34e1b0 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)> @ imm = #-0xaf342
  3fd4f2: b006         	add	sp, #0x18
  3fd4f4: bd10         	pop	{r4, pc}

// ==== Stage::touchEndHandler
//      file offset 0x3fd4f8 (= ELF address; Ghidra 0x40d4f8), 46 bytes, Thumb-2
  3fd4f8: b510         	push	{r4, lr}
  3fd4fa: b086         	sub	sp, #0x18
  3fd4fc: 9003         	str	r0, [sp, #0xc]
  3fd4fe: 9102         	str	r1, [sp, #0x8]
  3fd500: 9201         	str	r2, [sp, #0x4]
  3fd502: 9b03         	ldr	r3, [sp, #0xc]
  3fd504: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd508: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  3fd50c: ab04         	add	r3, sp, #0x10
  3fd50e: 4618         	mov	r0, r3
  3fd510: 9902         	ldr	r1, [sp, #0x8]
  3fd512: f195 fbfb    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x1957f6
  3fd516: ab04         	add	r3, sp, #0x10
  3fd518: 4620         	mov	r0, r4
  3fd51a: 4619         	mov	r1, r3
  3fd51c: 9a01         	ldr	r2, [sp, #0x4]
  3fd51e: f750 ff57    	bl	0x34e3d0 <Joypad::touchEndHandler(cocos2d::CCPoint, long)> @ imm = #-0xaf152
  3fd522: b006         	add	sp, #0x18
  3fd524: bd10         	pop	{r4, pc}

// ==== Stage::cancelMovement
//      file offset 0x3fd528 (= ELF address; Ghidra 0x40d528), 8 bytes, Thumb-2
  3fd528: b082         	sub	sp, #0x8
  3fd52a: 9001         	str	r0, [sp, #0x4]
  3fd52c: b002         	add	sp, #0x8
  3fd52e: 4770         	bx	lr

// ==== Stage::cancelTouches
//      file offset 0x3fd530 (= ELF address; Ghidra 0x40d530), 28 bytes, Thumb-2
  3fd530: b500         	push	{lr}
  3fd532: b083         	sub	sp, #0xc
  3fd534: 9001         	str	r0, [sp, #0x4]
  3fd536: 9b01         	ldr	r3, [sp, #0x4]
  3fd538: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3fd53c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3fd540: 4618         	mov	r0, r3
  3fd542: f750 ff9b    	bl	0x34e47c <Joypad::cancelTouches()> @ imm = #-0xaf0ca
  3fd546: b003         	add	sp, #0xc
  3fd548: f85d fb04    	ldr	pc, [sp], #4

// ==== Stage::setAcceleration
//      file offset 0x3fd54c (= ELF address; Ghidra 0x40d54c), 56 bytes, Thumb-2
  3fd54c: b500         	push	{lr}
  3fd54e: b085         	sub	sp, #0x14
  3fd550: 9003         	str	r0, [sp, #0xc]
  3fd552: 9102         	str	r1, [sp, #0x8]
  3fd554: 9201         	str	r2, [sp, #0x4]
  3fd556: 9300         	str	r3, [sp]
  3fd558: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3fd57c <Stage::setAcceleration(float, float, float)+0x30>
  3fd55a: 447b         	add	r3, pc
  3fd55c: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3fd580 <Stage::setAcceleration(float, float, float)+0x34>
  3fd55e: 589a         	ldr	r2, [r3, r2]
  3fd560: 6812         	ldr	r2, [r2]
  3fd562: 6812         	ldr	r2, [r2]
  3fd564: f502 7233    	add.w	r2, r2, #0x2cc
  3fd568: 6812         	ldr	r2, [r2]
  3fd56a: 4905         	ldr	r1, [pc, #0x14]         @ 0x3fd580 <Stage::setAcceleration(float, float, float)+0x34>
  3fd56c: 585b         	ldr	r3, [r3, r1]
  3fd56e: 681b         	ldr	r3, [r3]
  3fd570: 4618         	mov	r0, r3
  3fd572: 9902         	ldr	r1, [sp, #0x8]
  3fd574: 4790         	blx	r2
  3fd576: b005         	add	sp, #0x14
  3fd578: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3fd57b); words below are literal-pool data ---
  3fd57c: 54ae         	strb	r6, [r5, r2]
  3fd57e: 0053         	lsls	r3, r2, #0x1
  3fd580: d784         	bvc	0x3fd48c <Stage::onWeaponChange(cocos2d::CCObject*)+0x90> @ imm = #-0xf8
  3fd582: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Stage::create
//      file offset 0x3fe48c (= ELF address; Ghidra 0x40e48c), 112 bytes, Thumb-2
  3fe48c: b510         	push	{r4, lr}
  3fe48e: b082         	sub	sp, #0x8
  3fe490: f44f 70b6    	mov.w	r0, #0x16c
  3fe494: f389 fa66    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3894cc
  3fe498: 4603         	mov	r3, r0
  3fe49a: 461c         	mov	r4, r3
  3fe49c: 4620         	mov	r0, r4
  3fe49e: f7fc fd15    	bl	0x3faecc <Stage::Stage()> @ imm = #-0x35d6
  3fe4a2: 9401         	str	r4, [sp, #0x4]
  3fe4a4: 9b01         	ldr	r3, [sp, #0x4]
  3fe4a6: 2b00         	cmp	r3, #0x0
  3fe4a8: d00a         	beq	0x3fe4c0 <Stage::create()+0x34> @ imm = #0x14
  3fe4aa: 9b01         	ldr	r3, [sp, #0x4]
  3fe4ac: 681b         	ldr	r3, [r3]
  3fe4ae: 3318         	adds	r3, #0x18
  3fe4b0: 681b         	ldr	r3, [r3]
  3fe4b2: 9801         	ldr	r0, [sp, #0x4]
  3fe4b4: 4798         	blx	r3
  3fe4b6: 4603         	mov	r3, r0
  3fe4b8: 2b00         	cmp	r3, #0x0
  3fe4ba: d001         	beq	0x3fe4c0 <Stage::create()+0x34> @ imm = #0x2
  3fe4bc: 2301         	movs	r3, #0x1
  3fe4be: e000         	b	0x3fe4c2 <Stage::create()+0x36> @ imm = #0x0
  3fe4c0: 2300         	movs	r3, #0x0
  3fe4c2: 2b00         	cmp	r3, #0x0
  3fe4c4: d005         	beq	0x3fe4d2 <Stage::create()+0x46> @ imm = #0xa
  3fe4c6: 9b01         	ldr	r3, [sp, #0x4]
  3fe4c8: 4618         	mov	r0, r3
  3fe4ca: f199 fd17    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x199a2e
  3fe4ce: 9b01         	ldr	r3, [sp, #0x4]
  3fe4d0: e011         	b	0x3fe4f6 <Stage::create()+0x6a> @ imm = #0x22
  3fe4d2: 9b01         	ldr	r3, [sp, #0x4]
  3fe4d4: 2b00         	cmp	r3, #0x0
  3fe4d6: d005         	beq	0x3fe4e4 <Stage::create()+0x58> @ imm = #0xa
  3fe4d8: 9b01         	ldr	r3, [sp, #0x4]
  3fe4da: 681b         	ldr	r3, [r3]
  3fe4dc: 3308         	adds	r3, #0x8
  3fe4de: 681b         	ldr	r3, [r3]
  3fe4e0: 9801         	ldr	r0, [sp, #0x4]
  3fe4e2: 4798         	blx	r3
  3fe4e4: 2300         	movs	r3, #0x0
  3fe4e6: 9301         	str	r3, [sp, #0x4]
  3fe4e8: 2300         	movs	r3, #0x0
  3fe4ea: e004         	b	0x3fe4f6 <Stage::create()+0x6a> @ imm = #0x8
  3fe4ec: 4620         	mov	r0, r4
  3fe4ee: f389 fdd9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x389bb2
  3fe4f2: f389 fddb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389bb6
  3fe4f6: 4618         	mov	r0, r3
  3fe4f8: b002         	add	sp, #0x8
  3fe4fa: bd10         	pop	{r4, pc}
