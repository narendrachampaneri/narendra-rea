// SkinColorTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SkinColorTableView.cpp

// ==== SkinColorTableView::SkinColorTableView
//      file offset 0x2ea6b8 (= ELF address; Ghidra 0x2fa6b8), 116 bytes, Thumb-2
  2ea6b8: b510         	push	{r4, lr}
  2ea6ba: b082         	sub	sp, #0x8
  2ea6bc: 9001         	str	r0, [sp, #0x4]
  2ea6be: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea724 <SkinColorTableView::SkinColorTableView()+0x6c>
  2ea6c0: 447c         	add	r4, pc
  2ea6c2: 9b01         	ldr	r3, [sp, #0x4]
  2ea6c4: 4618         	mov	r0, r3
  2ea6c6: f086 faeb    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x865d6
  2ea6ca: 9b01         	ldr	r3, [sp, #0x4]
  2ea6cc: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea6ce: 58a2         	ldr	r2, [r4, r2]
  2ea6d0: 3208         	adds	r2, #0x8
  2ea6d2: 601a         	str	r2, [r3]
  2ea6d4: 9b01         	ldr	r3, [sp, #0x4]
  2ea6d6: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea6d8: 58a2         	ldr	r2, [r4, r2]
  2ea6da: f502 720b    	add.w	r2, r2, #0x22c
  2ea6de: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea6e2: 9b01         	ldr	r3, [sp, #0x4]
  2ea6e4: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea6e6: 58a2         	ldr	r2, [r4, r2]
  2ea6e8: f502 7217    	add.w	r2, r2, #0x25c
  2ea6ec: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea6f0: 9b01         	ldr	r3, [sp, #0x4]
  2ea6f2: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea6f4: 58a2         	ldr	r2, [r4, r2]
  2ea6f6: f502 721a    	add.w	r2, r2, #0x268
  2ea6fa: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea6fe: 9b01         	ldr	r3, [sp, #0x4]
  2ea700: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea702: 58a2         	ldr	r2, [r4, r2]
  2ea704: f502 721e    	add.w	r2, r2, #0x278
  2ea708: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea70c: 9b01         	ldr	r3, [sp, #0x4]
  2ea70e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea728 <SkinColorTableView::SkinColorTableView()+0x70>
  2ea710: 58a2         	ldr	r2, [r4, r2]
  2ea712: f502 7224    	add.w	r2, r2, #0x290
  2ea716: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea71a: 9b01         	ldr	r3, [sp, #0x4]
  2ea71c: 4618         	mov	r0, r3
  2ea71e: b002         	add	sp, #0x8
  2ea720: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea721); words below are literal-pool data ---
  2ea722: bf00         	nop
  2ea724: 8348         	strh	r0, [r1, #0x1a]
  2ea726: 0064         	lsls	r4, r4, #0x1
  2ea728: d854         	bhi	0x2ea7d4 <BrowTableView::BrowTableView()+0x34> @ imm = #0xa8
  2ea72a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SkinColorTableView::numberOfCellsInTableView
//      file offset 0x2f9678 (= ELF address; Ghidra 0x309678), 14 bytes, Thumb-2
  2f9678: b082         	sub	sp, #0x8
  2f967a: 9001         	str	r0, [sp, #0x4]
  2f967c: 9100         	str	r1, [sp]
  2f967e: 2304         	movs	r3, #0x4
  2f9680: 4618         	mov	r0, r3
  2f9682: b002         	add	sp, #0x8
  2f9684: 4770         	bx	lr

// ==== SkinColorTableView::numberOfCellsInTableView
//      file offset 0x2f9688 (= ELF address; Ghidra 0x309688), 8 bytes, Thumb-2
  2f9688: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f968c: f7ff bff4    	b.w	0x2f9678 <SkinColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== SkinColorTableView::getIdentifier
//      file offset 0x2f9690 (= ELF address; Ghidra 0x309690), 68 bytes, Thumb-2
  2f9690: b500         	push	{lr}
  2f9692: b085         	sub	sp, #0x14
  2f9694: 9001         	str	r0, [sp, #0x4]
  2f9696: 9100         	str	r1, [sp]
  2f9698: ab03         	add	r3, sp, #0xc
  2f969a: 4618         	mov	r0, r3
  2f969c: f090 f6aa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490d54
  2f96a0: ab03         	add	r3, sp, #0xc
  2f96a2: 9801         	ldr	r0, [sp, #0x4]
  2f96a4: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f96d0 <SkinColorTableView::getIdentifier()+0x40>
  2f96a6: 447a         	add	r2, pc
  2f96a8: 4611         	mov	r1, r2
  2f96aa: 461a         	mov	r2, r3
  2f96ac: f0bd f1d8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bd3b0
  2f96b0: ab03         	add	r3, sp, #0xc
  2f96b2: 4618         	mov	r0, r3
  2f96b4: f090 f6a2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490d44
  2f96b8: e005         	b	0x2f96c6 <SkinColorTableView::getIdentifier()+0x36> @ imm = #0xa
  2f96ba: ab03         	add	r3, sp, #0xc
  2f96bc: 4618         	mov	r0, r3
  2f96be: f090 f69d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490d3a
  2f96c2: f08e f4f3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e9e6
  2f96c6: 9801         	ldr	r0, [sp, #0x4]
  2f96c8: b005         	add	sp, #0x14
  2f96ca: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f96cd); words below are literal-pool data ---
  2f96ce: bf00         	nop
  2f96d0: b0b2         	sub	sp, #0xc8
  2f96d2: 004c         	lsls	r4, r1, #0x1

// ==== SkinColorTableView::tableCellAtIndex
//      file offset 0x2f96d4 (= ELF address; Ghidra 0x3096d4), 316 bytes, Thumb-2
  2f96d4: b510         	push	{r4, lr}
  2f96d6: b08c         	sub	sp, #0x30
  2f96d8: 9003         	str	r0, [sp, #0xc]
  2f96da: 9102         	str	r1, [sp, #0x8]
  2f96dc: 9201         	str	r2, [sp, #0x4]
  2f96de: 9802         	ldr	r0, [sp, #0x8]
  2f96e0: f15a f89a    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x15a134
  2f96e4: 4603         	mov	r3, r0
  2f96e6: 9305         	str	r3, [sp, #0x14]
  2f96e8: 9b05         	ldr	r3, [sp, #0x14]
  2f96ea: 2b00         	cmp	r3, #0x0
  2f96ec: d006         	beq	0x2f96fc <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f96ee: 9805         	ldr	r0, [sp, #0x14]
  2f96f0: f15c fc7c    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15c8f8
  2f96f4: 4602         	mov	r2, r0
  2f96f6: 9b01         	ldr	r3, [sp, #0x4]
  2f96f8: 429a         	cmp	r2, r3
  2f96fa: d001         	beq	0x2f9700 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f96fc: 2301         	movs	r3, #0x1
  2f96fe: e000         	b	0x2f9702 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f9700: 2300         	movs	r3, #0x0
  2f9702: 2b00         	cmp	r3, #0x0
  2f9704: d076         	beq	0x2f97f4 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x120> @ imm = #0xec
  2f9706: 20ec         	movs	r0, #0xec
  2f9708: f08e f12c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48e258
  2f970c: 4603         	mov	r3, r0
  2f970e: 461c         	mov	r4, r3
  2f9710: 4620         	mov	r0, r4
  2f9712: f7ff fe53    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x35a
  2f9716: 9405         	str	r4, [sp, #0x14]
  2f9718: 9b05         	ldr	r3, [sp, #0x14]
  2f971a: 4618         	mov	r0, r3
  2f971c: f29e fbee    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e7dc
  2f9720: 9b03         	ldr	r3, [sp, #0xc]
  2f9722: 681b         	ldr	r3, [r3]
  2f9724: f503 7306    	add.w	r3, r3, #0x218
  2f9728: 681c         	ldr	r4, [r3]
  2f972a: ab08         	add	r3, sp, #0x20
  2f972c: 4618         	mov	r0, r3
  2f972e: 9903         	ldr	r1, [sp, #0xc]
  2f9730: 9a02         	ldr	r2, [sp, #0x8]
  2f9732: 9b01         	ldr	r3, [sp, #0x4]
  2f9734: 47a0         	blx	r4
  2f9736: ed9d 7a08    	vldr	s14, [sp, #32]
  2f973a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f973e: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9742: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9746: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f974a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f974e: ab0a         	add	r3, sp, #0x28
  2f9750: 4618         	mov	r0, r3
  2f9752: ee16 1a90    	vmov	r1, s13
  2f9756: ee17 2a90    	vmov	r2, s15
  2f975a: f299 fac9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x299592
  2f975e: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x2f9808 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x134>
  2f9760: 447b         	add	r3, pc
  2f9762: 4618         	mov	r0, r3
  2f9764: f2de fdce    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2deb9c
  2f9768: 4603         	mov	r3, r0
  2f976a: 9306         	str	r3, [sp, #0x18]
  2f976c: 9b06         	ldr	r3, [sp, #0x18]
  2f976e: 681b         	ldr	r3, [r3]
  2f9770: f503 73de    	add.w	r3, r3, #0x1bc
  2f9774: 681c         	ldr	r4, [r3]
  2f9776: f7fa f99f    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x5cc2
  2f977a: 4601         	mov	r1, r0
  2f977c: 9a01         	ldr	r2, [sp, #0x4]
  2f977e: 4613         	mov	r3, r2
  2f9780: 005b         	lsls	r3, r3, #0x1
  2f9782: 4413         	add	r3, r2
  2f9784: f603 1308    	addw	r3, r3, #0x908
  2f9788: 440b         	add	r3, r1
  2f978a: 3307         	adds	r3, #0x7
  2f978c: 9806         	ldr	r0, [sp, #0x18]
  2f978e: 4619         	mov	r1, r3
  2f9790: 47a0         	blx	r4
  2f9792: 9b06         	ldr	r3, [sp, #0x18]
  2f9794: 681b         	ldr	r3, [r3]
  2f9796: 334c         	adds	r3, #0x4c
  2f9798: 681b         	ldr	r3, [r3]
  2f979a: aa0a         	add	r2, sp, #0x28
  2f979c: 9806         	ldr	r0, [sp, #0x18]
  2f979e: 4611         	mov	r1, r2
  2f97a0: 4798         	blx	r3
  2f97a2: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2f980c <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x138>
  2f97a4: 447b         	add	r3, pc
  2f97a6: 4618         	mov	r0, r3
  2f97a8: f2de fdac    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2deb58
  2f97ac: 4603         	mov	r3, r0
  2f97ae: 9307         	str	r3, [sp, #0x1c]
  2f97b0: 9b07         	ldr	r3, [sp, #0x1c]
  2f97b2: 681b         	ldr	r3, [r3]
  2f97b4: 334c         	adds	r3, #0x4c
  2f97b6: 681b         	ldr	r3, [r3]
  2f97b8: aa0a         	add	r2, sp, #0x28
  2f97ba: 9807         	ldr	r0, [sp, #0x1c]
  2f97bc: 4611         	mov	r1, r2
  2f97be: 4798         	blx	r3
  2f97c0: 9b07         	ldr	r3, [sp, #0x1c]
  2f97c2: 681b         	ldr	r3, [r3]
  2f97c4: 3340         	adds	r3, #0x40
  2f97c6: 681b         	ldr	r3, [r3]
  2f97c8: 9807         	ldr	r0, [sp, #0x1c]
  2f97ca: f243 3133    	movw	r1, #0x3333
  2f97ce: f6c3 61b3    	movt	r1, #0x3eb3
  2f97d2: 4798         	blx	r3
  2f97d4: 9b05         	ldr	r3, [sp, #0x14]
  2f97d6: 681b         	ldr	r3, [r3]
  2f97d8: 33c8         	adds	r3, #0xc8
  2f97da: 681b         	ldr	r3, [r3]
  2f97dc: 9a05         	ldr	r2, [sp, #0x14]
  2f97de: 4610         	mov	r0, r2
  2f97e0: 9907         	ldr	r1, [sp, #0x1c]
  2f97e2: 4798         	blx	r3
  2f97e4: 9b05         	ldr	r3, [sp, #0x14]
  2f97e6: 681b         	ldr	r3, [r3]
  2f97e8: 33c8         	adds	r3, #0xc8
  2f97ea: 681b         	ldr	r3, [r3]
  2f97ec: 9a05         	ldr	r2, [sp, #0x14]
  2f97ee: 4610         	mov	r0, r2
  2f97f0: 9906         	ldr	r1, [sp, #0x18]
  2f97f2: 4798         	blx	r3
  2f97f4: 9b05         	ldr	r3, [sp, #0x14]
  2f97f6: e004         	b	0x2f9802 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0x8
  2f97f8: 4620         	mov	r0, r4
  2f97fa: f08e f453    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48e8a6
  2f97fe: f08e f455    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e8aa
  2f9802: 4618         	mov	r0, r3
  2f9804: b00c         	add	sp, #0x30
  2f9806: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f9807); words below are literal-pool data ---
  2f9808: b004         	add	sp, #0x10
  2f980a: 004c         	lsls	r4, r1, #0x1
  2f980c: afa0         	add	r7, sp, #0x280
  2f980e: 004c         	lsls	r4, r1, #0x1

// ==== SkinColorTableView::tableCellAtIndex
//      file offset 0x2f9810 (= ELF address; Ghidra 0x309810), 8 bytes, Thumb-2
  2f9810: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f9814: f7ff bf5e    	b.w	0x2f96d4 <SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x144

// ==== SkinColorTableView::tableCellSizeForIndex
//      file offset 0x2f9818 (= ELF address; Ghidra 0x309818), 54 bytes, Thumb-2
  2f9818: b500         	push	{lr}
  2f981a: b085         	sub	sp, #0x14
  2f981c: 9003         	str	r0, [sp, #0xc]
  2f981e: 9102         	str	r1, [sp, #0x8]
  2f9820: 9201         	str	r2, [sp, #0x4]
  2f9822: 9300         	str	r3, [sp]
  2f9824: 9b01         	ldr	r3, [sp, #0x4]
  2f9826: 681b         	ldr	r3, [r3]
  2f9828: 338c         	adds	r3, #0x8c
  2f982a: 681b         	ldr	r3, [r3]
  2f982c: 9a01         	ldr	r2, [sp, #0x4]
  2f982e: 4610         	mov	r0, r2
  2f9830: 4798         	blx	r3
  2f9832: 4603         	mov	r3, r0
  2f9834: 681b         	ldr	r3, [r3]
  2f9836: 9803         	ldr	r0, [sp, #0xc]
  2f9838: 4619         	mov	r1, r3
  2f983a: f04f 0200    	mov.w	r2, #0x0
  2f983e: f2c4 2220    	movt	r2, #0x4220
  2f9842: f299 fc27    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x29984e
  2f9846: 9803         	ldr	r0, [sp, #0xc]
  2f9848: b005         	add	sp, #0x14
  2f984a: f85d fb04    	ldr	pc, [sp], #4

// ==== SkinColorTableView::tableCellSizeForIndex
//      file offset 0x2f9850 (= ELF address; Ghidra 0x309850), 8 bytes, Thumb-2
  2f9850: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2f9854: f7ff bfe0    	b.w	0x2f9818 <SkinColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcb44 (= ELF address; Ghidra 0x30cb44), 128 bytes, Thumb-2
  2fcb44: b500         	push	{lr}
  2fcb46: b083         	sub	sp, #0xc
  2fcb48: 9001         	str	r0, [sp, #0x4]
  2fcb4a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fcbbc <SkinColorTableView::~SkinColorTableView()+0x78>
  2fcb4c: 447b         	add	r3, pc
  2fcb4e: 9a01         	ldr	r2, [sp, #0x4]
  2fcb50: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb52: 5859         	ldr	r1, [r3, r1]
  2fcb54: 3108         	adds	r1, #0x8
  2fcb56: 6011         	str	r1, [r2]
  2fcb58: 9a01         	ldr	r2, [sp, #0x4]
  2fcb5a: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb5c: 5859         	ldr	r1, [r3, r1]
  2fcb5e: f501 710b    	add.w	r1, r1, #0x22c
  2fcb62: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fcb66: 9a01         	ldr	r2, [sp, #0x4]
  2fcb68: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb6a: 5859         	ldr	r1, [r3, r1]
  2fcb6c: f501 7117    	add.w	r1, r1, #0x25c
  2fcb70: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fcb74: 9a01         	ldr	r2, [sp, #0x4]
  2fcb76: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb78: 5859         	ldr	r1, [r3, r1]
  2fcb7a: f501 711a    	add.w	r1, r1, #0x268
  2fcb7e: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fcb82: 9a01         	ldr	r2, [sp, #0x4]
  2fcb84: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb86: 5859         	ldr	r1, [r3, r1]
  2fcb88: f501 711e    	add.w	r1, r1, #0x278
  2fcb8c: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fcb90: 9a01         	ldr	r2, [sp, #0x4]
  2fcb92: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fcbc0 <SkinColorTableView::~SkinColorTableView()+0x7c>
  2fcb94: 585b         	ldr	r3, [r3, r1]
  2fcb96: f503 7324    	add.w	r3, r3, #0x290
  2fcb9a: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fcb9e: 9b01         	ldr	r3, [sp, #0x4]
  2fcba0: 4618         	mov	r0, r3
  2fcba2: f7ff f837    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xf92
  2fcba6: 2300         	movs	r3, #0x0
  2fcba8: 2b00         	cmp	r3, #0x0
  2fcbaa: d002         	beq	0x2fcbb2 <SkinColorTableView::~SkinColorTableView()+0x6e> @ imm = #0x4
  2fcbac: 9801         	ldr	r0, [sp, #0x4]
  2fcbae: f08b f279    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b4f2
  2fcbb2: 9b01         	ldr	r3, [sp, #0x4]
  2fcbb4: 4618         	mov	r0, r3
  2fcbb6: b003         	add	sp, #0xc
  2fcbb8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fcbbb); words below are literal-pool data ---
  2fcbbc: 5ebc         	ldrsh	r4, [r7, r2]
  2fcbbe: 0063         	lsls	r3, r4, #0x1
  2fcbc0: d854         	bhi	0x2fcc6c <PartTableView::~PartTableView()+0x5c> @ imm = #0xa8
  2fcbc2: ffff f5a0    	<unknown>

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcbc4 (= ELF address; Ghidra 0x30cbc4), 8 bytes, Thumb-2
  2fcbc4: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fcbc8: f7ff bfbc    	b.w	0x2fcb44 <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x88

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcbcc (= ELF address; Ghidra 0x30cbcc), 8 bytes, Thumb-2
  2fcbcc: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fcbd0: f7ff bfb8    	b.w	0x2fcb44 <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x90

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcbd4 (= ELF address; Ghidra 0x30cbd4), 8 bytes, Thumb-2
  2fcbd4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fcbd8: f7ff bfb4    	b.w	0x2fcb44 <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x98

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcbdc (= ELF address; Ghidra 0x30cbdc), 28 bytes, Thumb-2
  2fcbdc: b500         	push	{lr}
  2fcbde: b083         	sub	sp, #0xc
  2fcbe0: 9001         	str	r0, [sp, #0x4]
  2fcbe2: 9801         	ldr	r0, [sp, #0x4]
  2fcbe4: f7ff ffae    	bl	0x2fcb44 <SkinColorTableView::~SkinColorTableView()> @ imm = #-0xa4
  2fcbe8: 9801         	ldr	r0, [sp, #0x4]
  2fcbea: f08b f25b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b4b6
  2fcbee: 9b01         	ldr	r3, [sp, #0x4]
  2fcbf0: 4618         	mov	r0, r3
  2fcbf2: b003         	add	sp, #0xc
  2fcbf4: f85d fb04    	ldr	pc, [sp], #4

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcbf8 (= ELF address; Ghidra 0x30cbf8), 6 bytes, Thumb-2
  2fcbf8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fcbfc: e7ee         	b	0x2fcbdc <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x24

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcc00 (= ELF address; Ghidra 0x30cc00), 6 bytes, Thumb-2
  2fcc00: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fcc04: e7ea         	b	0x2fcbdc <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x2c

// ==== SkinColorTableView::~SkinColorTableView
//      file offset 0x2fcc08 (= ELF address; Ghidra 0x30cc08), 6 bytes, Thumb-2
  2fcc08: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fcc0c: e7e6         	b	0x2fcbdc <SkinColorTableView::~SkinColorTableView()> @ imm = #-0x34
