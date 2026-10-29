// FootTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FootTableView.cpp

// ==== FootTableView::FootTableView
//      file offset 0x2ead84 (= ELF address; Ghidra 0x2fad84), 116 bytes, Thumb-2
  2ead84: b510         	push	{r4, lr}
  2ead86: b082         	sub	sp, #0x8
  2ead88: 9001         	str	r0, [sp, #0x4]
  2ead8a: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2eadf0 <FootTableView::FootTableView()+0x6c>
  2ead8c: 447c         	add	r4, pc
  2ead8e: 9b01         	ldr	r3, [sp, #0x4]
  2ead90: 4618         	mov	r0, r3
  2ead92: f085 ff85    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x85f0a
  2ead96: 9b01         	ldr	r3, [sp, #0x4]
  2ead98: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2ead9a: 58a2         	ldr	r2, [r4, r2]
  2ead9c: 3208         	adds	r2, #0x8
  2ead9e: 601a         	str	r2, [r3]
  2eada0: 9b01         	ldr	r3, [sp, #0x4]
  2eada2: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2eada4: 58a2         	ldr	r2, [r4, r2]
  2eada6: f502 720b    	add.w	r2, r2, #0x22c
  2eadaa: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2eadae: 9b01         	ldr	r3, [sp, #0x4]
  2eadb0: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2eadb2: 58a2         	ldr	r2, [r4, r2]
  2eadb4: f502 7217    	add.w	r2, r2, #0x25c
  2eadb8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2eadbc: 9b01         	ldr	r3, [sp, #0x4]
  2eadbe: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2eadc0: 58a2         	ldr	r2, [r4, r2]
  2eadc2: f502 721a    	add.w	r2, r2, #0x268
  2eadc6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2eadca: 9b01         	ldr	r3, [sp, #0x4]
  2eadcc: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2eadce: 58a2         	ldr	r2, [r4, r2]
  2eadd0: f502 721e    	add.w	r2, r2, #0x278
  2eadd4: f8c3 2198    	str.w	r2, [r3, #0x198]
  2eadd8: 9b01         	ldr	r3, [sp, #0x4]
  2eadda: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2eadf4 <FootTableView::FootTableView()+0x70>
  2eaddc: 58a2         	ldr	r2, [r4, r2]
  2eadde: f502 7224    	add.w	r2, r2, #0x290
  2eade2: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2eade6: 9b01         	ldr	r3, [sp, #0x4]
  2eade8: 4618         	mov	r0, r3
  2eadea: b002         	add	sp, #0x8
  2eadec: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eaded); words below are literal-pool data ---
  2eadee: bf00         	nop
  2eadf0: 7c7c         	ldrb	r4, [r7, #0x11]
  2eadf2: 0064         	lsls	r4, r4, #0x1
  2eadf4: d890         	bhi	0x2ead18 <LegTableView::LegTableView()+0x8> @ imm = #-0xe0
  2eadf6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== FootTableView::numberOfCellsInTableView
//      file offset 0x2fb5f0 (= ELF address; Ghidra 0x30b5f0), 14 bytes, Thumb-2
  2fb5f0: b082         	sub	sp, #0x8
  2fb5f2: 9001         	str	r0, [sp, #0x4]
  2fb5f4: 9100         	str	r1, [sp]
  2fb5f6: 2305         	movs	r3, #0x5
  2fb5f8: 4618         	mov	r0, r3
  2fb5fa: b002         	add	sp, #0x8
  2fb5fc: 4770         	bx	lr

// ==== FootTableView::numberOfCellsInTableView
//      file offset 0x2fb600 (= ELF address; Ghidra 0x30b600), 8 bytes, Thumb-2
  2fb600: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb604: f7ff bff4    	b.w	0x2fb5f0 <FootTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== FootTableView::getIdentifier
//      file offset 0x2fb608 (= ELF address; Ghidra 0x30b608), 68 bytes, Thumb-2
  2fb608: b500         	push	{lr}
  2fb60a: b085         	sub	sp, #0x14
  2fb60c: 9001         	str	r0, [sp, #0x4]
  2fb60e: 9100         	str	r1, [sp]
  2fb610: ab03         	add	r3, sp, #0xc
  2fb612: 4618         	mov	r0, r3
  2fb614: f08e f6ee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x48eddc
  2fb618: ab03         	add	r3, sp, #0xc
  2fb61a: 9801         	ldr	r0, [sp, #0x4]
  2fb61c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2fb648 <FootTableView::getIdentifier()+0x40>
  2fb61e: 447a         	add	r2, pc
  2fb620: 4611         	mov	r1, r2
  2fb622: 461a         	mov	r2, r3
  2fb624: f0bb f21c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bb438
  2fb628: ab03         	add	r3, sp, #0xc
  2fb62a: 4618         	mov	r0, r3
  2fb62c: f08e f6e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48edcc
  2fb630: e005         	b	0x2fb63e <FootTableView::getIdentifier()+0x36> @ imm = #0xa
  2fb632: ab03         	add	r3, sp, #0xc
  2fb634: 4618         	mov	r0, r3
  2fb636: f08e f6e1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x48edc2
  2fb63a: f08c f537    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48ca6e
  2fb63e: 9801         	ldr	r0, [sp, #0x4]
  2fb640: b005         	add	sp, #0x14
  2fb642: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fb645); words below are literal-pool data ---
  2fb646: bf00         	nop
  2fb648: 91d6         	str	r1, [sp, #0x358]
  2fb64a: 004c         	lsls	r4, r1, #0x1

// ==== FootTableView::tableCellAtIndex
//      file offset 0x2fb64c (= ELF address; Ghidra 0x30b64c), 364 bytes, Thumb-2
  2fb64c: b510         	push	{r4, lr}
  2fb64e: b090         	sub	sp, #0x40
  2fb650: 9003         	str	r0, [sp, #0xc]
  2fb652: 9102         	str	r1, [sp, #0x8]
  2fb654: 9201         	str	r2, [sp, #0x4]
  2fb656: 9802         	ldr	r0, [sp, #0x8]
  2fb658: f158 f8de    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x1581bc
  2fb65c: 4603         	mov	r3, r0
  2fb65e: 9305         	str	r3, [sp, #0x14]
  2fb660: 9b05         	ldr	r3, [sp, #0x14]
  2fb662: 2b00         	cmp	r3, #0x0
  2fb664: d006         	beq	0x2fb674 <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2fb666: 9805         	ldr	r0, [sp, #0x14]
  2fb668: f15a fcc0    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15a980
  2fb66c: 4602         	mov	r2, r0
  2fb66e: 9b01         	ldr	r3, [sp, #0x4]
  2fb670: 429a         	cmp	r2, r3
  2fb672: d001         	beq	0x2fb678 <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2fb674: 2301         	movs	r3, #0x1
  2fb676: e000         	b	0x2fb67a <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2fb678: 2300         	movs	r3, #0x0
  2fb67a: 2b00         	cmp	r3, #0x0
  2fb67c: f000 808e    	beq.w	0x2fb79c <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x150> @ imm = #0x11c
  2fb680: 20ec         	movs	r0, #0xec
  2fb682: f08c f16f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48c2de
  2fb686: 4603         	mov	r3, r0
  2fb688: 461c         	mov	r4, r3
  2fb68a: 4620         	mov	r0, r4
  2fb68c: f7fd fe96    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x22d4
  2fb690: 9405         	str	r4, [sp, #0x14]
  2fb692: 9b05         	ldr	r3, [sp, #0x14]
  2fb694: 4618         	mov	r0, r3
  2fb696: f29c fc31    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29c862
  2fb69a: 9b03         	ldr	r3, [sp, #0xc]
  2fb69c: 681b         	ldr	r3, [r3]
  2fb69e: f503 7306    	add.w	r3, r3, #0x218
  2fb6a2: 681c         	ldr	r4, [r3]
  2fb6a4: ab08         	add	r3, sp, #0x20
  2fb6a6: 4618         	mov	r0, r3
  2fb6a8: 9903         	ldr	r1, [sp, #0xc]
  2fb6aa: 9a02         	ldr	r2, [sp, #0x8]
  2fb6ac: 9b01         	ldr	r3, [sp, #0x4]
  2fb6ae: 47a0         	blx	r4
  2fb6b0: ed9d 7a08    	vldr	s14, [sp, #32]
  2fb6b4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb6b8: eec7 6a27    	vdiv.f32	s13, s14, s15
  2fb6bc: ed9d 7a09    	vldr	s14, [sp, #36]
  2fb6c0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2fb6c4: eec7 7a27    	vdiv.f32	s15, s14, s15
  2fb6c8: ab0a         	add	r3, sp, #0x28
  2fb6ca: 4618         	mov	r0, r3
  2fb6cc: ee16 1a90    	vmov	r1, s13
  2fb6d0: ee17 2a90    	vmov	r2, s15
  2fb6d4: f297 fb0c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x297618
  2fb6d8: f7f8 f9ee    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7c24
  2fb6dc: 4603         	mov	r3, r0
  2fb6de: f603 63bc    	addw	r3, r3, #0xebc
  2fb6e2: aa0c         	add	r2, sp, #0x30
  2fb6e4: 4610         	mov	r0, r2
  2fb6e6: 4619         	mov	r1, r3
  2fb6e8: f297 fe16    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x297c2c
  2fb6ec: ab0c         	add	r3, sp, #0x30
  2fb6ee: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x2fb7b0 <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x164>
  2fb6f0: 447a         	add	r2, pc
  2fb6f2: 4610         	mov	r0, r2
  2fb6f4: 4619         	mov	r1, r3
  2fb6f6: f2dc fd83    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x2dcb06
  2fb6fa: 4603         	mov	r3, r0
  2fb6fc: 9306         	str	r3, [sp, #0x18]
  2fb6fe: 9b06         	ldr	r3, [sp, #0x18]
  2fb700: 681b         	ldr	r3, [r3]
  2fb702: f503 73fa    	add.w	r3, r3, #0x1f4
  2fb706: 681b         	ldr	r3, [r3]
  2fb708: 9806         	ldr	r0, [sp, #0x18]
  2fb70a: 4798         	blx	r3
  2fb70c: 4603         	mov	r3, r0
  2fb70e: 4618         	mov	r0, r3
  2fb710: f2f6 fc38    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x2f6870
  2fb714: 9b06         	ldr	r3, [sp, #0x18]
  2fb716: 681b         	ldr	r3, [r3]
  2fb718: f503 73de    	add.w	r3, r3, #0x1bc
  2fb71c: 681c         	ldr	r4, [r3]
  2fb71e: f7f8 f9cb    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x7c6a
  2fb722: 4601         	mov	r1, r0
  2fb724: 9a01         	ldr	r2, [sp, #0x4]
  2fb726: 4613         	mov	r3, r2
  2fb728: 005b         	lsls	r3, r3, #0x1
  2fb72a: 4413         	add	r3, r2
  2fb72c: f603 63d8    	addw	r3, r3, #0xed8
  2fb730: 440b         	add	r3, r1
  2fb732: 3304         	adds	r3, #0x4
  2fb734: 9806         	ldr	r0, [sp, #0x18]
  2fb736: 4619         	mov	r1, r3
  2fb738: 47a0         	blx	r4
  2fb73a: 9b06         	ldr	r3, [sp, #0x18]
  2fb73c: 681b         	ldr	r3, [r3]
  2fb73e: 334c         	adds	r3, #0x4c
  2fb740: 681b         	ldr	r3, [r3]
  2fb742: aa0a         	add	r2, sp, #0x28
  2fb744: 9806         	ldr	r0, [sp, #0x18]
  2fb746: 4611         	mov	r1, r2
  2fb748: 4798         	blx	r3
  2fb74a: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2fb7b4 <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x168>
  2fb74c: 447b         	add	r3, pc
  2fb74e: 4618         	mov	r0, r3
  2fb750: f2dc fdd8    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2dcbb0
  2fb754: 4603         	mov	r3, r0
  2fb756: 9307         	str	r3, [sp, #0x1c]
  2fb758: 9b07         	ldr	r3, [sp, #0x1c]
  2fb75a: 681b         	ldr	r3, [r3]
  2fb75c: 334c         	adds	r3, #0x4c
  2fb75e: 681b         	ldr	r3, [r3]
  2fb760: aa0a         	add	r2, sp, #0x28
  2fb762: 9807         	ldr	r0, [sp, #0x1c]
  2fb764: 4611         	mov	r1, r2
  2fb766: 4798         	blx	r3
  2fb768: 9b07         	ldr	r3, [sp, #0x1c]
  2fb76a: 681b         	ldr	r3, [r3]
  2fb76c: 3340         	adds	r3, #0x40
  2fb76e: 681b         	ldr	r3, [r3]
  2fb770: 9807         	ldr	r0, [sp, #0x1c]
  2fb772: f246 6166    	movw	r1, #0x6666
  2fb776: f6c3 61e6    	movt	r1, #0x3ee6
  2fb77a: 4798         	blx	r3
  2fb77c: 9b05         	ldr	r3, [sp, #0x14]
  2fb77e: 681b         	ldr	r3, [r3]
  2fb780: 33c8         	adds	r3, #0xc8
  2fb782: 681b         	ldr	r3, [r3]
  2fb784: 9a05         	ldr	r2, [sp, #0x14]
  2fb786: 4610         	mov	r0, r2
  2fb788: 9907         	ldr	r1, [sp, #0x1c]
  2fb78a: 4798         	blx	r3
  2fb78c: 9b05         	ldr	r3, [sp, #0x14]
  2fb78e: 681b         	ldr	r3, [r3]
  2fb790: 33c8         	adds	r3, #0xc8
  2fb792: 681b         	ldr	r3, [r3]
  2fb794: 9a05         	ldr	r2, [sp, #0x14]
  2fb796: 4610         	mov	r0, r2
  2fb798: 9906         	ldr	r1, [sp, #0x18]
  2fb79a: 4798         	blx	r3
  2fb79c: 9b05         	ldr	r3, [sp, #0x14]
  2fb79e: e004         	b	0x2fb7aa <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x15e> @ imm = #0x8
  2fb7a0: 4620         	mov	r0, r4
  2fb7a2: f08c f47f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c8fe
  2fb7a6: f08c f481    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48c902
  2fb7aa: 4618         	mov	r0, r3
  2fb7ac: b010         	add	sp, #0x40
  2fb7ae: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fb7af); words below are literal-pool data ---
  2fb7b0: 9040         	str	r0, [sp, #0x100]
  2fb7b2: 004c         	lsls	r4, r1, #0x1
  2fb7b4: 8ff8         	ldrh	r0, [r7, #0x3e]
  2fb7b6: 004c         	lsls	r4, r1, #0x1

// ==== FootTableView::tableCellAtIndex
//      file offset 0x2fb7b8 (= ELF address; Ghidra 0x30b7b8), 8 bytes, Thumb-2
  2fb7b8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fb7bc: f7ff bf46    	b.w	0x2fb64c <FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x174

// ==== FootTableView::tableCellSizeForIndex
//      file offset 0x2fb7c0 (= ELF address; Ghidra 0x30b7c0), 54 bytes, Thumb-2
  2fb7c0: b500         	push	{lr}
  2fb7c2: b085         	sub	sp, #0x14
  2fb7c4: 9003         	str	r0, [sp, #0xc]
  2fb7c6: 9102         	str	r1, [sp, #0x8]
  2fb7c8: 9201         	str	r2, [sp, #0x4]
  2fb7ca: 9300         	str	r3, [sp]
  2fb7cc: 9b01         	ldr	r3, [sp, #0x4]
  2fb7ce: 681b         	ldr	r3, [r3]
  2fb7d0: 338c         	adds	r3, #0x8c
  2fb7d2: 681b         	ldr	r3, [r3]
  2fb7d4: 9a01         	ldr	r2, [sp, #0x4]
  2fb7d6: 4610         	mov	r0, r2
  2fb7d8: 4798         	blx	r3
  2fb7da: 4603         	mov	r3, r0
  2fb7dc: 681b         	ldr	r3, [r3]
  2fb7de: 9803         	ldr	r0, [sp, #0xc]
  2fb7e0: 4619         	mov	r1, r3
  2fb7e2: f04f 0200    	mov.w	r2, #0x0
  2fb7e6: f2c4 2248    	movt	r2, #0x4248
  2fb7ea: f297 fc53    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2978a6
  2fb7ee: 9803         	ldr	r0, [sp, #0xc]
  2fb7f0: b005         	add	sp, #0x14
  2fb7f2: f85d fb04    	ldr	pc, [sp], #4

// ==== FootTableView::tableCellSizeForIndex
//      file offset 0x2fb7f8 (= ELF address; Ghidra 0x30b7f8), 8 bytes, Thumb-2
  2fb7f8: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2fb7fc: f7ff bfe0    	b.w	0x2fb7c0 <FootTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== FootTableView::~FootTableView
//      file offset 0x2fbe84 (= ELF address; Ghidra 0x30be84), 128 bytes, Thumb-2
  2fbe84: b500         	push	{lr}
  2fbe86: b083         	sub	sp, #0xc
  2fbe88: 9001         	str	r0, [sp, #0x4]
  2fbe8a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fbefc <FootTableView::~FootTableView()+0x78>
  2fbe8c: 447b         	add	r3, pc
  2fbe8e: 9a01         	ldr	r2, [sp, #0x4]
  2fbe90: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbe92: 5859         	ldr	r1, [r3, r1]
  2fbe94: 3108         	adds	r1, #0x8
  2fbe96: 6011         	str	r1, [r2]
  2fbe98: 9a01         	ldr	r2, [sp, #0x4]
  2fbe9a: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbe9c: 5859         	ldr	r1, [r3, r1]
  2fbe9e: f501 710b    	add.w	r1, r1, #0x22c
  2fbea2: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fbea6: 9a01         	ldr	r2, [sp, #0x4]
  2fbea8: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbeaa: 5859         	ldr	r1, [r3, r1]
  2fbeac: f501 7117    	add.w	r1, r1, #0x25c
  2fbeb0: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fbeb4: 9a01         	ldr	r2, [sp, #0x4]
  2fbeb6: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbeb8: 5859         	ldr	r1, [r3, r1]
  2fbeba: f501 711a    	add.w	r1, r1, #0x268
  2fbebe: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fbec2: 9a01         	ldr	r2, [sp, #0x4]
  2fbec4: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbec6: 5859         	ldr	r1, [r3, r1]
  2fbec8: f501 711e    	add.w	r1, r1, #0x278
  2fbecc: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fbed0: 9a01         	ldr	r2, [sp, #0x4]
  2fbed2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fbf00 <FootTableView::~FootTableView()+0x7c>
  2fbed4: 585b         	ldr	r3, [r3, r1]
  2fbed6: f503 7324    	add.w	r3, r3, #0x290
  2fbeda: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fbede: 9b01         	ldr	r3, [sp, #0x4]
  2fbee0: 4618         	mov	r0, r3
  2fbee2: f7ff fe97    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0x2d2
  2fbee6: 2300         	movs	r3, #0x0
  2fbee8: 2b00         	cmp	r3, #0x0
  2fbeea: d002         	beq	0x2fbef2 <FootTableView::~FootTableView()+0x6e> @ imm = #0x4
  2fbeec: 9801         	ldr	r0, [sp, #0x4]
  2fbeee: f08c f0d9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c1b2
  2fbef2: 9b01         	ldr	r3, [sp, #0x4]
  2fbef4: 4618         	mov	r0, r3
  2fbef6: b003         	add	sp, #0xc
  2fbef8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fbefb); words below are literal-pool data ---
  2fbefc: 6b7c         	ldr	r4, [r7, #0x34]
  2fbefe: 0063         	lsls	r3, r4, #0x1
  2fbf00: d890         	bhi	0x2fbe24 <HandTableView::~HandTableView()+0x6c> @ imm = #-0xe0
  2fbf02: ffff f5a0    	<unknown>

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf04 (= ELF address; Ghidra 0x30bf04), 8 bytes, Thumb-2
  2fbf04: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbf08: f7ff bfbc    	b.w	0x2fbe84 <FootTableView::~FootTableView()> @ imm = #-0x88

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf0c (= ELF address; Ghidra 0x30bf0c), 8 bytes, Thumb-2
  2fbf0c: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbf10: f7ff bfb8    	b.w	0x2fbe84 <FootTableView::~FootTableView()> @ imm = #-0x90

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf14 (= ELF address; Ghidra 0x30bf14), 8 bytes, Thumb-2
  2fbf14: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbf18: f7ff bfb4    	b.w	0x2fbe84 <FootTableView::~FootTableView()> @ imm = #-0x98

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf1c (= ELF address; Ghidra 0x30bf1c), 28 bytes, Thumb-2
  2fbf1c: b500         	push	{lr}
  2fbf1e: b083         	sub	sp, #0xc
  2fbf20: 9001         	str	r0, [sp, #0x4]
  2fbf22: 9801         	ldr	r0, [sp, #0x4]
  2fbf24: f7ff ffae    	bl	0x2fbe84 <FootTableView::~FootTableView()> @ imm = #-0xa4
  2fbf28: 9801         	ldr	r0, [sp, #0x4]
  2fbf2a: f08c f0bb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48c176
  2fbf2e: 9b01         	ldr	r3, [sp, #0x4]
  2fbf30: 4618         	mov	r0, r3
  2fbf32: b003         	add	sp, #0xc
  2fbf34: f85d fb04    	ldr	pc, [sp], #4

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf38 (= ELF address; Ghidra 0x30bf38), 6 bytes, Thumb-2
  2fbf38: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fbf3c: e7ee         	b	0x2fbf1c <FootTableView::~FootTableView()> @ imm = #-0x24

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf40 (= ELF address; Ghidra 0x30bf40), 6 bytes, Thumb-2
  2fbf40: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fbf44: e7ea         	b	0x2fbf1c <FootTableView::~FootTableView()> @ imm = #-0x2c

// ==== FootTableView::~FootTableView
//      file offset 0x2fbf48 (= ELF address; Ghidra 0x30bf48), 6 bytes, Thumb-2
  2fbf48: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fbf4c: e7e6         	b	0x2fbf1c <FootTableView::~FootTableView()> @ imm = #-0x34
