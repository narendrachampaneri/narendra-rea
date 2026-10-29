// WormDrone: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 32 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../WormDrone.cpp

// ==== WormDrone::create
//      file offset 0x318cfc (= ELF address; Ghidra 0x328cfc), 112 bytes, Thumb-2
  318cfc: b510         	push	{r4, lr}
  318cfe: b082         	sub	sp, #0x8
  318d00: f44f 700a    	mov.w	r0, #0x228
  318d04: f06e f62e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x46ec5c
  318d08: 4603         	mov	r3, r0
  318d0a: 461c         	mov	r4, r3
  318d0c: 4620         	mov	r0, r4
  318d0e: f104 fbf7    	bl	0x41d500 <WormDrone::WormDrone()> @ imm = #0x1047ee
  318d12: 9401         	str	r4, [sp, #0x4]
  318d14: 9b01         	ldr	r3, [sp, #0x4]
  318d16: 2b00         	cmp	r3, #0x0
  318d18: d00a         	beq	0x318d30 <WormDrone::create()+0x34> @ imm = #0x14
  318d1a: 9b01         	ldr	r3, [sp, #0x4]
  318d1c: 681b         	ldr	r3, [r3]
  318d1e: 3318         	adds	r3, #0x18
  318d20: 681b         	ldr	r3, [r3]
  318d22: 9801         	ldr	r0, [sp, #0x4]
  318d24: 4798         	blx	r3
  318d26: 4603         	mov	r3, r0
  318d28: 2b00         	cmp	r3, #0x0
  318d2a: d001         	beq	0x318d30 <WormDrone::create()+0x34> @ imm = #0x2
  318d2c: 2301         	movs	r3, #0x1
  318d2e: e000         	b	0x318d32 <WormDrone::create()+0x36> @ imm = #0x0
  318d30: 2300         	movs	r3, #0x0
  318d32: 2b00         	cmp	r3, #0x0
  318d34: d005         	beq	0x318d42 <WormDrone::create()+0x46> @ imm = #0xa
  318d36: 9b01         	ldr	r3, [sp, #0x4]
  318d38: 4618         	mov	r0, r3
  318d3a: f27f f8df    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x27f1be
  318d3e: 9b01         	ldr	r3, [sp, #0x4]
  318d40: e011         	b	0x318d66 <WormDrone::create()+0x6a> @ imm = #0x22
  318d42: 9b01         	ldr	r3, [sp, #0x4]
  318d44: 2b00         	cmp	r3, #0x0
  318d46: d005         	beq	0x318d54 <WormDrone::create()+0x58> @ imm = #0xa
  318d48: 9b01         	ldr	r3, [sp, #0x4]
  318d4a: 681b         	ldr	r3, [r3]
  318d4c: 3308         	adds	r3, #0x8
  318d4e: 681b         	ldr	r3, [r3]
  318d50: 9801         	ldr	r0, [sp, #0x4]
  318d52: 4798         	blx	r3
  318d54: 2300         	movs	r3, #0x0
  318d56: 9301         	str	r3, [sp, #0x4]
  318d58: 2300         	movs	r3, #0x0
  318d5a: e004         	b	0x318d66 <WormDrone::create()+0x6a> @ imm = #0x8
  318d5c: 4620         	mov	r0, r4
  318d5e: f06f f1a1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46f342
  318d62: f06f f1a3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46f346
  318d66: 4618         	mov	r0, r3
  318d68: b002         	add	sp, #0x8
  318d6a: bd10         	pop	{r4, pc}

// ==== WormDrone::WormDrone
//      file offset 0x41d500 (= ELF address; Ghidra 0x42d500), 108 bytes, Thumb-2
  41d500: b510         	push	{r4, lr}
  41d502: b082         	sub	sp, #0x8
  41d504: 9001         	str	r0, [sp, #0x4]
  41d506: 4c17         	ldr	r4, [pc, #0x5c]         @ 0x41d564 <WormDrone::WormDrone()+0x64>
  41d508: 447c         	add	r4, pc
  41d50a: 9b01         	ldr	r3, [sp, #0x4]
  41d50c: 4618         	mov	r0, r3
  41d50e: f6fa f8f9    	bl	0x317704 <Enemy::Enemy()> @ imm = #-0x105e0e
  41d512: 9b01         	ldr	r3, [sp, #0x4]
  41d514: 4a14         	ldr	r2, [pc, #0x50]         @ 0x41d568 <WormDrone::WormDrone()+0x68>
  41d516: 58a2         	ldr	r2, [r4, r2]
  41d518: 3208         	adds	r2, #0x8
  41d51a: 601a         	str	r2, [r3]
  41d51c: 9b01         	ldr	r3, [sp, #0x4]
  41d51e: f503 73e8    	add.w	r3, r3, #0x1d0
  41d522: 4618         	mov	r0, r3
  41d524: f397 fe44    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x397c88
  41d528: 9b01         	ldr	r3, [sp, #0x4]
  41d52a: f503 73fa    	add.w	r3, r3, #0x1f4
  41d52e: 4618         	mov	r0, r3
  41d530: f175 fbd0    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1757a0
  41d534: 9b01         	ldr	r3, [sp, #0x4]
  41d536: f503 73fe    	add.w	r3, r3, #0x1fc
  41d53a: 4618         	mov	r0, r3
  41d53c: f175 fbca    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x175794
  41d540: 9b01         	ldr	r3, [sp, #0x4]
  41d542: e00c         	b	0x41d55e <WormDrone::WormDrone()+0x5e> @ imm = #0x18
  41d544: 9b01         	ldr	r3, [sp, #0x4]
  41d546: f503 73e8    	add.w	r3, r3, #0x1d0
  41d54a: 4618         	mov	r0, r3
  41d54c: f398 f9e2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3983c4
  41d550: e7ff         	b	0x41d552 <WormDrone::WormDrone()+0x52> @ imm = #-0x2
  41d552: 9b01         	ldr	r3, [sp, #0x4]
  41d554: 4618         	mov	r0, r3
  41d556: f6fa f9a1    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x105cbe
  41d55a: f36a fda7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36ab4e
  41d55e: 4618         	mov	r0, r3
  41d560: b002         	add	sp, #0x8
  41d562: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41d563); words below are literal-pool data ---
  41d564: 5500         	strb	r0, [r0, r4]
  41d566: 0051         	lsls	r1, r2, #0x1
  41d568: dfd0         	svc	#0xd0
  41d56a: ffff b570    	<unknown>

// ==== WormDrone::init
//      file offset 0x41d56c (= ELF address; Ghidra 0x42d56c), 1160 bytes, Thumb-2
  41d56c: b570         	push	{r4, r5, r6, lr}
  41d56e: b086         	sub	sp, #0x18
  41d570: 9001         	str	r0, [sp, #0x4]
  41d572: f8df 4460    	ldr.w	r4, [pc, #0x460]        @ 0x41d9d4 <WormDrone::init()+0x468>
  41d576: 447c         	add	r4, pc
  41d578: 9b01         	ldr	r3, [sp, #0x4]
  41d57a: 4618         	mov	r0, r3
  41d57c: f6fa f8d8    	bl	0x317730 <Enemy::init()> @ imm = #-0x105e50
  41d580: 4603         	mov	r3, r0
  41d582: f88d 300f    	strb.w	r3, [sp, #0xf]
  41d586: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  41d58a: f083 0301    	eor	r3, r3, #0x1
  41d58e: b2db         	uxtb	r3, r3
  41d590: 2b00         	cmp	r3, #0x0
  41d592: d001         	beq	0x41d598 <WormDrone::init()+0x2c> @ imm = #0x2
  41d594: 2300         	movs	r3, #0x0
  41d596: e219         	b	0x41d9cc <WormDrone::init()+0x460> @ imm = #0x432
  41d598: 9b01         	ldr	r3, [sp, #0x4]
  41d59a: f503 75fa    	add.w	r5, r3, #0x1f4
  41d59e: ab04         	add	r3, sp, #0x10
  41d5a0: 4618         	mov	r0, r3
  41d5a2: f04f 0100    	mov.w	r1, #0x0
  41d5a6: f2cc 1170    	movt	r1, #0xc170
  41d5aa: f04f 0200    	mov.w	r2, #0x0
  41d5ae: f175 fb9f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17573e
  41d5b2: ab04         	add	r3, sp, #0x10
  41d5b4: 4628         	mov	r0, r5
  41d5b6: 4619         	mov	r1, r3
  41d5b8: f175 fbc8    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x175790
  41d5bc: 9b01         	ldr	r3, [sp, #0x4]
  41d5be: f503 75fe    	add.w	r5, r3, #0x1fc
  41d5c2: ab04         	add	r3, sp, #0x10
  41d5c4: 4618         	mov	r0, r3
  41d5c6: f04f 0100    	mov.w	r1, #0x0
  41d5ca: f2cc 2148    	movt	r1, #0xc248
  41d5ce: f04f 0200    	mov.w	r2, #0x0
  41d5d2: f175 fb8d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17571a
  41d5d6: ab04         	add	r3, sp, #0x10
  41d5d8: 4628         	mov	r0, r5
  41d5da: 4619         	mov	r1, r3
  41d5dc: f175 fbb6    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x17576c
  41d5e0: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x41d9d8 <WormDrone::init()+0x46c>
  41d5e2: 447b         	add	r3, pc
  41d5e4: 4618         	mov	r0, r3
  41d5e6: f1ba fe8d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1bad1a
  41d5ea: 4602         	mov	r2, r0
  41d5ec: 9b01         	ldr	r3, [sp, #0x4]
  41d5ee: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  41d5f2: 9b01         	ldr	r3, [sp, #0x4]
  41d5f4: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41d5f8: 4618         	mov	r0, r3
  41d5fa: f17a fc75    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a8ea
  41d5fe: 9b01         	ldr	r3, [sp, #0x4]
  41d600: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41d604: 681b         	ldr	r3, [r3]
  41d606: 337c         	adds	r3, #0x7c
  41d608: 681d         	ldr	r5, [r3]
  41d60a: 9b01         	ldr	r3, [sp, #0x4]
  41d60c: f8d3 61ac    	ldr.w	r6, [r3, #0x1ac]
  41d610: ab04         	add	r3, sp, #0x10
  41d612: 4618         	mov	r0, r3
  41d614: f04f 517c    	mov.w	r1, #0x3f000000
  41d618: f04f 527c    	mov.w	r2, #0x3f000000
  41d61c: f175 fb68    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1756d0
  41d620: ab04         	add	r3, sp, #0x10
  41d622: 4630         	mov	r0, r6
  41d624: 4619         	mov	r1, r3
  41d626: 47a8         	blx	r5
  41d628: 9b01         	ldr	r3, [sp, #0x4]
  41d62a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41d62e: 681b         	ldr	r3, [r3]
  41d630: 334c         	adds	r3, #0x4c
  41d632: 681d         	ldr	r5, [r3]
  41d634: 9b01         	ldr	r3, [sp, #0x4]
  41d636: f8d3 61ac    	ldr.w	r6, [r3, #0x1ac]
  41d63a: ab04         	add	r3, sp, #0x10
  41d63c: 4618         	mov	r0, r3
  41d63e: f04f 0100    	mov.w	r1, #0x0
  41d642: f2c4 11c8    	movt	r1, #0x41c8
  41d646: f04f 0200    	mov.w	r2, #0x0
  41d64a: f175 fb51    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1756a2
  41d64e: ab04         	add	r3, sp, #0x10
  41d650: 4630         	mov	r0, r6
  41d652: 4619         	mov	r1, r3
  41d654: 47a8         	blx	r5
  41d656: 9b01         	ldr	r3, [sp, #0x4]
  41d658: 681b         	ldr	r3, [r3]
  41d65a: 33cc         	adds	r3, #0xcc
  41d65c: 681b         	ldr	r3, [r3]
  41d65e: 9901         	ldr	r1, [sp, #0x4]
  41d660: 9a01         	ldr	r2, [sp, #0x4]
  41d662: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  41d666: 4608         	mov	r0, r1
  41d668: 4611         	mov	r1, r2
  41d66a: 2200         	movs	r2, #0x0
  41d66c: 4798         	blx	r3
  41d66e: 4bdb         	ldr	r3, [pc, #0x36c]        @ 0x41d9dc <WormDrone::init()+0x470>
  41d670: 447b         	add	r3, pc
  41d672: 4618         	mov	r0, r3
  41d674: f1ba fe46    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1bac8c
  41d678: 4602         	mov	r2, r0
  41d67a: 9b01         	ldr	r3, [sp, #0x4]
  41d67c: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  41d680: 9b01         	ldr	r3, [sp, #0x4]
  41d682: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  41d686: 4618         	mov	r0, r3
  41d688: f17a fc2e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a85c
  41d68c: 9b01         	ldr	r3, [sp, #0x4]
  41d68e: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  41d692: 681b         	ldr	r3, [r3]
  41d694: 337c         	adds	r3, #0x7c
  41d696: 681d         	ldr	r5, [r3]
  41d698: 9b01         	ldr	r3, [sp, #0x4]
  41d69a: f8d3 61b0    	ldr.w	r6, [r3, #0x1b0]
  41d69e: ab04         	add	r3, sp, #0x10
  41d6a0: 4618         	mov	r0, r3
  41d6a2: f04f 517c    	mov.w	r1, #0x3f000000
  41d6a6: f04f 527c    	mov.w	r2, #0x3f000000
  41d6aa: f175 fb21    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x175642
  41d6ae: ab04         	add	r3, sp, #0x10
  41d6b0: 4630         	mov	r0, r6
  41d6b2: 4619         	mov	r1, r3
  41d6b4: 47a8         	blx	r5
  41d6b6: 9b01         	ldr	r3, [sp, #0x4]
  41d6b8: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  41d6bc: 681b         	ldr	r3, [r3]
  41d6be: 334c         	adds	r3, #0x4c
  41d6c0: 681d         	ldr	r5, [r3]
  41d6c2: 9b01         	ldr	r3, [sp, #0x4]
  41d6c4: f8d3 61b0    	ldr.w	r6, [r3, #0x1b0]
  41d6c8: ab04         	add	r3, sp, #0x10
  41d6ca: 4618         	mov	r0, r3
  41d6cc: f04f 0100    	mov.w	r1, #0x0
  41d6d0: f04f 0200    	mov.w	r2, #0x0
  41d6d4: f175 fb0c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x175618
  41d6d8: ab04         	add	r3, sp, #0x10
  41d6da: 4630         	mov	r0, r6
  41d6dc: 4619         	mov	r1, r3
  41d6de: 47a8         	blx	r5
  41d6e0: 9b01         	ldr	r3, [sp, #0x4]
  41d6e2: 681b         	ldr	r3, [r3]
  41d6e4: 33cc         	adds	r3, #0xcc
  41d6e6: 681b         	ldr	r3, [r3]
  41d6e8: 9901         	ldr	r1, [sp, #0x4]
  41d6ea: 9a01         	ldr	r2, [sp, #0x4]
  41d6ec: f8d2 21b0    	ldr.w	r2, [r2, #0x1b0]
  41d6f0: 4608         	mov	r0, r1
  41d6f2: 4611         	mov	r1, r2
  41d6f4: 2202         	movs	r2, #0x2
  41d6f6: 4798         	blx	r3
  41d6f8: f172 fd6a    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x172ad4
  41d6fc: 4602         	mov	r2, r0
  41d6fe: 9b01         	ldr	r3, [sp, #0x4]
  41d700: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  41d704: 9b01         	ldr	r3, [sp, #0x4]
  41d706: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41d70a: 4618         	mov	r0, r3
  41d70c: f17a fbec    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a7d8
  41d710: 9b01         	ldr	r3, [sp, #0x4]
  41d712: 681b         	ldr	r3, [r3]
  41d714: 33cc         	adds	r3, #0xcc
  41d716: 681b         	ldr	r3, [r3]
  41d718: 9901         	ldr	r1, [sp, #0x4]
  41d71a: 9a01         	ldr	r2, [sp, #0x4]
  41d71c: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  41d720: 4608         	mov	r0, r1
  41d722: 4611         	mov	r1, r2
  41d724: 2200         	movs	r2, #0x0
  41d726: 4798         	blx	r3
  41d728: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x41d9e0 <WormDrone::init()+0x474>
  41d72a: 447b         	add	r3, pc
  41d72c: 4618         	mov	r0, r3
  41d72e: f1ba fde9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1babd2
  41d732: 4602         	mov	r2, r0
  41d734: 9b01         	ldr	r3, [sp, #0x4]
  41d736: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  41d73a: 9b01         	ldr	r3, [sp, #0x4]
  41d73c: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41d740: 4618         	mov	r0, r3
  41d742: f17a fbd1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a7a2
  41d746: 9b01         	ldr	r3, [sp, #0x4]
  41d748: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41d74c: 681b         	ldr	r3, [r3]
  41d74e: 337c         	adds	r3, #0x7c
  41d750: 681d         	ldr	r5, [r3]
  41d752: 9b01         	ldr	r3, [sp, #0x4]
  41d754: f8d3 61b4    	ldr.w	r6, [r3, #0x1b4]
  41d758: ab04         	add	r3, sp, #0x10
  41d75a: 4618         	mov	r0, r3
  41d75c: f64c 41cd    	movw	r1, #0xcccd
  41d760: f6c3 714c    	movt	r1, #0x3f4c
  41d764: f04f 527c    	mov.w	r2, #0x3f000000
  41d768: f175 fac2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x175584
  41d76c: ab04         	add	r3, sp, #0x10
  41d76e: 4630         	mov	r0, r6
  41d770: 4619         	mov	r1, r3
  41d772: 47a8         	blx	r5
  41d774: 9b01         	ldr	r3, [sp, #0x4]
  41d776: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41d77a: 681b         	ldr	r3, [r3]
  41d77c: 334c         	adds	r3, #0x4c
  41d77e: 681b         	ldr	r3, [r3]
  41d780: 9a01         	ldr	r2, [sp, #0x4]
  41d782: f8d2 11b4    	ldr.w	r1, [r2, #0x1b4]
  41d786: 9a01         	ldr	r2, [sp, #0x4]
  41d788: f502 72fa    	add.w	r2, r2, #0x1f4
  41d78c: 4608         	mov	r0, r1
  41d78e: 4611         	mov	r1, r2
  41d790: 4798         	blx	r3
  41d792: 9b01         	ldr	r3, [sp, #0x4]
  41d794: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41d798: 681b         	ldr	r3, [r3]
  41d79a: 33cc         	adds	r3, #0xcc
  41d79c: 681b         	ldr	r3, [r3]
  41d79e: 9a01         	ldr	r2, [sp, #0x4]
  41d7a0: f8d2 11bc    	ldr.w	r1, [r2, #0x1bc]
  41d7a4: 9a01         	ldr	r2, [sp, #0x4]
  41d7a6: f8d2 21b4    	ldr.w	r2, [r2, #0x1b4]
  41d7aa: 4608         	mov	r0, r1
  41d7ac: 4611         	mov	r1, r2
  41d7ae: 2201         	movs	r2, #0x1
  41d7b0: 4798         	blx	r3
  41d7b2: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x41d9e4 <WormDrone::init()+0x478>
  41d7b4: 447b         	add	r3, pc
  41d7b6: 4618         	mov	r0, r3
  41d7b8: f1ba fda4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x1bab48
  41d7bc: 4602         	mov	r2, r0
  41d7be: 9b01         	ldr	r3, [sp, #0x4]
  41d7c0: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  41d7c4: 9b01         	ldr	r3, [sp, #0x4]
  41d7c6: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41d7ca: 4618         	mov	r0, r3
  41d7cc: f17a fb8c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a718
  41d7d0: 9b01         	ldr	r3, [sp, #0x4]
  41d7d2: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41d7d6: 681b         	ldr	r3, [r3]
  41d7d8: 337c         	adds	r3, #0x7c
  41d7da: 681d         	ldr	r5, [r3]
  41d7dc: 9b01         	ldr	r3, [sp, #0x4]
  41d7de: f8d3 61b8    	ldr.w	r6, [r3, #0x1b8]
  41d7e2: ab04         	add	r3, sp, #0x10
  41d7e4: 4618         	mov	r0, r3
  41d7e6: f64c 41cd    	movw	r1, #0xcccd
  41d7ea: f6c3 714c    	movt	r1, #0x3f4c
  41d7ee: f04f 527c    	mov.w	r2, #0x3f000000
  41d7f2: f175 fa7d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1754fa
  41d7f6: ab04         	add	r3, sp, #0x10
  41d7f8: 4630         	mov	r0, r6
  41d7fa: 4619         	mov	r1, r3
  41d7fc: 47a8         	blx	r5
  41d7fe: 9b01         	ldr	r3, [sp, #0x4]
  41d800: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41d804: 681b         	ldr	r3, [r3]
  41d806: 334c         	adds	r3, #0x4c
  41d808: 681b         	ldr	r3, [r3]
  41d80a: 9a01         	ldr	r2, [sp, #0x4]
  41d80c: f8d2 11b8    	ldr.w	r1, [r2, #0x1b8]
  41d810: 9a01         	ldr	r2, [sp, #0x4]
  41d812: f502 72fe    	add.w	r2, r2, #0x1fc
  41d816: 4608         	mov	r0, r1
  41d818: 4611         	mov	r1, r2
  41d81a: 4798         	blx	r3
  41d81c: 9b01         	ldr	r3, [sp, #0x4]
  41d81e: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41d822: 681b         	ldr	r3, [r3]
  41d824: 33cc         	adds	r3, #0xcc
  41d826: 681b         	ldr	r3, [r3]
  41d828: 9a01         	ldr	r2, [sp, #0x4]
  41d82a: f8d2 11bc    	ldr.w	r1, [r2, #0x1bc]
  41d82e: 9a01         	ldr	r2, [sp, #0x4]
  41d830: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  41d834: 4608         	mov	r0, r1
  41d836: 4611         	mov	r1, r2
  41d838: 2200         	movs	r2, #0x0
  41d83a: 4798         	blx	r3
  41d83c: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x41d9e8 <WormDrone::init()+0x47c>
  41d83e: 447b         	add	r3, pc
  41d840: 4618         	mov	r0, r3
  41d842: f1a7 fb6b    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x1a76d6
  41d846: 4602         	mov	r2, r0
  41d848: 9b01         	ldr	r3, [sp, #0x4]
  41d84a: f8c3 220c    	str.w	r2, [r3, #0x20c]
  41d84e: 9b01         	ldr	r3, [sp, #0x4]
  41d850: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41d854: 4618         	mov	r0, r3
  41d856: f17a fb47    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x17a68e
  41d85a: 4b64         	ldr	r3, [pc, #0x190]        @ 0x41d9ec <WormDrone::init()+0x480>
  41d85c: 58e3         	ldr	r3, [r4, r3]
  41d85e: 681b         	ldr	r3, [r3]
  41d860: 681b         	ldr	r3, [r3]
  41d862: 33cc         	adds	r3, #0xcc
  41d864: 681b         	ldr	r3, [r3]
  41d866: 4a61         	ldr	r2, [pc, #0x184]        @ 0x41d9ec <WormDrone::init()+0x480>
  41d868: 58a2         	ldr	r2, [r4, r2]
  41d86a: 6812         	ldr	r2, [r2]
  41d86c: 4611         	mov	r1, r2
  41d86e: 9a01         	ldr	r2, [sp, #0x4]
  41d870: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41d874: 4608         	mov	r0, r1
  41d876: 4611         	mov	r1, r2
  41d878: 2202         	movs	r2, #0x2
  41d87a: 4798         	blx	r3
  41d87c: 9b01         	ldr	r3, [sp, #0x4]
  41d87e: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41d882: 4618         	mov	r0, r3
  41d884: f1a5 f9ae    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x1a535c
  41d888: 9b01         	ldr	r3, [sp, #0x4]
  41d88a: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41d88e: 681b         	ldr	r3, [r3]
  41d890: f503 733c    	add.w	r3, r3, #0x2f0
  41d894: 681b         	ldr	r3, [r3]
  41d896: 9a01         	ldr	r2, [sp, #0x4]
  41d898: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41d89c: 4610         	mov	r0, r2
  41d89e: 2102         	movs	r1, #0x2
  41d8a0: 4798         	blx	r3
  41d8a2: 9b01         	ldr	r3, [sp, #0x4]
  41d8a4: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41d8a8: 681b         	ldr	r3, [r3]
  41d8aa: f503 73da    	add.w	r3, r3, #0x1b4
  41d8ae: 681b         	ldr	r3, [r3]
  41d8b0: 9a01         	ldr	r2, [sp, #0x4]
  41d8b2: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41d8b6: 4610         	mov	r0, r2
  41d8b8: f04f 0100    	mov.w	r1, #0x0
  41d8bc: f6cb 7180    	movt	r1, #0xbf80
  41d8c0: 4798         	blx	r3
  41d8c2: 9b01         	ldr	r3, [sp, #0x4]
  41d8c4: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41d8c8: 681b         	ldr	r3, [r3]
  41d8ca: f503 7332    	add.w	r3, r3, #0x2c8
  41d8ce: 681b         	ldr	r3, [r3]
  41d8d0: 9a01         	ldr	r2, [sp, #0x4]
  41d8d2: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41d8d6: 4610         	mov	r0, r2
  41d8d8: f04f 0100    	mov.w	r1, #0x0
  41d8dc: 4798         	blx	r3
  41d8de: 9b01         	ldr	r3, [sp, #0x4]
  41d8e0: f64c 42cd    	movw	r2, #0xcccd
  41d8e4: f6c3 52cc    	movt	r2, #0x3dcc
  41d8e8: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  41d8ec: 9b01         	ldr	r3, [sp, #0x4]
  41d8ee: 224b         	movs	r2, #0x4b
  41d8f0: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  41d8f4: 9901         	ldr	r1, [sp, #0x4]
  41d8f6: f04f 0200    	mov.w	r2, #0x0
  41d8fa: f04f 0300    	mov.w	r3, #0x0
  41d8fe: e9c1 234e    	strd	r2, r3, [r1, #312]
  41d902: 9901         	ldr	r1, [sp, #0x4]
  41d904: f04f 0200    	mov.w	r2, #0x0
  41d908: f04f 0300    	mov.w	r3, #0x0
  41d90c: e9c1 2350    	strd	r2, r3, [r1, #320]
  41d910: 9b01         	ldr	r3, [sp, #0x4]
  41d912: f04f 527c    	mov.w	r2, #0x3f000000
  41d916: f8c3 2108    	str.w	r2, [r3, #0x108]
  41d91a: 9b01         	ldr	r3, [sp, #0x4]
  41d91c: f503 73e8    	add.w	r3, r3, #0x1d0
  41d920: 4618         	mov	r0, r3
  41d922: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x41d9f0 <WormDrone::init()+0x484>
  41d924: 447b         	add	r3, pc
  41d926: 4619         	mov	r1, r3
  41d928: f398 faa2    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x398544
  41d92c: 9b01         	ldr	r3, [sp, #0x4]
  41d92e: 2200         	movs	r2, #0x0
  41d930: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41d934: 9b01         	ldr	r3, [sp, #0x4]
  41d936: f04f 0200    	mov.w	r2, #0x0
  41d93a: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  41d93e: 9901         	ldr	r1, [sp, #0x4]
  41d940: f04f 0200    	mov.w	r2, #0x0
  41d944: f04f 0300    	mov.w	r3, #0x0
  41d948: e9c1 2378    	strd	r2, r3, [r1, #480]
  41d94c: 9901         	ldr	r1, [sp, #0x4]
  41d94e: f04f 0200    	mov.w	r2, #0x0
  41d952: f04f 0300    	mov.w	r3, #0x0
  41d956: e9c1 237a    	strd	r2, r3, [r1, #488]
  41d95a: 9b01         	ldr	r3, [sp, #0x4]
  41d95c: f04f 0200    	mov.w	r2, #0x0
  41d960: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  41d964: 9b01         	ldr	r3, [sp, #0x4]
  41d966: f04f 0200    	mov.w	r2, #0x0
  41d96a: f8c3 2204    	str.w	r2, [r3, #0x204]
  41d96e: 9b01         	ldr	r3, [sp, #0x4]
  41d970: f04f 0200    	mov.w	r2, #0x0
  41d974: f8c3 2208    	str.w	r2, [r3, #0x208]
  41d978: 9b01         	ldr	r3, [sp, #0x4]
  41d97a: 2200         	movs	r2, #0x0
  41d97c: f883 2220    	strb.w	r2, [r3, #0x220]
  41d980: 9b01         	ldr	r3, [sp, #0x4]
  41d982: 2200         	movs	r2, #0x0
  41d984: f883 2221    	strb.w	r2, [r3, #0x221]
  41d988: 9901         	ldr	r1, [sp, #0x4]
  41d98a: f04f 0200    	mov.w	r2, #0x0
  41d98e: f04f 0300    	mov.w	r3, #0x0
  41d992: e9c1 2384    	strd	r2, r3, [r1, #528]
  41d996: 9901         	ldr	r1, [sp, #0x4]
  41d998: f04f 0200    	mov.w	r2, #0x0
  41d99c: f04f 0300    	mov.w	r3, #0x0
  41d9a0: e9c1 2386    	strd	r2, r3, [r1, #536]
  41d9a4: 9b01         	ldr	r3, [sp, #0x4]
  41d9a6: f04f 0200    	mov.w	r2, #0x0
  41d9aa: f8c3 2224    	str.w	r2, [r3, #0x224]
  41d9ae: 9b01         	ldr	r3, [sp, #0x4]
  41d9b0: 2201         	movs	r2, #0x1
  41d9b2: f883 216c    	strb.w	r2, [r3, #0x16c]
  41d9b6: 9b01         	ldr	r3, [sp, #0x4]
  41d9b8: 2200         	movs	r2, #0x0
  41d9ba: f883 21c8    	strb.w	r2, [r3, #0x1c8]
  41d9be: 9801         	ldr	r0, [sp, #0x4]
  41d9c0: f001 fdda    	bl	0x41f578 <WormDrone::initBody()> @ imm = #0x1bb4
  41d9c4: 9801         	ldr	r0, [sp, #0x4]
  41d9c6: f001 fe13    	bl	0x41f5f0 <WormDrone::initShape()> @ imm = #0x1c26
  41d9ca: 2301         	movs	r3, #0x1
  41d9cc: 4618         	mov	r0, r3
  41d9ce: b006         	add	sp, #0x18
  41d9d0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x41d9d1); words below are literal-pool data ---
  41d9d2: bf00         	nop
  41d9d4: 5492         	strb	r2, [r2, r2]
  41d9d6: 0051         	lsls	r1, r2, #0x1
  41d9d8: e702         	b	0x41d7e0 <WormDrone::init()+0x274> @ imm = #-0x1fc
  41d9da: 003b         	movs	r3, r7
  41d9dc: e688         	b	0x41d6f0 <WormDrone::init()+0x184> @ imm = #-0x2f0
  41d9de: 003b         	movs	r3, r7
  41d9e0: e5de         	b	0x41d5a0 <WormDrone::init()+0x34> @ imm = #-0x444
  41d9e2: 003b         	movs	r3, r7
  41d9e4: e564         	b	0x41d4b0 <WeaponManager::getRandomWeapon()+0x14cc> @ imm = #-0x538
  41d9e6: 003b         	movs	r3, r7
  41d9e8: e4ea         	b	0x41d3c0 <WeaponManager::getRandomWeapon()+0x13dc> @ imm = #-0x62c
  41d9ea: 003b         	movs	r3, r7
  41d9ec: d744         	bvc	0x41da78 <WormDrone::~WormDrone()+0x84> @ imm = #0x88
  41d9ee: ffff e410    	vsri.32	d30, d0, #0x1
  41d9f2: 003b         	movs	r3, r7

// ==== WormDrone::~WormDrone
//      file offset 0x41d9f4 (= ELF address; Ghidra 0x42d9f4), 200 bytes, Thumb-2
  41d9f4: b510         	push	{r4, lr}
  41d9f6: b082         	sub	sp, #0x8
  41d9f8: 9001         	str	r0, [sp, #0x4]
  41d9fa: 4c2d         	ldr	r4, [pc, #0xb4]         @ 0x41dab0 <WormDrone::~WormDrone()+0xbc>
  41d9fc: 447c         	add	r4, pc
  41d9fe: 9b01         	ldr	r3, [sp, #0x4]
  41da00: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x41dab4 <WormDrone::~WormDrone()+0xc0>
  41da02: 58a2         	ldr	r2, [r4, r2]
  41da04: 3208         	adds	r2, #0x8
  41da06: 601a         	str	r2, [r3]
  41da08: 9b01         	ldr	r3, [sp, #0x4]
  41da0a: 4618         	mov	r0, r3
  41da0c: f172 fe0e    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x172c1c
  41da10: 9b01         	ldr	r3, [sp, #0x4]
  41da12: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41da16: 681b         	ldr	r3, [r3]
  41da18: f503 7380    	add.w	r3, r3, #0x100
  41da1c: 681b         	ldr	r3, [r3]
  41da1e: 9a01         	ldr	r2, [sp, #0x4]
  41da20: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  41da24: 4610         	mov	r0, r2
  41da26: 4798         	blx	r3
  41da28: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x41dab8 <WormDrone::~WormDrone()+0xc4>
  41da2a: 58e3         	ldr	r3, [r4, r3]
  41da2c: 681b         	ldr	r3, [r3]
  41da2e: 681b         	ldr	r3, [r3]
  41da30: 33f4         	adds	r3, #0xf4
  41da32: 681b         	ldr	r3, [r3]
  41da34: 4a20         	ldr	r2, [pc, #0x80]         @ 0x41dab8 <WormDrone::~WormDrone()+0xc4>
  41da36: 58a2         	ldr	r2, [r4, r2]
  41da38: 6812         	ldr	r2, [r2]
  41da3a: 4611         	mov	r1, r2
  41da3c: 9a01         	ldr	r2, [sp, #0x4]
  41da3e: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41da42: 4608         	mov	r0, r1
  41da44: 4611         	mov	r1, r2
  41da46: 2200         	movs	r2, #0x0
  41da48: 4798         	blx	r3
  41da4a: 9b01         	ldr	r3, [sp, #0x4]
  41da4c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41da50: 4618         	mov	r0, r3
  41da52: f17a fa31    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17a462
  41da56: 9b01         	ldr	r3, [sp, #0x4]
  41da58: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  41da5c: 4618         	mov	r0, r3
  41da5e: f17a fa2b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17a456
  41da62: 9b01         	ldr	r3, [sp, #0x4]
  41da64: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41da68: 4618         	mov	r0, r3
  41da6a: f17a fa25    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17a44a
  41da6e: 9b01         	ldr	r3, [sp, #0x4]
  41da70: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41da74: 4618         	mov	r0, r3
  41da76: f17a fa1f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17a43e
  41da7a: 9b01         	ldr	r3, [sp, #0x4]
  41da7c: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41da80: 4618         	mov	r0, r3
  41da82: f17a fa19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17a432
  41da86: 9b01         	ldr	r3, [sp, #0x4]
  41da88: f503 73e8    	add.w	r3, r3, #0x1d0
  41da8c: 4618         	mov	r0, r3
  41da8e: f397 ff41    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397e82
  41da92: 9b01         	ldr	r3, [sp, #0x4]
  41da94: 4618         	mov	r0, r3
  41da96: f6f9 ff01    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x1061fe
  41da9a: 2300         	movs	r3, #0x0
  41da9c: 2b00         	cmp	r3, #0x0
  41da9e: d002         	beq	0x41daa6 <WormDrone::~WormDrone()+0xb2> @ imm = #0x4
  41daa0: 9801         	ldr	r0, [sp, #0x4]
  41daa2: f36a faff    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36a5fe
  41daa6: 9b01         	ldr	r3, [sp, #0x4]
  41daa8: 4618         	mov	r0, r3
  41daaa: b002         	add	sp, #0x8
  41daac: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41daad); words below are literal-pool data ---
  41daae: bf00         	nop
  41dab0: 500c         	str	r4, [r1, r0]
  41dab2: 0051         	lsls	r1, r2, #0x1
  41dab4: dfd0         	svc	#0xd0
  41dab6: ffff d744    	<unknown>
  41daba: ffff b500    	<unknown>

// ==== WormDrone::~WormDrone
//      file offset 0x41dabc (= ELF address; Ghidra 0x42dabc), 28 bytes, Thumb-2
  41dabc: b500         	push	{lr}
  41dabe: b083         	sub	sp, #0xc
  41dac0: 9001         	str	r0, [sp, #0x4]
  41dac2: 9801         	ldr	r0, [sp, #0x4]
  41dac4: f7ff ff96    	bl	0x41d9f4 <WormDrone::~WormDrone()> @ imm = #-0xd4
  41dac8: 9801         	ldr	r0, [sp, #0x4]
  41daca: f36a faeb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36a5d6
  41dace: 9b01         	ldr	r3, [sp, #0x4]
  41dad0: 4618         	mov	r0, r3
  41dad2: b003         	add	sp, #0xc
  41dad4: f85d fb04    	ldr	pc, [sp], #4

// ==== WormDrone::sawDamage
//      file offset 0x41dad8 (= ELF address; Ghidra 0x42dad8), 700 bytes, Thumb-2
  41dad8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  41dadc: b09f         	sub	sp, #0x7c
  41dade: 900b         	str	r0, [sp, #0x2c]
  41dae0: 4ca8         	ldr	r4, [pc, #0x2a0]        @ 0x41dd84 <WormDrone::sawDamage()+0x2ac>
  41dae2: 447c         	add	r4, pc
  41dae4: ab14         	add	r3, sp, #0x50
  41dae6: 4618         	mov	r0, r3
  41dae8: f04f 0100    	mov.w	r1, #0x0
  41daec: f2c4 11c8    	movt	r1, #0x41c8
  41daf0: f04f 0200    	mov.w	r2, #0x0
  41daf4: f175 f8fc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1751f8
  41daf8: 9b0b         	ldr	r3, [sp, #0x2c]
  41dafa: 681b         	ldr	r3, [r3]
  41dafc: f503 73c2    	add.w	r3, r3, #0x184
  41db00: 681b         	ldr	r3, [r3]
  41db02: 9a0b         	ldr	r2, [sp, #0x2c]
  41db04: a918         	add	r1, sp, #0x60
  41db06: 4608         	mov	r0, r1
  41db08: 4611         	mov	r1, r2
  41db0a: 4798         	blx	r3
  41db0c: a912         	add	r1, sp, #0x48
  41db0e: aa14         	add	r2, sp, #0x50
  41db10: ab18         	add	r3, sp, #0x60
  41db12: 4608         	mov	r0, r1
  41db14: 4611         	mov	r1, r2
  41db16: 461a         	mov	r2, r3
  41db18: f174 fc04    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x174808
  41db1c: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x41dd88 <WormDrone::sawDamage()+0x2b0>
  41db1e: 58e3         	ldr	r3, [r4, r3]
  41db20: 681b         	ldr	r3, [r3]
  41db22: 681b         	ldr	r3, [r3]
  41db24: f503 73c4    	add.w	r3, r3, #0x188
  41db28: 681b         	ldr	r3, [r3]
  41db2a: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x41dd88 <WormDrone::sawDamage()+0x2b0>
  41db2c: 58a2         	ldr	r2, [r4, r2]
  41db2e: 6812         	ldr	r2, [r2]
  41db30: a918         	add	r1, sp, #0x60
  41db32: 4608         	mov	r0, r1
  41db34: 4611         	mov	r1, r2
  41db36: 4798         	blx	r3
  41db38: a914         	add	r1, sp, #0x50
  41db3a: aa12         	add	r2, sp, #0x48
  41db3c: ab18         	add	r3, sp, #0x60
  41db3e: 4608         	mov	r0, r1
  41db40: 4611         	mov	r1, r2
  41db42: 461a         	mov	r2, r3
  41db44: f174 fbee    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x1747dc
  41db48: aa12         	add	r2, sp, #0x48
  41db4a: ab14         	add	r3, sp, #0x50
  41db4c: 4610         	mov	r0, r2
  41db4e: 4619         	mov	r1, r3
  41db50: f175 f8fc    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1751f8
  41db54: eddd 7a12    	vldr	s15, [sp, #72]
  41db58: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41db5c: eddd 7a13    	vldr	s15, [sp, #76]
  41db60: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41db64: ab14         	add	r3, sp, #0x50
  41db66: 4618         	mov	r0, r3
  41db68: eeb0 0b46    	vmov.f64	d0, d6
  41db6c: eeb0 1b47    	vmov.f64	d1, d7
  41db70: f7fe fb64    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x1938
  41db74: 4b85         	ldr	r3, [pc, #0x214]        @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41db76: 58e3         	ldr	r3, [r4, r3]
  41db78: 681b         	ldr	r3, [r3]
  41db7a: f893 3159    	ldrb.w	r3, [r3, #0x159]
  41db7e: f083 0301    	eor	r3, r3, #0x1
  41db82: b2db         	uxtb	r3, r3
  41db84: 2b00         	cmp	r3, #0x0
  41db86: d027         	beq	0x41dbd8 <WormDrone::sawDamage()+0x100> @ imm = #0x4e
  41db88: 4b80         	ldr	r3, [pc, #0x200]        @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41db8a: 58e3         	ldr	r3, [r4, r3]
  41db8c: 681b         	ldr	r3, [r3]
  41db8e: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  41db92: 466b         	mov	r3, sp
  41db94: aa16         	add	r2, sp, #0x58
  41db96: e892 0003    	ldm.w	r2, {r0, r1}
  41db9a: e883 0003    	stm.w	r3, {r0, r1}
  41db9e: ab14         	add	r3, sp, #0x50
  41dba0: cb0c         	ldm	r3, {r2, r3}
  41dba2: 4628         	mov	r0, r5
  41dba4: f2b7 fa5b    	bl	0x6d505e <cpShapePointQuery> @ imm = #0x2b74b6
  41dba8: 4603         	mov	r3, r0
  41dbaa: 2b00         	cmp	r3, #0x0
  41dbac: d112         	bne	0x41dbd4 <WormDrone::sawDamage()+0xfc> @ imm = #0x24
  41dbae: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41dbb0: 58e3         	ldr	r3, [r4, r3]
  41dbb2: 681b         	ldr	r3, [r3]
  41dbb4: f8d3 5140    	ldr.w	r5, [r3, #0x140]
  41dbb8: 466b         	mov	r3, sp
  41dbba: aa16         	add	r2, sp, #0x58
  41dbbc: e892 0003    	ldm.w	r2, {r0, r1}
  41dbc0: e883 0003    	stm.w	r3, {r0, r1}
  41dbc4: ab14         	add	r3, sp, #0x50
  41dbc6: cb0c         	ldm	r3, {r2, r3}
  41dbc8: 4628         	mov	r0, r5
  41dbca: f2b7 fa48    	bl	0x6d505e <cpShapePointQuery> @ imm = #0x2b7490
  41dbce: 4603         	mov	r3, r0
  41dbd0: 2b00         	cmp	r3, #0x0
  41dbd2: d001         	beq	0x41dbd8 <WormDrone::sawDamage()+0x100> @ imm = #0x2
  41dbd4: 2301         	movs	r3, #0x1
  41dbd6: e000         	b	0x41dbda <WormDrone::sawDamage()+0x102> @ imm = #0x0
  41dbd8: 2300         	movs	r3, #0x0
  41dbda: 2b00         	cmp	r3, #0x0
  41dbdc: f000 80cf    	beq.w	0x41dd7e <WormDrone::sawDamage()+0x2a6> @ imm = #0x19e
  41dbe0: f04f 0200    	mov.w	r2, #0x0
  41dbe4: f04f 0300    	mov.w	r3, #0x0
  41dbe8: e9cd 2318    	strd	r2, r3, [sp, #96]
  41dbec: f04f 0200    	mov.w	r2, #0x0
  41dbf0: f04f 0300    	mov.w	r3, #0x0
  41dbf4: e9cd 231a    	strd	r2, r3, [sp, #104]
  41dbf8: 9b0b         	ldr	r3, [sp, #0x2c]
  41dbfa: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41dbfe: ed93 7b16    	vldr	d7, [r3, #88]
  41dc02: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41dc06: edcd 7a0f    	vstr	s15, [sp, #60]
  41dc0a: f04f 0300    	mov.w	r3, #0x0
  41dc0e: f2c4 0340    	movt	r3, #0x4040
  41dc12: 9310         	str	r3, [sp, #0x40]
  41dc14: ed9d 7b18    	vldr	d7, [sp, #96]
  41dc18: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41dc1c: ee17 0a90    	vmov	r0, s15
  41dc20: f6bf f830    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x140fa0
  41dc24: 4680         	mov	r8, r0
  41dc26: ed9d 7b1a    	vldr	d7, [sp, #104]
  41dc2a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41dc2e: ee17 0a90    	vmov	r0, s15
  41dc32: f6bf f827    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x140fb2
  41dc36: 4607         	mov	r7, r0
  41dc38: 980f         	ldr	r0, [sp, #0x3c]
  41dc3a: f70b fc1f    	bl	0x32947c <std::cos(float)> @ imm = #-0xf47c2
  41dc3e: 4603         	mov	r3, r0
  41dc40: 4618         	mov	r0, r3
  41dc42: f6bf f81f    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x140fc2
  41dc46: 4606         	mov	r6, r0
  41dc48: 980f         	ldr	r0, [sp, #0x3c]
  41dc4a: f70b fc2f    	bl	0x3294ac <std::sin(float)> @ imm = #-0xf47a2
  41dc4e: 4603         	mov	r3, r0
  41dc50: 4618         	mov	r0, r3
  41dc52: f6bf f817    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x140fd2
  41dc56: 4605         	mov	r5, r0
  41dc58: 2000         	movs	r0, #0x0
  41dc5a: f6c7 f855    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x138f56
  41dc5e: 900a         	str	r0, [sp, #0x28]
  41dc60: eddd 7a10    	vldr	s15, [sp, #64]
  41dc64: eefd 7ae7    	vcvt.s32.f32	s15, s15
  41dc68: ee17 3a90    	vmov	r3, s15
  41dc6c: 4618         	mov	r0, r3
  41dc6e: f6c7 f84b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x138f6a
  41dc72: 9009         	str	r0, [sp, #0x24]
  41dc74: 2000         	movs	r0, #0x0
  41dc76: f6c7 f847    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x138f72
  41dc7a: 4683         	mov	r11, r0
  41dc7c: 2000         	movs	r0, #0x0
  41dc7e: f6c7 f843    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x138f7a
  41dc82: 4682         	mov	r10, r0
  41dc84: 4b41         	ldr	r3, [pc, #0x104]        @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41dc86: 58e3         	ldr	r3, [r4, r3]
  41dc88: 681b         	ldr	r3, [r3]
  41dc8a: 681b         	ldr	r3, [r3]
  41dc8c: f503 73e0    	add.w	r3, r3, #0x1c0
  41dc90: 681b         	ldr	r3, [r3]
  41dc92: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41dc94: 58a2         	ldr	r2, [r4, r2]
  41dc96: 6812         	ldr	r2, [r2]
  41dc98: a90d         	add	r1, sp, #0x34
  41dc9a: 4608         	mov	r0, r1
  41dc9c: 4611         	mov	r1, r2
  41dc9e: 4798         	blx	r3
  41dca0: ab0d         	add	r3, sp, #0x34
  41dca2: 4618         	mov	r0, r3
  41dca4: f17b feca    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x17bd94
  41dca8: 4681         	mov	r9, r0
  41dcaa: 9b0b         	ldr	r3, [sp, #0x2c]
  41dcac: 681b         	ldr	r3, [r3]
  41dcae: f503 73e0    	add.w	r3, r3, #0x1c0
  41dcb2: 681b         	ldr	r3, [r3]
  41dcb4: aa0e         	add	r2, sp, #0x38
  41dcb6: 4610         	mov	r0, r2
  41dcb8: 990b         	ldr	r1, [sp, #0x2c]
  41dcba: 4798         	blx	r3
  41dcbc: ab0e         	add	r3, sp, #0x38
  41dcbe: 4618         	mov	r0, r3
  41dcc0: f17b febc    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x17bd78
  41dcc4: 4603         	mov	r3, r0
  41dcc6: 9a0a         	ldr	r2, [sp, #0x28]
  41dcc8: 9200         	str	r2, [sp]
  41dcca: 9a09         	ldr	r2, [sp, #0x24]
  41dccc: 9201         	str	r2, [sp, #0x4]
  41dcce: f8cd b008    	str.w	r11, [sp, #0x8]
  41dcd2: f8cd a00c    	str.w	r10, [sp, #0xc]
  41dcd6: f8cd 9010    	str.w	r9, [sp, #0x10]
  41dcda: 9305         	str	r3, [sp, #0x14]
  41dcdc: 2300         	movs	r3, #0x0
  41dcde: 9306         	str	r3, [sp, #0x18]
  41dce0: 4640         	mov	r0, r8
  41dce2: 4639         	mov	r1, r7
  41dce4: 4632         	mov	r2, r6
  41dce6: 462b         	mov	r3, r5
  41dce8: f17c f892    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x17c124
  41dcec: 4603         	mov	r3, r0
  41dcee: 9311         	str	r3, [sp, #0x44]
  41dcf0: ab0e         	add	r3, sp, #0x38
  41dcf2: 4618         	mov	r0, r3
  41dcf4: f397 fe0e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397c1c
  41dcf8: ab0d         	add	r3, sp, #0x34
  41dcfa: 4618         	mov	r0, r3
  41dcfc: f397 fe0a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397c14
  41dd00: f1c2 fcd6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c29ac
  41dd04: 4603         	mov	r3, r0
  41dd06: 4618         	mov	r0, r3
  41dd08: 4b21         	ldr	r3, [pc, #0x84]         @ 0x41dd90 <WormDrone::sawDamage()+0x2b8>
  41dd0a: 447b         	add	r3, pc
  41dd0c: 4619         	mov	r1, r3
  41dd0e: 9a11         	ldr	r2, [sp, #0x44]
  41dd10: f1c2 ff0c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c2e18
  41dd14: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41dd16: 58e3         	ldr	r3, [r4, r3]
  41dd18: 681b         	ldr	r3, [r3]
  41dd1a: 681b         	ldr	r3, [r3]
  41dd1c: f503 7316    	add.w	r3, r3, #0x258
  41dd20: 681d         	ldr	r5, [r3]
  41dd22: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x41dd8c <WormDrone::sawDamage()+0x2b4>
  41dd24: 58e3         	ldr	r3, [r4, r3]
  41dd26: 681b         	ldr	r3, [r3]
  41dd28: 461c         	mov	r4, r3
  41dd2a: 9b0b         	ldr	r3, [sp, #0x2c]
  41dd2c: 681b         	ldr	r3, [r3]
  41dd2e: f503 73e0    	add.w	r3, r3, #0x1c0
  41dd32: 681b         	ldr	r3, [r3]
  41dd34: aa0e         	add	r2, sp, #0x38
  41dd36: 4610         	mov	r0, r2
  41dd38: 990b         	ldr	r1, [sp, #0x2c]
  41dd3a: 4798         	blx	r3
  41dd3c: ab0e         	add	r3, sp, #0x38
  41dd3e: 2201         	movs	r2, #0x1
  41dd40: 9200         	str	r2, [sp]
  41dd42: 4620         	mov	r0, r4
  41dd44: f04f 0100    	mov.w	r1, #0x0
  41dd48: f2c4 0140    	movt	r1, #0x4040
  41dd4c: 461a         	mov	r2, r3
  41dd4e: 2300         	movs	r3, #0x0
  41dd50: 47a8         	blx	r5
  41dd52: ab0e         	add	r3, sp, #0x38
  41dd54: 4618         	mov	r0, r3
  41dd56: f397 fddd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397bba
  41dd5a: e010         	b	0x41dd7e <WormDrone::sawDamage()+0x2a6> @ imm = #0x20
  41dd5c: ab0e         	add	r3, sp, #0x38
  41dd5e: 4618         	mov	r0, r3
  41dd60: f397 fdd8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397bb0
  41dd64: e7ff         	b	0x41dd66 <WormDrone::sawDamage()+0x28e> @ imm = #-0x2
  41dd66: ab0d         	add	r3, sp, #0x34
  41dd68: 4618         	mov	r0, r3
  41dd6a: f397 fdd3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397ba6
  41dd6e: f36a f99d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36a33a
  41dd72: ab0e         	add	r3, sp, #0x38
  41dd74: 4618         	mov	r0, r3
  41dd76: f397 fdcd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x397b9a
  41dd7a: f36a f997    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x36a32e
  41dd7e: b01f         	add	sp, #0x7c
  41dd80: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x41dd83); words below are literal-pool data ---
  41dd84: 4f26         	ldr	r7, [pc, #0x98]         @ 0x41de20 <WormDrone::getSearchPoint()+0x8c>
  41dd86: 0051         	lsls	r1, r2, #0x1
  41dd88: d744         	bvc	0x41de14 <WormDrone::getSearchPoint()+0x80> @ imm = #0x88
  41dd8a: ffff d784    	<unknown>
  41dd8e: ffff e02e    	<unknown>
  41dd92: 003b         	movs	r3, r7

// ==== WormDrone::getSearchPoint
//      file offset 0x41dd94 (= ELF address; Ghidra 0x42dd94), 184 bytes, Thumb-2
  41dd94: b500         	push	{lr}
  41dd96: ed2d 8b02    	vpush	{d8}
  41dd9a: b083         	sub	sp, #0xc
  41dd9c: 9001         	str	r0, [sp, #0x4]
  41dd9e: 9100         	str	r1, [sp]
  41dda0: f7fe f9c6    	bl	0x41c130 <WeaponManager::getRandomWeapon()+0x14c> @ imm = #-0x1c74
  41dda4: 4603         	mov	r3, r0
  41dda6: ee07 3a90    	vmov	s15, r3
  41ddaa: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  41ddae: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x41de38 <WormDrone::getSearchPoint()+0xa4>
  41ddb2: ee87 7a27    	vdiv.f32	s14, s14, s15
  41ddb6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41ddba: ee37 7a67    	vsub.f32	s14, s14, s15
  41ddbe: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x41de3c <WormDrone::getSearchPoint()+0xa8>
  41ddc2: ee67 7a27    	vmul.f32	s15, s14, s15
  41ddc6: ee17 0a90    	vmov	r0, s15
  41ddca: f721 fb6b    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xde92a
  41ddce: ee07 0a10    	vmov	s14, r0
  41ddd2: eddf 7a1b    	vldr	s15, [pc, #108]         @ 0x41de40 <WormDrone::getSearchPoint()+0xac>
  41ddd6: ee77 7a27    	vadd.f32	s15, s14, s15
  41ddda: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41ddde: f7fe f9a7    	bl	0x41c130 <WeaponManager::getRandomWeapon()+0x14c> @ imm = #-0x1cb2
  41dde2: 4603         	mov	r3, r0
  41dde4: ee07 3a90    	vmov	s15, r3
  41dde8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  41ddec: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x41de38 <WormDrone::getSearchPoint()+0xa4>
  41ddf0: ee87 7a27    	vdiv.f32	s14, s14, s15
  41ddf4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41ddf8: ee37 7a67    	vsub.f32	s14, s14, s15
  41ddfc: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x41de44 <WormDrone::getSearchPoint()+0xb0>
  41de00: ee67 7a27    	vmul.f32	s15, s14, s15
  41de04: ee17 0a90    	vmov	r0, s15
  41de08: f721 fb4c    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xde968
  41de0c: ee07 0a10    	vmov	s14, r0
  41de10: eddf 7a0d    	vldr	s15, [pc, #52]          @ 0x41de48 <WormDrone::getSearchPoint()+0xb4>
  41de14: ee77 7a27    	vadd.f32	s15, s14, s15
  41de18: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41de1c: 9b01         	ldr	r3, [sp, #0x4]
  41de1e: 4618         	mov	r0, r3
  41de20: eeb0 0b48    	vmov.f64	d0, d8
  41de24: eeb0 1b47    	vmov.f64	d1, d7
  41de28: f7fe fa08    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x1bf0
  41de2c: 9801         	ldr	r0, [sp, #0x4]
  41de2e: b003         	add	sp, #0xc
  41de30: ecbd 8b02    	vpop	{d8}
  41de34: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x41de37); words below are literal-pool data ---
  41de38: 0000         	movs	r0, r0
  41de3a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x41e03c <WormDrone::updateMoveTo(cpVect)+0xb0>
  41de3c: 4000         	ands	r0, r0
  41de3e: 451c         	cmp	r4, r3
  41de40: 0000         	movs	r0, r0
  41de42: 437a         	muls	r2, r7, r2
  41de44: 0000         	movs	r0, r0
  41de46: 42c8         	cmn	r0, r1
  41de48: 0000         	movs	r0, r0
  41de4a: 4416         	add	r6, r2

// ==== WormDrone::jump
//      file offset 0x41de50 (= ELF address; Ghidra 0x42de50), 112 bytes, Thumb-2
  41de50: b510         	push	{r4, lr}
  41de52: b086         	sub	sp, #0x18
  41de54: 9001         	str	r0, [sp, #0x4]
  41de56: 9b01         	ldr	r3, [sp, #0x4]
  41de58: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41de5c: 9b01         	ldr	r3, [sp, #0x4]
  41de5e: ed93 7a73    	vldr	s14, [r3, #460]
  41de62: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x41deb8 <WormDrone::jump()+0x68>
  41de66: ee67 7a27    	vmul.f32	s15, s14, s15
  41de6a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41de6e: ab02         	add	r3, sp, #0x8
  41de70: 4618         	mov	r0, r3
  41de72: ed9f 0b0f    	vldr	d0, [pc, #60]           @ 0x41deb0 <WormDrone::jump()+0x60>
  41de76: eeb0 1b47    	vmov.f64	d1, d7
  41de7a: f7fe f9df    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x1c42
  41de7e: ed9d 4b02    	vldr	d4, [sp, #8]
  41de82: ed9d 5b04    	vldr	d5, [sp, #16]
  41de86: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x41debc <WormDrone::jump()+0x6c>
  41de88: 447b         	add	r3, pc
  41de8a: ed93 6b00    	vldr	d6, [r3]
  41de8e: ed93 7b02    	vldr	d7, [r3, #8]
  41de92: 4620         	mov	r0, r4
  41de94: eeb0 0b44    	vmov.f64	d0, d4
  41de98: eeb0 1b45    	vmov.f64	d1, d5
  41de9c: eeb0 2b46    	vmov.f64	d2, d6
  41dea0: eeb0 3b47    	vmov.f64	d3, d7
  41dea4: f7fe fb4a    	bl	0x41c53c <WeaponManager::getRandomWeapon()+0x558> @ imm = #-0x196c
  41dea8: b006         	add	sp, #0x18
  41deaa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41deab); words below are literal-pool data ---
  41deac: f3af 8000    	nop.w
  41deb8: 0000         	movs	r0, r0
  41deba: 437a         	muls	r2, r7, r2
  41debc: df14         	svc	#0x14
  41debe: 003b         	movs	r3, r7

// ==== WormDrone::addPathAt
//      file offset 0x41dec0 (= ELF address; Ghidra 0x42dec0), 202 bytes, Thumb-2
  41dec0: b082         	sub	sp, #0x8
  41dec2: b530         	push	{r4, r5, lr}
  41dec4: b085         	sub	sp, #0x14
  41dec6: 9001         	str	r0, [sp, #0x4]
  41dec8: a908         	add	r1, sp, #0x20
  41deca: e881 000c    	stm.w	r1, {r2, r3}
  41dece: 9b01         	ldr	r3, [sp, #0x4]
  41ded0: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41ded4: 681b         	ldr	r3, [r3]
  41ded6: f503 73ee    	add.w	r3, r3, #0x1dc
  41deda: 681b         	ldr	r3, [r3]
  41dedc: 9a01         	ldr	r2, [sp, #0x4]
  41dede: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41dee2: 4610         	mov	r0, r2
  41dee4: 990c         	ldr	r1, [sp, #0x30]
  41dee6: 4798         	blx	r3
  41dee8: 9b01         	ldr	r3, [sp, #0x4]
  41deea: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41deee: 681b         	ldr	r3, [r3]
  41def0: f503 73f2    	add.w	r3, r3, #0x1e4
  41def4: 681b         	ldr	r3, [r3]
  41def6: 9a01         	ldr	r2, [sp, #0x4]
  41def8: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41defc: 4610         	mov	r0, r2
  41defe: f04f 0100    	mov.w	r1, #0x0
  41df02: 4798         	blx	r3
  41df04: 9b01         	ldr	r3, [sp, #0x4]
  41df06: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41df0a: 681b         	ldr	r3, [r3]
  41df0c: f503 732a    	add.w	r3, r3, #0x2a8
  41df10: 681b         	ldr	r3, [r3]
  41df12: 9a01         	ldr	r2, [sp, #0x4]
  41df14: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41df18: 4610         	mov	r0, r2
  41df1a: 990c         	ldr	r1, [sp, #0x30]
  41df1c: 4798         	blx	r3
  41df1e: 9b01         	ldr	r3, [sp, #0x4]
  41df20: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41df24: 681b         	ldr	r3, [r3]
  41df26: f503 732e    	add.w	r3, r3, #0x2b8
  41df2a: 681b         	ldr	r3, [r3]
  41df2c: 9a01         	ldr	r2, [sp, #0x4]
  41df2e: f8d2 220c    	ldr.w	r2, [r2, #0x20c]
  41df32: 4610         	mov	r0, r2
  41df34: 990c         	ldr	r1, [sp, #0x30]
  41df36: 4798         	blx	r3
  41df38: 9b01         	ldr	r3, [sp, #0x4]
  41df3a: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41df3e: 681b         	ldr	r3, [r3]
  41df40: f503 73de    	add.w	r3, r3, #0x1bc
  41df44: 681c         	ldr	r4, [r3]
  41df46: 9b01         	ldr	r3, [sp, #0x4]
  41df48: f8d3 520c    	ldr.w	r5, [r3, #0x20c]
  41df4c: ed9d 7b08    	vldr	d7, [sp, #32]
  41df50: eef7 6bc7    	vcvt.f32.f64	s13, d7
  41df54: ed9d 7b0a    	vldr	d7, [sp, #40]
  41df58: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41df5c: ab02         	add	r3, sp, #0x8
  41df5e: 4618         	mov	r0, r3
  41df60: ee16 1a90    	vmov	r1, s13
  41df64: ee17 2a90    	vmov	r2, s15
  41df68: f174 fec2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x174d84
  41df6c: ab02         	add	r3, sp, #0x8
  41df6e: 4628         	mov	r0, r5
  41df70: 4619         	mov	r1, r3
  41df72: 47a0         	blx	r4
  41df74: 9b01         	ldr	r3, [sp, #0x4]
  41df76: f8d3 320c    	ldr.w	r3, [r3, #0x20c]
  41df7a: 4618         	mov	r0, r3
  41df7c: f1a4 f9fc    	bl	0x5c2378 <cocos2d::CCParticleSystem::addParticle()> @ imm = #0x1a43f8
  41df80: b005         	add	sp, #0x14
  41df82: e8bd 4030    	pop.w	{r4, r5, lr}
  41df86: b002         	add	sp, #0x8
  41df88: 4770         	bx	lr

// ==== WormDrone::updateMoveTo
//      file offset 0x41df8c (= ELF address; Ghidra 0x42df8c), 264 bytes, Thumb-2
  41df8c: b082         	sub	sp, #0x8
  41df8e: b530         	push	{r4, r5, lr}
  41df90: b09b         	sub	sp, #0x6c
  41df92: 9003         	str	r0, [sp, #0xc]
  41df94: a91e         	add	r1, sp, #0x78
  41df96: e881 000c    	stm.w	r1, {r2, r3}
  41df9a: 9b03         	ldr	r3, [sp, #0xc]
  41df9c: 681b         	ldr	r3, [r3]
  41df9e: f503 73d6    	add.w	r3, r3, #0x1ac
  41dfa2: 681b         	ldr	r3, [r3]
  41dfa4: aa0e         	add	r2, sp, #0x38
  41dfa6: 4610         	mov	r0, r2
  41dfa8: 9903         	ldr	r1, [sp, #0xc]
  41dfaa: 4798         	blx	r3
  41dfac: ab06         	add	r3, sp, #0x18
  41dfae: ed9d 4b1e    	vldr	d4, [sp, #120]
  41dfb2: ed9d 5b20    	vldr	d5, [sp, #128]
  41dfb6: ed9d 6b0e    	vldr	d6, [sp, #56]
  41dfba: ed9d 7b10    	vldr	d7, [sp, #64]
  41dfbe: 4618         	mov	r0, r3
  41dfc0: eeb0 0b44    	vmov.f64	d0, d4
  41dfc4: eeb0 1b45    	vmov.f64	d1, d5
  41dfc8: eeb0 2b46    	vmov.f64	d2, d6
  41dfcc: eeb0 3b47    	vmov.f64	d3, d7
  41dfd0: f7fe f974    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x1d18
  41dfd4: ab06         	add	r3, sp, #0x18
  41dfd6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41dfd8: f2b9 f86e    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b90dc
  41dfdc: ec41 0b17    	vmov	d7, r0, r1
  41dfe0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41dfe4: edcd 7a05    	vstr	s15, [sp, #20]
  41dfe8: ed9d 7a05    	vldr	s14, [sp, #20]
  41dfec: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41dff0: eeb4 7ae7    	vcmpe.f32	s14, s15
  41dff4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41dff8: dd47         	ble	0x41e08a <WormDrone::updateMoveTo(cpVect)+0xfe> @ imm = #0x8e
  41dffa: 9b03         	ldr	r3, [sp, #0xc]
  41dffc: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e000: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  41e004: 4610         	mov	r0, r2
  41e006: 4619         	mov	r1, r3
  41e008: f6b7 ef7e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x148104
  41e00c: 4604         	mov	r4, r0
  41e00e: 460d         	mov	r5, r1
  41e010: 9b03         	ldr	r3, [sp, #0xc]
  41e012: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e016: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  41e01a: 4610         	mov	r0, r2
  41e01c: 4619         	mov	r1, r3
  41e01e: f6b7 ef7a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x14810c
  41e022: 4602         	mov	r2, r0
  41e024: 460b         	mov	r3, r1
  41e026: a912         	add	r1, sp, #0x48
  41e028: 4608         	mov	r0, r1
  41e02a: ec45 4b10    	vmov	d0, r4, r5
  41e02e: ec43 2b11    	vmov	d1, r2, r3
  41e032: f7fe f903    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x1dfa
  41e036: ab0a         	add	r3, sp, #0x28
  41e038: ed9d 6b12    	vldr	d6, [sp, #72]
  41e03c: ed9d 7b14    	vldr	d7, [sp, #80]
  41e040: 4618         	mov	r0, r3
  41e042: eeb0 0b46    	vmov.f64	d0, d6
  41e046: eeb0 1b47    	vmov.f64	d1, d7
  41e04a: f7fe f9d1    	bl	0x41c3f0 <WeaponManager::getRandomWeapon()+0x40c> @ imm = #-0x1c5e
  41e04e: 9b03         	ldr	r3, [sp, #0xc]
  41e050: 681b         	ldr	r3, [r3]
  41e052: f503 73fe    	add.w	r3, r3, #0x1fc
  41e056: 681c         	ldr	r4, [r3]
  41e058: 9d03         	ldr	r5, [sp, #0xc]
  41e05a: ab16         	add	r3, sp, #0x58
  41e05c: ed9d 6b0a    	vldr	d6, [sp, #40]
  41e060: ed9d 7b0c    	vldr	d7, [sp, #48]
  41e064: 4618         	mov	r0, r3
  41e066: eeb0 0b46    	vmov.f64	d0, d6
  41e06a: eeb0 1b47    	vmov.f64	d1, d7
  41e06e: eeb6 2b08    	vmov.f64	d2, #7.500000e-01
  41e072: f7fe f94f    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x1d62
  41e076: 466b         	mov	r3, sp
  41e078: aa18         	add	r2, sp, #0x60
  41e07a: e892 0003    	ldm.w	r2, {r0, r1}
  41e07e: e883 0003    	stm.w	r3, {r0, r1}
  41e082: ab16         	add	r3, sp, #0x58
  41e084: cb0c         	ldm	r3, {r2, r3}
  41e086: 4628         	mov	r0, r5
  41e088: 47a0         	blx	r4
  41e08a: b01b         	add	sp, #0x6c
  41e08c: e8bd 4030    	pop.w	{r4, r5, lr}
  41e090: b002         	add	sp, #0x8
  41e092: 4770         	bx	lr

// ==== WormDrone::updateThrust
//      file offset 0x41e098 (= ELF address; Ghidra 0x42e098), 588 bytes, Thumb-2
  41e098: b510         	push	{r4, lr}
  41e09a: b0a0         	sub	sp, #0x80
  41e09c: 9001         	str	r0, [sp, #0x4]
  41e09e: 9100         	str	r1, [sp]
  41e0a0: 9b01         	ldr	r3, [sp, #0x4]
  41e0a2: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41e0a6: 2b00         	cmp	r3, #0x0
  41e0a8: d035         	beq	0x41e116 <WormDrone::updateThrust(float)+0x7e> @ imm = #0x6a
  41e0aa: 9b01         	ldr	r3, [sp, #0x4]
  41e0ac: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e0b0: 4618         	mov	r0, r3
  41e0b2: f2b5 f92e    	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2b525c
  41e0b6: 9b01         	ldr	r3, [sp, #0x4]
  41e0b8: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  41e0bc: f04f 0200    	mov.w	r2, #0x0
  41e0c0: f04f 0300    	mov.w	r3, #0x0
  41e0c4: e9c1 2318    	strd	r2, r3, [r1, #96]
  41e0c8: 9b01         	ldr	r3, [sp, #0x4]
  41e0ca: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41e0ce: 9b01         	ldr	r3, [sp, #0x4]
  41e0d0: 681b         	ldr	r3, [r3]
  41e0d2: f503 73fc    	add.w	r3, r3, #0x1f8
  41e0d6: 681b         	ldr	r3, [r3]
  41e0d8: 9a01         	ldr	r2, [sp, #0x4]
  41e0da: a90c         	add	r1, sp, #0x30
  41e0dc: 4608         	mov	r0, r1
  41e0de: 4611         	mov	r1, r2
  41e0e0: 4798         	blx	r3
  41e0e2: ab10         	add	r3, sp, #0x40
  41e0e4: ed9d 6b0c    	vldr	d6, [sp, #48]
  41e0e8: ed9d 7b0e    	vldr	d7, [sp, #56]
  41e0ec: 4618         	mov	r0, r3
  41e0ee: eeb0 0b46    	vmov.f64	d0, d6
  41e0f2: eeb0 1b47    	vmov.f64	d1, d7
  41e0f6: ed9f 2b72    	vldr	d2, [pc, #456]          @ 0x41e2c0 <WormDrone::updateThrust(float)+0x228>
  41e0fa: f7fe f90b    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x1dea
  41e0fe: ed9d 6b10    	vldr	d6, [sp, #64]
  41e102: ed9d 7b12    	vldr	d7, [sp, #72]
  41e106: 4620         	mov	r0, r4
  41e108: eeb0 0b46    	vmov.f64	d0, d6
  41e10c: eeb0 1b47    	vmov.f64	d1, d7
  41e110: f7fe f9fe    	bl	0x41c510 <WeaponManager::getRandomWeapon()+0x52c> @ imm = #-0x1c04
  41e114: e0d2         	b	0x41e2bc <WormDrone::updateThrust(float)+0x224> @ imm = #0x1a4
  41e116: 9b01         	ldr	r3, [sp, #0x4]
  41e118: 681b         	ldr	r3, [r3]
  41e11a: f503 73fc    	add.w	r3, r3, #0x1f8
  41e11e: 681b         	ldr	r3, [r3]
  41e120: 9a01         	ldr	r2, [sp, #0x4]
  41e122: a914         	add	r1, sp, #0x50
  41e124: 4608         	mov	r0, r1
  41e126: 4611         	mov	r1, r2
  41e128: 4798         	blx	r3
  41e12a: ab08         	add	r3, sp, #0x20
  41e12c: ed9d 6b14    	vldr	d6, [sp, #80]
  41e130: ed9d 7b16    	vldr	d7, [sp, #88]
  41e134: 4618         	mov	r0, r3
  41e136: eeb0 0b46    	vmov.f64	d0, d6
  41e13a: eeb0 1b47    	vmov.f64	d1, d7
  41e13e: ed9f 2b62    	vldr	d2, [pc, #392]          @ 0x41e2c8 <WormDrone::updateThrust(float)+0x230>
  41e142: f7fe f8e7    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x1e32
  41e146: 9b01         	ldr	r3, [sp, #0x4]
  41e148: 681b         	ldr	r3, [r3]
  41e14a: f503 73fc    	add.w	r3, r3, #0x1f8
  41e14e: 681b         	ldr	r3, [r3]
  41e150: 9a01         	ldr	r2, [sp, #0x4]
  41e152: a918         	add	r1, sp, #0x60
  41e154: 4608         	mov	r0, r1
  41e156: 4611         	mov	r1, r2
  41e158: 4798         	blx	r3
  41e15a: ab0c         	add	r3, sp, #0x30
  41e15c: ed9d 6b18    	vldr	d6, [sp, #96]
  41e160: ed9d 7b1a    	vldr	d7, [sp, #104]
  41e164: 4618         	mov	r0, r3
  41e166: eeb0 0b46    	vmov.f64	d0, d6
  41e16a: eeb0 1b47    	vmov.f64	d1, d7
  41e16e: f7fe f93f    	bl	0x41c3f0 <WeaponManager::getRandomWeapon()+0x40c> @ imm = #-0x1d82
  41e172: ab08         	add	r3, sp, #0x20
  41e174: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41e176: f2b8 ff9f    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b8f3e
  41e17a: ec41 0b17    	vmov	d7, r0, r1
  41e17e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e182: edcd 7a03    	vstr	s15, [sp, #12]
  41e186: eddd 7a03    	vldr	s15, [sp, #12]
  41e18a: eef5 7a40    	vcmp.f32	s15, #0
  41e18e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e192: f000 8093    	beq.w	0x41e2bc <WormDrone::updateThrust(float)+0x224> @ imm = #0x126
  41e196: 9b01         	ldr	r3, [sp, #0x4]
  41e198: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e19c: ac10         	add	r4, sp, #0x40
  41e19e: 3338         	adds	r3, #0x38
  41e1a0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41e1a2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41e1a6: ed9d 4b10    	vldr	d4, [sp, #64]
  41e1aa: ed9d 5b12    	vldr	d5, [sp, #72]
  41e1ae: ed9d 6b08    	vldr	d6, [sp, #32]
  41e1b2: ed9d 7b0a    	vldr	d7, [sp, #40]
  41e1b6: eeb0 0b44    	vmov.f64	d0, d4
  41e1ba: eeb0 1b45    	vmov.f64	d1, d5
  41e1be: eeb0 2b46    	vmov.f64	d2, d6
  41e1c2: eeb0 3b47    	vmov.f64	d3, d7
  41e1c6: f7fe f8cb    	bl	0x41c360 <WeaponManager::getRandomWeapon()+0x37c> @ imm = #-0x1e6a
  41e1ca: ed8d 0b04    	vstr	d0, [sp, #16]
  41e1ce: ed9d 7a03    	vldr	s14, [sp, #12]
  41e1d2: eddd 7a03    	vldr	s15, [sp, #12]
  41e1d6: ee67 7a27    	vmul.f32	s15, s14, s15
  41e1da: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e1de: ed9d 6b04    	vldr	d6, [sp, #16]
  41e1e2: ee86 7b07    	vdiv.f64	d7, d6, d7
  41e1e6: eeb5 7bc0    	vcmpe.f64	d7, #0
  41e1ea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e1ee: d502         	bpl	0x41e1f6 <WormDrone::updateThrust(float)+0x15e> @ imm = #0x4
  41e1f0: ed9f 7b37    	vldr	d7, [pc, #220]          @ 0x41e2d0 <WormDrone::updateThrust(float)+0x238>
  41e1f4: e00b         	b	0x41e20e <WormDrone::updateThrust(float)+0x176> @ imm = #0x16
  41e1f6: ed9d 7a03    	vldr	s14, [sp, #12]
  41e1fa: eddd 7a03    	vldr	s15, [sp, #12]
  41e1fe: ee67 7a27    	vmul.f32	s15, s14, s15
  41e202: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e206: ed9d 6b04    	vldr	d6, [sp, #16]
  41e20a: ee86 7b07    	vdiv.f64	d7, d6, d7
  41e20e: ed8d 7b06    	vstr	d7, [sp, #24]
  41e212: eddd 7a03    	vldr	s15, [sp, #12]
  41e216: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e21a: ed9d 7b06    	vldr	d7, [sp, #24]
  41e21e: ee36 6b47    	vsub.f64	d6, d6, d7
  41e222: ed9f 7b2d    	vldr	d7, [pc, #180]          @ 0x41e2d8 <WormDrone::updateThrust(float)+0x240>
  41e226: eeb4 6bc7    	vcmpe.f64	d6, d7
  41e22a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e22e: d502         	bpl	0x41e236 <WormDrone::updateThrust(float)+0x19e> @ imm = #0x4
  41e230: ed9f 7b29    	vldr	d7, [pc, #164]          @ 0x41e2d8 <WormDrone::updateThrust(float)+0x240>
  41e234: e007         	b	0x41e246 <WormDrone::updateThrust(float)+0x1ae> @ imm = #0xe
  41e236: eddd 7a03    	vldr	s15, [sp, #12]
  41e23a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e23e: ed9d 7b06    	vldr	d7, [sp, #24]
  41e242: ee36 7b47    	vsub.f64	d7, d6, d7
  41e246: ed8d 7b06    	vstr	d7, [sp, #24]
  41e24a: 9b01         	ldr	r3, [sp, #0x4]
  41e24c: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41e250: eddd 7a00    	vldr	s15, [sp]
  41e254: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e258: eeb7 7b08    	vmov.f64	d7, #1.500000e+00
  41e25c: ee26 6b07    	vmul.f64	d6, d6, d7
  41e260: ed9d 7b06    	vldr	d7, [sp, #24]
  41e264: ee26 6b07    	vmul.f64	d6, d6, d7
  41e268: 9b01         	ldr	r3, [sp, #0x4]
  41e26a: edd3 7a73    	vldr	s15, [r3, #460]
  41e26e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e272: ee26 7b07    	vmul.f64	d7, d6, d7
  41e276: ab1c         	add	r3, sp, #0x70
  41e278: ed9d 5b0c    	vldr	d5, [sp, #48]
  41e27c: ed9d 6b0e    	vldr	d6, [sp, #56]
  41e280: 4618         	mov	r0, r3
  41e282: eeb0 0b45    	vmov.f64	d0, d5
  41e286: eeb0 1b46    	vmov.f64	d1, d6
  41e28a: eeb0 2b47    	vmov.f64	d2, d7
  41e28e: f7fe f841    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x1f7e
  41e292: ed9d 4b1c    	vldr	d4, [sp, #112]
  41e296: ed9d 5b1e    	vldr	d5, [sp, #120]
  41e29a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x41e2e0 <WormDrone::updateThrust(float)+0x248>
  41e29c: 447b         	add	r3, pc
  41e29e: ed93 6b00    	vldr	d6, [r3]
  41e2a2: ed93 7b02    	vldr	d7, [r3, #8]
  41e2a6: 4620         	mov	r0, r4
  41e2a8: eeb0 0b44    	vmov.f64	d0, d4
  41e2ac: eeb0 1b45    	vmov.f64	d1, d5
  41e2b0: eeb0 2b46    	vmov.f64	d2, d6
  41e2b4: eeb0 3b47    	vmov.f64	d3, d7
  41e2b8: f7fe f940    	bl	0x41c53c <WeaponManager::getRandomWeapon()+0x558> @ imm = #-0x1d80
  41e2bc: b020         	add	sp, #0x80
  41e2be: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41e2bf); words below are literal-pool data ---
  41e2c0: 0000         	movs	r0, r0
  41e2c2: 0000         	movs	r0, r0
  41e2c4: 0000         	movs	r0, r0
  41e2c6: 4049         	eors	r1, r1
  41e2c8: 0000         	movs	r0, r0
  41e2ca: 0000         	movs	r0, r0
  41e2cc: 0000         	movs	r0, r0
  41e2ce: 405e         	eors	r6, r3
  41e2d8: 432d         	orrs	r5, r5
  41e2da: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
  41e2de: 3f1a         	subs	r7, #0x1a
  41e2e0: db00         	blt	0x41e2e4 <WormDrone::updateThrust(float)+0x24c> @ imm = #0x0
  41e2e2: 003b         	movs	r3, r7

// ==== WormDrone::updateAim
//      file offset 0x41e2e8 (= ELF address; Ghidra 0x42e2e8), 488 bytes, Thumb-2
  41e2e8: b082         	sub	sp, #0x8
  41e2ea: b500         	push	{lr}
  41e2ec: ed2d 8b02    	vpush	{d8}
  41e2f0: b099         	sub	sp, #0x64
  41e2f2: 9001         	str	r0, [sp, #0x4]
  41e2f4: a91c         	add	r1, sp, #0x70
  41e2f6: e881 000c    	stm.w	r1, {r2, r3}
  41e2fa: 9b01         	ldr	r3, [sp, #0x4]
  41e2fc: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e300: ed93 7b16    	vldr	d7, [r3, #88]
  41e304: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e308: eef1 7a67    	vneg.f32	s15, s15
  41e30c: edcd 7a03    	vstr	s15, [sp, #12]
  41e310: 9b01         	ldr	r3, [sp, #0x4]
  41e312: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e316: ed93 7b16    	vldr	d7, [r3, #88]
  41e31a: ed9f 6b69    	vldr	d6, [pc, #420]          @ 0x41e4c0 <WormDrone::updateAim(cpVect)+0x1d8>
  41e31e: ee36 7b47    	vsub.f64	d7, d6, d7
  41e322: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e326: edcd 7a04    	vstr	s15, [sp, #16]
  41e32a: 9803         	ldr	r0, [sp, #0xc]
  41e32c: f70b f8a6    	bl	0x32947c <std::cos(float)> @ imm = #-0xf4eb4
  41e330: ee07 0a90    	vmov	s15, r0
  41e334: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41e338: 9803         	ldr	r0, [sp, #0xc]
  41e33a: f70b f8b7    	bl	0x3294ac <std::sin(float)> @ imm = #-0xf4e92
  41e33e: 4603         	mov	r3, r0
  41e340: ee07 3a10    	vmov	s14, r3
  41e344: eef1 7a47    	vneg.f32	s15, s14
  41e348: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e34c: ab08         	add	r3, sp, #0x20
  41e34e: 4618         	mov	r0, r3
  41e350: eeb0 0b48    	vmov.f64	d0, d8
  41e354: eeb0 1b47    	vmov.f64	d1, d7
  41e358: f7fd ff70    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x2120
  41e35c: ab0c         	add	r3, sp, #0x30
  41e35e: ed9d 6b1c    	vldr	d6, [sp, #112]
  41e362: ed9d 7b1e    	vldr	d7, [sp, #120]
  41e366: 4618         	mov	r0, r3
  41e368: eeb0 0b46    	vmov.f64	d0, d6
  41e36c: eeb0 1b47    	vmov.f64	d1, d7
  41e370: f7fe f83e    	bl	0x41c3f0 <WeaponManager::getRandomWeapon()+0x40c> @ imm = #-0x1f84
  41e374: ed9d 4b08    	vldr	d4, [sp, #32]
  41e378: ed9d 5b0a    	vldr	d5, [sp, #40]
  41e37c: ed9d 6b0c    	vldr	d6, [sp, #48]
  41e380: ed9d 7b0e    	vldr	d7, [sp, #56]
  41e384: eeb0 0b44    	vmov.f64	d0, d4
  41e388: eeb0 1b45    	vmov.f64	d1, d5
  41e38c: eeb0 2b46    	vmov.f64	d2, d6
  41e390: eeb0 3b47    	vmov.f64	d3, d7
  41e394: f7fd ffe4    	bl	0x41c360 <WeaponManager::getRandomWeapon()+0x37c> @ imm = #-0x2038
  41e398: eeb0 7b40    	vmov.f64	d7, d0
  41e39c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e3a0: edcd 7a05    	vstr	s15, [sp, #20]
  41e3a4: 9804         	ldr	r0, [sp, #0x10]
  41e3a6: f70b f869    	bl	0x32947c <std::cos(float)> @ imm = #-0xf4f2e
  41e3aa: ee07 0a90    	vmov	s15, r0
  41e3ae: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41e3b2: 9804         	ldr	r0, [sp, #0x10]
  41e3b4: f70b f87a    	bl	0x3294ac <std::sin(float)> @ imm = #-0xf4f0c
  41e3b8: 4603         	mov	r3, r0
  41e3ba: ee07 3a10    	vmov	s14, r3
  41e3be: eef1 7a47    	vneg.f32	s15, s14
  41e3c2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e3c6: ab10         	add	r3, sp, #0x40
  41e3c8: 4618         	mov	r0, r3
  41e3ca: eeb0 0b48    	vmov.f64	d0, d8
  41e3ce: eeb0 1b47    	vmov.f64	d1, d7
  41e3d2: f7fd ff33    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x219a
  41e3d6: ab14         	add	r3, sp, #0x50
  41e3d8: ed9d 6b1c    	vldr	d6, [sp, #112]
  41e3dc: ed9d 7b1e    	vldr	d7, [sp, #120]
  41e3e0: 4618         	mov	r0, r3
  41e3e2: eeb0 0b46    	vmov.f64	d0, d6
  41e3e6: eeb0 1b47    	vmov.f64	d1, d7
  41e3ea: f7fe f801    	bl	0x41c3f0 <WeaponManager::getRandomWeapon()+0x40c> @ imm = #-0x1ffe
  41e3ee: ed9d 4b10    	vldr	d4, [sp, #64]
  41e3f2: ed9d 5b12    	vldr	d5, [sp, #72]
  41e3f6: ed9d 6b14    	vldr	d6, [sp, #80]
  41e3fa: ed9d 7b16    	vldr	d7, [sp, #88]
  41e3fe: eeb0 0b44    	vmov.f64	d0, d4
  41e402: eeb0 1b45    	vmov.f64	d1, d5
  41e406: eeb0 2b46    	vmov.f64	d2, d6
  41e40a: eeb0 3b47    	vmov.f64	d3, d7
  41e40e: f7fd ffa7    	bl	0x41c360 <WeaponManager::getRandomWeapon()+0x37c> @ imm = #-0x20b2
  41e412: eeb0 7b40    	vmov.f64	d7, d0
  41e416: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e41a: edcd 7a06    	vstr	s15, [sp, #24]
  41e41e: ed9d 7a06    	vldr	s14, [sp, #24]
  41e422: eddd 7a05    	vldr	s15, [sp, #20]
  41e426: eeb4 7ae7    	vcmpe.f32	s14, s15
  41e42a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e42e: dd02         	ble	0x41e436 <WormDrone::updateAim(cpVect)+0x14e> @ imm = #0x4
  41e430: f04f 537e    	mov.w	r3, #0x3f800000
  41e434: e003         	b	0x41e43e <WormDrone::updateAim(cpVect)+0x156> @ imm = #0x6
  41e436: f04f 0300    	mov.w	r3, #0x0
  41e43a: f6cb 7380    	movt	r3, #0xbf80
  41e43e: 9307         	str	r3, [sp, #0x1c]
  41e440: 9b01         	ldr	r3, [sp, #0x4]
  41e442: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41e446: 2b00         	cmp	r3, #0x0
  41e448: d004         	beq	0x41e454 <WormDrone::updateAim(cpVect)+0x16c> @ imm = #0x8
  41e44a: f24d 730a    	movw	r3, #0xd70a
  41e44e: f6c3 43a3    	movt	r3, #0x3ca3
  41e452: e003         	b	0x41e45c <WormDrone::updateAim(cpVect)+0x174> @ imm = #0x6
  41e454: f649 139a    	movw	r3, #0x999a
  41e458: f6c3 6319    	movt	r3, #0x3e19
  41e45c: 9302         	str	r3, [sp, #0x8]
  41e45e: eddd 7a05    	vldr	s15, [sp, #20]
  41e462: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e466: ed9f 7b18    	vldr	d7, [pc, #96]           @ 0x41e4c8 <WormDrone::updateAim(cpVect)+0x1e0>
  41e46a: eeb4 6bc7    	vcmpe.f64	d6, d7
  41e46e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e472: dc04         	bgt	0x41e47e <WormDrone::updateAim(cpVect)+0x196> @ imm = #0x8
  41e474: 9b01         	ldr	r3, [sp, #0x4]
  41e476: f893 3220    	ldrb.w	r3, [r3, #0x220]
  41e47a: 2b00         	cmp	r3, #0x0
  41e47c: d002         	beq	0x41e484 <WormDrone::updateAim(cpVect)+0x19c> @ imm = #0x4
  41e47e: f04f 0300    	mov.w	r3, #0x0
  41e482: 9302         	str	r3, [sp, #0x8]
  41e484: 9b01         	ldr	r3, [sp, #0x4]
  41e486: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e48a: 9a01         	ldr	r2, [sp, #0x4]
  41e48c: f8d2 21c0    	ldr.w	r2, [r2, #0x1c0]
  41e490: ed92 6b16    	vldr	d6, [r2, #88]
  41e494: ed9d 7a07    	vldr	s14, [sp, #28]
  41e498: eddd 7a02    	vldr	s15, [sp, #8]
  41e49c: ee67 7a27    	vmul.f32	s15, s14, s15
  41e4a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e4a4: ee36 7b47    	vsub.f64	d7, d6, d7
  41e4a8: 4618         	mov	r0, r3
  41e4aa: ec53 2b17    	vmov	r2, r3, d7
  41e4ae: f2b4 fe70    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2b4ce0
  41e4b2: b019         	add	sp, #0x64
  41e4b4: ecbd 8b02    	vpop	{d8}
  41e4b8: f85d eb04    	ldr	lr, [sp], #4
  41e4bc: b002         	add	sp, #0x8
  41e4be: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x41e4bf); words below are literal-pool data ---
  41e4c0: 147b         	asrs	r3, r7, #0x11
  41e4c2: 47ae         	<unknown>
  41e4c4: 7ae1         	ldrb	r1, [r4, #0xb]
  41e4c6: 3f94         	subs	r7, #0x94
  41e4c8: 6666         	str	r6, [r4, #0x64]
  41e4ca: 6666         	str	r6, [r4, #0x64]
  41e4cc: 6666         	str	r6, [r4, #0x64]
  41e4ce: 3fee         	subs	r7, #0xee

// ==== WormDrone::updateSprite
//      file offset 0x41e4d0 (= ELF address; Ghidra 0x42e4d0), 936 bytes, Thumb-2
  41e4d0: b530         	push	{r4, r5, lr}
  41e4d2: ed2d 8b02    	vpush	{d8}
  41e4d6: b091         	sub	sp, #0x44
  41e4d8: 9005         	str	r0, [sp, #0x14]
  41e4da: 9104         	str	r1, [sp, #0x10]
  41e4dc: 4cb4         	ldr	r4, [pc, #0x2d0]        @ 0x41e7b0 <WormDrone::updateSprite(float)+0x2e0>
  41e4de: 447c         	add	r4, pc
  41e4e0: 9b05         	ldr	r3, [sp, #0x14]
  41e4e2: ed93 7a81    	vldr	s14, [r3, #516]
  41e4e6: eddd 7a04    	vldr	s15, [sp, #16]
  41e4ea: ee77 7a27    	vadd.f32	s15, s14, s15
  41e4ee: 9b05         	ldr	r3, [sp, #0x14]
  41e4f0: edc3 7a81    	vstr	s15, [r3, #516]
  41e4f4: 9b05         	ldr	r3, [sp, #0x14]
  41e4f6: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  41e4fa: 2b00         	cmp	r3, #0x0
  41e4fc: dd4e         	ble	0x41e59c <WormDrone::updateSprite(float)+0xcc> @ imm = #0x9c
  41e4fe: 9b05         	ldr	r3, [sp, #0x14]
  41e500: edd3 7a81    	vldr	s15, [r3, #516]
  41e504: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e508: ed9f 7ba7    	vldr	d7, [pc, #668]          @ 0x41e7a8 <WormDrone::updateSprite(float)+0x2d8>
  41e50c: eeb4 6bc7    	vcmpe.f64	d6, d7
  41e510: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e514: dd42         	ble	0x41e59c <WormDrone::updateSprite(float)+0xcc> @ imm = #0x84
  41e516: 4ba7         	ldr	r3, [pc, #0x29c]        @ 0x41e7b4 <WormDrone::updateSprite(float)+0x2e4>
  41e518: 58e3         	ldr	r3, [r4, r3]
  41e51a: 681d         	ldr	r5, [r3]
  41e51c: 9b05         	ldr	r3, [sp, #0x14]
  41e51e: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e522: f44f 72c8    	mov.w	r2, #0x190
  41e526: 9202         	str	r2, [sp, #0x8]
  41e528: f44f 7248    	mov.w	r2, #0x320
  41e52c: 9203         	str	r2, [sp, #0xc]
  41e52e: 466a         	mov	r2, sp
  41e530: f103 0130    	add.w	r1, r3, #0x30
  41e534: c903         	ldm	r1, {r0, r1}
  41e536: e882 0003    	stm.w	r2, {r0, r1}
  41e53a: 3328         	adds	r3, #0x28
  41e53c: cb0c         	ldm	r3, {r2, r3}
  41e53e: 4628         	mov	r0, r5
  41e540: f7d9 fcb2    	bl	0x3f7ea8 <Sound::volumeForPosition(cpVect, int, int)> @ imm = #-0x2669c
  41e544: 4603         	mov	r3, r0
  41e546: 9307         	str	r3, [sp, #0x1c]
  41e548: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x41e7b4 <WormDrone::updateSprite(float)+0x2e4>
  41e54a: 58e3         	ldr	r3, [r4, r3]
  41e54c: 681a         	ldr	r2, [r3]
  41e54e: 9b05         	ldr	r3, [sp, #0x14]
  41e550: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41e554: 2b00         	cmp	r3, #0x0
  41e556: d00a         	beq	0x41e56e <WormDrone::updateSprite(float)+0x9e> @ imm = #0x14
  41e558: eddd 7a07    	vldr	s15, [sp, #28]
  41e55c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41e560: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  41e564: ee26 7b07    	vmul.f64	d7, d6, d7
  41e568: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e56c: e001         	b	0x41e572 <WormDrone::updateSprite(float)+0xa2> @ imm = #0x2
  41e56e: eddd 7a07    	vldr	s15, [sp, #28]
  41e572: 9b05         	ldr	r3, [sp, #0x14]
  41e574: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41e578: 2b00         	cmp	r3, #0x0
  41e57a: d002         	beq	0x41e582 <WormDrone::updateSprite(float)+0xb2> @ imm = #0x4
  41e57c: f04f 537d    	mov.w	r3, #0x3f400000
  41e580: e001         	b	0x41e586 <WormDrone::updateSprite(float)+0xb6> @ imm = #0x2
  41e582: f04f 537e    	mov.w	r3, #0x3f800000
  41e586: 4610         	mov	r0, r2
  41e588: 2121         	movs	r1, #0x21
  41e58a: ee17 2a90    	vmov	r2, s15
  41e58e: f7d9 fc77    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #-0x26712
  41e592: 9b05         	ldr	r3, [sp, #0x14]
  41e594: f04f 0200    	mov.w	r2, #0x0
  41e598: f8c3 2204    	str.w	r2, [r3, #0x204]
  41e59c: 9b05         	ldr	r3, [sp, #0x14]
  41e59e: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41e5a2: 2b00         	cmp	r3, #0x0
  41e5a4: d06e         	beq	0x41e684 <WormDrone::updateSprite(float)+0x1b4> @ imm = #0xdc
  41e5a6: 9b05         	ldr	r3, [sp, #0x14]
  41e5a8: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41e5ac: 681b         	ldr	r3, [r3]
  41e5ae: 3398         	adds	r3, #0x98
  41e5b0: 681b         	ldr	r3, [r3]
  41e5b2: 9a05         	ldr	r2, [sp, #0x14]
  41e5b4: f8d2 21bc    	ldr.w	r2, [r2, #0x1bc]
  41e5b8: 4610         	mov	r0, r2
  41e5ba: f04f 0100    	mov.w	r1, #0x0
  41e5be: 4798         	blx	r3
  41e5c0: 9b05         	ldr	r3, [sp, #0x14]
  41e5c2: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41e5c6: 681b         	ldr	r3, [r3]
  41e5c8: 3398         	adds	r3, #0x98
  41e5ca: 681b         	ldr	r3, [r3]
  41e5cc: 9a05         	ldr	r2, [sp, #0x14]
  41e5ce: f8d2 21b8    	ldr.w	r2, [r2, #0x1b8]
  41e5d2: 4610         	mov	r0, r2
  41e5d4: f04f 0100    	mov.w	r1, #0x0
  41e5d8: 4798         	blx	r3
  41e5da: 9b05         	ldr	r3, [sp, #0x14]
  41e5dc: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41e5e0: 681b         	ldr	r3, [r3]
  41e5e2: 334c         	adds	r3, #0x4c
  41e5e4: 681c         	ldr	r4, [r3]
  41e5e6: 9b05         	ldr	r3, [sp, #0x14]
  41e5e8: f8d3 51b8    	ldr.w	r5, [r3, #0x1b8]
  41e5ec: 9b05         	ldr	r3, [sp, #0x14]
  41e5ee: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  41e5f2: 4618         	mov	r0, r3
  41e5f4: f70a ff42    	bl	0x32947c <std::cos(float)> @ imm = #-0xf517c
  41e5f8: ee07 0a10    	vmov	s14, r0
  41e5fc: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41e600: ee27 7a27    	vmul.f32	s14, s14, s15
  41e604: 9b05         	ldr	r3, [sp, #0x14]
  41e606: edd3 7a7f    	vldr	s15, [r3, #508]
  41e60a: ee37 7a27    	vadd.f32	s14, s14, s15
  41e60e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41e612: ee77 7a27    	vadd.f32	s15, s14, s15
  41e616: ab0c         	add	r3, sp, #0x30
  41e618: 4618         	mov	r0, r3
  41e61a: ee17 1a90    	vmov	r1, s15
  41e61e: f04f 0200    	mov.w	r2, #0x0
  41e622: f174 fb65    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1746ca
  41e626: ab0c         	add	r3, sp, #0x30
  41e628: 4628         	mov	r0, r5
  41e62a: 4619         	mov	r1, r3
  41e62c: 47a0         	blx	r4
  41e62e: 9b05         	ldr	r3, [sp, #0x14]
  41e630: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41e634: 681b         	ldr	r3, [r3]
  41e636: 334c         	adds	r3, #0x4c
  41e638: 681c         	ldr	r4, [r3]
  41e63a: 9b05         	ldr	r3, [sp, #0x14]
  41e63c: f8d3 51b4    	ldr.w	r5, [r3, #0x1b4]
  41e640: 9b05         	ldr	r3, [sp, #0x14]
  41e642: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  41e646: 4618         	mov	r0, r3
  41e648: f70a ff18    	bl	0x32947c <std::cos(float)> @ imm = #-0xf51d0
  41e64c: ee07 0a10    	vmov	s14, r0
  41e650: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  41e654: ee27 7a27    	vmul.f32	s14, s14, s15
  41e658: 9b05         	ldr	r3, [sp, #0x14]
  41e65a: edd3 7a7d    	vldr	s15, [r3, #500]
  41e65e: ee37 7a27    	vadd.f32	s14, s14, s15
  41e662: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41e666: ee77 7a27    	vadd.f32	s15, s14, s15
  41e66a: ab0c         	add	r3, sp, #0x30
  41e66c: 4618         	mov	r0, r3
  41e66e: ee17 1a90    	vmov	r1, s15
  41e672: f04f 0200    	mov.w	r2, #0x0
  41e676: f174 fb3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x174676
  41e67a: ab0c         	add	r3, sp, #0x30
  41e67c: 4628         	mov	r0, r5
  41e67e: 4619         	mov	r1, r3
  41e680: 47a0         	blx	r4
  41e682: e059         	b	0x41e738 <WormDrone::updateSprite(float)+0x268> @ imm = #0xb2
  41e684: 9b05         	ldr	r3, [sp, #0x14]
  41e686: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41e68a: 681b         	ldr	r3, [r3]
  41e68c: 334c         	adds	r3, #0x4c
  41e68e: 681b         	ldr	r3, [r3]
  41e690: 9a05         	ldr	r2, [sp, #0x14]
  41e692: f8d2 11b8    	ldr.w	r1, [r2, #0x1b8]
  41e696: 9a05         	ldr	r2, [sp, #0x14]
  41e698: f502 72fe    	add.w	r2, r2, #0x1fc
  41e69c: 4608         	mov	r0, r1
  41e69e: 4611         	mov	r1, r2
  41e6a0: 4798         	blx	r3
  41e6a2: 9b05         	ldr	r3, [sp, #0x14]
  41e6a4: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  41e6a8: 681b         	ldr	r3, [r3]
  41e6aa: 334c         	adds	r3, #0x4c
  41e6ac: 681b         	ldr	r3, [r3]
  41e6ae: 9a05         	ldr	r2, [sp, #0x14]
  41e6b0: f8d2 11b4    	ldr.w	r1, [r2, #0x1b4]
  41e6b4: 9a05         	ldr	r2, [sp, #0x14]
  41e6b6: f502 72fa    	add.w	r2, r2, #0x1f4
  41e6ba: 4608         	mov	r0, r1
  41e6bc: 4611         	mov	r1, r2
  41e6be: 4798         	blx	r3
  41e6c0: 9b05         	ldr	r3, [sp, #0x14]
  41e6c2: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  41e6c6: 681b         	ldr	r3, [r3]
  41e6c8: 3398         	adds	r3, #0x98
  41e6ca: 681c         	ldr	r4, [r3]
  41e6cc: 9b05         	ldr	r3, [sp, #0x14]
  41e6ce: f8d3 51bc    	ldr.w	r5, [r3, #0x1bc]
  41e6d2: 9b05         	ldr	r3, [sp, #0x14]
  41e6d4: ed93 7a58    	vldr	s14, [r3, #352]
  41e6d8: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41e6dc: ee67 7a27    	vmul.f32	s15, s14, s15
  41e6e0: ee17 0a90    	vmov	r0, s15
  41e6e4: f70a feca    	bl	0x32947c <std::cos(float)> @ imm = #-0xf526c
  41e6e8: ee07 0a10    	vmov	s14, r0
  41e6ec: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41e6f0: ee67 7a27    	vmul.f32	s15, s14, s15
  41e6f4: 4628         	mov	r0, r5
  41e6f6: ee17 1a90    	vmov	r1, s15
  41e6fa: 47a0         	blx	r4
  41e6fc: 9b05         	ldr	r3, [sp, #0x14]
  41e6fe: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  41e702: 681b         	ldr	r3, [r3]
  41e704: 3398         	adds	r3, #0x98
  41e706: 681c         	ldr	r4, [r3]
  41e708: 9b05         	ldr	r3, [sp, #0x14]
  41e70a: f8d3 51b8    	ldr.w	r5, [r3, #0x1b8]
  41e70e: 9b05         	ldr	r3, [sp, #0x14]
  41e710: ed93 7a58    	vldr	s14, [r3, #352]
  41e714: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  41e718: ee67 7a27    	vmul.f32	s15, s14, s15
  41e71c: ee17 0a90    	vmov	r0, s15
  41e720: f70a feac    	bl	0x32947c <std::cos(float)> @ imm = #-0xf52a8
  41e724: ee07 0a10    	vmov	s14, r0
  41e728: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41e72c: ee67 7a27    	vmul.f32	s15, s14, s15
  41e730: 4628         	mov	r0, r5
  41e732: ee17 1a90    	vmov	r1, s15
  41e736: 47a0         	blx	r4
  41e738: 9b05         	ldr	r3, [sp, #0x14]
  41e73a: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41e73e: 681b         	ldr	r3, [r3]
  41e740: 3398         	adds	r3, #0x98
  41e742: 681c         	ldr	r4, [r3]
  41e744: 9b05         	ldr	r3, [sp, #0x14]
  41e746: f8d3 51ac    	ldr.w	r5, [r3, #0x1ac]
  41e74a: 9b05         	ldr	r3, [sp, #0x14]
  41e74c: f8d3 31ac    	ldr.w	r3, [r3, #0x1ac]
  41e750: 681b         	ldr	r3, [r3]
  41e752: 339c         	adds	r3, #0x9c
  41e754: 681b         	ldr	r3, [r3]
  41e756: 9a05         	ldr	r2, [sp, #0x14]
  41e758: f8d2 21ac    	ldr.w	r2, [r2, #0x1ac]
  41e75c: 4610         	mov	r0, r2
  41e75e: 4798         	blx	r3
  41e760: ee06 0a90    	vmov	s13, r0
  41e764: 9b05         	ldr	r3, [sp, #0x14]
  41e766: ed93 7a58    	vldr	s14, [r3, #352]
  41e76a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  41e76e: ee67 7a27    	vmul.f32	s15, s14, s15
  41e772: ee76 7aa7    	vadd.f32	s15, s13, s15
  41e776: 4628         	mov	r0, r5
  41e778: ee17 1a90    	vmov	r1, s15
  41e77c: 47a0         	blx	r4
  41e77e: 9b05         	ldr	r3, [sp, #0x14]
  41e780: 2200         	movs	r2, #0x0
  41e782: f883 20e6    	strb.w	r2, [r3, #0xe6]
  41e786: 9b05         	ldr	r3, [sp, #0x14]
  41e788: f893 316c    	ldrb.w	r3, [r3, #0x16c]
  41e78c: 2b00         	cmp	r3, #0x0
  41e78e: d013         	beq	0x41e7b8 <WormDrone::updateSprite(float)+0x2e8> @ imm = #0x26
  41e790: 9b05         	ldr	r3, [sp, #0x14]
  41e792: ed93 7a68    	vldr	s14, [r3, #416]
  41e796: eddd 7a04    	vldr	s15, [sp, #16]
  41e79a: ee77 7a27    	vadd.f32	s15, s14, s15
  41e79e: 9b05         	ldr	r3, [sp, #0x14]
  41e7a0: edc3 7a68    	vstr	s15, [r3, #416]
  41e7a4: e00d         	b	0x41e7c2 <WormDrone::updateSprite(float)+0x2f2> @ imm = #0x1a
  41e7a6: bf00         	nop
  41e7a8: 3333         	adds	r3, #0x33
  41e7aa: 3333         	adds	r3, #0x33
  41e7ac: 3333         	adds	r3, #0x33
  41e7ae: 3fe3         	subs	r7, #0xe3
  41e7b0: 452a         	cmp	r2, r5
  41e7b2: 0051         	lsls	r1, r2, #0x1
  41e7b4: d730         	bvc	0x41e818 <WormDrone::updateSprite(float)+0x348> @ imm = #0x60
  41e7b6: ffff 9b05    	vtbl.8	d25, {d15, d16, d17, d18}, d5
  41e7ba: f04f 0200    	mov.w	r2, #0x0
  41e7be: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  41e7c2: 9b05         	ldr	r3, [sp, #0x14]
  41e7c4: 681b         	ldr	r3, [r3]
  41e7c6: 3350         	adds	r3, #0x50
  41e7c8: 681b         	ldr	r3, [r3]
  41e7ca: 9a05         	ldr	r2, [sp, #0x14]
  41e7cc: 4610         	mov	r0, r2
  41e7ce: 4798         	blx	r3
  41e7d0: 4603         	mov	r3, r0
  41e7d2: edd3 7a00    	vldr	s15, [r3]
  41e7d6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41e7da: 9b05         	ldr	r3, [sp, #0x14]
  41e7dc: 681b         	ldr	r3, [r3]
  41e7de: 3350         	adds	r3, #0x50
  41e7e0: 681b         	ldr	r3, [r3]
  41e7e2: 9a05         	ldr	r2, [sp, #0x14]
  41e7e4: 4610         	mov	r0, r2
  41e7e6: 4798         	blx	r3
  41e7e8: 4603         	mov	r3, r0
  41e7ea: edd3 7a01    	vldr	s15, [r3, #4]
  41e7ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e7f2: ab08         	add	r3, sp, #0x20
  41e7f4: 4618         	mov	r0, r3
  41e7f6: eeb0 0b48    	vmov.f64	d0, d8
  41e7fa: eeb0 1b47    	vmov.f64	d1, d7
  41e7fe: f7fd fd1d    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x25c6
  41e802: 9b05         	ldr	r3, [sp, #0x14]
  41e804: ed93 7a68    	vldr	s14, [r3, #416]
  41e808: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41e80c: eeb4 7ae7    	vcmpe.f32	s14, s15
  41e810: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e814: dd1a         	ble	0x41e84c <WormDrone::updateSprite(float)+0x37c> @ imm = #0x34
  41e816: 9b05         	ldr	r3, [sp, #0x14]
  41e818: f893 316c    	ldrb.w	r3, [r3, #0x16c]
  41e81c: 2b00         	cmp	r3, #0x0
  41e81e: d015         	beq	0x41e84c <WormDrone::updateSprite(float)+0x37c> @ imm = #0x2a
  41e820: ab0c         	add	r3, sp, #0x30
  41e822: 4618         	mov	r0, r3
  41e824: ed9f 0b12    	vldr	d0, [pc, #72]           @ 0x41e870 <WormDrone::updateSprite(float)+0x3a0>
  41e828: ed9f 1b11    	vldr	d1, [pc, #68]           @ 0x41e870 <WormDrone::updateSprite(float)+0x3a0>
  41e82c: f7fd fd06    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x25f4
  41e830: 466c         	mov	r4, sp
  41e832: ab0c         	add	r3, sp, #0x30
  41e834: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41e836: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41e83a: ab08         	add	r3, sp, #0x20
  41e83c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41e83e: f7fe f85b    	bl	0x41c8f8 <WeaponManager::getRandomWeapon()+0x914> @ imm = #-0x1f4a
  41e842: 4603         	mov	r3, r0
  41e844: 2b00         	cmp	r3, #0x0
  41e846: d001         	beq	0x41e84c <WormDrone::updateSprite(float)+0x37c> @ imm = #0x2
  41e848: 2301         	movs	r3, #0x1
  41e84a: e000         	b	0x41e84e <WormDrone::updateSprite(float)+0x37e> @ imm = #0x0
  41e84c: 2300         	movs	r3, #0x0
  41e84e: f88d 301b    	strb.w	r3, [sp, #0x1b]
  41e852: 9b05         	ldr	r3, [sp, #0x14]
  41e854: 681b         	ldr	r3, [r3]
  41e856: 3390         	adds	r3, #0x90
  41e858: 681b         	ldr	r3, [r3]
  41e85a: 9905         	ldr	r1, [sp, #0x14]
  41e85c: f89d 201b    	ldrb.w	r2, [sp, #0x1b]
  41e860: 4608         	mov	r0, r1
  41e862: 4611         	mov	r1, r2
  41e864: 4798         	blx	r3
  41e866: b011         	add	sp, #0x44
  41e868: ecbd 8b02    	vpop	{d8}
  41e86c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41e86d); words below are literal-pool data ---
  41e86e: bf00         	nop
  41e870: 0000         	movs	r0, r0
  41e872: 0000         	movs	r0, r0
  41e874: 0000         	movs	r0, r0
  41e876: 4059         	eors	r1, r3

// ==== WormDrone::updateBody
//      file offset 0x41e878 (= ELF address; Ghidra 0x42e878), 112 bytes, Thumb-2
  41e878: b082         	sub	sp, #0x8
  41e87a: b530         	push	{r4, r5, lr}
  41e87c: b085         	sub	sp, #0x14
  41e87e: 9001         	str	r0, [sp, #0x4]
  41e880: a908         	add	r1, sp, #0x20
  41e882: e881 000c    	stm.w	r1, {r2, r3}
  41e886: 9b01         	ldr	r3, [sp, #0x4]
  41e888: 681b         	ldr	r3, [r3]
  41e88a: 334c         	adds	r3, #0x4c
  41e88c: 681c         	ldr	r4, [r3]
  41e88e: 9d01         	ldr	r5, [sp, #0x4]
  41e890: ed9d 7b08    	vldr	d7, [sp, #32]
  41e894: eef7 6bc7    	vcvt.f32.f64	s13, d7
  41e898: ed9d 7b0a    	vldr	d7, [sp, #40]
  41e89c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41e8a0: ab02         	add	r3, sp, #0x8
  41e8a2: 4618         	mov	r0, r3
  41e8a4: ee16 1a90    	vmov	r1, s13
  41e8a8: ee17 2a90    	vmov	r2, s15
  41e8ac: f174 fa20    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x174440
  41e8b0: ab02         	add	r3, sp, #0x8
  41e8b2: 4628         	mov	r0, r5
  41e8b4: 4619         	mov	r1, r3
  41e8b6: 47a0         	blx	r4
  41e8b8: 9b01         	ldr	r3, [sp, #0x4]
  41e8ba: 681b         	ldr	r3, [r3]
  41e8bc: 3398         	adds	r3, #0x98
  41e8be: 681b         	ldr	r3, [r3]
  41e8c0: 9a01         	ldr	r2, [sp, #0x4]
  41e8c2: eddd 7a0c    	vldr	s15, [sp, #48]
  41e8c6: eeb1 7a67    	vneg.f32	s14, s15
  41e8ca: eddf 7a06    	vldr	s15, [pc, #24]          @ 0x41e8e4 <WormDrone::updateBody(cpVect, float)+0x6c>
  41e8ce: ee67 7a27    	vmul.f32	s15, s14, s15
  41e8d2: 4610         	mov	r0, r2
  41e8d4: ee17 1a90    	vmov	r1, s15
  41e8d8: 4798         	blx	r3
  41e8da: b005         	add	sp, #0x14
  41e8dc: e8bd 4030    	pop.w	{r4, r5, lr}
  41e8e0: b002         	add	sp, #0x8
  41e8e2: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x41e8e3); words below are literal-pool data ---
  41e8e4: 2ee1         	cmp	r6, #0xe1
  41e8e6: 4265         	rsbs	r5, r4, #0

// ==== WormDrone::updateRemoteStep
//      file offset 0x41e8e8 (= ELF address; Ghidra 0x42e8e8), 1320 bytes, Thumb-2
  41e8e8: b530         	push	{r4, r5, lr}
  41e8ea: ed2d 8b02    	vpush	{d8}
  41e8ee: b0c1         	sub	sp, #0x104
  41e8f0: 9005         	str	r0, [sp, #0x14]
  41e8f2: 9104         	str	r1, [sp, #0x10]
  41e8f4: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x41e9b0 <WormDrone::updateRemoteStep(float)+0xc8>
  41e8f6: 447c         	add	r4, pc
  41e8f8: 9b05         	ldr	r3, [sp, #0x14]
  41e8fa: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e8fe: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  41e902: 2b00         	cmp	r3, #0x0
  41e904: d00b         	beq	0x41e91e <WormDrone::updateRemoteStep(float)+0x36> @ imm = #0x16
  41e906: 9b05         	ldr	r3, [sp, #0x14]
  41e908: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e90c: 2200         	movs	r2, #0x0
  41e90e: f8c3 2090    	str.w	r2, [r3, #0x90]
  41e912: 9b05         	ldr	r3, [sp, #0x14]
  41e914: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41e918: 4a26         	ldr	r2, [pc, #0x98]         @ 0x41e9b4 <WormDrone::updateRemoteStep(float)+0xcc>
  41e91a: 447a         	add	r2, pc
  41e91c: 601a         	str	r2, [r3]
  41e91e: 9b05         	ldr	r3, [sp, #0x14]
  41e920: ed93 7a58    	vldr	s14, [r3, #352]
  41e924: eddd 7a04    	vldr	s15, [sp, #16]
  41e928: ee77 7a27    	vadd.f32	s15, s14, s15
  41e92c: 9b05         	ldr	r3, [sp, #0x14]
  41e92e: edc3 7a58    	vstr	s15, [r3, #352]
  41e932: 9b05         	ldr	r3, [sp, #0x14]
  41e934: 681b         	ldr	r3, [r3]
  41e936: f503 73d6    	add.w	r3, r3, #0x1ac
  41e93a: 681b         	ldr	r3, [r3]
  41e93c: aa20         	add	r2, sp, #0x80
  41e93e: 4610         	mov	r0, r2
  41e940: 9905         	ldr	r1, [sp, #0x14]
  41e942: 4798         	blx	r3
  41e944: aa24         	add	r2, sp, #0x90
  41e946: 9b05         	ldr	r3, [sp, #0x14]
  41e948: ed93 4b5c    	vldr	d4, [r3, #368]
  41e94c: ed93 5b5e    	vldr	d5, [r3, #376]
  41e950: ed9d 6b20    	vldr	d6, [sp, #128]
  41e954: ed9d 7b22    	vldr	d7, [sp, #136]
  41e958: 4610         	mov	r0, r2
  41e95a: eeb0 0b44    	vmov.f64	d0, d4
  41e95e: eeb0 1b45    	vmov.f64	d1, d5
  41e962: eeb0 2b46    	vmov.f64	d2, d6
  41e966: eeb0 3b47    	vmov.f64	d3, d7
  41e96a: f7fd fca7    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x26b2
  41e96e: ed9d 7a04    	vldr	s14, [sp, #16]
  41e972: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41e976: ee67 7a27    	vmul.f32	s15, s14, s15
  41e97a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e97e: ed9f 6b08    	vldr	d6, [pc, #32]           @ 0x41e9a0 <WormDrone::updateRemoteStep(float)+0xb8>
  41e982: ee36 6b47    	vsub.f64	d6, d6, d7
  41e986: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x41e9a8 <WormDrone::updateRemoteStep(float)+0xc0>
  41e98a: eeb4 6bc7    	vcmpe.f64	d6, d7
  41e98e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41e992: d511         	bpl	0x41e9b8 <WormDrone::updateRemoteStep(float)+0xd0> @ imm = #0x22
  41e994: ed9f 7b04    	vldr	d7, [pc, #16]           @ 0x41e9a8 <WormDrone::updateRemoteStep(float)+0xc0>
  41e998: e01a         	b	0x41e9d0 <WormDrone::updateRemoteStep(float)+0xe8> @ imm = #0x34
  41e99a: bf00         	nop
  41e99c: f3af 8000    	nop.w
  41e9a0: 872b         	strh	r3, [r5, #0x38]
  41e9a2: d916         	bls	0x41e9d2 <WormDrone::updateRemoteStep(float)+0xea> @ imm = #0x2c
  41e9a4: f7ce 3fd7    	ubfx	pc, lr, #0xf, #0x18
  41e9a8: 999a         	ldr	r1, [sp, #0x268]
  41e9aa: 9999         	ldr	r1, [sp, #0x264]
  41e9ac: 9999         	ldr	r1, [sp, #0x264]
  41e9ae: 3fa9         	subs	r7, #0xa9
  41e9b0: 4112         	asrs	r2, r2
  41e9b2: 0051         	lsls	r1, r2, #0x1
  41e9b4: ebcf ffff    	rsb	pc, pc, pc, ror #31
  41e9b8: ed9d 7a04    	vldr	s14, [sp, #16]
  41e9bc: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41e9c0: ee67 7a27    	vmul.f32	s15, s14, s15
  41e9c4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41e9c8: ed9f 6bbb    	vldr	d6, [pc, #748]          @ 0x41ecb8 <WormDrone::updateRemoteStep(float)+0x3d0>
  41e9cc: ee36 7b47    	vsub.f64	d7, d6, d7
  41e9d0: ab0c         	add	r3, sp, #0x30
  41e9d2: ed9d 5b24    	vldr	d5, [sp, #144]
  41e9d6: ed9d 6b26    	vldr	d6, [sp, #152]
  41e9da: 4618         	mov	r0, r3
  41e9dc: eeb0 0b45    	vmov.f64	d0, d5
  41e9e0: eeb0 1b46    	vmov.f64	d1, d6
  41e9e4: eeb0 2b47    	vmov.f64	d2, d7
  41e9e8: f7fd fc94    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x26d8
  41e9ec: 9b05         	ldr	r3, [sp, #0x14]
  41e9ee: 681b         	ldr	r3, [r3]
  41e9f0: f503 73d6    	add.w	r3, r3, #0x1ac
  41e9f4: 681b         	ldr	r3, [r3]
  41e9f6: aa28         	add	r2, sp, #0xa0
  41e9f8: 4610         	mov	r0, r2
  41e9fa: 9905         	ldr	r1, [sp, #0x14]
  41e9fc: 4798         	blx	r3
  41e9fe: ab10         	add	r3, sp, #0x40
  41ea00: ed9d 4b28    	vldr	d4, [sp, #160]
  41ea04: ed9d 5b2a    	vldr	d5, [sp, #168]
  41ea08: ed9d 6b0c    	vldr	d6, [sp, #48]
  41ea0c: ed9d 7b0e    	vldr	d7, [sp, #56]
  41ea10: 4618         	mov	r0, r3
  41ea12: eeb0 0b44    	vmov.f64	d0, d4
  41ea16: eeb0 1b45    	vmov.f64	d1, d5
  41ea1a: eeb0 2b46    	vmov.f64	d2, d6
  41ea1e: eeb0 3b47    	vmov.f64	d3, d7
  41ea22: f7fd fc1f    	bl	0x41c264 <WeaponManager::getRandomWeapon()+0x280> @ imm = #-0x27c2
  41ea26: 9b05         	ldr	r3, [sp, #0x14]
  41ea28: 681b         	ldr	r3, [r3]
  41ea2a: f503 73fa    	add.w	r3, r3, #0x1f4
  41ea2e: 681b         	ldr	r3, [r3]
  41ea30: 9805         	ldr	r0, [sp, #0x14]
  41ea32: 4798         	blx	r3
  41ea34: 4603         	mov	r3, r0
  41ea36: 4618         	mov	r0, r3
  41ea38: f70a fd20    	bl	0x32947c <std::cos(float)> @ imm = #-0xf55c0
  41ea3c: ee07 0a90    	vmov	s15, r0
  41ea40: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41ea44: 9b05         	ldr	r3, [sp, #0x14]
  41ea46: 681b         	ldr	r3, [r3]
  41ea48: f503 73fa    	add.w	r3, r3, #0x1f4
  41ea4c: 681b         	ldr	r3, [r3]
  41ea4e: 9805         	ldr	r0, [sp, #0x14]
  41ea50: 4798         	blx	r3
  41ea52: 4603         	mov	r3, r0
  41ea54: 4618         	mov	r0, r3
  41ea56: f70a fd29    	bl	0x3294ac <std::sin(float)> @ imm = #-0xf55ae
  41ea5a: ee07 0a90    	vmov	s15, r0
  41ea5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41ea62: ab14         	add	r3, sp, #0x50
  41ea64: 4618         	mov	r0, r3
  41ea66: eeb0 0b48    	vmov.f64	d0, d8
  41ea6a: eeb0 1b47    	vmov.f64	d1, d7
  41ea6e: f7fd fbe5    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x2836
  41ea72: 9b05         	ldr	r3, [sp, #0x14]
  41ea74: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  41ea78: 4618         	mov	r0, r3
  41ea7a: f70a fcff    	bl	0x32947c <std::cos(float)> @ imm = #-0xf5602
  41ea7e: ee07 0a90    	vmov	s15, r0
  41ea82: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  41ea86: 9b05         	ldr	r3, [sp, #0x14]
  41ea88: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  41ea8c: 4618         	mov	r0, r3
  41ea8e: f70a fd0d    	bl	0x3294ac <std::sin(float)> @ imm = #-0xf55e6
  41ea92: ee07 0a90    	vmov	s15, r0
  41ea96: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41ea9a: ab18         	add	r3, sp, #0x60
  41ea9c: 4618         	mov	r0, r3
  41ea9e: eeb0 0b48    	vmov.f64	d0, d8
  41eaa2: eeb0 1b47    	vmov.f64	d1, d7
  41eaa6: f7fd fbc9    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x286e
  41eaaa: ab2c         	add	r3, sp, #0xb0
  41eaac: ed9d 6b14    	vldr	d6, [sp, #80]
  41eab0: ed9d 7b16    	vldr	d7, [sp, #88]
  41eab4: 4618         	mov	r0, r3
  41eab6: eeb0 0b46    	vmov.f64	d0, d6
  41eaba: eeb0 1b47    	vmov.f64	d1, d7
  41eabe: ed9f 2b80    	vldr	d2, [pc, #512]          @ 0x41ecc0 <WormDrone::updateRemoteStep(float)+0x3d8>
  41eac2: f7fd fc27    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x27b2
  41eac6: ab30         	add	r3, sp, #0xc0
  41eac8: ed9d 6b18    	vldr	d6, [sp, #96]
  41eacc: ed9d 7b1a    	vldr	d7, [sp, #104]
  41ead0: 4618         	mov	r0, r3
  41ead2: eeb0 0b46    	vmov.f64	d0, d6
  41ead6: eeb0 1b47    	vmov.f64	d1, d7
  41eada: ed9f 2b7b    	vldr	d2, [pc, #492]          @ 0x41ecc8 <WormDrone::updateRemoteStep(float)+0x3e0>
  41eade: f7fd fc19    	bl	0x41c314 <WeaponManager::getRandomWeapon()+0x330> @ imm = #-0x27ce
  41eae2: ab1c         	add	r3, sp, #0x70
  41eae4: ed9d 4b2c    	vldr	d4, [sp, #176]
  41eae8: ed9d 5b2e    	vldr	d5, [sp, #184]
  41eaec: ed9d 6b30    	vldr	d6, [sp, #192]
  41eaf0: ed9d 7b32    	vldr	d7, [sp, #200]
  41eaf4: 4618         	mov	r0, r3
  41eaf6: eeb0 0b44    	vmov.f64	d0, d4
  41eafa: eeb0 1b45    	vmov.f64	d1, d5
  41eafe: eeb0 2b46    	vmov.f64	d2, d6
  41eb02: eeb0 3b47    	vmov.f64	d3, d7
  41eb06: f7fd fbad    	bl	0x41c264 <WeaponManager::getRandomWeapon()+0x280> @ imm = #-0x28a6
  41eb0a: ab1c         	add	r3, sp, #0x70
  41eb0c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41eb0e: f7fd fdab    	bl	0x41c668 <WeaponManager::getRandomWeapon()+0x684> @ imm = #-0x24aa
  41eb12: ee07 0a10    	vmov	s14, r0
  41eb16: eddf 7a72    	vldr	s15, [pc, #456]         @ 0x41ece0 <WormDrone::updateRemoteStep(float)+0x3f8>
  41eb1a: ee67 7a27    	vmul.f32	s15, s14, s15
  41eb1e: eef1 7a67    	vneg.f32	s15, s15
  41eb22: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41eb26: ed8d 7b0a    	vstr	d7, [sp, #40]
  41eb2a: 9b05         	ldr	r3, [sp, #0x14]
  41eb2c: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41eb30: ed9d 6b10    	vldr	d6, [sp, #64]
  41eb34: ed9d 7b12    	vldr	d7, [sp, #72]
  41eb38: 4618         	mov	r0, r3
  41eb3a: eeb0 0b46    	vmov.f64	d0, d6
  41eb3e: eeb0 1b47    	vmov.f64	d1, d7
  41eb42: f7fd fccf    	bl	0x41c4e4 <WeaponManager::getRandomWeapon()+0x500> @ imm = #-0x2662
  41eb46: 9b05         	ldr	r3, [sp, #0x14]
  41eb48: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41eb4c: 4618         	mov	r0, r3
  41eb4e: e9dd 230a    	ldrd	r2, r3, [sp, #40]
  41eb52: f2b4 fb1e    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2b463c
  41eb56: ed9d 7b0a    	vldr	d7, [sp, #40]
  41eb5a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41eb5e: edcd 7a02    	vstr	s15, [sp, #8]
  41eb62: 466b         	mov	r3, sp
  41eb64: aa12         	add	r2, sp, #0x48
  41eb66: e892 0003    	ldm.w	r2, {r0, r1}
  41eb6a: e883 0003    	stm.w	r3, {r0, r1}
  41eb6e: ab10         	add	r3, sp, #0x40
  41eb70: cb0c         	ldm	r3, {r2, r3}
  41eb72: 9805         	ldr	r0, [sp, #0x14]
  41eb74: f7ff fe80    	bl	0x41e878 <WormDrone::updateBody(cpVect, float)> @ imm = #-0x300
  41eb78: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x41ece8 <WormDrone::updateRemoteStep(float)+0x400>
  41eb7a: 58e3         	ldr	r3, [r4, r3]
  41eb7c: 681c         	ldr	r4, [r3]
  41eb7e: 9b05         	ldr	r3, [sp, #0x14]
  41eb80: 681b         	ldr	r3, [r3]
  41eb82: f503 73d6    	add.w	r3, r3, #0x1ac
  41eb86: 681b         	ldr	r3, [r3]
  41eb88: aa34         	add	r2, sp, #0xd0
  41eb8a: 4610         	mov	r0, r2
  41eb8c: 9905         	ldr	r1, [sp, #0x14]
  41eb8e: 4798         	blx	r3
  41eb90: 466b         	mov	r3, sp
  41eb92: aa36         	add	r2, sp, #0xd8
  41eb94: e892 0003    	ldm.w	r2, {r0, r1}
  41eb98: e883 0003    	stm.w	r3, {r0, r1}
  41eb9c: ab34         	add	r3, sp, #0xd0
  41eb9e: cb0c         	ldm	r3, {r2, r3}
  41eba0: 4620         	mov	r0, r4
  41eba2: f741 fbab    	bl	0x3602fc <MapManager::mapCollision(cpVect)> @ imm = #-0xbe8aa
  41eba6: 4603         	mov	r3, r0
  41eba8: f88d 301f    	strb.w	r3, [sp, #0x1f]
  41ebac: 9b05         	ldr	r3, [sp, #0x14]
  41ebae: f89d 201f    	ldrb.w	r2, [sp, #0x1f]
  41ebb2: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41ebb6: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  41ebba: 2b00         	cmp	r3, #0x0
  41ebbc: f000 80e8    	beq.w	0x41ed90 <WormDrone::updateRemoteStep(float)+0x4a8> @ imm = #0x1d0
  41ebc0: 9b05         	ldr	r3, [sp, #0x14]
  41ebc2: 681b         	ldr	r3, [r3]
  41ebc4: f503 7306    	add.w	r3, r3, #0x218
  41ebc8: 681c         	ldr	r4, [r3]
  41ebca: 9d05         	ldr	r5, [sp, #0x14]
  41ebcc: ab38         	add	r3, sp, #0xe0
  41ebce: 4618         	mov	r0, r3
  41ebd0: ed9f 0b3f    	vldr	d0, [pc, #252]          @ 0x41ecd0 <WormDrone::updateRemoteStep(float)+0x3e8>
  41ebd4: ed9f 1b3e    	vldr	d1, [pc, #248]          @ 0x41ecd0 <WormDrone::updateRemoteStep(float)+0x3e8>
  41ebd8: f7fd fb30    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x29a0
  41ebdc: 466b         	mov	r3, sp
  41ebde: aa3a         	add	r2, sp, #0xe8
  41ebe0: e892 0003    	ldm.w	r2, {r0, r1}
  41ebe4: e883 0003    	stm.w	r3, {r0, r1}
  41ebe8: ab38         	add	r3, sp, #0xe0
  41ebea: cb0c         	ldm	r3, {r2, r3}
  41ebec: 4628         	mov	r0, r5
  41ebee: 47a0         	blx	r4
  41ebf0: 9b05         	ldr	r3, [sp, #0x14]
  41ebf2: 681b         	ldr	r3, [r3]
  41ebf4: f503 7305    	add.w	r3, r3, #0x214
  41ebf8: 681b         	ldr	r3, [r3]
  41ebfa: 9805         	ldr	r0, [sp, #0x14]
  41ebfc: 2100         	movs	r1, #0x0
  41ebfe: 4798         	blx	r3
  41ec00: 9b05         	ldr	r3, [sp, #0x14]
  41ec02: ed93 7a82    	vldr	s14, [r3, #520]
  41ec06: eddd 7a04    	vldr	s15, [sp, #16]
  41ec0a: ee77 7a27    	vadd.f32	s15, s14, s15
  41ec0e: 9b05         	ldr	r3, [sp, #0x14]
  41ec10: edc3 7a82    	vstr	s15, [r3, #520]
  41ec14: 9b05         	ldr	r3, [sp, #0x14]
  41ec16: edd3 7a82    	vldr	s15, [r3, #520]
  41ec1a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41ec1e: ed9f 7b2e    	vldr	d7, [pc, #184]          @ 0x41ecd8 <WormDrone::updateRemoteStep(float)+0x3f0>
  41ec22: eeb4 6bc7    	vcmpe.f64	d6, d7
  41ec26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41ec2a: dd61         	ble	0x41ecf0 <WormDrone::updateRemoteStep(float)+0x408> @ imm = #0xc2
  41ec2c: 9b05         	ldr	r3, [sp, #0x14]
  41ec2e: f04f 0200    	mov.w	r2, #0x0
  41ec32: f8c3 2208    	str.w	r2, [r3, #0x208]
  41ec36: 9b05         	ldr	r3, [sp, #0x14]
  41ec38: 681b         	ldr	r3, [r3]
  41ec3a: 3350         	adds	r3, #0x50
  41ec3c: 681b         	ldr	r3, [r3]
  41ec3e: 9a05         	ldr	r2, [sp, #0x14]
  41ec40: 4610         	mov	r0, r2
  41ec42: 4798         	blx	r3
  41ec44: 4603         	mov	r3, r0
  41ec46: 681b         	ldr	r3, [r3]
  41ec48: 4618         	mov	r0, r3
  41ec4a: f6be f81b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x141fca
  41ec4e: 4605         	mov	r5, r0
  41ec50: 9b05         	ldr	r3, [sp, #0x14]
  41ec52: 681b         	ldr	r3, [r3]
  41ec54: 3350         	adds	r3, #0x50
  41ec56: 681b         	ldr	r3, [r3]
  41ec58: 9a05         	ldr	r2, [sp, #0x14]
  41ec5a: 4610         	mov	r0, r2
  41ec5c: 4798         	blx	r3
  41ec5e: 4603         	mov	r3, r0
  41ec60: 685b         	ldr	r3, [r3, #0x4]
  41ec62: 4618         	mov	r0, r3
  41ec64: f6be f80e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x141fe4
  41ec68: 4604         	mov	r4, r0
  41ec6a: 9b05         	ldr	r3, [sp, #0x14]
  41ec6c: 681b         	ldr	r3, [r3]
  41ec6e: 339c         	adds	r3, #0x9c
  41ec70: 681b         	ldr	r3, [r3]
  41ec72: 9a05         	ldr	r2, [sp, #0x14]
  41ec74: 4610         	mov	r0, r2
  41ec76: 4798         	blx	r3
  41ec78: ee07 0a10    	vmov	s14, r0
  41ec7c: eddf 7a19    	vldr	s15, [pc, #100]         @ 0x41ece4 <WormDrone::updateRemoteStep(float)+0x3fc>
  41ec80: ee77 7a67    	vsub.f32	s15, s14, s15
  41ec84: ee17 0a90    	vmov	r0, s15
  41ec88: f6bd fffc    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x142008
  41ec8c: 4603         	mov	r3, r0
  41ec8e: 4628         	mov	r0, r5
  41ec90: 4621         	mov	r1, r4
  41ec92: 461a         	mov	r2, r3
  41ec94: 2300         	movs	r3, #0x0
  41ec96: f17b f8bb    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x17b176
  41ec9a: 4603         	mov	r3, r0
  41ec9c: 9308         	str	r3, [sp, #0x20]
  41ec9e: f1c1 fd07    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c1a0e
  41eca2: 4603         	mov	r3, r0
  41eca4: 4618         	mov	r0, r3
  41eca6: 4b11         	ldr	r3, [pc, #0x44]         @ 0x41ecec <WormDrone::updateRemoteStep(float)+0x404>
  41eca8: 447b         	add	r3, pc
  41ecaa: 4619         	mov	r1, r3
  41ecac: 9a08         	ldr	r2, [sp, #0x20]
  41ecae: f1c1 ff3d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c1e7a
  41ecb2: e01d         	b	0x41ecf0 <WormDrone::updateRemoteStep(float)+0x408> @ imm = #0x3a
  41ecb4: f3af 8000    	nop.w
  41ecb8: 872b         	strh	r3, [r5, #0x38]
  41ecba: d916         	bls	0x41ecea <WormDrone::updateRemoteStep(float)+0x402> @ imm = #0x2c
  41ecbc: f7ce 3fd7    	ubfx	pc, lr, #0xf, #0x18
  41ecc0: 6666         	str	r6, [r4, #0x64]
  41ecc2: 6666         	str	r6, [r4, #0x64]
  41ecc4: 6666         	str	r6, [r4, #0x64]
  41ecc6: 3fe6         	subs	r7, #0xe6
  41ecc8: 3333         	adds	r3, #0x33
  41ecca: 3333         	adds	r3, #0x33
  41eccc: 3333         	adds	r3, #0x33
  41ecce: 3fd3         	subs	r7, #0xd3
  41ecd8: 999a         	ldr	r1, [sp, #0x268]
  41ecda: 9999         	ldr	r1, [sp, #0x264]
  41ecdc: 9999         	ldr	r1, [sp, #0x264]
  41ecde: 3fb9         	subs	r7, #0xb9
  41ece0: fa35 3c8e    	<unknown>
  41ece4: 0000         	movs	r0, r0
  41ece6: 4334         	orrs	r4, r6
  41ece8: df04         	svc	#0x4
  41ecea: ffff d0a0    	<unknown>
  41ecee: 003b         	movs	r3, r7
  41ecf0: 9b05         	ldr	r3, [sp, #0x14]
  41ecf2: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41ecf6: a93c         	add	r1, sp, #0xf0
  41ecf8: 9a05         	ldr	r2, [sp, #0x14]
  41ecfa: ed92 4b84    	vldr	d4, [r2, #528]
  41ecfe: ed92 5b86    	vldr	d5, [r2, #536]
  41ed02: ed93 6b0a    	vldr	d6, [r3, #40]
  41ed06: ed93 7b0c    	vldr	d7, [r3, #48]
  41ed0a: 4608         	mov	r0, r1
  41ed0c: eeb0 0b44    	vmov.f64	d0, d4
  41ed10: eeb0 1b45    	vmov.f64	d1, d5
  41ed14: eeb0 2b46    	vmov.f64	d2, d6
  41ed18: eeb0 3b47    	vmov.f64	d3, d7
  41ed1c: f7fd face    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x2a64
  41ed20: ab3c         	add	r3, sp, #0xf0
  41ed22: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41ed24: f2b8 f9c8    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b8390
  41ed28: ec41 0b17    	vmov	d7, r0, r1
  41ed2c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41ed30: edcd 7a09    	vstr	s15, [sp, #36]
  41ed34: ed9d 7a09    	vldr	s14, [sp, #36]
  41ed38: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  41ed3c: eeb4 7ae7    	vcmpe.f32	s14, s15
  41ed40: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41ed44: dc00         	bgt	0x41ed48 <WormDrone::updateRemoteStep(float)+0x460> @ imm = #0x0
  41ed46: e036         	b	0x41edb6 <WormDrone::updateRemoteStep(float)+0x4ce> @ imm = #0x6c
  41ed48: 9b05         	ldr	r3, [sp, #0x14]
  41ed4a: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41ed4e: 9a05         	ldr	r2, [sp, #0x14]
  41ed50: f502 7404    	add.w	r4, r2, #0x210
  41ed54: 3328         	adds	r3, #0x28
  41ed56: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41ed58: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41ed5c: 9b05         	ldr	r3, [sp, #0x14]
  41ed5e: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41ed62: 9b05         	ldr	r3, [sp, #0x14]
  41ed64: 681b         	ldr	r3, [r3]
  41ed66: 339c         	adds	r3, #0x9c
  41ed68: 681b         	ldr	r3, [r3]
  41ed6a: 9a05         	ldr	r2, [sp, #0x14]
  41ed6c: 4610         	mov	r0, r2
  41ed6e: 4798         	blx	r3
  41ed70: 4603         	mov	r3, r0
  41ed72: 9302         	str	r3, [sp, #0x8]
  41ed74: 466b         	mov	r3, sp
  41ed76: f104 0230    	add.w	r2, r4, #0x30
  41ed7a: e892 0003    	ldm.w	r2, {r0, r1}
  41ed7e: e883 0003    	stm.w	r3, {r0, r1}
  41ed82: f104 0328    	add.w	r3, r4, #0x28
  41ed86: cb0c         	ldm	r3, {r2, r3}
  41ed88: 9805         	ldr	r0, [sp, #0x14]
  41ed8a: f7ff f899    	bl	0x41dec0 <WormDrone::addPathAt(cpVect, float)> @ imm = #-0xece
  41ed8e: e012         	b	0x41edb6 <WormDrone::updateRemoteStep(float)+0x4ce> @ imm = #0x24
  41ed90: 9b05         	ldr	r3, [sp, #0x14]
  41ed92: 681b         	ldr	r3, [r3]
  41ed94: f503 7305    	add.w	r3, r3, #0x214
  41ed98: 681b         	ldr	r3, [r3]
  41ed9a: 9805         	ldr	r0, [sp, #0x14]
  41ed9c: f240 2141    	movw	r1, #0x241
  41eda0: 4798         	blx	r3
  41eda2: 9b05         	ldr	r3, [sp, #0x14]
  41eda4: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41eda8: 9a05         	ldr	r2, [sp, #0x14]
  41edaa: f502 7404    	add.w	r4, r2, #0x210
  41edae: 3328         	adds	r3, #0x28
  41edb0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41edb2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41edb6: 9b05         	ldr	r3, [sp, #0x14]
  41edb8: ed93 7a7c    	vldr	s14, [r3, #496]
  41edbc: eddd 7a04    	vldr	s15, [sp, #16]
  41edc0: ee77 7a27    	vadd.f32	s15, s14, s15
  41edc4: 9b05         	ldr	r3, [sp, #0x14]
  41edc6: edc3 7a7c    	vstr	s15, [r3, #496]
  41edca: 9b05         	ldr	r3, [sp, #0x14]
  41edcc: edd3 7a7c    	vldr	s15, [r3, #496]
  41edd0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41edd4: ed9f 7b0c    	vldr	d7, [pc, #48]           @ 0x41ee08 <WormDrone::updateRemoteStep(float)+0x520>
  41edd8: eeb4 6bc7    	vcmpe.f64	d6, d7
  41eddc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41ede0: dd07         	ble	0x41edf2 <WormDrone::updateRemoteStep(float)+0x50a> @ imm = #0xe
  41ede2: 9805         	ldr	r0, [sp, #0x14]
  41ede4: f7fe fe78    	bl	0x41dad8 <WormDrone::sawDamage()> @ imm = #-0x1310
  41ede8: 9b05         	ldr	r3, [sp, #0x14]
  41edea: f04f 0200    	mov.w	r2, #0x0
  41edee: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  41edf2: 9805         	ldr	r0, [sp, #0x14]
  41edf4: 9904         	ldr	r1, [sp, #0x10]
  41edf6: f7ff fb6b    	bl	0x41e4d0 <WormDrone::updateSprite(float)> @ imm = #-0x92a
  41edfa: b041         	add	sp, #0x104
  41edfc: ecbd 8b02    	vpop	{d8}
  41ee00: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41ee01); words below are literal-pool data ---
  41ee02: bf00         	nop
  41ee04: f3af 8000    	nop.w
  41ee08: 70a4         	strb	r4, [r4, #0x2]
  41ee0a: 0a3d         	lsrs	r5, r7, #0x8
  41ee0c: a3d7         	adr	r3, #860 <WormDrone::updateStep(float)+0xd7>
  41ee0e: 3fc0         	subs	r7, #0xc0

// ==== WormDrone::updateStep
//      file offset 0x41ee10 (= ELF address; Ghidra 0x42ee10), 1720 bytes, Thumb-2
  41ee10: b530         	push	{r4, r5, lr}
  41ee12: b0b7         	sub	sp, #0xdc
  41ee14: 9009         	str	r0, [sp, #0x24]
  41ee16: 9108         	str	r1, [sp, #0x20]
  41ee18: 4d73         	ldr	r5, [pc, #0x1cc]        @ 0x41efe8 <WormDrone::updateStep(float)+0x1d8>
  41ee1a: 447d         	add	r5, pc
  41ee1c: 9b09         	ldr	r3, [sp, #0x24]
  41ee1e: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41ee22: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  41ee26: 2b00         	cmp	r3, #0x0
  41ee28: d10b         	bne	0x41ee42 <WormDrone::updateStep(float)+0x32> @ imm = #0x16
  41ee2a: 9b09         	ldr	r3, [sp, #0x24]
  41ee2c: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41ee30: 9a09         	ldr	r2, [sp, #0x24]
  41ee32: f8c3 2090    	str.w	r2, [r3, #0x90]
  41ee36: 9b09         	ldr	r3, [sp, #0x24]
  41ee38: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41ee3c: 4a6b         	ldr	r2, [pc, #0x1ac]        @ 0x41efec <WormDrone::updateStep(float)+0x1dc>
  41ee3e: 447a         	add	r2, pc
  41ee40: 601a         	str	r2, [r3]
  41ee42: 9b09         	ldr	r3, [sp, #0x24]
  41ee44: ed93 7a58    	vldr	s14, [r3, #352]
  41ee48: eddd 7a08    	vldr	s15, [sp, #32]
  41ee4c: ee77 7a27    	vadd.f32	s15, s14, s15
  41ee50: 9b09         	ldr	r3, [sp, #0x24]
  41ee52: edc3 7a58    	vstr	s15, [r3, #352]
  41ee56: 9809         	ldr	r0, [sp, #0x24]
  41ee58: 9908         	ldr	r1, [sp, #0x20]
  41ee5a: f7ff f91d    	bl	0x41e098 <WormDrone::updateThrust(float)> @ imm = #-0xdc6
  41ee5e: 9b09         	ldr	r3, [sp, #0x24]
  41ee60: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  41ee64: 2b03         	cmp	r3, #0x3
  41ee66: d005         	beq	0x41ee74 <WormDrone::updateStep(float)+0x64> @ imm = #0xa
  41ee68: 2b04         	cmp	r3, #0x4
  41ee6a: f000 80c1    	beq.w	0x41eff0 <WormDrone::updateStep(float)+0x1e0> @ imm = #0x182
  41ee6e: 2b02         	cmp	r3, #0x2
  41ee70: d037         	beq	0x41eee2 <WormDrone::updateStep(float)+0xd2> @ imm = #0x6e
  41ee72: e0be         	b	0x41eff2 <WormDrone::updateStep(float)+0x1e2> @ imm = #0x17c
  41ee74: 9b09         	ldr	r3, [sp, #0x24]
  41ee76: 466a         	mov	r2, sp
  41ee78: f503 718c    	add.w	r1, r3, #0x118
  41ee7c: c903         	ldm	r1, {r0, r1}
  41ee7e: e882 0003    	stm.w	r2, {r0, r1}
  41ee82: f503 7388    	add.w	r3, r3, #0x110
  41ee86: cb0c         	ldm	r3, {r2, r3}
  41ee88: 9809         	ldr	r0, [sp, #0x24]
  41ee8a: f7ff f87f    	bl	0x41df8c <WormDrone::updateMoveTo(cpVect)> @ imm = #-0xf02
  41ee8e: 9b09         	ldr	r3, [sp, #0x24]
  41ee90: 681b         	ldr	r3, [r3]
  41ee92: f503 73d6    	add.w	r3, r3, #0x1ac
  41ee96: 681b         	ldr	r3, [r3]
  41ee98: aa0e         	add	r2, sp, #0x38
  41ee9a: 4610         	mov	r0, r2
  41ee9c: 9909         	ldr	r1, [sp, #0x24]
  41ee9e: 4798         	blx	r3
  41eea0: aa12         	add	r2, sp, #0x48
  41eea2: 9b09         	ldr	r3, [sp, #0x24]
  41eea4: ed93 4b44    	vldr	d4, [r3, #272]
  41eea8: ed93 5b46    	vldr	d5, [r3, #280]
  41eeac: ed9d 6b0e    	vldr	d6, [sp, #56]
  41eeb0: ed9d 7b10    	vldr	d7, [sp, #64]
  41eeb4: 4610         	mov	r0, r2
  41eeb6: eeb0 0b44    	vmov.f64	d0, d4
  41eeba: eeb0 1b45    	vmov.f64	d1, d5
  41eebe: eeb0 2b46    	vmov.f64	d2, d6
  41eec2: eeb0 3b47    	vmov.f64	d3, d7
  41eec6: f7fd f9f9    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x2c0e
  41eeca: 466b         	mov	r3, sp
  41eecc: aa14         	add	r2, sp, #0x50
  41eece: e892 0003    	ldm.w	r2, {r0, r1}
  41eed2: e883 0003    	stm.w	r3, {r0, r1}
  41eed6: ab12         	add	r3, sp, #0x48
  41eed8: cb0c         	ldm	r3, {r2, r3}
  41eeda: 9809         	ldr	r0, [sp, #0x24]
  41eedc: f7ff fa04    	bl	0x41e2e8 <WormDrone::updateAim(cpVect)> @ imm = #-0xbf8
  41eee0: e087         	b	0x41eff2 <WormDrone::updateStep(float)+0x1e2> @ imm = #0x10e
  41eee2: 9b09         	ldr	r3, [sp, #0x24]
  41eee4: ed93 7a59    	vldr	s14, [r3, #356]
  41eee8: eddd 7a08    	vldr	s15, [sp, #32]
  41eeec: ee77 7a27    	vadd.f32	s15, s14, s15
  41eef0: 9b09         	ldr	r3, [sp, #0x24]
  41eef2: edc3 7a59    	vstr	s15, [r3, #356]
  41eef6: 9b09         	ldr	r3, [sp, #0x24]
  41eef8: ed93 7a59    	vldr	s14, [r3, #356]
  41eefc: 9b09         	ldr	r3, [sp, #0x24]
  41eefe: edd3 7a5a    	vldr	s15, [r3, #360]
  41ef02: eeb4 7ae7    	vcmpe.f32	s14, s15
  41ef06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41ef0a: dd34         	ble	0x41ef76 <WormDrone::updateStep(float)+0x166> @ imm = #0x68
  41ef0c: f7fd f910    	bl	0x41c130 <WeaponManager::getRandomWeapon()+0x14c> @ imm = #-0x2de0
  41ef10: 4603         	mov	r3, r0
  41ef12: ee07 3a90    	vmov	s15, r3
  41ef16: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  41ef1a: eddf 7a32    	vldr	s15, [pc, #200]         @ 0x41efe4 <WormDrone::updateStep(float)+0x1d4>
  41ef1e: ee87 7a27    	vdiv.f32	s14, s14, s15
  41ef22: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41ef26: ee37 7a67    	vsub.f32	s14, s14, s15
  41ef2a: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41ef2e: ee67 7a27    	vmul.f32	s15, s14, s15
  41ef32: ee17 0a90    	vmov	r0, s15
  41ef36: f720 fab5    	bl	0x33f4a4 <std::abs(float)> @ imm = #-0xdfa96
  41ef3a: ee07 0a10    	vmov	s14, r0
  41ef3e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  41ef42: ee77 7a27    	vadd.f32	s15, s14, s15
  41ef46: 9b09         	ldr	r3, [sp, #0x24]
  41ef48: edc3 7a5a    	vstr	s15, [r3, #360]
  41ef4c: 9b09         	ldr	r3, [sp, #0x24]
  41ef4e: f04f 0200    	mov.w	r2, #0x0
  41ef52: f8c3 2164    	str.w	r2, [r3, #0x164]
  41ef56: 9b09         	ldr	r3, [sp, #0x24]
  41ef58: 681b         	ldr	r3, [r3]
  41ef5a: f503 7308    	add.w	r3, r3, #0x220
  41ef5e: 681b         	ldr	r3, [r3]
  41ef60: 9c09         	ldr	r4, [sp, #0x24]
  41ef62: aa04         	add	r2, sp, #0x10
  41ef64: 4610         	mov	r0, r2
  41ef66: 9909         	ldr	r1, [sp, #0x24]
  41ef68: 4798         	blx	r3
  41ef6a: f504 7488    	add.w	r4, r4, #0x110
  41ef6e: ab04         	add	r3, sp, #0x10
  41ef70: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41ef72: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41ef76: 9b09         	ldr	r3, [sp, #0x24]
  41ef78: 466a         	mov	r2, sp
  41ef7a: f503 718c    	add.w	r1, r3, #0x118
  41ef7e: c903         	ldm	r1, {r0, r1}
  41ef80: e882 0003    	stm.w	r2, {r0, r1}
  41ef84: f503 7388    	add.w	r3, r3, #0x110
  41ef88: cb0c         	ldm	r3, {r2, r3}
  41ef8a: 9809         	ldr	r0, [sp, #0x24]
  41ef8c: f7fe fffe    	bl	0x41df8c <WormDrone::updateMoveTo(cpVect)> @ imm = #-0x1004
  41ef90: 9b09         	ldr	r3, [sp, #0x24]
  41ef92: 681b         	ldr	r3, [r3]
  41ef94: f503 73d6    	add.w	r3, r3, #0x1ac
  41ef98: 681b         	ldr	r3, [r3]
  41ef9a: aa16         	add	r2, sp, #0x58
  41ef9c: 4610         	mov	r0, r2
  41ef9e: 9909         	ldr	r1, [sp, #0x24]
  41efa0: 4798         	blx	r3
  41efa2: aa1a         	add	r2, sp, #0x68
  41efa4: 9b09         	ldr	r3, [sp, #0x24]
  41efa6: ed93 4b44    	vldr	d4, [r3, #272]
  41efaa: ed93 5b46    	vldr	d5, [r3, #280]
  41efae: ed9d 6b16    	vldr	d6, [sp, #88]
  41efb2: ed9d 7b18    	vldr	d7, [sp, #96]
  41efb6: 4610         	mov	r0, r2
  41efb8: eeb0 0b44    	vmov.f64	d0, d4
  41efbc: eeb0 1b45    	vmov.f64	d1, d5
  41efc0: eeb0 2b46    	vmov.f64	d2, d6
  41efc4: eeb0 3b47    	vmov.f64	d3, d7
  41efc8: f7fd f978    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x2d10
  41efcc: 466b         	mov	r3, sp
  41efce: aa1c         	add	r2, sp, #0x70
  41efd0: e892 0003    	ldm.w	r2, {r0, r1}
  41efd4: e883 0003    	stm.w	r3, {r0, r1}
  41efd8: ab1a         	add	r3, sp, #0x68
  41efda: cb0c         	ldm	r3, {r2, r3}
  41efdc: 9809         	ldr	r0, [sp, #0x24]
  41efde: f7ff f983    	bl	0x41e2e8 <WormDrone::updateAim(cpVect)> @ imm = #-0xcfa
  41efe2: e006         	b	0x41eff2 <WormDrone::updateStep(float)+0x1e2> @ imm = #0xc
  41efe4: 0000         	movs	r0, r0
  41efe6: 4e80         	ldr	r6, [pc, #0x200]        @ 0x41f1e8 <WormDrone::updateStep(float)+0x3d8>
  41efe8: 3bee         	subs	r3, #0xee
  41efea: 0051         	lsls	r1, r2, #0x1
  41efec: e51b         	b	0x41ea26 <WormDrone::updateRemoteStep(float)+0x13e> @ imm = #-0x5ca
  41efee: ffff bf00    	<unknown>
  41eff2: 9b09         	ldr	r3, [sp, #0x24]
  41eff4: ed93 7a89    	vldr	s14, [r3, #548]
  41eff8: eddd 7a08    	vldr	s15, [sp, #32]
  41effc: ee77 7a27    	vadd.f32	s15, s14, s15
  41f000: 9b09         	ldr	r3, [sp, #0x24]
  41f002: edc3 7a89    	vstr	s15, [r3, #548]
  41f006: 9b09         	ldr	r3, [sp, #0x24]
  41f008: f893 3221    	ldrb.w	r3, [r3, #0x221]
  41f00c: f083 0301    	eor	r3, r3, #0x1
  41f010: b2db         	uxtb	r3, r3
  41f012: 2b00         	cmp	r3, #0x0
  41f014: d026         	beq	0x41f064 <WormDrone::updateStep(float)+0x254> @ imm = #0x4c
  41f016: 9b09         	ldr	r3, [sp, #0x24]
  41f018: ed93 7a89    	vldr	s14, [r3, #548]
  41f01c: eef1 7a08    	vmov.f32	s15, #6.000000e+00
  41f020: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f024: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f028: dd1c         	ble	0x41f064 <WormDrone::updateStep(float)+0x254> @ imm = #0x38
  41f02a: 9b09         	ldr	r3, [sp, #0x24]
  41f02c: ed93 6b46    	vldr	d6, [r3, #280]
  41f030: 9b09         	ldr	r3, [sp, #0x24]
  41f032: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f036: ed93 7b10    	vldr	d7, [r3, #64]
  41f03a: ee36 6b47    	vsub.f64	d6, d6, d7
  41f03e: ed9f 7baa    	vldr	d7, [pc, #680]          @ 0x41f2e8 <WormDrone::updateStep(float)+0x4d8>
  41f042: eeb4 6bc7    	vcmpe.f64	d6, d7
  41f046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f04a: dd0b         	ble	0x41f064 <WormDrone::updateStep(float)+0x254> @ imm = #0x16
  41f04c: 9809         	ldr	r0, [sp, #0x24]
  41f04e: f7fe feff    	bl	0x41de50 <WormDrone::jump()> @ imm = #-0x1202
  41f052: 9b09         	ldr	r3, [sp, #0x24]
  41f054: 2201         	movs	r2, #0x1
  41f056: f883 2221    	strb.w	r2, [r3, #0x221]
  41f05a: 9b09         	ldr	r3, [sp, #0x24]
  41f05c: f04f 0200    	mov.w	r2, #0x0
  41f060: f8c3 2224    	str.w	r2, [r3, #0x224]
  41f064: 9b09         	ldr	r3, [sp, #0x24]
  41f066: f893 3221    	ldrb.w	r3, [r3, #0x221]
  41f06a: 2b00         	cmp	r3, #0x0
  41f06c: d029         	beq	0x41f0c2 <WormDrone::updateStep(float)+0x2b2> @ imm = #0x52
  41f06e: 9b09         	ldr	r3, [sp, #0x24]
  41f070: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  41f074: 2b00         	cmp	r3, #0x0
  41f076: d024         	beq	0x41f0c2 <WormDrone::updateStep(float)+0x2b2> @ imm = #0x48
  41f078: 9b09         	ldr	r3, [sp, #0x24]
  41f07a: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f07e: ed93 7b10    	vldr	d7, [r3, #64]
  41f082: eeb5 7bc0    	vcmpe.f64	d7, #0
  41f086: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f08a: dd16         	ble	0x41f0ba <WormDrone::updateStep(float)+0x2aa> @ imm = #0x2c
  41f08c: 9b09         	ldr	r3, [sp, #0x24]
  41f08e: 2201         	movs	r2, #0x1
  41f090: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41f094: 9b09         	ldr	r3, [sp, #0x24]
  41f096: 2201         	movs	r2, #0x1
  41f098: f883 2220    	strb.w	r2, [r3, #0x220]
  41f09c: 9b09         	ldr	r3, [sp, #0x24]
  41f09e: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f0a2: 9a09         	ldr	r2, [sp, #0x24]
  41f0a4: f502 7404    	add.w	r4, r2, #0x210
  41f0a8: 3328         	adds	r3, #0x28
  41f0aa: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f0ac: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f0b0: 9b09         	ldr	r3, [sp, #0x24]
  41f0b2: f04f 0200    	mov.w	r2, #0x0
  41f0b6: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  41f0ba: 9b09         	ldr	r3, [sp, #0x24]
  41f0bc: 2200         	movs	r2, #0x0
  41f0be: f883 2221    	strb.w	r2, [r3, #0x221]
  41f0c2: 4b90         	ldr	r3, [pc, #0x240]        @ 0x41f304 <WormDrone::updateStep(float)+0x4f4>
  41f0c4: 58eb         	ldr	r3, [r5, r3]
  41f0c6: 681c         	ldr	r4, [r3]
  41f0c8: 9b09         	ldr	r3, [sp, #0x24]
  41f0ca: 681b         	ldr	r3, [r3]
  41f0cc: f503 73d6    	add.w	r3, r3, #0x1ac
  41f0d0: 681b         	ldr	r3, [r3]
  41f0d2: aa1e         	add	r2, sp, #0x78
  41f0d4: 4610         	mov	r0, r2
  41f0d6: 9909         	ldr	r1, [sp, #0x24]
  41f0d8: 4798         	blx	r3
  41f0da: 466b         	mov	r3, sp
  41f0dc: aa20         	add	r2, sp, #0x80
  41f0de: e892 0003    	ldm.w	r2, {r0, r1}
  41f0e2: e883 0003    	stm.w	r3, {r0, r1}
  41f0e6: ab1e         	add	r3, sp, #0x78
  41f0e8: cb0c         	ldm	r3, {r2, r3}
  41f0ea: 4620         	mov	r0, r4
  41f0ec: f741 f906    	bl	0x3602fc <MapManager::mapCollision(cpVect)> @ imm = #-0xbedf4
  41f0f0: 4603         	mov	r3, r0
  41f0f2: f88d 302b    	strb.w	r3, [sp, #0x2b]
  41f0f6: 9b09         	ldr	r3, [sp, #0x24]
  41f0f8: f893 3220    	ldrb.w	r3, [r3, #0x220]
  41f0fc: f083 0301    	eor	r3, r3, #0x1
  41f100: b2db         	uxtb	r3, r3
  41f102: 2b00         	cmp	r3, #0x0
  41f104: d004         	beq	0x41f110 <WormDrone::updateStep(float)+0x300> @ imm = #0x8
  41f106: 9b09         	ldr	r3, [sp, #0x24]
  41f108: f89d 202b    	ldrb.w	r2, [sp, #0x2b]
  41f10c: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41f110: 9b09         	ldr	r3, [sp, #0x24]
  41f112: ed93 7a76    	vldr	s14, [r3, #472]
  41f116: eddd 7a08    	vldr	s15, [sp, #32]
  41f11a: ee77 7a27    	vadd.f32	s15, s14, s15
  41f11e: 9b09         	ldr	r3, [sp, #0x24]
  41f120: edc3 7a76    	vstr	s15, [r3, #472]
  41f124: 9b09         	ldr	r3, [sp, #0x24]
  41f126: ed93 7a76    	vldr	s14, [r3, #472]
  41f12a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41f12e: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f132: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f136: dd03         	ble	0x41f140 <WormDrone::updateStep(float)+0x330> @ imm = #0x6
  41f138: 9b09         	ldr	r3, [sp, #0x24]
  41f13a: 2200         	movs	r2, #0x0
  41f13c: f883 2220    	strb.w	r2, [r3, #0x220]
  41f140: 9b09         	ldr	r3, [sp, #0x24]
  41f142: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41f146: 2b00         	cmp	r3, #0x0
  41f148: f000 80e0    	beq.w	0x41f30c <WormDrone::updateStep(float)+0x4fc> @ imm = #0x1c0
  41f14c: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  41f150: 2b00         	cmp	r3, #0x0
  41f152: f000 80db    	beq.w	0x41f30c <WormDrone::updateStep(float)+0x4fc> @ imm = #0x1b6
  41f156: 9b09         	ldr	r3, [sp, #0x24]
  41f158: 681b         	ldr	r3, [r3]
  41f15a: f503 7306    	add.w	r3, r3, #0x218
  41f15e: 681c         	ldr	r4, [r3]
  41f160: 9d09         	ldr	r5, [sp, #0x24]
  41f162: ab22         	add	r3, sp, #0x88
  41f164: 4618         	mov	r0, r3
  41f166: ed9f 0b62    	vldr	d0, [pc, #392]          @ 0x41f2f0 <WormDrone::updateStep(float)+0x4e0>
  41f16a: ed9f 1b61    	vldr	d1, [pc, #388]          @ 0x41f2f0 <WormDrone::updateStep(float)+0x4e0>
  41f16e: f7fd f865    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x2f36
  41f172: 466b         	mov	r3, sp
  41f174: aa24         	add	r2, sp, #0x90
  41f176: e892 0003    	ldm.w	r2, {r0, r1}
  41f17a: e883 0003    	stm.w	r3, {r0, r1}
  41f17e: ab22         	add	r3, sp, #0x88
  41f180: cb0c         	ldm	r3, {r2, r3}
  41f182: 4628         	mov	r0, r5
  41f184: 47a0         	blx	r4
  41f186: 9b09         	ldr	r3, [sp, #0x24]
  41f188: 681b         	ldr	r3, [r3]
  41f18a: f503 7305    	add.w	r3, r3, #0x214
  41f18e: 681b         	ldr	r3, [r3]
  41f190: 9809         	ldr	r0, [sp, #0x24]
  41f192: 2100         	movs	r1, #0x0
  41f194: 4798         	blx	r3
  41f196: 9b09         	ldr	r3, [sp, #0x24]
  41f198: ed93 7a82    	vldr	s14, [r3, #520]
  41f19c: eddd 7a08    	vldr	s15, [sp, #32]
  41f1a0: ee77 7a27    	vadd.f32	s15, s14, s15
  41f1a4: 9b09         	ldr	r3, [sp, #0x24]
  41f1a6: edc3 7a82    	vstr	s15, [r3, #520]
  41f1aa: 9b09         	ldr	r3, [sp, #0x24]
  41f1ac: edd3 7a82    	vldr	s15, [r3, #520]
  41f1b0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41f1b4: ed9f 7b50    	vldr	d7, [pc, #320]          @ 0x41f2f8 <WormDrone::updateStep(float)+0x4e8>
  41f1b8: eeb4 6bc7    	vcmpe.f64	d6, d7
  41f1bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f1c0: dd42         	ble	0x41f248 <WormDrone::updateStep(float)+0x438> @ imm = #0x84
  41f1c2: 9b09         	ldr	r3, [sp, #0x24]
  41f1c4: f04f 0200    	mov.w	r2, #0x0
  41f1c8: f8c3 2208    	str.w	r2, [r3, #0x208]
  41f1cc: 9b09         	ldr	r3, [sp, #0x24]
  41f1ce: 681b         	ldr	r3, [r3]
  41f1d0: 3350         	adds	r3, #0x50
  41f1d2: 681b         	ldr	r3, [r3]
  41f1d4: 9a09         	ldr	r2, [sp, #0x24]
  41f1d6: 4610         	mov	r0, r2
  41f1d8: 4798         	blx	r3
  41f1da: 4603         	mov	r3, r0
  41f1dc: 681b         	ldr	r3, [r3]
  41f1de: 4618         	mov	r0, r3
  41f1e0: f6bd fd50    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x142560
  41f1e4: 4605         	mov	r5, r0
  41f1e6: 9b09         	ldr	r3, [sp, #0x24]
  41f1e8: 681b         	ldr	r3, [r3]
  41f1ea: 3350         	adds	r3, #0x50
  41f1ec: 681b         	ldr	r3, [r3]
  41f1ee: 9a09         	ldr	r2, [sp, #0x24]
  41f1f0: 4610         	mov	r0, r2
  41f1f2: 4798         	blx	r3
  41f1f4: 4603         	mov	r3, r0
  41f1f6: 685b         	ldr	r3, [r3, #0x4]
  41f1f8: 4618         	mov	r0, r3
  41f1fa: f6bd fd43    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x14257a
  41f1fe: 4604         	mov	r4, r0
  41f200: 9b09         	ldr	r3, [sp, #0x24]
  41f202: 681b         	ldr	r3, [r3]
  41f204: 339c         	adds	r3, #0x9c
  41f206: 681b         	ldr	r3, [r3]
  41f208: 9a09         	ldr	r2, [sp, #0x24]
  41f20a: 4610         	mov	r0, r2
  41f20c: 4798         	blx	r3
  41f20e: ee07 0a10    	vmov	s14, r0
  41f212: eddf 7a3b    	vldr	s15, [pc, #236]         @ 0x41f300 <WormDrone::updateStep(float)+0x4f0>
  41f216: ee77 7a67    	vsub.f32	s15, s14, s15
  41f21a: ee17 0a90    	vmov	r0, s15
  41f21e: f6bd fd31    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x14259e
  41f222: 4603         	mov	r3, r0
  41f224: 4628         	mov	r0, r5
  41f226: 4621         	mov	r1, r4
  41f228: 461a         	mov	r2, r3
  41f22a: 2300         	movs	r3, #0x0
  41f22c: f17a fdf0    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x17abe0
  41f230: 4603         	mov	r3, r0
  41f232: 930b         	str	r3, [sp, #0x2c]
  41f234: f1c1 fa3c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1c1478
  41f238: 4603         	mov	r3, r0
  41f23a: 4618         	mov	r0, r3
  41f23c: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x41f308 <WormDrone::updateStep(float)+0x4f8>
  41f23e: 447b         	add	r3, pc
  41f240: 4619         	mov	r1, r3
  41f242: 9a0b         	ldr	r2, [sp, #0x2c]
  41f244: f1c1 fc72    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1c18e4
  41f248: 9b09         	ldr	r3, [sp, #0x24]
  41f24a: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f24e: a926         	add	r1, sp, #0x98
  41f250: 9a09         	ldr	r2, [sp, #0x24]
  41f252: ed92 4b84    	vldr	d4, [r2, #528]
  41f256: ed92 5b86    	vldr	d5, [r2, #536]
  41f25a: ed93 6b0a    	vldr	d6, [r3, #40]
  41f25e: ed93 7b0c    	vldr	d7, [r3, #48]
  41f262: 4608         	mov	r0, r1
  41f264: eeb0 0b44    	vmov.f64	d0, d4
  41f268: eeb0 1b45    	vmov.f64	d1, d5
  41f26c: eeb0 2b46    	vmov.f64	d2, d6
  41f270: eeb0 3b47    	vmov.f64	d3, d7
  41f274: f7fd f822    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x2fbc
  41f278: ab26         	add	r3, sp, #0x98
  41f27a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f27c: f2b7 ff1c    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b7e38
  41f280: ec41 0b17    	vmov	d7, r0, r1
  41f284: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41f288: edcd 7a0c    	vstr	s15, [sp, #48]
  41f28c: ed9d 7a0c    	vldr	s14, [sp, #48]
  41f290: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  41f294: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f298: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f29c: dc00         	bgt	0x41f2a0 <WormDrone::updateStep(float)+0x490> @ imm = #0x0
  41f29e: e0ff         	b	0x41f4a0 <WormDrone::updateStep(float)+0x690> @ imm = #0x1fe
  41f2a0: 9b09         	ldr	r3, [sp, #0x24]
  41f2a2: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f2a6: 9a09         	ldr	r2, [sp, #0x24]
  41f2a8: f502 7404    	add.w	r4, r2, #0x210
  41f2ac: 3328         	adds	r3, #0x28
  41f2ae: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f2b0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f2b4: 9b09         	ldr	r3, [sp, #0x24]
  41f2b6: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41f2ba: 9b09         	ldr	r3, [sp, #0x24]
  41f2bc: 681b         	ldr	r3, [r3]
  41f2be: 339c         	adds	r3, #0x9c
  41f2c0: 681b         	ldr	r3, [r3]
  41f2c2: 9a09         	ldr	r2, [sp, #0x24]
  41f2c4: 4610         	mov	r0, r2
  41f2c6: 4798         	blx	r3
  41f2c8: 4603         	mov	r3, r0
  41f2ca: 9302         	str	r3, [sp, #0x8]
  41f2cc: 466b         	mov	r3, sp
  41f2ce: f104 0230    	add.w	r2, r4, #0x30
  41f2d2: e892 0003    	ldm.w	r2, {r0, r1}
  41f2d6: e883 0003    	stm.w	r3, {r0, r1}
  41f2da: f104 0328    	add.w	r3, r4, #0x28
  41f2de: cb0c         	ldm	r3, {r2, r3}
  41f2e0: 9809         	ldr	r0, [sp, #0x24]
  41f2e2: f7fe fded    	bl	0x41dec0 <WormDrone::addPathAt(cpVect, float)> @ imm = #-0x1426
  41f2e6: e0db         	b	0x41f4a0 <WormDrone::updateStep(float)+0x690> @ imm = #0x1b6
  41f2e8: 0000         	movs	r0, r0
  41f2ea: 0000         	movs	r0, r0
  41f2ec: c000         	<unknown>
  41f2ee: 4062         	eors	r2, r4
  41f2f8: 999a         	ldr	r1, [sp, #0x268]
  41f2fa: 9999         	ldr	r1, [sp, #0x264]
  41f2fc: 9999         	ldr	r1, [sp, #0x264]
  41f2fe: 3fb9         	subs	r7, #0xb9
  41f300: 0000         	movs	r0, r0
  41f302: 4334         	orrs	r4, r6
  41f304: df04         	svc	#0x4
  41f306: ffff cb0a    	vtbl.8	d28, {d15, d16, d17, d18}, d10
  41f30a: 003b         	movs	r3, r7
  41f30c: 9b09         	ldr	r3, [sp, #0x24]
  41f30e: f893 3220    	ldrb.w	r3, [r3, #0x220]
  41f312: f083 0301    	eor	r3, r3, #0x1
  41f316: b2db         	uxtb	r3, r3
  41f318: 2b00         	cmp	r3, #0x0
  41f31a: d019         	beq	0x41f350 <WormDrone::updateStep(float)+0x540> @ imm = #0x32
  41f31c: 9b09         	ldr	r3, [sp, #0x24]
  41f31e: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  41f322: 2b00         	cmp	r3, #0x0
  41f324: d103         	bne	0x41f32e <WormDrone::updateStep(float)+0x51e> @ imm = #0x6
  41f326: f89d 302b    	ldrb.w	r3, [sp, #0x2b]
  41f32a: 2b00         	cmp	r3, #0x0
  41f32c: d010         	beq	0x41f350 <WormDrone::updateStep(float)+0x540> @ imm = #0x20
  41f32e: 9b09         	ldr	r3, [sp, #0x24]
  41f330: 2200         	movs	r2, #0x0
  41f332: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41f336: 9b09         	ldr	r3, [sp, #0x24]
  41f338: 2200         	movs	r2, #0x0
  41f33a: f883 2220    	strb.w	r2, [r3, #0x220]
  41f33e: 9b09         	ldr	r3, [sp, #0x24]
  41f340: 681b         	ldr	r3, [r3]
  41f342: f503 7305    	add.w	r3, r3, #0x214
  41f346: 681b         	ldr	r3, [r3]
  41f348: 9809         	ldr	r0, [sp, #0x24]
  41f34a: 2100         	movs	r1, #0x0
  41f34c: 4798         	blx	r3
  41f34e: e008         	b	0x41f362 <WormDrone::updateStep(float)+0x552> @ imm = #0x10
  41f350: 9b09         	ldr	r3, [sp, #0x24]
  41f352: 681b         	ldr	r3, [r3]
  41f354: f503 7305    	add.w	r3, r3, #0x214
  41f358: 681b         	ldr	r3, [r3]
  41f35a: 9809         	ldr	r0, [sp, #0x24]
  41f35c: f240 2141    	movw	r1, #0x241
  41f360: 4798         	blx	r3
  41f362: 9b09         	ldr	r3, [sp, #0x24]
  41f364: 681b         	ldr	r3, [r3]
  41f366: f503 7306    	add.w	r3, r3, #0x218
  41f36a: 681c         	ldr	r4, [r3]
  41f36c: 9d09         	ldr	r5, [sp, #0x24]
  41f36e: ab2a         	add	r3, sp, #0xa8
  41f370: 4618         	mov	r0, r3
  41f372: ed9f 0b4f    	vldr	d0, [pc, #316]          @ 0x41f4b0 <WormDrone::updateStep(float)+0x6a0>
  41f376: ed9f 1b50    	vldr	d1, [pc, #320]          @ 0x41f4b8 <WormDrone::updateStep(float)+0x6a8>
  41f37a: f7fc ff5f    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x3142
  41f37e: 466b         	mov	r3, sp
  41f380: aa2c         	add	r2, sp, #0xb0
  41f382: e892 0003    	ldm.w	r2, {r0, r1}
  41f386: e883 0003    	stm.w	r3, {r0, r1}
  41f38a: ab2a         	add	r3, sp, #0xa8
  41f38c: cb0c         	ldm	r3, {r2, r3}
  41f38e: 4628         	mov	r0, r5
  41f390: 47a0         	blx	r4
  41f392: 9b09         	ldr	r3, [sp, #0x24]
  41f394: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  41f398: 2b00         	cmp	r3, #0x0
  41f39a: d063         	beq	0x41f464 <WormDrone::updateStep(float)+0x654> @ imm = #0xc6
  41f39c: 9b09         	ldr	r3, [sp, #0x24]
  41f39e: 681b         	ldr	r3, [r3]
  41f3a0: f503 73d6    	add.w	r3, r3, #0x1ac
  41f3a4: 681b         	ldr	r3, [r3]
  41f3a6: aa2e         	add	r2, sp, #0xb8
  41f3a8: 4610         	mov	r0, r2
  41f3aa: 9909         	ldr	r1, [sp, #0x24]
  41f3ac: 4798         	blx	r3
  41f3ae: aa32         	add	r2, sp, #0xc8
  41f3b0: 9b09         	ldr	r3, [sp, #0x24]
  41f3b2: ed93 4b78    	vldr	d4, [r3, #480]
  41f3b6: ed93 5b7a    	vldr	d5, [r3, #488]
  41f3ba: ed9d 6b2e    	vldr	d6, [sp, #184]
  41f3be: ed9d 7b30    	vldr	d7, [sp, #192]
  41f3c2: 4610         	mov	r0, r2
  41f3c4: eeb0 0b44    	vmov.f64	d0, d4
  41f3c8: eeb0 1b45    	vmov.f64	d1, d5
  41f3cc: eeb0 2b46    	vmov.f64	d2, d6
  41f3d0: eeb0 3b47    	vmov.f64	d3, d7
  41f3d4: f7fc ff72    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x311c
  41f3d8: ab32         	add	r3, sp, #0xc8
  41f3da: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f3dc: f2b7 fe6c    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b7cd8
  41f3e0: ec41 0b17    	vmov	d7, r0, r1
  41f3e4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41f3e8: edcd 7a0d    	vstr	s15, [sp, #52]
  41f3ec: 9b09         	ldr	r3, [sp, #0x24]
  41f3ee: ed93 7a76    	vldr	s14, [r3, #472]
  41f3f2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  41f3f6: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f3fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f3fe: dc00         	bgt	0x41f402 <WormDrone::updateStep(float)+0x5f2> @ imm = #0x0
  41f400: e030         	b	0x41f464 <WormDrone::updateStep(float)+0x654> @ imm = #0x60
  41f402: 9b09         	ldr	r3, [sp, #0x24]
  41f404: f04f 0200    	mov.w	r2, #0x0
  41f408: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  41f40c: 9b09         	ldr	r3, [sp, #0x24]
  41f40e: 681b         	ldr	r3, [r3]
  41f410: f503 73d6    	add.w	r3, r3, #0x1ac
  41f414: 681b         	ldr	r3, [r3]
  41f416: 9c09         	ldr	r4, [sp, #0x24]
  41f418: aa04         	add	r2, sp, #0x10
  41f41a: 4610         	mov	r0, r2
  41f41c: 9909         	ldr	r1, [sp, #0x24]
  41f41e: 4798         	blx	r3
  41f420: f504 74f0    	add.w	r4, r4, #0x1e0
  41f424: ab04         	add	r3, sp, #0x10
  41f426: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f428: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f42c: ed9d 7a0d    	vldr	s14, [sp, #52]
  41f430: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  41f434: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f438: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f43c: d400         	bmi	0x41f440 <WormDrone::updateStep(float)+0x630> @ imm = #0x0
  41f43e: e011         	b	0x41f464 <WormDrone::updateStep(float)+0x654> @ imm = #0x22
  41f440: 9b09         	ldr	r3, [sp, #0x24]
  41f442: 2201         	movs	r2, #0x1
  41f444: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  41f448: 9b09         	ldr	r3, [sp, #0x24]
  41f44a: 2201         	movs	r2, #0x1
  41f44c: f883 2220    	strb.w	r2, [r3, #0x220]
  41f450: 9b09         	ldr	r3, [sp, #0x24]
  41f452: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f456: 9a09         	ldr	r2, [sp, #0x24]
  41f458: f502 7404    	add.w	r4, r2, #0x210
  41f45c: 3328         	adds	r3, #0x28
  41f45e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f460: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f464: 9b09         	ldr	r3, [sp, #0x24]
  41f466: ed93 7a7c    	vldr	s14, [r3, #496]
  41f46a: eddd 7a08    	vldr	s15, [sp, #32]
  41f46e: ee77 7a27    	vadd.f32	s15, s14, s15
  41f472: 9b09         	ldr	r3, [sp, #0x24]
  41f474: edc3 7a7c    	vstr	s15, [r3, #496]
  41f478: 9b09         	ldr	r3, [sp, #0x24]
  41f47a: edd3 7a7c    	vldr	s15, [r3, #496]
  41f47e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41f482: ed9f 7b0f    	vldr	d7, [pc, #60]           @ 0x41f4c0 <WormDrone::updateStep(float)+0x6b0>
  41f486: eeb4 6bc7    	vcmpe.f64	d6, d7
  41f48a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f48e: dd07         	ble	0x41f4a0 <WormDrone::updateStep(float)+0x690> @ imm = #0xe
  41f490: 9809         	ldr	r0, [sp, #0x24]
  41f492: f7fe fb21    	bl	0x41dad8 <WormDrone::sawDamage()> @ imm = #-0x19be
  41f496: 9b09         	ldr	r3, [sp, #0x24]
  41f498: f04f 0200    	mov.w	r2, #0x0
  41f49c: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  41f4a0: 9809         	ldr	r0, [sp, #0x24]
  41f4a2: 9908         	ldr	r1, [sp, #0x20]
  41f4a4: f7ff f814    	bl	0x41e4d0 <WormDrone::updateSprite(float)> @ imm = #-0xfd8
  41f4a8: b037         	add	sp, #0xdc
  41f4aa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41f4ab); words below are literal-pool data ---
  41f4ac: f3af 8000    	nop.w
  41f4bc: 0000         	movs	r0, r0
  41f4be: c069         	stm	r0!, {r0, r3, r5, r6}
  41f4c0: 70a4         	strb	r4, [r4, #0x2]
  41f4c2: 0a3d         	lsrs	r5, r7, #0x8
  41f4c4: a3d7         	adr	r3, #860 <WormDrone::initBody()+0x27>
  41f4c6: 3fc0         	subs	r7, #0xc0

// ==== WormDrone::lookForTarget
//      file offset 0x41f4c8 (= ELF address; Ghidra 0x42f4c8), 50 bytes, Thumb-2
  41f4c8: b500         	push	{lr}
  41f4ca: b083         	sub	sp, #0xc
  41f4cc: 9001         	str	r0, [sp, #0x4]
  41f4ce: 9b01         	ldr	r3, [sp, #0x4]
  41f4d0: 681b         	ldr	r3, [r3]
  41f4d2: f503 73f8    	add.w	r3, r3, #0x1f0
  41f4d6: 681b         	ldr	r3, [r3]
  41f4d8: 9801         	ldr	r0, [sp, #0x4]
  41f4da: 4798         	blx	r3
  41f4dc: 4603         	mov	r3, r0
  41f4de: 2b00         	cmp	r3, #0x0
  41f4e0: d004         	beq	0x41f4ec <WormDrone::lookForTarget()+0x24> @ imm = #0x8
  41f4e2: 9b01         	ldr	r3, [sp, #0x4]
  41f4e4: 2203         	movs	r2, #0x3
  41f4e6: f8c3 215c    	str.w	r2, [r3, #0x15c]
  41f4ea: e003         	b	0x41f4f4 <WormDrone::lookForTarget()+0x2c> @ imm = #0x6
  41f4ec: 9b01         	ldr	r3, [sp, #0x4]
  41f4ee: 2202         	movs	r2, #0x2
  41f4f0: f8c3 215c    	str.w	r2, [r3, #0x15c]
  41f4f4: b003         	add	sp, #0xc
  41f4f6: f85d fb04    	ldr	pc, [sp], #4

// ==== WormDrone::canSeeTarget
//      file offset 0x41f4fc (= ELF address; Ghidra 0x42f4fc), 124 bytes, Thumb-2
  41f4fc: b500         	push	{lr}
  41f4fe: b08d         	sub	sp, #0x34
  41f500: 9001         	str	r0, [sp, #0x4]
  41f502: 9b01         	ldr	r3, [sp, #0x4]
  41f504: 681b         	ldr	r3, [r3]
  41f506: f503 73d6    	add.w	r3, r3, #0x1ac
  41f50a: 681b         	ldr	r3, [r3]
  41f50c: aa08         	add	r2, sp, #0x20
  41f50e: 4610         	mov	r0, r2
  41f510: 9901         	ldr	r1, [sp, #0x4]
  41f512: 4798         	blx	r3
  41f514: aa04         	add	r2, sp, #0x10
  41f516: 9b01         	ldr	r3, [sp, #0x4]
  41f518: ed93 4b44    	vldr	d4, [r3, #272]
  41f51c: ed93 5b46    	vldr	d5, [r3, #280]
  41f520: ed9d 6b08    	vldr	d6, [sp, #32]
  41f524: ed9d 7b0a    	vldr	d7, [sp, #40]
  41f528: 4610         	mov	r0, r2
  41f52a: eeb0 0b44    	vmov.f64	d0, d4
  41f52e: eeb0 1b45    	vmov.f64	d1, d5
  41f532: eeb0 2b46    	vmov.f64	d2, d6
  41f536: eeb0 3b47    	vmov.f64	d3, d7
  41f53a: f7fc febf    	bl	0x41c2bc <WeaponManager::getRandomWeapon()+0x2d8> @ imm = #-0x3282
  41f53e: ab04         	add	r3, sp, #0x10
  41f540: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f542: f2b7 fdb9    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2b7b72
  41f546: ec41 0b17    	vmov	d7, r0, r1
  41f54a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41f54e: edcd 7a03    	vstr	s15, [sp, #12]
  41f552: ed9d 7a03    	vldr	s14, [sp, #12]
  41f556: eddf 7a07    	vldr	s15, [pc, #28]          @ 0x41f574 <WormDrone::canSeeTarget()+0x78>
  41f55a: eeb4 7ae7    	vcmpe.f32	s14, s15
  41f55e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f562: d501         	bpl	0x41f568 <WormDrone::canSeeTarget()+0x6c> @ imm = #0x2
  41f564: 2301         	movs	r3, #0x1
  41f566: e000         	b	0x41f56a <WormDrone::canSeeTarget()+0x6e> @ imm = #0x0
  41f568: 2300         	movs	r3, #0x0
  41f56a: 4618         	mov	r0, r3
  41f56c: b00d         	add	sp, #0x34
  41f56e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x41f571); words below are literal-pool data ---
  41f572: bf00         	nop
  41f574: 0000         	movs	r0, r0
  41f576: 442f         	add	r7, r5

// ==== WormDrone::initBody
//      file offset 0x41f578 (= ELF address; Ghidra 0x42f578), 116 bytes, Thumb-2
  41f578: b500         	push	{lr}
  41f57a: b083         	sub	sp, #0xc
  41f57c: 9001         	str	r0, [sp, #0x4]
  41f57e: 9b01         	ldr	r3, [sp, #0x4]
  41f580: edd3 7a73    	vldr	s15, [r3, #460]
  41f584: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41f588: 9b01         	ldr	r3, [sp, #0x4]
  41f58a: ed93 7a73    	vldr	s14, [r3, #460]
  41f58e: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x41f5e4 <WormDrone::initBody()+0x6c>
  41f592: ee67 7a27    	vmul.f32	s15, s14, s15
  41f596: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  41f59a: ec51 0b16    	vmov	r0, r1, d6
  41f59e: ec53 2b17    	vmov	r2, r3, d7
  41f5a2: f2b3 fe53    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2b3ca6
  41f5a6: 4602         	mov	r2, r0
  41f5a8: 9b01         	ldr	r3, [sp, #0x4]
  41f5aa: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  41f5ae: 9b01         	ldr	r3, [sp, #0x4]
  41f5b0: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f5b4: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x41f5e8 <WormDrone::initBody()+0x70>
  41f5b6: 447a         	add	r2, pc
  41f5b8: 601a         	str	r2, [r3]
  41f5ba: 9b01         	ldr	r3, [sp, #0x4]
  41f5bc: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  41f5c0: f04f 0200    	mov.w	r2, #0x0
  41f5c4: f04f 0300    	mov.w	r3, #0x0
  41f5c8: f2c4 0324    	movt	r3, #0x4024
  41f5cc: e9c1 2322    	strd	r2, r3, [r1, #136]
  41f5d0: 9b01         	ldr	r3, [sp, #0x4]
  41f5d2: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f5d6: 9a01         	ldr	r2, [sp, #0x4]
  41f5d8: f8c3 2090    	str.w	r2, [r3, #0x90]
  41f5dc: b003         	add	sp, #0xc
  41f5de: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x41f5e1); words below are literal-pool data ---
  41f5e2: bf00         	nop
  41f5e4: 0000         	movs	r0, r0
  41f5e6: 4348         	muls	r0, r1, r0
  41f5e8: dda3         	ble	0x41f532 <WormDrone::canSeeTarget()+0x36> @ imm = #-0xba
  41f5ea: ffff 0000    	<unknown>

// ==== WormDrone::initShape
//      file offset 0x41f5f0 (= ELF address; Ghidra 0x42f5f0), 228 bytes, Thumb-2
  41f5f0: b570         	push	{r4, r5, r6, lr}
  41f5f2: b098         	sub	sp, #0x60
  41f5f4: 9005         	str	r0, [sp, #0x14]
  41f5f6: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x41f6c8 <WormDrone::initShape()+0xd8>
  41f5f8: 447a         	add	r2, pc
  41f5fa: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x41f6cc <WormDrone::initShape()+0xdc>
  41f5fc: 58d3         	ldr	r3, [r2, r3]
  41f5fe: 681b         	ldr	r3, [r3]
  41f600: 9307         	str	r3, [sp, #0x1c]
  41f602: 9b05         	ldr	r3, [sp, #0x14]
  41f604: 681b         	ldr	r3, [r3]
  41f606: 3340         	adds	r3, #0x40
  41f608: 681b         	ldr	r3, [r3]
  41f60a: 9a05         	ldr	r2, [sp, #0x14]
  41f60c: 4610         	mov	r0, r2
  41f60e: 9907         	ldr	r1, [sp, #0x1c]
  41f610: 4798         	blx	r3
  41f612: ab08         	add	r3, sp, #0x20
  41f614: 4618         	mov	r0, r3
  41f616: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x41f6a8 <WormDrone::initShape()+0xb8>
  41f61a: eeb1 1b04    	vmov.f64	d1, #5.000000e+00
  41f61e: f7fc fe0d    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x33e6
  41f622: ab0c         	add	r3, sp, #0x30
  41f624: 4618         	mov	r0, r3
  41f626: ed9f 0b22    	vldr	d0, [pc, #136]          @ 0x41f6b0 <WormDrone::initShape()+0xc0>
  41f62a: eeb2 1b04    	vmov.f64	d1, #1.000000e+01
  41f62e: f7fc fe05    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x33f6
  41f632: ab10         	add	r3, sp, #0x40
  41f634: 4618         	mov	r0, r3
  41f636: ed9f 0b1e    	vldr	d0, [pc, #120]          @ 0x41f6b0 <WormDrone::initShape()+0xc0>
  41f63a: eeba 1b04    	vmov.f64	d1, #-1.000000e+01
  41f63e: f7fc fdfd    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x3406
  41f642: ab14         	add	r3, sp, #0x50
  41f644: 4618         	mov	r0, r3
  41f646: ed9f 0b18    	vldr	d0, [pc, #96]           @ 0x41f6a8 <WormDrone::initShape()+0xb8>
  41f64a: eeb9 1b04    	vmov.f64	d1, #-5.000000e+00
  41f64e: f7fc fdf5    	bl	0x41c23c <WeaponManager::getRandomWeapon()+0x258> @ imm = #-0x3416
  41f652: 9b05         	ldr	r3, [sp, #0x14]
  41f654: f8d3 61c0    	ldr.w	r6, [r3, #0x1c0]
  41f658: ad08         	add	r5, sp, #0x20
  41f65a: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x41f6d0 <WormDrone::initShape()+0xe0>
  41f65c: 447b         	add	r3, pc
  41f65e: 466c         	mov	r4, sp
  41f660: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f662: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f666: 4630         	mov	r0, r6
  41f668: 2104         	movs	r1, #0x4
  41f66a: 462a         	mov	r2, r5
  41f66c: f2b5 f96e    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x2b52dc
  41f670: 4602         	mov	r2, r0
  41f672: 9b05         	ldr	r3, [sp, #0x14]
  41f674: f8c3 21c4    	str.w	r2, [r3, #0x1c4]
  41f678: 9b05         	ldr	r3, [sp, #0x14]
  41f67a: f8d3 11c4    	ldr.w	r1, [r3, #0x1c4]
  41f67e: a30e         	adr	r3, #56 <WormDrone::initShape()+0xa0>
  41f680: e9d3 2300    	ldrd	r2, r3, [r3]
  41f684: e9c1 230c    	strd	r2, r3, [r1, #48]
  41f688: 9b05         	ldr	r3, [sp, #0x14]
  41f68a: f8d3 11c4    	ldr.w	r1, [r3, #0x1c4]
  41f68e: a30c         	adr	r3, #48 <WormDrone::initShape()+0xae>
  41f690: e9d3 2300    	ldrd	r2, r3, [r3]
  41f694: e9c1 230e    	strd	r2, r3, [r1, #56]
  41f698: 9b05         	ldr	r3, [sp, #0x14]
  41f69a: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f69e: 9a05         	ldr	r2, [sp, #0x14]
  41f6a0: 651a         	str	r2, [r3, #0x50]
  41f6a2: b018         	add	sp, #0x60
  41f6a4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x41f6a5); words below are literal-pool data ---
  41f6a6: bf00         	nop
  41f6a8: 0000         	movs	r0, r0
  41f6aa: 0000         	movs	r0, r0
  41f6ac: 0000         	movs	r0, r0
  41f6ae: c044         	stm	r0!, {r2, r6}
  41f6b8: 0000         	movs	r0, r0
  41f6ba: a000         	adr	r0, #0 <WormDrone::initShape()+0xce>
  41f6bc: 9999         	ldr	r1, [sp, #0x264]
  41f6be: 3fe9         	subs	r7, #0xe9
  41f6c0: 0000         	movs	r0, r0
  41f6c2: a000         	adr	r0, #0 <WormDrone::initShape()+0xd6>
  41f6c4: 9999         	ldr	r1, [sp, #0x264]
  41f6c6: 3fb9         	subs	r7, #0xb9
  41f6c8: 3410         	adds	r4, #0x10
  41f6ca: 0051         	lsls	r1, r2, #0x1
  41f6cc: d748         	bvc	0x41f760 <WormDrone::addBodyShape()+0x38> @ imm = #0x90
  41f6ce: ffff c740    	<unknown>
  41f6d2: 003b         	movs	r3, r7

// ==== WormDrone::resetBody
//      file offset 0x41f6d8 (= ELF address; Ghidra 0x42f6d8), 78 bytes, Thumb-2
  41f6d8: b082         	sub	sp, #0x8
  41f6da: 9001         	str	r0, [sp, #0x4]
  41f6dc: 9b01         	ldr	r3, [sp, #0x4]
  41f6de: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  41f6e2: f04f 0200    	mov.w	r2, #0x0
  41f6e6: f04f 0300    	mov.w	r3, #0x0
  41f6ea: e9c1 230e    	strd	r2, r3, [r1, #56]
  41f6ee: f04f 0200    	mov.w	r2, #0x0
  41f6f2: f04f 0300    	mov.w	r3, #0x0
  41f6f6: e9c1 2310    	strd	r2, r3, [r1, #64]
  41f6fa: 9b01         	ldr	r3, [sp, #0x4]
  41f6fc: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  41f700: f04f 0200    	mov.w	r2, #0x0
  41f704: f04f 0300    	mov.w	r3, #0x0
  41f708: e9c1 2312    	strd	r2, r3, [r1, #72]
  41f70c: f04f 0200    	mov.w	r2, #0x0
  41f710: f04f 0300    	mov.w	r3, #0x0
  41f714: e9c1 2314    	strd	r2, r3, [r1, #80]
  41f718: 9b01         	ldr	r3, [sp, #0x4]
  41f71a: f04f 0200    	mov.w	r2, #0x0
  41f71e: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  41f722: b002         	add	sp, #0x8
  41f724: 4770         	bx	lr

// ==== WormDrone::addBodyShape
//      file offset 0x41f728 (= ELF address; Ghidra 0x42f728), 88 bytes, Thumb-2
  41f728: b510         	push	{r4, lr}
  41f72a: b082         	sub	sp, #0x8
  41f72c: 9001         	str	r0, [sp, #0x4]
  41f72e: 4c12         	ldr	r4, [pc, #0x48]         @ 0x41f778 <WormDrone::addBodyShape()+0x50>
  41f730: 447c         	add	r4, pc
  41f732: 9b01         	ldr	r3, [sp, #0x4]
  41f734: f893 31c8    	ldrb.w	r3, [r3, #0x1c8]
  41f738: f083 0301    	eor	r3, r3, #0x1
  41f73c: b2db         	uxtb	r3, r3
  41f73e: 2b00         	cmp	r3, #0x0
  41f740: d017         	beq	0x41f772 <WormDrone::addBodyShape()+0x4a> @ imm = #0x2e
  41f742: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x41f77c <WormDrone::addBodyShape()+0x54>
  41f744: 58e3         	ldr	r3, [r4, r3]
  41f746: 681a         	ldr	r2, [r3]
  41f748: 9b01         	ldr	r3, [sp, #0x4]
  41f74a: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f74e: 4610         	mov	r0, r2
  41f750: 4619         	mov	r1, r3
  41f752: f2b6 fb1f    	bl	0x6d5d94 <cpSpaceAddBody> @ imm = #0x2b663e
  41f756: 4b09         	ldr	r3, [pc, #0x24]         @ 0x41f77c <WormDrone::addBodyShape()+0x54>
  41f758: 58e3         	ldr	r3, [r4, r3]
  41f75a: 681a         	ldr	r2, [r3]
  41f75c: 9b01         	ldr	r3, [sp, #0x4]
  41f75e: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f762: 4610         	mov	r0, r2
  41f764: 4619         	mov	r1, r3
  41f766: f2b6 fd4f    	bl	0x6d6208 <cpSpaceAddShape> @ imm = #0x2b6a9e
  41f76a: 9b01         	ldr	r3, [sp, #0x4]
  41f76c: 2201         	movs	r2, #0x1
  41f76e: f883 21c8    	strb.w	r2, [r3, #0x1c8]
  41f772: b002         	add	sp, #0x8
  41f774: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41f775); words below are literal-pool data ---
  41f776: bf00         	nop
  41f778: 32d8         	adds	r2, #0xd8
  41f77a: 0051         	lsls	r1, r2, #0x1
  41f77c: da00         	bge	0x41f780 <WormDrone::removeBodyShape()> @ imm = #0x0
  41f77e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== WormDrone::removeBodyShape
//      file offset 0x41f780 (= ELF address; Ghidra 0x42f780), 80 bytes, Thumb-2
  41f780: b510         	push	{r4, lr}
  41f782: b082         	sub	sp, #0x8
  41f784: 9001         	str	r0, [sp, #0x4]
  41f786: 4c10         	ldr	r4, [pc, #0x40]         @ 0x41f7c8 <WormDrone::removeBodyShape()+0x48>
  41f788: 447c         	add	r4, pc
  41f78a: 9b01         	ldr	r3, [sp, #0x4]
  41f78c: f893 31c8    	ldrb.w	r3, [r3, #0x1c8]
  41f790: 2b00         	cmp	r3, #0x0
  41f792: d017         	beq	0x41f7c4 <WormDrone::removeBodyShape()+0x44> @ imm = #0x2e
  41f794: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x41f7cc <WormDrone::removeBodyShape()+0x4c>
  41f796: 58e3         	ldr	r3, [r4, r3]
  41f798: 681a         	ldr	r2, [r3]
  41f79a: 9b01         	ldr	r3, [sp, #0x4]
  41f79c: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f7a0: 4610         	mov	r0, r2
  41f7a2: 4619         	mov	r1, r3
  41f7a4: f2b6 fda3    	bl	0x6d62ee <cpSpaceRemoveBody> @ imm = #0x2b6b46
  41f7a8: 4b08         	ldr	r3, [pc, #0x20]         @ 0x41f7cc <WormDrone::removeBodyShape()+0x4c>
  41f7aa: 58e3         	ldr	r3, [r4, r3]
  41f7ac: 681a         	ldr	r2, [r3]
  41f7ae: 9b01         	ldr	r3, [sp, #0x4]
  41f7b0: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f7b4: 4610         	mov	r0, r2
  41f7b6: 4619         	mov	r1, r3
  41f7b8: f2b6 fd60    	bl	0x6d627c <cpSpaceRemoveShape> @ imm = #0x2b6ac0
  41f7bc: 9b01         	ldr	r3, [sp, #0x4]
  41f7be: 2200         	movs	r2, #0x0
  41f7c0: f883 21c8    	strb.w	r2, [r3, #0x1c8]
  41f7c4: b002         	add	sp, #0x8
  41f7c6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x41f7c7); words below are literal-pool data ---
  41f7c8: 3280         	adds	r2, #0x80
  41f7ca: 0051         	lsls	r1, r2, #0x1
  41f7cc: da00         	bge	0x41f7d0 <WormDrone::addDamage(int, std::string, int)> @ imm = #0x0
  41f7ce: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== WormDrone::addDamage
//      file offset 0x41f7d0 (= ELF address; Ghidra 0x42f7d0), 268 bytes, Thumb-2
  41f7d0: b530         	push	{r4, r5, lr}
  41f7d2: ed2d 8b02    	vpush	{d8}
  41f7d6: b089         	sub	sp, #0x24
  41f7d8: 9007         	str	r0, [sp, #0x1c]
  41f7da: 9106         	str	r1, [sp, #0x18]
  41f7dc: 9205         	str	r2, [sp, #0x14]
  41f7de: 9304         	str	r3, [sp, #0x10]
  41f7e0: 4c3c         	ldr	r4, [pc, #0xf0]         @ 0x41f8d4 <WormDrone::addDamage(int, std::string, int)+0x104>
  41f7e2: 447c         	add	r4, pc
  41f7e4: 9b07         	ldr	r3, [sp, #0x1c]
  41f7e6: f8d3 21a8    	ldr.w	r2, [r3, #0x1a8]
  41f7ea: 9b06         	ldr	r3, [sp, #0x18]
  41f7ec: 1ad3         	subs	r3, r2, r3
  41f7ee: ea23 72e3    	bic.w	r2, r3, r3, asr #31
  41f7f2: 9b07         	ldr	r3, [sp, #0x1c]
  41f7f4: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  41f7f8: 9b07         	ldr	r3, [sp, #0x1c]
  41f7fa: 33ec         	adds	r3, #0xec
  41f7fc: 4618         	mov	r0, r3
  41f7fe: 9905         	ldr	r1, [sp, #0x14]
  41f800: f396 fed8    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x396db0
  41f804: 9b07         	ldr	r3, [sp, #0x1c]
  41f806: 9a04         	ldr	r2, [sp, #0x10]
  41f808: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  41f80c: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x41f8d8 <WormDrone::addDamage(int, std::string, int)+0x108>
  41f80e: 58e3         	ldr	r3, [r4, r3]
  41f810: 681d         	ldr	r5, [r3]
  41f812: 9b07         	ldr	r3, [sp, #0x1c]
  41f814: f8d3 41c0    	ldr.w	r4, [r3, #0x1c0]
  41f818: 9b06         	ldr	r3, [sp, #0x18]
  41f81a: ee07 3a90    	vmov	s15, r3
  41f81e: eeb8 6be7    	vcvt.f64.s32	d6, s15
  41f822: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  41f826: ee26 6b07    	vmul.f64	d6, d6, d7
  41f82a: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  41f82e: ee86 6b07    	vdiv.f64	d6, d6, d7
  41f832: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  41f836: eeb4 6bc7    	vcmpe.f64	d6, d7
  41f83a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  41f83e: d502         	bpl	0x41f846 <WormDrone::addDamage(int, std::string, int)+0x76> @ imm = #0x4
  41f840: eeb7 8a04    	vmov.f32	s16, #1.250000e+00
  41f844: e012         	b	0x41f86c <WormDrone::addDamage(int, std::string, int)+0x9c> @ imm = #0x24
  41f846: 9b06         	ldr	r3, [sp, #0x18]
  41f848: ee07 3a90    	vmov	s15, r3
  41f84c: eeb8 6be7    	vcvt.f64.s32	d6, s15
  41f850: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  41f854: ee26 6b07    	vmul.f64	d6, d6, d7
  41f858: eeb3 7b0e    	vmov.f64	d7, #3.000000e+01
  41f85c: ee86 6b07    	vdiv.f64	d6, d6, d7
  41f860: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  41f864: ee36 7b07    	vadd.f64	d7, d6, d7
  41f868: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  41f86c: f7fc fc60    	bl	0x41c130 <WeaponManager::getRandomWeapon()+0x14c> @ imm = #-0x3740
  41f870: 4603         	mov	r3, r0
  41f872: ee07 3a90    	vmov	s15, r3
  41f876: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  41f87a: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x41f8d0 <WormDrone::addDamage(int, std::string, int)+0x100>
  41f87e: ee87 7a27    	vdiv.f32	s14, s14, s15
  41f882: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  41f886: ee77 7a67    	vsub.f32	s15, s14, s15
  41f88a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  41f88e: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  41f892: ee26 6b07    	vmul.f64	d6, d6, d7
  41f896: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  41f89a: ee36 7b07    	vadd.f64	d7, d6, d7
  41f89e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41f8a2: ed8d 8a02    	vstr	s16, [sp, #8]
  41f8a6: edcd 7a03    	vstr	s15, [sp, #12]
  41f8aa: 466b         	mov	r3, sp
  41f8ac: f104 0230    	add.w	r2, r4, #0x30
  41f8b0: e892 0003    	ldm.w	r2, {r0, r1}
  41f8b4: e883 0003    	stm.w	r3, {r0, r1}
  41f8b8: f104 0328    	add.w	r3, r4, #0x28
  41f8bc: cb0c         	ldm	r3, {r2, r3}
  41f8be: 4628         	mov	r0, r5
  41f8c0: 210f         	movs	r1, #0xf
  41f8c2: f7d8 fbbf    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #-0x27882
  41f8c6: b009         	add	sp, #0x24
  41f8c8: ecbd 8b02    	vpop	{d8}
  41f8cc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x41f8cd); words below are literal-pool data ---
  41f8ce: bf00         	nop
  41f8d0: 0000         	movs	r0, r0
  41f8d2: 4e80         	ldr	r6, [pc, #0x200]        @ 0x41fad4 <WormDrone::setHP(int)+0x100>
  41f8d4: 3226         	adds	r2, #0x26
  41f8d6: 0051         	lsls	r1, r2, #0x1
  41f8d8: d730         	bvc	0x41f93c <WormDrone::getBodyVelocity()+0x10> @ imm = #0x60
  41f8da: ffff b082    	<unknown>

// ==== WormDrone::getHP
//      file offset 0x41f8dc (= ELF address; Ghidra 0x42f8dc), 16 bytes, Thumb-2
  41f8dc: b082         	sub	sp, #0x8
  41f8de: 9001         	str	r0, [sp, #0x4]
  41f8e0: 9b01         	ldr	r3, [sp, #0x4]
  41f8e2: f8d3 31a8    	ldr.w	r3, [r3, #0x1a8]
  41f8e6: 4618         	mov	r0, r3
  41f8e8: b002         	add	sp, #0x8
  41f8ea: 4770         	bx	lr

// ==== WormDrone::getBodyPosition
//      file offset 0x41f8ec (= ELF address; Ghidra 0x42f8ec), 36 bytes, Thumb-2
  41f8ec: b410         	push	{r4}
  41f8ee: b083         	sub	sp, #0xc
  41f8f0: 9001         	str	r0, [sp, #0x4]
  41f8f2: 9100         	str	r1, [sp]
  41f8f4: 9b00         	ldr	r3, [sp]
  41f8f6: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f8fa: 9a01         	ldr	r2, [sp, #0x4]
  41f8fc: 4614         	mov	r4, r2
  41f8fe: 3328         	adds	r3, #0x28
  41f900: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f902: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f906: 9801         	ldr	r0, [sp, #0x4]
  41f908: b003         	add	sp, #0xc
  41f90a: f85d 4b04    	ldr	r4, [sp], #4
  41f90e: 4770         	bx	lr

// ==== WormDrone::getBodyRotation
//      file offset 0x41f910 (= ELF address; Ghidra 0x42f910), 28 bytes, Thumb-2
  41f910: b082         	sub	sp, #0x8
  41f912: 9001         	str	r0, [sp, #0x4]
  41f914: 9b01         	ldr	r3, [sp, #0x4]
  41f916: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f91a: ed93 7b16    	vldr	d7, [r3, #88]
  41f91e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41f922: ee17 3a90    	vmov	r3, s15
  41f926: 4618         	mov	r0, r3
  41f928: b002         	add	sp, #0x8
  41f92a: 4770         	bx	lr

// ==== WormDrone::getBodyVelocity
//      file offset 0x41f92c (= ELF address; Ghidra 0x42f92c), 68 bytes, Thumb-2
  41f92c: b410         	push	{r4}
  41f92e: b083         	sub	sp, #0xc
  41f930: 9001         	str	r0, [sp, #0x4]
  41f932: 9100         	str	r1, [sp]
  41f934: 9b00         	ldr	r3, [sp]
  41f936: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f93a: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  41f93e: 2b00         	cmp	r3, #0x0
  41f940: d009         	beq	0x41f956 <WormDrone::getBodyVelocity()+0x2a> @ imm = #0x12
  41f942: 9b00         	ldr	r3, [sp]
  41f944: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  41f948: 9a01         	ldr	r2, [sp, #0x4]
  41f94a: 4614         	mov	r4, r2
  41f94c: 3338         	adds	r3, #0x38
  41f94e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f950: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f954: e007         	b	0x41f966 <WormDrone::getBodyVelocity()+0x3a> @ imm = #0xe
  41f956: 9a01         	ldr	r2, [sp, #0x4]
  41f958: 9b00         	ldr	r3, [sp]
  41f95a: 4614         	mov	r4, r2
  41f95c: f503 73c4    	add.w	r3, r3, #0x188
  41f960: cb0f         	ldm	r3, {r0, r1, r2, r3}
  41f962: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  41f966: 9801         	ldr	r0, [sp, #0x4]
  41f968: b003         	add	sp, #0xc
  41f96a: f85d 4b04    	ldr	r4, [sp], #4
  41f96e: 4770         	bx	lr

// ==== WormDrone::setCollisionType
//      file offset 0x41f970 (= ELF address; Ghidra 0x42f970), 40 bytes, Thumb-2
  41f970: b082         	sub	sp, #0x8
  41f972: 9001         	str	r0, [sp, #0x4]
  41f974: 9100         	str	r1, [sp]
  41f976: 9b01         	ldr	r3, [sp, #0x4]
  41f978: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f97c: 9a00         	ldr	r2, [sp]
  41f97e: 655a         	str	r2, [r3, #0x54]
  41f980: 9b01         	ldr	r3, [sp, #0x4]
  41f982: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f986: 9a00         	ldr	r2, [sp]
  41f988: 65da         	str	r2, [r3, #0x5c]
  41f98a: 9b01         	ldr	r3, [sp, #0x4]
  41f98c: f8d3 31c4    	ldr.w	r3, [r3, #0x1c4]
  41f990: 9a00         	ldr	r2, [sp]
  41f992: 659a         	str	r2, [r3, #0x58]
  41f994: b002         	add	sp, #0x8
  41f996: 4770         	bx	lr

// ==== WormDrone::getPeerID
//      file offset 0x41f998 (= ELF address; Ghidra 0x42f998), 30 bytes, Thumb-2
  41f998: b500         	push	{lr}
  41f99a: b083         	sub	sp, #0xc
  41f99c: 9001         	str	r0, [sp, #0x4]
  41f99e: 9100         	str	r1, [sp]
  41f9a0: 9b00         	ldr	r3, [sp]
  41f9a2: f503 73e8    	add.w	r3, r3, #0x1d0
  41f9a6: 9801         	ldr	r0, [sp, #0x4]
  41f9a8: 4619         	mov	r1, r3
  41f9aa: f396 fd9d    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x396b3a
  41f9ae: 9801         	ldr	r0, [sp, #0x4]
  41f9b0: b003         	add	sp, #0xc
  41f9b2: f85d fb04    	ldr	pc, [sp], #4

// ==== WormDrone::setPeerID
//      file offset 0x41f9b8 (= ELF address; Ghidra 0x42f9b8), 28 bytes, Thumb-2
  41f9b8: b500         	push	{lr}
  41f9ba: b083         	sub	sp, #0xc
  41f9bc: 9001         	str	r0, [sp, #0x4]
  41f9be: 9100         	str	r1, [sp]
  41f9c0: 9b01         	ldr	r3, [sp, #0x4]
  41f9c2: f503 73e8    	add.w	r3, r3, #0x1d0
  41f9c6: 4618         	mov	r0, r3
  41f9c8: 9900         	ldr	r1, [sp]
  41f9ca: f396 fdf3    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x396be6
  41f9ce: b003         	add	sp, #0xc
  41f9d0: f85d fb04    	ldr	pc, [sp], #4

// ==== WormDrone::setHP
//      file offset 0x41f9d4 (= ELF address; Ghidra 0x42f9d4), 18 bytes, Thumb-2
  41f9d4: b082         	sub	sp, #0x8
  41f9d6: 9001         	str	r0, [sp, #0x4]
  41f9d8: 9100         	str	r1, [sp]
  41f9da: 9b01         	ldr	r3, [sp, #0x4]
  41f9dc: 9a00         	ldr	r2, [sp]
  41f9de: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  41f9e2: b002         	add	sp, #0x8
  41f9e4: 4770         	bx	lr
