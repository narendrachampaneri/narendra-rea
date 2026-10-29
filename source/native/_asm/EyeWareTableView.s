// EyeWareTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../EyeWareTableView.cpp

// ==== EyeWareTableView::EyeWareTableView
//      file offset 0x2eab40 (= ELF address; Ghidra 0x2fab40), 116 bytes, Thumb-2
  2eab40: b510         	push	{r4, lr}
  2eab42: b082         	sub	sp, #0x8
  2eab44: 9001         	str	r0, [sp, #0x4]
  2eab46: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eabac <EyeWareTableView::EyeWareTableView()+0x6c>
  2eab48: 447c         	add	r4, pc
  2eab4a: 9b01         	ldr	r3, [sp, #0x4]
  2eab4c: 4618         	mov	r0, r3
  2eab4e: f086 f8a7    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x8614e
  2eab52: 9b01         	ldr	r3, [sp, #0x4]
  2eab54: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab56: 58a2         	ldr	r2, [r4, r2]
  2eab58: 3208         	adds	r2, #0x8
  2eab5a: 601a         	str	r2, [r3]
  2eab5c: 9b01         	ldr	r3, [sp, #0x4]
  2eab5e: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab60: 58a2         	ldr	r2, [r4, r2]
  2eab62: f502 720b    	add.w	r2, r2, #0x22c
  2eab66: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eab6a: 9b01         	ldr	r3, [sp, #0x4]
  2eab6c: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab6e: 58a2         	ldr	r2, [r4, r2]
  2eab70: f502 7217    	add.w	r2, r2, #0x25c
  2eab74: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eab78: 9b01         	ldr	r3, [sp, #0x4]
  2eab7a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab7c: 58a2         	ldr	r2, [r4, r2]
  2eab7e: f502 721a    	add.w	r2, r2, #0x268
  2eab82: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eab86: 9b01         	ldr	r3, [sp, #0x4]
  2eab88: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab8a: 58a2         	ldr	r2, [r4, r2]
  2eab8c: f502 721e    	add.w	r2, r2, #0x278
  2eab90: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eab94: 9b01         	ldr	r3, [sp, #0x4]
  2eab96: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eabb0 <EyeWareTableView::EyeWareTableView()+0x70>
  2eab98: 58a2         	ldr	r2, [r4, r2]
  2eab9a: f502 7224    	add.w	r2, r2, #0x290
  2eab9e: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eaba2: 9b01         	ldr	r3, [sp, #0x4]
  2eaba4: 4618         	mov	r0, r3
  2eaba6: b002         	add	sp, #0x8
  2eaba8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eaba9); words below are literal-pool data ---
  2eabaa: bf00         	nop
  2eabac: 7ec0         	ldrb	r0, [r0, #0x1b]
  2eabae: 0064         	lsls	r4, r4, #0x1
  2eabb0: d87c         	bhi	0x2eacac <ShirtTableView::ShirtTableView()+0x10> @ imm = #0xf8
  2eabb2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== EyeWareTableView::numberOfCellsInTableView
//      file offset 0x2fabe4 (= ELF address; Ghidra 0x30abe4), 14 bytes, Thumb-2
  2fabe4: b082         	sub	sp, #0x8
  2fabe6: 9001         	str	r0, [sp, #0x4]
  2fabe8: 9100         	str	r1, [sp]
  2fabea: 2306         	movs	r3, #0x6
  2fabec: 4618         	mov	r0, r3
  2fabee: b002         	add	sp, #0x8
  2fabf0: 4770         	bx	lr

// ==== EyeWareTableView::numberOfCellsInTableView
//      file offset 0x2fabf4 (= ELF address; Ghidra 0x30abf4), 8 bytes, Thumb-2
  2fabf4: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fabf8: f7ff bff4    	b.w	0x2fabe4 <EyeWareTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== EyeWareTableView::getIdentifier
//      file offset 0x2fabfc (= ELF address; Ghidra 0x30abfc), 68 bytes, Thumb-2
  2fabfc: b500         	push	{lr}
  2fabfe: b085         	sub	sp, #0x14
  2fac00: 9001         	str	r0, [sp, #0x4]
  2fac02: 9100         	str	r1, [sp]
  2fac04: ab03         	add	r3, sp, #0xc
  2fac06: 4618         	mov	r0, r3
  2fac08: f08f f3f4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48f7e8
  2fac0c: ab03         	add	r3, sp, #0xc
  2fac0e: 9801         	ldr	r0, [sp, #0x4]
  2fac10: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fac3c <EyeWareTableView::getIdentifier()+0x40>
  2fac12: 447a         	add	r2, pc
  2fac14: 4611         	mov	r1, r2
  2fac16: 461a         	mov	r2, r3
  2fac18: f0bb f722    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bbe44
  2fac1c: ab03         	add	r3, sp, #0xc
  2fac1e: 4618         	mov	r0, r3
  2fac20: f08f f3ec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f7d8
  2fac24: e005         	b	0x2fac32 <EyeWareTableView::getIdentifier()+0x36> @ imm = #0xa
  2fac26: ab03         	add	r3, sp, #0xc
  2fac28: 4618         	mov	r0, r3
  2fac2a: f08f f3e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48f7ce
  2fac2e: f08d f23d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d47a
  2fac32: 9801         	ldr	r0, [sp, #0x4]
  2fac34: b005         	add	sp, #0x14
  2fac36: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fac39); words below are literal-pool data ---
  2fac3a: bf00         	nop
  2fac3c: 9bb6         	ldr	r3, [sp, #0x2d8]
  2fac3e: 004c         	lsls	r4, r1, #0x1

// ==== EyeWareTableView::tableCellAtIndex
//      file offset 0x2fac40 (= ELF address; Ghidra 0x30ac40), 332 bytes, Thumb-2
  2fac40: b510         	push	{r4, lr}
  2fac42: b090         	sub	sp, #0x40
  2fac44: 9003         	str	r0, [sp, #0xc]
  2fac46: 9102         	str	r1, [sp, #0x8]
  2fac48: 9201         	str	r2, [sp, #0x4]
  2fac4a: 9802         	ldr	r0, [sp, #0x8]
  2fac4c: f158 fde4    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x158bc8
  2fac50: 4603         	mov	r3, r0
  2fac52: 9305         	str	r3, [sp, #0x14]
  2fac54: 9b05         	ldr	r3, [sp, #0x14]
  2fac56: 2b00         	cmp	r3, #0x0
  2fac58: d006         	beq	0x2fac68 <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fac5a: 9805         	ldr	r0, [sp, #0x14]
  2fac5c: f15b f9c6    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15b38c
  2fac60: 4602         	mov	r2, r0
  2fac62: 9b01         	ldr	r3, [sp, #0x4]
  2fac64: 429a         	cmp	r2, r3
  2fac66: d001         	beq	0x2fac6c <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fac68: 2301         	movs	r3, #0x1
  2fac6a: e000         	b	0x2fac6e <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fac6c: 2300         	movs	r3, #0x0
  2fac6e: 2b00         	cmp	r3, #0x0
  2fac70: d07d         	beq	0x2fad6e <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0xfa
  2fac72: 20ec         	movs	r0, #0xec
  2fac74: f08c f676    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48ccec
  2fac78: 4603         	mov	r3, r0
  2fac7a: 461c         	mov	r4, r3
  2fac7c: 4620         	mov	r0, r4
  2fac7e: f7fe fb9d    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x18c6
  2fac82: 9405         	str	r4, [sp, #0x14]
  2fac84: 9b05         	ldr	r3, [sp, #0x14]
  2fac86: 4618         	mov	r0, r3
  2fac88: f29d f938    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29d270
  2fac8c: 9b03         	ldr	r3, [sp, #0xc]
  2fac8e: 681b         	ldr	r3, [r3]
  2fac90: f503 7306    	add.w	r3, r3, #0x218
  2fac94: 681c         	ldr	r4, [r3]
  2fac96: ab08         	add	r3, sp, #0x20
  2fac98: 4618         	mov	r0, r3
  2fac9a: 9903         	ldr	r1, [sp, #0xc]
  2fac9c: 9a02         	ldr	r2, [sp, #0x8]
  2fac9e: 9b01         	ldr	r3, [sp, #0x4]
  2faca0: 47a0         	blx	r4
  2faca2: ed9d 7a08    	vldr	s14, [sp, #32]
  2faca6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2facaa: eec7 6a27    	vdiv.f32	s13, s14, s15
  2facae: ed9d 7a09    	vldr	s14, [sp, #36]
  2facb2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2facb6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2facba: ab0a         	add	r3, sp, #0x28
  2facbc: 4618         	mov	r0, r3
  2facbe: ee16 1a90    	vmov	r1, s13
  2facc2: ee17 2a90    	vmov	r2, s15
  2facc6: f298 f813    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x298026
  2facca: f7f8 fef5    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7216
  2facce: 4602         	mov	r2, r0
  2facd0: 9b01         	ldr	r3, [sp, #0x4]
  2facd2: 3381         	adds	r3, #0x81
  2facd4: 011b         	lsls	r3, r3, #0x4
  2facd6: 4413         	add	r3, r2
  2facd8: 3304         	adds	r3, #0x4
  2facda: aa0c         	add	r2, sp, #0x30
  2facdc: 4610         	mov	r0, r2
  2facde: 4619         	mov	r1, r3
  2face0: f298 fb1a    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x298634
  2face4: ab0c         	add	r3, sp, #0x30
  2face6: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x2fad84 <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x144>
  2face8: 447a         	add	r2, pc
  2facea: 4610         	mov	r0, r2
  2facec: 4619         	mov	r1, r3
  2facee: f2dd fa87    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dd50e
  2facf2: 4603         	mov	r3, r0
  2facf4: 9306         	str	r3, [sp, #0x18]
  2facf6: 9b06         	ldr	r3, [sp, #0x18]
  2facf8: 681b         	ldr	r3, [r3]
  2facfa: f503 73fa    	add.w	r3, r3, #0x1f4
  2facfe: 681b         	ldr	r3, [r3]
  2fad00: 9806         	ldr	r0, [sp, #0x18]
  2fad02: 4798         	blx	r3
  2fad04: 4603         	mov	r3, r0
  2fad06: 4618         	mov	r0, r3
  2fad08: f2f7 f93c    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f7278
  2fad0c: 9b06         	ldr	r3, [sp, #0x18]
  2fad0e: 681b         	ldr	r3, [r3]
  2fad10: 334c         	adds	r3, #0x4c
  2fad12: 681b         	ldr	r3, [r3]
  2fad14: aa0a         	add	r2, sp, #0x28
  2fad16: 9806         	ldr	r0, [sp, #0x18]
  2fad18: 4611         	mov	r1, r2
  2fad1a: 4798         	blx	r3
  2fad1c: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fad88 <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x148>
  2fad1e: 447b         	add	r3, pc
  2fad20: 4618         	mov	r0, r3
  2fad22: f2dd faef    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dd5de
  2fad26: 4603         	mov	r3, r0
  2fad28: 9307         	str	r3, [sp, #0x1c]
  2fad2a: 9b07         	ldr	r3, [sp, #0x1c]
  2fad2c: 681b         	ldr	r3, [r3]
  2fad2e: 334c         	adds	r3, #0x4c
  2fad30: 681b         	ldr	r3, [r3]
  2fad32: aa0a         	add	r2, sp, #0x28
  2fad34: 9807         	ldr	r0, [sp, #0x1c]
  2fad36: 4611         	mov	r1, r2
  2fad38: 4798         	blx	r3
  2fad3a: 9b07         	ldr	r3, [sp, #0x1c]
  2fad3c: 681b         	ldr	r3, [r3]
  2fad3e: 3340         	adds	r3, #0x40
  2fad40: 681b         	ldr	r3, [r3]
  2fad42: 9807         	ldr	r0, [sp, #0x1c]
  2fad44: f649 119a    	movw	r1, #0x999a
  2fad48: f6c3 7119    	movt	r1, #0x3f19
  2fad4c: 4798         	blx	r3
  2fad4e: 9b05         	ldr	r3, [sp, #0x14]
  2fad50: 681b         	ldr	r3, [r3]
  2fad52: 33c8         	adds	r3, #0xc8
  2fad54: 681b         	ldr	r3, [r3]
  2fad56: 9a05         	ldr	r2, [sp, #0x14]
  2fad58: 4610         	mov	r0, r2
  2fad5a: 9907         	ldr	r1, [sp, #0x1c]
  2fad5c: 4798         	blx	r3
  2fad5e: 9b05         	ldr	r3, [sp, #0x14]
  2fad60: 681b         	ldr	r3, [r3]
  2fad62: 33c8         	adds	r3, #0xc8
  2fad64: 681b         	ldr	r3, [r3]
  2fad66: 9a05         	ldr	r2, [sp, #0x14]
  2fad68: 4610         	mov	r0, r2
  2fad6a: 9906         	ldr	r1, [sp, #0x18]
  2fad6c: 4798         	blx	r3
  2fad6e: 9b05         	ldr	r3, [sp, #0x14]
  2fad70: e004         	b	0x2fad7c <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x13c> @ imm = #0x8
  2fad72: 4620         	mov	r0, r4
  2fad74: f08d f196    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48d32c
  2fad78: f08d f198    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48d330
  2fad7c: 4618         	mov	r0, r3
  2fad7e: b010         	add	sp, #0x40
  2fad80: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fad81); words below are literal-pool data ---
  2fad82: bf00         	nop
  2fad84: 9a48         	ldr	r2, [sp, #0x120]
  2fad86: 004c         	lsls	r4, r1, #0x1
  2fad88: 9a26         	ldr	r2, [sp, #0x98]
  2fad8a: 004c         	lsls	r4, r1, #0x1

// ==== EyeWareTableView::tableCellAtIndex
//      file offset 0x2fad8c (= ELF address; Ghidra 0x30ad8c), 8 bytes, Thumb-2
  2fad8c: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fad90: f7ff bf56    	b.w	0x2fac40 <EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x154

// ==== EyeWareTableView::tableCellSizeForIndex
//      file offset 0x2fad94 (= ELF address; Ghidra 0x30ad94), 54 bytes, Thumb-2
  2fad94: b500         	push	{lr}
  2fad96: b085         	sub	sp, #0x14
  2fad98: 9003         	str	r0, [sp, #0xc]
  2fad9a: 9102         	str	r1, [sp, #0x8]
  2fad9c: 9201         	str	r2, [sp, #0x4]
  2fad9e: 9300         	str	r3, [sp]
  2fada0: 9b01         	ldr	r3, [sp, #0x4]
  2fada2: 681b         	ldr	r3, [r3]
  2fada4: 338c         	adds	r3, #0x8c
  2fada6: 681b         	ldr	r3, [r3]
  2fada8: 9a01         	ldr	r2, [sp, #0x4]
  2fadaa: 4610         	mov	r0, r2
  2fadac: 4798         	blx	r3
  2fadae: 4603         	mov	r3, r0
  2fadb0: 681b         	ldr	r3, [r3]
  2fadb2: 9803         	ldr	r0, [sp, #0xc]
  2fadb4: 4619         	mov	r1, r3
  2fadb6: f04f 0200    	mov.w	r2, #0x0
  2fadba: f2c4 2270    	movt	r2, #0x4270
  2fadbe: f298 f969    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2982d2
  2fadc2: 9803         	ldr	r0, [sp, #0xc]
  2fadc4: b005         	add	sp, #0x14
  2fadc6: f85d fb04    	ldr	pc, [sp], #4

// ==== EyeWareTableView::tableCellSizeForIndex
//      file offset 0x2fadcc (= ELF address; Ghidra 0x30adcc), 8 bytes, Thumb-2
  2fadcc: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fadd0: f7ff bfe0    	b.w	0x2fad94 <EyeWareTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc280 (= ELF address; Ghidra 0x30c280), 128 bytes, Thumb-2
  2fc280: b500         	push	{lr}
  2fc282: b083         	sub	sp, #0xc
  2fc284: 9001         	str	r0, [sp, #0x4]
  2fc286: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc2f8 <EyeWareTableView::~EyeWareTableView()+0x78>
  2fc288: 447b         	add	r3, pc
  2fc28a: 9a01         	ldr	r2, [sp, #0x4]
  2fc28c: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc28e: 5859         	ldr	r1, [r3, r1]
  2fc290: 3108         	adds	r1, #0x8
  2fc292: 6011         	str	r1, [r2]
  2fc294: 9a01         	ldr	r2, [sp, #0x4]
  2fc296: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc298: 5859         	ldr	r1, [r3, r1]
  2fc29a: f501 710b    	add.w	r1, r1, #0x22c
  2fc29e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc2a2: 9a01         	ldr	r2, [sp, #0x4]
  2fc2a4: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc2a6: 5859         	ldr	r1, [r3, r1]
  2fc2a8: f501 7117    	add.w	r1, r1, #0x25c
  2fc2ac: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc2b0: 9a01         	ldr	r2, [sp, #0x4]
  2fc2b2: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc2b4: 5859         	ldr	r1, [r3, r1]
  2fc2b6: f501 711a    	add.w	r1, r1, #0x268
  2fc2ba: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc2be: 9a01         	ldr	r2, [sp, #0x4]
  2fc2c0: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc2c2: 5859         	ldr	r1, [r3, r1]
  2fc2c4: f501 711e    	add.w	r1, r1, #0x278
  2fc2c8: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc2cc: 9a01         	ldr	r2, [sp, #0x4]
  2fc2ce: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc2fc <EyeWareTableView::~EyeWareTableView()+0x7c>
  2fc2d0: 585b         	ldr	r3, [r3, r1]
  2fc2d2: f503 7324    	add.w	r3, r3, #0x290
  2fc2d6: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc2da: 9b01         	ldr	r3, [sp, #0x4]
  2fc2dc: 4618         	mov	r0, r3
  2fc2de: f7ff fc99    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x6ce
  2fc2e2: 2300         	movs	r3, #0x0
  2fc2e4: 2b00         	cmp	r3, #0x0
  2fc2e6: d002         	beq	0x2fc2ee <EyeWareTableView::~EyeWareTableView()+0x6e> @ imm = #0x4
  2fc2e8: 9801         	ldr	r0, [sp, #0x4]
  2fc2ea: f08b f6db    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bdb6
  2fc2ee: 9b01         	ldr	r3, [sp, #0x4]
  2fc2f0: 4618         	mov	r0, r3
  2fc2f2: b003         	add	sp, #0xc
  2fc2f4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc2f7); words below are literal-pool data ---
  2fc2f8: 6780         	str	r0, [r0, #0x78]
  2fc2fa: 0063         	lsls	r3, r4, #0x1
  2fc2fc: d87c         	bhi	0x2fc3f8 <StacheTableView::~StacheTableView()+0x14> @ imm = #0xf8
  2fc2fe: ffff f5a0    	<unknown>

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc300 (= ELF address; Ghidra 0x30c300), 8 bytes, Thumb-2
  2fc300: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc304: f7ff bfbc    	b.w	0x2fc280 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x88

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc308 (= ELF address; Ghidra 0x30c308), 8 bytes, Thumb-2
  2fc308: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc30c: f7ff bfb8    	b.w	0x2fc280 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x90

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc310 (= ELF address; Ghidra 0x30c310), 8 bytes, Thumb-2
  2fc310: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc314: f7ff bfb4    	b.w	0x2fc280 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x98

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc318 (= ELF address; Ghidra 0x30c318), 28 bytes, Thumb-2
  2fc318: b500         	push	{lr}
  2fc31a: b083         	sub	sp, #0xc
  2fc31c: 9001         	str	r0, [sp, #0x4]
  2fc31e: 9801         	ldr	r0, [sp, #0x4]
  2fc320: f7ff ffae    	bl	0x2fc280 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0xa4
  2fc324: 9801         	ldr	r0, [sp, #0x4]
  2fc326: f08b f6bd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48bd7a
  2fc32a: 9b01         	ldr	r3, [sp, #0x4]
  2fc32c: 4618         	mov	r0, r3
  2fc32e: b003         	add	sp, #0xc
  2fc330: f85d fb04    	ldr	pc, [sp], #4

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc334 (= ELF address; Ghidra 0x30c334), 6 bytes, Thumb-2
  2fc334: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc338: e7ee         	b	0x2fc318 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x24

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc33c (= ELF address; Ghidra 0x30c33c), 6 bytes, Thumb-2
  2fc33c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc340: e7ea         	b	0x2fc318 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x2c

// ==== EyeWareTableView::~EyeWareTableView
//      file offset 0x2fc344 (= ELF address; Ghidra 0x30c344), 6 bytes, Thumb-2
  2fc344: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc348: e7e6         	b	0x2fc318 <EyeWareTableView::~EyeWareTableView()> @ imm = #-0x34
