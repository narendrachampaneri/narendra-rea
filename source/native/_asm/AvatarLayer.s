// AvatarLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 25 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AvatarLayer.cpp

// ==== AvatarLayer::create
//      file offset 0x2edc78 (= ELF address; Ghidra 0x2fdc78), 112 bytes, Thumb-2
  2edc78: b510         	push	{r4, lr}
  2edc7a: b082         	sub	sp, #0x8
  2edc7c: f44f 70c4    	mov.w	r0, #0x188
  2edc80: f099 f670    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x499ce0
  2edc84: 4603         	mov	r3, r0
  2edc86: 461c         	mov	r4, r3
  2edc88: 4620         	mov	r0, r4
  2edc8a: f000 f83f    	bl	0x2edd0c <AvatarLayer::AvatarLayer()> @ imm = #0x7e
  2edc8e: 9401         	str	r4, [sp, #0x4]
  2edc90: 9b01         	ldr	r3, [sp, #0x4]
  2edc92: 2b00         	cmp	r3, #0x0
  2edc94: d00a         	beq	0x2edcac <AvatarLayer::create()+0x34> @ imm = #0x14
  2edc96: 9b01         	ldr	r3, [sp, #0x4]
  2edc98: 681b         	ldr	r3, [r3]
  2edc9a: 3318         	adds	r3, #0x18
  2edc9c: 681b         	ldr	r3, [r3]
  2edc9e: 9801         	ldr	r0, [sp, #0x4]
  2edca0: 4798         	blx	r3
  2edca2: 4603         	mov	r3, r0
  2edca4: 2b00         	cmp	r3, #0x0
  2edca6: d001         	beq	0x2edcac <AvatarLayer::create()+0x34> @ imm = #0x2
  2edca8: 2301         	movs	r3, #0x1
  2edcaa: e000         	b	0x2edcae <AvatarLayer::create()+0x36> @ imm = #0x0
  2edcac: 2300         	movs	r3, #0x0
  2edcae: 2b00         	cmp	r3, #0x0
  2edcb0: d005         	beq	0x2edcbe <AvatarLayer::create()+0x46> @ imm = #0xa
  2edcb2: 9b01         	ldr	r3, [sp, #0x4]
  2edcb4: 4618         	mov	r0, r3
  2edcb6: f2aa f921    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2aa242
  2edcba: 9b01         	ldr	r3, [sp, #0x4]
  2edcbc: e011         	b	0x2edce2 <AvatarLayer::create()+0x6a> @ imm = #0x22
  2edcbe: 9b01         	ldr	r3, [sp, #0x4]
  2edcc0: 2b00         	cmp	r3, #0x0
  2edcc2: d005         	beq	0x2edcd0 <AvatarLayer::create()+0x58> @ imm = #0xa
  2edcc4: 9b01         	ldr	r3, [sp, #0x4]
  2edcc6: 681b         	ldr	r3, [r3]
  2edcc8: 3308         	adds	r3, #0x8
  2edcca: 681b         	ldr	r3, [r3]
  2edccc: 9801         	ldr	r0, [sp, #0x4]
  2edcce: 4798         	blx	r3
  2edcd0: 2300         	movs	r3, #0x0
  2edcd2: 9301         	str	r3, [sp, #0x4]
  2edcd4: 2300         	movs	r3, #0x0
  2edcd6: e004         	b	0x2edce2 <AvatarLayer::create()+0x6a> @ imm = #0x8
  2edcd8: 4620         	mov	r0, r4
  2edcda: f09a f1e3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49a3c6
  2edcde: f09a f1e5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49a3ca
  2edce2: 4618         	mov	r0, r3
  2edce4: b002         	add	sp, #0x8
  2edce6: bd10         	pop	{r4, pc}

// ==== AvatarLayer::AvatarLayer
//      file offset 0x2edd0c (= ELF address; Ghidra 0x2fdd0c), 152 bytes, Thumb-2
  2edd0c: b510         	push	{r4, lr}
  2edd0e: b082         	sub	sp, #0x8
  2edd10: 9001         	str	r0, [sp, #0x4]
  2edd12: 4c22         	ldr	r4, [pc, #0x88]         @ 0x2edd9c <AvatarLayer::AvatarLayer()+0x90>
  2edd14: 447c         	add	r4, pc
  2edd16: 9b01         	ldr	r3, [sp, #0x4]
  2edd18: 4618         	mov	r0, r3
  2edd1a: f2bf f99f    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2bf33e
  2edd1e: 9b01         	ldr	r3, [sp, #0x4]
  2edd20: f503 7384    	add.w	r3, r3, #0x108
  2edd24: 4618         	mov	r0, r3
  2edd26: f7ff ffdf    	bl	0x2edce8 <cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate()> @ imm = #-0x42
  2edd2a: 9b01         	ldr	r3, [sp, #0x4]
  2edd2c: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x2edda0 <AvatarLayer::AvatarLayer()+0x94>
  2edd2e: 58a2         	ldr	r2, [r4, r2]
  2edd30: 3208         	adds	r2, #0x8
  2edd32: 601a         	str	r2, [r3]
  2edd34: 9b01         	ldr	r3, [sp, #0x4]
  2edd36: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x2edda0 <AvatarLayer::AvatarLayer()+0x94>
  2edd38: 58a2         	ldr	r2, [r4, r2]
  2edd3a: f502 7206    	add.w	r2, r2, #0x218
  2edd3e: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2edd42: 9b01         	ldr	r3, [sp, #0x4]
  2edd44: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2edda0 <AvatarLayer::AvatarLayer()+0x94>
  2edd46: 58a2         	ldr	r2, [r4, r2]
  2edd48: f502 7212    	add.w	r2, r2, #0x248
  2edd4c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2edd50: 9b01         	ldr	r3, [sp, #0x4]
  2edd52: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2edda0 <AvatarLayer::AvatarLayer()+0x94>
  2edd54: 58a2         	ldr	r2, [r4, r2]
  2edd56: f502 7215    	add.w	r2, r2, #0x254
  2edd5a: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2edd5e: 9b01         	ldr	r3, [sp, #0x4]
  2edd60: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2edda0 <AvatarLayer::AvatarLayer()+0x94>
  2edd62: 58a2         	ldr	r2, [r4, r2]
  2edd64: f502 7219    	add.w	r2, r2, #0x264
  2edd68: f8c3 2108    	str.w	r2, [r3, #0x108]
  2edd6c: 9b01         	ldr	r3, [sp, #0x4]
  2edd6e: f503 73ac    	add.w	r3, r3, #0x158
  2edd72: 4618         	mov	r0, r3
  2edd74: f0c7 f21c    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x4c7438
  2edd78: 9b01         	ldr	r3, [sp, #0x4]
  2edd7a: e00b         	b	0x2edd94 <AvatarLayer::AvatarLayer()+0x88> @ imm = #0x16
  2edd7c: 9b01         	ldr	r3, [sp, #0x4]
  2edd7e: f503 7384    	add.w	r3, r3, #0x108
  2edd82: 4618         	mov	r0, r3
  2edd84: f7ff ff3e    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0x184
  2edd88: 9b01         	ldr	r3, [sp, #0x4]
  2edd8a: 4618         	mov	r0, r3
  2edd8c: f2bf f9de    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2bf3bc
  2edd90: f09a f18c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49a318
  2edd94: 4618         	mov	r0, r3
  2edd96: b002         	add	sp, #0x8
  2edd98: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2edd99); words below are literal-pool data ---
  2edd9a: bf00         	nop
  2edd9c: 4cf4         	ldr	r4, [pc, #0x3d0]        @ 0x2ee170 <AvatarLayer::init()+0x398>
  2edd9e: 0064         	lsls	r4, r4, #0x1
  2edda0: d8a0         	bhi	0x2edce4 <AvatarLayer::create()+0x6c> @ imm = #-0xc0
  2edda2: ffff b500    	<unknown>

// ==== AvatarLayer::scene
//      file offset 0x2edda4 (= ELF address; Ghidra 0x2fdda4), 46 bytes, Thumb-2
  2edda4: b500         	push	{lr}
  2edda6: b083         	sub	sp, #0xc
  2edda8: f2c1 fe5a    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2c1cb4
  2eddac: 4603         	mov	r3, r0
  2eddae: 9300         	str	r3, [sp]
  2eddb0: f7ff ff62    	bl	0x2edc78 <AvatarLayer::create()> @ imm = #-0x13c
  2eddb4: 4603         	mov	r3, r0
  2eddb6: 9301         	str	r3, [sp, #0x4]
  2eddb8: 9b00         	ldr	r3, [sp]
  2eddba: 681b         	ldr	r3, [r3]
  2eddbc: 33c8         	adds	r3, #0xc8
  2eddbe: 681b         	ldr	r3, [r3]
  2eddc0: 9a00         	ldr	r2, [sp]
  2eddc2: 4610         	mov	r0, r2
  2eddc4: 9901         	ldr	r1, [sp, #0x4]
  2eddc6: 4798         	blx	r3
  2eddc8: 9b00         	ldr	r3, [sp]
  2eddca: 4618         	mov	r0, r3
  2eddcc: b003         	add	sp, #0xc
  2eddce: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarLayer::init
//      file offset 0x2eddd8 (= ELF address; Ghidra 0x2fddd8), 7416 bytes, Thumb-2
  2eddd8: b5f0         	push	{r4, r5, r6, r7, lr}
  2eddda: ed2d 8b02    	vpush	{d8}
  2eddde: b0d3         	sub	sp, #0x14c
  2edde0: ab03         	add	r3, sp, #0xc
  2edde2: 6018         	str	r0, [r3]
  2edde4: 4c76         	ldr	r4, [pc, #0x1d8]        @ 0x2edfc0 <AvatarLayer::init()+0x1e8>
  2edde6: 447c         	add	r4, pc
  2edde8: ab03         	add	r3, sp, #0xc
  2eddea: 681b         	ldr	r3, [r3]
  2eddec: 4618         	mov	r0, r3
  2eddee: f2bf fa03    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2bf406
  2eddf2: 4603         	mov	r3, r0
  2eddf4: 461a         	mov	r2, r3
  2eddf6: f10d 0317    	add.w	r3, sp, #0x17
  2eddfa: 701a         	strb	r2, [r3]
  2eddfc: f10d 0317    	add.w	r3, sp, #0x17
  2ede00: 781b         	ldrb	r3, [r3]
  2ede02: f083 0301    	eor	r3, r3, #0x1
  2ede06: b2db         	uxtb	r3, r3
  2ede08: 2b00         	cmp	r3, #0x0
  2ede0a: d002         	beq	0x2ede12 <AvatarLayer::init()+0x3a> @ imm = #0x4
  2ede0c: 2400         	movs	r4, #0x0
  2ede0e: f001 be07    	b.w	0x2efa20 <AvatarLayer::init()+0x1c48> @ imm = #0x1c0e
  2ede12: ab03         	add	r3, sp, #0xc
  2ede14: 681b         	ldr	r3, [r3]
  2ede16: 2200         	movs	r2, #0x0
  2ede18: f883 210c    	strb.w	r2, [r3, #0x10c]
  2ede1c: f2ab ff8a    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2abf14
  2ede20: 4602         	mov	r2, r0
  2ede22: ab03         	add	r3, sp, #0xc
  2ede24: 681b         	ldr	r3, [r3]
  2ede26: f8c3 2114    	str.w	r2, [r3, #0x114]
  2ede2a: ab03         	add	r3, sp, #0xc
  2ede2c: 681b         	ldr	r3, [r3]
  2ede2e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ede32: 4618         	mov	r0, r3
  2ede34: f2aa f858    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2aa0b0
  2ede38: ab4a         	add	r3, sp, #0x128
  2ede3a: 4618         	mov	r0, r3
  2ede3c: f09c f2da    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49c5b4
  2ede40: aa4e         	add	r2, sp, #0x138
  2ede42: ab4a         	add	r3, sp, #0x128
  2ede44: 4610         	mov	r0, r2
  2ede46: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x2edfc4 <AvatarLayer::init()+0x1ec>
  2ede48: 447a         	add	r2, pc
  2ede4a: 4611         	mov	r1, r2
  2ede4c: 461a         	mov	r2, r3
  2ede4e: f0c8 f607    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c8c0e
  2ede52: ab4e         	add	r3, sp, #0x138
  2ede54: 4618         	mov	r0, r3
  2ede56: f143 fc83    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x143906
  2ede5a: 4603         	mov	r3, r0
  2ede5c: 2b00         	cmp	r3, #0x0
  2ede5e: d001         	beq	0x2ede64 <AvatarLayer::init()+0x8c> @ imm = #0x2
  2ede60: 230d         	movs	r3, #0xd
  2ede62: e000         	b	0x2ede66 <AvatarLayer::init()+0x8e> @ imm = #0x0
  2ede64: 2301         	movs	r3, #0x1
  2ede66: aa0c         	add	r2, sp, #0x30
  2ede68: 6013         	str	r3, [r2]
  2ede6a: ab4e         	add	r3, sp, #0x138
  2ede6c: 4618         	mov	r0, r3
  2ede6e: f0c7 f551    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c7aa2
  2ede72: ab4a         	add	r3, sp, #0x128
  2ede74: 4618         	mov	r0, r3
  2ede76: f09c f2c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49c582
  2ede7a: ab0a         	add	r3, sp, #0x28
  2ede7c: 2200         	movs	r2, #0x0
  2ede7e: 601a         	str	r2, [r3]
  2ede80: e019         	b	0x2edeb6 <AvatarLayer::init()+0xde> @ imm = #0x32
  2ede82: ab0a         	add	r3, sp, #0x28
  2ede84: 681b         	ldr	r3, [r3]
  2ede86: 2b07         	cmp	r3, #0x7
  2ede88: d010         	beq	0x2edeac <AvatarLayer::init()+0xd4> @ imm = #0x20
  2ede8a: ab0a         	add	r3, sp, #0x28
  2ede8c: 681b         	ldr	r3, [r3]
  2ede8e: 2b0b         	cmp	r3, #0xb
  2ede90: d00c         	beq	0x2edeac <AvatarLayer::init()+0xd4> @ imm = #0x18
  2ede92: ab03         	add	r3, sp, #0xc
  2ede94: 681b         	ldr	r3, [r3]
  2ede96: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2ede9a: ab0a         	add	r3, sp, #0x28
  2ede9c: 6818         	ldr	r0, [r3]
  2ede9e: f7f6 ff33    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x919a
  2edea2: 4603         	mov	r3, r0
  2edea4: 4628         	mov	r0, r5
  2edea6: 4619         	mov	r1, r3
  2edea8: f2ac f9e0    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac3c0
  2edeac: ab0a         	add	r3, sp, #0x28
  2edeae: aa0a         	add	r2, sp, #0x28
  2edeb0: 6812         	ldr	r2, [r2]
  2edeb2: 3201         	adds	r2, #0x1
  2edeb4: 601a         	str	r2, [r3]
  2edeb6: aa0a         	add	r2, sp, #0x28
  2edeb8: ab0c         	add	r3, sp, #0x30
  2edeba: 6812         	ldr	r2, [r2]
  2edebc: 681b         	ldr	r3, [r3]
  2edebe: 429a         	cmp	r2, r3
  2edec0: dbdf         	blt	0x2ede82 <AvatarLayer::init()+0xaa> @ imm = #-0x42
  2edec2: 4b41         	ldr	r3, [pc, #0x104]        @ 0x2edfc8 <AvatarLayer::init()+0x1f0>
  2edec4: 58e3         	ldr	r3, [r4, r3]
  2edec6: 781b         	ldrb	r3, [r3]
  2edec8: 2b00         	cmp	r3, #0x0
  2edeca: d017         	beq	0x2edefc <AvatarLayer::init()+0x124> @ imm = #0x2e
  2edecc: ab03         	add	r3, sp, #0xc
  2edece: 681b         	ldr	r3, [r3]
  2eded0: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2eded4: 2007         	movs	r0, #0x7
  2eded6: f7f6 ff17    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x91d2
  2ededa: 4603         	mov	r3, r0
  2ededc: 4628         	mov	r0, r5
  2edede: 4619         	mov	r1, r3
  2edee0: f2ac f9c4    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac388
  2edee4: ab03         	add	r3, sp, #0xc
  2edee6: 681b         	ldr	r3, [r3]
  2edee8: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2edeec: 200b         	movs	r0, #0xb
  2edeee: f7f6 ff0b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x91ea
  2edef2: 4603         	mov	r3, r0
  2edef4: 4628         	mov	r0, r5
  2edef6: 4619         	mov	r1, r3
  2edef8: f2ac f9b8    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac370
  2edefc: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x2edfcc <AvatarLayer::init()+0x1f4>
  2edefe: 58e3         	ldr	r3, [r4, r3]
  2edf00: 781b         	ldrb	r3, [r3]
  2edf02: 2b00         	cmp	r3, #0x0
  2edf04: d017         	beq	0x2edf36 <AvatarLayer::init()+0x15e> @ imm = #0x2e
  2edf06: ab03         	add	r3, sp, #0xc
  2edf08: 681b         	ldr	r3, [r3]
  2edf0a: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2edf0e: 200d         	movs	r0, #0xd
  2edf10: f7f6 fefa    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x920c
  2edf14: 4603         	mov	r3, r0
  2edf16: 4628         	mov	r0, r5
  2edf18: 4619         	mov	r1, r3
  2edf1a: f2ac f9a7    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac34e
  2edf1e: ab03         	add	r3, sp, #0xc
  2edf20: 681b         	ldr	r3, [r3]
  2edf22: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2edf26: 200e         	movs	r0, #0xe
  2edf28: f7f6 feee    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9224
  2edf2c: 4603         	mov	r3, r0
  2edf2e: 4628         	mov	r0, r5
  2edf30: 4619         	mov	r1, r3
  2edf32: f2ac f99b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac336
  2edf36: 4b26         	ldr	r3, [pc, #0x98]         @ 0x2edfd0 <AvatarLayer::init()+0x1f8>
  2edf38: 58e3         	ldr	r3, [r4, r3]
  2edf3a: 781b         	ldrb	r3, [r3]
  2edf3c: 2b00         	cmp	r3, #0x0
  2edf3e: d017         	beq	0x2edf70 <AvatarLayer::init()+0x198> @ imm = #0x2e
  2edf40: ab03         	add	r3, sp, #0xc
  2edf42: 681b         	ldr	r3, [r3]
  2edf44: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2edf48: 200f         	movs	r0, #0xf
  2edf4a: f7f6 fedd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x9246
  2edf4e: 4603         	mov	r3, r0
  2edf50: 4628         	mov	r0, r5
  2edf52: 4619         	mov	r1, r3
  2edf54: f2ac f98a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac314
  2edf58: ab03         	add	r3, sp, #0xc
  2edf5a: 681b         	ldr	r3, [r3]
  2edf5c: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  2edf60: 2010         	movs	r0, #0x10
  2edf62: f7f6 fed1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x925e
  2edf66: 4603         	mov	r3, r0
  2edf68: 4628         	mov	r0, r5
  2edf6a: 4619         	mov	r1, r3
  2edf6c: f2ac f97e    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2ac2fc
  2edf70: ab0b         	add	r3, sp, #0x2c
  2edf72: 2200         	movs	r2, #0x0
  2edf74: 601a         	str	r2, [r3]
  2edf76: ab0b         	add	r3, sp, #0x2c
  2edf78: 2200         	movs	r2, #0x0
  2edf7a: 601a         	str	r2, [r3]
  2edf7c: e031         	b	0x2edfe2 <AvatarLayer::init()+0x20a> @ imm = #0x62
  2edf7e: ab03         	add	r3, sp, #0xc
  2edf80: 681b         	ldr	r3, [r3]
  2edf82: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  2edf86: ab0b         	add	r3, sp, #0x2c
  2edf88: 681b         	ldr	r3, [r3]
  2edf8a: 4610         	mov	r0, r2
  2edf8c: 4619         	mov	r1, r3
  2edf8e: f2ac f8c7    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2ac18e
  2edf92: 4603         	mov	r3, r0
  2edf94: 4618         	mov	r0, r3
  2edf96: f7fe ff5d    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x1146
  2edf9a: 4602         	mov	r2, r0
  2edf9c: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x2edfd4 <AvatarLayer::init()+0x1fc>
  2edf9e: 58e3         	ldr	r3, [r4, r3]
  2edfa0: 681b         	ldr	r3, [r3]
  2edfa2: 429a         	cmp	r2, r3
  2edfa4: bf14         	ite	ne
  2edfa6: 2300         	movne	r3, #0x0
  2edfa8: 2301         	moveq	r3, #0x1
  2edfaa: b2db         	uxtb	r3, r3
  2edfac: 2b00         	cmp	r3, #0x0
  2edfae: d013         	beq	0x2edfd8 <AvatarLayer::init()+0x200> @ imm = #0x26
  2edfb0: ab03         	add	r3, sp, #0xc
  2edfb2: 681b         	ldr	r3, [r3]
  2edfb4: aa0b         	add	r2, sp, #0x2c
  2edfb6: 6812         	ldr	r2, [r2]
  2edfb8: f8c3 2110    	str.w	r2, [r3, #0x110]
  2edfbc: e022         	b	0x2ee004 <AvatarLayer::init()+0x22c> @ imm = #0x44
  2edfbe: bf00         	nop
  2edfc0: 4c22         	ldr	r4, [pc, #0x88]         @ 0x2ee04c <AvatarLayer::init()+0x274>
  2edfc2: 0064         	lsls	r4, r4, #0x1
  2edfc4: 54f0         	strb	r0, [r6, r3]
  2edfc6: 004d         	lsls	r5, r1, #0x1
  2edfc8: d8a4         	bhi	0x2edf14 <AvatarLayer::init()+0x13c> @ imm = #-0xb8
  2edfca: ffff d8a8    	vtbl.8	d29, {d31}, d24
  2edfce: ffff d8ac    	vtbl.8	d29, {d31}, d28
  2edfd2: ffff d8b0    	<unknown>
  2edfd6: ffff ab0b    	vtbl.8	d26, {d15, d16, d17, d18}, d11
  2edfda: aa0b         	add	r2, sp, #0x2c
  2edfdc: 6812         	ldr	r2, [r2]
  2edfde: 3201         	adds	r2, #0x1
  2edfe0: 601a         	str	r2, [r3]
  2edfe2: ab0b         	add	r3, sp, #0x2c
  2edfe4: 681d         	ldr	r5, [r3]
  2edfe6: ab03         	add	r3, sp, #0xc
  2edfe8: 681b         	ldr	r3, [r3]
  2edfea: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2edfee: 4618         	mov	r0, r3
  2edff0: f2ac f876    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2ac0ec
  2edff4: 4603         	mov	r3, r0
  2edff6: 429d         	cmp	r5, r3
  2edff8: bf2c         	ite	hs
  2edffa: 2300         	movhs	r3, #0x0
  2edffc: 2301         	movlo	r3, #0x1
  2edffe: b2db         	uxtb	r3, r3
  2ee000: 2b00         	cmp	r3, #0x0
  2ee002: d1bc         	bne	0x2edf7e <AvatarLayer::init()+0x1a6> @ imm = #-0x88
  2ee004: ab32         	add	r3, sp, #0xc8
  2ee006: 4618         	mov	r0, r3
  2ee008: f8df 3480    	ldr.w	r3, [pc, #0x480]        @ 0x2ee48c <AvatarLayer::init()+0x6b4>
  2ee00c: 58e3         	ldr	r3, [r4, r3]
  2ee00e: 4619         	mov	r1, r3
  2ee010: f2a5 f84e    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a509c
  2ee014: ed9d 7a32    	vldr	s14, [sp, #200]
  2ee018: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ee01c: eec7 6a27    	vdiv.f32	s13, s14, s15
  2ee020: ed9d 7a33    	vldr	s14, [sp, #204]
  2ee024: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ee028: eec7 7a27    	vdiv.f32	s15, s14, s15
  2ee02c: ab34         	add	r3, sp, #0xd0
  2ee02e: 4618         	mov	r0, r3
  2ee030: ee16 1a90    	vmov	r1, s13
  2ee034: ee17 2a90    	vmov	r2, s15
  2ee038: f2a4 fe5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4cb4
  2ee03c: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x2ee490 <AvatarLayer::init()+0x6b8>
  2ee040: 447b         	add	r3, pc
  2ee042: 4618         	mov	r0, r3
  2ee044: f2ea f95e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea2bc
  2ee048: 4602         	mov	r2, r0
  2ee04a: ab0d         	add	r3, sp, #0x34
  2ee04c: 601a         	str	r2, [r3]
  2ee04e: f8df 3444    	ldr.w	r3, [pc, #0x444]        @ 0x2ee494 <AvatarLayer::init()+0x6bc>
  2ee052: 447b         	add	r3, pc
  2ee054: 4618         	mov	r0, r3
  2ee056: f2ea f955    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea2aa
  2ee05a: 4602         	mov	r2, r0
  2ee05c: ab0e         	add	r3, sp, #0x38
  2ee05e: 601a         	str	r2, [r3]
  2ee060: f8df 3434    	ldr.w	r3, [pc, #0x434]        @ 0x2ee498 <AvatarLayer::init()+0x6c0>
  2ee064: 447b         	add	r3, pc
  2ee066: 4618         	mov	r0, r3
  2ee068: f2ea f94c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea298
  2ee06c: 4602         	mov	r2, r0
  2ee06e: ab0f         	add	r3, sp, #0x3c
  2ee070: 601a         	str	r2, [r3]
  2ee072: f8df 3428    	ldr.w	r3, [pc, #0x428]        @ 0x2ee49c <AvatarLayer::init()+0x6c4>
  2ee076: 447b         	add	r3, pc
  2ee078: 4618         	mov	r0, r3
  2ee07a: f2ea f943    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea286
  2ee07e: 4602         	mov	r2, r0
  2ee080: ab10         	add	r3, sp, #0x40
  2ee082: 601a         	str	r2, [r3]
  2ee084: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x2ee4a0 <AvatarLayer::init()+0x6c8>
  2ee088: 447b         	add	r3, pc
  2ee08a: 4618         	mov	r0, r3
  2ee08c: f2ea f93a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea274
  2ee090: 4602         	mov	r2, r0
  2ee092: ab11         	add	r3, sp, #0x44
  2ee094: 601a         	str	r2, [r3]
  2ee096: f8df 340c    	ldr.w	r3, [pc, #0x40c]        @ 0x2ee4a4 <AvatarLayer::init()+0x6cc>
  2ee09a: 447b         	add	r3, pc
  2ee09c: 4618         	mov	r0, r3
  2ee09e: f2ea f931    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea262
  2ee0a2: 4602         	mov	r2, r0
  2ee0a4: ab12         	add	r3, sp, #0x48
  2ee0a6: 601a         	str	r2, [r3]
  2ee0a8: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x2ee4a8 <AvatarLayer::init()+0x6d0>
  2ee0aa: 447b         	add	r3, pc
  2ee0ac: 4618         	mov	r0, r3
  2ee0ae: f2ea f929    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea252
  2ee0b2: 4603         	mov	r3, r0
  2ee0b4: 9313         	str	r3, [sp, #0x4c]
  2ee0b6: 4bfd         	ldr	r3, [pc, #0x3f4]        @ 0x2ee4ac <AvatarLayer::init()+0x6d4>
  2ee0b8: 447b         	add	r3, pc
  2ee0ba: 4618         	mov	r0, r3
  2ee0bc: f2ea f922    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea244
  2ee0c0: 4603         	mov	r3, r0
  2ee0c2: 9314         	str	r3, [sp, #0x50]
  2ee0c4: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x2ee4b0 <AvatarLayer::init()+0x6d8>
  2ee0c6: 447b         	add	r3, pc
  2ee0c8: 4618         	mov	r0, r3
  2ee0ca: f2ea f91b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea236
  2ee0ce: 4603         	mov	r3, r0
  2ee0d0: 9315         	str	r3, [sp, #0x54]
  2ee0d2: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x2ee4b4 <AvatarLayer::init()+0x6dc>
  2ee0d4: 447b         	add	r3, pc
  2ee0d6: 4618         	mov	r0, r3
  2ee0d8: f2ea f914    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea228
  2ee0dc: 4603         	mov	r3, r0
  2ee0de: 9316         	str	r3, [sp, #0x58]
  2ee0e0: 4bf5         	ldr	r3, [pc, #0x3d4]        @ 0x2ee4b8 <AvatarLayer::init()+0x6e0>
  2ee0e2: 447b         	add	r3, pc
  2ee0e4: 4618         	mov	r0, r3
  2ee0e6: f2ea f90d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea21a
  2ee0ea: 4603         	mov	r3, r0
  2ee0ec: 9317         	str	r3, [sp, #0x5c]
  2ee0ee: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x2ee4bc <AvatarLayer::init()+0x6e4>
  2ee0f0: 447b         	add	r3, pc
  2ee0f2: 4618         	mov	r0, r3
  2ee0f4: f2ea f906    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2ea20c
  2ee0f8: 4603         	mov	r3, r0
  2ee0fa: 9318         	str	r3, [sp, #0x60]
  2ee0fc: ab03         	add	r3, sp, #0xc
  2ee0fe: 681a         	ldr	r2, [r3]
  2ee100: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x2ee4c0 <AvatarLayer::init()+0x6e8>
  2ee102: 58e3         	ldr	r3, [r4, r3]
  2ee104: 933e         	str	r3, [sp, #0xf8]
  2ee106: 2300         	movs	r3, #0x0
  2ee108: 933f         	str	r3, [sp, #0xfc]
  2ee10a: a80d         	add	r0, sp, #0x34
  2ee10c: a90e         	add	r1, sp, #0x38
  2ee10e: 9b3f         	ldr	r3, [sp, #0xfc]
  2ee110: 9300         	str	r3, [sp]
  2ee112: 9b3e         	ldr	r3, [sp, #0xf8]
  2ee114: 6800         	ldr	r0, [r0]
  2ee116: 6809         	ldr	r1, [r1]
  2ee118: f2ca f908    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ca210
  2ee11c: 4603         	mov	r3, r0
  2ee11e: 9319         	str	r3, [sp, #0x64]
  2ee120: 9819         	ldr	r0, [sp, #0x64]
  2ee122: 2100         	movs	r1, #0x0
  2ee124: f2c7 f80a    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c7014
  2ee128: 4602         	mov	r2, r0
  2ee12a: ab03         	add	r3, sp, #0xc
  2ee12c: 681b         	ldr	r3, [r3]
  2ee12e: f8c3 2140    	str.w	r2, [r3, #0x140]
  2ee132: ab03         	add	r3, sp, #0xc
  2ee134: 681b         	ldr	r3, [r3]
  2ee136: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ee13a: 4618         	mov	r0, r3
  2ee13c: f2a9 fed4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9da8
  2ee140: ab03         	add	r3, sp, #0xc
  2ee142: 681b         	ldr	r3, [r3]
  2ee144: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ee148: 681b         	ldr	r3, [r3]
  2ee14a: 334c         	adds	r3, #0x4c
  2ee14c: 681d         	ldr	r5, [r3]
  2ee14e: ab03         	add	r3, sp, #0xc
  2ee150: 681b         	ldr	r3, [r3]
  2ee152: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ee156: 461e         	mov	r6, r3
  2ee158: ab4e         	add	r3, sp, #0x138
  2ee15a: 4618         	mov	r0, r3
  2ee15c: f04f 0100    	mov.w	r1, #0x0
  2ee160: f2c4 2160    	movt	r1, #0x4260
  2ee164: f04f 4284    	mov.w	r2, #0x42000000
  2ee168: f2a4 fdc2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4b84
  2ee16c: ab4e         	add	r3, sp, #0x138
  2ee16e: 4630         	mov	r0, r6
  2ee170: 4619         	mov	r1, r3
  2ee172: 47a8         	blx	r5
  2ee174: ab03         	add	r3, sp, #0xc
  2ee176: 681b         	ldr	r3, [r3]
  2ee178: 681b         	ldr	r3, [r3]
  2ee17a: 33c8         	adds	r3, #0xc8
  2ee17c: 681b         	ldr	r3, [r3]
  2ee17e: aa03         	add	r2, sp, #0xc
  2ee180: 6811         	ldr	r1, [r2]
  2ee182: aa03         	add	r2, sp, #0xc
  2ee184: 6812         	ldr	r2, [r2]
  2ee186: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ee18a: 4608         	mov	r0, r1
  2ee18c: 4611         	mov	r1, r2
  2ee18e: 4798         	blx	r3
  2ee190: ab03         	add	r3, sp, #0xc
  2ee192: 681a         	ldr	r2, [r3]
  2ee194: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x2ee4c4 <AvatarLayer::init()+0x6ec>
  2ee196: 58e3         	ldr	r3, [r4, r3]
  2ee198: 9340         	str	r3, [sp, #0x100]
  2ee19a: 2300         	movs	r3, #0x0
  2ee19c: 9341         	str	r3, [sp, #0x104]
  2ee19e: a80f         	add	r0, sp, #0x3c
  2ee1a0: a910         	add	r1, sp, #0x40
  2ee1a2: 9b41         	ldr	r3, [sp, #0x104]
  2ee1a4: 9300         	str	r3, [sp]
  2ee1a6: 9b40         	ldr	r3, [sp, #0x100]
  2ee1a8: 6800         	ldr	r0, [r0]
  2ee1aa: 6809         	ldr	r1, [r1]
  2ee1ac: f2ca f8be    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ca17c
  2ee1b0: 4603         	mov	r3, r0
  2ee1b2: 931a         	str	r3, [sp, #0x68]
  2ee1b4: 981a         	ldr	r0, [sp, #0x68]
  2ee1b6: 2100         	movs	r1, #0x0
  2ee1b8: f2c6 ffc0    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c6f80
  2ee1bc: 4602         	mov	r2, r0
  2ee1be: ab03         	add	r3, sp, #0xc
  2ee1c0: 681b         	ldr	r3, [r3]
  2ee1c2: f8c3 2144    	str.w	r2, [r3, #0x144]
  2ee1c6: ab03         	add	r3, sp, #0xc
  2ee1c8: 681b         	ldr	r3, [r3]
  2ee1ca: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ee1ce: 4618         	mov	r0, r3
  2ee1d0: f2a9 fe8a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9d14
  2ee1d4: ab03         	add	r3, sp, #0xc
  2ee1d6: 681b         	ldr	r3, [r3]
  2ee1d8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ee1dc: 681b         	ldr	r3, [r3]
  2ee1de: 334c         	adds	r3, #0x4c
  2ee1e0: 681d         	ldr	r5, [r3]
  2ee1e2: ab03         	add	r3, sp, #0xc
  2ee1e4: 681b         	ldr	r3, [r3]
  2ee1e6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ee1ea: 461e         	mov	r6, r3
  2ee1ec: ed9d 7a32    	vldr	s14, [sp, #200]
  2ee1f0: eddf 7aa4    	vldr	s15, [pc, #656]         @ 0x2ee484 <AvatarLayer::init()+0x6ac>
  2ee1f4: ee77 7a67    	vsub.f32	s15, s14, s15
  2ee1f8: ab4e         	add	r3, sp, #0x138
  2ee1fa: 4618         	mov	r0, r3
  2ee1fc: ee17 1a90    	vmov	r1, s15
  2ee200: f04f 4284    	mov.w	r2, #0x42000000
  2ee204: f2a4 fd74    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4ae8
  2ee208: ab4e         	add	r3, sp, #0x138
  2ee20a: 4630         	mov	r0, r6
  2ee20c: 4619         	mov	r1, r3
  2ee20e: 47a8         	blx	r5
  2ee210: ab03         	add	r3, sp, #0xc
  2ee212: 681b         	ldr	r3, [r3]
  2ee214: 681b         	ldr	r3, [r3]
  2ee216: 33c8         	adds	r3, #0xc8
  2ee218: 681b         	ldr	r3, [r3]
  2ee21a: aa03         	add	r2, sp, #0xc
  2ee21c: 6811         	ldr	r1, [r2]
  2ee21e: aa03         	add	r2, sp, #0xc
  2ee220: 6812         	ldr	r2, [r2]
  2ee222: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  2ee226: 4608         	mov	r0, r1
  2ee228: 4611         	mov	r1, r2
  2ee22a: 4798         	blx	r3
  2ee22c: ab03         	add	r3, sp, #0xc
  2ee22e: 681a         	ldr	r2, [r3]
  2ee230: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x2ee4c8 <AvatarLayer::init()+0x6f0>
  2ee232: 58e3         	ldr	r3, [r4, r3]
  2ee234: 9342         	str	r3, [sp, #0x108]
  2ee236: 2300         	movs	r3, #0x0
  2ee238: 9343         	str	r3, [sp, #0x10c]
  2ee23a: a811         	add	r0, sp, #0x44
  2ee23c: a912         	add	r1, sp, #0x48
  2ee23e: 9b43         	ldr	r3, [sp, #0x10c]
  2ee240: 9300         	str	r3, [sp]
  2ee242: 9b42         	ldr	r3, [sp, #0x108]
  2ee244: 6800         	ldr	r0, [r0]
  2ee246: 6809         	ldr	r1, [r1]
  2ee248: f2ca f870    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ca0e0
  2ee24c: 4603         	mov	r3, r0
  2ee24e: 931b         	str	r3, [sp, #0x6c]
  2ee250: 981b         	ldr	r0, [sp, #0x6c]
  2ee252: 2100         	movs	r1, #0x0
  2ee254: f2c6 ff72    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c6ee4
  2ee258: 4602         	mov	r2, r0
  2ee25a: ab03         	add	r3, sp, #0xc
  2ee25c: 681b         	ldr	r3, [r3]
  2ee25e: f8c3 2118    	str.w	r2, [r3, #0x118]
  2ee262: ab03         	add	r3, sp, #0xc
  2ee264: 681b         	ldr	r3, [r3]
  2ee266: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ee26a: 4618         	mov	r0, r3
  2ee26c: f2a9 fe3c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9c78
  2ee270: ab03         	add	r3, sp, #0xc
  2ee272: 681b         	ldr	r3, [r3]
  2ee274: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ee278: 681b         	ldr	r3, [r3]
  2ee27a: 334c         	adds	r3, #0x4c
  2ee27c: 681d         	ldr	r5, [r3]
  2ee27e: ab03         	add	r3, sp, #0xc
  2ee280: 681b         	ldr	r3, [r3]
  2ee282: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ee286: 461e         	mov	r6, r3
  2ee288: ed9d 7a32    	vldr	s14, [sp, #200]
  2ee28c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ee290: eec7 7a27    	vdiv.f32	s15, s14, s15
  2ee294: ab4e         	add	r3, sp, #0x138
  2ee296: 4618         	mov	r0, r3
  2ee298: ee17 1a90    	vmov	r1, s15
  2ee29c: f04f 4284    	mov.w	r2, #0x42000000
  2ee2a0: f2a4 fd26    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4a4c
  2ee2a4: ab4e         	add	r3, sp, #0x138
  2ee2a6: 4630         	mov	r0, r6
  2ee2a8: 4619         	mov	r1, r3
  2ee2aa: 47a8         	blx	r5
  2ee2ac: ab03         	add	r3, sp, #0xc
  2ee2ae: 681b         	ldr	r3, [r3]
  2ee2b0: 681b         	ldr	r3, [r3]
  2ee2b2: 33c8         	adds	r3, #0xc8
  2ee2b4: 681b         	ldr	r3, [r3]
  2ee2b6: aa03         	add	r2, sp, #0xc
  2ee2b8: 6811         	ldr	r1, [r2]
  2ee2ba: aa03         	add	r2, sp, #0xc
  2ee2bc: 6812         	ldr	r2, [r2]
  2ee2be: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2ee2c2: 4608         	mov	r0, r1
  2ee2c4: 4611         	mov	r1, r2
  2ee2c6: 4798         	blx	r3
  2ee2c8: f04f 4342    	mov.w	r3, #0xc2000000
  2ee2cc: 931c         	str	r3, [sp, #0x70]
  2ee2ce: f04f 0300    	mov.w	r3, #0x0
  2ee2d2: f2c4 23b0    	movt	r3, #0x42b0
  2ee2d6: 931d         	str	r3, [sp, #0x74]
  2ee2d8: ab03         	add	r3, sp, #0xc
  2ee2da: 681a         	ldr	r2, [r3]
  2ee2dc: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x2ee4cc <AvatarLayer::init()+0x6f4>
  2ee2de: 58e3         	ldr	r3, [r4, r3]
  2ee2e0: 9344         	str	r3, [sp, #0x110]
  2ee2e2: 2300         	movs	r3, #0x0
  2ee2e4: 9345         	str	r3, [sp, #0x114]
  2ee2e6: 9b45         	ldr	r3, [sp, #0x114]
  2ee2e8: 9300         	str	r3, [sp]
  2ee2ea: 9b44         	ldr	r3, [sp, #0x110]
  2ee2ec: 9813         	ldr	r0, [sp, #0x4c]
  2ee2ee: 9914         	ldr	r1, [sp, #0x50]
  2ee2f0: f2ca f81c    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2ca038
  2ee2f4: 4603         	mov	r3, r0
  2ee2f6: 931e         	str	r3, [sp, #0x78]
  2ee2f8: 981e         	ldr	r0, [sp, #0x78]
  2ee2fa: 2100         	movs	r1, #0x0
  2ee2fc: f2c6 ff1e    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c6e3c
  2ee300: 4602         	mov	r2, r0
  2ee302: ab03         	add	r3, sp, #0xc
  2ee304: 681b         	ldr	r3, [r3]
  2ee306: f8c3 2124    	str.w	r2, [r3, #0x124]
  2ee30a: ab03         	add	r3, sp, #0xc
  2ee30c: 681b         	ldr	r3, [r3]
  2ee30e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ee312: 4618         	mov	r0, r3
  2ee314: f2a9 fde8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9bd0
  2ee318: ab03         	add	r3, sp, #0xc
  2ee31a: 681b         	ldr	r3, [r3]
  2ee31c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ee320: 681b         	ldr	r3, [r3]
  2ee322: 334c         	adds	r3, #0x4c
  2ee324: 681d         	ldr	r5, [r3]
  2ee326: ab03         	add	r3, sp, #0xc
  2ee328: 681b         	ldr	r3, [r3]
  2ee32a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ee32e: 461e         	mov	r6, r3
  2ee330: ed9d 7a34    	vldr	s14, [sp, #208]
  2ee334: eddd 7a1d    	vldr	s15, [sp, #116]
  2ee338: ee77 6a27    	vadd.f32	s13, s14, s15
  2ee33c: ed9d 7a35    	vldr	s14, [sp, #212]
  2ee340: eddf 7a51    	vldr	s15, [pc, #324]         @ 0x2ee488 <AvatarLayer::init()+0x6b0>
  2ee344: ee37 7a67    	vsub.f32	s14, s14, s15
  2ee348: eddd 7a1c    	vldr	s15, [sp, #112]
  2ee34c: ee77 7a27    	vadd.f32	s15, s14, s15
  2ee350: ab4e         	add	r3, sp, #0x138
  2ee352: 4618         	mov	r0, r3
  2ee354: ee16 1a90    	vmov	r1, s13
  2ee358: ee17 2a90    	vmov	r2, s15
  2ee35c: f2a4 fcc8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4990
  2ee360: ab4e         	add	r3, sp, #0x138
  2ee362: 4630         	mov	r0, r6
  2ee364: 4619         	mov	r1, r3
  2ee366: 47a8         	blx	r5
  2ee368: ab03         	add	r3, sp, #0xc
  2ee36a: 681b         	ldr	r3, [r3]
  2ee36c: 681b         	ldr	r3, [r3]
  2ee36e: 33c8         	adds	r3, #0xc8
  2ee370: 681b         	ldr	r3, [r3]
  2ee372: aa03         	add	r2, sp, #0xc
  2ee374: 6811         	ldr	r1, [r2]
  2ee376: aa03         	add	r2, sp, #0xc
  2ee378: 6812         	ldr	r2, [r2]
  2ee37a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2ee37e: 4608         	mov	r0, r1
  2ee380: 4611         	mov	r1, r2
  2ee382: 4798         	blx	r3
  2ee384: ab03         	add	r3, sp, #0xc
  2ee386: 681a         	ldr	r2, [r3]
  2ee388: 4b51         	ldr	r3, [pc, #0x144]        @ 0x2ee4d0 <AvatarLayer::init()+0x6f8>
  2ee38a: 58e3         	ldr	r3, [r4, r3]
  2ee38c: 9346         	str	r3, [sp, #0x118]
  2ee38e: 2300         	movs	r3, #0x0
  2ee390: 9347         	str	r3, [sp, #0x11c]
  2ee392: 9b47         	ldr	r3, [sp, #0x11c]
  2ee394: 9300         	str	r3, [sp]
  2ee396: 9b46         	ldr	r3, [sp, #0x118]
  2ee398: 9815         	ldr	r0, [sp, #0x54]
  2ee39a: 9916         	ldr	r1, [sp, #0x58]
  2ee39c: f2c9 ffc6    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c9f8c
  2ee3a0: 4603         	mov	r3, r0
  2ee3a2: 931f         	str	r3, [sp, #0x7c]
  2ee3a4: 981f         	ldr	r0, [sp, #0x7c]
  2ee3a6: 2100         	movs	r1, #0x0
  2ee3a8: f2c6 fec8    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c6d90
  2ee3ac: 4602         	mov	r2, r0
  2ee3ae: ab03         	add	r3, sp, #0xc
  2ee3b0: 681b         	ldr	r3, [r3]
  2ee3b2: f8c3 2128    	str.w	r2, [r3, #0x128]
  2ee3b6: ab03         	add	r3, sp, #0xc
  2ee3b8: 681b         	ldr	r3, [r3]
  2ee3ba: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ee3be: 4618         	mov	r0, r3
  2ee3c0: f2a9 fd92    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9b24
  2ee3c4: ab03         	add	r3, sp, #0xc
  2ee3c6: 681b         	ldr	r3, [r3]
  2ee3c8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ee3cc: 681b         	ldr	r3, [r3]
  2ee3ce: 334c         	adds	r3, #0x4c
  2ee3d0: 681d         	ldr	r5, [r3]
  2ee3d2: ab03         	add	r3, sp, #0xc
  2ee3d4: 681b         	ldr	r3, [r3]
  2ee3d6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ee3da: 461e         	mov	r6, r3
  2ee3dc: ed9d 7a34    	vldr	s14, [sp, #208]
  2ee3e0: eddd 7a1d    	vldr	s15, [sp, #116]
  2ee3e4: ee77 6a67    	vsub.f32	s13, s14, s15
  2ee3e8: ed9d 7a35    	vldr	s14, [sp, #212]
  2ee3ec: eddf 7a26    	vldr	s15, [pc, #152]         @ 0x2ee488 <AvatarLayer::init()+0x6b0>
  2ee3f0: ee37 7a67    	vsub.f32	s14, s14, s15
  2ee3f4: eddd 7a1c    	vldr	s15, [sp, #112]
  2ee3f8: ee77 7a27    	vadd.f32	s15, s14, s15
  2ee3fc: ab4e         	add	r3, sp, #0x138
  2ee3fe: 4618         	mov	r0, r3
  2ee400: ee16 1a90    	vmov	r1, s13
  2ee404: ee17 2a90    	vmov	r2, s15
  2ee408: f2a4 fc72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a48e4
  2ee40c: ab4e         	add	r3, sp, #0x138
  2ee40e: 4630         	mov	r0, r6
  2ee410: 4619         	mov	r1, r3
  2ee412: 47a8         	blx	r5
  2ee414: ab03         	add	r3, sp, #0xc
  2ee416: 681b         	ldr	r3, [r3]
  2ee418: 681b         	ldr	r3, [r3]
  2ee41a: 33c8         	adds	r3, #0xc8
  2ee41c: 681b         	ldr	r3, [r3]
  2ee41e: aa03         	add	r2, sp, #0xc
  2ee420: 6811         	ldr	r1, [r2]
  2ee422: aa03         	add	r2, sp, #0xc
  2ee424: 6812         	ldr	r2, [r2]
  2ee426: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2ee42a: 4608         	mov	r0, r1
  2ee42c: 4611         	mov	r1, r2
  2ee42e: 4798         	blx	r3
  2ee430: ab03         	add	r3, sp, #0xc
  2ee432: 681a         	ldr	r2, [r3]
  2ee434: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x2ee4d4 <AvatarLayer::init()+0x6fc>
  2ee436: 58e3         	ldr	r3, [r4, r3]
  2ee438: 9348         	str	r3, [sp, #0x120]
  2ee43a: 2300         	movs	r3, #0x0
  2ee43c: 9349         	str	r3, [sp, #0x124]
  2ee43e: 9b49         	ldr	r3, [sp, #0x124]
  2ee440: 9300         	str	r3, [sp]
  2ee442: 9b48         	ldr	r3, [sp, #0x120]
  2ee444: 9817         	ldr	r0, [sp, #0x5c]
  2ee446: 9918         	ldr	r1, [sp, #0x60]
  2ee448: f2c9 ff70    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c9ee0
  2ee44c: 4603         	mov	r3, r0
  2ee44e: 9320         	str	r3, [sp, #0x80]
  2ee450: 9820         	ldr	r0, [sp, #0x80]
  2ee452: 2100         	movs	r1, #0x0
  2ee454: f2c6 fe72    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c6ce4
  2ee458: 4602         	mov	r2, r0
  2ee45a: ab03         	add	r3, sp, #0xc
  2ee45c: 681b         	ldr	r3, [r3]
  2ee45e: f8c3 2134    	str.w	r2, [r3, #0x134]
  2ee462: ab03         	add	r3, sp, #0xc
  2ee464: 681b         	ldr	r3, [r3]
  2ee466: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ee46a: 4618         	mov	r0, r3
  2ee46c: f2a9 fd3c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9a78
  2ee470: ab03         	add	r3, sp, #0xc
  2ee472: 681b         	ldr	r3, [r3]
  2ee474: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ee478: 681b         	ldr	r3, [r3]
  2ee47a: 334c         	adds	r3, #0x4c
  2ee47c: 681d         	ldr	r5, [r3]
  2ee47e: ab03         	add	r3, sp, #0xc
  2ee480: e02e         	b	0x2ee4e0 <AvatarLayer::init()+0x708> @ imm = #0x5c
  2ee482: bf00         	nop
  2ee484: 0000         	movs	r0, r0
  2ee486: 4260         	rsbs	r0, r4, #0
  2ee488: 0000         	movs	r0, r0
  2ee48a: 4200         	tst	r0, r0
  2ee48c: d724         	bvc	0x2ee4d8 <AvatarLayer::init()+0x700> @ imm = #0x48
  2ee48e: ffff 5314    	vrsra.u32	d21, d4, #0x1
  2ee492: 004d         	lsls	r5, r1, #0x1
  2ee494: 5302         	strh	r2, [r0, r4]
  2ee496: 004d         	lsls	r5, r1, #0x1
  2ee498: 52f0         	strh	r0, [r6, r3]
  2ee49a: 004d         	lsls	r5, r1, #0x1
  2ee49c: 52de         	strh	r6, [r3, r3]
  2ee49e: 004d         	lsls	r5, r1, #0x1
  2ee4a0: 52d8         	strh	r0, [r3, r3]
  2ee4a2: 004d         	lsls	r5, r1, #0x1
  2ee4a4: 52c6         	strh	r6, [r0, r3]
  2ee4a6: 004d         	lsls	r5, r1, #0x1
  2ee4a8: 52c2         	strh	r2, [r0, r3]
  2ee4aa: 004d         	lsls	r5, r1, #0x1
  2ee4ac: 52b4         	strh	r4, [r6, r2]
  2ee4ae: 004d         	lsls	r5, r1, #0x1
  2ee4b0: 52b6         	strh	r6, [r6, r2]
  2ee4b2: 004d         	lsls	r5, r1, #0x1
  2ee4b4: 52a8         	strh	r0, [r5, r2]
  2ee4b6: 004d         	lsls	r5, r1, #0x1
  2ee4b8: 52aa         	strh	r2, [r5, r2]
  2ee4ba: 004d         	lsls	r5, r1, #0x1
  2ee4bc: 529c         	strh	r4, [r3, r2]
  2ee4be: 004d         	lsls	r5, r1, #0x1
  2ee4c0: d8b4         	bhi	0x2ee42c <AvatarLayer::init()+0x654> @ imm = #-0x98
  2ee4c2: ffff d8b8    	<unknown>
  2ee4c6: ffff d8bc    	<unknown>
  2ee4ca: ffff d8c0    	vtbx.8	d29, {d31}, d0
  2ee4ce: ffff d8c4    	vtbx.8	d29, {d31}, d4
  2ee4d2: ffff d8c8    	vtbx.8	d29, {d31}, d8
  2ee4d6: ffff 0000    	<unknown>
  2ee4da: 42be         	cmp	r6, r7
  2ee4dc: 999a         	ldr	r1, [sp, #0x268]
  2ee4de: 3f19         	subs	r7, #0x19
  2ee4e0: 681b         	ldr	r3, [r3]
  2ee4e2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ee4e6: 461e         	mov	r6, r3
  2ee4e8: 9b34         	ldr	r3, [sp, #0xd0]
  2ee4ea: ed9d 7a35    	vldr	s14, [sp, #212]
  2ee4ee: ed5f 7a06    	vldr	s15, [pc, #-24]         @ 0x2ee4d8 <AvatarLayer::init()+0x700>
  2ee4f2: ee37 7a27    	vadd.f32	s14, s14, s15
  2ee4f6: eddd 7a1c    	vldr	s15, [sp, #112]
  2ee4fa: ee77 7a27    	vadd.f32	s15, s14, s15
  2ee4fe: aa4e         	add	r2, sp, #0x138
  2ee500: 4610         	mov	r0, r2
  2ee502: 4619         	mov	r1, r3
  2ee504: ee17 2a90    	vmov	r2, s15
  2ee508: f2a4 fbf2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a47e4
  2ee50c: ab4e         	add	r3, sp, #0x138
  2ee50e: 4630         	mov	r0, r6
  2ee510: 4619         	mov	r1, r3
  2ee512: 47a8         	blx	r5
  2ee514: ab03         	add	r3, sp, #0xc
  2ee516: 681b         	ldr	r3, [r3]
  2ee518: 681b         	ldr	r3, [r3]
  2ee51a: 33c8         	adds	r3, #0xc8
  2ee51c: 681b         	ldr	r3, [r3]
  2ee51e: aa03         	add	r2, sp, #0xc
  2ee520: 6811         	ldr	r1, [r2]
  2ee522: aa03         	add	r2, sp, #0xc
  2ee524: 6812         	ldr	r2, [r2]
  2ee526: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2ee52a: 4608         	mov	r0, r1
  2ee52c: 4611         	mov	r1, r2
  2ee52e: 4798         	blx	r3
  2ee530: f04f 4341    	mov.w	r3, #0xc1000000
  2ee534: 9321         	str	r3, [sp, #0x84]
  2ee536: f04f 0300    	mov.w	r3, #0x0
  2ee53a: f2c4 13c0    	movt	r3, #0x41c0
  2ee53e: 9322         	str	r3, [sp, #0x88]
  2ee540: f64c 43cd    	movw	r3, #0xcccd
  2ee544: f6c3 63cc    	movt	r3, #0x3ecc
  2ee548: 9323         	str	r3, [sp, #0x8c]
  2ee54a: ab4e         	add	r3, sp, #0x138
  2ee54c: 4618         	mov	r0, r3
  2ee54e: f04f 4184    	mov.w	r1, #0x42000000
  2ee552: f04f 0200    	mov.w	r2, #0x0
  2ee556: f2c4 1290    	movt	r2, #0x4190
  2ee55a: f2a4 fbc9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4792
  2ee55e: a936         	add	r1, sp, #0xd8
  2ee560: aa34         	add	r2, sp, #0xd0
  2ee562: ab4e         	add	r3, sp, #0x138
  2ee564: 4608         	mov	r0, r1
  2ee566: 4611         	mov	r1, r2
  2ee568: 461a         	mov	r2, r3
  2ee56a: f7fe fc7b    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x170a
  2ee56e: f136 fda3    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x136b46
  2ee572: 4603         	mov	r3, r0
  2ee574: 4618         	mov	r0, r3
  2ee576: f136 ff35    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x136e6a
  2ee57a: 4603         	mov	r3, r0
  2ee57c: 4618         	mov	r0, r3
  2ee57e: f7ff fadd    	bl	0x2edb3c <cocos2d::CCInteger::getValue() const+0xce8> @ imm = #-0xa46
  2ee582: 9024         	str	r0, [sp, #0x90]
  2ee584: ab06         	add	r3, sp, #0x18
  2ee586: 4618         	mov	r0, r3
  2ee588: 9924         	ldr	r1, [sp, #0x90]
  2ee58a: f7ff f847    	bl	0x2ed61c <cocos2d::CCInteger::getValue() const+0x7c8> @ imm = #-0xf72
  2ee58e: ab06         	add	r3, sp, #0x18
  2ee590: 4618         	mov	r0, r3
  2ee592: f0c6 f563    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c6ac6
  2ee596: 4603         	mov	r3, r0
  2ee598: ee06 3a90    	vmov	s13, r3
  2ee59c: eeb8 7a66    	vcvt.f32.u32	s14, s13
  2ee5a0: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  2ee5a4: ee77 7a27    	vadd.f32	s15, s14, s15
  2ee5a8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ee5ac: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  2ee5b0: eddd 7a22    	vldr	s15, [sp, #136]
  2ee5b4: ee27 7a27    	vmul.f32	s14, s14, s15
  2ee5b8: ed5f 7a38    	vldr	s15, [pc, #-224]        @ 0x2ee4dc <AvatarLayer::init()+0x704>
  2ee5bc: ee27 7a27    	vmul.f32	s14, s14, s15
  2ee5c0: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  2ee5c4: ee67 7a27    	vmul.f32	s15, s14, s15
  2ee5c8: edcd 7a25    	vstr	s15, [sp, #148]
  2ee5cc: 9b24         	ldr	r3, [sp, #0x90]
  2ee5ce: 011a         	lsls	r2, r3, #0x4
  2ee5d0: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x2eebb8 <AvatarLayer::init()+0xde0>
  2ee5d4: 58e3         	ldr	r3, [r4, r3]
  2ee5d6: 4413         	add	r3, r2
  2ee5d8: f8df 25e0    	ldr.w	r2, [pc, #0x5e0]        @ 0x2eebbc <AvatarLayer::init()+0xde4>
  2ee5dc: 447a         	add	r2, pc
  2ee5de: 4610         	mov	r0, r2
  2ee5e0: 4619         	mov	r1, r3
  2ee5e2: f2e9 fe0d    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2e9c1a
  2ee5e6: 4602         	mov	r2, r0
  2ee5e8: ab03         	add	r3, sp, #0xc
  2ee5ea: 681b         	ldr	r3, [r3]
  2ee5ec: f8c3 217c    	str.w	r2, [r3, #0x17c]
  2ee5f0: ab03         	add	r3, sp, #0xc
  2ee5f2: 681b         	ldr	r3, [r3]
  2ee5f4: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  2ee5f8: 4618         	mov	r0, r3
  2ee5fa: f2a9 fc75    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a98ea
  2ee5fe: ab03         	add	r3, sp, #0xc
  2ee600: 681b         	ldr	r3, [r3]
  2ee602: f8d3 317c    	ldr.w	r3, [r3, #0x17c]
  2ee606: 681b         	ldr	r3, [r3]
  2ee608: 334c         	adds	r3, #0x4c
  2ee60a: 681d         	ldr	r5, [r3]
  2ee60c: ab03         	add	r3, sp, #0xc
  2ee60e: 681b         	ldr	r3, [r3]
  2ee610: f8d3 617c    	ldr.w	r6, [r3, #0x17c]
  2ee614: eddd 7a25    	vldr	s15, [sp, #148]
  2ee618: eeb1 7a67    	vneg.f32	s14, s15
  2ee61c: eef3 7a00    	vmov.f32	s15, #1.600000e+01
  2ee620: ee77 7a67    	vsub.f32	s15, s14, s15
  2ee624: ab4a         	add	r3, sp, #0x128
  2ee626: 4618         	mov	r0, r3
  2ee628: ee17 1a90    	vmov	r1, s15
  2ee62c: f04f 0200    	mov.w	r2, #0x0
  2ee630: f2c4 22cc    	movt	r2, #0x42cc
  2ee634: f2a4 fb5c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a46b8
  2ee638: a94e         	add	r1, sp, #0x138
  2ee63a: aa34         	add	r2, sp, #0xd0
  2ee63c: ab4a         	add	r3, sp, #0x128
  2ee63e: 4608         	mov	r0, r1
  2ee640: 4611         	mov	r1, r2
  2ee642: 461a         	mov	r2, r3
  2ee644: f7fe fc0e    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x17e4
  2ee648: ab4e         	add	r3, sp, #0x138
  2ee64a: 4630         	mov	r0, r6
  2ee64c: 4619         	mov	r1, r3
  2ee64e: 47a8         	blx	r5
  2ee650: ab03         	add	r3, sp, #0xc
  2ee652: 681b         	ldr	r3, [r3]
  2ee654: 681b         	ldr	r3, [r3]
  2ee656: 33c8         	adds	r3, #0xc8
  2ee658: 681b         	ldr	r3, [r3]
  2ee65a: aa03         	add	r2, sp, #0xc
  2ee65c: 6811         	ldr	r1, [r2]
  2ee65e: aa03         	add	r2, sp, #0xc
  2ee660: 6812         	ldr	r2, [r2]
  2ee662: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  2ee666: 4608         	mov	r0, r1
  2ee668: 4611         	mov	r1, r2
  2ee66a: 4798         	blx	r3
  2ee66c: ab06         	add	r3, sp, #0x18
  2ee66e: 4618         	mov	r0, r3
  2ee670: f0c6 f646    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6c8c
  2ee674: 4603         	mov	r3, r0
  2ee676: f8df 2548    	ldr.w	r2, [pc, #0x548]        @ 0x2eebc0 <AvatarLayer::init()+0xde8>
  2ee67a: 447a         	add	r2, pc
  2ee67c: 4610         	mov	r0, r2
  2ee67e: 4619         	mov	r1, r3
  2ee680: f2ab fa46    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ab48c
  2ee684: 4603         	mov	r3, r0
  2ee686: 4618         	mov	r0, r3
  2ee688: f2ab f94e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2ab29c
  2ee68c: 4605         	mov	r5, r0
  2ee68e: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x2eebc4 <AvatarLayer::init()+0xdec>
  2ee692: 447b         	add	r3, pc
  2ee694: 4618         	mov	r0, r3
  2ee696: f0c6 f633    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6c66
  2ee69a: 4603         	mov	r3, r0
  2ee69c: 2220         	movs	r2, #0x20
  2ee69e: 9200         	str	r2, [sp]
  2ee6a0: 4628         	mov	r0, r5
  2ee6a2: 4619         	mov	r1, r3
  2ee6a4: 2220         	movs	r2, #0x20
  2ee6a6: 2320         	movs	r3, #0x20
  2ee6a8: f2b6 fe66    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b6ccc
  2ee6ac: 4602         	mov	r2, r0
  2ee6ae: ab03         	add	r3, sp, #0xc
  2ee6b0: 681b         	ldr	r3, [r3]
  2ee6b2: f8c3 2160    	str.w	r2, [r3, #0x160]
  2ee6b6: ab03         	add	r3, sp, #0xc
  2ee6b8: 681b         	ldr	r3, [r3]
  2ee6ba: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2ee6be: 4618         	mov	r0, r3
  2ee6c0: f2a9 fc12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9824
  2ee6c4: ab03         	add	r3, sp, #0xc
  2ee6c6: 681b         	ldr	r3, [r3]
  2ee6c8: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2ee6cc: 681b         	ldr	r3, [r3]
  2ee6ce: 334c         	adds	r3, #0x4c
  2ee6d0: 681d         	ldr	r5, [r3]
  2ee6d2: ab03         	add	r3, sp, #0xc
  2ee6d4: 681b         	ldr	r3, [r3]
  2ee6d6: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2ee6da: 461e         	mov	r6, r3
  2ee6dc: eeb1 7a04    	vmov.f32	s14, #5.000000e+00
  2ee6e0: eddd 7a25    	vldr	s15, [sp, #148]
  2ee6e4: ee77 7a67    	vsub.f32	s15, s14, s15
  2ee6e8: ab4a         	add	r3, sp, #0x128
  2ee6ea: 4618         	mov	r0, r3
  2ee6ec: ee17 1a90    	vmov	r1, s15
  2ee6f0: f04f 0200    	mov.w	r2, #0x0
  2ee6f4: f2c4 22be    	movt	r2, #0x42be
  2ee6f8: f2a4 fafa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a45f4
  2ee6fc: a94e         	add	r1, sp, #0x138
  2ee6fe: aa34         	add	r2, sp, #0xd0
  2ee700: ab4a         	add	r3, sp, #0x128
  2ee702: 4608         	mov	r0, r1
  2ee704: 4611         	mov	r1, r2
  2ee706: 461a         	mov	r2, r3
  2ee708: f7fe fbac    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x18a8
  2ee70c: ab4e         	add	r3, sp, #0x138
  2ee70e: 4630         	mov	r0, r6
  2ee710: 4619         	mov	r1, r3
  2ee712: 47a8         	blx	r5
  2ee714: ab03         	add	r3, sp, #0xc
  2ee716: 681b         	ldr	r3, [r3]
  2ee718: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2ee71c: eddd 7a22    	vldr	s15, [sp, #136]
  2ee720: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ee724: ee17 2a90    	vmov	r2, s15
  2ee728: 4618         	mov	r0, r3
  2ee72a: 4611         	mov	r1, r2
  2ee72c: f2b7 fb2a    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b7654
  2ee730: ab03         	add	r3, sp, #0xc
  2ee732: 681b         	ldr	r3, [r3]
  2ee734: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2ee738: 681b         	ldr	r3, [r3]
  2ee73a: 3340         	adds	r3, #0x40
  2ee73c: 681b         	ldr	r3, [r3]
  2ee73e: aa03         	add	r2, sp, #0xc
  2ee740: 6812         	ldr	r2, [r2]
  2ee742: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  2ee746: 4610         	mov	r0, r2
  2ee748: f04f 517c    	mov.w	r1, #0x3f000000
  2ee74c: 4798         	blx	r3
  2ee74e: ab03         	add	r3, sp, #0xc
  2ee750: 681b         	ldr	r3, [r3]
  2ee752: 681b         	ldr	r3, [r3]
  2ee754: 33c8         	adds	r3, #0xc8
  2ee756: 681b         	ldr	r3, [r3]
  2ee758: aa03         	add	r2, sp, #0xc
  2ee75a: 6811         	ldr	r1, [r2]
  2ee75c: aa03         	add	r2, sp, #0xc
  2ee75e: 6812         	ldr	r2, [r2]
  2ee760: f8d2 2160    	ldr.w	r2, [r2, #0x160]
  2ee764: 4608         	mov	r0, r1
  2ee766: 4611         	mov	r1, r2
  2ee768: 4798         	blx	r3
  2ee76a: f136 fca5    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x13694a
  2ee76e: 4603         	mov	r3, r0
  2ee770: 4618         	mov	r0, r3
  2ee772: f136 fe37    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x136c6e
  2ee776: 4603         	mov	r3, r0
  2ee778: 9326         	str	r3, [sp, #0x98]
  2ee77a: f8df 344c    	ldr.w	r3, [pc, #0x44c]        @ 0x2eebc8 <AvatarLayer::init()+0xdf0>
  2ee77e: 447b         	add	r3, pc
  2ee780: 4618         	mov	r0, r3
  2ee782: 9926         	ldr	r1, [sp, #0x98]
  2ee784: f2ab f9c4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ab388
  2ee788: 4603         	mov	r3, r0
  2ee78a: 4618         	mov	r0, r3
  2ee78c: f2ab f8cc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2ab198
  2ee790: 4605         	mov	r5, r0
  2ee792: f8df 3438    	ldr.w	r3, [pc, #0x438]        @ 0x2eebcc <AvatarLayer::init()+0xdf4>
  2ee796: 447b         	add	r3, pc
  2ee798: 4618         	mov	r0, r3
  2ee79a: f0c6 f5b1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6b62
  2ee79e: 4603         	mov	r3, r0
  2ee7a0: 2220         	movs	r2, #0x20
  2ee7a2: 9200         	str	r2, [sp]
  2ee7a4: 4628         	mov	r0, r5
  2ee7a6: 4619         	mov	r1, r3
  2ee7a8: 2220         	movs	r2, #0x20
  2ee7aa: 2320         	movs	r3, #0x20
  2ee7ac: f2b6 fde4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b6bc8
  2ee7b0: 4602         	mov	r2, r0
  2ee7b2: ab03         	add	r3, sp, #0xc
  2ee7b4: 681b         	ldr	r3, [r3]
  2ee7b6: f8c3 2164    	str.w	r2, [r3, #0x164]
  2ee7ba: ab03         	add	r3, sp, #0xc
  2ee7bc: 681b         	ldr	r3, [r3]
  2ee7be: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2ee7c2: 4618         	mov	r0, r3
  2ee7c4: f2a9 fb90    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9720
  2ee7c8: ab03         	add	r3, sp, #0xc
  2ee7ca: 681b         	ldr	r3, [r3]
  2ee7cc: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2ee7d0: 681b         	ldr	r3, [r3]
  2ee7d2: 334c         	adds	r3, #0x4c
  2ee7d4: 681d         	ldr	r5, [r3]
  2ee7d6: ab03         	add	r3, sp, #0xc
  2ee7d8: 681b         	ldr	r3, [r3]
  2ee7da: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2ee7de: 461e         	mov	r6, r3
  2ee7e0: ab4a         	add	r3, sp, #0x128
  2ee7e2: 4618         	mov	r0, r3
  2ee7e4: f04f 4185    	mov.w	r1, #0x42800000
  2ee7e8: f04f 0200    	mov.w	r2, #0x0
  2ee7ec: f2a4 fa80    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4500
  2ee7f0: a94e         	add	r1, sp, #0x138
  2ee7f2: aa36         	add	r2, sp, #0xd8
  2ee7f4: ab4a         	add	r3, sp, #0x128
  2ee7f6: 4608         	mov	r0, r1
  2ee7f8: 4611         	mov	r1, r2
  2ee7fa: 461a         	mov	r2, r3
  2ee7fc: f7fe fb32    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x199c
  2ee800: ab4e         	add	r3, sp, #0x138
  2ee802: 4630         	mov	r0, r6
  2ee804: 4619         	mov	r1, r3
  2ee806: 47a8         	blx	r5
  2ee808: ab03         	add	r3, sp, #0xc
  2ee80a: 681b         	ldr	r3, [r3]
  2ee80c: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2ee810: eddd 7a22    	vldr	s15, [sp, #136]
  2ee814: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ee818: ee17 2a90    	vmov	r2, s15
  2ee81c: 4618         	mov	r0, r3
  2ee81e: 4611         	mov	r1, r2
  2ee820: f2b7 fab0    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b7560
  2ee824: ab03         	add	r3, sp, #0xc
  2ee826: 681b         	ldr	r3, [r3]
  2ee828: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2ee82c: 681b         	ldr	r3, [r3]
  2ee82e: 3340         	adds	r3, #0x40
  2ee830: 681b         	ldr	r3, [r3]
  2ee832: aa03         	add	r2, sp, #0xc
  2ee834: 6812         	ldr	r2, [r2]
  2ee836: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  2ee83a: 4610         	mov	r0, r2
  2ee83c: 9923         	ldr	r1, [sp, #0x8c]
  2ee83e: 4798         	blx	r3
  2ee840: ab03         	add	r3, sp, #0xc
  2ee842: 681b         	ldr	r3, [r3]
  2ee844: 681b         	ldr	r3, [r3]
  2ee846: 33c8         	adds	r3, #0xc8
  2ee848: 681b         	ldr	r3, [r3]
  2ee84a: aa03         	add	r2, sp, #0xc
  2ee84c: 6811         	ldr	r1, [r2]
  2ee84e: aa03         	add	r2, sp, #0xc
  2ee850: 6812         	ldr	r2, [r2]
  2ee852: f8d2 2164    	ldr.w	r2, [r2, #0x164]
  2ee856: 4608         	mov	r0, r1
  2ee858: 4611         	mov	r1, r2
  2ee85a: 4798         	blx	r3
  2ee85c: 4bdc         	ldr	r3, [pc, #0x370]        @ 0x2eebd0 <AvatarLayer::init()+0xdf8>
  2ee85e: 447b         	add	r3, pc
  2ee860: 4618         	mov	r0, r3
  2ee862: f0c6 f54d    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6a9a
  2ee866: 4603         	mov	r3, r0
  2ee868: 2220         	movs	r2, #0x20
  2ee86a: 9200         	str	r2, [sp]
  2ee86c: 4ad9         	ldr	r2, [pc, #0x364]        @ 0x2eebd4 <AvatarLayer::init()+0xdfc>
  2ee86e: 447a         	add	r2, pc
  2ee870: 4610         	mov	r0, r2
  2ee872: 4619         	mov	r1, r3
  2ee874: 2220         	movs	r2, #0x20
  2ee876: 2320         	movs	r3, #0x20
  2ee878: f2b6 fd7e    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b6afc
  2ee87c: 4602         	mov	r2, r0
  2ee87e: ab03         	add	r3, sp, #0xc
  2ee880: 681b         	ldr	r3, [r3]
  2ee882: f8c3 2168    	str.w	r2, [r3, #0x168]
  2ee886: ab03         	add	r3, sp, #0xc
  2ee888: 681b         	ldr	r3, [r3]
  2ee88a: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2ee88e: 4618         	mov	r0, r3
  2ee890: f2a9 fb2a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9654
  2ee894: ab03         	add	r3, sp, #0xc
  2ee896: 681b         	ldr	r3, [r3]
  2ee898: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2ee89c: 681b         	ldr	r3, [r3]
  2ee89e: 334c         	adds	r3, #0x4c
  2ee8a0: 681d         	ldr	r5, [r3]
  2ee8a2: ab03         	add	r3, sp, #0xc
  2ee8a4: 681b         	ldr	r3, [r3]
  2ee8a6: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2ee8aa: 461e         	mov	r6, r3
  2ee8ac: ab4a         	add	r3, sp, #0x128
  2ee8ae: 4618         	mov	r0, r3
  2ee8b0: f04f 4185    	mov.w	r1, #0x42800000
  2ee8b4: f04f 0200    	mov.w	r2, #0x0
  2ee8b8: f2cc 1290    	movt	r2, #0xc190
  2ee8bc: f2a4 fa18    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4430
  2ee8c0: a94e         	add	r1, sp, #0x138
  2ee8c2: aa36         	add	r2, sp, #0xd8
  2ee8c4: ab4a         	add	r3, sp, #0x128
  2ee8c6: 4608         	mov	r0, r1
  2ee8c8: 4611         	mov	r1, r2
  2ee8ca: 461a         	mov	r2, r3
  2ee8cc: f7fe faca    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1a6c
  2ee8d0: ab4e         	add	r3, sp, #0x138
  2ee8d2: 4630         	mov	r0, r6
  2ee8d4: 4619         	mov	r1, r3
  2ee8d6: 47a8         	blx	r5
  2ee8d8: ab03         	add	r3, sp, #0xc
  2ee8da: 681b         	ldr	r3, [r3]
  2ee8dc: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2ee8e0: eddd 7a22    	vldr	s15, [sp, #136]
  2ee8e4: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ee8e8: ee17 2a90    	vmov	r2, s15
  2ee8ec: 4618         	mov	r0, r3
  2ee8ee: 4611         	mov	r1, r2
  2ee8f0: f2b7 fa48    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b7490
  2ee8f4: ab03         	add	r3, sp, #0xc
  2ee8f6: 681b         	ldr	r3, [r3]
  2ee8f8: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2ee8fc: 681b         	ldr	r3, [r3]
  2ee8fe: 3340         	adds	r3, #0x40
  2ee900: 681b         	ldr	r3, [r3]
  2ee902: aa03         	add	r2, sp, #0xc
  2ee904: 6812         	ldr	r2, [r2]
  2ee906: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  2ee90a: ed9d 7a23    	vldr	s14, [sp, #140]
  2ee90e: eddf 7aa8    	vldr	s15, [pc, #672]         @ 0x2eebb0 <AvatarLayer::init()+0xdd8>
  2ee912: ee67 7a27    	vmul.f32	s15, s14, s15
  2ee916: 4610         	mov	r0, r2
  2ee918: ee17 1a90    	vmov	r1, s15
  2ee91c: 4798         	blx	r3
  2ee91e: ab03         	add	r3, sp, #0xc
  2ee920: 681b         	ldr	r3, [r3]
  2ee922: 681b         	ldr	r3, [r3]
  2ee924: 33c8         	adds	r3, #0xc8
  2ee926: 681b         	ldr	r3, [r3]
  2ee928: aa03         	add	r2, sp, #0xc
  2ee92a: 6811         	ldr	r1, [r2]
  2ee92c: aa03         	add	r2, sp, #0xc
  2ee92e: 6812         	ldr	r2, [r2]
  2ee930: f8d2 2168    	ldr.w	r2, [r2, #0x168]
  2ee934: 4608         	mov	r0, r1
  2ee936: 4611         	mov	r1, r2
  2ee938: 4798         	blx	r3
  2ee93a: 9824         	ldr	r0, [sp, #0x90]
  2ee93c: f7ff f8d6    	bl	0x2edaec <cocos2d::CCInteger::getValue() const+0xc98> @ imm = #-0xe54
  2ee940: 4603         	mov	r3, r0
  2ee942: 9a26         	ldr	r2, [sp, #0x98]
  2ee944: 1ad3         	subs	r3, r2, r3
  2ee946: 9327         	str	r3, [sp, #0x9c]
  2ee948: 9b24         	ldr	r3, [sp, #0x90]
  2ee94a: 3301         	adds	r3, #0x1
  2ee94c: 4618         	mov	r0, r3
  2ee94e: f7ff f8cd    	bl	0x2edaec <cocos2d::CCInteger::getValue() const+0xc98> @ imm = #-0xe66
  2ee952: 4605         	mov	r5, r0
  2ee954: 9824         	ldr	r0, [sp, #0x90]
  2ee956: f7ff f8c9    	bl	0x2edaec <cocos2d::CCInteger::getValue() const+0xc98> @ imm = #-0xe6e
  2ee95a: 4603         	mov	r3, r0
  2ee95c: 1aeb         	subs	r3, r5, r3
  2ee95e: 9328         	str	r3, [sp, #0xa0]
  2ee960: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x2eebd8 <AvatarLayer::init()+0xe00>
  2ee962: 447b         	add	r3, pc
  2ee964: 4618         	mov	r0, r3
  2ee966: 9927         	ldr	r1, [sp, #0x9c]
  2ee968: 9a28         	ldr	r2, [sp, #0xa0]
  2ee96a: f2ab f8d1    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ab1a2
  2ee96e: 4603         	mov	r3, r0
  2ee970: 4618         	mov	r0, r3
  2ee972: f2aa ffd9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2aafb2
  2ee976: 4605         	mov	r5, r0
  2ee978: 4b98         	ldr	r3, [pc, #0x260]        @ 0x2eebdc <AvatarLayer::init()+0xe04>
  2ee97a: 447b         	add	r3, pc
  2ee97c: 4618         	mov	r0, r3
  2ee97e: f0c6 f4bf    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c697e
  2ee982: 4603         	mov	r3, r0
  2ee984: 2220         	movs	r2, #0x20
  2ee986: 9200         	str	r2, [sp]
  2ee988: 4628         	mov	r0, r5
  2ee98a: 4619         	mov	r1, r3
  2ee98c: 2220         	movs	r2, #0x20
  2ee98e: 2320         	movs	r3, #0x20
  2ee990: f2b6 fcf2    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b69e4
  2ee994: 4602         	mov	r2, r0
  2ee996: ab03         	add	r3, sp, #0xc
  2ee998: 681b         	ldr	r3, [r3]
  2ee99a: f8c3 216c    	str.w	r2, [r3, #0x16c]
  2ee99e: ab03         	add	r3, sp, #0xc
  2ee9a0: 681b         	ldr	r3, [r3]
  2ee9a2: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ee9a6: 4618         	mov	r0, r3
  2ee9a8: f2a9 fa9e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a953c
  2ee9ac: ab03         	add	r3, sp, #0xc
  2ee9ae: 681b         	ldr	r3, [r3]
  2ee9b0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ee9b4: 681b         	ldr	r3, [r3]
  2ee9b6: 334c         	adds	r3, #0x4c
  2ee9b8: 681d         	ldr	r5, [r3]
  2ee9ba: ab03         	add	r3, sp, #0xc
  2ee9bc: 681b         	ldr	r3, [r3]
  2ee9be: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ee9c2: 461e         	mov	r6, r3
  2ee9c4: ab4a         	add	r3, sp, #0x128
  2ee9c6: 4618         	mov	r0, r3
  2ee9c8: f04f 4185    	mov.w	r1, #0x42800000
  2ee9cc: f04f 0200    	mov.w	r2, #0x0
  2ee9d0: f2cc 2248    	movt	r2, #0xc248
  2ee9d4: f2a4 f98c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4318
  2ee9d8: a94e         	add	r1, sp, #0x138
  2ee9da: aa36         	add	r2, sp, #0xd8
  2ee9dc: ab4a         	add	r3, sp, #0x128
  2ee9de: 4608         	mov	r0, r1
  2ee9e0: 4611         	mov	r1, r2
  2ee9e2: 461a         	mov	r2, r3
  2ee9e4: f7fe fa3e    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1b84
  2ee9e8: ab4e         	add	r3, sp, #0x138
  2ee9ea: 4630         	mov	r0, r6
  2ee9ec: 4619         	mov	r1, r3
  2ee9ee: 47a8         	blx	r5
  2ee9f0: ab03         	add	r3, sp, #0xc
  2ee9f2: 681b         	ldr	r3, [r3]
  2ee9f4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2ee9f8: eddd 7a22    	vldr	s15, [sp, #136]
  2ee9fc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2eea00: ee17 2a90    	vmov	r2, s15
  2eea04: 4618         	mov	r0, r3
  2eea06: 4611         	mov	r1, r2
  2eea08: f2b7 f9bc    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b7378
  2eea0c: ab03         	add	r3, sp, #0xc
  2eea0e: 681b         	ldr	r3, [r3]
  2eea10: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2eea14: 681b         	ldr	r3, [r3]
  2eea16: 3340         	adds	r3, #0x40
  2eea18: 681b         	ldr	r3, [r3]
  2eea1a: aa03         	add	r2, sp, #0xc
  2eea1c: 6812         	ldr	r2, [r2]
  2eea1e: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  2eea22: 4610         	mov	r0, r2
  2eea24: 9923         	ldr	r1, [sp, #0x8c]
  2eea26: 4798         	blx	r3
  2eea28: ab03         	add	r3, sp, #0xc
  2eea2a: 681b         	ldr	r3, [r3]
  2eea2c: 681b         	ldr	r3, [r3]
  2eea2e: 33c8         	adds	r3, #0xc8
  2eea30: 681b         	ldr	r3, [r3]
  2eea32: aa03         	add	r2, sp, #0xc
  2eea34: 6811         	ldr	r1, [r2]
  2eea36: aa03         	add	r2, sp, #0xc
  2eea38: 6812         	ldr	r2, [r2]
  2eea3a: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  2eea3e: 4608         	mov	r0, r1
  2eea40: 4611         	mov	r1, r2
  2eea42: 4798         	blx	r3
  2eea44: 4b66         	ldr	r3, [pc, #0x198]        @ 0x2eebe0 <AvatarLayer::init()+0xe08>
  2eea46: 447b         	add	r3, pc
  2eea48: 4618         	mov	r0, r3
  2eea4a: f2e9 fc5b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e98b6
  2eea4e: 4602         	mov	r2, r0
  2eea50: ab03         	add	r3, sp, #0xc
  2eea52: 681b         	ldr	r3, [r3]
  2eea54: f8c3 2180    	str.w	r2, [r3, #0x180]
  2eea58: ab03         	add	r3, sp, #0xc
  2eea5a: 681b         	ldr	r3, [r3]
  2eea5c: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eea60: 4618         	mov	r0, r3
  2eea62: f2a9 fa41    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a9482
  2eea66: ab03         	add	r3, sp, #0xc
  2eea68: 681b         	ldr	r3, [r3]
  2eea6a: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eea6e: 681b         	ldr	r3, [r3]
  2eea70: 337c         	adds	r3, #0x7c
  2eea72: 681d         	ldr	r5, [r3]
  2eea74: ab03         	add	r3, sp, #0xc
  2eea76: 681b         	ldr	r3, [r3]
  2eea78: f8d3 6180    	ldr.w	r6, [r3, #0x180]
  2eea7c: ab4e         	add	r3, sp, #0x138
  2eea7e: 4618         	mov	r0, r3
  2eea80: f04f 0100    	mov.w	r1, #0x0
  2eea84: f04f 527c    	mov.w	r2, #0x3f000000
  2eea88: f2a4 f932    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4264
  2eea8c: ab4e         	add	r3, sp, #0x138
  2eea8e: 4630         	mov	r0, r6
  2eea90: 4619         	mov	r1, r3
  2eea92: 47a8         	blx	r5
  2eea94: ab03         	add	r3, sp, #0xc
  2eea96: 681b         	ldr	r3, [r3]
  2eea98: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eea9c: 681b         	ldr	r3, [r3]
  2eea9e: f503 73de    	add.w	r3, r3, #0x1bc
  2eeaa2: 681d         	ldr	r5, [r3]
  2eeaa4: ab03         	add	r3, sp, #0xc
  2eeaa6: 681b         	ldr	r3, [r3]
  2eeaa8: f8d3 6180    	ldr.w	r6, [r3, #0x180]
  2eeaac: 2032         	movs	r0, #0x32
  2eeaae: 2150         	movs	r1, #0x50
  2eeab0: 22e6         	movs	r2, #0xe6
  2eeab2: f7fe f9a1    	bl	0x2ecdf8 <non-virtual thunk to AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0x114> @ imm = #-0x1cbe
  2eeab6: 4603         	mov	r3, r0
  2eeab8: 461a         	mov	r2, r3
  2eeaba: f88d 2138    	strb.w	r2, [sp, #0x138]
  2eeabe: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2eeac2: f88d 2139    	strb.w	r2, [sp, #0x139]
  2eeac6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2eeaca: f88d 313a    	strb.w	r3, [sp, #0x13a]
  2eeace: ab4e         	add	r3, sp, #0x138
  2eead0: 4630         	mov	r0, r6
  2eead2: 4619         	mov	r1, r3
  2eead4: 47a8         	blx	r5
  2eead6: ab03         	add	r3, sp, #0xc
  2eead8: 681b         	ldr	r3, [r3]
  2eeada: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eeade: 681b         	ldr	r3, [r3]
  2eeae0: 334c         	adds	r3, #0x4c
  2eeae2: 681d         	ldr	r5, [r3]
  2eeae4: ab03         	add	r3, sp, #0xc
  2eeae6: 681b         	ldr	r3, [r3]
  2eeae8: f8d3 6180    	ldr.w	r6, [r3, #0x180]
  2eeaec: ab4a         	add	r3, sp, #0x128
  2eeaee: 4618         	mov	r0, r3
  2eeaf0: f04f 0100    	mov.w	r1, #0x0
  2eeaf4: f2c4 2186    	movt	r1, #0x4286
  2eeaf8: f04f 0200    	mov.w	r2, #0x0
  2eeafc: f2cc 12d0    	movt	r2, #0xc1d0
  2eeb00: f2a4 f8f6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a41ec
  2eeb04: a94e         	add	r1, sp, #0x138
  2eeb06: aa36         	add	r2, sp, #0xd8
  2eeb08: ab4a         	add	r3, sp, #0x128
  2eeb0a: 4608         	mov	r0, r1
  2eeb0c: 4611         	mov	r1, r2
  2eeb0e: 461a         	mov	r2, r3
  2eeb10: f7fe f9a8    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1cb0
  2eeb14: ab4e         	add	r3, sp, #0x138
  2eeb16: 4630         	mov	r0, r6
  2eeb18: 4619         	mov	r1, r3
  2eeb1a: 47a8         	blx	r5
  2eeb1c: ab03         	add	r3, sp, #0xc
  2eeb1e: 681b         	ldr	r3, [r3]
  2eeb20: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eeb24: 681b         	ldr	r3, [r3]
  2eeb26: 3330         	adds	r3, #0x30
  2eeb28: 681b         	ldr	r3, [r3]
  2eeb2a: aa03         	add	r2, sp, #0xc
  2eeb2c: 6812         	ldr	r2, [r2]
  2eeb2e: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  2eeb32: 9927         	ldr	r1, [sp, #0x9c]
  2eeb34: ee07 1a90    	vmov	s15, r1
  2eeb38: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  2eeb3c: eddf 7a1d    	vldr	s15, [pc, #116]         @ 0x2eebb4 <AvatarLayer::init()+0xddc>
  2eeb40: ee27 7a27    	vmul.f32	s14, s14, s15
  2eeb44: 9928         	ldr	r1, [sp, #0xa0]
  2eeb46: ee06 1a90    	vmov	s13, r1
  2eeb4a: eef8 7ae6    	vcvt.f32.s32	s15, s13
  2eeb4e: eec7 7a27    	vdiv.f32	s15, s14, s15
  2eeb52: 4610         	mov	r0, r2
  2eeb54: ee17 1a90    	vmov	r1, s15
  2eeb58: 4798         	blx	r3
  2eeb5a: ab03         	add	r3, sp, #0xc
  2eeb5c: 681b         	ldr	r3, [r3]
  2eeb5e: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  2eeb62: 681b         	ldr	r3, [r3]
  2eeb64: 3338         	adds	r3, #0x38
  2eeb66: 681b         	ldr	r3, [r3]
  2eeb68: aa03         	add	r2, sp, #0xc
  2eeb6a: 6812         	ldr	r2, [r2]
  2eeb6c: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  2eeb70: 4610         	mov	r0, r2
  2eeb72: f64c 41cd    	movw	r1, #0xcccd
  2eeb76: f2c4 010c    	movt	r1, #0x400c
  2eeb7a: 4798         	blx	r3
  2eeb7c: ab03         	add	r3, sp, #0xc
  2eeb7e: 681b         	ldr	r3, [r3]
  2eeb80: 681b         	ldr	r3, [r3]
  2eeb82: 33c8         	adds	r3, #0xc8
  2eeb84: 681b         	ldr	r3, [r3]
  2eeb86: aa03         	add	r2, sp, #0xc
  2eeb88: 6811         	ldr	r1, [r2]
  2eeb8a: aa03         	add	r2, sp, #0xc
  2eeb8c: 6812         	ldr	r2, [r2]
  2eeb8e: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  2eeb92: 4608         	mov	r0, r1
  2eeb94: 4611         	mov	r1, r2
  2eeb96: 4798         	blx	r3
  2eeb98: 4b12         	ldr	r3, [pc, #0x48]         @ 0x2eebe4 <AvatarLayer::init()+0xe0c>
  2eeb9a: 447b         	add	r3, pc
  2eeb9c: 4618         	mov	r0, r3
  2eeb9e: f2e9 fbb1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e9762
  2eeba2: 4602         	mov	r2, r0
  2eeba4: ab03         	add	r3, sp, #0xc
  2eeba6: 681b         	ldr	r3, [r3]
  2eeba8: f8c3 2184    	str.w	r2, [r3, #0x184]
  2eebac: ab03         	add	r3, sp, #0xc
  2eebae: e01b         	b	0x2eebe8 <AvatarLayer::init()+0xe10> @ imm = #0x36
  2eebb0: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  2eebb2: 3f4c         	subs	r7, #0x4c
  2eebb4: 0000         	movs	r0, r0
  2eebb6: 428c         	cmp	r4, r1
  2eebb8: d7c0         	bvc	0x2eeb3c <AvatarLayer::init()+0xd64> @ imm = #-0x80
  2eebba: ffff 4dbc    	<unknown>
  2eebbe: 004d         	lsls	r5, r1, #0x1
  2eebc0: 4d2e         	ldr	r5, [pc, #0xb8]         @ 0x2eec7c <AvatarLayer::init()+0xea4>
  2eebc2: 004d         	lsls	r5, r1, #0x1
  2eebc4: 1146         	asrs	r6, r0, #0x5
  2eebc6: 0065         	lsls	r5, r4, #0x1
  2eebc8: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x2eec84 <AvatarLayer::init()+0xeac>
  2eebca: 004d         	lsls	r5, r1, #0x1
  2eebcc: 1042         	asrs	r2, r0, #0x1
  2eebce: 0065         	lsls	r5, r4, #0x1
  2eebd0: 0f7a         	lsrs	r2, r7, #0x1d
  2eebd2: 0065         	lsls	r5, r4, #0x1
  2eebd4: 4b46         	ldr	r3, [pc, #0x118]        @ 0x2eecf0 <AvatarLayer::init()+0xf18>
  2eebd6: 004d         	lsls	r5, r1, #0x1
  2eebd8: 4a62         	ldr	r2, [pc, #0x188]        @ 0x2eed64 <AvatarLayer::init()+0xf8c>
  2eebda: 004d         	lsls	r5, r1, #0x1
  2eebdc: 0e5e         	lsrs	r6, r3, #0x19
  2eebde: 0065         	lsls	r5, r4, #0x1
  2eebe0: 4986         	ldr	r1, [pc, #0x218]        @ 0x2eedfc <AvatarLayer::init()+0x1024>
  2eebe2: 004d         	lsls	r5, r1, #0x1
  2eebe4: 483a         	ldr	r0, [pc, #0xe8]         @ 0x2eecd0 <AvatarLayer::init()+0xef8>
  2eebe6: 004d         	lsls	r5, r1, #0x1
  2eebe8: 681b         	ldr	r3, [r3]
  2eebea: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  2eebee: 4618         	mov	r0, r3
  2eebf0: f2a9 f97a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a92f4
  2eebf4: ab03         	add	r3, sp, #0xc
  2eebf6: 681b         	ldr	r3, [r3]
  2eebf8: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  2eebfc: 681b         	ldr	r3, [r3]
  2eebfe: 337c         	adds	r3, #0x7c
  2eec00: 681d         	ldr	r5, [r3]
  2eec02: ab03         	add	r3, sp, #0xc
  2eec04: 681b         	ldr	r3, [r3]
  2eec06: f8d3 6184    	ldr.w	r6, [r3, #0x184]
  2eec0a: ab4e         	add	r3, sp, #0x138
  2eec0c: 4618         	mov	r0, r3
  2eec0e: f04f 0100    	mov.w	r1, #0x0
  2eec12: f04f 527c    	mov.w	r2, #0x3f000000
  2eec16: f2a4 f86b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a40d6
  2eec1a: ab4e         	add	r3, sp, #0x138
  2eec1c: 4630         	mov	r0, r6
  2eec1e: 4619         	mov	r1, r3
  2eec20: 47a8         	blx	r5
  2eec22: ab03         	add	r3, sp, #0xc
  2eec24: 681b         	ldr	r3, [r3]
  2eec26: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  2eec2a: 681b         	ldr	r3, [r3]
  2eec2c: 334c         	adds	r3, #0x4c
  2eec2e: 681d         	ldr	r5, [r3]
  2eec30: ab03         	add	r3, sp, #0xc
  2eec32: 681b         	ldr	r3, [r3]
  2eec34: f8d3 6184    	ldr.w	r6, [r3, #0x184]
  2eec38: ab4a         	add	r3, sp, #0x128
  2eec3a: 4618         	mov	r0, r3
  2eec3c: f04f 4185    	mov.w	r1, #0x42800000
  2eec40: f04f 0200    	mov.w	r2, #0x0
  2eec44: f2cc 12d0    	movt	r2, #0xc1d0
  2eec48: f2a4 f852    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a40a4
  2eec4c: a94e         	add	r1, sp, #0x138
  2eec4e: aa36         	add	r2, sp, #0xd8
  2eec50: ab4a         	add	r3, sp, #0x128
  2eec52: 4608         	mov	r0, r1
  2eec54: 4611         	mov	r1, r2
  2eec56: 461a         	mov	r2, r3
  2eec58: f7fe f904    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1df8
  2eec5c: ab4e         	add	r3, sp, #0x138
  2eec5e: 4630         	mov	r0, r6
  2eec60: 4619         	mov	r1, r3
  2eec62: 47a8         	blx	r5
  2eec64: ab03         	add	r3, sp, #0xc
  2eec66: 681b         	ldr	r3, [r3]
  2eec68: 681b         	ldr	r3, [r3]
  2eec6a: 33c8         	adds	r3, #0xc8
  2eec6c: 681b         	ldr	r3, [r3]
  2eec6e: aa03         	add	r2, sp, #0xc
  2eec70: 6811         	ldr	r1, [r2]
  2eec72: aa03         	add	r2, sp, #0xc
  2eec74: 6812         	ldr	r2, [r2]
  2eec76: f8d2 2184    	ldr.w	r2, [r2, #0x184]
  2eec7a: 4608         	mov	r0, r1
  2eec7c: 4611         	mov	r1, r2
  2eec7e: 4798         	blx	r3
  2eec80: ab4a         	add	r3, sp, #0x128
  2eec82: 4618         	mov	r0, r3
  2eec84: f04f 0100    	mov.w	r1, #0x0
  2eec88: f2cc 3148    	movt	r1, #0xc348
  2eec8c: f04f 0200    	mov.w	r2, #0x0
  2eec90: f2c4 1260    	movt	r2, #0x4160
  2eec94: f2a4 f82c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a4058
  2eec98: a94e         	add	r1, sp, #0x138
  2eec9a: aa34         	add	r2, sp, #0xd0
  2eec9c: ab4a         	add	r3, sp, #0x128
  2eec9e: 4608         	mov	r0, r1
  2eeca0: 4611         	mov	r1, r2
  2eeca2: 461a         	mov	r2, r3
  2eeca4: f7fe f8de    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1e44
  2eeca8: aa36         	add	r2, sp, #0xd8
  2eecaa: ab4e         	add	r3, sp, #0x138
  2eecac: 4610         	mov	r0, r2
  2eecae: 4619         	mov	r1, r3
  2eecb0: f2a4 f84c    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2a4098
  2eecb4: f136 fa00    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x136400
  2eecb8: 4603         	mov	r3, r0
  2eecba: 4618         	mov	r0, r3
  2eecbc: f136 fa2a    	bl	0x425114 <LeaderBoardBridge::calcPlayerSkill()> @ imm = #0x136454
  2eecc0: 4603         	mov	r3, r0
  2eecc2: 9329         	str	r3, [sp, #0xa4]
  2eecc4: f8df 3870    	ldr.w	r3, [pc, #0x870]        @ 0x2ef538 <AvatarLayer::init()+0x1760>
  2eecc8: 447b         	add	r3, pc
  2eecca: 4618         	mov	r0, r3
  2eeccc: 9929         	ldr	r1, [sp, #0xa4]
  2eecce: f2aa ff1f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2aae3e
  2eecd2: 4603         	mov	r3, r0
  2eecd4: 4618         	mov	r0, r3
  2eecd6: f2aa fe27    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2aac4e
  2eecda: 4605         	mov	r5, r0
  2eecdc: f8df 385c    	ldr.w	r3, [pc, #0x85c]        @ 0x2ef53c <AvatarLayer::init()+0x1764>
  2eece0: 447b         	add	r3, pc
  2eece2: 4618         	mov	r0, r3
  2eece4: f0c6 f30c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6618
  2eece8: 4603         	mov	r3, r0
  2eecea: 2220         	movs	r2, #0x20
  2eecec: 9200         	str	r2, [sp]
  2eecee: 4628         	mov	r0, r5
  2eecf0: 4619         	mov	r1, r3
  2eecf2: 2220         	movs	r2, #0x20
  2eecf4: 2320         	movs	r3, #0x20
  2eecf6: f2b6 fb3f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b667e
  2eecfa: 4602         	mov	r2, r0
  2eecfc: ab03         	add	r3, sp, #0xc
  2eecfe: 681b         	ldr	r3, [r3]
  2eed00: f8c3 2170    	str.w	r2, [r3, #0x170]
  2eed04: ab03         	add	r3, sp, #0xc
  2eed06: 681b         	ldr	r3, [r3]
  2eed08: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2eed0c: 4618         	mov	r0, r3
  2eed0e: f2a9 f8eb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a91d6
  2eed12: ab03         	add	r3, sp, #0xc
  2eed14: 681b         	ldr	r3, [r3]
  2eed16: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2eed1a: 681b         	ldr	r3, [r3]
  2eed1c: 334c         	adds	r3, #0x4c
  2eed1e: 681d         	ldr	r5, [r3]
  2eed20: ab03         	add	r3, sp, #0xc
  2eed22: 681b         	ldr	r3, [r3]
  2eed24: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2eed28: 461e         	mov	r6, r3
  2eed2a: ab4a         	add	r3, sp, #0x128
  2eed2c: 4618         	mov	r0, r3
  2eed2e: f04f 0100    	mov.w	r1, #0x0
  2eed32: f04f 0200    	mov.w	r2, #0x0
  2eed36: f2a3 ffdb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3fb6
  2eed3a: a94e         	add	r1, sp, #0x138
  2eed3c: aa36         	add	r2, sp, #0xd8
  2eed3e: ab4a         	add	r3, sp, #0x128
  2eed40: 4608         	mov	r0, r1
  2eed42: 4611         	mov	r1, r2
  2eed44: 461a         	mov	r2, r3
  2eed46: f7fe f88d    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1ee6
  2eed4a: ab4e         	add	r3, sp, #0x138
  2eed4c: 4630         	mov	r0, r6
  2eed4e: 4619         	mov	r1, r3
  2eed50: 47a8         	blx	r5
  2eed52: ab03         	add	r3, sp, #0xc
  2eed54: 681b         	ldr	r3, [r3]
  2eed56: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2eed5a: eddd 7a22    	vldr	s15, [sp, #136]
  2eed5e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2eed62: ee17 2a90    	vmov	r2, s15
  2eed66: 4618         	mov	r0, r3
  2eed68: 4611         	mov	r1, r2
  2eed6a: f2b7 f80b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b7016
  2eed6e: ab03         	add	r3, sp, #0xc
  2eed70: 681b         	ldr	r3, [r3]
  2eed72: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2eed76: 681b         	ldr	r3, [r3]
  2eed78: 3340         	adds	r3, #0x40
  2eed7a: 681b         	ldr	r3, [r3]
  2eed7c: aa03         	add	r2, sp, #0xc
  2eed7e: 6812         	ldr	r2, [r2]
  2eed80: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  2eed84: 4610         	mov	r0, r2
  2eed86: 9923         	ldr	r1, [sp, #0x8c]
  2eed88: 4798         	blx	r3
  2eed8a: ab03         	add	r3, sp, #0xc
  2eed8c: 681b         	ldr	r3, [r3]
  2eed8e: 681b         	ldr	r3, [r3]
  2eed90: 33c8         	adds	r3, #0xc8
  2eed92: 681b         	ldr	r3, [r3]
  2eed94: aa03         	add	r2, sp, #0xc
  2eed96: 6811         	ldr	r1, [r2]
  2eed98: aa03         	add	r2, sp, #0xc
  2eed9a: 6812         	ldr	r2, [r2]
  2eed9c: f8d2 2170    	ldr.w	r2, [r2, #0x170]
  2eeda0: 4608         	mov	r0, r1
  2eeda2: 4611         	mov	r1, r2
  2eeda4: 4798         	blx	r3
  2eeda6: f136 f987    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x13630e
  2eedaa: 4603         	mov	r3, r0
  2eedac: 4618         	mov	r0, r3
  2eedae: 2102         	movs	r1, #0x2
  2eedb0: f136 fcc0    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x136980
  2eedb4: 4603         	mov	r3, r0
  2eedb6: 932a         	str	r3, [sp, #0xa8]
  2eedb8: f8df 3784    	ldr.w	r3, [pc, #0x784]        @ 0x2ef540 <AvatarLayer::init()+0x1768>
  2eedbc: 447b         	add	r3, pc
  2eedbe: 4618         	mov	r0, r3
  2eedc0: 992a         	ldr	r1, [sp, #0xa8]
  2eedc2: f2aa fea5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2aad4a
  2eedc6: 4603         	mov	r3, r0
  2eedc8: 4618         	mov	r0, r3
  2eedca: f2aa fdad    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2aab5a
  2eedce: 4605         	mov	r5, r0
  2eedd0: f8df 3770    	ldr.w	r3, [pc, #0x770]        @ 0x2ef544 <AvatarLayer::init()+0x176c>
  2eedd4: 447b         	add	r3, pc
  2eedd6: 4618         	mov	r0, r3
  2eedd8: f0c6 f292    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6524
  2eeddc: 4603         	mov	r3, r0
  2eedde: 2220         	movs	r2, #0x20
  2eede0: 9200         	str	r2, [sp]
  2eede2: 4628         	mov	r0, r5
  2eede4: 4619         	mov	r1, r3
  2eede6: 2220         	movs	r2, #0x20
  2eede8: 2320         	movs	r3, #0x20
  2eedea: f2b6 fac5    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b658a
  2eedee: 4602         	mov	r2, r0
  2eedf0: ab03         	add	r3, sp, #0xc
  2eedf2: 681b         	ldr	r3, [r3]
  2eedf4: f8c3 2174    	str.w	r2, [r3, #0x174]
  2eedf8: ab03         	add	r3, sp, #0xc
  2eedfa: 681b         	ldr	r3, [r3]
  2eedfc: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2eee00: 4618         	mov	r0, r3
  2eee02: f2a9 f871    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a90e2
  2eee06: ab03         	add	r3, sp, #0xc
  2eee08: 681b         	ldr	r3, [r3]
  2eee0a: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2eee0e: 681b         	ldr	r3, [r3]
  2eee10: 334c         	adds	r3, #0x4c
  2eee12: 681d         	ldr	r5, [r3]
  2eee14: ab03         	add	r3, sp, #0xc
  2eee16: 681b         	ldr	r3, [r3]
  2eee18: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2eee1c: 461e         	mov	r6, r3
  2eee1e: ab4a         	add	r3, sp, #0x128
  2eee20: 4618         	mov	r0, r3
  2eee22: f04f 0100    	mov.w	r1, #0x0
  2eee26: f04f 0200    	mov.w	r2, #0x0
  2eee2a: f2cc 12a0    	movt	r2, #0xc1a0
  2eee2e: f2a3 ff5f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3ebe
  2eee32: a94e         	add	r1, sp, #0x138
  2eee34: aa36         	add	r2, sp, #0xd8
  2eee36: ab4a         	add	r3, sp, #0x128
  2eee38: 4608         	mov	r0, r1
  2eee3a: 4611         	mov	r1, r2
  2eee3c: 461a         	mov	r2, r3
  2eee3e: f7fe f811    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x1fde
  2eee42: ab4e         	add	r3, sp, #0x138
  2eee44: 4630         	mov	r0, r6
  2eee46: 4619         	mov	r1, r3
  2eee48: 47a8         	blx	r5
  2eee4a: ab03         	add	r3, sp, #0xc
  2eee4c: 681b         	ldr	r3, [r3]
  2eee4e: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2eee52: eddd 7a22    	vldr	s15, [sp, #136]
  2eee56: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2eee5a: ee17 2a90    	vmov	r2, s15
  2eee5e: 4618         	mov	r0, r3
  2eee60: 4611         	mov	r1, r2
  2eee62: f2b6 ff8f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b6f1e
  2eee66: ab03         	add	r3, sp, #0xc
  2eee68: 681b         	ldr	r3, [r3]
  2eee6a: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2eee6e: 681b         	ldr	r3, [r3]
  2eee70: 3340         	adds	r3, #0x40
  2eee72: 681b         	ldr	r3, [r3]
  2eee74: aa03         	add	r2, sp, #0xc
  2eee76: 6812         	ldr	r2, [r2]
  2eee78: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  2eee7c: 4610         	mov	r0, r2
  2eee7e: 9923         	ldr	r1, [sp, #0x8c]
  2eee80: 4798         	blx	r3
  2eee82: ab03         	add	r3, sp, #0xc
  2eee84: 681b         	ldr	r3, [r3]
  2eee86: 681b         	ldr	r3, [r3]
  2eee88: 33c8         	adds	r3, #0xc8
  2eee8a: 681b         	ldr	r3, [r3]
  2eee8c: aa03         	add	r2, sp, #0xc
  2eee8e: 6811         	ldr	r1, [r2]
  2eee90: aa03         	add	r2, sp, #0xc
  2eee92: 6812         	ldr	r2, [r2]
  2eee94: f8d2 2174    	ldr.w	r2, [r2, #0x174]
  2eee98: 4608         	mov	r0, r1
  2eee9a: 4611         	mov	r1, r2
  2eee9c: 4798         	blx	r3
  2eee9e: f136 f90b    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x136216
  2eeea2: 4603         	mov	r3, r0
  2eeea4: 4618         	mov	r0, r3
  2eeea6: 2103         	movs	r1, #0x3
  2eeea8: f136 fc44    	bl	0x425734 <LeaderBoardBridge::getScoreData(ELeaderboardType)> @ imm = #0x136888
  2eeeac: 4603         	mov	r3, r0
  2eeeae: 932b         	str	r3, [sp, #0xac]
  2eeeb0: f8df 3694    	ldr.w	r3, [pc, #0x694]        @ 0x2ef548 <AvatarLayer::init()+0x1770>
  2eeeb4: 447b         	add	r3, pc
  2eeeb6: 4618         	mov	r0, r3
  2eeeb8: 992b         	ldr	r1, [sp, #0xac]
  2eeeba: f2aa fe29    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2aac52
  2eeebe: 4603         	mov	r3, r0
  2eeec0: 4618         	mov	r0, r3
  2eeec2: f2aa fd31    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2aaa62
  2eeec6: 4605         	mov	r5, r0
  2eeec8: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x2ef54c <AvatarLayer::init()+0x1774>
  2eeecc: 447b         	add	r3, pc
  2eeece: 4618         	mov	r0, r3
  2eeed0: f0c6 f216    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c642c
  2eeed4: 4603         	mov	r3, r0
  2eeed6: 2220         	movs	r2, #0x20
  2eeed8: 9200         	str	r2, [sp]
  2eeeda: 4628         	mov	r0, r5
  2eeedc: 4619         	mov	r1, r3
  2eeede: 2220         	movs	r2, #0x20
  2eeee0: 2320         	movs	r3, #0x20
  2eeee2: f2b6 fa49    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b6492
  2eeee6: 4602         	mov	r2, r0
  2eeee8: ab03         	add	r3, sp, #0xc
  2eeeea: 681b         	ldr	r3, [r3]
  2eeeec: f8c3 2178    	str.w	r2, [r3, #0x178]
  2eeef0: ab03         	add	r3, sp, #0xc
  2eeef2: 681b         	ldr	r3, [r3]
  2eeef4: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2eeef8: 4618         	mov	r0, r3
  2eeefa: f2a8 fff5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8fea
  2eeefe: ab03         	add	r3, sp, #0xc
  2eef00: 681b         	ldr	r3, [r3]
  2eef02: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2eef06: 681b         	ldr	r3, [r3]
  2eef08: 334c         	adds	r3, #0x4c
  2eef0a: 681d         	ldr	r5, [r3]
  2eef0c: ab03         	add	r3, sp, #0xc
  2eef0e: 681b         	ldr	r3, [r3]
  2eef10: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2eef14: 461e         	mov	r6, r3
  2eef16: ab4a         	add	r3, sp, #0x128
  2eef18: 4618         	mov	r0, r3
  2eef1a: f04f 0100    	mov.w	r1, #0x0
  2eef1e: f04f 0200    	mov.w	r2, #0x0
  2eef22: f2cc 2220    	movt	r2, #0xc220
  2eef26: f2a3 fee3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3dc6
  2eef2a: a94e         	add	r1, sp, #0x138
  2eef2c: aa36         	add	r2, sp, #0xd8
  2eef2e: ab4a         	add	r3, sp, #0x128
  2eef30: 4608         	mov	r0, r1
  2eef32: 4611         	mov	r1, r2
  2eef34: 461a         	mov	r2, r3
  2eef36: f7fd ff95    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x20d6
  2eef3a: ab4e         	add	r3, sp, #0x138
  2eef3c: 4630         	mov	r0, r6
  2eef3e: 4619         	mov	r1, r3
  2eef40: 47a8         	blx	r5
  2eef42: ab03         	add	r3, sp, #0xc
  2eef44: 681b         	ldr	r3, [r3]
  2eef46: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2eef4a: eddd 7a22    	vldr	s15, [sp, #136]
  2eef4e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2eef52: ee17 2a90    	vmov	r2, s15
  2eef56: 4618         	mov	r0, r3
  2eef58: 4611         	mov	r1, r2
  2eef5a: f2b6 ff13    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b6e26
  2eef5e: ab03         	add	r3, sp, #0xc
  2eef60: 681b         	ldr	r3, [r3]
  2eef62: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2eef66: 681b         	ldr	r3, [r3]
  2eef68: 3340         	adds	r3, #0x40
  2eef6a: 681b         	ldr	r3, [r3]
  2eef6c: aa03         	add	r2, sp, #0xc
  2eef6e: 6812         	ldr	r2, [r2]
  2eef70: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  2eef74: 4610         	mov	r0, r2
  2eef76: 9923         	ldr	r1, [sp, #0x8c]
  2eef78: 4798         	blx	r3
  2eef7a: ab03         	add	r3, sp, #0xc
  2eef7c: 681b         	ldr	r3, [r3]
  2eef7e: 681b         	ldr	r3, [r3]
  2eef80: 33c8         	adds	r3, #0xc8
  2eef82: 681b         	ldr	r3, [r3]
  2eef84: aa03         	add	r2, sp, #0xc
  2eef86: 6811         	ldr	r1, [r2]
  2eef88: aa03         	add	r2, sp, #0xc
  2eef8a: 6812         	ldr	r2, [r2]
  2eef8c: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  2eef90: 4608         	mov	r0, r1
  2eef92: 4611         	mov	r1, r2
  2eef94: 4798         	blx	r3
  2eef96: f04f 0300    	mov.w	r3, #0x0
  2eef9a: f2c4 13c0    	movt	r3, #0x41c0
  2eef9e: 9322         	str	r3, [sp, #0x88]
  2eefa0: f64c 43cd    	movw	r3, #0xcccd
  2eefa4: f6c3 730c    	movt	r3, #0x3f0c
  2eefa8: 9323         	str	r3, [sp, #0x8c]
  2eefaa: ab03         	add	r3, sp, #0xc
  2eefac: 681b         	ldr	r3, [r3]
  2eefae: f503 75ac    	add.w	r5, r3, #0x158
  2eefb2: f2f3 fb3b    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f3676
  2eefb6: 4606         	mov	r6, r0
  2eefb8: ab3c         	add	r3, sp, #0xf0
  2eefba: 4618         	mov	r0, r3
  2eefbc: f09b f21a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49b434
  2eefc0: aa4a         	add	r2, sp, #0x128
  2eefc2: ab3c         	add	r3, sp, #0xf0
  2eefc4: 4610         	mov	r0, r2
  2eefc6: f8df 2588    	ldr.w	r2, [pc, #0x588]        @ 0x2ef550 <AvatarLayer::init()+0x1778>
  2eefca: 447a         	add	r2, pc
  2eefcc: 4611         	mov	r1, r2
  2eefce: 461a         	mov	r2, r3
  2eefd0: f0c7 f546    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c7a8c
  2eefd4: aa4e         	add	r2, sp, #0x138
  2eefd6: ab4a         	add	r3, sp, #0x128
  2eefd8: 4610         	mov	r0, r2
  2eefda: 4631         	mov	r1, r6
  2eefdc: f8df 2574    	ldr.w	r2, [pc, #0x574]        @ 0x2ef554 <AvatarLayer::init()+0x177c>
  2eefe0: 447a         	add	r2, pc
  2eefe2: f2f3 fa5b    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x2f34b6
  2eefe6: ab4e         	add	r3, sp, #0x138
  2eefe8: 4628         	mov	r0, r5
  2eefea: 4619         	mov	r1, r3
  2eefec: f0c6 f17c    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x4c62f8
  2eeff0: ab4e         	add	r3, sp, #0x138
  2eeff2: 4618         	mov	r0, r3
  2eeff4: f0c6 f48e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c691c
  2eeff8: ab4a         	add	r3, sp, #0x128
  2eeffa: 4618         	mov	r0, r3
  2eeffc: f0c6 f48a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c6914
  2ef000: ab3c         	add	r3, sp, #0xf0
  2ef002: 4618         	mov	r0, r3
  2ef004: f09b f1fa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49b3f4
  2ef008: ab4e         	add	r3, sp, #0x138
  2ef00a: 4618         	mov	r0, r3
  2ef00c: f04f 0100    	mov.w	r1, #0x0
  2ef010: f2c4 01a0    	movt	r1, #0x40a0
  2ef014: f04f 0200    	mov.w	r2, #0x0
  2ef018: f2c4 02a0    	movt	r2, #0x40a0
  2ef01c: f2a4 f83a    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a4074
  2ef020: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x2ef558 <AvatarLayer::init()+0x1780>
  2ef024: 447b         	add	r3, pc
  2ef026: 4618         	mov	r0, r3
  2ef028: f15f f8a4    	bl	0x44e174 <cocos2d::extension::CCScale9Sprite::create(char const*)> @ imm = #0x15f148
  2ef02c: 4603         	mov	r3, r0
  2ef02e: aa4e         	add	r2, sp, #0x138
  2ef030: 4610         	mov	r0, r2
  2ef032: 4619         	mov	r1, r3
  2ef034: 2200         	movs	r2, #0x0
  2ef036: 2300         	movs	r3, #0x0
  2ef038: f167 fc8a    	bl	0x456950 <cocos2d::extension::CCEditBox::create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*)> @ imm = #0x167914
  2ef03c: 4602         	mov	r2, r0
  2ef03e: ab03         	add	r3, sp, #0xc
  2ef040: 681b         	ldr	r3, [r3]
  2ef042: f8c3 212c    	str.w	r2, [r3, #0x12c]
  2ef046: ab03         	add	r3, sp, #0xc
  2ef048: 681b         	ldr	r3, [r3]
  2ef04a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef04e: 4618         	mov	r0, r3
  2ef050: f2a8 ff4a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8e94
  2ef054: ab03         	add	r3, sp, #0xc
  2ef056: 681b         	ldr	r3, [r3]
  2ef058: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef05c: 681b         	ldr	r3, [r3]
  2ef05e: 3390         	adds	r3, #0x90
  2ef060: 681b         	ldr	r3, [r3]
  2ef062: aa03         	add	r2, sp, #0xc
  2ef064: 6812         	ldr	r2, [r2]
  2ef066: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2ef06a: 4610         	mov	r0, r2
  2ef06c: 2100         	movs	r1, #0x0
  2ef06e: 4798         	blx	r3
  2ef070: ab03         	add	r3, sp, #0xc
  2ef072: 681b         	ldr	r3, [r3]
  2ef074: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef078: 681b         	ldr	r3, [r3]
  2ef07a: 334c         	adds	r3, #0x4c
  2ef07c: 681d         	ldr	r5, [r3]
  2ef07e: ab03         	add	r3, sp, #0xc
  2ef080: 681b         	ldr	r3, [r3]
  2ef082: f8d3 612c    	ldr.w	r6, [r3, #0x12c]
  2ef086: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x2ef55c <AvatarLayer::init()+0x1784>
  2ef08a: 58e3         	ldr	r3, [r4, r3]
  2ef08c: edd3 7a01    	vldr	s15, [r3, #4]
  2ef090: ee77 7aa7    	vadd.f32	s15, s15, s15
  2ef094: ab4e         	add	r3, sp, #0x138
  2ef096: 4618         	mov	r0, r3
  2ef098: f04f 0100    	mov.w	r1, #0x0
  2ef09c: ee17 2a90    	vmov	r2, s15
  2ef0a0: f2a3 fe26    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3c4c
  2ef0a4: ab4e         	add	r3, sp, #0x138
  2ef0a6: 4630         	mov	r0, r6
  2ef0a8: 4619         	mov	r1, r3
  2ef0aa: 47a8         	blx	r5
  2ef0ac: ab03         	add	r3, sp, #0xc
  2ef0ae: 681b         	ldr	r3, [r3]
  2ef0b0: f8d3 512c    	ldr.w	r5, [r3, #0x12c]
  2ef0b4: ab03         	add	r3, sp, #0xc
  2ef0b6: 681b         	ldr	r3, [r3]
  2ef0b8: f503 73ac    	add.w	r3, r3, #0x158
  2ef0bc: 4618         	mov	r0, r3
  2ef0be: f0c6 f11f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c623e
  2ef0c2: 4603         	mov	r3, r0
  2ef0c4: 4628         	mov	r0, r5
  2ef0c6: 4619         	mov	r1, r3
  2ef0c8: f167 fd1e    	bl	0x456b08 <cocos2d::extension::CCEditBox::setText(char const*)> @ imm = #0x167a3c
  2ef0cc: ab03         	add	r3, sp, #0xc
  2ef0ce: 681b         	ldr	r3, [r3]
  2ef0d0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef0d4: 4618         	mov	r0, r3
  2ef0d6: 2103         	movs	r1, #0x3
  2ef0d8: f167 ff12    	bl	0x456f00 <cocos2d::extension::CCEditBox::setInputFlag(cocos2d::extension::EditBoxInputFlag)> @ imm = #0x167e24
  2ef0dc: ab03         	add	r3, sp, #0xc
  2ef0de: 681b         	ldr	r3, [r3]
  2ef0e0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef0e4: 4618         	mov	r0, r3
  2ef0e6: 2101         	movs	r1, #0x1
  2ef0e8: f167 ff26    	bl	0x456f38 <cocos2d::extension::CCEditBox::setReturnType(cocos2d::extension::KeyboardReturnType)> @ imm = #0x167e4c
  2ef0ec: ab03         	add	r3, sp, #0xc
  2ef0ee: 681b         	ldr	r3, [r3]
  2ef0f0: f8d3 212c    	ldr.w	r2, [r3, #0x12c]
  2ef0f4: ab03         	add	r3, sp, #0xc
  2ef0f6: 681b         	ldr	r3, [r3]
  2ef0f8: f503 7384    	add.w	r3, r3, #0x108
  2ef0fc: 4610         	mov	r0, r2
  2ef0fe: 4619         	mov	r1, r3
  2ef100: f167 fce2    	bl	0x456ac8 <cocos2d::extension::CCEditBox::setDelegate(cocos2d::extension::CCEditBoxDelegate*)> @ imm = #0x1679c4
  2ef104: ab03         	add	r3, sp, #0xc
  2ef106: 681b         	ldr	r3, [r3]
  2ef108: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ef10c: 4618         	mov	r0, r3
  2ef10e: 2110         	movs	r1, #0x10
  2ef110: f167 fed2    	bl	0x456eb8 <cocos2d::extension::CCEditBox::setMaxLength(int)> @ imm = #0x167da4
  2ef114: f8df 3448    	ldr.w	r3, [pc, #0x448]        @ 0x2ef560 <AvatarLayer::init()+0x1788>
  2ef118: 447b         	add	r3, pc
  2ef11a: 4618         	mov	r0, r3
  2ef11c: f8df 3444    	ldr.w	r3, [pc, #0x444]        @ 0x2ef564 <AvatarLayer::init()+0x178c>
  2ef120: 447b         	add	r3, pc
  2ef122: 4619         	mov	r1, r3
  2ef124: f04f 0200    	mov.w	r2, #0x0
  2ef128: f2c4 1290    	movt	r2, #0x4190
  2ef12c: f2bc ff78    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x2bcef0
  2ef130: 4602         	mov	r2, r0
  2ef132: ab03         	add	r3, sp, #0xc
  2ef134: 681b         	ldr	r3, [r3]
  2ef136: f8c3 2130    	str.w	r2, [r3, #0x130]
  2ef13a: ab03         	add	r3, sp, #0xc
  2ef13c: 681b         	ldr	r3, [r3]
  2ef13e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ef142: 4618         	mov	r0, r3
  2ef144: f2a8 fed0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8da0
  2ef148: ab03         	add	r3, sp, #0xc
  2ef14a: 681b         	ldr	r3, [r3]
  2ef14c: 681b         	ldr	r3, [r3]
  2ef14e: 33c8         	adds	r3, #0xc8
  2ef150: 681b         	ldr	r3, [r3]
  2ef152: aa03         	add	r2, sp, #0xc
  2ef154: 6811         	ldr	r1, [r2]
  2ef156: aa03         	add	r2, sp, #0xc
  2ef158: 6812         	ldr	r2, [r2]
  2ef15a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2ef15e: 4608         	mov	r0, r1
  2ef160: 4611         	mov	r1, r2
  2ef162: 4798         	blx	r3
  2ef164: ab03         	add	r3, sp, #0xc
  2ef166: 681b         	ldr	r3, [r3]
  2ef168: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ef16c: 681b         	ldr	r3, [r3]
  2ef16e: 334c         	adds	r3, #0x4c
  2ef170: 681d         	ldr	r5, [r3]
  2ef172: ab03         	add	r3, sp, #0xc
  2ef174: 681b         	ldr	r3, [r3]
  2ef176: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ef17a: 461e         	mov	r6, r3
  2ef17c: ab03         	add	r3, sp, #0xc
  2ef17e: 681b         	ldr	r3, [r3]
  2ef180: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ef184: 681b         	ldr	r3, [r3]
  2ef186: 3350         	adds	r3, #0x50
  2ef188: 681b         	ldr	r3, [r3]
  2ef18a: aa03         	add	r2, sp, #0xc
  2ef18c: 6812         	ldr	r2, [r2]
  2ef18e: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2ef192: 4610         	mov	r0, r2
  2ef194: 4798         	blx	r3
  2ef196: 4607         	mov	r7, r0
  2ef198: ab4a         	add	r3, sp, #0x128
  2ef19a: 4618         	mov	r0, r3
  2ef19c: f04f 0100    	mov.w	r1, #0x0
  2ef1a0: f04f 0200    	mov.w	r2, #0x0
  2ef1a4: f2a3 fda4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3b48
  2ef1a8: aa4e         	add	r2, sp, #0x138
  2ef1aa: ab4a         	add	r3, sp, #0x128
  2ef1ac: 4610         	mov	r0, r2
  2ef1ae: 4639         	mov	r1, r7
  2ef1b0: 461a         	mov	r2, r3
  2ef1b2: f7fd fe57    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x2352
  2ef1b6: ab4e         	add	r3, sp, #0x138
  2ef1b8: 4630         	mov	r0, r6
  2ef1ba: 4619         	mov	r1, r3
  2ef1bc: 47a8         	blx	r5
  2ef1be: ab03         	add	r3, sp, #0xc
  2ef1c0: 6818         	ldr	r0, [r3]
  2ef1c2: f000 ff97    	bl	0x2f00f4 <AvatarLayer::updatePlayerNameLabel()> @ imm = #0xf2e
  2ef1c6: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x2ef568 <AvatarLayer::init()+0x1790>
  2ef1c8: 447b         	add	r3, pc
  2ef1ca: 4618         	mov	r0, r3
  2ef1cc: f0c6 f098    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c6130
  2ef1d0: 4603         	mov	r3, r0
  2ef1d2: 2220         	movs	r2, #0x20
  2ef1d4: 9200         	str	r2, [sp]
  2ef1d6: 4ae5         	ldr	r2, [pc, #0x394]        @ 0x2ef56c <AvatarLayer::init()+0x1794>
  2ef1d8: 447a         	add	r2, pc
  2ef1da: 4610         	mov	r0, r2
  2ef1dc: 4619         	mov	r1, r3
  2ef1de: 2220         	movs	r2, #0x20
  2ef1e0: 2320         	movs	r3, #0x20
  2ef1e2: f2b6 f8c9    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b6192
  2ef1e6: 4602         	mov	r2, r0
  2ef1e8: ab03         	add	r3, sp, #0xc
  2ef1ea: 681b         	ldr	r3, [r3]
  2ef1ec: f8c3 2138    	str.w	r2, [r3, #0x138]
  2ef1f0: ab03         	add	r3, sp, #0xc
  2ef1f2: 681b         	ldr	r3, [r3]
  2ef1f4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef1f8: 4618         	mov	r0, r3
  2ef1fa: f2a8 fe75    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8cea
  2ef1fe: ab03         	add	r3, sp, #0xc
  2ef200: 681b         	ldr	r3, [r3]
  2ef202: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef206: 681b         	ldr	r3, [r3]
  2ef208: 334c         	adds	r3, #0x4c
  2ef20a: 681d         	ldr	r5, [r3]
  2ef20c: ab03         	add	r3, sp, #0xc
  2ef20e: 681b         	ldr	r3, [r3]
  2ef210: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef214: 461e         	mov	r6, r3
  2ef216: ab03         	add	r3, sp, #0xc
  2ef218: 681b         	ldr	r3, [r3]
  2ef21a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ef21e: 681b         	ldr	r3, [r3]
  2ef220: 3350         	adds	r3, #0x50
  2ef222: 681b         	ldr	r3, [r3]
  2ef224: aa03         	add	r2, sp, #0xc
  2ef226: 6812         	ldr	r2, [r2]
  2ef228: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ef22c: 4610         	mov	r0, r2
  2ef22e: 4798         	blx	r3
  2ef230: 4603         	mov	r3, r0
  2ef232: 681f         	ldr	r7, [r3]
  2ef234: ab03         	add	r3, sp, #0xc
  2ef236: 681b         	ldr	r3, [r3]
  2ef238: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ef23c: 681b         	ldr	r3, [r3]
  2ef23e: 3350         	adds	r3, #0x50
  2ef240: 681b         	ldr	r3, [r3]
  2ef242: aa03         	add	r2, sp, #0xc
  2ef244: 6812         	ldr	r2, [r2]
  2ef246: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ef24a: 4610         	mov	r0, r2
  2ef24c: 4798         	blx	r3
  2ef24e: 4603         	mov	r3, r0
  2ef250: 685b         	ldr	r3, [r3, #0x4]
  2ef252: aa38         	add	r2, sp, #0xe0
  2ef254: 4610         	mov	r0, r2
  2ef256: 4639         	mov	r1, r7
  2ef258: 461a         	mov	r2, r3
  2ef25a: f2a3 fd49    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3a92
  2ef25e: eddd 7a21    	vldr	s15, [sp, #132]
  2ef262: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef266: ab4a         	add	r3, sp, #0x128
  2ef268: 4618         	mov	r0, r3
  2ef26a: ed9f 0bb1    	vldr	d0, [pc, #708]          @ 0x2ef530 <AvatarLayer::init()+0x1758>
  2ef26e: eeb0 1b47    	vmov.f64	d1, d7
  2ef272: f7fd fe07    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x23f2
  2ef276: ed9d 8b4a    	vldr	d8, [sp, #296]
  2ef27a: ab03         	add	r3, sp, #0xc
  2ef27c: 681b         	ldr	r3, [r3]
  2ef27e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef282: 681b         	ldr	r3, [r3]
  2ef284: f503 73fe    	add.w	r3, r3, #0x1fc
  2ef288: 681b         	ldr	r3, [r3]
  2ef28a: aa03         	add	r2, sp, #0xc
  2ef28c: 6812         	ldr	r2, [r2]
  2ef28e: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ef292: 4610         	mov	r0, r2
  2ef294: 4798         	blx	r3
  2ef296: 4607         	mov	r7, r0
  2ef298: ab09         	add	r3, sp, #0x24
  2ef29a: 4618         	mov	r0, r3
  2ef29c: f09b f0aa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49b154
  2ef2a0: aa07         	add	r2, sp, #0x1c
  2ef2a2: ab09         	add	r3, sp, #0x24
  2ef2a4: 4610         	mov	r0, r2
  2ef2a6: 4639         	mov	r1, r7
  2ef2a8: 461a         	mov	r2, r3
  2ef2aa: f0c7 f3d9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c77b2
  2ef2ae: ab07         	add	r3, sp, #0x1c
  2ef2b0: 4618         	mov	r0, r3
  2ef2b2: f0c5 f6d3    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c5da6
  2ef2b6: 4603         	mov	r3, r0
  2ef2b8: ee07 3a90    	vmov	s15, r3
  2ef2bc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2ef2c0: eddd 7a22    	vldr	s15, [sp, #136]
  2ef2c4: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef2c8: eddd 7a23    	vldr	s15, [sp, #140]
  2ef2cc: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef2d0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ef2d4: eec7 7a27    	vdiv.f32	s15, s14, s15
  2ef2d8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef2dc: ee38 7b47    	vsub.f64	d7, d8, d7
  2ef2e0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2ef2e4: eddd 7a21    	vldr	s15, [sp, #132]
  2ef2e8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef2ec: ab4e         	add	r3, sp, #0x138
  2ef2ee: 4618         	mov	r0, r3
  2ef2f0: ed9f 0b8f    	vldr	d0, [pc, #572]          @ 0x2ef530 <AvatarLayer::init()+0x1758>
  2ef2f4: eeb0 1b47    	vmov.f64	d1, d7
  2ef2f8: f7fd fdc4    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x2478
  2ef2fc: ed9d 7b50    	vldr	d7, [sp, #320]
  2ef300: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ef304: ab3a         	add	r3, sp, #0xe8
  2ef306: 4618         	mov	r0, r3
  2ef308: ee18 1a10    	vmov	r1, s16
  2ef30c: ee17 2a90    	vmov	r2, s15
  2ef310: f2a3 fcee    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a39dc
  2ef314: a93c         	add	r1, sp, #0xf0
  2ef316: aa38         	add	r2, sp, #0xe0
  2ef318: ab3a         	add	r3, sp, #0xe8
  2ef31a: 4608         	mov	r0, r1
  2ef31c: 4611         	mov	r1, r2
  2ef31e: 461a         	mov	r2, r3
  2ef320: f7fd fda0    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x24c0
  2ef324: ab3c         	add	r3, sp, #0xf0
  2ef326: 4630         	mov	r0, r6
  2ef328: 4619         	mov	r1, r3
  2ef32a: 47a8         	blx	r5
  2ef32c: ab07         	add	r3, sp, #0x1c
  2ef32e: 4618         	mov	r0, r3
  2ef330: f0c6 f2f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c65e0
  2ef334: ab09         	add	r3, sp, #0x24
  2ef336: 4618         	mov	r0, r3
  2ef338: f09b f060    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49b0c0
  2ef33c: ab03         	add	r3, sp, #0xc
  2ef33e: 681b         	ldr	r3, [r3]
  2ef340: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef344: eddd 7a22    	vldr	s15, [sp, #136]
  2ef348: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ef34c: ee17 2a90    	vmov	r2, s15
  2ef350: 4618         	mov	r0, r3
  2ef352: 4611         	mov	r1, r2
  2ef354: f2b6 fd16    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b6a2c
  2ef358: ab03         	add	r3, sp, #0xc
  2ef35a: 681b         	ldr	r3, [r3]
  2ef35c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ef360: 681b         	ldr	r3, [r3]
  2ef362: 3340         	adds	r3, #0x40
  2ef364: 681b         	ldr	r3, [r3]
  2ef366: aa03         	add	r2, sp, #0xc
  2ef368: 6812         	ldr	r2, [r2]
  2ef36a: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ef36e: 4610         	mov	r0, r2
  2ef370: 9923         	ldr	r1, [sp, #0x8c]
  2ef372: 4798         	blx	r3
  2ef374: ab03         	add	r3, sp, #0xc
  2ef376: 681b         	ldr	r3, [r3]
  2ef378: 681b         	ldr	r3, [r3]
  2ef37a: 33c8         	adds	r3, #0xc8
  2ef37c: 681b         	ldr	r3, [r3]
  2ef37e: aa03         	add	r2, sp, #0xc
  2ef380: 6811         	ldr	r1, [r2]
  2ef382: aa03         	add	r2, sp, #0xc
  2ef384: 6812         	ldr	r2, [r2]
  2ef386: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ef38a: 4608         	mov	r0, r1
  2ef38c: 4611         	mov	r1, r2
  2ef38e: 4798         	blx	r3
  2ef390: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x2ef570 <AvatarLayer::init()+0x1798>
  2ef392: 447b         	add	r3, pc
  2ef394: 4618         	mov	r0, r3
  2ef396: f0c5 f7b3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c5f66
  2ef39a: 4603         	mov	r3, r0
  2ef39c: 2220         	movs	r2, #0x20
  2ef39e: 9200         	str	r2, [sp]
  2ef3a0: 4a74         	ldr	r2, [pc, #0x1d0]        @ 0x2ef574 <AvatarLayer::init()+0x179c>
  2ef3a2: 447a         	add	r2, pc
  2ef3a4: 4610         	mov	r0, r2
  2ef3a6: 4619         	mov	r1, r3
  2ef3a8: 2220         	movs	r2, #0x20
  2ef3aa: 2320         	movs	r3, #0x20
  2ef3ac: f2b5 ffe4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b5fc8
  2ef3b0: 4602         	mov	r2, r0
  2ef3b2: ab03         	add	r3, sp, #0xc
  2ef3b4: 681b         	ldr	r3, [r3]
  2ef3b6: f8c3 211c    	str.w	r2, [r3, #0x11c]
  2ef3ba: ab03         	add	r3, sp, #0xc
  2ef3bc: 681b         	ldr	r3, [r3]
  2ef3be: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef3c2: 4618         	mov	r0, r3
  2ef3c4: f2a8 fd90    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8b20
  2ef3c8: ab03         	add	r3, sp, #0xc
  2ef3ca: 681b         	ldr	r3, [r3]
  2ef3cc: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef3d0: 681b         	ldr	r3, [r3]
  2ef3d2: 334c         	adds	r3, #0x4c
  2ef3d4: 681d         	ldr	r5, [r3]
  2ef3d6: ab03         	add	r3, sp, #0xc
  2ef3d8: 681b         	ldr	r3, [r3]
  2ef3da: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef3de: 461e         	mov	r6, r3
  2ef3e0: ab03         	add	r3, sp, #0xc
  2ef3e2: 681b         	ldr	r3, [r3]
  2ef3e4: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ef3e8: 681b         	ldr	r3, [r3]
  2ef3ea: 3350         	adds	r3, #0x50
  2ef3ec: 681b         	ldr	r3, [r3]
  2ef3ee: aa03         	add	r2, sp, #0xc
  2ef3f0: 6812         	ldr	r2, [r2]
  2ef3f2: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2ef3f6: 4610         	mov	r0, r2
  2ef3f8: 4798         	blx	r3
  2ef3fa: 4603         	mov	r3, r0
  2ef3fc: 681f         	ldr	r7, [r3]
  2ef3fe: ab03         	add	r3, sp, #0xc
  2ef400: 681b         	ldr	r3, [r3]
  2ef402: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ef406: 681b         	ldr	r3, [r3]
  2ef408: 3350         	adds	r3, #0x50
  2ef40a: 681b         	ldr	r3, [r3]
  2ef40c: aa03         	add	r2, sp, #0xc
  2ef40e: 6812         	ldr	r2, [r2]
  2ef410: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2ef414: 4610         	mov	r0, r2
  2ef416: 4798         	blx	r3
  2ef418: 4603         	mov	r3, r0
  2ef41a: 685b         	ldr	r3, [r3, #0x4]
  2ef41c: aa38         	add	r2, sp, #0xe0
  2ef41e: 4610         	mov	r0, r2
  2ef420: 4639         	mov	r1, r7
  2ef422: 461a         	mov	r2, r3
  2ef424: f2a3 fc64    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a38c8
  2ef428: eddd 7a21    	vldr	s15, [sp, #132]
  2ef42c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef430: ab4a         	add	r3, sp, #0x128
  2ef432: 4618         	mov	r0, r3
  2ef434: ed9f 0b3e    	vldr	d0, [pc, #248]          @ 0x2ef530 <AvatarLayer::init()+0x1758>
  2ef438: eeb0 1b47    	vmov.f64	d1, d7
  2ef43c: f7fd fd22    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x25bc
  2ef440: ed9d 8b4a    	vldr	d8, [sp, #296]
  2ef444: ab03         	add	r3, sp, #0xc
  2ef446: 681b         	ldr	r3, [r3]
  2ef448: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef44c: 681b         	ldr	r3, [r3]
  2ef44e: f503 73fe    	add.w	r3, r3, #0x1fc
  2ef452: 681b         	ldr	r3, [r3]
  2ef454: aa03         	add	r2, sp, #0xc
  2ef456: 6812         	ldr	r2, [r2]
  2ef458: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2ef45c: 4610         	mov	r0, r2
  2ef45e: 4798         	blx	r3
  2ef460: 4607         	mov	r7, r0
  2ef462: ab09         	add	r3, sp, #0x24
  2ef464: 4618         	mov	r0, r3
  2ef466: f09a f7c5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49af8a
  2ef46a: aa08         	add	r2, sp, #0x20
  2ef46c: ab09         	add	r3, sp, #0x24
  2ef46e: 4610         	mov	r0, r2
  2ef470: 4639         	mov	r1, r7
  2ef472: 461a         	mov	r2, r3
  2ef474: f0c7 f2f4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c75e8
  2ef478: ab08         	add	r3, sp, #0x20
  2ef47a: 4618         	mov	r0, r3
  2ef47c: f0c5 f5ee    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c5bdc
  2ef480: 4603         	mov	r3, r0
  2ef482: ee06 3a90    	vmov	s13, r3
  2ef486: eeb8 7a66    	vcvt.f32.u32	s14, s13
  2ef48a: eddd 7a22    	vldr	s15, [sp, #136]
  2ef48e: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef492: eddd 7a23    	vldr	s15, [sp, #140]
  2ef496: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef49a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ef49e: eec7 7a27    	vdiv.f32	s15, s14, s15
  2ef4a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef4a6: ee38 7b47    	vsub.f64	d7, d8, d7
  2ef4aa: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2ef4ae: eddd 7a21    	vldr	s15, [sp, #132]
  2ef4b2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef4b6: ab4e         	add	r3, sp, #0x138
  2ef4b8: 4618         	mov	r0, r3
  2ef4ba: ed9f 0b1d    	vldr	d0, [pc, #116]          @ 0x2ef530 <AvatarLayer::init()+0x1758>
  2ef4be: eeb0 1b47    	vmov.f64	d1, d7
  2ef4c2: f7fd fcdf    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x2642
  2ef4c6: ed9d 7b50    	vldr	d7, [sp, #320]
  2ef4ca: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ef4ce: ab3a         	add	r3, sp, #0xe8
  2ef4d0: 4618         	mov	r0, r3
  2ef4d2: ee18 1a10    	vmov	r1, s16
  2ef4d6: ee17 2a90    	vmov	r2, s15
  2ef4da: f2a3 fc09    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3812
  2ef4de: a93c         	add	r1, sp, #0xf0
  2ef4e0: aa38         	add	r2, sp, #0xe0
  2ef4e2: ab3a         	add	r3, sp, #0xe8
  2ef4e4: 4608         	mov	r0, r1
  2ef4e6: 4611         	mov	r1, r2
  2ef4e8: 461a         	mov	r2, r3
  2ef4ea: f7fd fcbb    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x268a
  2ef4ee: ab3c         	add	r3, sp, #0xf0
  2ef4f0: 4630         	mov	r0, r6
  2ef4f2: 4619         	mov	r1, r3
  2ef4f4: 47a8         	blx	r5
  2ef4f6: ab08         	add	r3, sp, #0x20
  2ef4f8: 4618         	mov	r0, r3
  2ef4fa: f0c6 f20b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c6416
  2ef4fe: ab09         	add	r3, sp, #0x24
  2ef500: 4618         	mov	r0, r3
  2ef502: f09a f77b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49aef6
  2ef506: ab03         	add	r3, sp, #0xc
  2ef508: 681b         	ldr	r3, [r3]
  2ef50a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef50e: eddd 7a22    	vldr	s15, [sp, #136]
  2ef512: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ef516: ee17 2a90    	vmov	r2, s15
  2ef51a: 4618         	mov	r0, r3
  2ef51c: 4611         	mov	r1, r2
  2ef51e: f2b6 fc31    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b6862
  2ef522: ab03         	add	r3, sp, #0xc
  2ef524: 681b         	ldr	r3, [r3]
  2ef526: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ef52a: 681b         	ldr	r3, [r3]
  2ef52c: 3340         	adds	r3, #0x40
  2ef52e: e023         	b	0x2ef578 <AvatarLayer::init()+0x17a0> @ imm = #0x46
  2ef538: 471c         	bx	r3
  2ef53a: 004d         	lsls	r5, r1, #0x1
  2ef53c: 0af8         	lsrs	r0, r7, #0xb
  2ef53e: 0065         	lsls	r5, r4, #0x1
  2ef540: 4634         	mov	r4, r6
  2ef542: 004d         	lsls	r5, r1, #0x1
  2ef544: 0a04         	lsrs	r4, r0, #0x8
  2ef546: 0065         	lsls	r5, r4, #0x1
  2ef548: 4548         	cmp	r0, r9
  2ef54a: 004d         	lsls	r5, r1, #0x1
  2ef54c: 090c         	lsrs	r4, r1, #0x4
  2ef54e: 0065         	lsls	r5, r4, #0x1
  2ef550: 443e         	add	r6, r7
  2ef552: 004d         	lsls	r5, r1, #0x1
  2ef554: 4430         	add	r0, r6
  2ef556: 004d         	lsls	r5, r1, #0x1
  2ef558: 43f8         	mvns	r0, r7
  2ef55a: 004d         	lsls	r5, r1, #0x1
  2ef55c: d724         	bvc	0x2ef5a8 <AvatarLayer::init()+0x17d0> @ imm = #0x48
  2ef55e: ffff 4314    	vrsra.u32	d20, d4, #0x1
  2ef562: 004d         	lsls	r5, r1, #0x1
  2ef564: 4310         	orrs	r0, r2
  2ef566: 004d         	lsls	r5, r1, #0x1
  2ef568: 0610         	lsls	r0, r2, #0x18
  2ef56a: 0065         	lsls	r5, r4, #0x1
  2ef56c: 4260         	rsbs	r0, r4, #0
  2ef56e: 004d         	lsls	r5, r1, #0x1
  2ef570: 0446         	lsls	r6, r0, #0x11
  2ef572: 0065         	lsls	r5, r4, #0x1
  2ef574: 409e         	lsls	r6, r3
  2ef576: 004d         	lsls	r5, r1, #0x1
  2ef578: 681b         	ldr	r3, [r3]
  2ef57a: aa03         	add	r2, sp, #0xc
  2ef57c: 6812         	ldr	r2, [r2]
  2ef57e: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2ef582: 4610         	mov	r0, r2
  2ef584: 9923         	ldr	r1, [sp, #0x8c]
  2ef586: 4798         	blx	r3
  2ef588: ab03         	add	r3, sp, #0xc
  2ef58a: 681b         	ldr	r3, [r3]
  2ef58c: 681b         	ldr	r3, [r3]
  2ef58e: 33c8         	adds	r3, #0xc8
  2ef590: 681b         	ldr	r3, [r3]
  2ef592: aa03         	add	r2, sp, #0xc
  2ef594: 6811         	ldr	r1, [r2]
  2ef596: aa03         	add	r2, sp, #0xc
  2ef598: 6812         	ldr	r2, [r2]
  2ef59a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2ef59e: 4608         	mov	r0, r1
  2ef5a0: 4611         	mov	r1, r2
  2ef5a2: 4798         	blx	r3
  2ef5a4: f8df 3508    	ldr.w	r3, [pc, #0x508]        @ 0x2efab0 <AvatarLayer::init()+0x1cd8>
  2ef5a8: 447b         	add	r3, pc
  2ef5aa: 4618         	mov	r0, r3
  2ef5ac: f0c5 f6a8    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c5d50
  2ef5b0: 4603         	mov	r3, r0
  2ef5b2: 2220         	movs	r2, #0x20
  2ef5b4: 9200         	str	r2, [sp]
  2ef5b6: f8df 24fc    	ldr.w	r2, [pc, #0x4fc]        @ 0x2efab4 <AvatarLayer::init()+0x1cdc>
  2ef5ba: 447a         	add	r2, pc
  2ef5bc: 4610         	mov	r0, r2
  2ef5be: 4619         	mov	r1, r3
  2ef5c0: 2220         	movs	r2, #0x20
  2ef5c2: 2320         	movs	r3, #0x20
  2ef5c4: f2b5 fed8    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b5db0
  2ef5c8: 4602         	mov	r2, r0
  2ef5ca: ab03         	add	r3, sp, #0xc
  2ef5cc: 681b         	ldr	r3, [r3]
  2ef5ce: f8c3 213c    	str.w	r2, [r3, #0x13c]
  2ef5d2: ab03         	add	r3, sp, #0xc
  2ef5d4: 681b         	ldr	r3, [r3]
  2ef5d6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef5da: 4618         	mov	r0, r3
  2ef5dc: f2a8 fc84    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a8908
  2ef5e0: ab03         	add	r3, sp, #0xc
  2ef5e2: 681b         	ldr	r3, [r3]
  2ef5e4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef5e8: 681b         	ldr	r3, [r3]
  2ef5ea: 334c         	adds	r3, #0x4c
  2ef5ec: 681d         	ldr	r5, [r3]
  2ef5ee: ab03         	add	r3, sp, #0xc
  2ef5f0: 681b         	ldr	r3, [r3]
  2ef5f2: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef5f6: 461e         	mov	r6, r3
  2ef5f8: ab03         	add	r3, sp, #0xc
  2ef5fa: 681b         	ldr	r3, [r3]
  2ef5fc: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ef600: 681b         	ldr	r3, [r3]
  2ef602: 3350         	adds	r3, #0x50
  2ef604: 681b         	ldr	r3, [r3]
  2ef606: aa03         	add	r2, sp, #0xc
  2ef608: 6812         	ldr	r2, [r2]
  2ef60a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  2ef60e: 4610         	mov	r0, r2
  2ef610: 4798         	blx	r3
  2ef612: 4603         	mov	r3, r0
  2ef614: 681f         	ldr	r7, [r3]
  2ef616: ab03         	add	r3, sp, #0xc
  2ef618: 681b         	ldr	r3, [r3]
  2ef61a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ef61e: 681b         	ldr	r3, [r3]
  2ef620: 3350         	adds	r3, #0x50
  2ef622: 681b         	ldr	r3, [r3]
  2ef624: aa03         	add	r2, sp, #0xc
  2ef626: 6812         	ldr	r2, [r2]
  2ef628: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  2ef62c: 4610         	mov	r0, r2
  2ef62e: 4798         	blx	r3
  2ef630: 4603         	mov	r3, r0
  2ef632: 685b         	ldr	r3, [r3, #0x4]
  2ef634: aa38         	add	r2, sp, #0xe0
  2ef636: 4610         	mov	r0, r2
  2ef638: 4639         	mov	r1, r7
  2ef63a: 461a         	mov	r2, r3
  2ef63c: f2a3 fb58    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a36b0
  2ef640: eddd 7a21    	vldr	s15, [sp, #132]
  2ef644: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef648: ab4a         	add	r3, sp, #0x128
  2ef64a: 4618         	mov	r0, r3
  2ef64c: eeb0 0b00    	vmov.f64	d0, #2.000000e+00
  2ef650: eeb0 1b47    	vmov.f64	d1, d7
  2ef654: f7fd fc16    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x27d4
  2ef658: ed9d 8b4a    	vldr	d8, [sp, #296]
  2ef65c: ab03         	add	r3, sp, #0xc
  2ef65e: 681b         	ldr	r3, [r3]
  2ef660: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef664: 681b         	ldr	r3, [r3]
  2ef666: f503 73fe    	add.w	r3, r3, #0x1fc
  2ef66a: 681b         	ldr	r3, [r3]
  2ef66c: aa03         	add	r2, sp, #0xc
  2ef66e: 6812         	ldr	r2, [r2]
  2ef670: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ef674: 4610         	mov	r0, r2
  2ef676: 4798         	blx	r3
  2ef678: 4607         	mov	r7, r0
  2ef67a: ab08         	add	r3, sp, #0x20
  2ef67c: 4618         	mov	r0, r3
  2ef67e: f09a f6b9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49ad72
  2ef682: aa09         	add	r2, sp, #0x24
  2ef684: ab08         	add	r3, sp, #0x20
  2ef686: 4610         	mov	r0, r2
  2ef688: 4639         	mov	r1, r7
  2ef68a: 461a         	mov	r2, r3
  2ef68c: f0c7 f1e8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c73d0
  2ef690: ab09         	add	r3, sp, #0x24
  2ef692: 4618         	mov	r0, r3
  2ef694: f0c5 f4e2    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c59c4
  2ef698: 4603         	mov	r3, r0
  2ef69a: ee07 3a90    	vmov	s15, r3
  2ef69e: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2ef6a2: eddd 7a22    	vldr	s15, [sp, #136]
  2ef6a6: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef6aa: eddd 7a23    	vldr	s15, [sp, #140]
  2ef6ae: ee27 7a27    	vmul.f32	s14, s14, s15
  2ef6b2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ef6b6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2ef6ba: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef6be: ee38 7b47    	vsub.f64	d7, d8, d7
  2ef6c2: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2ef6c6: eddd 7a21    	vldr	s15, [sp, #132]
  2ef6ca: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2ef6ce: ab4e         	add	r3, sp, #0x138
  2ef6d0: 4618         	mov	r0, r3
  2ef6d2: eeb0 0b00    	vmov.f64	d0, #2.000000e+00
  2ef6d6: eeb0 1b47    	vmov.f64	d1, d7
  2ef6da: f7fd fbd3    	bl	0x2ece84 <cocos2d::CCInteger::getValue() const+0x30> @ imm = #-0x285a
  2ef6de: ed9d 7b50    	vldr	d7, [sp, #320]
  2ef6e2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2ef6e6: ab3a         	add	r3, sp, #0xe8
  2ef6e8: 4618         	mov	r0, r3
  2ef6ea: ee18 1a10    	vmov	r1, s16
  2ef6ee: ee17 2a90    	vmov	r2, s15
  2ef6f2: f2a3 fafd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a35fa
  2ef6f6: a93c         	add	r1, sp, #0xf0
  2ef6f8: aa38         	add	r2, sp, #0xe0
  2ef6fa: ab3a         	add	r3, sp, #0xe8
  2ef6fc: 4608         	mov	r0, r1
  2ef6fe: 4611         	mov	r1, r2
  2ef700: 461a         	mov	r2, r3
  2ef702: f7fd fbaf    	bl	0x2ece64 <cocos2d::CCInteger::getValue() const+0x10> @ imm = #-0x28a2
  2ef706: ab3c         	add	r3, sp, #0xf0
  2ef708: 4630         	mov	r0, r6
  2ef70a: 4619         	mov	r1, r3
  2ef70c: 47a8         	blx	r5
  2ef70e: ab09         	add	r3, sp, #0x24
  2ef710: 4618         	mov	r0, r3
  2ef712: f0c6 f0ff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c61fe
  2ef716: ab08         	add	r3, sp, #0x20
  2ef718: 4618         	mov	r0, r3
  2ef71a: f09a f66f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49acde
  2ef71e: ab03         	add	r3, sp, #0xc
  2ef720: 681b         	ldr	r3, [r3]
  2ef722: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef726: eddd 7a22    	vldr	s15, [sp, #136]
  2ef72a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2ef72e: ee17 2a90    	vmov	r2, s15
  2ef732: 4618         	mov	r0, r3
  2ef734: 4611         	mov	r1, r2
  2ef736: f2b6 fb25    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b664a
  2ef73a: ab03         	add	r3, sp, #0xc
  2ef73c: 681b         	ldr	r3, [r3]
  2ef73e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ef742: 681b         	ldr	r3, [r3]
  2ef744: 3340         	adds	r3, #0x40
  2ef746: 681b         	ldr	r3, [r3]
  2ef748: aa03         	add	r2, sp, #0xc
  2ef74a: 6812         	ldr	r2, [r2]
  2ef74c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ef750: 4610         	mov	r0, r2
  2ef752: f04f 517c    	mov.w	r1, #0x3f000000
  2ef756: 4798         	blx	r3
  2ef758: ab03         	add	r3, sp, #0xc
  2ef75a: 681b         	ldr	r3, [r3]
  2ef75c: 681b         	ldr	r3, [r3]
  2ef75e: 33c8         	adds	r3, #0xc8
  2ef760: 681b         	ldr	r3, [r3]
  2ef762: aa03         	add	r2, sp, #0xc
  2ef764: 6811         	ldr	r1, [r2]
  2ef766: aa03         	add	r2, sp, #0xc
  2ef768: 6812         	ldr	r2, [r2]
  2ef76a: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ef76e: 4608         	mov	r0, r1
  2ef770: 4611         	mov	r1, r2
  2ef772: 4798         	blx	r3
  2ef774: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x2efab8 <AvatarLayer::init()+0x1ce0>
  2ef776: 447b         	add	r3, pc
  2ef778: 4618         	mov	r0, r3
  2ef77a: f2e8 fd03    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2e8a06
  2ef77e: 4602         	mov	r2, r0
  2ef780: ab03         	add	r3, sp, #0xc
  2ef782: 681b         	ldr	r3, [r3]
  2ef784: f8c3 2154    	str.w	r2, [r3, #0x154]
  2ef788: ab03         	add	r3, sp, #0xc
  2ef78a: 681b         	ldr	r3, [r3]
  2ef78c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  2ef790: 681b         	ldr	r3, [r3]
  2ef792: 334c         	adds	r3, #0x4c
  2ef794: 681b         	ldr	r3, [r3]
  2ef796: aa03         	add	r2, sp, #0xc
  2ef798: 6812         	ldr	r2, [r2]
  2ef79a: f8d2 1154    	ldr.w	r1, [r2, #0x154]
  2ef79e: aa34         	add	r2, sp, #0xd0
  2ef7a0: 4608         	mov	r0, r1
  2ef7a2: 4611         	mov	r1, r2
  2ef7a4: 4798         	blx	r3
  2ef7a6: ab03         	add	r3, sp, #0xc
  2ef7a8: 681b         	ldr	r3, [r3]
  2ef7aa: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  2ef7ae: 681b         	ldr	r3, [r3]
  2ef7b0: f503 73d2    	add.w	r3, r3, #0x1a4
  2ef7b4: 681b         	ldr	r3, [r3]
  2ef7b6: aa03         	add	r2, sp, #0xc
  2ef7b8: 6812         	ldr	r2, [r2]
  2ef7ba: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  2ef7be: 4610         	mov	r0, r2
  2ef7c0: 2123         	movs	r1, #0x23
  2ef7c2: 4798         	blx	r3
  2ef7c4: ab03         	add	r3, sp, #0xc
  2ef7c6: 681b         	ldr	r3, [r3]
  2ef7c8: 681b         	ldr	r3, [r3]
  2ef7ca: 33c8         	adds	r3, #0xc8
  2ef7cc: 681b         	ldr	r3, [r3]
  2ef7ce: aa03         	add	r2, sp, #0xc
  2ef7d0: 6811         	ldr	r1, [r2]
  2ef7d2: aa03         	add	r2, sp, #0xc
  2ef7d4: 6812         	ldr	r2, [r2]
  2ef7d6: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  2ef7da: 4608         	mov	r0, r1
  2ef7dc: 4611         	mov	r1, r2
  2ef7de: 4798         	blx	r3
  2ef7e0: 4bb6         	ldr	r3, [pc, #0x2d8]        @ 0x2efabc <AvatarLayer::init()+0x1ce4>
  2ef7e2: 58e3         	ldr	r3, [r4, r3]
  2ef7e4: 681a         	ldr	r2, [r3]
  2ef7e6: 4bb5         	ldr	r3, [pc, #0x2d4]        @ 0x2efabc <AvatarLayer::init()+0x1ce4>
  2ef7e8: 58e3         	ldr	r3, [r4, r3]
  2ef7ea: 685b         	ldr	r3, [r3, #0x4]
  2ef7ec: a94e         	add	r1, sp, #0x138
  2ef7ee: 4608         	mov	r0, r1
  2ef7f0: 4611         	mov	r1, r2
  2ef7f2: 461a         	mov	r2, r3
  2ef7f4: f2a3 fa7c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a34f8
  2ef7f8: ab4e         	add	r3, sp, #0x138
  2ef7fa: 4ab1         	ldr	r2, [pc, #0x2c4]        @ 0x2efac0 <AvatarLayer::init()+0x1ce8>
  2ef7fc: 58a2         	ldr	r2, [r4, r2]
  2ef7fe: 4610         	mov	r0, r2
  2ef800: 4619         	mov	r1, r3
  2ef802: f2a3 faa3    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2a3546
  2ef806: ab03         	add	r3, sp, #0xc
  2ef808: 681a         	ldr	r2, [r3]
  2ef80a: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x2efac4 <AvatarLayer::init()+0x1cec>
  2ef80c: 58e3         	ldr	r3, [r4, r3]
  2ef80e: 601a         	str	r2, [r3]
  2ef810: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x2efac8 <AvatarLayer::init()+0x1cf0>
  2ef812: 58e3         	ldr	r3, [r4, r3]
  2ef814: f04f 527e    	mov.w	r2, #0x3f800000
  2ef818: 601a         	str	r2, [r3]
  2ef81a: f7fa fd4f    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x5562
  2ef81e: 4602         	mov	r2, r0
  2ef820: ab03         	add	r3, sp, #0xc
  2ef822: 681b         	ldr	r3, [r3]
  2ef824: f8c3 215c    	str.w	r2, [r3, #0x15c]
  2ef828: ab03         	add	r3, sp, #0xc
  2ef82a: 681b         	ldr	r3, [r3]
  2ef82c: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef830: 4618         	mov	r0, r3
  2ef832: f2a8 fb59    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a86b2
  2ef836: ab03         	add	r3, sp, #0xc
  2ef838: 681b         	ldr	r3, [r3]
  2ef83a: 681b         	ldr	r3, [r3]
  2ef83c: 33c8         	adds	r3, #0xc8
  2ef83e: 681b         	ldr	r3, [r3]
  2ef840: aa03         	add	r2, sp, #0xc
  2ef842: 6811         	ldr	r1, [r2]
  2ef844: aa03         	add	r2, sp, #0xc
  2ef846: 6812         	ldr	r2, [r2]
  2ef848: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  2ef84c: 4608         	mov	r0, r1
  2ef84e: 4611         	mov	r1, r2
  2ef850: 4798         	blx	r3
  2ef852: ab03         	add	r3, sp, #0xc
  2ef854: 681b         	ldr	r3, [r3]
  2ef856: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef85a: 2201         	movs	r2, #0x1
  2ef85c: f883 21e1    	strb.w	r2, [r3, #0x1e1]
  2ef860: ab03         	add	r3, sp, #0xc
  2ef862: 681b         	ldr	r3, [r3]
  2ef864: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef868: 681b         	ldr	r3, [r3]
  2ef86a: 334c         	adds	r3, #0x4c
  2ef86c: 681d         	ldr	r5, [r3]
  2ef86e: ab03         	add	r3, sp, #0xc
  2ef870: 681b         	ldr	r3, [r3]
  2ef872: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef876: 461e         	mov	r6, r3
  2ef878: 4b90         	ldr	r3, [pc, #0x240]        @ 0x2efabc <AvatarLayer::init()+0x1ce4>
  2ef87a: 58e3         	ldr	r3, [r4, r3]
  2ef87c: ed93 7a00    	vldr	s14, [r3]
  2ef880: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ef884: eec7 6a27    	vdiv.f32	s13, s14, s15
  2ef888: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x2efabc <AvatarLayer::init()+0x1ce4>
  2ef88a: 58e3         	ldr	r3, [r4, r3]
  2ef88c: ed93 7a01    	vldr	s14, [r3, #4]
  2ef890: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ef894: ee87 7a27    	vdiv.f32	s14, s14, s15
  2ef898: eddf 7a84    	vldr	s15, [pc, #528]         @ 0x2efaac <AvatarLayer::init()+0x1cd4>
  2ef89c: ee77 7a67    	vsub.f32	s15, s14, s15
  2ef8a0: ab4e         	add	r3, sp, #0x138
  2ef8a2: 4618         	mov	r0, r3
  2ef8a4: ee16 1a90    	vmov	r1, s13
  2ef8a8: ee17 2a90    	vmov	r2, s15
  2ef8ac: f2a3 fa20    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a3440
  2ef8b0: ab4e         	add	r3, sp, #0x138
  2ef8b2: 4630         	mov	r0, r6
  2ef8b4: 4619         	mov	r1, r3
  2ef8b6: 47a8         	blx	r5
  2ef8b8: ab03         	add	r3, sp, #0xc
  2ef8ba: 681b         	ldr	r3, [r3]
  2ef8bc: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef8c0: 4618         	mov	r0, r3
  2ef8c2: f04f 0100    	mov.w	r1, #0x0
  2ef8c6: f103 f95b    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0x1032b6
  2ef8ca: ab03         	add	r3, sp, #0xc
  2ef8cc: 681b         	ldr	r3, [r3]
  2ef8ce: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef8d2: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2ef8d6: 681b         	ldr	r3, [r3]
  2ef8d8: 3398         	adds	r3, #0x98
  2ef8da: 681b         	ldr	r3, [r3]
  2ef8dc: aa03         	add	r2, sp, #0xc
  2ef8de: 6812         	ldr	r2, [r2]
  2ef8e0: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  2ef8e4: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2ef8e8: 4610         	mov	r0, r2
  2ef8ea: f04f 0100    	mov.w	r1, #0x0
  2ef8ee: 4798         	blx	r3
  2ef8f0: ab03         	add	r3, sp, #0xc
  2ef8f2: 681b         	ldr	r3, [r3]
  2ef8f4: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef8f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ef8fc: 681b         	ldr	r3, [r3]
  2ef8fe: 3398         	adds	r3, #0x98
  2ef900: 681b         	ldr	r3, [r3]
  2ef902: aa03         	add	r2, sp, #0xc
  2ef904: 6812         	ldr	r2, [r2]
  2ef906: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  2ef90a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2ef90e: 4610         	mov	r0, r2
  2ef910: f04f 0100    	mov.w	r1, #0x0
  2ef914: f2c4 21c8    	movt	r1, #0x42c8
  2ef918: 4798         	blx	r3
  2ef91a: ab03         	add	r3, sp, #0xc
  2ef91c: 681b         	ldr	r3, [r3]
  2ef91e: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef922: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ef926: 681b         	ldr	r3, [r3]
  2ef928: 3398         	adds	r3, #0x98
  2ef92a: 681b         	ldr	r3, [r3]
  2ef92c: aa03         	add	r2, sp, #0xc
  2ef92e: 6812         	ldr	r2, [r2]
  2ef930: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  2ef934: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2ef938: 4610         	mov	r0, r2
  2ef93a: f04f 0100    	mov.w	r1, #0x0
  2ef93e: f2c4 2148    	movt	r1, #0x4248
  2ef942: 4798         	blx	r3
  2ef944: ab03         	add	r3, sp, #0xc
  2ef946: 681b         	ldr	r3, [r3]
  2ef948: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2ef94c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2ef950: 681b         	ldr	r3, [r3]
  2ef952: 3390         	adds	r3, #0x90
  2ef954: 681b         	ldr	r3, [r3]
  2ef956: aa03         	add	r2, sp, #0xc
  2ef958: 6812         	ldr	r2, [r2]
  2ef95a: f8d2 215c    	ldr.w	r2, [r2, #0x15c]
  2ef95e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2ef962: 4610         	mov	r0, r2
  2ef964: 2100         	movs	r1, #0x0
  2ef966: 4798         	blx	r3
  2ef968: f004 f8a6    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x414c
  2ef96c: 4603         	mov	r3, r0
  2ef96e: 4618         	mov	r0, r3
  2ef970: f008 fcee    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #0x89dc
  2ef974: 4603         	mov	r3, r0
  2ef976: 932c         	str	r3, [sp, #0xb0]
  2ef978: f004 f89e    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x413c
  2ef97c: 4602         	mov	r2, r0
  2ef97e: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x2efacc <AvatarLayer::init()+0x1cf4>
  2ef980: 58e3         	ldr	r3, [r4, r3]
  2ef982: 681b         	ldr	r3, [r3]
  2ef984: 4610         	mov	r0, r2
  2ef986: 992c         	ldr	r1, [sp, #0xb0]
  2ef988: 461a         	mov	r2, r3
  2ef98a: f007 fb71    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #0x76e2
  2ef98e: 4603         	mov	r3, r0
  2ef990: 932d         	str	r3, [sp, #0xb4]
  2ef992: f004 f891    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x4122
  2ef996: 4602         	mov	r2, r0
  2ef998: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x2efacc <AvatarLayer::init()+0x1cf4>
  2ef99a: 58e3         	ldr	r3, [r4, r3]
  2ef99c: 681b         	ldr	r3, [r3]
  2ef99e: 4610         	mov	r0, r2
  2ef9a0: 992c         	ldr	r1, [sp, #0xb0]
  2ef9a2: 461a         	mov	r2, r3
  2ef9a4: f008 fa6e    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #0x84dc
  2ef9a8: 4603         	mov	r3, r0
  2ef9aa: 932e         	str	r3, [sp, #0xb8]
  2ef9ac: f004 f884    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x4108
  2ef9b0: 4602         	mov	r2, r0
  2ef9b2: 4b46         	ldr	r3, [pc, #0x118]        @ 0x2efacc <AvatarLayer::init()+0x1cf4>
  2ef9b4: 58e3         	ldr	r3, [r4, r3]
  2ef9b6: 681b         	ldr	r3, [r3]
  2ef9b8: 4610         	mov	r0, r2
  2ef9ba: 992c         	ldr	r1, [sp, #0xb0]
  2ef9bc: 461a         	mov	r2, r3
  2ef9be: f008 faff    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #0x85fe
  2ef9c2: 4603         	mov	r3, r0
  2ef9c4: 932f         	str	r3, [sp, #0xbc]
  2ef9c6: f004 f877    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x40ee
  2ef9ca: 4602         	mov	r2, r0
  2ef9cc: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x2efacc <AvatarLayer::init()+0x1cf4>
  2ef9ce: 58e3         	ldr	r3, [r4, r3]
  2ef9d0: 681b         	ldr	r3, [r3]
  2ef9d2: 4610         	mov	r0, r2
  2ef9d4: 992c         	ldr	r1, [sp, #0xb0]
  2ef9d6: 461a         	mov	r2, r3
  2ef9d8: f008 fb90    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #0x8720
  2ef9dc: 4603         	mov	r3, r0
  2ef9de: 9330         	str	r3, [sp, #0xc0]
  2ef9e0: f004 f86a    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x40d4
  2ef9e4: 4602         	mov	r2, r0
  2ef9e6: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x2efacc <AvatarLayer::init()+0x1cf4>
  2ef9e8: 58e3         	ldr	r3, [r4, r3]
  2ef9ea: 681b         	ldr	r3, [r3]
  2ef9ec: 4610         	mov	r0, r2
  2ef9ee: 992c         	ldr	r1, [sp, #0xb0]
  2ef9f0: 461a         	mov	r2, r3
  2ef9f2: f008 fc21    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #0x8842
  2ef9f6: 4603         	mov	r3, r0
  2ef9f8: 9331         	str	r3, [sp, #0xc4]
  2ef9fa: ab03         	add	r3, sp, #0xc
  2ef9fc: 681b         	ldr	r3, [r3]
  2ef9fe: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2efa02: 9a2f         	ldr	r2, [sp, #0xbc]
  2efa04: 9200         	str	r2, [sp]
  2efa06: 9a30         	ldr	r2, [sp, #0xc0]
  2efa08: 9201         	str	r2, [sp, #0x4]
  2efa0a: 4618         	mov	r0, r3
  2efa0c: 9931         	ldr	r1, [sp, #0xc4]
  2efa0e: 9a2d         	ldr	r2, [sp, #0xb4]
  2efa10: 9b2e         	ldr	r3, [sp, #0xb8]
  2efa12: f104 fb37    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x10466e
  2efa16: 2401         	movs	r4, #0x1
  2efa18: ab06         	add	r3, sp, #0x18
  2efa1a: 4618         	mov	r0, r3
  2efa1c: f0c5 f77a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5ef4
  2efa20: 4623         	mov	r3, r4
  2efa22: e03d         	b	0x2efaa0 <AvatarLayer::init()+0x1cc8> @ imm = #0x7a
  2efa24: ab4e         	add	r3, sp, #0x138
  2efa26: 4618         	mov	r0, r3
  2efa28: f0c5 f774    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5ee8
  2efa2c: e7ff         	b	0x2efa2e <AvatarLayer::init()+0x1c56> @ imm = #-0x2
  2efa2e: ab4a         	add	r3, sp, #0x128
  2efa30: 4618         	mov	r0, r3
  2efa32: f09a f4e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a9c6
  2efa36: f098 f339    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x498672
  2efa3a: ab4e         	add	r3, sp, #0x138
  2efa3c: 4618         	mov	r0, r3
  2efa3e: f0c5 f769    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5ed2
  2efa42: e7ff         	b	0x2efa44 <AvatarLayer::init()+0x1c6c> @ imm = #-0x2
  2efa44: ab4a         	add	r3, sp, #0x128
  2efa46: 4618         	mov	r0, r3
  2efa48: f0c5 f764    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5ec8
  2efa4c: e7ff         	b	0x2efa4e <AvatarLayer::init()+0x1c76> @ imm = #-0x2
  2efa4e: ab3c         	add	r3, sp, #0xf0
  2efa50: 4618         	mov	r0, r3
  2efa52: f09a f4d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a9a6
  2efa56: e01d         	b	0x2efa94 <AvatarLayer::init()+0x1cbc> @ imm = #0x3a
  2efa58: ab07         	add	r3, sp, #0x1c
  2efa5a: 4618         	mov	r0, r3
  2efa5c: f0c5 f75a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5eb4
  2efa60: e7ff         	b	0x2efa62 <AvatarLayer::init()+0x1c8a> @ imm = #-0x2
  2efa62: ab09         	add	r3, sp, #0x24
  2efa64: 4618         	mov	r0, r3
  2efa66: f09a f4c9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a992
  2efa6a: e013         	b	0x2efa94 <AvatarLayer::init()+0x1cbc> @ imm = #0x26
  2efa6c: ab08         	add	r3, sp, #0x20
  2efa6e: 4618         	mov	r0, r3
  2efa70: f0c5 f750    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5ea0
  2efa74: e7ff         	b	0x2efa76 <AvatarLayer::init()+0x1c9e> @ imm = #-0x2
  2efa76: ab09         	add	r3, sp, #0x24
  2efa78: 4618         	mov	r0, r3
  2efa7a: f09a f4bf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a97e
  2efa7e: e009         	b	0x2efa94 <AvatarLayer::init()+0x1cbc> @ imm = #0x12
  2efa80: ab09         	add	r3, sp, #0x24
  2efa82: 4618         	mov	r0, r3
  2efa84: f0c5 f746    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5e8c
  2efa88: e7ff         	b	0x2efa8a <AvatarLayer::init()+0x1cb2> @ imm = #-0x2
  2efa8a: ab08         	add	r3, sp, #0x20
  2efa8c: 4618         	mov	r0, r3
  2efa8e: f09a f4b5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a96a
  2efa92: e7ff         	b	0x2efa94 <AvatarLayer::init()+0x1cbc> @ imm = #-0x2
  2efa94: ab06         	add	r3, sp, #0x18
  2efa96: 4618         	mov	r0, r3
  2efa98: f0c5 f73c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5e78
  2efa9c: f098 f306    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49860c
  2efaa0: 4618         	mov	r0, r3
  2efaa2: b053         	add	sp, #0x14c
  2efaa4: ecbd 8b02    	vpop	{d8}
  2efaa8: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x2efaa9); words below are literal-pool data ---
  2efaaa: bf00         	nop
  2efaac: 0000         	movs	r0, r0
  2efaae: 4220         	tst	r0, r4
  2efab0: 0230         	lsls	r0, r6, #0x8
  2efab2: 0065         	lsls	r5, r4, #0x1
  2efab4: 3e92         	subs	r6, #0x92
  2efab6: 004d         	lsls	r5, r1, #0x1
  2efab8: 3cde         	subs	r4, #0xde
  2efaba: 004d         	lsls	r5, r1, #0x1
  2efabc: d724         	bvc	0x2efb08 <AvatarLayer::~AvatarLayer()+0x38> @ imm = #0x48
  2efabe: ffff d728    	<unknown>
  2efac2: ffff d744    	<unknown>
  2efac6: ffff d748    	<unknown>
  2efaca: ffff d8b0    	<unknown>
  2eface: ffff b500    	<unknown>

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efad0 (= ELF address; Ghidra 0x2ffad0), 368 bytes, Thumb-2
  2efad0: b500         	push	{lr}
  2efad2: b083         	sub	sp, #0xc
  2efad4: 9001         	str	r0, [sp, #0x4]
  2efad6: 4b58         	ldr	r3, [pc, #0x160]        @ 0x2efc38 <AvatarLayer::~AvatarLayer()+0x168>
  2efad8: 447b         	add	r3, pc
  2efada: 9a01         	ldr	r2, [sp, #0x4]
  2efadc: 4957         	ldr	r1, [pc, #0x15c]        @ 0x2efc3c <AvatarLayer::~AvatarLayer()+0x16c>
  2efade: 5859         	ldr	r1, [r3, r1]
  2efae0: 3108         	adds	r1, #0x8
  2efae2: 6011         	str	r1, [r2]
  2efae4: 9a01         	ldr	r2, [sp, #0x4]
  2efae6: 4955         	ldr	r1, [pc, #0x154]        @ 0x2efc3c <AvatarLayer::~AvatarLayer()+0x16c>
  2efae8: 5859         	ldr	r1, [r3, r1]
  2efaea: f501 7106    	add.w	r1, r1, #0x218
  2efaee: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2efaf2: 9a01         	ldr	r2, [sp, #0x4]
  2efaf4: 4951         	ldr	r1, [pc, #0x144]        @ 0x2efc3c <AvatarLayer::~AvatarLayer()+0x16c>
  2efaf6: 5859         	ldr	r1, [r3, r1]
  2efaf8: f501 7112    	add.w	r1, r1, #0x248
  2efafc: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2efb00: 9a01         	ldr	r2, [sp, #0x4]
  2efb02: 494e         	ldr	r1, [pc, #0x138]        @ 0x2efc3c <AvatarLayer::~AvatarLayer()+0x16c>
  2efb04: 5859         	ldr	r1, [r3, r1]
  2efb06: f501 7115    	add.w	r1, r1, #0x254
  2efb0a: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2efb0e: 9a01         	ldr	r2, [sp, #0x4]
  2efb10: 494a         	ldr	r1, [pc, #0x128]        @ 0x2efc3c <AvatarLayer::~AvatarLayer()+0x16c>
  2efb12: 585b         	ldr	r3, [r3, r1]
  2efb14: f503 7319    	add.w	r3, r3, #0x264
  2efb18: f8c2 3108    	str.w	r3, [r2, #0x108]
  2efb1c: 9b01         	ldr	r3, [sp, #0x4]
  2efb1e: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2efb22: 4618         	mov	r0, r3
  2efb24: f2a8 f9c8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8390
  2efb28: 9b01         	ldr	r3, [sp, #0x4]
  2efb2a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2efb2e: 4618         	mov	r0, r3
  2efb30: f2a8 f9c2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8384
  2efb34: 9b01         	ldr	r3, [sp, #0x4]
  2efb36: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2efb3a: 4618         	mov	r0, r3
  2efb3c: f2a8 f9bc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8378
  2efb40: 9b01         	ldr	r3, [sp, #0x4]
  2efb42: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2efb46: 4618         	mov	r0, r3
  2efb48: f2a8 f9b6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a836c
  2efb4c: 9b01         	ldr	r3, [sp, #0x4]
  2efb4e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2efb52: 4618         	mov	r0, r3
  2efb54: f2a8 f9b0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8360
  2efb58: 9b01         	ldr	r3, [sp, #0x4]
  2efb5a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2efb5e: 4618         	mov	r0, r3
  2efb60: f2a8 f9aa    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8354
  2efb64: 9b01         	ldr	r3, [sp, #0x4]
  2efb66: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2efb6a: 4618         	mov	r0, r3
  2efb6c: f2a8 f9a4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8348
  2efb70: 9b01         	ldr	r3, [sp, #0x4]
  2efb72: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2efb76: 4618         	mov	r0, r3
  2efb78: f2a8 f99e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a833c
  2efb7c: 9b01         	ldr	r3, [sp, #0x4]
  2efb7e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2efb82: 4618         	mov	r0, r3
  2efb84: f2a8 f998    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8330
  2efb88: 9b01         	ldr	r3, [sp, #0x4]
  2efb8a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2efb8e: 4618         	mov	r0, r3
  2efb90: f2a8 f992    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8324
  2efb94: 9b01         	ldr	r3, [sp, #0x4]
  2efb96: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2efb9a: 4618         	mov	r0, r3
  2efb9c: f2a8 f98c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8318
  2efba0: 9b01         	ldr	r3, [sp, #0x4]
  2efba2: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2efba6: 4618         	mov	r0, r3
  2efba8: f2a8 f986    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a830c
  2efbac: 9b01         	ldr	r3, [sp, #0x4]
  2efbae: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  2efbb2: 4618         	mov	r0, r3
  2efbb4: f2a8 f980    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a8300
  2efbb8: 9b01         	ldr	r3, [sp, #0x4]
  2efbba: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  2efbbe: 4618         	mov	r0, r3
  2efbc0: f2a8 f97a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82f4
  2efbc4: 9b01         	ldr	r3, [sp, #0x4]
  2efbc6: f8d3 3164    	ldr.w	r3, [r3, #0x164]
  2efbca: 4618         	mov	r0, r3
  2efbcc: f2a8 f974    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82e8
  2efbd0: 9b01         	ldr	r3, [sp, #0x4]
  2efbd2: f8d3 3168    	ldr.w	r3, [r3, #0x168]
  2efbd6: 4618         	mov	r0, r3
  2efbd8: f2a8 f96e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82dc
  2efbdc: 9b01         	ldr	r3, [sp, #0x4]
  2efbde: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  2efbe2: 4618         	mov	r0, r3
  2efbe4: f2a8 f968    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82d0
  2efbe8: 9b01         	ldr	r3, [sp, #0x4]
  2efbea: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  2efbee: 4618         	mov	r0, r3
  2efbf0: f2a8 f962    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82c4
  2efbf4: 9b01         	ldr	r3, [sp, #0x4]
  2efbf6: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  2efbfa: 4618         	mov	r0, r3
  2efbfc: f2a8 f95c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a82b8
  2efc00: 9b01         	ldr	r3, [sp, #0x4]
  2efc02: f503 73ac    	add.w	r3, r3, #0x158
  2efc06: 4618         	mov	r0, r3
  2efc08: f0c5 f684    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5d08
  2efc0c: 9b01         	ldr	r3, [sp, #0x4]
  2efc0e: f503 7384    	add.w	r3, r3, #0x108
  2efc12: 4618         	mov	r0, r3
  2efc14: f7fd fff6    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0x2014
  2efc18: 9b01         	ldr	r3, [sp, #0x4]
  2efc1a: 4618         	mov	r0, r3
  2efc1c: f2bd fa96    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2bd52c
  2efc20: 2300         	movs	r3, #0x0
  2efc22: 2b00         	cmp	r3, #0x0
  2efc24: d002         	beq	0x2efc2c <AvatarLayer::~AvatarLayer()+0x15c> @ imm = #0x4
  2efc26: 9801         	ldr	r0, [sp, #0x4]
  2efc28: f098 f23c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x498478
  2efc2c: 9b01         	ldr	r3, [sp, #0x4]
  2efc2e: 4618         	mov	r0, r3
  2efc30: b003         	add	sp, #0xc
  2efc32: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2efc35); words below are literal-pool data ---
  2efc36: bf00         	nop
  2efc38: 2f30         	cmp	r7, #0x30
  2efc3a: 0064         	lsls	r4, r4, #0x1
  2efc3c: d8a0         	bhi	0x2efb80 <AvatarLayer::~AvatarLayer()+0xb0> @ imm = #-0xc0
  2efc3e: ffff f1a0    	<unknown>

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efc40 (= ELF address; Ghidra 0x2ffc40), 8 bytes, Thumb-2
  2efc40: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2efc44: f7ff bf44    	b.w	0x2efad0 <AvatarLayer::~AvatarLayer()> @ imm = #-0x178

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efc48 (= ELF address; Ghidra 0x2ffc48), 8 bytes, Thumb-2
  2efc48: f5a0 7084    	sub.w	r0, r0, #0x108
  2efc4c: f7ff bf40    	b.w	0x2efad0 <AvatarLayer::~AvatarLayer()> @ imm = #-0x180

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efc50 (= ELF address; Ghidra 0x2ffc50), 28 bytes, Thumb-2
  2efc50: b500         	push	{lr}
  2efc52: b083         	sub	sp, #0xc
  2efc54: 9001         	str	r0, [sp, #0x4]
  2efc56: 9801         	ldr	r0, [sp, #0x4]
  2efc58: f7ff ff3a    	bl	0x2efad0 <AvatarLayer::~AvatarLayer()> @ imm = #-0x18c
  2efc5c: 9801         	ldr	r0, [sp, #0x4]
  2efc5e: f098 f221    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x498442
  2efc62: 9b01         	ldr	r3, [sp, #0x4]
  2efc64: 4618         	mov	r0, r3
  2efc66: b003         	add	sp, #0xc
  2efc68: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efc6c (= ELF address; Ghidra 0x2ffc6c), 8 bytes, Thumb-2
  2efc6c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2efc70: f7ff bfee    	b.w	0x2efc50 <AvatarLayer::~AvatarLayer()> @ imm = #-0x24

// ==== AvatarLayer::~AvatarLayer
//      file offset 0x2efc74 (= ELF address; Ghidra 0x2ffc74), 8 bytes, Thumb-2
  2efc74: f5a0 7084    	sub.w	r0, r0, #0x108
  2efc78: f7ff bfea    	b.w	0x2efc50 <AvatarLayer::~AvatarLayer()> @ imm = #-0x2c

// ==== AvatarLayer::saveProperties
//      file offset 0x2efc7c (= ELF address; Ghidra 0x2ffc7c), 208 bytes, Thumb-2
  2efc7c: b570         	push	{r4, r5, r6, lr}
  2efc7e: b084         	sub	sp, #0x10
  2efc80: 9001         	str	r0, [sp, #0x4]
  2efc82: 4d2d         	ldr	r5, [pc, #0xb4]         @ 0x2efd38 <AvatarLayer::saveProperties()+0xbc>
  2efc84: 447d         	add	r5, pc
  2efc86: f2f2 fcd1    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f29a2
  2efc8a: 4606         	mov	r6, r0
  2efc8c: 9b01         	ldr	r3, [sp, #0x4]
  2efc8e: f503 73ac    	add.w	r3, r3, #0x158
  2efc92: 4618         	mov	r0, r3
  2efc94: f0c5 f1e2    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c53c4
  2efc98: 4603         	mov	r3, r0
  2efc9a: 2400         	movs	r4, #0x0
  2efc9c: 2b00         	cmp	r3, #0x0
  2efc9e: d008         	beq	0x2efcb2 <AvatarLayer::saveProperties()+0x36> @ imm = #0x10
  2efca0: 9b01         	ldr	r3, [sp, #0x4]
  2efca2: f503 73ac    	add.w	r3, r3, #0x158
  2efca6: aa03         	add	r2, sp, #0xc
  2efca8: 4610         	mov	r0, r2
  2efcaa: 4619         	mov	r1, r3
  2efcac: f0c6 f41c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4c6838
  2efcb0: e00d         	b	0x2efcce <AvatarLayer::saveProperties()+0x52> @ imm = #0x1a
  2efcb2: ab02         	add	r3, sp, #0x8
  2efcb4: 4618         	mov	r0, r3
  2efcb6: f09a f39d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a73a
  2efcba: 2401         	movs	r4, #0x1
  2efcbc: aa03         	add	r2, sp, #0xc
  2efcbe: ab02         	add	r3, sp, #0x8
  2efcc0: 4610         	mov	r0, r2
  2efcc2: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x2efd3c <AvatarLayer::saveProperties()+0xc0>
  2efcc4: 447a         	add	r2, pc
  2efcc6: 4611         	mov	r1, r2
  2efcc8: 461a         	mov	r2, r3
  2efcca: f0c6 f6c9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6d92
  2efcce: ab03         	add	r3, sp, #0xc
  2efcd0: 4630         	mov	r0, r6
  2efcd2: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x2efd40 <AvatarLayer::saveProperties()+0xc4>
  2efcd4: 447a         	add	r2, pc
  2efcd6: 4611         	mov	r1, r2
  2efcd8: 461a         	mov	r2, r3
  2efcda: f2f2 fc93    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x2f2926
  2efcde: ab03         	add	r3, sp, #0xc
  2efce0: 4618         	mov	r0, r3
  2efce2: f0c5 f617    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5c2e
  2efce6: 2c00         	cmp	r4, #0x0
  2efce8: d005         	beq	0x2efcf6 <AvatarLayer::saveProperties()+0x7a> @ imm = #0xa
  2efcea: bf00         	nop
  2efcec: ab02         	add	r3, sp, #0x8
  2efcee: 4618         	mov	r0, r3
  2efcf0: f09a f384    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a708
  2efcf4: e000         	b	0x2efcf8 <AvatarLayer::saveProperties()+0x7c> @ imm = #0x0
  2efcf6: bf00         	nop
  2efcf8: f2f2 fc98    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f2930
  2efcfc: 4602         	mov	r2, r0
  2efcfe: 4b11         	ldr	r3, [pc, #0x44]         @ 0x2efd44 <AvatarLayer::saveProperties()+0xc8>
  2efd00: 58eb         	ldr	r3, [r5, r3]
  2efd02: 681b         	ldr	r3, [r3]
  2efd04: 4610         	mov	r0, r2
  2efd06: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2efd48 <AvatarLayer::saveProperties()+0xcc>
  2efd08: 447a         	add	r2, pc
  2efd0a: 4611         	mov	r1, r2
  2efd0c: 461a         	mov	r2, r3
  2efd0e: f2f2 fc47    	bl	0x5e25a0 <cocos2d::CCUserDefault::setIntegerForKey(char const*, int)> @ imm = #0x2f288e
  2efd12: e00f         	b	0x2efd34 <AvatarLayer::saveProperties()+0xb8> @ imm = #0x1e
  2efd14: ab03         	add	r3, sp, #0xc
  2efd16: 4618         	mov	r0, r3
  2efd18: f0c5 f5fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5bf8
  2efd1c: e7ff         	b	0x2efd1e <AvatarLayer::saveProperties()+0xa2> @ imm = #-0x2
  2efd1e: 2c00         	cmp	r4, #0x0
  2efd20: d005         	beq	0x2efd2e <AvatarLayer::saveProperties()+0xb2> @ imm = #0xa
  2efd22: bf00         	nop
  2efd24: ab02         	add	r3, sp, #0x8
  2efd26: 4618         	mov	r0, r3
  2efd28: f09a f368    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a6d0
  2efd2c: e000         	b	0x2efd30 <AvatarLayer::saveProperties()+0xb4> @ imm = #0x0
  2efd2e: bf00         	nop
  2efd30: f098 f1bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x498378
  2efd34: b004         	add	sp, #0x10
  2efd36: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2efd37); words below are literal-pool data ---
  2efd38: 2d84         	cmp	r5, #0x84
  2efd3a: 0064         	lsls	r4, r4, #0x1
  2efd3c: 3744         	adds	r7, #0x44
  2efd3e: 004d         	lsls	r5, r1, #0x1
  2efd40: 373c         	adds	r7, #0x3c
  2efd42: 004d         	lsls	r5, r1, #0x1
  2efd44: d8b0         	bhi	0x2efca8 <AvatarLayer::saveProperties()+0x2c> @ imm = #-0xa0
  2efd46: ffff 3760    	<unknown>
  2efd4a: 004d         	lsls	r5, r1, #0x1

// ==== AvatarLayer::onDone
//      file offset 0x2efd4c (= ELF address; Ghidra 0x2ffd4c), 104 bytes, Thumb-2
  2efd4c: b530         	push	{r4, r5, lr}
  2efd4e: b083         	sub	sp, #0xc
  2efd50: 9001         	str	r0, [sp, #0x4]
  2efd52: 9100         	str	r1, [sp]
  2efd54: 4c14         	ldr	r4, [pc, #0x50]         @ 0x2efda8 <AvatarLayer::onDone(cocos2d::CCObject*)+0x5c>
  2efd56: 447c         	add	r4, pc
  2efd58: 9b01         	ldr	r3, [sp, #0x4]
  2efd5a: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  2efd5e: 2b00         	cmp	r3, #0x0
  2efd60: d000         	beq	0x2efd64 <AvatarLayer::onDone(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2efd62: e01f         	b	0x2efda4 <AvatarLayer::onDone(cocos2d::CCObject*)+0x58> @ imm = #0x3e
  2efd64: 9b01         	ldr	r3, [sp, #0x4]
  2efd66: 2201         	movs	r2, #0x1
  2efd68: f883 210c    	strb.w	r2, [r3, #0x10c]
  2efd6c: 9801         	ldr	r0, [sp, #0x4]
  2efd6e: f7ff ff85    	bl	0x2efc7c <AvatarLayer::saveProperties()> @ imm = #-0xf6
  2efd72: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2efdac <AvatarLayer::onDone(cocos2d::CCObject*)+0x60>
  2efd74: 58e3         	ldr	r3, [r4, r3]
  2efd76: 681b         	ldr	r3, [r3]
  2efd78: 4618         	mov	r0, r3
  2efd7a: 210d         	movs	r1, #0xd
  2efd7c: f108 f820    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x108040
  2efd80: f2ab fbf8    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2ab7f0
  2efd84: 4604         	mov	r4, r0
  2efd86: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2efdb0 <AvatarLayer::onDone(cocos2d::CCObject*)+0x64>
  2efd88: 447b         	add	r3, pc
  2efd8a: 681d         	ldr	r5, [r3]
  2efd8c: f001 fc96    	bl	0x2f16bc <AvatarMenuLayer::scene()> @ imm = #0x192c
  2efd90: 4603         	mov	r3, r0
  2efd92: 4628         	mov	r0, r5
  2efd94: 4619         	mov	r1, r3
  2efd96: f2c1 fab7    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2c156e
  2efd9a: 4603         	mov	r3, r0
  2efd9c: 4620         	mov	r0, r4
  2efd9e: 4619         	mov	r1, r3
  2efda0: f2ac fadc    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2ac5b8
  2efda4: b003         	add	sp, #0xc
  2efda6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2efda7); words below are literal-pool data ---
  2efda8: 2cb2         	cmp	r4, #0xb2
  2efdaa: 0064         	lsls	r4, r4, #0x1
  2efdac: d730         	bvc	0x2efe10 <AvatarLayer::onCustom(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2efdae: ffff 3490    	vsri.64	d19, d0, #0x1
  2efdb2: 0064         	lsls	r4, r4, #0x1

// ==== AvatarLayer::onCustom
//      file offset 0x2efdb4 (= ELF address; Ghidra 0x2ffdb4), 104 bytes, Thumb-2
  2efdb4: b530         	push	{r4, r5, lr}
  2efdb6: b083         	sub	sp, #0xc
  2efdb8: 9001         	str	r0, [sp, #0x4]
  2efdba: 9100         	str	r1, [sp]
  2efdbc: 4c14         	ldr	r4, [pc, #0x50]         @ 0x2efe10 <AvatarLayer::onCustom(cocos2d::CCObject*)+0x5c>
  2efdbe: 447c         	add	r4, pc
  2efdc0: 9b01         	ldr	r3, [sp, #0x4]
  2efdc2: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  2efdc6: 2b00         	cmp	r3, #0x0
  2efdc8: d000         	beq	0x2efdcc <AvatarLayer::onCustom(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2efdca: e01f         	b	0x2efe0c <AvatarLayer::onCustom(cocos2d::CCObject*)+0x58> @ imm = #0x3e
  2efdcc: 9b01         	ldr	r3, [sp, #0x4]
  2efdce: 2201         	movs	r2, #0x1
  2efdd0: f883 210c    	strb.w	r2, [r3, #0x10c]
  2efdd4: 9801         	ldr	r0, [sp, #0x4]
  2efdd6: f7ff ff51    	bl	0x2efc7c <AvatarLayer::saveProperties()> @ imm = #-0x15e
  2efdda: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2efe14 <AvatarLayer::onCustom(cocos2d::CCObject*)+0x60>
  2efddc: 58e3         	ldr	r3, [r4, r3]
  2efdde: 681b         	ldr	r3, [r3]
  2efde0: 4618         	mov	r0, r3
  2efde2: 210d         	movs	r1, #0xd
  2efde4: f107 ffec    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x107fd8
  2efde8: f2ab fbc4    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2ab788
  2efdec: 4604         	mov	r4, r0
  2efdee: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2efe18 <AvatarLayer::onCustom(cocos2d::CCObject*)+0x64>
  2efdf0: 447b         	add	r3, pc
  2efdf2: 681d         	ldr	r5, [r3]
  2efdf4: f01e fb56    	bl	0x30e4a4 <CustomAvatarLayer::scene()> @ imm = #0x1e6ac
  2efdf8: 4603         	mov	r3, r0
  2efdfa: 4628         	mov	r0, r5
  2efdfc: 4619         	mov	r1, r3
  2efdfe: f2c1 fa83    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2c1506
  2efe02: 4603         	mov	r3, r0
  2efe04: 4620         	mov	r0, r4
  2efe06: 4619         	mov	r1, r3
  2efe08: f2ac faa8    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2ac550
  2efe0c: b003         	add	sp, #0xc
  2efe0e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2efe0f); words below are literal-pool data ---
  2efe10: 2c4a         	cmp	r4, #0x4a
  2efe12: 0064         	lsls	r4, r4, #0x1
  2efe14: d730         	bvc	0x2efe78 <AvatarLayer::onAward(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2efe16: ffff 3428    	<unknown>
  2efe1a: 0064         	lsls	r4, r4, #0x1

// ==== AvatarLayer::onAward
//      file offset 0x2efe1c (= ELF address; Ghidra 0x2ffe1c), 568 bytes, Thumb-2
  2efe1c: b500         	push	{lr}
  2efe1e: b08b         	sub	sp, #0x2c
  2efe20: 9003         	str	r0, [sp, #0xc]
  2efe22: 9102         	str	r1, [sp, #0x8]
  2efe24: 4a83         	ldr	r2, [pc, #0x20c]        @ 0x2f0034 <AvatarLayer::onAward(cocos2d::CCObject*)+0x218>
  2efe26: 447a         	add	r2, pc
  2efe28: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x2f0038 <AvatarLayer::onAward(cocos2d::CCObject*)+0x21c>
  2efe2a: 58d3         	ldr	r3, [r2, r3]
  2efe2c: 681b         	ldr	r3, [r3]
  2efe2e: 4618         	mov	r0, r3
  2efe30: 210d         	movs	r1, #0xd
  2efe32: f107 ffc5    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x107f8a
  2efe36: f087 fe83    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x87d06
  2efe3a: 4603         	mov	r3, r0
  2efe3c: 4618         	mov	r0, r3
  2efe3e: f143 ff37    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x143e6e
  2efe42: 4603         	mov	r3, r0
  2efe44: f083 0301    	eor	r3, r3, #0x1
  2efe48: b2db         	uxtb	r3, r3
  2efe4a: 2b00         	cmp	r3, #0x0
  2efe4c: d052         	beq	0x2efef4 <AvatarLayer::onAward(cocos2d::CCObject*)+0xd8> @ imm = #0xa4
  2efe4e: ab05         	add	r3, sp, #0x14
  2efe50: 4618         	mov	r0, r3
  2efe52: f09a f2cf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a59e
  2efe56: aa08         	add	r2, sp, #0x20
  2efe58: ab05         	add	r3, sp, #0x14
  2efe5a: 4610         	mov	r0, r2
  2efe5c: 4a77         	ldr	r2, [pc, #0x1dc]        @ 0x2f003c <AvatarLayer::onAward(cocos2d::CCObject*)+0x220>
  2efe5e: 447a         	add	r2, pc
  2efe60: 4611         	mov	r1, r2
  2efe62: 461a         	mov	r2, r3
  2efe64: f0c6 f5fc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6bf8
  2efe68: ab06         	add	r3, sp, #0x18
  2efe6a: 4618         	mov	r0, r3
  2efe6c: f09a f2c2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a584
  2efe70: aa09         	add	r2, sp, #0x24
  2efe72: ab06         	add	r3, sp, #0x18
  2efe74: 4610         	mov	r0, r2
  2efe76: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x2f0040 <AvatarLayer::onAward(cocos2d::CCObject*)+0x224>
  2efe78: 447a         	add	r2, pc
  2efe7a: 4611         	mov	r1, r2
  2efe7c: 461a         	mov	r2, r3
  2efe7e: f0c6 f5ef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6bde
  2efe82: ab04         	add	r3, sp, #0x10
  2efe84: 4618         	mov	r0, r3
  2efe86: f09a f2b5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a56a
  2efe8a: aa07         	add	r2, sp, #0x1c
  2efe8c: ab04         	add	r3, sp, #0x10
  2efe8e: 4610         	mov	r0, r2
  2efe90: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x2f0044 <AvatarLayer::onAward(cocos2d::CCObject*)+0x228>
  2efe92: 447a         	add	r2, pc
  2efe94: 4611         	mov	r1, r2
  2efe96: 461a         	mov	r2, r3
  2efe98: f0c6 f5e2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6bc4
  2efe9c: ab07         	add	r3, sp, #0x1c
  2efe9e: 4618         	mov	r0, r3
  2efea0: f2a9 fdcc    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2a9b98
  2efea4: 4603         	mov	r3, r0
  2efea6: 4618         	mov	r0, r3
  2efea8: 2100         	movs	r1, #0x0
  2efeaa: f2a9 ffb1    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2a9f62
  2efeae: 4603         	mov	r3, r0
  2efeb0: a908         	add	r1, sp, #0x20
  2efeb2: aa09         	add	r2, sp, #0x24
  2efeb4: 2000         	movs	r0, #0x0
  2efeb6: 9000         	str	r0, [sp]
  2efeb8: 2000         	movs	r0, #0x0
  2efeba: 9001         	str	r0, [sp, #0x4]
  2efebc: 2000         	movs	r0, #0x0
  2efebe: f7ef fc99    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x106ce
  2efec2: ab07         	add	r3, sp, #0x1c
  2efec4: 4618         	mov	r0, r3
  2efec6: f0c5 f525    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5a4a
  2efeca: ab04         	add	r3, sp, #0x10
  2efecc: 4618         	mov	r0, r3
  2efece: f09a f295    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a52a
  2efed2: ab09         	add	r3, sp, #0x24
  2efed4: 4618         	mov	r0, r3
  2efed6: f0c5 f51d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5a3a
  2efeda: ab06         	add	r3, sp, #0x18
  2efedc: 4618         	mov	r0, r3
  2efede: f09a f28d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a51a
  2efee2: ab08         	add	r3, sp, #0x20
  2efee4: 4618         	mov	r0, r3
  2efee6: f0c5 f515    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5a2a
  2efeea: ab05         	add	r3, sp, #0x14
  2efeec: 4618         	mov	r0, r3
  2efeee: f09a f285    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a50a
  2efef2: e09b         	b	0x2f002c <AvatarLayer::onAward(cocos2d::CCObject*)+0x210> @ imm = #0x136
  2efef4: f042 fd92    	bl	0x332a1c <GPGSStateManager::IsAuthorized()> @ imm = #0x42b24
  2efef8: 4603         	mov	r3, r0
  2efefa: f083 0301    	eor	r3, r3, #0x1
  2efefe: b2db         	uxtb	r3, r3
  2eff00: 2b00         	cmp	r3, #0x0
  2eff02: d052         	beq	0x2effaa <AvatarLayer::onAward(cocos2d::CCObject*)+0x18e> @ imm = #0xa4
  2eff04: ab05         	add	r3, sp, #0x14
  2eff06: 4618         	mov	r0, r3
  2eff08: f09a f274    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a4e8
  2eff0c: aa08         	add	r2, sp, #0x20
  2eff0e: ab05         	add	r3, sp, #0x14
  2eff10: 4610         	mov	r0, r2
  2eff12: 4a4d         	ldr	r2, [pc, #0x134]        @ 0x2f0048 <AvatarLayer::onAward(cocos2d::CCObject*)+0x22c>
  2eff14: 447a         	add	r2, pc
  2eff16: 4611         	mov	r1, r2
  2eff18: 461a         	mov	r2, r3
  2eff1a: f0c6 f5a1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6b42
  2eff1e: ab06         	add	r3, sp, #0x18
  2eff20: 4618         	mov	r0, r3
  2eff22: f09a f267    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a4ce
  2eff26: aa09         	add	r2, sp, #0x24
  2eff28: ab06         	add	r3, sp, #0x18
  2eff2a: 4610         	mov	r0, r2
  2eff2c: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x2f004c <AvatarLayer::onAward(cocos2d::CCObject*)+0x230>
  2eff2e: 447a         	add	r2, pc
  2eff30: 4611         	mov	r1, r2
  2eff32: 461a         	mov	r2, r3
  2eff34: f0c6 f594    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6b28
  2eff38: ab04         	add	r3, sp, #0x10
  2eff3a: 4618         	mov	r0, r3
  2eff3c: f09a f25a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a4b4
  2eff40: aa07         	add	r2, sp, #0x1c
  2eff42: ab04         	add	r3, sp, #0x10
  2eff44: 4610         	mov	r0, r2
  2eff46: 4a42         	ldr	r2, [pc, #0x108]        @ 0x2f0050 <AvatarLayer::onAward(cocos2d::CCObject*)+0x234>
  2eff48: 447a         	add	r2, pc
  2eff4a: 4611         	mov	r1, r2
  2eff4c: 461a         	mov	r2, r3
  2eff4e: f0c6 f587    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6b0e
  2eff52: ab07         	add	r3, sp, #0x1c
  2eff54: 4618         	mov	r0, r3
  2eff56: f2a9 fd71    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2a9ae2
  2eff5a: 4603         	mov	r3, r0
  2eff5c: 4618         	mov	r0, r3
  2eff5e: 2100         	movs	r1, #0x0
  2eff60: f2a9 ff56    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2a9eac
  2eff64: 4603         	mov	r3, r0
  2eff66: a908         	add	r1, sp, #0x20
  2eff68: aa09         	add	r2, sp, #0x24
  2eff6a: 2000         	movs	r0, #0x0
  2eff6c: 9000         	str	r0, [sp]
  2eff6e: 2000         	movs	r0, #0x0
  2eff70: 9001         	str	r0, [sp, #0x4]
  2eff72: 2000         	movs	r0, #0x0
  2eff74: f7ef fc3e    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x10784
  2eff78: ab07         	add	r3, sp, #0x1c
  2eff7a: 4618         	mov	r0, r3
  2eff7c: f0c5 f4ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5994
  2eff80: ab04         	add	r3, sp, #0x10
  2eff82: 4618         	mov	r0, r3
  2eff84: f09a f23a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a474
  2eff88: ab09         	add	r3, sp, #0x24
  2eff8a: 4618         	mov	r0, r3
  2eff8c: f0c5 f4c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5984
  2eff90: ab06         	add	r3, sp, #0x18
  2eff92: 4618         	mov	r0, r3
  2eff94: f09a f232    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a464
  2eff98: ab08         	add	r3, sp, #0x20
  2eff9a: 4618         	mov	r0, r3
  2eff9c: f0c5 f4ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5974
  2effa0: ab05         	add	r3, sp, #0x14
  2effa2: 4618         	mov	r0, r3
  2effa4: f09a f22a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a454
  2effa8: e040         	b	0x2f002c <AvatarLayer::onAward(cocos2d::CCObject*)+0x210> @ imm = #0x80
  2effaa: f130 fd21    	bl	0x4209f0 <AchievementBridge::sharedAchievementBridge()> @ imm = #0x130a42
  2effae: 4603         	mov	r3, r0
  2effb0: 4618         	mov	r0, r3
  2effb2: f139 fe83    	bl	0x429cbc <AchievementBridge::showAchievements()> @ imm = #0x139d06
  2effb6: e039         	b	0x2f002c <AvatarLayer::onAward(cocos2d::CCObject*)+0x210> @ imm = #0x72
  2effb8: ab07         	add	r3, sp, #0x1c
  2effba: 4618         	mov	r0, r3
  2effbc: f0c5 f4aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5954
  2effc0: e7ff         	b	0x2effc2 <AvatarLayer::onAward(cocos2d::CCObject*)+0x1a6> @ imm = #-0x2
  2effc2: ab04         	add	r3, sp, #0x10
  2effc4: 4618         	mov	r0, r3
  2effc6: f09a f219    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a432
  2effca: ab09         	add	r3, sp, #0x24
  2effcc: 4618         	mov	r0, r3
  2effce: f0c5 f4a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5942
  2effd2: e7ff         	b	0x2effd4 <AvatarLayer::onAward(cocos2d::CCObject*)+0x1b8> @ imm = #-0x2
  2effd4: ab06         	add	r3, sp, #0x18
  2effd6: 4618         	mov	r0, r3
  2effd8: f09a f210    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a420
  2effdc: ab08         	add	r3, sp, #0x20
  2effde: 4618         	mov	r0, r3
  2effe0: f0c5 f498    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5930
  2effe4: e7ff         	b	0x2effe6 <AvatarLayer::onAward(cocos2d::CCObject*)+0x1ca> @ imm = #-0x2
  2effe6: ab05         	add	r3, sp, #0x14
  2effe8: 4618         	mov	r0, r3
  2effea: f09a f207    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a40e
  2effee: f098 f05d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4980ba
  2efff2: ab07         	add	r3, sp, #0x1c
  2efff4: 4618         	mov	r0, r3
  2efff6: f0c5 f48d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c591a
  2efffa: e7ff         	b	0x2efffc <AvatarLayer::onAward(cocos2d::CCObject*)+0x1e0> @ imm = #-0x2
  2efffc: ab04         	add	r3, sp, #0x10
  2efffe: 4618         	mov	r0, r3
  2f0000: f09a f1fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a3f8
  2f0004: ab09         	add	r3, sp, #0x24
  2f0006: 4618         	mov	r0, r3
  2f0008: f0c5 f484    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5908
  2f000c: e7ff         	b	0x2f000e <AvatarLayer::onAward(cocos2d::CCObject*)+0x1f2> @ imm = #-0x2
  2f000e: ab06         	add	r3, sp, #0x18
  2f0010: 4618         	mov	r0, r3
  2f0012: f09a f1f3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a3e6
  2f0016: ab08         	add	r3, sp, #0x20
  2f0018: 4618         	mov	r0, r3
  2f001a: f0c5 f47b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c58f6
  2f001e: e7ff         	b	0x2f0020 <AvatarLayer::onAward(cocos2d::CCObject*)+0x204> @ imm = #-0x2
  2f0020: ab05         	add	r3, sp, #0x14
  2f0022: 4618         	mov	r0, r3
  2f0024: f09a f1ea    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a3d4
  2f0028: f098 f040    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x498080
  2f002c: b00b         	add	sp, #0x2c
  2f002e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f0031); words below are literal-pool data ---
  2f0032: bf00         	nop
  2f0034: 2be2         	cmp	r3, #0xe2
  2f0036: 0064         	lsls	r4, r4, #0x1
  2f0038: d730         	bvc	0x2f009c <AvatarLayer::onControls(cocos2d::CCObject*)+0x48> @ imm = #0x60
  2f003a: ffff 3616    	vqshlu.s32	d19, d6, #0x1f
  2f003e: 004d         	lsls	r5, r1, #0x1
  2f0040: 3614         	adds	r6, #0x14
  2f0042: 004d         	lsls	r5, r1, #0x1
  2f0044: 3632         	adds	r6, #0x32
  2f0046: 004d         	lsls	r5, r1, #0x1
  2f0048: 35b4         	adds	r5, #0xb4
  2f004a: 004d         	lsls	r5, r1, #0x1
  2f004c: 35aa         	adds	r5, #0xaa
  2f004e: 004d         	lsls	r5, r1, #0x1
  2f0050: 357c         	adds	r5, #0x7c
  2f0052: 004d         	lsls	r5, r1, #0x1

// ==== AvatarLayer::onControls
//      file offset 0x2f0054 (= ELF address; Ghidra 0x300054), 104 bytes, Thumb-2
  2f0054: b530         	push	{r4, r5, lr}
  2f0056: b083         	sub	sp, #0xc
  2f0058: 9001         	str	r0, [sp, #0x4]
  2f005a: 9100         	str	r1, [sp]
  2f005c: 4c14         	ldr	r4, [pc, #0x50]         @ 0x2f00b0 <AvatarLayer::onControls(cocos2d::CCObject*)+0x5c>
  2f005e: 447c         	add	r4, pc
  2f0060: 9b01         	ldr	r3, [sp, #0x4]
  2f0062: f893 310c    	ldrb.w	r3, [r3, #0x10c]
  2f0066: 2b00         	cmp	r3, #0x0
  2f0068: d000         	beq	0x2f006c <AvatarLayer::onControls(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f006a: e01f         	b	0x2f00ac <AvatarLayer::onControls(cocos2d::CCObject*)+0x58> @ imm = #0x3e
  2f006c: 9b01         	ldr	r3, [sp, #0x4]
  2f006e: 2201         	movs	r2, #0x1
  2f0070: f883 210c    	strb.w	r2, [r3, #0x10c]
  2f0074: 9801         	ldr	r0, [sp, #0x4]
  2f0076: f7ff fe01    	bl	0x2efc7c <AvatarLayer::saveProperties()> @ imm = #-0x3fe
  2f007a: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f00b4 <AvatarLayer::onControls(cocos2d::CCObject*)+0x60>
  2f007c: 58e3         	ldr	r3, [r4, r3]
  2f007e: 681b         	ldr	r3, [r3]
  2f0080: 4618         	mov	r0, r3
  2f0082: 210d         	movs	r1, #0xd
  2f0084: f107 fe9c    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x107d38
  2f0088: f2ab fa74    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2ab4e8
  2f008c: 4604         	mov	r4, r0
  2f008e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f00b8 <AvatarLayer::onControls(cocos2d::CCObject*)+0x64>
  2f0090: 447b         	add	r3, pc
  2f0092: 681d         	ldr	r5, [r3]
  2f0094: f016 f9ce    	bl	0x306434 <ControlsLayer::scene()> @ imm = #0x1639c
  2f0098: 4603         	mov	r3, r0
  2f009a: 4628         	mov	r0, r5
  2f009c: 4619         	mov	r1, r3
  2f009e: f2c1 f9c3    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2c1386
  2f00a2: 4603         	mov	r3, r0
  2f00a4: 4620         	mov	r0, r4
  2f00a6: 4619         	mov	r1, r3
  2f00a8: f2ac f958    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2ac2b0
  2f00ac: b003         	add	sp, #0xc
  2f00ae: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f00af); words below are literal-pool data ---
  2f00b0: 29aa         	cmp	r1, #0xaa
  2f00b2: 0064         	lsls	r4, r4, #0x1
  2f00b4: d730         	bvc	0x2f0118 <AvatarLayer::updatePlayerNameLabel()+0x24> @ imm = #0x60
  2f00b6: ffff 3188    	<unknown>
  2f00ba: 0064         	lsls	r4, r4, #0x1

// ==== AvatarLayer::onPlayerName
//      file offset 0x2f00bc (= ELF address; Ghidra 0x3000bc), 56 bytes, Thumb-2
  2f00bc: b500         	push	{lr}
  2f00be: b083         	sub	sp, #0xc
  2f00c0: 9001         	str	r0, [sp, #0x4]
  2f00c2: 9100         	str	r1, [sp]
  2f00c4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2f00ec <AvatarLayer::onPlayerName(cocos2d::CCObject*)+0x30>
  2f00c6: 447a         	add	r2, pc
  2f00c8: 4b09         	ldr	r3, [pc, #0x24]         @ 0x2f00f0 <AvatarLayer::onPlayerName(cocos2d::CCObject*)+0x34>
  2f00ca: 58d3         	ldr	r3, [r2, r3]
  2f00cc: 681b         	ldr	r3, [r3]
  2f00ce: 4618         	mov	r0, r3
  2f00d0: 210d         	movs	r1, #0xd
  2f00d2: f107 fe75    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x107cea
  2f00d6: 9b01         	ldr	r3, [sp, #0x4]
  2f00d8: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f00dc: 4618         	mov	r0, r3
  2f00de: 2100         	movs	r1, #0x0
  2f00e0: 2201         	movs	r2, #0x1
  2f00e2: f166 fc21    	bl	0x456928 <cocos2d::extension::CCEditBox::touchDownAction(cocos2d::CCObject*, unsigned int)> @ imm = #0x166842
  2f00e6: b003         	add	sp, #0xc
  2f00e8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f00eb); words below are literal-pool data ---
  2f00ec: 2942         	cmp	r1, #0x42
  2f00ee: 0064         	lsls	r4, r4, #0x1
  2f00f0: d730         	bvc	0x2f0154 <AvatarLayer::presentProPackAlert()+0x2c> @ imm = #0x60
  2f00f2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== AvatarLayer::updatePlayerNameLabel
//      file offset 0x2f00f4 (= ELF address; Ghidra 0x3000f4), 50 bytes, Thumb-2
  2f00f4: b530         	push	{r4, r5, lr}
  2f00f6: b083         	sub	sp, #0xc
  2f00f8: 9001         	str	r0, [sp, #0x4]
  2f00fa: 9b01         	ldr	r3, [sp, #0x4]
  2f00fc: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f0100: 681b         	ldr	r3, [r3]
  2f0102: f503 730f    	add.w	r3, r3, #0x23c
  2f0106: 681c         	ldr	r4, [r3]
  2f0108: 9b01         	ldr	r3, [sp, #0x4]
  2f010a: f8d3 5130    	ldr.w	r5, [r3, #0x130]
  2f010e: 9b01         	ldr	r3, [sp, #0x4]
  2f0110: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f0114: 4618         	mov	r0, r3
  2f0116: f166 fd19    	bl	0x456b4c <cocos2d::extension::CCEditBox::getText()> @ imm = #0x166a32
  2f011a: 4603         	mov	r3, r0
  2f011c: 4628         	mov	r0, r5
  2f011e: 4619         	mov	r1, r3
  2f0120: 47a0         	blx	r4
  2f0122: b003         	add	sp, #0xc
  2f0124: bd30         	pop	{r4, r5, pc}

// ==== AvatarLayer::presentProPackAlert
//      file offset 0x2f0128 (= ELF address; Ghidra 0x300128), 340 bytes, Thumb-2
  2f0128: b530         	push	{r4, r5, lr}
  2f012a: b08d         	sub	sp, #0x34
  2f012c: 9003         	str	r0, [sp, #0xc]
  2f012e: 4c4d         	ldr	r4, [pc, #0x134]        @ 0x2f0264 <AvatarLayer::presentProPackAlert()+0x13c>
  2f0130: 447c         	add	r4, pc
  2f0132: ab06         	add	r3, sp, #0x18
  2f0134: 4618         	mov	r0, r3
  2f0136: f09a f15d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a2ba
  2f013a: aa0a         	add	r2, sp, #0x28
  2f013c: ab06         	add	r3, sp, #0x18
  2f013e: 4610         	mov	r0, r2
  2f0140: 4a49         	ldr	r2, [pc, #0x124]        @ 0x2f0268 <AvatarLayer::presentProPackAlert()+0x140>
  2f0142: 447a         	add	r2, pc
  2f0144: 4611         	mov	r1, r2
  2f0146: 461a         	mov	r2, r3
  2f0148: f0c6 f48a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c6914
  2f014c: ab07         	add	r3, sp, #0x1c
  2f014e: 4618         	mov	r0, r3
  2f0150: f09a f150    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a2a0
  2f0154: aa0b         	add	r2, sp, #0x2c
  2f0156: ab07         	add	r3, sp, #0x1c
  2f0158: 4610         	mov	r0, r2
  2f015a: 4a44         	ldr	r2, [pc, #0x110]        @ 0x2f026c <AvatarLayer::presentProPackAlert()+0x144>
  2f015c: 447a         	add	r2, pc
  2f015e: 4611         	mov	r1, r2
  2f0160: 461a         	mov	r2, r3
  2f0162: f0c6 f47d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c68fa
  2f0166: ab04         	add	r3, sp, #0x10
  2f0168: 4618         	mov	r0, r3
  2f016a: f09a f143    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a286
  2f016e: aa08         	add	r2, sp, #0x20
  2f0170: ab04         	add	r3, sp, #0x10
  2f0172: 4610         	mov	r0, r2
  2f0174: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x2f0270 <AvatarLayer::presentProPackAlert()+0x148>
  2f0176: 447a         	add	r2, pc
  2f0178: 4611         	mov	r1, r2
  2f017a: 461a         	mov	r2, r3
  2f017c: f0c6 f470    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c68e0
  2f0180: ab08         	add	r3, sp, #0x20
  2f0182: 4618         	mov	r0, r3
  2f0184: f2a9 fc5a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2a98b4
  2f0188: 4605         	mov	r5, r0
  2f018a: ab05         	add	r3, sp, #0x14
  2f018c: 4618         	mov	r0, r3
  2f018e: f09a f131    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a262
  2f0192: aa09         	add	r2, sp, #0x24
  2f0194: ab05         	add	r3, sp, #0x14
  2f0196: 4610         	mov	r0, r2
  2f0198: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x2f0274 <AvatarLayer::presentProPackAlert()+0x14c>
  2f019a: 447a         	add	r2, pc
  2f019c: 4611         	mov	r1, r2
  2f019e: 461a         	mov	r2, r3
  2f01a0: f0c6 f45e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c68bc
  2f01a4: ab09         	add	r3, sp, #0x24
  2f01a6: 4618         	mov	r0, r3
  2f01a8: f2a9 fc48    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2a9890
  2f01ac: 4603         	mov	r3, r0
  2f01ae: 4628         	mov	r0, r5
  2f01b0: 4619         	mov	r1, r3
  2f01b2: 2200         	movs	r2, #0x0
  2f01b4: f2a9 fe2c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2a9c58
  2f01b8: 4603         	mov	r3, r0
  2f01ba: a90a         	add	r1, sp, #0x28
  2f01bc: aa0b         	add	r2, sp, #0x2c
  2f01be: 2000         	movs	r0, #0x0
  2f01c0: 9000         	str	r0, [sp]
  2f01c2: 2000         	movs	r0, #0x0
  2f01c4: 9001         	str	r0, [sp, #0x4]
  2f01c6: 482c         	ldr	r0, [pc, #0xb0]         @ 0x2f0278 <AvatarLayer::presentProPackAlert()+0x150>
  2f01c8: 5820         	ldr	r0, [r4, r0]
  2f01ca: f7ef fb13    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x109da
  2f01ce: ab09         	add	r3, sp, #0x24
  2f01d0: 4618         	mov	r0, r3
  2f01d2: f0c5 f39f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c573e
  2f01d6: ab05         	add	r3, sp, #0x14
  2f01d8: 4618         	mov	r0, r3
  2f01da: f09a f10f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a21e
  2f01de: ab08         	add	r3, sp, #0x20
  2f01e0: 4618         	mov	r0, r3
  2f01e2: f0c5 f397    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c572e
  2f01e6: ab04         	add	r3, sp, #0x10
  2f01e8: 4618         	mov	r0, r3
  2f01ea: f09a f107    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a20e
  2f01ee: ab0b         	add	r3, sp, #0x2c
  2f01f0: 4618         	mov	r0, r3
  2f01f2: f0c5 f38f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c571e
  2f01f6: ab07         	add	r3, sp, #0x1c
  2f01f8: 4618         	mov	r0, r3
  2f01fa: f09a f0ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1fe
  2f01fe: ab0a         	add	r3, sp, #0x28
  2f0200: 4618         	mov	r0, r3
  2f0202: f0c5 f387    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c570e
  2f0206: ab06         	add	r3, sp, #0x18
  2f0208: 4618         	mov	r0, r3
  2f020a: f09a f0f7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1ee
  2f020e: e026         	b	0x2f025e <AvatarLayer::presentProPackAlert()+0x136> @ imm = #0x4c
  2f0210: ab09         	add	r3, sp, #0x24
  2f0212: 4618         	mov	r0, r3
  2f0214: f0c5 f37e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c56fc
  2f0218: e7ff         	b	0x2f021a <AvatarLayer::presentProPackAlert()+0xf2> @ imm = #-0x2
  2f021a: ab05         	add	r3, sp, #0x14
  2f021c: 4618         	mov	r0, r3
  2f021e: f09a f0ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1da
  2f0222: e7ff         	b	0x2f0224 <AvatarLayer::presentProPackAlert()+0xfc> @ imm = #-0x2
  2f0224: ab08         	add	r3, sp, #0x20
  2f0226: 4618         	mov	r0, r3
  2f0228: f0c5 f374    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c56e8
  2f022c: e7ff         	b	0x2f022e <AvatarLayer::presentProPackAlert()+0x106> @ imm = #-0x2
  2f022e: ab04         	add	r3, sp, #0x10
  2f0230: 4618         	mov	r0, r3
  2f0232: f09a f0e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1c6
  2f0236: ab0b         	add	r3, sp, #0x2c
  2f0238: 4618         	mov	r0, r3
  2f023a: f0c5 f36b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c56d6
  2f023e: e7ff         	b	0x2f0240 <AvatarLayer::presentProPackAlert()+0x118> @ imm = #-0x2
  2f0240: ab07         	add	r3, sp, #0x1c
  2f0242: 4618         	mov	r0, r3
  2f0244: f09a f0da    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1b4
  2f0248: ab0a         	add	r3, sp, #0x28
  2f024a: 4618         	mov	r0, r3
  2f024c: f0c5 f362    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c56c4
  2f0250: e7ff         	b	0x2f0252 <AvatarLayer::presentProPackAlert()+0x12a> @ imm = #-0x2
  2f0252: ab06         	add	r3, sp, #0x18
  2f0254: 4618         	mov	r0, r3
  2f0256: f09a f0d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a1a2
  2f025a: f097 f727    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x497e4e
  2f025e: b00d         	add	sp, #0x34
  2f0260: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f0261); words below are literal-pool data ---
  2f0262: bf00         	nop
  2f0264: 28d8         	cmp	r0, #0xd8
  2f0266: 0064         	lsls	r4, r4, #0x1
  2f0268: 33ca         	adds	r3, #0xca
  2f026a: 004d         	lsls	r5, r1, #0x1
  2f026c: 33c4         	adds	r3, #0xc4
  2f026e: 004d         	lsls	r5, r1, #0x1
  2f0270: 33ca         	adds	r3, #0xca
  2f0272: 004d         	lsls	r5, r1, #0x1
  2f0274: 33ae         	adds	r3, #0xae
  2f0276: 004d         	lsls	r5, r1, #0x1
  2f0278: d8cc         	bhi	0x2f0214 <AvatarLayer::presentProPackAlert()+0xec> @ imm = #-0x68
  2f027a: ffff b5f0    	<unknown>

// ==== AvatarLayer::onNextVisual
//      file offset 0x2f027c (= ELF address; Ghidra 0x30027c), 464 bytes, Thumb-2
  2f027c: b5f0         	push	{r4, r5, r6, r7, lr}
  2f027e: b08d         	sub	sp, #0x34
  2f0280: 9003         	str	r0, [sp, #0xc]
  2f0282: 9102         	str	r1, [sp, #0x8]
  2f0284: 4c6d         	ldr	r4, [pc, #0x1b4]        @ 0x2f043c <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c0>
  2f0286: 447c         	add	r4, pc
  2f0288: 2500         	movs	r5, #0x0
  2f028a: ab04         	add	r3, sp, #0x10
  2f028c: 4618         	mov	r0, r3
  2f028e: f09a f0b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49a162
  2f0292: 2601         	movs	r6, #0x1
  2f0294: aa05         	add	r2, sp, #0x14
  2f0296: ab04         	add	r3, sp, #0x10
  2f0298: 4610         	mov	r0, r2
  2f029a: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x2f0440 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c4>
  2f029c: 447a         	add	r2, pc
  2f029e: 4611         	mov	r1, r2
  2f02a0: 461a         	mov	r2, r3
  2f02a2: f0c6 f3dd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c67ba
  2f02a6: 2501         	movs	r5, #0x1
  2f02a8: ab05         	add	r3, sp, #0x14
  2f02aa: 4618         	mov	r0, r3
  2f02ac: f141 fa58    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x1414b0
  2f02b0: 4603         	mov	r3, r0
  2f02b2: 2b00         	cmp	r3, #0x0
  2f02b4: d108         	bne	0x2f02c8 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x4c> @ imm = #0x10
  2f02b6: 9b03         	ldr	r3, [sp, #0xc]
  2f02b8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f02bc: 4618         	mov	r0, r3
  2f02be: f2a9 ff0f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a9e1e
  2f02c2: 4603         	mov	r3, r0
  2f02c4: 2b01         	cmp	r3, #0x1
  2f02c6: d901         	bls	0x2f02cc <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x50> @ imm = #0x2
  2f02c8: 2301         	movs	r3, #0x1
  2f02ca: e000         	b	0x2f02ce <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x52> @ imm = #0x0
  2f02cc: 2300         	movs	r3, #0x0
  2f02ce: 461f         	mov	r7, r3
  2f02d0: 2d00         	cmp	r5, #0x0
  2f02d2: d003         	beq	0x2f02dc <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x60> @ imm = #0x6
  2f02d4: ab05         	add	r3, sp, #0x14
  2f02d6: 4618         	mov	r0, r3
  2f02d8: f0c5 f31c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5638
  2f02dc: 2e00         	cmp	r6, #0x0
  2f02de: d004         	beq	0x2f02ea <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x6e> @ imm = #0x8
  2f02e0: bf00         	nop
  2f02e2: ab04         	add	r3, sp, #0x10
  2f02e4: 4618         	mov	r0, r3
  2f02e6: f09a f089    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49a112
  2f02ea: 2f00         	cmp	r7, #0x0
  2f02ec: f000 8087    	beq.w	0x2f03fe <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x182> @ imm = #0x10e
  2f02f0: 9b03         	ldr	r3, [sp, #0xc]
  2f02f2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f02f6: 1c5a         	adds	r2, r3, #0x1
  2f02f8: 9b03         	ldr	r3, [sp, #0xc]
  2f02fa: f8c3 2110    	str.w	r2, [r3, #0x110]
  2f02fe: 9b03         	ldr	r3, [sp, #0xc]
  2f0300: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f0304: 461d         	mov	r5, r3
  2f0306: 9b03         	ldr	r3, [sp, #0xc]
  2f0308: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f030c: 4618         	mov	r0, r3
  2f030e: f2a9 fee7    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a9dce
  2f0312: 4603         	mov	r3, r0
  2f0314: 429d         	cmp	r5, r3
  2f0316: bf34         	ite	lo
  2f0318: 2300         	movlo	r3, #0x0
  2f031a: 2301         	movhs	r3, #0x1
  2f031c: b2db         	uxtb	r3, r3
  2f031e: 2b00         	cmp	r3, #0x0
  2f0320: d003         	beq	0x2f032a <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0xae> @ imm = #0x6
  2f0322: 9b03         	ldr	r3, [sp, #0xc]
  2f0324: 2200         	movs	r2, #0x0
  2f0326: f8c3 2110    	str.w	r2, [r3, #0x110]
  2f032a: 9b03         	ldr	r3, [sp, #0xc]
  2f032c: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  2f0330: 9b03         	ldr	r3, [sp, #0xc]
  2f0332: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f0336: 4610         	mov	r0, r2
  2f0338: 4619         	mov	r1, r3
  2f033a: f2a9 fef1    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a9de2
  2f033e: 4603         	mov	r3, r0
  2f0340: 4618         	mov	r0, r3
  2f0342: f7fc fd87    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x34f2
  2f0346: 4603         	mov	r3, r0
  2f0348: 461a         	mov	r2, r3
  2f034a: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f034c: 58e3         	ldr	r3, [r4, r3]
  2f034e: 601a         	str	r2, [r3]
  2f0350: f003 fbb2    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3764
  2f0354: 4603         	mov	r3, r0
  2f0356: 4618         	mov	r0, r3
  2f0358: f007 fffa    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #0x7ff4
  2f035c: 4603         	mov	r3, r0
  2f035e: 9306         	str	r3, [sp, #0x18]
  2f0360: f003 fbaa    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3754
  2f0364: 4602         	mov	r2, r0
  2f0366: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f0368: 58e3         	ldr	r3, [r4, r3]
  2f036a: 681b         	ldr	r3, [r3]
  2f036c: 4610         	mov	r0, r2
  2f036e: 9906         	ldr	r1, [sp, #0x18]
  2f0370: 461a         	mov	r2, r3
  2f0372: f006 fe7d    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #0x6cfa
  2f0376: 4603         	mov	r3, r0
  2f0378: 9307         	str	r3, [sp, #0x1c]
  2f037a: f003 fb9d    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x373a
  2f037e: 4602         	mov	r2, r0
  2f0380: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f0382: 58e3         	ldr	r3, [r4, r3]
  2f0384: 681b         	ldr	r3, [r3]
  2f0386: 4610         	mov	r0, r2
  2f0388: 9906         	ldr	r1, [sp, #0x18]
  2f038a: 461a         	mov	r2, r3
  2f038c: f007 fd7a    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #0x7af4
  2f0390: 4603         	mov	r3, r0
  2f0392: 9308         	str	r3, [sp, #0x20]
  2f0394: f003 fb90    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3720
  2f0398: 4602         	mov	r2, r0
  2f039a: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f039c: 58e3         	ldr	r3, [r4, r3]
  2f039e: 681b         	ldr	r3, [r3]
  2f03a0: 4610         	mov	r0, r2
  2f03a2: 9906         	ldr	r1, [sp, #0x18]
  2f03a4: 461a         	mov	r2, r3
  2f03a6: f007 fe0b    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #0x7c16
  2f03aa: 4603         	mov	r3, r0
  2f03ac: 9309         	str	r3, [sp, #0x24]
  2f03ae: f003 fb83    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3706
  2f03b2: 4602         	mov	r2, r0
  2f03b4: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f03b6: 58e3         	ldr	r3, [r4, r3]
  2f03b8: 681b         	ldr	r3, [r3]
  2f03ba: 4610         	mov	r0, r2
  2f03bc: 9906         	ldr	r1, [sp, #0x18]
  2f03be: 461a         	mov	r2, r3
  2f03c0: f007 fe9c    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #0x7d38
  2f03c4: 4603         	mov	r3, r0
  2f03c6: 930a         	str	r3, [sp, #0x28]
  2f03c8: f003 fb76    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x36ec
  2f03cc: 4602         	mov	r2, r0
  2f03ce: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x2f0444 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1c8>
  2f03d0: 58e3         	ldr	r3, [r4, r3]
  2f03d2: 681b         	ldr	r3, [r3]
  2f03d4: 4610         	mov	r0, r2
  2f03d6: 9906         	ldr	r1, [sp, #0x18]
  2f03d8: 461a         	mov	r2, r3
  2f03da: f007 ff2d    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #0x7e5a
  2f03de: 4603         	mov	r3, r0
  2f03e0: 930b         	str	r3, [sp, #0x2c]
  2f03e2: 9b03         	ldr	r3, [sp, #0xc]
  2f03e4: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2f03e8: 9a09         	ldr	r2, [sp, #0x24]
  2f03ea: 9200         	str	r2, [sp]
  2f03ec: 9a0a         	ldr	r2, [sp, #0x28]
  2f03ee: 9201         	str	r2, [sp, #0x4]
  2f03f0: 4618         	mov	r0, r3
  2f03f2: 990b         	ldr	r1, [sp, #0x2c]
  2f03f4: 9a07         	ldr	r2, [sp, #0x1c]
  2f03f6: 9b08         	ldr	r3, [sp, #0x20]
  2f03f8: f103 fe44    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x103c88
  2f03fc: e002         	b	0x2f0404 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x188> @ imm = #0x4
  2f03fe: 9803         	ldr	r0, [sp, #0xc]
  2f0400: f7ff fe92    	bl	0x2f0128 <AvatarLayer::presentProPackAlert()> @ imm = #-0x2dc
  2f0404: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2f0448 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1cc>
  2f0406: 58e3         	ldr	r3, [r4, r3]
  2f0408: 681b         	ldr	r3, [r3]
  2f040a: 4618         	mov	r0, r3
  2f040c: 210e         	movs	r1, #0xe
  2f040e: f107 fcd7    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1079ae
  2f0412: e010         	b	0x2f0436 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1ba> @ imm = #0x20
  2f0414: 2d00         	cmp	r5, #0x0
  2f0416: d003         	beq	0x2f0420 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1a4> @ imm = #0x6
  2f0418: ab05         	add	r3, sp, #0x14
  2f041a: 4618         	mov	r0, r3
  2f041c: f0c5 f27a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c54f4
  2f0420: 2e00         	cmp	r6, #0x0
  2f0422: d005         	beq	0x2f0430 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1b4> @ imm = #0xa
  2f0424: bf00         	nop
  2f0426: ab04         	add	r3, sp, #0x10
  2f0428: 4618         	mov	r0, r3
  2f042a: f099 f7e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x499fce
  2f042e: e000         	b	0x2f0432 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x1b6> @ imm = #0x0
  2f0430: bf00         	nop
  2f0432: f097 f63b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x497c76
  2f0436: b00d         	add	sp, #0x34
  2f0438: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x2f0439); words below are literal-pool data ---
  2f043a: bf00         	nop
  2f043c: 2782         	movs	r7, #0x82
  2f043e: 0064         	lsls	r4, r4, #0x1
  2f0440: 309c         	adds	r0, #0x9c
  2f0442: 004d         	lsls	r5, r1, #0x1
  2f0444: d8b0         	bhi	0x2f03a8 <AvatarLayer::onNextVisual(cocos2d::CCObject*)+0x12c> @ imm = #-0xa0
  2f0446: ffff d730    	vqshl.u32	d29, d16, #0x1f
  2f044a: ffff b5f0    	<unknown>

// ==== AvatarLayer::onPrevVisual
//      file offset 0x2f044c (= ELF address; Ghidra 0x30044c), 452 bytes, Thumb-2
  2f044c: b5f0         	push	{r4, r5, r6, r7, lr}
  2f044e: b08d         	sub	sp, #0x34
  2f0450: 9003         	str	r0, [sp, #0xc]
  2f0452: 9102         	str	r1, [sp, #0x8]
  2f0454: 4c6a         	ldr	r4, [pc, #0x1a8]        @ 0x2f0600 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1b4>
  2f0456: 447c         	add	r4, pc
  2f0458: 2500         	movs	r5, #0x0
  2f045a: ab04         	add	r3, sp, #0x10
  2f045c: 4618         	mov	r0, r3
  2f045e: f099 f7c9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x499f92
  2f0462: 2601         	movs	r6, #0x1
  2f0464: aa05         	add	r2, sp, #0x14
  2f0466: ab04         	add	r3, sp, #0x10
  2f0468: 4610         	mov	r0, r2
  2f046a: 4a66         	ldr	r2, [pc, #0x198]        @ 0x2f0604 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1b8>
  2f046c: 447a         	add	r2, pc
  2f046e: 4611         	mov	r1, r2
  2f0470: 461a         	mov	r2, r3
  2f0472: f0c6 f2f5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c65ea
  2f0476: 2501         	movs	r5, #0x1
  2f0478: ab05         	add	r3, sp, #0x14
  2f047a: 4618         	mov	r0, r3
  2f047c: f141 f970    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x1412e0
  2f0480: 4603         	mov	r3, r0
  2f0482: 2b00         	cmp	r3, #0x0
  2f0484: d108         	bne	0x2f0498 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x4c> @ imm = #0x10
  2f0486: 9b03         	ldr	r3, [sp, #0xc]
  2f0488: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f048c: 4618         	mov	r0, r3
  2f048e: f2a9 fe27    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a9c4e
  2f0492: 4603         	mov	r3, r0
  2f0494: 2b01         	cmp	r3, #0x1
  2f0496: d901         	bls	0x2f049c <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x50> @ imm = #0x2
  2f0498: 2301         	movs	r3, #0x1
  2f049a: e000         	b	0x2f049e <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x52> @ imm = #0x0
  2f049c: 2300         	movs	r3, #0x0
  2f049e: 461f         	mov	r7, r3
  2f04a0: 2d00         	cmp	r5, #0x0
  2f04a2: d003         	beq	0x2f04ac <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x60> @ imm = #0x6
  2f04a4: ab05         	add	r3, sp, #0x14
  2f04a6: 4618         	mov	r0, r3
  2f04a8: f0c5 f234    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c5468
  2f04ac: 2e00         	cmp	r6, #0x0
  2f04ae: d004         	beq	0x2f04ba <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x6e> @ imm = #0x8
  2f04b0: bf00         	nop
  2f04b2: ab04         	add	r3, sp, #0x10
  2f04b4: 4618         	mov	r0, r3
  2f04b6: f099 f7a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x499f42
  2f04ba: 2f00         	cmp	r7, #0x0
  2f04bc: f000 8082    	beq.w	0x2f05c4 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x178> @ imm = #0x104
  2f04c0: 9b03         	ldr	r3, [sp, #0xc]
  2f04c2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f04c6: 1e5a         	subs	r2, r3, #0x1
  2f04c8: 9b03         	ldr	r3, [sp, #0xc]
  2f04ca: f8c3 2110    	str.w	r2, [r3, #0x110]
  2f04ce: 9b03         	ldr	r3, [sp, #0xc]
  2f04d0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f04d4: 2b00         	cmp	r3, #0x0
  2f04d6: da0b         	bge	0x2f04f0 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0xa4> @ imm = #0x16
  2f04d8: 9b03         	ldr	r3, [sp, #0xc]
  2f04da: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f04de: 4618         	mov	r0, r3
  2f04e0: f2a9 fdfe    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2a9bfc
  2f04e4: 4603         	mov	r3, r0
  2f04e6: 3b01         	subs	r3, #0x1
  2f04e8: 461a         	mov	r2, r3
  2f04ea: 9b03         	ldr	r3, [sp, #0xc]
  2f04ec: f8c3 2110    	str.w	r2, [r3, #0x110]
  2f04f0: 9b03         	ldr	r3, [sp, #0xc]
  2f04f2: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  2f04f6: 9b03         	ldr	r3, [sp, #0xc]
  2f04f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f04fc: 4610         	mov	r0, r2
  2f04fe: 4619         	mov	r1, r3
  2f0500: f2a9 fe0e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2a9c1c
  2f0504: 4603         	mov	r3, r0
  2f0506: 4618         	mov	r0, r3
  2f0508: f7fc fca4    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x36b8
  2f050c: 4603         	mov	r3, r0
  2f050e: 461a         	mov	r2, r3
  2f0510: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f0512: 58e3         	ldr	r3, [r4, r3]
  2f0514: 601a         	str	r2, [r3]
  2f0516: f003 facf    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x359e
  2f051a: 4603         	mov	r3, r0
  2f051c: 4618         	mov	r0, r3
  2f051e: f007 ff17    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #0x7e2e
  2f0522: 4603         	mov	r3, r0
  2f0524: 9306         	str	r3, [sp, #0x18]
  2f0526: f003 fac7    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x358e
  2f052a: 4602         	mov	r2, r0
  2f052c: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f052e: 58e3         	ldr	r3, [r4, r3]
  2f0530: 681b         	ldr	r3, [r3]
  2f0532: 4610         	mov	r0, r2
  2f0534: 9906         	ldr	r1, [sp, #0x18]
  2f0536: 461a         	mov	r2, r3
  2f0538: f006 fd9a    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #0x6b34
  2f053c: 4603         	mov	r3, r0
  2f053e: 9307         	str	r3, [sp, #0x1c]
  2f0540: f003 faba    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3574
  2f0544: 4602         	mov	r2, r0
  2f0546: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f0548: 58e3         	ldr	r3, [r4, r3]
  2f054a: 681b         	ldr	r3, [r3]
  2f054c: 4610         	mov	r0, r2
  2f054e: 9906         	ldr	r1, [sp, #0x18]
  2f0550: 461a         	mov	r2, r3
  2f0552: f007 fc97    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #0x792e
  2f0556: 4603         	mov	r3, r0
  2f0558: 9308         	str	r3, [sp, #0x20]
  2f055a: f003 faad    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x355a
  2f055e: 4602         	mov	r2, r0
  2f0560: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f0562: 58e3         	ldr	r3, [r4, r3]
  2f0564: 681b         	ldr	r3, [r3]
  2f0566: 4610         	mov	r0, r2
  2f0568: 9906         	ldr	r1, [sp, #0x18]
  2f056a: 461a         	mov	r2, r3
  2f056c: f007 fd28    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #0x7a50
  2f0570: 4603         	mov	r3, r0
  2f0572: 9309         	str	r3, [sp, #0x24]
  2f0574: f003 faa0    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3540
  2f0578: 4602         	mov	r2, r0
  2f057a: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f057c: 58e3         	ldr	r3, [r4, r3]
  2f057e: 681b         	ldr	r3, [r3]
  2f0580: 4610         	mov	r0, r2
  2f0582: 9906         	ldr	r1, [sp, #0x18]
  2f0584: 461a         	mov	r2, r3
  2f0586: f007 fdb9    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #0x7b72
  2f058a: 4603         	mov	r3, r0
  2f058c: 930a         	str	r3, [sp, #0x28]
  2f058e: f003 fa93    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x3526
  2f0592: 4602         	mov	r2, r0
  2f0594: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2f0608 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1bc>
  2f0596: 58e3         	ldr	r3, [r4, r3]
  2f0598: 681b         	ldr	r3, [r3]
  2f059a: 4610         	mov	r0, r2
  2f059c: 9906         	ldr	r1, [sp, #0x18]
  2f059e: 461a         	mov	r2, r3
  2f05a0: f007 fe4a    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #0x7c94
  2f05a4: 4603         	mov	r3, r0
  2f05a6: 930b         	str	r3, [sp, #0x2c]
  2f05a8: 9b03         	ldr	r3, [sp, #0xc]
  2f05aa: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  2f05ae: 9a09         	ldr	r2, [sp, #0x24]
  2f05b0: 9200         	str	r2, [sp]
  2f05b2: 9a0a         	ldr	r2, [sp, #0x28]
  2f05b4: 9201         	str	r2, [sp, #0x4]
  2f05b6: 4618         	mov	r0, r3
  2f05b8: 990b         	ldr	r1, [sp, #0x2c]
  2f05ba: 9a07         	ldr	r2, [sp, #0x1c]
  2f05bc: 9b08         	ldr	r3, [sp, #0x20]
  2f05be: f103 fd61    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x103ac2
  2f05c2: e002         	b	0x2f05ca <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x17e> @ imm = #0x4
  2f05c4: 9803         	ldr	r0, [sp, #0xc]
  2f05c6: f7ff fdaf    	bl	0x2f0128 <AvatarLayer::presentProPackAlert()> @ imm = #-0x4a2
  2f05ca: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2f060c <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1c0>
  2f05cc: 58e3         	ldr	r3, [r4, r3]
  2f05ce: 681b         	ldr	r3, [r3]
  2f05d0: 4618         	mov	r0, r3
  2f05d2: 210e         	movs	r1, #0xe
  2f05d4: f107 fbf4    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1077e8
  2f05d8: e010         	b	0x2f05fc <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1b0> @ imm = #0x20
  2f05da: 2d00         	cmp	r5, #0x0
  2f05dc: d003         	beq	0x2f05e6 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x19a> @ imm = #0x6
  2f05de: ab05         	add	r3, sp, #0x14
  2f05e0: 4618         	mov	r0, r3
  2f05e2: f0c5 f197    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c532e
  2f05e6: 2e00         	cmp	r6, #0x0
  2f05e8: d005         	beq	0x2f05f6 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1aa> @ imm = #0xa
  2f05ea: bf00         	nop
  2f05ec: ab04         	add	r3, sp, #0x10
  2f05ee: 4618         	mov	r0, r3
  2f05f0: f099 f704    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x499e08
  2f05f4: e000         	b	0x2f05f8 <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x1ac> @ imm = #0x0
  2f05f6: bf00         	nop
  2f05f8: f097 f558    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x497ab0
  2f05fc: b00d         	add	sp, #0x34
  2f05fe: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x2f05ff); words below are literal-pool data ---
  2f0600: 25b2         	movs	r5, #0xb2
  2f0602: 0064         	lsls	r4, r4, #0x1
  2f0604: 2ecc         	cmp	r6, #0xcc
  2f0606: 004d         	lsls	r5, r1, #0x1
  2f0608: d8b0         	bhi	0x2f056c <AvatarLayer::onPrevVisual(cocos2d::CCObject*)+0x120> @ imm = #-0xa0
  2f060a: ffff d730    	vqshl.u32	d29, d16, #0x1f
  2f060e: ffff b500    	<unknown>

// ==== AvatarLayer::editBoxTextChanged
//      file offset 0x2f0610 (= ELF address; Ghidra 0x300610), 22 bytes, Thumb-2
  2f0610: b500         	push	{lr}
  2f0612: b085         	sub	sp, #0x14
  2f0614: 9003         	str	r0, [sp, #0xc]
  2f0616: 9102         	str	r1, [sp, #0x8]
  2f0618: 9201         	str	r2, [sp, #0x4]
  2f061a: 9803         	ldr	r0, [sp, #0xc]
  2f061c: f7ff fd6a    	bl	0x2f00f4 <AvatarLayer::updatePlayerNameLabel()> @ imm = #-0x52c
  2f0620: b005         	add	sp, #0x14
  2f0622: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarLayer::editBoxTextChanged
//      file offset 0x2f0628 (= ELF address; Ghidra 0x300628), 8 bytes, Thumb-2
  2f0628: f5a0 7084    	sub.w	r0, r0, #0x108
  2f062c: f7ff bff0    	b.w	0x2f0610 <AvatarLayer::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)> @ imm = #-0x20

// ==== AvatarLayer::editBoxReturn
//      file offset 0x2f0630 (= ELF address; Ghidra 0x300630), 84 bytes, Thumb-2
  2f0630: b510         	push	{r4, lr}
  2f0632: b082         	sub	sp, #0x8
  2f0634: 9001         	str	r0, [sp, #0x4]
  2f0636: 9100         	str	r1, [sp]
  2f0638: 9b01         	ldr	r3, [sp, #0x4]
  2f063a: f503 74ac    	add.w	r4, r3, #0x158
  2f063e: 9800         	ldr	r0, [sp]
  2f0640: f166 fa84    	bl	0x456b4c <cocos2d::extension::CCEditBox::getText()> @ imm = #0x166508
  2f0644: 4603         	mov	r3, r0
  2f0646: 4620         	mov	r0, r4
  2f0648: 4619         	mov	r1, r3
  2f064a: f0c5 f411    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4c5822
  2f064e: 9b01         	ldr	r3, [sp, #0x4]
  2f0650: f503 73ac    	add.w	r3, r3, #0x158
  2f0654: 4618         	mov	r0, r3
  2f0656: f0c4 f501    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c4a02
  2f065a: 4603         	mov	r3, r0
  2f065c: 2b00         	cmp	r3, #0x0
  2f065e: bf14         	ite	ne
  2f0660: 2300         	movne	r3, #0x0
  2f0662: 2301         	moveq	r3, #0x1
  2f0664: b2db         	uxtb	r3, r3
  2f0666: 2b00         	cmp	r3, #0x0
  2f0668: d008         	beq	0x2f067c <AvatarLayer::editBoxReturn(cocos2d::extension::CCEditBox*)+0x4c> @ imm = #0x10
  2f066a: 9b01         	ldr	r3, [sp, #0x4]
  2f066c: f503 73ac    	add.w	r3, r3, #0x158
  2f0670: 4618         	mov	r0, r3
  2f0672: 4b03         	ldr	r3, [pc, #0xc]          @ 0x2f0680 <AvatarLayer::editBoxReturn(cocos2d::extension::CCEditBox*)+0x50>
  2f0674: 447b         	add	r3, pc
  2f0676: 4619         	mov	r1, r3
  2f0678: f0c5 f3fa    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4c57f4
  2f067c: b002         	add	sp, #0x8
  2f067e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f067f); words below are literal-pool data ---
  2f0680: 2d94         	cmp	r5, #0x94
  2f0682: 004d         	lsls	r5, r1, #0x1

// ==== AvatarLayer::editBoxReturn
//      file offset 0x2f0684 (= ELF address; Ghidra 0x300684), 8 bytes, Thumb-2
  2f0684: f5a0 7084    	sub.w	r0, r0, #0x108
  2f0688: f7ff bfd2    	b.w	0x2f0630 <AvatarLayer::editBoxReturn(cocos2d::extension::CCEditBox*)> @ imm = #-0x5c

// ==== AvatarLayer::messageBoxHandler
//      file offset 0x2f068c (= ELF address; Ghidra 0x30068c), 60 bytes, Thumb-2
  2f068c: b530         	push	{r4, r5, lr}
  2f068e: b085         	sub	sp, #0x14
  2f0690: 9003         	str	r0, [sp, #0xc]
  2f0692: 9102         	str	r1, [sp, #0x8]
  2f0694: 9201         	str	r2, [sp, #0x4]
  2f0696: 9b03         	ldr	r3, [sp, #0xc]
  2f0698: 2b01         	cmp	r3, #0x1
  2f069a: d111         	bne	0x2f06c0 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x34> @ imm = #0x22
  2f069c: f2aa ff6a    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2aaed4
  2f06a0: 4604         	mov	r4, r0
  2f06a2: 4b08         	ldr	r3, [pc, #0x20]         @ 0x2f06c4 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x38>
  2f06a4: 447b         	add	r3, pc
  2f06a6: 681d         	ldr	r5, [r3]
  2f06a8: f0c6 feb8    	bl	0x3b741c <PurchaseLayer::scene()> @ imm = #0xc6d70
  2f06ac: 4603         	mov	r3, r0
  2f06ae: 4628         	mov	r0, r5
  2f06b0: 4619         	mov	r1, r3
  2f06b2: f2c0 fe29    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2c0c52
  2f06b6: 4603         	mov	r3, r0
  2f06b8: 4620         	mov	r0, r4
  2f06ba: 4619         	mov	r1, r3
  2f06bc: f2ab fe4e    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2abc9c
  2f06c0: b005         	add	sp, #0x14
  2f06c2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f06c3); words below are literal-pool data ---
  2f06c4: 2b74         	cmp	r3, #0x74
  2f06c6: 0064         	lsls	r4, r4, #0x1
