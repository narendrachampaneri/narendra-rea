// Joypad: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 27 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Joypad.cpp

// ==== Joypad::create
//      file offset 0x339f4c (= ELF address; Ghidra 0x349f4c), 112 bytes, Thumb-2
  339f4c: b510         	push	{r4, lr}
  339f4e: b082         	sub	sp, #0x8
  339f50: f44f 70aa    	mov.w	r0, #0x154
  339f54: f04d f506    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44da0c
  339f58: 4603         	mov	r3, r0
  339f5a: 461c         	mov	r4, r3
  339f5c: 4620         	mov	r0, r4
  339f5e: f013 fa85    	bl	0x34d46c <Joypad::Joypad()> @ imm = #0x1350a
  339f62: 9401         	str	r4, [sp, #0x4]
  339f64: 9b01         	ldr	r3, [sp, #0x4]
  339f66: 2b00         	cmp	r3, #0x0
  339f68: d00a         	beq	0x339f80 <Joypad::create()+0x34> @ imm = #0x14
  339f6a: 9b01         	ldr	r3, [sp, #0x4]
  339f6c: 681b         	ldr	r3, [r3]
  339f6e: 3318         	adds	r3, #0x18
  339f70: 681b         	ldr	r3, [r3]
  339f72: 9801         	ldr	r0, [sp, #0x4]
  339f74: 4798         	blx	r3
  339f76: 4603         	mov	r3, r0
  339f78: 2b00         	cmp	r3, #0x0
  339f7a: d001         	beq	0x339f80 <Joypad::create()+0x34> @ imm = #0x2
  339f7c: 2301         	movs	r3, #0x1
  339f7e: e000         	b	0x339f82 <Joypad::create()+0x36> @ imm = #0x0
  339f80: 2300         	movs	r3, #0x0
  339f82: 2b00         	cmp	r3, #0x0
  339f84: d005         	beq	0x339f92 <Joypad::create()+0x46> @ imm = #0xa
  339f86: 9b01         	ldr	r3, [sp, #0x4]
  339f88: 4618         	mov	r0, r3
  339f8a: f25d ffb7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25df6e
  339f8e: 9b01         	ldr	r3, [sp, #0x4]
  339f90: e011         	b	0x339fb6 <Joypad::create()+0x6a> @ imm = #0x22
  339f92: 9b01         	ldr	r3, [sp, #0x4]
  339f94: 2b00         	cmp	r3, #0x0
  339f96: d005         	beq	0x339fa4 <Joypad::create()+0x58> @ imm = #0xa
  339f98: 9b01         	ldr	r3, [sp, #0x4]
  339f9a: 681b         	ldr	r3, [r3]
  339f9c: 3308         	adds	r3, #0x8
  339f9e: 681b         	ldr	r3, [r3]
  339fa0: 9801         	ldr	r0, [sp, #0x4]
  339fa2: 4798         	blx	r3
  339fa4: 2300         	movs	r3, #0x0
  339fa6: 9301         	str	r3, [sp, #0x4]
  339fa8: 2300         	movs	r3, #0x0
  339faa: e004         	b	0x339fb6 <Joypad::create()+0x6a> @ imm = #0x8
  339fac: 4620         	mov	r0, r4
  339fae: f04e f079    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44e0f2
  339fb2: f04e f07b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44e0f6
  339fb6: 4618         	mov	r0, r3
  339fb8: b002         	add	sp, #0x8
  339fba: bd10         	pop	{r4, pc}

// ==== Joypad::Joypad
//      file offset 0x34d46c (= ELF address; Ghidra 0x35d46c), 104 bytes, Thumb-2
  34d46c: b510         	push	{r4, lr}
  34d46e: b082         	sub	sp, #0x8
  34d470: 9001         	str	r0, [sp, #0x4]
  34d472: 4c16         	ldr	r4, [pc, #0x58]         @ 0x34d4cc <Joypad::Joypad()+0x60>
  34d474: 447c         	add	r4, pc
  34d476: 9b01         	ldr	r3, [sp, #0x4]
  34d478: 4618         	mov	r0, r3
  34d47a: f242 f8dd    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x2421ba
  34d47e: 9b01         	ldr	r3, [sp, #0x4]
  34d480: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x34d4d0 <Joypad::Joypad()+0x64>
  34d482: 58a2         	ldr	r2, [r4, r2]
  34d484: 3208         	adds	r2, #0x8
  34d486: 601a         	str	r2, [r3]
  34d488: 9b01         	ldr	r3, [sp, #0x4]
  34d48a: 33fc         	adds	r3, #0xfc
  34d48c: 4618         	mov	r0, r3
  34d48e: f245 fc21    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x245842
  34d492: 9b01         	ldr	r3, [sp, #0x4]
  34d494: f503 7382    	add.w	r3, r3, #0x104
  34d498: 4618         	mov	r0, r3
  34d49a: f245 fc1b    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x245836
  34d49e: 9b01         	ldr	r3, [sp, #0x4]
  34d4a0: f503 738a    	add.w	r3, r3, #0x114
  34d4a4: 4618         	mov	r0, r3
  34d4a6: f245 fc15    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x24582a
  34d4aa: 9b01         	ldr	r3, [sp, #0x4]
  34d4ac: f503 738e    	add.w	r3, r3, #0x11c
  34d4b0: 4618         	mov	r0, r3
  34d4b2: f245 fc0f    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x24581e
  34d4b6: 9b01         	ldr	r3, [sp, #0x4]
  34d4b8: e005         	b	0x34d4c6 <Joypad::Joypad()+0x5a> @ imm = #0xa
  34d4ba: 9b01         	ldr	r3, [sp, #0x4]
  34d4bc: 4618         	mov	r0, r3
  34d4be: f242 f9c1    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x242382
  34d4c2: f03a f5f3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43abe6
  34d4c6: 4618         	mov	r0, r3
  34d4c8: b002         	add	sp, #0x8
  34d4ca: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34d4cb); words below are literal-pool data ---
  34d4cc: 5594         	strb	r4, [r2, r6]
  34d4ce: 005e         	lsls	r6, r3, #0x1
  34d4d0: db50         	blt	0x34d574 <Joypad::init()+0xa0> @ imm = #0xa0
  34d4d2: ffff b570    	<unknown>

// ==== Joypad::init
//      file offset 0x34d4d4 (= ELF address; Ghidra 0x35d4d4), 1484 bytes, Thumb-2
  34d4d4: b570         	push	{r4, r5, r6, lr}
  34d4d6: b086         	sub	sp, #0x18
  34d4d8: 9001         	str	r0, [sp, #0x4]
  34d4da: f8df 4584    	ldr.w	r4, [pc, #0x584]        @ 0x34da60 <Joypad::init()+0x58c>
  34d4de: 447c         	add	r4, pc
  34d4e0: 9b01         	ldr	r3, [sp, #0x4]
  34d4e2: 4618         	mov	r0, r3
  34d4e4: f242 fab2    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x242564
  34d4e8: 4603         	mov	r3, r0
  34d4ea: f88d 300f    	strb.w	r3, [sp, #0xf]
  34d4ee: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  34d4f2: f083 0301    	eor	r3, r3, #0x1
  34d4f6: b2db         	uxtb	r3, r3
  34d4f8: 2b00         	cmp	r3, #0x0
  34d4fa: d001         	beq	0x34d500 <Joypad::init()+0x2c> @ imm = #0x2
  34d4fc: 2300         	movs	r3, #0x0
  34d4fe: e2a9         	b	0x34da54 <Joypad::init()+0x580> @ imm = #0x552
  34d500: 9b01         	ldr	r3, [sp, #0x4]
  34d502: 2200         	movs	r2, #0x0
  34d504: f8c3 210c    	str.w	r2, [r3, #0x10c]
  34d508: 9b01         	ldr	r3, [sp, #0x4]
  34d50a: 2200         	movs	r2, #0x0
  34d50c: f8c3 2110    	str.w	r2, [r3, #0x110]
  34d510: f295 f88c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x295118
  34d514: 4603         	mov	r3, r0
  34d516: 4618         	mov	r0, r3
  34d518: f8df 3548    	ldr.w	r3, [pc, #0x548]        @ 0x34da64 <Joypad::init()+0x590>
  34d51c: 447b         	add	r3, pc
  34d51e: 4619         	mov	r1, r3
  34d520: 2200         	movs	r2, #0x0
  34d522: f294 fe81    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x294d02
  34d526: 4603         	mov	r3, r0
  34d528: 2b00         	cmp	r3, #0x0
  34d52a: bf0c         	ite	eq
  34d52c: 2300         	moveq	r3, #0x0
  34d52e: 2301         	movne	r3, #0x1
  34d530: b2da         	uxtb	r2, r3
  34d532: 9b01         	ldr	r3, [sp, #0x4]
  34d534: f883 2146    	strb.w	r2, [r3, #0x146]
  34d538: f295 f878    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2950f0
  34d53c: 4603         	mov	r3, r0
  34d53e: 4618         	mov	r0, r3
  34d540: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x34da68 <Joypad::init()+0x594>
  34d544: 447b         	add	r3, pc
  34d546: 4619         	mov	r1, r3
  34d548: 2200         	movs	r2, #0x0
  34d54a: f294 fe6d    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x294cda
  34d54e: 4602         	mov	r2, r0
  34d550: 9b01         	ldr	r3, [sp, #0x4]
  34d552: f8c3 2148    	str.w	r2, [r3, #0x148]
  34d556: f295 f869    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2950d2
  34d55a: 4603         	mov	r3, r0
  34d55c: 4618         	mov	r0, r3
  34d55e: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x34da6c <Joypad::init()+0x598>
  34d562: 447b         	add	r3, pc
  34d564: 4619         	mov	r1, r3
  34d566: 2200         	movs	r2, #0x0
  34d568: f294 fe5e    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x294cbc
  34d56c: 4602         	mov	r2, r0
  34d56e: 9b01         	ldr	r3, [sp, #0x4]
  34d570: f8c3 214c    	str.w	r2, [r3, #0x14c]
  34d574: f295 f85a    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2950b4
  34d578: 4603         	mov	r3, r0
  34d57a: 4618         	mov	r0, r3
  34d57c: f8df 34f0    	ldr.w	r3, [pc, #0x4f0]        @ 0x34da70 <Joypad::init()+0x59c>
  34d580: 447b         	add	r3, pc
  34d582: 4619         	mov	r1, r3
  34d584: 2200         	movs	r2, #0x0
  34d586: f294 fe4f    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x294c9e
  34d58a: 4603         	mov	r3, r0
  34d58c: 2b00         	cmp	r3, #0x0
  34d58e: bf0c         	ite	eq
  34d590: 2300         	moveq	r3, #0x0
  34d592: 2301         	movne	r3, #0x1
  34d594: b2da         	uxtb	r2, r3
  34d596: 9b01         	ldr	r3, [sp, #0x4]
  34d598: f883 2150    	strb.w	r2, [r3, #0x150]
  34d59c: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x34da74 <Joypad::init()+0x5a0>
  34d5a0: 58e3         	ldr	r3, [r4, r3]
  34d5a2: 681b         	ldr	r3, [r3]
  34d5a4: 2b00         	cmp	r3, #0x0
  34d5a6: d10f         	bne	0x34d5c8 <Joypad::init()+0xf4> @ imm = #0x1e
  34d5a8: 9b01         	ldr	r3, [sp, #0x4]
  34d5aa: 2200         	movs	r2, #0x0
  34d5ac: f883 2146    	strb.w	r2, [r3, #0x146]
  34d5b0: 9b01         	ldr	r3, [sp, #0x4]
  34d5b2: 2200         	movs	r2, #0x0
  34d5b4: f8c3 2148    	str.w	r2, [r3, #0x148]
  34d5b8: 9b01         	ldr	r3, [sp, #0x4]
  34d5ba: 2200         	movs	r2, #0x0
  34d5bc: f8c3 214c    	str.w	r2, [r3, #0x14c]
  34d5c0: 9b01         	ldr	r3, [sp, #0x4]
  34d5c2: 2200         	movs	r2, #0x0
  34d5c4: f883 2150    	strb.w	r2, [r3, #0x150]
  34d5c8: f8df 34ac    	ldr.w	r3, [pc, #0x4ac]        @ 0x34da78 <Joypad::init()+0x5a4>
  34d5cc: 447b         	add	r3, pc
  34d5ce: 4618         	mov	r0, r3
  34d5d0: f28a fe98    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ad30
  34d5d4: 4602         	mov	r2, r0
  34d5d6: 9b01         	ldr	r3, [sp, #0x4]
  34d5d8: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  34d5dc: 9b01         	ldr	r3, [sp, #0x4]
  34d5de: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34d5e2: 4618         	mov	r0, r3
  34d5e4: f24a fc80    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a900
  34d5e8: 9b01         	ldr	r3, [sp, #0x4]
  34d5ea: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34d5ee: 681b         	ldr	r3, [r3]
  34d5f0: 337c         	adds	r3, #0x7c
  34d5f2: 681d         	ldr	r5, [r3]
  34d5f4: 9b01         	ldr	r3, [sp, #0x4]
  34d5f6: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  34d5fa: ab04         	add	r3, sp, #0x10
  34d5fc: 4618         	mov	r0, r3
  34d5fe: f04f 517c    	mov.w	r1, #0x3f000000
  34d602: f04f 527c    	mov.w	r2, #0x3f000000
  34d606: f245 fb73    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2456e6
  34d60a: ab04         	add	r3, sp, #0x10
  34d60c: 4630         	mov	r0, r6
  34d60e: 4619         	mov	r1, r3
  34d610: 47a8         	blx	r5
  34d612: f8df 3468    	ldr.w	r3, [pc, #0x468]        @ 0x34da7c <Joypad::init()+0x5a8>
  34d616: 447b         	add	r3, pc
  34d618: 4618         	mov	r0, r3
  34d61a: f28a fe73    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ace6
  34d61e: 4602         	mov	r2, r0
  34d620: 9b01         	ldr	r3, [sp, #0x4]
  34d622: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  34d626: 9b01         	ldr	r3, [sp, #0x4]
  34d628: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34d62c: 4618         	mov	r0, r3
  34d62e: f24a fc5b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a8b6
  34d632: 9b01         	ldr	r3, [sp, #0x4]
  34d634: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34d638: 681b         	ldr	r3, [r3]
  34d63a: 337c         	adds	r3, #0x7c
  34d63c: 681d         	ldr	r5, [r3]
  34d63e: 9b01         	ldr	r3, [sp, #0x4]
  34d640: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  34d644: ab04         	add	r3, sp, #0x10
  34d646: 4618         	mov	r0, r3
  34d648: f04f 517c    	mov.w	r1, #0x3f000000
  34d64c: f04f 527c    	mov.w	r2, #0x3f000000
  34d650: f245 fb4e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24569c
  34d654: ab04         	add	r3, sp, #0x10
  34d656: 4630         	mov	r0, r6
  34d658: 4619         	mov	r1, r3
  34d65a: 47a8         	blx	r5
  34d65c: f8df 3420    	ldr.w	r3, [pc, #0x420]        @ 0x34da80 <Joypad::init()+0x5ac>
  34d660: 447b         	add	r3, pc
  34d662: 4618         	mov	r0, r3
  34d664: f28a fe4e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ac9c
  34d668: 4602         	mov	r2, r0
  34d66a: 9b01         	ldr	r3, [sp, #0x4]
  34d66c: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  34d670: 9b01         	ldr	r3, [sp, #0x4]
  34d672: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34d676: 4618         	mov	r0, r3
  34d678: f24a fc36    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a86c
  34d67c: 9b01         	ldr	r3, [sp, #0x4]
  34d67e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34d682: 681b         	ldr	r3, [r3]
  34d684: 337c         	adds	r3, #0x7c
  34d686: 681d         	ldr	r5, [r3]
  34d688: 9b01         	ldr	r3, [sp, #0x4]
  34d68a: f8d3 60f4    	ldr.w	r6, [r3, #0xf4]
  34d68e: ab04         	add	r3, sp, #0x10
  34d690: 4618         	mov	r0, r3
  34d692: f04f 517c    	mov.w	r1, #0x3f000000
  34d696: f04f 527c    	mov.w	r2, #0x3f000000
  34d69a: f245 fb29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x245652
  34d69e: ab04         	add	r3, sp, #0x10
  34d6a0: 4630         	mov	r0, r6
  34d6a2: 4619         	mov	r1, r3
  34d6a4: 47a8         	blx	r5
  34d6a6: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x34da84 <Joypad::init()+0x5b0>
  34d6a8: 447b         	add	r3, pc
  34d6aa: 4618         	mov	r0, r3
  34d6ac: f28a fe2a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ac54
  34d6b0: 4602         	mov	r2, r0
  34d6b2: 9b01         	ldr	r3, [sp, #0x4]
  34d6b4: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  34d6b8: 9b01         	ldr	r3, [sp, #0x4]
  34d6ba: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34d6be: 4618         	mov	r0, r3
  34d6c0: f24a fc12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a824
  34d6c4: 9b01         	ldr	r3, [sp, #0x4]
  34d6c6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34d6ca: 681b         	ldr	r3, [r3]
  34d6cc: 337c         	adds	r3, #0x7c
  34d6ce: 681d         	ldr	r5, [r3]
  34d6d0: 9b01         	ldr	r3, [sp, #0x4]
  34d6d2: f8d3 60f8    	ldr.w	r6, [r3, #0xf8]
  34d6d6: ab04         	add	r3, sp, #0x10
  34d6d8: 4618         	mov	r0, r3
  34d6da: f04f 517c    	mov.w	r1, #0x3f000000
  34d6de: f04f 527c    	mov.w	r2, #0x3f000000
  34d6e2: f245 fb05    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24560a
  34d6e6: ab04         	add	r3, sp, #0x10
  34d6e8: 4630         	mov	r0, r6
  34d6ea: 4619         	mov	r1, r3
  34d6ec: 47a8         	blx	r5
  34d6ee: 4be6         	ldr	r3, [pc, #0x398]        @ 0x34da88 <Joypad::init()+0x5b4>
  34d6f0: 447b         	add	r3, pc
  34d6f2: 4618         	mov	r0, r3
  34d6f4: f28a fe06    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28ac0c
  34d6f8: 4602         	mov	r2, r0
  34d6fa: 9b01         	ldr	r3, [sp, #0x4]
  34d6fc: f8c3 20ec    	str.w	r2, [r3, #0xec]
  34d700: 9b01         	ldr	r3, [sp, #0x4]
  34d702: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34d706: 4618         	mov	r0, r3
  34d708: f24a fbee    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a7dc
  34d70c: 9b01         	ldr	r3, [sp, #0x4]
  34d70e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34d712: 681b         	ldr	r3, [r3]
  34d714: 337c         	adds	r3, #0x7c
  34d716: 681d         	ldr	r5, [r3]
  34d718: 9b01         	ldr	r3, [sp, #0x4]
  34d71a: f8d3 60ec    	ldr.w	r6, [r3, #0xec]
  34d71e: ab04         	add	r3, sp, #0x10
  34d720: 4618         	mov	r0, r3
  34d722: f04f 517c    	mov.w	r1, #0x3f000000
  34d726: f04f 527c    	mov.w	r2, #0x3f000000
  34d72a: f245 fae1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2455c2
  34d72e: ab04         	add	r3, sp, #0x10
  34d730: 4630         	mov	r0, r6
  34d732: 4619         	mov	r1, r3
  34d734: 47a8         	blx	r5
  34d736: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x34da8c <Joypad::init()+0x5b8>
  34d738: 447b         	add	r3, pc
  34d73a: 4618         	mov	r0, r3
  34d73c: f28a fde2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28abc4
  34d740: 4602         	mov	r2, r0
  34d742: 9b01         	ldr	r3, [sp, #0x4]
  34d744: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  34d748: 9b01         	ldr	r3, [sp, #0x4]
  34d74a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34d74e: 4618         	mov	r0, r3
  34d750: f24a fbca    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24a794
  34d754: 9b01         	ldr	r3, [sp, #0x4]
  34d756: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34d75a: 681b         	ldr	r3, [r3]
  34d75c: 337c         	adds	r3, #0x7c
  34d75e: 681d         	ldr	r5, [r3]
  34d760: 9b01         	ldr	r3, [sp, #0x4]
  34d762: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  34d766: ab04         	add	r3, sp, #0x10
  34d768: 4618         	mov	r0, r3
  34d76a: f04f 517c    	mov.w	r1, #0x3f000000
  34d76e: f04f 527c    	mov.w	r2, #0x3f000000
  34d772: f245 fabd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24557a
  34d776: ab04         	add	r3, sp, #0x10
  34d778: 4630         	mov	r0, r6
  34d77a: 4619         	mov	r1, r3
  34d77c: 47a8         	blx	r5
  34d77e: 9b01         	ldr	r3, [sp, #0x4]
  34d780: 2200         	movs	r2, #0x0
  34d782: f883 2131    	strb.w	r2, [r3, #0x131]
  34d786: 9b01         	ldr	r3, [sp, #0x4]
  34d788: 2200         	movs	r2, #0x0
  34d78a: f883 2132    	strb.w	r2, [r3, #0x132]
  34d78e: 9b01         	ldr	r3, [sp, #0x4]
  34d790: f103 05fc    	add.w	r5, r3, #0xfc
  34d794: ab04         	add	r3, sp, #0x10
  34d796: 4618         	mov	r0, r3
  34d798: f04f 0100    	mov.w	r1, #0x0
  34d79c: f04f 0200    	mov.w	r2, #0x0
  34d7a0: f245 faa6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24554c
  34d7a4: ab04         	add	r3, sp, #0x10
  34d7a6: 4628         	mov	r0, r5
  34d7a8: 4619         	mov	r1, r3
  34d7aa: f245 facf    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x24559e
  34d7ae: 9b01         	ldr	r3, [sp, #0x4]
  34d7b0: f503 7582    	add.w	r5, r3, #0x104
  34d7b4: ab04         	add	r3, sp, #0x10
  34d7b6: 4618         	mov	r0, r3
  34d7b8: f04f 0100    	mov.w	r1, #0x0
  34d7bc: f04f 0200    	mov.w	r2, #0x0
  34d7c0: f245 fa96    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24552c
  34d7c4: ab04         	add	r3, sp, #0x10
  34d7c6: 4628         	mov	r0, r5
  34d7c8: 4619         	mov	r1, r3
  34d7ca: f245 fabf    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x24557e
  34d7ce: 9b01         	ldr	r3, [sp, #0x4]
  34d7d0: 681b         	ldr	r3, [r3]
  34d7d2: 33cc         	adds	r3, #0xcc
  34d7d4: 681b         	ldr	r3, [r3]
  34d7d6: 9901         	ldr	r1, [sp, #0x4]
  34d7d8: 9a01         	ldr	r2, [sp, #0x4]
  34d7da: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  34d7de: 4608         	mov	r0, r1
  34d7e0: 4611         	mov	r1, r2
  34d7e2: 2200         	movs	r2, #0x0
  34d7e4: 4798         	blx	r3
  34d7e6: 9b01         	ldr	r3, [sp, #0x4]
  34d7e8: 681b         	ldr	r3, [r3]
  34d7ea: 33cc         	adds	r3, #0xcc
  34d7ec: 681b         	ldr	r3, [r3]
  34d7ee: 9901         	ldr	r1, [sp, #0x4]
  34d7f0: 9a01         	ldr	r2, [sp, #0x4]
  34d7f2: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  34d7f6: 4608         	mov	r0, r1
  34d7f8: 4611         	mov	r1, r2
  34d7fa: 2200         	movs	r2, #0x0
  34d7fc: 4798         	blx	r3
  34d7fe: 9b01         	ldr	r3, [sp, #0x4]
  34d800: 681b         	ldr	r3, [r3]
  34d802: 33cc         	adds	r3, #0xcc
  34d804: 681b         	ldr	r3, [r3]
  34d806: 9901         	ldr	r1, [sp, #0x4]
  34d808: 9a01         	ldr	r2, [sp, #0x4]
  34d80a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  34d80e: 4608         	mov	r0, r1
  34d810: 4611         	mov	r1, r2
  34d812: 2200         	movs	r2, #0x0
  34d814: 4798         	blx	r3
  34d816: 9b01         	ldr	r3, [sp, #0x4]
  34d818: 681b         	ldr	r3, [r3]
  34d81a: 33cc         	adds	r3, #0xcc
  34d81c: 681b         	ldr	r3, [r3]
  34d81e: 9901         	ldr	r1, [sp, #0x4]
  34d820: 9a01         	ldr	r2, [sp, #0x4]
  34d822: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34d826: 4608         	mov	r0, r1
  34d828: 4611         	mov	r1, r2
  34d82a: 2200         	movs	r2, #0x0
  34d82c: 4798         	blx	r3
  34d82e: 9b01         	ldr	r3, [sp, #0x4]
  34d830: 681b         	ldr	r3, [r3]
  34d832: 33cc         	adds	r3, #0xcc
  34d834: 681b         	ldr	r3, [r3]
  34d836: 9901         	ldr	r1, [sp, #0x4]
  34d838: 9a01         	ldr	r2, [sp, #0x4]
  34d83a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34d83e: 4608         	mov	r0, r1
  34d840: 4611         	mov	r1, r2
  34d842: 2200         	movs	r2, #0x0
  34d844: 4798         	blx	r3
  34d846: 9b01         	ldr	r3, [sp, #0x4]
  34d848: 681b         	ldr	r3, [r3]
  34d84a: 33cc         	adds	r3, #0xcc
  34d84c: 681b         	ldr	r3, [r3]
  34d84e: 9901         	ldr	r1, [sp, #0x4]
  34d850: 9a01         	ldr	r2, [sp, #0x4]
  34d852: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  34d856: 4608         	mov	r0, r1
  34d858: 4611         	mov	r1, r2
  34d85a: 2200         	movs	r2, #0x0
  34d85c: 4798         	blx	r3
  34d85e: 9b01         	ldr	r3, [sp, #0x4]
  34d860: f503 758a    	add.w	r5, r3, #0x114
  34d864: ab04         	add	r3, sp, #0x10
  34d866: 4618         	mov	r0, r3
  34d868: f04f 0100    	mov.w	r1, #0x0
  34d86c: f04f 0200    	mov.w	r2, #0x0
  34d870: f245 fa3e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24547c
  34d874: ab04         	add	r3, sp, #0x10
  34d876: 4628         	mov	r0, r5
  34d878: 4619         	mov	r1, r3
  34d87a: f245 fa67    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2454ce
  34d87e: 9b01         	ldr	r3, [sp, #0x4]
  34d880: f503 758e    	add.w	r5, r3, #0x11c
  34d884: ab04         	add	r3, sp, #0x10
  34d886: 4618         	mov	r0, r3
  34d888: f04f 0100    	mov.w	r1, #0x0
  34d88c: f04f 0200    	mov.w	r2, #0x0
  34d890: f245 fa2e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24545c
  34d894: ab04         	add	r3, sp, #0x10
  34d896: 4628         	mov	r0, r5
  34d898: 4619         	mov	r1, r3
  34d89a: f245 fa57    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2454ae
  34d89e: 9b01         	ldr	r3, [sp, #0x4]
  34d8a0: f04f 0200    	mov.w	r2, #0x0
  34d8a4: f8c3 2124    	str.w	r2, [r3, #0x124]
  34d8a8: 9b01         	ldr	r3, [sp, #0x4]
  34d8aa: f04f 0200    	mov.w	r2, #0x0
  34d8ae: f8c3 2128    	str.w	r2, [r3, #0x128]
  34d8b2: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x34da90 <Joypad::init()+0x5bc>
  34d8b4: 58e3         	ldr	r3, [r4, r3]
  34d8b6: ed93 7a00    	vldr	s14, [r3]
  34d8ba: eddf 7a68    	vldr	s15, [pc, #416]         @ 0x34da5c <Joypad::init()+0x588>
  34d8be: ee67 7a27    	vmul.f32	s15, s14, s15
  34d8c2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  34d8c6: ee17 2a90    	vmov	r2, s15
  34d8ca: 9b01         	ldr	r3, [sp, #0x4]
  34d8cc: f8c3 2134    	str.w	r2, [r3, #0x134]
  34d8d0: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x34da94 <Joypad::init()+0x5c0>
  34d8d2: 58e3         	ldr	r3, [r4, r3]
  34d8d4: ed93 7a00    	vldr	s14, [r3]
  34d8d8: eddf 7a60    	vldr	s15, [pc, #384]         @ 0x34da5c <Joypad::init()+0x588>
  34d8dc: ee67 7a27    	vmul.f32	s15, s14, s15
  34d8e0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  34d8e4: ee17 2a90    	vmov	r2, s15
  34d8e8: 9b01         	ldr	r3, [sp, #0x4]
  34d8ea: f8c3 2138    	str.w	r2, [r3, #0x138]
  34d8ee: 9b01         	ldr	r3, [sp, #0x4]
  34d8f0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34d8f4: 681b         	ldr	r3, [r3]
  34d8f6: 334c         	adds	r3, #0x4c
  34d8f8: 681b         	ldr	r3, [r3]
  34d8fa: 9a01         	ldr	r2, [sp, #0x4]
  34d8fc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  34d900: 4610         	mov	r0, r2
  34d902: 4a65         	ldr	r2, [pc, #0x194]        @ 0x34da98 <Joypad::init()+0x5c4>
  34d904: 58a2         	ldr	r2, [r4, r2]
  34d906: 4611         	mov	r1, r2
  34d908: 4798         	blx	r3
  34d90a: 9b01         	ldr	r3, [sp, #0x4]
  34d90c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34d910: 681b         	ldr	r3, [r3]
  34d912: 334c         	adds	r3, #0x4c
  34d914: 681b         	ldr	r3, [r3]
  34d916: 9a01         	ldr	r2, [sp, #0x4]
  34d918: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34d91c: 4610         	mov	r0, r2
  34d91e: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x34da9c <Joypad::init()+0x5c8>
  34d920: 58a2         	ldr	r2, [r4, r2]
  34d922: 4611         	mov	r1, r2
  34d924: 4798         	blx	r3
  34d926: 9b01         	ldr	r3, [sp, #0x4]
  34d928: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34d92c: 681b         	ldr	r3, [r3]
  34d92e: 3340         	adds	r3, #0x40
  34d930: 681b         	ldr	r3, [r3]
  34d932: 9a01         	ldr	r2, [sp, #0x4]
  34d934: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  34d938: 4a55         	ldr	r2, [pc, #0x154]        @ 0x34da90 <Joypad::init()+0x5bc>
  34d93a: 58a2         	ldr	r2, [r4, r2]
  34d93c: 6812         	ldr	r2, [r2]
  34d93e: 4608         	mov	r0, r1
  34d940: 4611         	mov	r1, r2
  34d942: 4798         	blx	r3
  34d944: 9b01         	ldr	r3, [sp, #0x4]
  34d946: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34d94a: 681b         	ldr	r3, [r3]
  34d94c: 3340         	adds	r3, #0x40
  34d94e: 681b         	ldr	r3, [r3]
  34d950: 9a01         	ldr	r2, [sp, #0x4]
  34d952: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  34d956: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x34da94 <Joypad::init()+0x5c0>
  34d958: 58a2         	ldr	r2, [r4, r2]
  34d95a: 6812         	ldr	r2, [r2]
  34d95c: 4608         	mov	r0, r1
  34d95e: 4611         	mov	r1, r2
  34d960: 4798         	blx	r3
  34d962: 9b01         	ldr	r3, [sp, #0x4]
  34d964: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34d968: 681b         	ldr	r3, [r3]
  34d96a: 3340         	adds	r3, #0x40
  34d96c: 681b         	ldr	r3, [r3]
  34d96e: 9a01         	ldr	r2, [sp, #0x4]
  34d970: f8d2 10f4    	ldr.w	r1, [r2, #0xf4]
  34d974: 4a46         	ldr	r2, [pc, #0x118]        @ 0x34da90 <Joypad::init()+0x5bc>
  34d976: 58a2         	ldr	r2, [r4, r2]
  34d978: 6812         	ldr	r2, [r2]
  34d97a: 4608         	mov	r0, r1
  34d97c: 4611         	mov	r1, r2
  34d97e: 4798         	blx	r3
  34d980: 9b01         	ldr	r3, [sp, #0x4]
  34d982: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34d986: 681b         	ldr	r3, [r3]
  34d988: 3340         	adds	r3, #0x40
  34d98a: 681b         	ldr	r3, [r3]
  34d98c: 9a01         	ldr	r2, [sp, #0x4]
  34d98e: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  34d992: 4a40         	ldr	r2, [pc, #0x100]        @ 0x34da94 <Joypad::init()+0x5c0>
  34d994: 58a2         	ldr	r2, [r4, r2]
  34d996: 6812         	ldr	r2, [r2]
  34d998: 4608         	mov	r0, r1
  34d99a: 4611         	mov	r1, r2
  34d99c: 4798         	blx	r3
  34d99e: 9b01         	ldr	r3, [sp, #0x4]
  34d9a0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34d9a4: 681b         	ldr	r3, [r3]
  34d9a6: 3340         	adds	r3, #0x40
  34d9a8: 681b         	ldr	r3, [r3]
  34d9aa: 9a01         	ldr	r2, [sp, #0x4]
  34d9ac: f8d2 10ec    	ldr.w	r1, [r2, #0xec]
  34d9b0: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x34da90 <Joypad::init()+0x5bc>
  34d9b2: 58a2         	ldr	r2, [r4, r2]
  34d9b4: 6812         	ldr	r2, [r2]
  34d9b6: 4608         	mov	r0, r1
  34d9b8: 4611         	mov	r1, r2
  34d9ba: 4798         	blx	r3
  34d9bc: 9b01         	ldr	r3, [sp, #0x4]
  34d9be: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34d9c2: 681b         	ldr	r3, [r3]
  34d9c4: 3340         	adds	r3, #0x40
  34d9c6: 681b         	ldr	r3, [r3]
  34d9c8: 9a01         	ldr	r2, [sp, #0x4]
  34d9ca: f8d2 10f0    	ldr.w	r1, [r2, #0xf0]
  34d9ce: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x34da94 <Joypad::init()+0x5c0>
  34d9d0: 58a2         	ldr	r2, [r4, r2]
  34d9d2: 6812         	ldr	r2, [r2]
  34d9d4: 4608         	mov	r0, r1
  34d9d6: 4611         	mov	r1, r2
  34d9d8: 4798         	blx	r3
  34d9da: 9b01         	ldr	r3, [sp, #0x4]
  34d9dc: 2201         	movs	r2, #0x1
  34d9de: f883 212c    	strb.w	r2, [r3, #0x12c]
  34d9e2: 9b01         	ldr	r3, [sp, #0x4]
  34d9e4: 2200         	movs	r2, #0x0
  34d9e6: f883 212d    	strb.w	r2, [r3, #0x12d]
  34d9ea: 9b01         	ldr	r3, [sp, #0x4]
  34d9ec: 2200         	movs	r2, #0x0
  34d9ee: f883 212e    	strb.w	r2, [r3, #0x12e]
  34d9f2: 9b01         	ldr	r3, [sp, #0x4]
  34d9f4: 2200         	movs	r2, #0x0
  34d9f6: f883 2130    	strb.w	r2, [r3, #0x130]
  34d9fa: 9b01         	ldr	r3, [sp, #0x4]
  34d9fc: 2200         	movs	r2, #0x0
  34d9fe: f883 212f    	strb.w	r2, [r3, #0x12f]
  34da02: 9b01         	ldr	r3, [sp, #0x4]
  34da04: 2200         	movs	r2, #0x0
  34da06: f883 213c    	strb.w	r2, [r3, #0x13c]
  34da0a: 9b01         	ldr	r3, [sp, #0x4]
  34da0c: 2200         	movs	r2, #0x0
  34da0e: f883 213d    	strb.w	r2, [r3, #0x13d]
  34da12: 9b01         	ldr	r3, [sp, #0x4]
  34da14: 2200         	movs	r2, #0x0
  34da16: f883 213e    	strb.w	r2, [r3, #0x13e]
  34da1a: 9b01         	ldr	r3, [sp, #0x4]
  34da1c: 2200         	movs	r2, #0x0
  34da1e: f883 213f    	strb.w	r2, [r3, #0x13f]
  34da22: 9b01         	ldr	r3, [sp, #0x4]
  34da24: 2200         	movs	r2, #0x0
  34da26: f883 2140    	strb.w	r2, [r3, #0x140]
  34da2a: 9b01         	ldr	r3, [sp, #0x4]
  34da2c: 2200         	movs	r2, #0x0
  34da2e: f883 2141    	strb.w	r2, [r3, #0x141]
  34da32: 9b01         	ldr	r3, [sp, #0x4]
  34da34: 2200         	movs	r2, #0x0
  34da36: f883 2142    	strb.w	r2, [r3, #0x142]
  34da3a: 9b01         	ldr	r3, [sp, #0x4]
  34da3c: 2200         	movs	r2, #0x0
  34da3e: f883 2143    	strb.w	r2, [r3, #0x143]
  34da42: 9b01         	ldr	r3, [sp, #0x4]
  34da44: 2200         	movs	r2, #0x0
  34da46: f883 2144    	strb.w	r2, [r3, #0x144]
  34da4a: 9b01         	ldr	r3, [sp, #0x4]
  34da4c: 2200         	movs	r2, #0x0
  34da4e: f883 2145    	strb.w	r2, [r3, #0x145]
  34da52: 2301         	movs	r3, #0x1
  34da54: 4618         	mov	r0, r3
  34da56: b006         	add	sp, #0x18
  34da58: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x34da59); words below are literal-pool data ---
  34da5a: bf00         	nop
  34da5c: 0000         	movs	r0, r0
  34da5e: 4220         	tst	r0, r4
  34da60: 552a         	strb	r2, [r5, r4]
  34da62: 005e         	lsls	r6, r3, #0x1
  34da64: df10         	svc	#0x10
  34da66: 0047         	lsls	r7, r0, #0x1
  34da68: def4         	udf	#0xf4
  34da6a: 0047         	lsls	r7, r0, #0x1
  34da6c: dee6         	udf	#0xe6
  34da6e: 0047         	lsls	r7, r0, #0x1
  34da70: ded8         	udf	#0xd8
  34da72: 0047         	lsls	r7, r0, #0x1
  34da74: d838         	bhi	0x34dae8 <Joypad::~Joypad()+0x48> @ imm = #0x70
  34da76: ffff de9c    	<unknown>
  34da7a: 0047         	lsls	r7, r0, #0x1
  34da7c: de62         	udf	#0x62
  34da7e: 0047         	lsls	r7, r0, #0x1
  34da80: de28         	udf	#0x28
  34da82: 0047         	lsls	r7, r0, #0x1
  34da84: ddec         	ble	0x34da60 <Joypad::init()+0x58c> @ imm = #-0x28
  34da86: 0047         	lsls	r7, r0, #0x1
  34da88: dd98         	ble	0x34d9bc <Joypad::init()+0x4e8> @ imm = #-0xd0
  34da8a: 0047         	lsls	r7, r0, #0x1
  34da8c: dd5c         	ble	0x34db48 <Joypad::startControl()> @ imm = #0xb8
  34da8e: 0047         	lsls	r7, r0, #0x1
  34da90: d81c         	bhi	0x34dacc <Joypad::~Joypad()+0x2c> @ imm = #0x38
  34da92: ffff d820    	vtbl.8	d29, {d15}, d16
  34da96: ffff d808    	vtbl.8	d29, {d15}, d8
  34da9a: ffff d804    	vtbl.8	d29, {d15}, d4
  34da9e: ffff b500    	<unknown>

// ==== Joypad::~Joypad
//      file offset 0x34daa0 (= ELF address; Ghidra 0x35daa0), 140 bytes, Thumb-2
  34daa0: b500         	push	{lr}
  34daa2: b083         	sub	sp, #0xc
  34daa4: 9001         	str	r0, [sp, #0x4]
  34daa6: 491f         	ldr	r1, [pc, #0x7c]         @ 0x34db24 <Joypad::~Joypad()+0x84>
  34daa8: 4479         	add	r1, pc
  34daaa: 9b01         	ldr	r3, [sp, #0x4]
  34daac: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x34db28 <Joypad::~Joypad()+0x88>
  34daae: 588a         	ldr	r2, [r1, r2]
  34dab0: 3208         	adds	r2, #0x8
  34dab2: 601a         	str	r2, [r3]
  34dab4: 9b01         	ldr	r3, [sp, #0x4]
  34dab6: 4618         	mov	r0, r3
  34dab8: 2101         	movs	r1, #0x1
  34daba: f242 fdc5    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x242b8a
  34dabe: 9b01         	ldr	r3, [sp, #0x4]
  34dac0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34dac4: 4618         	mov	r0, r3
  34dac6: f24a f9f7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3ee
  34daca: 9b01         	ldr	r3, [sp, #0x4]
  34dacc: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34dad0: 4618         	mov	r0, r3
  34dad2: f24a f9f1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3e2
  34dad6: 9b01         	ldr	r3, [sp, #0x4]
  34dad8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34dadc: 4618         	mov	r0, r3
  34dade: f24a f9eb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3d6
  34dae2: 9b01         	ldr	r3, [sp, #0x4]
  34dae4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34dae8: 4618         	mov	r0, r3
  34daea: f24a f9e5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3ca
  34daee: 9b01         	ldr	r3, [sp, #0x4]
  34daf0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34daf4: 4618         	mov	r0, r3
  34daf6: f24a f9df    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3be
  34dafa: 9b01         	ldr	r3, [sp, #0x4]
  34dafc: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34db00: 4618         	mov	r0, r3
  34db02: f24a f9d9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24a3b2
  34db06: 9b01         	ldr	r3, [sp, #0x4]
  34db08: 4618         	mov	r0, r3
  34db0a: f241 fe9b    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x241d36
  34db0e: 2300         	movs	r3, #0x0
  34db10: 2b00         	cmp	r3, #0x0
  34db12: d002         	beq	0x34db1a <Joypad::~Joypad()+0x7a> @ imm = #0x4
  34db14: 9801         	ldr	r0, [sp, #0x4]
  34db16: f03a f2c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43a58a
  34db1a: 9b01         	ldr	r3, [sp, #0x4]
  34db1c: 4618         	mov	r0, r3
  34db1e: b003         	add	sp, #0xc
  34db20: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34db23); words below are literal-pool data ---
  34db24: 4f60         	ldr	r7, [pc, #0x180]        @ 0x34dca8 <Joypad::updateStep(float)+0x150>
  34db26: 005e         	lsls	r6, r3, #0x1
  34db28: db50         	blt	0x34dbcc <Joypad::updateStep(float)+0x74> @ imm = #0xa0
  34db2a: ffff b500    	<unknown>

// ==== Joypad::~Joypad
//      file offset 0x34db2c (= ELF address; Ghidra 0x35db2c), 28 bytes, Thumb-2
  34db2c: b500         	push	{lr}
  34db2e: b083         	sub	sp, #0xc
  34db30: 9001         	str	r0, [sp, #0x4]
  34db32: 9801         	ldr	r0, [sp, #0x4]
  34db34: f7ff ffb4    	bl	0x34daa0 <Joypad::~Joypad()> @ imm = #-0x98
  34db38: 9801         	ldr	r0, [sp, #0x4]
  34db3a: f03a f2b3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43a566
  34db3e: 9b01         	ldr	r3, [sp, #0x4]
  34db40: 4618         	mov	r0, r3
  34db42: b003         	add	sp, #0xc
  34db44: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::startControl
//      file offset 0x34db48 (= ELF address; Ghidra 0x35db48), 8 bytes, Thumb-2
  34db48: b082         	sub	sp, #0x8
  34db4a: 9001         	str	r0, [sp, #0x4]
  34db4c: b002         	add	sp, #0x8
  34db4e: 4770         	bx	lr

// ==== Joypad::stopControl
//      file offset 0x34db50 (= ELF address; Ghidra 0x35db50), 8 bytes, Thumb-2
  34db50: b082         	sub	sp, #0x8
  34db52: 9001         	str	r0, [sp, #0x4]
  34db54: b002         	add	sp, #0x8
  34db56: 4770         	bx	lr

// ==== Joypad::updateStep
//      file offset 0x34db58 (= ELF address; Ghidra 0x35db58), 896 bytes, Thumb-2
  34db58: b530         	push	{r4, r5, lr}
  34db5a: b08b         	sub	sp, #0x2c
  34db5c: 9001         	str	r0, [sp, #0x4]
  34db5e: 9100         	str	r1, [sp]
  34db60: 4cda         	ldr	r4, [pc, #0x368]        @ 0x34decc <Joypad::updateStep(float)+0x374>
  34db62: 447c         	add	r4, pc
  34db64: 9b01         	ldr	r3, [sp, #0x4]
  34db66: f893 312c    	ldrb.w	r3, [r3, #0x12c]
  34db6a: 2b00         	cmp	r3, #0x0
  34db6c: d043         	beq	0x34dbf6 <Joypad::updateStep(float)+0x9e> @ imm = #0x86
  34db6e: ab04         	add	r3, sp, #0x10
  34db70: 4618         	mov	r0, r3
  34db72: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x34ded0 <Joypad::updateStep(float)+0x378>
  34db74: 58e3         	ldr	r3, [r4, r3]
  34db76: 4619         	mov	r1, r3
  34db78: f245 f8c8    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x245190
  34db7c: ab06         	add	r3, sp, #0x18
  34db7e: 4618         	mov	r0, r3
  34db80: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x34ded4 <Joypad::updateStep(float)+0x37c>
  34db82: 58e3         	ldr	r3, [r4, r3]
  34db84: 4619         	mov	r1, r3
  34db86: f245 f8c1    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x245182
  34db8a: 9b01         	ldr	r3, [sp, #0x4]
  34db8c: f893 3146    	ldrb.w	r3, [r3, #0x146]
  34db90: 2b00         	cmp	r3, #0x0
  34db92: d011         	beq	0x34dbb8 <Joypad::updateStep(float)+0x60> @ imm = #0x22
  34db94: aa08         	add	r2, sp, #0x20
  34db96: ab04         	add	r3, sp, #0x10
  34db98: 4610         	mov	r0, r2
  34db9a: 4619         	mov	r1, r3
  34db9c: f245 f8b6    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x24516c
  34dba0: aa04         	add	r2, sp, #0x10
  34dba2: ab06         	add	r3, sp, #0x18
  34dba4: 4610         	mov	r0, r2
  34dba6: 4619         	mov	r1, r3
  34dba8: f245 f8d0    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2451a0
  34dbac: aa06         	add	r2, sp, #0x18
  34dbae: ab08         	add	r3, sp, #0x20
  34dbb0: 4610         	mov	r0, r2
  34dbb2: 4619         	mov	r1, r3
  34dbb4: f245 f8ca    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x245194
  34dbb8: 9b01         	ldr	r3, [sp, #0x4]
  34dbba: f103 02fc    	add.w	r2, r3, #0xfc
  34dbbe: 9b01         	ldr	r3, [sp, #0x4]
  34dbc0: f893 312d    	ldrb.w	r3, [r3, #0x12d]
  34dbc4: 2b00         	cmp	r3, #0x0
  34dbc6: d001         	beq	0x34dbcc <Joypad::updateStep(float)+0x74> @ imm = #0x2
  34dbc8: ab04         	add	r3, sp, #0x10
  34dbca: e000         	b	0x34dbce <Joypad::updateStep(float)+0x76> @ imm = #0x0
  34dbcc: ab06         	add	r3, sp, #0x18
  34dbce: 4610         	mov	r0, r2
  34dbd0: 4619         	mov	r1, r3
  34dbd2: f245 f8bb    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x245176
  34dbd6: 9b01         	ldr	r3, [sp, #0x4]
  34dbd8: f503 7282    	add.w	r2, r3, #0x104
  34dbdc: 9b01         	ldr	r3, [sp, #0x4]
  34dbde: f893 312d    	ldrb.w	r3, [r3, #0x12d]
  34dbe2: 2b00         	cmp	r3, #0x0
  34dbe4: d001         	beq	0x34dbea <Joypad::updateStep(float)+0x92> @ imm = #0x2
  34dbe6: ab06         	add	r3, sp, #0x18
  34dbe8: e000         	b	0x34dbec <Joypad::updateStep(float)+0x94> @ imm = #0x0
  34dbea: ab04         	add	r3, sp, #0x10
  34dbec: 4610         	mov	r0, r2
  34dbee: 4619         	mov	r1, r3
  34dbf0: f245 f8ac    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x245158
  34dbf4: e027         	b	0x34dc46 <Joypad::updateStep(float)+0xee> @ imm = #0x4e
  34dbf6: 9b01         	ldr	r3, [sp, #0x4]
  34dbf8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34dbfc: 681b         	ldr	r3, [r3]
  34dbfe: 3390         	adds	r3, #0x90
  34dc00: 681b         	ldr	r3, [r3]
  34dc02: 9a01         	ldr	r2, [sp, #0x4]
  34dc04: f8d2 10f4    	ldr.w	r1, [r2, #0xf4]
  34dc08: 9a01         	ldr	r2, [sp, #0x4]
  34dc0a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  34dc0e: 2a00         	cmp	r2, #0x0
  34dc10: bf0c         	ite	eq
  34dc12: 2200         	moveq	r2, #0x0
  34dc14: 2201         	movne	r2, #0x1
  34dc16: b2d2         	uxtb	r2, r2
  34dc18: 4608         	mov	r0, r1
  34dc1a: 4611         	mov	r1, r2
  34dc1c: 4798         	blx	r3
  34dc1e: 9b01         	ldr	r3, [sp, #0x4]
  34dc20: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34dc24: 681b         	ldr	r3, [r3]
  34dc26: 3390         	adds	r3, #0x90
  34dc28: 681b         	ldr	r3, [r3]
  34dc2a: 9a01         	ldr	r2, [sp, #0x4]
  34dc2c: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  34dc30: 9a01         	ldr	r2, [sp, #0x4]
  34dc32: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  34dc36: 2a00         	cmp	r2, #0x0
  34dc38: bf0c         	ite	eq
  34dc3a: 2200         	moveq	r2, #0x0
  34dc3c: 2201         	movne	r2, #0x1
  34dc3e: b2d2         	uxtb	r2, r2
  34dc40: 4608         	mov	r0, r1
  34dc42: 4611         	mov	r1, r2
  34dc44: 4798         	blx	r3
  34dc46: 9b01         	ldr	r3, [sp, #0x4]
  34dc48: f893 3130    	ldrb.w	r3, [r3, #0x130]
  34dc4c: 2b00         	cmp	r3, #0x0
  34dc4e: d05c         	beq	0x34dd0a <Joypad::updateStep(float)+0x1b2> @ imm = #0xb8
  34dc50: 9b01         	ldr	r3, [sp, #0x4]
  34dc52: f503 728a    	add.w	r2, r3, #0x114
  34dc56: 9b01         	ldr	r3, [sp, #0x4]
  34dc58: 33fc         	adds	r3, #0xfc
  34dc5a: a902         	add	r1, sp, #0x8
  34dc5c: 4608         	mov	r0, r1
  34dc5e: 4611         	mov	r1, r2
  34dc60: 461a         	mov	r2, r3
  34dc62: f7fe fd25    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x15b6
  34dc66: ab02         	add	r3, sp, #0x8
  34dc68: 4618         	mov	r0, r3
  34dc6a: f293 fd61    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x293ac2
  34dc6e: ee07 0a10    	vmov	s14, r0
  34dc72: 9b01         	ldr	r3, [sp, #0x4]
  34dc74: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  34dc78: ee06 3a90    	vmov	s13, r3
  34dc7c: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34dc80: eeb4 7ae7    	vcmpe.f32	s14, s15
  34dc84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34dc88: bfd4         	ite	le
  34dc8a: 2300         	movle	r3, #0x0
  34dc8c: 2301         	movgt	r3, #0x1
  34dc8e: b2db         	uxtb	r3, r3
  34dc90: 2b00         	cmp	r3, #0x0
  34dc92: d02b         	beq	0x34dcec <Joypad::updateStep(float)+0x194> @ imm = #0x56
  34dc94: 9b01         	ldr	r3, [sp, #0x4]
  34dc96: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34dc9a: 681b         	ldr	r3, [r3]
  34dc9c: 334c         	adds	r3, #0x4c
  34dc9e: 681c         	ldr	r4, [r3]
  34dca0: 9b01         	ldr	r3, [sp, #0x4]
  34dca2: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  34dca6: aa04         	add	r2, sp, #0x10
  34dca8: ab02         	add	r3, sp, #0x8
  34dcaa: 4610         	mov	r0, r2
  34dcac: 4619         	mov	r1, r3
  34dcae: f293 fd5f    	bl	0x5e1770 <cocos2d::ccpNormalize(cocos2d::CCPoint const&)> @ imm = #0x293abe
  34dcb2: 9b01         	ldr	r3, [sp, #0x4]
  34dcb4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  34dcb8: ee07 3a10    	vmov	s14, r3
  34dcbc: eef8 7ac7    	vcvt.f32.s32	s15, s14
  34dcc0: aa06         	add	r2, sp, #0x18
  34dcc2: ab04         	add	r3, sp, #0x10
  34dcc4: 4610         	mov	r0, r2
  34dcc6: 4619         	mov	r1, r3
  34dcc8: eeb0 0a67    	vmov.f32	s0, s15
  34dccc: f7fe fd00    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x1600
  34dcd0: 9b01         	ldr	r3, [sp, #0x4]
  34dcd2: 33fc         	adds	r3, #0xfc
  34dcd4: a908         	add	r1, sp, #0x20
  34dcd6: aa06         	add	r2, sp, #0x18
  34dcd8: 4608         	mov	r0, r1
  34dcda: 4611         	mov	r1, r2
  34dcdc: 461a         	mov	r2, r3
  34dcde: f7fe fcd7    	bl	0x34c690 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1a4> @ imm = #-0x1652
  34dce2: ab08         	add	r3, sp, #0x20
  34dce4: 4628         	mov	r0, r5
  34dce6: 4619         	mov	r1, r3
  34dce8: 47a0         	blx	r4
  34dcea: e00e         	b	0x34dd0a <Joypad::updateStep(float)+0x1b2> @ imm = #0x1c
  34dcec: 9b01         	ldr	r3, [sp, #0x4]
  34dcee: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34dcf2: 681b         	ldr	r3, [r3]
  34dcf4: 334c         	adds	r3, #0x4c
  34dcf6: 681b         	ldr	r3, [r3]
  34dcf8: 9a01         	ldr	r2, [sp, #0x4]
  34dcfa: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  34dcfe: 9a01         	ldr	r2, [sp, #0x4]
  34dd00: f502 728a    	add.w	r2, r2, #0x114
  34dd04: 4608         	mov	r0, r1
  34dd06: 4611         	mov	r1, r2
  34dd08: 4798         	blx	r3
  34dd0a: 9b01         	ldr	r3, [sp, #0x4]
  34dd0c: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34dd10: f083 0301    	eor	r3, r3, #0x1
  34dd14: b2db         	uxtb	r3, r3
  34dd16: 2b00         	cmp	r3, #0x0
  34dd18: f000 8098    	beq.w	0x34de4c <Joypad::updateStep(float)+0x2f4> @ imm = #0x130
  34dd1c: 9b01         	ldr	r3, [sp, #0x4]
  34dd1e: f893 312f    	ldrb.w	r3, [r3, #0x12f]
  34dd22: 2b00         	cmp	r3, #0x0
  34dd24: d05f         	beq	0x34dde6 <Joypad::updateStep(float)+0x28e> @ imm = #0xbe
  34dd26: 9b01         	ldr	r3, [sp, #0x4]
  34dd28: f503 728e    	add.w	r2, r3, #0x11c
  34dd2c: 9b01         	ldr	r3, [sp, #0x4]
  34dd2e: f503 7382    	add.w	r3, r3, #0x104
  34dd32: a902         	add	r1, sp, #0x8
  34dd34: 4608         	mov	r0, r1
  34dd36: 4611         	mov	r1, r2
  34dd38: 461a         	mov	r2, r3
  34dd3a: f7fe fcb9    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x168e
  34dd3e: ab02         	add	r3, sp, #0x8
  34dd40: 4618         	mov	r0, r3
  34dd42: f293 fcf5    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x2939ea
  34dd46: ee07 0a10    	vmov	s14, r0
  34dd4a: 9b01         	ldr	r3, [sp, #0x4]
  34dd4c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34dd50: ee06 3a90    	vmov	s13, r3
  34dd54: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34dd58: eeb4 7ae7    	vcmpe.f32	s14, s15
  34dd5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34dd60: bfd4         	ite	le
  34dd62: 2300         	movle	r3, #0x0
  34dd64: 2301         	movgt	r3, #0x1
  34dd66: b2db         	uxtb	r3, r3
  34dd68: 2b00         	cmp	r3, #0x0
  34dd6a: d02c         	beq	0x34ddc6 <Joypad::updateStep(float)+0x26e> @ imm = #0x58
  34dd6c: 9b01         	ldr	r3, [sp, #0x4]
  34dd6e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34dd72: 681b         	ldr	r3, [r3]
  34dd74: 334c         	adds	r3, #0x4c
  34dd76: 681c         	ldr	r4, [r3]
  34dd78: 9b01         	ldr	r3, [sp, #0x4]
  34dd7a: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34dd7e: aa04         	add	r2, sp, #0x10
  34dd80: ab02         	add	r3, sp, #0x8
  34dd82: 4610         	mov	r0, r2
  34dd84: 4619         	mov	r1, r3
  34dd86: f293 fcf3    	bl	0x5e1770 <cocos2d::ccpNormalize(cocos2d::CCPoint const&)> @ imm = #0x2939e6
  34dd8a: 9b01         	ldr	r3, [sp, #0x4]
  34dd8c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34dd90: ee07 3a10    	vmov	s14, r3
  34dd94: eef8 7ac7    	vcvt.f32.s32	s15, s14
  34dd98: aa06         	add	r2, sp, #0x18
  34dd9a: ab04         	add	r3, sp, #0x10
  34dd9c: 4610         	mov	r0, r2
  34dd9e: 4619         	mov	r1, r3
  34dda0: eeb0 0a67    	vmov.f32	s0, s15
  34dda4: f7fe fc94    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x16d8
  34dda8: 9b01         	ldr	r3, [sp, #0x4]
  34ddaa: f503 7382    	add.w	r3, r3, #0x104
  34ddae: a908         	add	r1, sp, #0x20
  34ddb0: aa06         	add	r2, sp, #0x18
  34ddb2: 4608         	mov	r0, r1
  34ddb4: 4611         	mov	r1, r2
  34ddb6: 461a         	mov	r2, r3
  34ddb8: f7fe fc6a    	bl	0x34c690 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1a4> @ imm = #-0x172c
  34ddbc: ab08         	add	r3, sp, #0x20
  34ddbe: 4628         	mov	r0, r5
  34ddc0: 4619         	mov	r1, r3
  34ddc2: 47a0         	blx	r4
  34ddc4: e042         	b	0x34de4c <Joypad::updateStep(float)+0x2f4> @ imm = #0x84
  34ddc6: 9b01         	ldr	r3, [sp, #0x4]
  34ddc8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34ddcc: 681b         	ldr	r3, [r3]
  34ddce: 334c         	adds	r3, #0x4c
  34ddd0: 681b         	ldr	r3, [r3]
  34ddd2: 9a01         	ldr	r2, [sp, #0x4]
  34ddd4: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  34ddd8: 9a01         	ldr	r2, [sp, #0x4]
  34ddda: f502 728e    	add.w	r2, r2, #0x11c
  34ddde: 4608         	mov	r0, r1
  34dde0: 4611         	mov	r1, r2
  34dde2: 4798         	blx	r3
  34dde4: e032         	b	0x34de4c <Joypad::updateStep(float)+0x2f4> @ imm = #0x64
  34dde6: 9b01         	ldr	r3, [sp, #0x4]
  34dde8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34ddec: 681b         	ldr	r3, [r3]
  34ddee: 334c         	adds	r3, #0x4c
  34ddf0: 681c         	ldr	r4, [r3]
  34ddf2: 9b01         	ldr	r3, [sp, #0x4]
  34ddf4: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34ddf8: 9b01         	ldr	r3, [sp, #0x4]
  34ddfa: f503 7382    	add.w	r3, r3, #0x104
  34ddfe: aa04         	add	r2, sp, #0x10
  34de00: 4610         	mov	r0, r2
  34de02: 4619         	mov	r1, r3
  34de04: ed9f 0a2f    	vldr	s0, [pc, #188]          @ 0x34dec4 <Joypad::updateStep(float)+0x36c>
  34de08: f7fe fc62    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x173c
  34de0c: 9b01         	ldr	r3, [sp, #0x4]
  34de0e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34de12: 681b         	ldr	r3, [r3]
  34de14: 3350         	adds	r3, #0x50
  34de16: 681b         	ldr	r3, [r3]
  34de18: 9a01         	ldr	r2, [sp, #0x4]
  34de1a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34de1e: 4610         	mov	r0, r2
  34de20: 4798         	blx	r3
  34de22: 4603         	mov	r3, r0
  34de24: aa06         	add	r2, sp, #0x18
  34de26: 4610         	mov	r0, r2
  34de28: 4619         	mov	r1, r3
  34de2a: ed9f 0a27    	vldr	s0, [pc, #156]          @ 0x34dec8 <Joypad::updateStep(float)+0x370>
  34de2e: f7fe fc4f    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x1762
  34de32: a908         	add	r1, sp, #0x20
  34de34: aa04         	add	r2, sp, #0x10
  34de36: ab06         	add	r3, sp, #0x18
  34de38: 4608         	mov	r0, r1
  34de3a: 4611         	mov	r1, r2
  34de3c: 461a         	mov	r2, r3
  34de3e: f7fe fc27    	bl	0x34c690 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1a4> @ imm = #-0x17b2
  34de42: ab08         	add	r3, sp, #0x20
  34de44: 4628         	mov	r0, r5
  34de46: 4619         	mov	r1, r3
  34de48: 47a0         	blx	r4
  34de4a: e7ff         	b	0x34de4c <Joypad::updateStep(float)+0x2f4> @ imm = #-0x2
  34de4c: 9b01         	ldr	r3, [sp, #0x4]
  34de4e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  34de52: 681b         	ldr	r3, [r3]
  34de54: 334c         	adds	r3, #0x4c
  34de56: 681b         	ldr	r3, [r3]
  34de58: 9a01         	ldr	r2, [sp, #0x4]
  34de5a: f8d2 10f4    	ldr.w	r1, [r2, #0xf4]
  34de5e: 9a01         	ldr	r2, [sp, #0x4]
  34de60: 32fc         	adds	r2, #0xfc
  34de62: 4608         	mov	r0, r1
  34de64: 4611         	mov	r1, r2
  34de66: 4798         	blx	r3
  34de68: 9b01         	ldr	r3, [sp, #0x4]
  34de6a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34de6e: 681b         	ldr	r3, [r3]
  34de70: 334c         	adds	r3, #0x4c
  34de72: 681b         	ldr	r3, [r3]
  34de74: 9a01         	ldr	r2, [sp, #0x4]
  34de76: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  34de7a: 9a01         	ldr	r2, [sp, #0x4]
  34de7c: f502 7282    	add.w	r2, r2, #0x104
  34de80: 4608         	mov	r0, r1
  34de82: 4611         	mov	r1, r2
  34de84: 4798         	blx	r3
  34de86: 9b01         	ldr	r3, [sp, #0x4]
  34de88: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34de8c: 681b         	ldr	r3, [r3]
  34de8e: 334c         	adds	r3, #0x4c
  34de90: 681b         	ldr	r3, [r3]
  34de92: 9a01         	ldr	r2, [sp, #0x4]
  34de94: f8d2 10ec    	ldr.w	r1, [r2, #0xec]
  34de98: 9a01         	ldr	r2, [sp, #0x4]
  34de9a: 32fc         	adds	r2, #0xfc
  34de9c: 4608         	mov	r0, r1
  34de9e: 4611         	mov	r1, r2
  34dea0: 4798         	blx	r3
  34dea2: 9b01         	ldr	r3, [sp, #0x4]
  34dea4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34dea8: 681b         	ldr	r3, [r3]
  34deaa: 334c         	adds	r3, #0x4c
  34deac: 681b         	ldr	r3, [r3]
  34deae: 9a01         	ldr	r2, [sp, #0x4]
  34deb0: f8d2 10f0    	ldr.w	r1, [r2, #0xf0]
  34deb4: 9a01         	ldr	r2, [sp, #0x4]
  34deb6: f502 7282    	add.w	r2, r2, #0x104
  34deba: 4608         	mov	r0, r1
  34debc: 4611         	mov	r1, r2
  34debe: 4798         	blx	r3
  34dec0: b00b         	add	sp, #0x2c
  34dec2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x34dec3); words below are literal-pool data ---
  34dec4: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  34dec6: 3e4c         	subs	r6, #0x4c
  34dec8: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  34deca: 3f4c         	subs	r7, #0x4c
  34decc: 4ea6         	ldr	r6, [pc, #0x298]        @ 0x34e168 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x290>
  34dece: 005e         	lsls	r6, r3, #0x1
  34ded0: d804         	bhi	0x34dedc <Joypad::beginTouch(cocos2d::CCPoint, long)+0x4> @ imm = #0x8
  34ded2: ffff d808    	vtbl.8	d29, {d15}, d8
  34ded6: ffff b500    	<unknown>

// ==== Joypad::beginTouch
//      file offset 0x34ded8 (= ELF address; Ghidra 0x35ded8), 688 bytes, Thumb-2
  34ded8: b500         	push	{lr}
  34deda: b08f         	sub	sp, #0x3c
  34dedc: 9003         	str	r0, [sp, #0xc]
  34dede: 9102         	str	r1, [sp, #0x8]
  34dee0: 9201         	str	r2, [sp, #0x4]
  34dee2: 9b03         	ldr	r3, [sp, #0xc]
  34dee4: 33fc         	adds	r3, #0xfc
  34dee6: aa0a         	add	r2, sp, #0x28
  34dee8: 4610         	mov	r0, r2
  34deea: 4619         	mov	r1, r3
  34deec: 9a02         	ldr	r2, [sp, #0x8]
  34deee: f7fe fbdf    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1842
  34def2: ab0a         	add	r3, sp, #0x28
  34def4: 4618         	mov	r0, r3
  34def6: f293 fc1b    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x293836
  34defa: 4603         	mov	r3, r0
  34defc: 9304         	str	r3, [sp, #0x10]
  34defe: 9b03         	ldr	r3, [sp, #0xc]
  34df00: f503 7382    	add.w	r3, r3, #0x104
  34df04: aa0a         	add	r2, sp, #0x28
  34df06: 4610         	mov	r0, r2
  34df08: 4619         	mov	r1, r3
  34df0a: 9a02         	ldr	r2, [sp, #0x8]
  34df0c: f7fe fbd0    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1860
  34df10: ab0a         	add	r3, sp, #0x28
  34df12: 4618         	mov	r0, r3
  34df14: f293 fc0c    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x293818
  34df18: 4603         	mov	r3, r0
  34df1a: 9305         	str	r3, [sp, #0x14]
  34df1c: 9b03         	ldr	r3, [sp, #0xc]
  34df1e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  34df22: 2b00         	cmp	r3, #0x0
  34df24: f040 80a9    	bne.w	0x34e07a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x1a2> @ imm = #0x152
  34df28: ed9d 7a04    	vldr	s14, [sp, #16]
  34df2c: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x34e184 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2ac>
  34df30: eeb4 7ae7    	vcmpe.f32	s14, s15
  34df34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34df38: f140 809f    	bpl.w	0x34e07a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x1a2> @ imm = #0x13e
  34df3c: 9b03         	ldr	r3, [sp, #0xc]
  34df3e: f893 3132    	ldrb.w	r3, [r3, #0x132]
  34df42: f083 0301    	eor	r3, r3, #0x1
  34df46: b2db         	uxtb	r3, r3
  34df48: 2b00         	cmp	r3, #0x0
  34df4a: f000 8096    	beq.w	0x34e07a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x1a2> @ imm = #0x12c
  34df4e: 9b03         	ldr	r3, [sp, #0xc]
  34df50: 9a01         	ldr	r2, [sp, #0x4]
  34df52: f8c3 210c    	str.w	r2, [r3, #0x10c]
  34df56: 9b03         	ldr	r3, [sp, #0xc]
  34df58: f503 738a    	add.w	r3, r3, #0x114
  34df5c: 4618         	mov	r0, r3
  34df5e: 9902         	ldr	r1, [sp, #0x8]
  34df60: f244 fef4    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244de8
  34df64: 9b03         	ldr	r3, [sp, #0xc]
  34df66: 33fc         	adds	r3, #0xfc
  34df68: aa0a         	add	r2, sp, #0x28
  34df6a: 4610         	mov	r0, r2
  34df6c: 9902         	ldr	r1, [sp, #0x8]
  34df6e: 461a         	mov	r2, r3
  34df70: f7fe fb9e    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x18c4
  34df74: 9b03         	ldr	r3, [sp, #0xc]
  34df76: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34df7a: 2b01         	cmp	r3, #0x1
  34df7c: d004         	beq	0x34df88 <Joypad::beginTouch(cocos2d::CCPoint, long)+0xb0> @ imm = #0x8
  34df7e: 9b03         	ldr	r3, [sp, #0xc]
  34df80: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34df84: 2b03         	cmp	r3, #0x3
  34df86: d105         	bne	0x34df94 <Joypad::beginTouch(cocos2d::CCPoint, long)+0xbc> @ imm = #0xa
  34df88: eddd 7a0a    	vldr	s15, [sp, #40]
  34df8c: eef1 7a67    	vneg.f32	s15, s15
  34df90: edcd 7a0a    	vstr	s15, [sp, #40]
  34df94: 9b03         	ldr	r3, [sp, #0xc]
  34df96: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34df9a: 2b02         	cmp	r3, #0x2
  34df9c: d004         	beq	0x34dfa8 <Joypad::beginTouch(cocos2d::CCPoint, long)+0xd0> @ imm = #0x8
  34df9e: 9b03         	ldr	r3, [sp, #0xc]
  34dfa0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34dfa4: 2b03         	cmp	r3, #0x3
  34dfa6: d105         	bne	0x34dfb4 <Joypad::beginTouch(cocos2d::CCPoint, long)+0xdc> @ imm = #0xa
  34dfa8: eddd 7a0b    	vldr	s15, [sp, #44]
  34dfac: eef1 7a67    	vneg.f32	s15, s15
  34dfb0: edcd 7a0b    	vstr	s15, [sp, #44]
  34dfb4: eddd 7a0a    	vldr	s15, [sp, #40]
  34dfb8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34dfbc: eddd 7a0b    	vldr	s15, [sp, #44]
  34dfc0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34dfc4: ab06         	add	r3, sp, #0x18
  34dfc6: 4618         	mov	r0, r3
  34dfc8: eeb0 0b46    	vmov.f64	d0, d6
  34dfcc: eeb0 1b47    	vmov.f64	d1, d7
  34dfd0: f7fe fb8e    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x18e4
  34dfd4: ab06         	add	r3, sp, #0x18
  34dfd6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34dfd8: f7fe fbce    	bl	0x34c778 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x28c> @ imm = #-0x1864
  34dfdc: 4602         	mov	r2, r0
  34dfde: 9b03         	ldr	r3, [sp, #0xc]
  34dfe0: f8c3 2124    	str.w	r2, [r3, #0x124]
  34dfe4: 9b03         	ldr	r3, [sp, #0xc]
  34dfe6: f893 312c    	ldrb.w	r3, [r3, #0x12c]
  34dfea: f083 0301    	eor	r3, r3, #0x1
  34dfee: b2db         	uxtb	r3, r3
  34dff0: 2b00         	cmp	r3, #0x0
  34dff2: d005         	beq	0x34e000 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x128> @ imm = #0xa
  34dff4: 9b03         	ldr	r3, [sp, #0xc]
  34dff6: 33fc         	adds	r3, #0xfc
  34dff8: 4618         	mov	r0, r3
  34dffa: 9902         	ldr	r1, [sp, #0x8]
  34dffc: f244 fea6    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244d4c
  34e000: 9b03         	ldr	r3, [sp, #0xc]
  34e002: 2201         	movs	r2, #0x1
  34e004: f883 2130    	strb.w	r2, [r3, #0x130]
  34e008: 9b03         	ldr	r3, [sp, #0xc]
  34e00a: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e00e: f083 0301    	eor	r3, r3, #0x1
  34e012: b2db         	uxtb	r3, r3
  34e014: 2b00         	cmp	r3, #0x0
  34e016: d02e         	beq	0x34e076 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x19e> @ imm = #0x5c
  34e018: 9b03         	ldr	r3, [sp, #0xc]
  34e01a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  34e01e: ee07 3a90    	vmov	s15, r3
  34e022: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  34e026: eddd 7a04    	vldr	s15, [sp, #16]
  34e02a: eeb4 7ae7    	vcmpe.f32	s14, s15
  34e02e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34e032: d510         	bpl	0x34e056 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x17e> @ imm = #0x20
  34e034: 9b03         	ldr	r3, [sp, #0xc]
  34e036: 2201         	movs	r2, #0x1
  34e038: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e03c: 9b03         	ldr	r3, [sp, #0xc]
  34e03e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e042: 681b         	ldr	r3, [r3]
  34e044: 3390         	adds	r3, #0x90
  34e046: 681b         	ldr	r3, [r3]
  34e048: 9a03         	ldr	r2, [sp, #0xc]
  34e04a: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e04e: 4610         	mov	r0, r2
  34e050: 2101         	movs	r1, #0x1
  34e052: 4798         	blx	r3
  34e054: e00f         	b	0x34e076 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x19e> @ imm = #0x1e
  34e056: 9b03         	ldr	r3, [sp, #0xc]
  34e058: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e05c: 681b         	ldr	r3, [r3]
  34e05e: 3390         	adds	r3, #0x90
  34e060: 681b         	ldr	r3, [r3]
  34e062: 9a03         	ldr	r2, [sp, #0xc]
  34e064: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e068: 4610         	mov	r0, r2
  34e06a: 2100         	movs	r1, #0x0
  34e06c: 4798         	blx	r3
  34e06e: 9b03         	ldr	r3, [sp, #0xc]
  34e070: 2200         	movs	r2, #0x0
  34e072: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e076: 2301         	movs	r3, #0x1
  34e078: e080         	b	0x34e17c <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2a4> @ imm = #0x100
  34e07a: 9b03         	ldr	r3, [sp, #0xc]
  34e07c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  34e080: 2b00         	cmp	r3, #0x0
  34e082: d17a         	bne	0x34e17a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2a2> @ imm = #0xf4
  34e084: ed9d 7a05    	vldr	s14, [sp, #20]
  34e088: eddf 7a3e    	vldr	s15, [pc, #248]         @ 0x34e184 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2ac>
  34e08c: eeb4 7ae7    	vcmpe.f32	s14, s15
  34e090: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34e094: d571         	bpl	0x34e17a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2a2> @ imm = #0xe2
  34e096: 9b03         	ldr	r3, [sp, #0xc]
  34e098: f893 3131    	ldrb.w	r3, [r3, #0x131]
  34e09c: f083 0301    	eor	r3, r3, #0x1
  34e0a0: b2db         	uxtb	r3, r3
  34e0a2: 2b00         	cmp	r3, #0x0
  34e0a4: d069         	beq	0x34e17a <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2a2> @ imm = #0xd2
  34e0a6: 9b03         	ldr	r3, [sp, #0xc]
  34e0a8: 9a01         	ldr	r2, [sp, #0x4]
  34e0aa: f8c3 2110    	str.w	r2, [r3, #0x110]
  34e0ae: 9b03         	ldr	r3, [sp, #0xc]
  34e0b0: f503 738e    	add.w	r3, r3, #0x11c
  34e0b4: 4618         	mov	r0, r3
  34e0b6: 9902         	ldr	r1, [sp, #0x8]
  34e0b8: f244 fe48    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244c90
  34e0bc: 9b03         	ldr	r3, [sp, #0xc]
  34e0be: f503 7382    	add.w	r3, r3, #0x104
  34e0c2: aa06         	add	r2, sp, #0x18
  34e0c4: 4610         	mov	r0, r2
  34e0c6: 9902         	ldr	r1, [sp, #0x8]
  34e0c8: 461a         	mov	r2, r3
  34e0ca: f7fe faf1    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1a1e
  34e0ce: 9b03         	ldr	r3, [sp, #0xc]
  34e0d0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e0d4: 2b01         	cmp	r3, #0x1
  34e0d6: d004         	beq	0x34e0e2 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x20a> @ imm = #0x8
  34e0d8: 9b03         	ldr	r3, [sp, #0xc]
  34e0da: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e0de: 2b03         	cmp	r3, #0x3
  34e0e0: d105         	bne	0x34e0ee <Joypad::beginTouch(cocos2d::CCPoint, long)+0x216> @ imm = #0xa
  34e0e2: eddd 7a06    	vldr	s15, [sp, #24]
  34e0e6: eef1 7a67    	vneg.f32	s15, s15
  34e0ea: edcd 7a06    	vstr	s15, [sp, #24]
  34e0ee: 9b03         	ldr	r3, [sp, #0xc]
  34e0f0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e0f4: 2b02         	cmp	r3, #0x2
  34e0f6: d004         	beq	0x34e102 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x22a> @ imm = #0x8
  34e0f8: 9b03         	ldr	r3, [sp, #0xc]
  34e0fa: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e0fe: 2b03         	cmp	r3, #0x3
  34e100: d105         	bne	0x34e10e <Joypad::beginTouch(cocos2d::CCPoint, long)+0x236> @ imm = #0xa
  34e102: eddd 7a07    	vldr	s15, [sp, #28]
  34e106: eef1 7a67    	vneg.f32	s15, s15
  34e10a: edcd 7a07    	vstr	s15, [sp, #28]
  34e10e: eddd 7a06    	vldr	s15, [sp, #24]
  34e112: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34e116: eddd 7a07    	vldr	s15, [sp, #28]
  34e11a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e11e: ab0a         	add	r3, sp, #0x28
  34e120: 4618         	mov	r0, r3
  34e122: eeb0 0b46    	vmov.f64	d0, d6
  34e126: eeb0 1b47    	vmov.f64	d1, d7
  34e12a: f7fe fae1    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x1a3e
  34e12e: ab0a         	add	r3, sp, #0x28
  34e130: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34e132: f7fe fb21    	bl	0x34c778 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x28c> @ imm = #-0x19be
  34e136: 4602         	mov	r2, r0
  34e138: 9b03         	ldr	r3, [sp, #0xc]
  34e13a: f8c3 2128    	str.w	r2, [r3, #0x128]
  34e13e: 9b03         	ldr	r3, [sp, #0xc]
  34e140: f893 312c    	ldrb.w	r3, [r3, #0x12c]
  34e144: f083 0301    	eor	r3, r3, #0x1
  34e148: b2db         	uxtb	r3, r3
  34e14a: 2b00         	cmp	r3, #0x0
  34e14c: d006         	beq	0x34e15c <Joypad::beginTouch(cocos2d::CCPoint, long)+0x284> @ imm = #0xc
  34e14e: 9b03         	ldr	r3, [sp, #0xc]
  34e150: f503 7382    	add.w	r3, r3, #0x104
  34e154: 4618         	mov	r0, r3
  34e156: 9902         	ldr	r1, [sp, #0x8]
  34e158: f244 fdf8    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244bf0
  34e15c: 9b03         	ldr	r3, [sp, #0xc]
  34e15e: 2201         	movs	r2, #0x1
  34e160: f883 212f    	strb.w	r2, [r3, #0x12f]
  34e164: 9b03         	ldr	r3, [sp, #0xc]
  34e166: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e16a: 2b00         	cmp	r3, #0x0
  34e16c: d003         	beq	0x34e176 <Joypad::beginTouch(cocos2d::CCPoint, long)+0x29e> @ imm = #0x6
  34e16e: 9b03         	ldr	r3, [sp, #0xc]
  34e170: 2201         	movs	r2, #0x1
  34e172: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e176: 2301         	movs	r3, #0x1
  34e178: e000         	b	0x34e17c <Joypad::beginTouch(cocos2d::CCPoint, long)+0x2a4> @ imm = #0x0
  34e17a: 2300         	movs	r3, #0x0
  34e17c: 4618         	mov	r0, r3
  34e17e: b00f         	add	sp, #0x3c
  34e180: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34e183); words below are literal-pool data ---
  34e184: 0000         	movs	r0, r0
  34e186: 42b4         	cmp	r4, r6

// ==== Joypad::touchBeganHandler
//      file offset 0x34e188 (= ELF address; Ghidra 0x35e188), 38 bytes, Thumb-2
  34e188: b500         	push	{lr}
  34e18a: b087         	sub	sp, #0x1c
  34e18c: 9003         	str	r0, [sp, #0xc]
  34e18e: 9102         	str	r1, [sp, #0x8]
  34e190: 9201         	str	r2, [sp, #0x4]
  34e192: ab04         	add	r3, sp, #0x10
  34e194: 4618         	mov	r0, r3
  34e196: 9902         	ldr	r1, [sp, #0x8]
  34e198: f244 fdb8    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x244b70
  34e19c: ab04         	add	r3, sp, #0x10
  34e19e: 9803         	ldr	r0, [sp, #0xc]
  34e1a0: 4619         	mov	r1, r3
  34e1a2: 9a01         	ldr	r2, [sp, #0x4]
  34e1a4: f7ff fe98    	bl	0x34ded8 <Joypad::beginTouch(cocos2d::CCPoint, long)> @ imm = #-0x2d0
  34e1a8: b007         	add	sp, #0x1c
  34e1aa: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::touchMoveHandler
//      file offset 0x34e1b0 (= ELF address; Ghidra 0x35e1b0), 544 bytes, Thumb-2
  34e1b0: b500         	push	{lr}
  34e1b2: b08f         	sub	sp, #0x3c
  34e1b4: 9003         	str	r0, [sp, #0xc]
  34e1b6: 9102         	str	r1, [sp, #0x8]
  34e1b8: 9201         	str	r2, [sp, #0x4]
  34e1ba: 9b03         	ldr	r3, [sp, #0xc]
  34e1bc: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  34e1c0: 9b01         	ldr	r3, [sp, #0x4]
  34e1c2: 429a         	cmp	r2, r3
  34e1c4: f040 809a    	bne.w	0x34e2fc <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x14c> @ imm = #0x134
  34e1c8: 9b03         	ldr	r3, [sp, #0xc]
  34e1ca: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  34e1ce: 2b00         	cmp	r3, #0x0
  34e1d0: f000 8094    	beq.w	0x34e2fc <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x14c> @ imm = #0x128
  34e1d4: 9b03         	ldr	r3, [sp, #0xc]
  34e1d6: f503 738a    	add.w	r3, r3, #0x114
  34e1da: 4618         	mov	r0, r3
  34e1dc: 9902         	ldr	r1, [sp, #0x8]
  34e1de: f244 fdb5    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244b6a
  34e1e2: 9b03         	ldr	r3, [sp, #0xc]
  34e1e4: 33fc         	adds	r3, #0xfc
  34e1e6: aa04         	add	r2, sp, #0x10
  34e1e8: 4610         	mov	r0, r2
  34e1ea: 9902         	ldr	r1, [sp, #0x8]
  34e1ec: 461a         	mov	r2, r3
  34e1ee: f7fe fa5f    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1b42
  34e1f2: 9b03         	ldr	r3, [sp, #0xc]
  34e1f4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e1f8: 2b01         	cmp	r3, #0x1
  34e1fa: d004         	beq	0x34e206 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x56> @ imm = #0x8
  34e1fc: 9b03         	ldr	r3, [sp, #0xc]
  34e1fe: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e202: 2b03         	cmp	r3, #0x3
  34e204: d105         	bne	0x34e212 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x62> @ imm = #0xa
  34e206: eddd 7a04    	vldr	s15, [sp, #16]
  34e20a: eef1 7a67    	vneg.f32	s15, s15
  34e20e: edcd 7a04    	vstr	s15, [sp, #16]
  34e212: 9b03         	ldr	r3, [sp, #0xc]
  34e214: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e218: 2b02         	cmp	r3, #0x2
  34e21a: d004         	beq	0x34e226 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x76> @ imm = #0x8
  34e21c: 9b03         	ldr	r3, [sp, #0xc]
  34e21e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e222: 2b03         	cmp	r3, #0x3
  34e224: d105         	bne	0x34e232 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x82> @ imm = #0xa
  34e226: eddd 7a05    	vldr	s15, [sp, #20]
  34e22a: eef1 7a67    	vneg.f32	s15, s15
  34e22e: edcd 7a05    	vstr	s15, [sp, #20]
  34e232: eddd 7a04    	vldr	s15, [sp, #16]
  34e236: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34e23a: eddd 7a05    	vldr	s15, [sp, #20]
  34e23e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e242: ab06         	add	r3, sp, #0x18
  34e244: 4618         	mov	r0, r3
  34e246: eeb0 0b46    	vmov.f64	d0, d6
  34e24a: eeb0 1b47    	vmov.f64	d1, d7
  34e24e: f7fe fa4f    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x1b62
  34e252: ab06         	add	r3, sp, #0x18
  34e254: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34e256: f7fe fa8f    	bl	0x34c778 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x28c> @ imm = #-0x1ae2
  34e25a: 4602         	mov	r2, r0
  34e25c: 9b03         	ldr	r3, [sp, #0xc]
  34e25e: f8c3 2124    	str.w	r2, [r3, #0x124]
  34e262: 9b03         	ldr	r3, [sp, #0xc]
  34e264: 2201         	movs	r2, #0x1
  34e266: f883 2130    	strb.w	r2, [r3, #0x130]
  34e26a: 9b03         	ldr	r3, [sp, #0xc]
  34e26c: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e270: f083 0301    	eor	r3, r3, #0x1
  34e274: b2db         	uxtb	r3, r3
  34e276: 2b00         	cmp	r3, #0x0
  34e278: d040         	beq	0x34e2fc <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x14c> @ imm = #0x80
  34e27a: 9b03         	ldr	r3, [sp, #0xc]
  34e27c: 33fc         	adds	r3, #0xfc
  34e27e: aa0a         	add	r2, sp, #0x28
  34e280: 4610         	mov	r0, r2
  34e282: 4619         	mov	r1, r3
  34e284: 9a02         	ldr	r2, [sp, #0x8]
  34e286: f7fe fa13    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1bda
  34e28a: ab0a         	add	r3, sp, #0x28
  34e28c: 4618         	mov	r0, r3
  34e28e: f293 fa4f    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x29349e
  34e292: ee07 0a10    	vmov	s14, r0
  34e296: 9b03         	ldr	r3, [sp, #0xc]
  34e298: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  34e29c: ee06 3a90    	vmov	s13, r3
  34e2a0: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34e2a4: eeb4 7ae7    	vcmpe.f32	s14, s15
  34e2a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34e2ac: bfd4         	ite	le
  34e2ae: 2300         	movle	r3, #0x0
  34e2b0: 2301         	movgt	r3, #0x1
  34e2b2: b2db         	uxtb	r3, r3
  34e2b4: 2b00         	cmp	r3, #0x0
  34e2b6: d010         	beq	0x34e2da <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x12a> @ imm = #0x20
  34e2b8: 9b03         	ldr	r3, [sp, #0xc]
  34e2ba: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e2be: 681b         	ldr	r3, [r3]
  34e2c0: 3390         	adds	r3, #0x90
  34e2c2: 681b         	ldr	r3, [r3]
  34e2c4: 9a03         	ldr	r2, [sp, #0xc]
  34e2c6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e2ca: 4610         	mov	r0, r2
  34e2cc: 2101         	movs	r1, #0x1
  34e2ce: 4798         	blx	r3
  34e2d0: 9b03         	ldr	r3, [sp, #0xc]
  34e2d2: 2201         	movs	r2, #0x1
  34e2d4: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e2d8: e010         	b	0x34e2fc <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x14c> @ imm = #0x20
  34e2da: 9b03         	ldr	r3, [sp, #0xc]
  34e2dc: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e2e0: 681b         	ldr	r3, [r3]
  34e2e2: 3390         	adds	r3, #0x90
  34e2e4: 681b         	ldr	r3, [r3]
  34e2e6: 9a03         	ldr	r2, [sp, #0xc]
  34e2e8: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e2ec: 4610         	mov	r0, r2
  34e2ee: 2100         	movs	r1, #0x0
  34e2f0: 4798         	blx	r3
  34e2f2: 9b03         	ldr	r3, [sp, #0xc]
  34e2f4: 2200         	movs	r2, #0x0
  34e2f6: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e2fa: e7ff         	b	0x34e2fc <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x14c> @ imm = #-0x2
  34e2fc: 9b03         	ldr	r3, [sp, #0xc]
  34e2fe: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  34e302: 9b01         	ldr	r3, [sp, #0x4]
  34e304: 429a         	cmp	r2, r3
  34e306: d155         	bne	0x34e3b4 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x204> @ imm = #0xaa
  34e308: 9b03         	ldr	r3, [sp, #0xc]
  34e30a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  34e30e: 2b00         	cmp	r3, #0x0
  34e310: d050         	beq	0x34e3b4 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x204> @ imm = #0xa0
  34e312: 9b03         	ldr	r3, [sp, #0xc]
  34e314: f503 738e    	add.w	r3, r3, #0x11c
  34e318: 4618         	mov	r0, r3
  34e31a: 9902         	ldr	r1, [sp, #0x8]
  34e31c: f244 fd16    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x244a2c
  34e320: 9b03         	ldr	r3, [sp, #0xc]
  34e322: f503 7382    	add.w	r3, r3, #0x104
  34e326: aa04         	add	r2, sp, #0x10
  34e328: 4610         	mov	r0, r2
  34e32a: 9902         	ldr	r1, [sp, #0x8]
  34e32c: 461a         	mov	r2, r3
  34e32e: f7fe f9bf    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x1c82
  34e332: 9b03         	ldr	r3, [sp, #0xc]
  34e334: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e338: 2b01         	cmp	r3, #0x1
  34e33a: d004         	beq	0x34e346 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x196> @ imm = #0x8
  34e33c: 9b03         	ldr	r3, [sp, #0xc]
  34e33e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e342: 2b03         	cmp	r3, #0x3
  34e344: d105         	bne	0x34e352 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x1a2> @ imm = #0xa
  34e346: eddd 7a04    	vldr	s15, [sp, #16]
  34e34a: eef1 7a67    	vneg.f32	s15, s15
  34e34e: edcd 7a04    	vstr	s15, [sp, #16]
  34e352: 9b03         	ldr	r3, [sp, #0xc]
  34e354: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e358: 2b02         	cmp	r3, #0x2
  34e35a: d004         	beq	0x34e366 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x1b6> @ imm = #0x8
  34e35c: 9b03         	ldr	r3, [sp, #0xc]
  34e35e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e362: 2b03         	cmp	r3, #0x3
  34e364: d105         	bne	0x34e372 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x1c2> @ imm = #0xa
  34e366: eddd 7a05    	vldr	s15, [sp, #20]
  34e36a: eef1 7a67    	vneg.f32	s15, s15
  34e36e: edcd 7a05    	vstr	s15, [sp, #20]
  34e372: eddd 7a04    	vldr	s15, [sp, #16]
  34e376: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34e37a: eddd 7a05    	vldr	s15, [sp, #20]
  34e37e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e382: ab0a         	add	r3, sp, #0x28
  34e384: 4618         	mov	r0, r3
  34e386: eeb0 0b46    	vmov.f64	d0, d6
  34e38a: eeb0 1b47    	vmov.f64	d1, d7
  34e38e: f7fe f9af    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x1ca2
  34e392: ab0a         	add	r3, sp, #0x28
  34e394: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34e396: f7fe f9ef    	bl	0x34c778 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x28c> @ imm = #-0x1c22
  34e39a: 4602         	mov	r2, r0
  34e39c: 9b03         	ldr	r3, [sp, #0xc]
  34e39e: f8c3 2128    	str.w	r2, [r3, #0x128]
  34e3a2: 9b03         	ldr	r3, [sp, #0xc]
  34e3a4: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e3a8: 2b00         	cmp	r3, #0x0
  34e3aa: d003         	beq	0x34e3b4 <Joypad::touchMoveHandler(cocos2d::CCPoint, long)+0x204> @ imm = #0x6
  34e3ac: 9b03         	ldr	r3, [sp, #0xc]
  34e3ae: 2201         	movs	r2, #0x1
  34e3b0: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e3b4: ab04         	add	r3, sp, #0x10
  34e3b6: 4618         	mov	r0, r3
  34e3b8: 9902         	ldr	r1, [sp, #0x8]
  34e3ba: f244 fca7    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x24494e
  34e3be: ab04         	add	r3, sp, #0x10
  34e3c0: 9803         	ldr	r0, [sp, #0xc]
  34e3c2: 4619         	mov	r1, r3
  34e3c4: 9a01         	ldr	r2, [sp, #0x4]
  34e3c6: f7ff fd87    	bl	0x34ded8 <Joypad::beginTouch(cocos2d::CCPoint, long)> @ imm = #-0x4f2
  34e3ca: b00f         	add	sp, #0x3c
  34e3cc: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::touchEndHandler
//      file offset 0x34e3d0 (= ELF address; Ghidra 0x35e3d0), 170 bytes, Thumb-2
  34e3d0: b500         	push	{lr}
  34e3d2: b085         	sub	sp, #0x14
  34e3d4: 9003         	str	r0, [sp, #0xc]
  34e3d6: 9102         	str	r1, [sp, #0x8]
  34e3d8: 9201         	str	r2, [sp, #0x4]
  34e3da: 9b03         	ldr	r3, [sp, #0xc]
  34e3dc: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  34e3e0: 9b01         	ldr	r3, [sp, #0x4]
  34e3e2: 429a         	cmp	r2, r3
  34e3e4: d123         	bne	0x34e42e <Joypad::touchEndHandler(cocos2d::CCPoint, long)+0x5e> @ imm = #0x46
  34e3e6: 9b03         	ldr	r3, [sp, #0xc]
  34e3e8: 2200         	movs	r2, #0x0
  34e3ea: f8c3 210c    	str.w	r2, [r3, #0x10c]
  34e3ee: 9b03         	ldr	r3, [sp, #0xc]
  34e3f0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e3f4: 681b         	ldr	r3, [r3]
  34e3f6: 3390         	adds	r3, #0x90
  34e3f8: 681b         	ldr	r3, [r3]
  34e3fa: 9a03         	ldr	r2, [sp, #0xc]
  34e3fc: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e400: 4610         	mov	r0, r2
  34e402: 2100         	movs	r1, #0x0
  34e404: 4798         	blx	r3
  34e406: 9b03         	ldr	r3, [sp, #0xc]
  34e408: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e40c: f083 0301    	eor	r3, r3, #0x1
  34e410: b2db         	uxtb	r3, r3
  34e412: 2b00         	cmp	r3, #0x0
  34e414: d003         	beq	0x34e41e <Joypad::touchEndHandler(cocos2d::CCPoint, long)+0x4e> @ imm = #0x6
  34e416: 9b03         	ldr	r3, [sp, #0xc]
  34e418: 2200         	movs	r2, #0x0
  34e41a: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e41e: 9b03         	ldr	r3, [sp, #0xc]
  34e420: 2200         	movs	r2, #0x0
  34e422: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e426: 9b03         	ldr	r3, [sp, #0xc]
  34e428: 2200         	movs	r2, #0x0
  34e42a: f883 2130    	strb.w	r2, [r3, #0x130]
  34e42e: 9b03         	ldr	r3, [sp, #0xc]
  34e430: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  34e434: 9b01         	ldr	r3, [sp, #0x4]
  34e436: 429a         	cmp	r2, r3
  34e438: d11c         	bne	0x34e474 <Joypad::touchEndHandler(cocos2d::CCPoint, long)+0xa4> @ imm = #0x38
  34e43a: 9b03         	ldr	r3, [sp, #0xc]
  34e43c: 2200         	movs	r2, #0x0
  34e43e: f8c3 2110    	str.w	r2, [r3, #0x110]
  34e442: 9b03         	ldr	r3, [sp, #0xc]
  34e444: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34e448: 681b         	ldr	r3, [r3]
  34e44a: 3390         	adds	r3, #0x90
  34e44c: 681b         	ldr	r3, [r3]
  34e44e: 9a03         	ldr	r2, [sp, #0xc]
  34e450: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  34e454: 4610         	mov	r0, r2
  34e456: 2100         	movs	r1, #0x0
  34e458: 4798         	blx	r3
  34e45a: 9b03         	ldr	r3, [sp, #0xc]
  34e45c: 2200         	movs	r2, #0x0
  34e45e: f883 212f    	strb.w	r2, [r3, #0x12f]
  34e462: 9b03         	ldr	r3, [sp, #0xc]
  34e464: f893 3150    	ldrb.w	r3, [r3, #0x150]
  34e468: 2b00         	cmp	r3, #0x0
  34e46a: d003         	beq	0x34e474 <Joypad::touchEndHandler(cocos2d::CCPoint, long)+0xa4> @ imm = #0x6
  34e46c: 9b03         	ldr	r3, [sp, #0xc]
  34e46e: 2200         	movs	r2, #0x0
  34e470: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e474: b005         	add	sp, #0x14
  34e476: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::cancelTouches
//      file offset 0x34e47c (= ELF address; Ghidra 0x35e47c), 100 bytes, Thumb-2
  34e47c: b500         	push	{lr}
  34e47e: b083         	sub	sp, #0xc
  34e480: 9001         	str	r0, [sp, #0x4]
  34e482: 9b01         	ldr	r3, [sp, #0x4]
  34e484: 2200         	movs	r2, #0x0
  34e486: f8c3 210c    	str.w	r2, [r3, #0x10c]
  34e48a: 9b01         	ldr	r3, [sp, #0x4]
  34e48c: 2200         	movs	r2, #0x0
  34e48e: f8c3 2110    	str.w	r2, [r3, #0x110]
  34e492: 9b01         	ldr	r3, [sp, #0x4]
  34e494: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34e498: 681b         	ldr	r3, [r3]
  34e49a: 3390         	adds	r3, #0x90
  34e49c: 681b         	ldr	r3, [r3]
  34e49e: 9a01         	ldr	r2, [sp, #0x4]
  34e4a0: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  34e4a4: 4610         	mov	r0, r2
  34e4a6: 2100         	movs	r1, #0x0
  34e4a8: 4798         	blx	r3
  34e4aa: 9b01         	ldr	r3, [sp, #0x4]
  34e4ac: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34e4b0: 681b         	ldr	r3, [r3]
  34e4b2: 3390         	adds	r3, #0x90
  34e4b4: 681b         	ldr	r3, [r3]
  34e4b6: 9a01         	ldr	r2, [sp, #0x4]
  34e4b8: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34e4bc: 4610         	mov	r0, r2
  34e4be: 2100         	movs	r1, #0x0
  34e4c0: 4798         	blx	r3
  34e4c2: 9b01         	ldr	r3, [sp, #0x4]
  34e4c4: 2200         	movs	r2, #0x0
  34e4c6: f883 212e    	strb.w	r2, [r3, #0x12e]
  34e4ca: 9b01         	ldr	r3, [sp, #0x4]
  34e4cc: 2200         	movs	r2, #0x0
  34e4ce: f883 2130    	strb.w	r2, [r3, #0x130]
  34e4d2: 9b01         	ldr	r3, [sp, #0x4]
  34e4d4: 2200         	movs	r2, #0x0
  34e4d6: f883 212f    	strb.w	r2, [r3, #0x12f]
  34e4da: b003         	add	sp, #0xc
  34e4dc: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::getFireAngle
//      file offset 0x34e4e0 (= ELF address; Ghidra 0x35e4e0), 16 bytes, Thumb-2
  34e4e0: b082         	sub	sp, #0x8
  34e4e2: 9001         	str	r0, [sp, #0x4]
  34e4e4: 9b01         	ldr	r3, [sp, #0x4]
  34e4e6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  34e4ea: 4618         	mov	r0, r3
  34e4ec: b002         	add	sp, #0x8
  34e4ee: 4770         	bx	lr

// ==== Joypad::getDirectionAngle
//      file offset 0x34e4f0 (= ELF address; Ghidra 0x35e4f0), 16 bytes, Thumb-2
  34e4f0: b082         	sub	sp, #0x8
  34e4f2: 9001         	str	r0, [sp, #0x4]
  34e4f4: 9b01         	ldr	r3, [sp, #0x4]
  34e4f6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  34e4fa: 4618         	mov	r0, r3
  34e4fc: b002         	add	sp, #0x8
  34e4fe: 4770         	bx	lr

// ==== Joypad::getOffset
//      file offset 0x34e500 (= ELF address; Ghidra 0x35e500), 68 bytes, Thumb-2
  34e500: b500         	push	{lr}
  34e502: ed2d 8b02    	vpush	{d8}
  34e506: b083         	sub	sp, #0xc
  34e508: 9001         	str	r0, [sp, #0x4]
  34e50a: 9100         	str	r1, [sp]
  34e50c: 9800         	ldr	r0, [sp]
  34e50e: f000 f819    	bl	0x34e544 <Joypad::getXOffset()> @ imm = #0x32
  34e512: ee07 0a90    	vmov	s15, r0
  34e516: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  34e51a: 9800         	ldr	r0, [sp]
  34e51c: f000 f848    	bl	0x34e5b0 <Joypad::getYOffset()> @ imm = #0x90
  34e520: ee07 0a90    	vmov	s15, r0
  34e524: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e528: 9b01         	ldr	r3, [sp, #0x4]
  34e52a: 4618         	mov	r0, r3
  34e52c: eeb0 0b48    	vmov.f64	d0, d8
  34e530: eeb0 1b47    	vmov.f64	d1, d7
  34e534: f7fe f8dc    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x1e48
  34e538: 9801         	ldr	r0, [sp, #0x4]
  34e53a: b003         	add	sp, #0xc
  34e53c: ecbd 8b02    	vpop	{d8}
  34e540: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::getXOffset
//      file offset 0x34e544 (= ELF address; Ghidra 0x35e544), 108 bytes, Thumb-2
  34e544: b500         	push	{lr}
  34e546: b085         	sub	sp, #0x14
  34e548: 9001         	str	r0, [sp, #0x4]
  34e54a: 9b01         	ldr	r3, [sp, #0x4]
  34e54c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34e550: 681b         	ldr	r3, [r3]
  34e552: 3350         	adds	r3, #0x50
  34e554: 681b         	ldr	r3, [r3]
  34e556: 9a01         	ldr	r2, [sp, #0x4]
  34e558: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34e55c: 4610         	mov	r0, r2
  34e55e: 4798         	blx	r3
  34e560: 4603         	mov	r3, r0
  34e562: ed93 7a00    	vldr	s14, [r3]
  34e566: 9b01         	ldr	r3, [sp, #0x4]
  34e568: edd3 7a41    	vldr	s15, [r3, #260]
  34e56c: ee37 7a67    	vsub.f32	s14, s14, s15
  34e570: 9b01         	ldr	r3, [sp, #0x4]
  34e572: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34e576: ee06 3a90    	vmov	s13, r3
  34e57a: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34e57e: eec7 7a27    	vdiv.f32	s15, s14, s15
  34e582: edcd 7a03    	vstr	s15, [sp, #12]
  34e586: 9b01         	ldr	r3, [sp, #0x4]
  34e588: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e58c: 2b01         	cmp	r3, #0x1
  34e58e: d004         	beq	0x34e59a <Joypad::getXOffset()+0x56> @ imm = #0x8
  34e590: 9b01         	ldr	r3, [sp, #0x4]
  34e592: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e596: 2b03         	cmp	r3, #0x3
  34e598: d105         	bne	0x34e5a6 <Joypad::getXOffset()+0x62> @ imm = #0xa
  34e59a: eddd 7a03    	vldr	s15, [sp, #12]
  34e59e: eef1 7a67    	vneg.f32	s15, s15
  34e5a2: edcd 7a03    	vstr	s15, [sp, #12]
  34e5a6: 9b03         	ldr	r3, [sp, #0xc]
  34e5a8: 4618         	mov	r0, r3
  34e5aa: b005         	add	sp, #0x14
  34e5ac: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::getYOffset
//      file offset 0x34e5b0 (= ELF address; Ghidra 0x35e5b0), 108 bytes, Thumb-2
  34e5b0: b500         	push	{lr}
  34e5b2: b085         	sub	sp, #0x14
  34e5b4: 9001         	str	r0, [sp, #0x4]
  34e5b6: 9b01         	ldr	r3, [sp, #0x4]
  34e5b8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34e5bc: 681b         	ldr	r3, [r3]
  34e5be: 3350         	adds	r3, #0x50
  34e5c0: 681b         	ldr	r3, [r3]
  34e5c2: 9a01         	ldr	r2, [sp, #0x4]
  34e5c4: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34e5c8: 4610         	mov	r0, r2
  34e5ca: 4798         	blx	r3
  34e5cc: 4603         	mov	r3, r0
  34e5ce: ed93 7a01    	vldr	s14, [r3, #4]
  34e5d2: 9b01         	ldr	r3, [sp, #0x4]
  34e5d4: edd3 7a42    	vldr	s15, [r3, #264]
  34e5d8: ee37 7a67    	vsub.f32	s14, s14, s15
  34e5dc: 9b01         	ldr	r3, [sp, #0x4]
  34e5de: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34e5e2: ee06 3a90    	vmov	s13, r3
  34e5e6: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34e5ea: eec7 7a27    	vdiv.f32	s15, s14, s15
  34e5ee: edcd 7a03    	vstr	s15, [sp, #12]
  34e5f2: 9b01         	ldr	r3, [sp, #0x4]
  34e5f4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e5f8: 2b02         	cmp	r3, #0x2
  34e5fa: d004         	beq	0x34e606 <Joypad::getYOffset()+0x56> @ imm = #0x8
  34e5fc: 9b01         	ldr	r3, [sp, #0x4]
  34e5fe: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e602: 2b03         	cmp	r3, #0x3
  34e604: d105         	bne	0x34e612 <Joypad::getYOffset()+0x62> @ imm = #0xa
  34e606: eddd 7a03    	vldr	s15, [sp, #12]
  34e60a: eef1 7a67    	vneg.f32	s15, s15
  34e60e: edcd 7a03    	vstr	s15, [sp, #12]
  34e612: 9b03         	ldr	r3, [sp, #0xc]
  34e614: 4618         	mov	r0, r3
  34e616: b005         	add	sp, #0x14
  34e618: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::setMoveDirection
//      file offset 0x34e61c (= ELF address; Ghidra 0x35e61c), 132 bytes, Thumb-2
  34e61c: b082         	sub	sp, #0x8
  34e61e: b570         	push	{r4, r5, r6, lr}
  34e620: b088         	sub	sp, #0x20
  34e622: 9001         	str	r0, [sp, #0x4]
  34e624: a90c         	add	r1, sp, #0x30
  34e626: e881 000c    	stm.w	r1, {r2, r3}
  34e62a: 9b01         	ldr	r3, [sp, #0x4]
  34e62c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34e630: 681b         	ldr	r3, [r3]
  34e632: 334c         	adds	r3, #0x4c
  34e634: 681c         	ldr	r4, [r3]
  34e636: 9b01         	ldr	r3, [sp, #0x4]
  34e638: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34e63c: 9b01         	ldr	r3, [sp, #0x4]
  34e63e: f503 7682    	add.w	r6, r3, #0x104
  34e642: ed9d 7b0c    	vldr	d7, [sp, #48]
  34e646: eef7 6bc7    	vcvt.f32.f64	s13, d7
  34e64a: ed9d 7b0e    	vldr	d7, [sp, #56]
  34e64e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34e652: ab02         	add	r3, sp, #0x8
  34e654: 4618         	mov	r0, r3
  34e656: ee16 1a90    	vmov	r1, s13
  34e65a: ee17 2a90    	vmov	r2, s15
  34e65e: f244 fb47    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24468e
  34e662: 9b01         	ldr	r3, [sp, #0x4]
  34e664: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  34e668: ee07 3a10    	vmov	s14, r3
  34e66c: eef8 7ac7    	vcvt.f32.s32	s15, s14
  34e670: aa04         	add	r2, sp, #0x10
  34e672: ab02         	add	r3, sp, #0x8
  34e674: 4610         	mov	r0, r2
  34e676: 4619         	mov	r1, r3
  34e678: eeb0 0a67    	vmov.f32	s0, s15
  34e67c: f7fe f828    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x1fb0
  34e680: aa06         	add	r2, sp, #0x18
  34e682: ab04         	add	r3, sp, #0x10
  34e684: 4610         	mov	r0, r2
  34e686: 4631         	mov	r1, r6
  34e688: 461a         	mov	r2, r3
  34e68a: f7fe f801    	bl	0x34c690 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1a4> @ imm = #-0x1ffe
  34e68e: ab06         	add	r3, sp, #0x18
  34e690: 4628         	mov	r0, r5
  34e692: 4619         	mov	r1, r3
  34e694: 47a0         	blx	r4
  34e696: b008         	add	sp, #0x20
  34e698: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  34e69c: b002         	add	sp, #0x8
  34e69e: 4770         	bx	lr

// ==== Joypad::setAimDirection
//      file offset 0x34e6a0 (= ELF address; Ghidra 0x35e6a0), 132 bytes, Thumb-2
  34e6a0: b082         	sub	sp, #0x8
  34e6a2: b570         	push	{r4, r5, r6, lr}
  34e6a4: b088         	sub	sp, #0x20
  34e6a6: 9001         	str	r0, [sp, #0x4]
  34e6a8: a90c         	add	r1, sp, #0x30
  34e6aa: e881 000c    	stm.w	r1, {r2, r3}
  34e6ae: 9b01         	ldr	r3, [sp, #0x4]
  34e6b0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34e6b4: 681b         	ldr	r3, [r3]
  34e6b6: 334c         	adds	r3, #0x4c
  34e6b8: 681c         	ldr	r4, [r3]
  34e6ba: 9b01         	ldr	r3, [sp, #0x4]
  34e6bc: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  34e6c0: 9b01         	ldr	r3, [sp, #0x4]
  34e6c2: f103 06fc    	add.w	r6, r3, #0xfc
  34e6c6: ed9d 7b0c    	vldr	d7, [sp, #48]
  34e6ca: eef7 6bc7    	vcvt.f32.f64	s13, d7
  34e6ce: ed9d 7b0e    	vldr	d7, [sp, #56]
  34e6d2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34e6d6: ab02         	add	r3, sp, #0x8
  34e6d8: 4618         	mov	r0, r3
  34e6da: ee16 1a90    	vmov	r1, s13
  34e6de: ee17 2a90    	vmov	r2, s15
  34e6e2: f244 fb05    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x24460a
  34e6e6: 9b01         	ldr	r3, [sp, #0x4]
  34e6e8: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  34e6ec: ee07 3a10    	vmov	s14, r3
  34e6f0: eef8 7ac7    	vcvt.f32.s32	s15, s14
  34e6f4: aa04         	add	r2, sp, #0x10
  34e6f6: ab02         	add	r3, sp, #0x8
  34e6f8: 4610         	mov	r0, r2
  34e6fa: 4619         	mov	r1, r3
  34e6fc: eeb0 0a67    	vmov.f32	s0, s15
  34e700: f7fd ffe6    	bl	0x34c6d0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1e4> @ imm = #-0x2034
  34e704: aa06         	add	r2, sp, #0x18
  34e706: ab04         	add	r3, sp, #0x10
  34e708: 4610         	mov	r0, r2
  34e70a: 4631         	mov	r1, r6
  34e70c: 461a         	mov	r2, r3
  34e70e: f7fd ffbf    	bl	0x34c690 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1a4> @ imm = #-0x2082
  34e712: ab06         	add	r3, sp, #0x18
  34e714: 4628         	mov	r0, r5
  34e716: 4619         	mov	r1, r3
  34e718: 47a0         	blx	r4
  34e71a: b008         	add	sp, #0x20
  34e71c: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  34e720: b002         	add	sp, #0x8
  34e722: 4770         	bx	lr

// ==== Joypad::getDirectionVector
//      file offset 0x34e724 (= ELF address; Ghidra 0x35e724), 154 bytes, Thumb-2
  34e724: b500         	push	{lr}
  34e726: b085         	sub	sp, #0x14
  34e728: 9001         	str	r0, [sp, #0x4]
  34e72a: 9100         	str	r1, [sp]
  34e72c: 9b00         	ldr	r3, [sp]
  34e72e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34e732: 681b         	ldr	r3, [r3]
  34e734: 3350         	adds	r3, #0x50
  34e736: 681b         	ldr	r3, [r3]
  34e738: 9a00         	ldr	r2, [sp]
  34e73a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34e73e: 4610         	mov	r0, r2
  34e740: 4798         	blx	r3
  34e742: 4602         	mov	r2, r0
  34e744: 9b00         	ldr	r3, [sp]
  34e746: f503 7382    	add.w	r3, r3, #0x104
  34e74a: a902         	add	r1, sp, #0x8
  34e74c: 4608         	mov	r0, r1
  34e74e: 4611         	mov	r1, r2
  34e750: 461a         	mov	r2, r3
  34e752: f7fd ffad    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x20a6
  34e756: 9b00         	ldr	r3, [sp]
  34e758: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e75c: 2b01         	cmp	r3, #0x1
  34e75e: d004         	beq	0x34e76a <Joypad::getDirectionVector()+0x46> @ imm = #0x8
  34e760: 9b00         	ldr	r3, [sp]
  34e762: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e766: 2b03         	cmp	r3, #0x3
  34e768: d105         	bne	0x34e776 <Joypad::getDirectionVector()+0x52> @ imm = #0xa
  34e76a: eddd 7a02    	vldr	s15, [sp, #8]
  34e76e: eef1 7a67    	vneg.f32	s15, s15
  34e772: edcd 7a02    	vstr	s15, [sp, #8]
  34e776: 9b00         	ldr	r3, [sp]
  34e778: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e77c: 2b02         	cmp	r3, #0x2
  34e77e: d004         	beq	0x34e78a <Joypad::getDirectionVector()+0x66> @ imm = #0x8
  34e780: 9b00         	ldr	r3, [sp]
  34e782: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  34e786: 2b03         	cmp	r3, #0x3
  34e788: d105         	bne	0x34e796 <Joypad::getDirectionVector()+0x72> @ imm = #0xa
  34e78a: eddd 7a03    	vldr	s15, [sp, #12]
  34e78e: eef1 7a67    	vneg.f32	s15, s15
  34e792: edcd 7a03    	vstr	s15, [sp, #12]
  34e796: eddd 7a02    	vldr	s15, [sp, #8]
  34e79a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34e79e: eddd 7a03    	vldr	s15, [sp, #12]
  34e7a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e7a6: 9b01         	ldr	r3, [sp, #0x4]
  34e7a8: 4618         	mov	r0, r3
  34e7aa: eeb0 0b46    	vmov.f64	d0, d6
  34e7ae: eeb0 1b47    	vmov.f64	d1, d7
  34e7b2: f7fd ff9d    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x20c6
  34e7b6: 9801         	ldr	r0, [sp, #0x4]
  34e7b8: b005         	add	sp, #0x14
  34e7ba: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::getFireVector
//      file offset 0x34e7c0 (= ELF address; Ghidra 0x35e7c0), 152 bytes, Thumb-2
  34e7c0: b500         	push	{lr}
  34e7c2: b085         	sub	sp, #0x14
  34e7c4: 9001         	str	r0, [sp, #0x4]
  34e7c6: 9100         	str	r1, [sp]
  34e7c8: 9b00         	ldr	r3, [sp]
  34e7ca: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34e7ce: 681b         	ldr	r3, [r3]
  34e7d0: 3350         	adds	r3, #0x50
  34e7d2: 681b         	ldr	r3, [r3]
  34e7d4: 9a00         	ldr	r2, [sp]
  34e7d6: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  34e7da: 4610         	mov	r0, r2
  34e7dc: 4798         	blx	r3
  34e7de: 4602         	mov	r2, r0
  34e7e0: 9b00         	ldr	r3, [sp]
  34e7e2: 33fc         	adds	r3, #0xfc
  34e7e4: a902         	add	r1, sp, #0x8
  34e7e6: 4608         	mov	r0, r1
  34e7e8: 4611         	mov	r1, r2
  34e7ea: 461a         	mov	r2, r3
  34e7ec: f7fd ff60    	bl	0x34c6b0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x1c4> @ imm = #-0x2140
  34e7f0: 9b00         	ldr	r3, [sp]
  34e7f2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e7f6: 2b01         	cmp	r3, #0x1
  34e7f8: d004         	beq	0x34e804 <Joypad::getFireVector()+0x44> @ imm = #0x8
  34e7fa: 9b00         	ldr	r3, [sp]
  34e7fc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e800: 2b03         	cmp	r3, #0x3
  34e802: d105         	bne	0x34e810 <Joypad::getFireVector()+0x50> @ imm = #0xa
  34e804: eddd 7a02    	vldr	s15, [sp, #8]
  34e808: eef1 7a67    	vneg.f32	s15, s15
  34e80c: edcd 7a02    	vstr	s15, [sp, #8]
  34e810: 9b00         	ldr	r3, [sp]
  34e812: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e816: 2b02         	cmp	r3, #0x2
  34e818: d004         	beq	0x34e824 <Joypad::getFireVector()+0x64> @ imm = #0x8
  34e81a: 9b00         	ldr	r3, [sp]
  34e81c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  34e820: 2b03         	cmp	r3, #0x3
  34e822: d105         	bne	0x34e830 <Joypad::getFireVector()+0x70> @ imm = #0xa
  34e824: eddd 7a03    	vldr	s15, [sp, #12]
  34e828: eef1 7a67    	vneg.f32	s15, s15
  34e82c: edcd 7a03    	vstr	s15, [sp, #12]
  34e830: eddd 7a02    	vldr	s15, [sp, #8]
  34e834: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  34e838: eddd 7a03    	vldr	s15, [sp, #12]
  34e83c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34e840: 9b01         	ldr	r3, [sp, #0x4]
  34e842: 4618         	mov	r0, r3
  34e844: eeb0 0b46    	vmov.f64	d0, d6
  34e848: eeb0 1b47    	vmov.f64	d1, d7
  34e84c: f7fd ff50    	bl	0x34c6f0 <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)+0x204> @ imm = #-0x2160
  34e850: 9801         	ldr	r0, [sp, #0x4]
  34e852: b005         	add	sp, #0x14
  34e854: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::fire
//      file offset 0x34e858 (= ELF address; Ghidra 0x35e858), 16 bytes, Thumb-2
  34e858: b082         	sub	sp, #0x8
  34e85a: 9001         	str	r0, [sp, #0x4]
  34e85c: 9b01         	ldr	r3, [sp, #0x4]
  34e85e: f893 312e    	ldrb.w	r3, [r3, #0x12e]
  34e862: 4618         	mov	r0, r3
  34e864: b002         	add	sp, #0x8
  34e866: 4770         	bx	lr

// ==== Joypad::padType
//      file offset 0x34e868 (= ELF address; Ghidra 0x35e868), 12 bytes, Thumb-2
  34e868: b082         	sub	sp, #0x8
  34e86a: 9001         	str	r0, [sp, #0x4]
  34e86c: 2300         	movs	r3, #0x0
  34e86e: 4618         	mov	r0, r3
  34e870: b002         	add	sp, #0x8
  34e872: 4770         	bx	lr

// ==== Joypad::disableMovement
//      file offset 0x34e874 (= ELF address; Ghidra 0x35e874), 164 bytes, Thumb-2
  34e874: b500         	push	{lr}
  34e876: b083         	sub	sp, #0xc
  34e878: 9001         	str	r0, [sp, #0x4]
  34e87a: 460b         	mov	r3, r1
  34e87c: f88d 3003    	strb.w	r3, [sp, #0x3]
  34e880: 9b01         	ldr	r3, [sp, #0x4]
  34e882: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  34e886: f883 2131    	strb.w	r2, [r3, #0x131]
  34e88a: 9b01         	ldr	r3, [sp, #0x4]
  34e88c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34e890: 681b         	ldr	r3, [r3]
  34e892: 3390         	adds	r3, #0x90
  34e894: 681a         	ldr	r2, [r3]
  34e896: 9b01         	ldr	r3, [sp, #0x4]
  34e898: f8d3 10e4    	ldr.w	r1, [r3, #0xe4]
  34e89c: 9b01         	ldr	r3, [sp, #0x4]
  34e89e: f893 3131    	ldrb.w	r3, [r3, #0x131]
  34e8a2: 2b00         	cmp	r3, #0x0
  34e8a4: d001         	beq	0x34e8aa <Joypad::disableMovement(bool)+0x36> @ imm = #0x2
  34e8a6: 2300         	movs	r3, #0x0
  34e8a8: e000         	b	0x34e8ac <Joypad::disableMovement(bool)+0x38> @ imm = #0x0
  34e8aa: 2301         	movs	r3, #0x1
  34e8ac: 4608         	mov	r0, r1
  34e8ae: 4619         	mov	r1, r3
  34e8b0: 4790         	blx	r2
  34e8b2: 9b01         	ldr	r3, [sp, #0x4]
  34e8b4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  34e8b8: 681b         	ldr	r3, [r3]
  34e8ba: 3390         	adds	r3, #0x90
  34e8bc: 681a         	ldr	r2, [r3]
  34e8be: 9b01         	ldr	r3, [sp, #0x4]
  34e8c0: f8d3 10f0    	ldr.w	r1, [r3, #0xf0]
  34e8c4: 9b01         	ldr	r3, [sp, #0x4]
  34e8c6: f893 3131    	ldrb.w	r3, [r3, #0x131]
  34e8ca: 2b00         	cmp	r3, #0x0
  34e8cc: d001         	beq	0x34e8d2 <Joypad::disableMovement(bool)+0x5e> @ imm = #0x2
  34e8ce: 2300         	movs	r3, #0x0
  34e8d0: e000         	b	0x34e8d4 <Joypad::disableMovement(bool)+0x60> @ imm = #0x0
  34e8d2: 2301         	movs	r3, #0x1
  34e8d4: 4608         	mov	r0, r1
  34e8d6: 4619         	mov	r1, r3
  34e8d8: 4790         	blx	r2
  34e8da: 9b01         	ldr	r3, [sp, #0x4]
  34e8dc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  34e8e0: 681b         	ldr	r3, [r3]
  34e8e2: 3390         	adds	r3, #0x90
  34e8e4: 681a         	ldr	r2, [r3]
  34e8e6: 9b01         	ldr	r3, [sp, #0x4]
  34e8e8: f8d3 10f8    	ldr.w	r1, [r3, #0xf8]
  34e8ec: 9b01         	ldr	r3, [sp, #0x4]
  34e8ee: f893 3131    	ldrb.w	r3, [r3, #0x131]
  34e8f2: 2b00         	cmp	r3, #0x0
  34e8f4: d001         	beq	0x34e8fa <Joypad::disableMovement(bool)+0x86> @ imm = #0x2
  34e8f6: 2300         	movs	r3, #0x0
  34e8f8: e000         	b	0x34e8fc <Joypad::disableMovement(bool)+0x88> @ imm = #0x0
  34e8fa: 2301         	movs	r3, #0x1
  34e8fc: 4608         	mov	r0, r1
  34e8fe: 4619         	mov	r1, r3
  34e900: 4790         	blx	r2
  34e902: 9b01         	ldr	r3, [sp, #0x4]
  34e904: f893 3131    	ldrb.w	r3, [r3, #0x131]
  34e908: 2b00         	cmp	r3, #0x0
  34e90a: d002         	beq	0x34e912 <Joypad::disableMovement(bool)+0x9e> @ imm = #0x4
  34e90c: 9801         	ldr	r0, [sp, #0x4]
  34e90e: f7ff fdb5    	bl	0x34e47c <Joypad::cancelTouches()> @ imm = #-0x496
  34e912: b003         	add	sp, #0xc
  34e914: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::disableFiring
//      file offset 0x34e918 (= ELF address; Ghidra 0x35e918), 44 bytes, Thumb-2
  34e918: b500         	push	{lr}
  34e91a: b083         	sub	sp, #0xc
  34e91c: 9001         	str	r0, [sp, #0x4]
  34e91e: 460b         	mov	r3, r1
  34e920: f88d 3003    	strb.w	r3, [sp, #0x3]
  34e924: 9b01         	ldr	r3, [sp, #0x4]
  34e926: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  34e92a: f883 2132    	strb.w	r2, [r3, #0x132]
  34e92e: 9b01         	ldr	r3, [sp, #0x4]
  34e930: f893 3132    	ldrb.w	r3, [r3, #0x132]
  34e934: 2b00         	cmp	r3, #0x0
  34e936: d002         	beq	0x34e93e <Joypad::disableFiring(bool)+0x26> @ imm = #0x4
  34e938: 9801         	ldr	r0, [sp, #0x4]
  34e93a: f7ff fd9f    	bl	0x34e47c <Joypad::cancelTouches()> @ imm = #-0x4c2
  34e93e: b003         	add	sp, #0xc
  34e940: f85d fb04    	ldr	pc, [sp], #4

// ==== Joypad::updateSpecialInput
//      file offset 0x34e944 (= ELF address; Ghidra 0x35e944), 10 bytes, Thumb-2
  34e944: b082         	sub	sp, #0x8
  34e946: 9001         	str	r0, [sp, #0x4]
  34e948: 9100         	str	r1, [sp]
  34e94a: b002         	add	sp, #0x8
  34e94c: 4770         	bx	lr
