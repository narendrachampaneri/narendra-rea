// ArrowAlert: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 7 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ArrowAlert.cpp

// ==== ArrowAlert::create
//      file offset 0x3bd6c4 (= ELF address; Ghidra 0x3cd6c4), 112 bytes, Thumb-2
  3bd6c4: b510         	push	{r4, lr}
  3bd6c6: b082         	sub	sp, #0x8
  3bd6c8: 20ec         	movs	r0, #0xec
  3bd6ca: f3ca f94b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3ca296
  3bd6ce: 4603         	mov	r3, r0
  3bd6d0: 461c         	mov	r4, r3
  3bd6d2: 4620         	mov	r0, r4
  3bd6d4: f000 f82e    	bl	0x3bd734 <ArrowAlert::ArrowAlert()> @ imm = #0x5c
  3bd6d8: 9401         	str	r4, [sp, #0x4]
  3bd6da: 9b01         	ldr	r3, [sp, #0x4]
  3bd6dc: 2b00         	cmp	r3, #0x0
  3bd6de: d00b         	beq	0x3bd6f8 <ArrowAlert::create()+0x34> @ imm = #0x16
  3bd6e0: 9b01         	ldr	r3, [sp, #0x4]
  3bd6e2: 681b         	ldr	r3, [r3]
  3bd6e4: 3318         	adds	r3, #0x18
  3bd6e6: 681b         	ldr	r3, [r3]
  3bd6e8: 9a01         	ldr	r2, [sp, #0x4]
  3bd6ea: 4610         	mov	r0, r2
  3bd6ec: 4798         	blx	r3
  3bd6ee: 4603         	mov	r3, r0
  3bd6f0: 2b00         	cmp	r3, #0x0
  3bd6f2: d001         	beq	0x3bd6f8 <ArrowAlert::create()+0x34> @ imm = #0x2
  3bd6f4: 2301         	movs	r3, #0x1
  3bd6f6: e000         	b	0x3bd6fa <ArrowAlert::create()+0x36> @ imm = #0x0
  3bd6f8: 2300         	movs	r3, #0x0
  3bd6fa: 2b00         	cmp	r3, #0x0
  3bd6fc: d005         	beq	0x3bd70a <ArrowAlert::create()+0x46> @ imm = #0xa
  3bd6fe: 9b01         	ldr	r3, [sp, #0x4]
  3bd700: 4618         	mov	r0, r3
  3bd702: f1da fbfb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1da7f6
  3bd706: 9b01         	ldr	r3, [sp, #0x4]
  3bd708: e011         	b	0x3bd72e <ArrowAlert::create()+0x6a> @ imm = #0x22
  3bd70a: 9b01         	ldr	r3, [sp, #0x4]
  3bd70c: 2b00         	cmp	r3, #0x0
  3bd70e: d005         	beq	0x3bd71c <ArrowAlert::create()+0x58> @ imm = #0xa
  3bd710: 9b01         	ldr	r3, [sp, #0x4]
  3bd712: 681b         	ldr	r3, [r3]
  3bd714: 3308         	adds	r3, #0x8
  3bd716: 681b         	ldr	r3, [r3]
  3bd718: 9801         	ldr	r0, [sp, #0x4]
  3bd71a: 4798         	blx	r3
  3bd71c: 2300         	movs	r3, #0x0
  3bd71e: 9301         	str	r3, [sp, #0x4]
  3bd720: 2300         	movs	r3, #0x0
  3bd722: e004         	b	0x3bd72e <ArrowAlert::create()+0x6a> @ imm = #0x8
  3bd724: 4620         	mov	r0, r4
  3bd726: f3ca fcbd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ca97a
  3bd72a: f3ca fcbf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ca97e
  3bd72e: 4618         	mov	r0, r3
  3bd730: b002         	add	sp, #0x8
  3bd732: bd10         	pop	{r4, pc}

// ==== ArrowAlert::ArrowAlert
//      file offset 0x3bd734 (= ELF address; Ghidra 0x3cd734), 108 bytes, Thumb-2
  3bd734: b510         	push	{r4, lr}
  3bd736: b082         	sub	sp, #0x8
  3bd738: 9001         	str	r0, [sp, #0x4]
  3bd73a: 4c16         	ldr	r4, [pc, #0x58]         @ 0x3bd794 <ArrowAlert::ArrowAlert()+0x60>
  3bd73c: 447c         	add	r4, pc
  3bd73e: 9b01         	ldr	r3, [sp, #0x4]
  3bd740: 4618         	mov	r0, r3
  3bd742: f1d1 ff79    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1d1ef2
  3bd746: 9b01         	ldr	r3, [sp, #0x4]
  3bd748: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3bd798 <ArrowAlert::ArrowAlert()+0x64>
  3bd74a: 58a2         	ldr	r2, [r4, r2]
  3bd74c: 3208         	adds	r2, #0x8
  3bd74e: 601a         	str	r2, [r3]
  3bd750: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3bd79c <ArrowAlert::ArrowAlert()+0x68>
  3bd752: 447b         	add	r3, pc
  3bd754: 4618         	mov	r0, r3
  3bd756: f21a fdd5    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x21abaa
  3bd75a: 4602         	mov	r2, r0
  3bd75c: 9b01         	ldr	r3, [sp, #0x4]
  3bd75e: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3bd762: 9a01         	ldr	r2, [sp, #0x4]
  3bd764: 9b01         	ldr	r3, [sp, #0x4]
  3bd766: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bd76a: 4610         	mov	r0, r2
  3bd76c: 4619         	mov	r1, r3
  3bd76e: f1d2 febd    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x1d2d7a
  3bd772: 9b01         	ldr	r3, [sp, #0x4]
  3bd774: f04f 527e    	mov.w	r2, #0x3f800000
  3bd778: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3bd77c: 9b01         	ldr	r3, [sp, #0x4]
  3bd77e: e005         	b	0x3bd78c <ArrowAlert::ArrowAlert()+0x58> @ imm = #0xa
  3bd780: 9b01         	ldr	r3, [sp, #0x4]
  3bd782: 4618         	mov	r0, r3
  3bd784: f1d2 f85e    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d20bc
  3bd788: f3ca fc90    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ca920
  3bd78c: 4618         	mov	r0, r3
  3bd78e: b002         	add	sp, #0x8
  3bd790: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bd791); words below are literal-pool data ---
  3bd792: bf00         	nop
  3bd794: 52cc         	strh	r4, [r1, r3]
  3bd796: 0057         	lsls	r7, r2, #0x1
  3bd798: de30         	udf	#0x30
  3bd79a: ffff 75aa    	<unknown>
  3bd79e: 0041         	lsls	r1, r0, #0x1

// ==== ArrowAlert::~ArrowAlert
//      file offset 0x3bd7a0 (= ELF address; Ghidra 0x3cd7a0), 60 bytes, Thumb-2
  3bd7a0: b500         	push	{lr}
  3bd7a2: b083         	sub	sp, #0xc
  3bd7a4: 9001         	str	r0, [sp, #0x4]
  3bd7a6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3bd7d4 <ArrowAlert::~ArrowAlert()+0x34>
  3bd7a8: 4479         	add	r1, pc
  3bd7aa: 9b01         	ldr	r3, [sp, #0x4]
  3bd7ac: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3bd7d8 <ArrowAlert::~ArrowAlert()+0x38>
  3bd7ae: 588a         	ldr	r2, [r1, r2]
  3bd7b0: 3208         	adds	r2, #0x8
  3bd7b2: 601a         	str	r2, [r3]
  3bd7b4: 9b01         	ldr	r3, [sp, #0x4]
  3bd7b6: 4618         	mov	r0, r3
  3bd7b8: f1d2 f844    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d2088
  3bd7bc: 2300         	movs	r3, #0x0
  3bd7be: 2b00         	cmp	r3, #0x0
  3bd7c0: d002         	beq	0x3bd7c8 <ArrowAlert::~ArrowAlert()+0x28> @ imm = #0x4
  3bd7c2: 9801         	ldr	r0, [sp, #0x4]
  3bd7c4: f3ca fc6e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ca8dc
  3bd7c8: 9b01         	ldr	r3, [sp, #0x4]
  3bd7ca: 4618         	mov	r0, r3
  3bd7cc: b003         	add	sp, #0xc
  3bd7ce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bd7d1); words below are literal-pool data ---
  3bd7d2: bf00         	nop
  3bd7d4: 5260         	strh	r0, [r4, r1]
  3bd7d6: 0057         	lsls	r7, r2, #0x1
  3bd7d8: de30         	udf	#0x30
  3bd7da: ffff b500    	<unknown>

// ==== ArrowAlert::~ArrowAlert
//      file offset 0x3bd7dc (= ELF address; Ghidra 0x3cd7dc), 28 bytes, Thumb-2
  3bd7dc: b500         	push	{lr}
  3bd7de: b083         	sub	sp, #0xc
  3bd7e0: 9001         	str	r0, [sp, #0x4]
  3bd7e2: 9801         	ldr	r0, [sp, #0x4]
  3bd7e4: f7ff ffdc    	bl	0x3bd7a0 <ArrowAlert::~ArrowAlert()> @ imm = #-0x48
  3bd7e8: 9801         	ldr	r0, [sp, #0x4]
  3bd7ea: f3ca fc5b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ca8b6
  3bd7ee: 9b01         	ldr	r3, [sp, #0x4]
  3bd7f0: 4618         	mov	r0, r3
  3bd7f2: b003         	add	sp, #0xc
  3bd7f4: f85d fb04    	ldr	pc, [sp], #4

// ==== ArrowAlert::setArrowScale
//      file offset 0x3bd7f8 (= ELF address; Ghidra 0x3cd7f8), 18 bytes, Thumb-2
  3bd7f8: b082         	sub	sp, #0x8
  3bd7fa: 9001         	str	r0, [sp, #0x4]
  3bd7fc: 9100         	str	r1, [sp]
  3bd7fe: 9b01         	ldr	r3, [sp, #0x4]
  3bd800: 9a00         	ldr	r2, [sp]
  3bd802: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3bd806: b002         	add	sp, #0x8
  3bd808: 4770         	bx	lr

// ==== ArrowAlert::getArrowScale
//      file offset 0x3bd80c (= ELF address; Ghidra 0x3cd80c), 16 bytes, Thumb-2
  3bd80c: b082         	sub	sp, #0x8
  3bd80e: 9001         	str	r0, [sp, #0x4]
  3bd810: 9b01         	ldr	r3, [sp, #0x4]
  3bd812: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bd816: 4618         	mov	r0, r3
  3bd818: b002         	add	sp, #0x8
  3bd81a: 4770         	bx	lr

// ==== ArrowAlert::getSprite
//      file offset 0x3bd81c (= ELF address; Ghidra 0x3cd81c), 16 bytes, Thumb-2
  3bd81c: b082         	sub	sp, #0x8
  3bd81e: 9001         	str	r0, [sp, #0x4]
  3bd820: 9b01         	ldr	r3, [sp, #0x4]
  3bd822: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bd826: 4618         	mov	r0, r3
  3bd828: b002         	add	sp, #0x8
  3bd82a: 4770         	bx	lr
