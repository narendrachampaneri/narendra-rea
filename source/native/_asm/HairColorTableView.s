// HairColorTableView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 16 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HairColorTableView.cpp

// ==== HairColorTableView::HairColorTableView
//      file offset 0x2ea72c (= ELF address; Ghidra 0x2fa72c), 116 bytes, Thumb-2
  2ea72c: b510         	push	{r4, lr}
  2ea72e: b082         	sub	sp, #0x8
  2ea730: 9001         	str	r0, [sp, #0x4]
  2ea732: 4c19         	ldr	r4, [pc, #0x64]         @ 0x2ea798 <HairColorTableView::HairColorTableView()+0x6c>
  2ea734: 447c         	add	r4, pc
  2ea736: 9b01         	ldr	r3, [sp, #0x4]
  2ea738: 4618         	mov	r0, r3
  2ea73a: f086 fab1    	bl	0x370ca0 <MenuTableView::MenuTableView()> @ imm = #0x86562
  2ea73e: 9b01         	ldr	r3, [sp, #0x4]
  2ea740: 4a16         	ldr	r2, [pc, #0x58]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea742: 58a2         	ldr	r2, [r4, r2]
  2ea744: 3208         	adds	r2, #0x8
  2ea746: 601a         	str	r2, [r3]
  2ea748: 9b01         	ldr	r3, [sp, #0x4]
  2ea74a: 4a14         	ldr	r2, [pc, #0x50]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea74c: 58a2         	ldr	r2, [r4, r2]
  2ea74e: f502 720b    	add.w	r2, r2, #0x22c
  2ea752: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea756: 9b01         	ldr	r3, [sp, #0x4]
  2ea758: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea75a: 58a2         	ldr	r2, [r4, r2]
  2ea75c: f502 7217    	add.w	r2, r2, #0x25c
  2ea760: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea764: 9b01         	ldr	r3, [sp, #0x4]
  2ea766: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea768: 58a2         	ldr	r2, [r4, r2]
  2ea76a: f502 721a    	add.w	r2, r2, #0x268
  2ea76e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ea772: 9b01         	ldr	r3, [sp, #0x4]
  2ea774: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea776: 58a2         	ldr	r2, [r4, r2]
  2ea778: f502 721e    	add.w	r2, r2, #0x278
  2ea77c: f8c3 2198    	str.w	r2, [r3, #0x198]
  2ea780: 9b01         	ldr	r3, [sp, #0x4]
  2ea782: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2ea79c <HairColorTableView::HairColorTableView()+0x70>
  2ea784: 58a2         	ldr	r2, [r4, r2]
  2ea786: f502 7224    	add.w	r2, r2, #0x290
  2ea78a: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  2ea78e: 9b01         	ldr	r3, [sp, #0x4]
  2ea790: 4618         	mov	r0, r3
  2ea792: b002         	add	sp, #0x8
  2ea794: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea795); words below are literal-pool data ---
  2ea796: bf00         	nop
  2ea798: 82d4         	strh	r4, [r2, #0x16]
  2ea79a: 0064         	lsls	r4, r4, #0x1
  2ea79c: d858         	bhi	0x2ea850 <EyeTableView::EyeTableView()+0x3c> @ imm = #0xb0
  2ea79e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HairColorTableView::numberOfCellsInTableView
//      file offset 0x2f9858 (= ELF address; Ghidra 0x309858), 14 bytes, Thumb-2
  2f9858: b082         	sub	sp, #0x8
  2f985a: 9001         	str	r0, [sp, #0x4]
  2f985c: 9100         	str	r1, [sp]
  2f985e: 2309         	movs	r3, #0x9
  2f9860: 4618         	mov	r0, r3
  2f9862: b002         	add	sp, #0x8
  2f9864: 4770         	bx	lr

// ==== HairColorTableView::numberOfCellsInTableView
//      file offset 0x2f9868 (= ELF address; Ghidra 0x309868), 8 bytes, Thumb-2
  2f9868: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f986c: f7ff bff4    	b.w	0x2f9858 <HairColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== HairColorTableView::getIdentifier
//      file offset 0x2f9870 (= ELF address; Ghidra 0x309870), 68 bytes, Thumb-2
  2f9870: b500         	push	{lr}
  2f9872: b085         	sub	sp, #0x14
  2f9874: 9001         	str	r0, [sp, #0x4]
  2f9876: 9100         	str	r1, [sp]
  2f9878: ab03         	add	r3, sp, #0xc
  2f987a: 4618         	mov	r0, r3
  2f987c: f090 f5ba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x490b74
  2f9880: ab03         	add	r3, sp, #0xc
  2f9882: 9801         	ldr	r0, [sp, #0x4]
  2f9884: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x2f98b0 <HairColorTableView::getIdentifier()+0x40>
  2f9886: 447a         	add	r2, pc
  2f9888: 4611         	mov	r1, r2
  2f988a: 461a         	mov	r2, r3
  2f988c: f0bd f0e8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4bd1d0
  2f9890: ab03         	add	r3, sp, #0xc
  2f9892: 4618         	mov	r0, r3
  2f9894: f090 f5b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490b64
  2f9898: e005         	b	0x2f98a6 <HairColorTableView::getIdentifier()+0x36> @ imm = #0xa
  2f989a: ab03         	add	r3, sp, #0xc
  2f989c: 4618         	mov	r0, r3
  2f989e: f090 f5ad    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x490b5a
  2f98a2: f08e f403    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e806
  2f98a6: 9801         	ldr	r0, [sp, #0x4]
  2f98a8: b005         	add	sp, #0x14
  2f98aa: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f98ad); words below are literal-pool data ---
  2f98ae: bf00         	nop
  2f98b0: aef2         	add	r6, sp, #0x3c8
  2f98b2: 004c         	lsls	r4, r1, #0x1

// ==== HairColorTableView::tableCellAtIndex
//      file offset 0x2f98b4 (= ELF address; Ghidra 0x3098b4), 316 bytes, Thumb-2
  2f98b4: b510         	push	{r4, lr}
  2f98b6: b08c         	sub	sp, #0x30
  2f98b8: 9003         	str	r0, [sp, #0xc]
  2f98ba: 9102         	str	r1, [sp, #0x8]
  2f98bc: 9201         	str	r2, [sp, #0x4]
  2f98be: 9802         	ldr	r0, [sp, #0x8]
  2f98c0: f159 ffaa    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0x159f54
  2f98c4: 4603         	mov	r3, r0
  2f98c6: 9305         	str	r3, [sp, #0x14]
  2f98c8: 9b05         	ldr	r3, [sp, #0x14]
  2f98ca: 2b00         	cmp	r3, #0x0
  2f98cc: d006         	beq	0x2f98dc <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  2f98ce: 9805         	ldr	r0, [sp, #0x14]
  2f98d0: f15c fb8c    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x15c718
  2f98d4: 4602         	mov	r2, r0
  2f98d6: 9b01         	ldr	r3, [sp, #0x4]
  2f98d8: 429a         	cmp	r2, r3
  2f98da: d001         	beq	0x2f98e0 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  2f98dc: 2301         	movs	r3, #0x1
  2f98de: e000         	b	0x2f98e2 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  2f98e0: 2300         	movs	r3, #0x0
  2f98e2: 2b00         	cmp	r3, #0x0
  2f98e4: d076         	beq	0x2f99d4 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x120> @ imm = #0xec
  2f98e6: 20ec         	movs	r0, #0xec
  2f98e8: f08e f03c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x48e078
  2f98ec: 4603         	mov	r3, r0
  2f98ee: 461c         	mov	r4, r3
  2f98f0: 4620         	mov	r0, r4
  2f98f2: f7ff fd63    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0x53a
  2f98f6: 9405         	str	r4, [sp, #0x14]
  2f98f8: 9b05         	ldr	r3, [sp, #0x14]
  2f98fa: 4618         	mov	r0, r3
  2f98fc: f29e fafe    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x29e5fc
  2f9900: 9b03         	ldr	r3, [sp, #0xc]
  2f9902: 681b         	ldr	r3, [r3]
  2f9904: f503 7306    	add.w	r3, r3, #0x218
  2f9908: 681c         	ldr	r4, [r3]
  2f990a: ab08         	add	r3, sp, #0x20
  2f990c: 4618         	mov	r0, r3
  2f990e: 9903         	ldr	r1, [sp, #0xc]
  2f9910: 9a02         	ldr	r2, [sp, #0x8]
  2f9912: 9b01         	ldr	r3, [sp, #0x4]
  2f9914: 47a0         	blx	r4
  2f9916: ed9d 7a08    	vldr	s14, [sp, #32]
  2f991a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f991e: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f9922: ed9d 7a09    	vldr	s14, [sp, #36]
  2f9926: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f992a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f992e: ab0a         	add	r3, sp, #0x28
  2f9930: 4618         	mov	r0, r3
  2f9932: ee16 1a90    	vmov	r1, s13
  2f9936: ee17 2a90    	vmov	r2, s15
  2f993a: f299 f9d9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2993b2
  2f993e: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x2f99e8 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x134>
  2f9940: 447b         	add	r3, pc
  2f9942: 4618         	mov	r0, r3
  2f9944: f2de fcde    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de9bc
  2f9948: 4603         	mov	r3, r0
  2f994a: 9306         	str	r3, [sp, #0x18]
  2f994c: 9b06         	ldr	r3, [sp, #0x18]
  2f994e: 681b         	ldr	r3, [r3]
  2f9950: f503 73de    	add.w	r3, r3, #0x1bc
  2f9954: 681c         	ldr	r4, [r3]
  2f9956: f7fa f8af    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x5ea2
  2f995a: 4601         	mov	r1, r0
  2f995c: 9a01         	ldr	r2, [sp, #0x4]
  2f995e: 4613         	mov	r3, r2
  2f9960: 005b         	lsls	r3, r3, #0x1
  2f9962: 4413         	add	r3, r2
  2f9964: f503 630f    	add.w	r3, r3, #0x8f0
  2f9968: 440b         	add	r3, r1
  2f996a: 3304         	adds	r3, #0x4
  2f996c: 9806         	ldr	r0, [sp, #0x18]
  2f996e: 4619         	mov	r1, r3
  2f9970: 47a0         	blx	r4
  2f9972: 9b06         	ldr	r3, [sp, #0x18]
  2f9974: 681b         	ldr	r3, [r3]
  2f9976: 334c         	adds	r3, #0x4c
  2f9978: 681b         	ldr	r3, [r3]
  2f997a: aa0a         	add	r2, sp, #0x28
  2f997c: 9806         	ldr	r0, [sp, #0x18]
  2f997e: 4611         	mov	r1, r2
  2f9980: 4798         	blx	r3
  2f9982: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2f99ec <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x138>
  2f9984: 447b         	add	r3, pc
  2f9986: 4618         	mov	r0, r3
  2f9988: f2de fcbc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2de978
  2f998c: 4603         	mov	r3, r0
  2f998e: 9307         	str	r3, [sp, #0x1c]
  2f9990: 9b07         	ldr	r3, [sp, #0x1c]
  2f9992: 681b         	ldr	r3, [r3]
  2f9994: 334c         	adds	r3, #0x4c
  2f9996: 681b         	ldr	r3, [r3]
  2f9998: aa0a         	add	r2, sp, #0x28
  2f999a: 9807         	ldr	r0, [sp, #0x1c]
  2f999c: 4611         	mov	r1, r2
  2f999e: 4798         	blx	r3
  2f99a0: 9b07         	ldr	r3, [sp, #0x1c]
  2f99a2: 681b         	ldr	r3, [r3]
  2f99a4: 3340         	adds	r3, #0x40
  2f99a6: 681b         	ldr	r3, [r3]
  2f99a8: 9807         	ldr	r0, [sp, #0x1c]
  2f99aa: f243 3133    	movw	r1, #0x3333
  2f99ae: f6c3 61b3    	movt	r1, #0x3eb3
  2f99b2: 4798         	blx	r3
  2f99b4: 9b05         	ldr	r3, [sp, #0x14]
  2f99b6: 681b         	ldr	r3, [r3]
  2f99b8: 33c8         	adds	r3, #0xc8
  2f99ba: 681b         	ldr	r3, [r3]
  2f99bc: 9a05         	ldr	r2, [sp, #0x14]
  2f99be: 4610         	mov	r0, r2
  2f99c0: 9907         	ldr	r1, [sp, #0x1c]
  2f99c2: 4798         	blx	r3
  2f99c4: 9b05         	ldr	r3, [sp, #0x14]
  2f99c6: 681b         	ldr	r3, [r3]
  2f99c8: 33c8         	adds	r3, #0xc8
  2f99ca: 681b         	ldr	r3, [r3]
  2f99cc: 9a05         	ldr	r2, [sp, #0x14]
  2f99ce: 4610         	mov	r0, r2
  2f99d0: 9906         	ldr	r1, [sp, #0x18]
  2f99d2: 4798         	blx	r3
  2f99d4: 9b05         	ldr	r3, [sp, #0x14]
  2f99d6: e004         	b	0x2f99e2 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x12e> @ imm = #0x8
  2f99d8: 4620         	mov	r0, r4
  2f99da: f08e f363    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48e6c6
  2f99de: f08e f365    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x48e6ca
  2f99e2: 4618         	mov	r0, r3
  2f99e4: b00c         	add	sp, #0x30
  2f99e6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f99e7); words below are literal-pool data ---
  2f99e8: ae24         	add	r6, sp, #0x90
  2f99ea: 004c         	lsls	r4, r1, #0x1
  2f99ec: adc0         	add	r5, sp, #0x300
  2f99ee: 004c         	lsls	r4, r1, #0x1

// ==== HairColorTableView::tableCellAtIndex
//      file offset 0x2f99f0 (= ELF address; Ghidra 0x3099f0), 8 bytes, Thumb-2
  2f99f0: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2f99f4: f7ff bf5e    	b.w	0x2f98b4 <HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x144

// ==== HairColorTableView::tableCellSizeForIndex
//      file offset 0x2f99f8 (= ELF address; Ghidra 0x3099f8), 54 bytes, Thumb-2
  2f99f8: b500         	push	{lr}
  2f99fa: b085         	sub	sp, #0x14
  2f99fc: 9003         	str	r0, [sp, #0xc]
  2f99fe: 9102         	str	r1, [sp, #0x8]
  2f9a00: 9201         	str	r2, [sp, #0x4]
  2f9a02: 9300         	str	r3, [sp]
  2f9a04: 9b01         	ldr	r3, [sp, #0x4]
  2f9a06: 681b         	ldr	r3, [r3]
  2f9a08: 338c         	adds	r3, #0x8c
  2f9a0a: 681b         	ldr	r3, [r3]
  2f9a0c: 9a01         	ldr	r2, [sp, #0x4]
  2f9a0e: 4610         	mov	r0, r2
  2f9a10: 4798         	blx	r3
  2f9a12: 4603         	mov	r3, r0
  2f9a14: 681b         	ldr	r3, [r3]
  2f9a16: 9803         	ldr	r0, [sp, #0xc]
  2f9a18: 4619         	mov	r1, r3
  2f9a1a: f04f 0200    	mov.w	r2, #0x0
  2f9a1e: f2c4 2220    	movt	r2, #0x4220
  2f9a22: f299 fb37    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x29966e
  2f9a26: 9803         	ldr	r0, [sp, #0xc]
  2f9a28: b005         	add	sp, #0x14
  2f9a2a: f85d fb04    	ldr	pc, [sp], #4

// ==== HairColorTableView::tableCellSizeForIndex
//      file offset 0x2f9a30 (= ELF address; Ghidra 0x309a30), 8 bytes, Thumb-2
  2f9a30: f5a1 71e4    	sub.w	r1, r1, #0x1c8
  2f9a34: f7ff bfe0    	b.w	0x2f99f8 <HairColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x40

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc748 (= ELF address; Ghidra 0x30c748), 128 bytes, Thumb-2
  2fc748: b500         	push	{lr}
  2fc74a: b083         	sub	sp, #0xc
  2fc74c: 9001         	str	r0, [sp, #0x4]
  2fc74e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2fc7c0 <HairColorTableView::~HairColorTableView()+0x78>
  2fc750: 447b         	add	r3, pc
  2fc752: 9a01         	ldr	r2, [sp, #0x4]
  2fc754: 491b         	ldr	r1, [pc, #0x6c]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc756: 5859         	ldr	r1, [r3, r1]
  2fc758: 3108         	adds	r1, #0x8
  2fc75a: 6011         	str	r1, [r2]
  2fc75c: 9a01         	ldr	r2, [sp, #0x4]
  2fc75e: 4919         	ldr	r1, [pc, #0x64]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc760: 5859         	ldr	r1, [r3, r1]
  2fc762: f501 710b    	add.w	r1, r1, #0x22c
  2fc766: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2fc76a: 9a01         	ldr	r2, [sp, #0x4]
  2fc76c: 4915         	ldr	r1, [pc, #0x54]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc76e: 5859         	ldr	r1, [r3, r1]
  2fc770: f501 7117    	add.w	r1, r1, #0x25c
  2fc774: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2fc778: 9a01         	ldr	r2, [sp, #0x4]
  2fc77a: 4912         	ldr	r1, [pc, #0x48]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc77c: 5859         	ldr	r1, [r3, r1]
  2fc77e: f501 711a    	add.w	r1, r1, #0x268
  2fc782: f8c2 10ec    	str.w	r1, [r2, #0xec]
  2fc786: 9a01         	ldr	r2, [sp, #0x4]
  2fc788: 490e         	ldr	r1, [pc, #0x38]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc78a: 5859         	ldr	r1, [r3, r1]
  2fc78c: f501 711e    	add.w	r1, r1, #0x278
  2fc790: f8c2 1198    	str.w	r1, [r2, #0x198]
  2fc794: 9a01         	ldr	r2, [sp, #0x4]
  2fc796: 490b         	ldr	r1, [pc, #0x2c]         @ 0x2fc7c4 <HairColorTableView::~HairColorTableView()+0x7c>
  2fc798: 585b         	ldr	r3, [r3, r1]
  2fc79a: f503 7324    	add.w	r3, r3, #0x290
  2fc79e: f8c2 31c8    	str.w	r3, [r2, #0x1c8]
  2fc7a2: 9b01         	ldr	r3, [sp, #0x4]
  2fc7a4: 4618         	mov	r0, r3
  2fc7a6: f7ff fa35    	bl	0x2fbc14 <MenuTableView::~MenuTableView()> @ imm = #-0xb96
  2fc7aa: 2300         	movs	r3, #0x0
  2fc7ac: 2b00         	cmp	r3, #0x0
  2fc7ae: d002         	beq	0x2fc7b6 <HairColorTableView::~HairColorTableView()+0x6e> @ imm = #0x4
  2fc7b0: 9801         	ldr	r0, [sp, #0x4]
  2fc7b2: f08b f477    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b8ee
  2fc7b6: 9b01         	ldr	r3, [sp, #0x4]
  2fc7b8: 4618         	mov	r0, r3
  2fc7ba: b003         	add	sp, #0xc
  2fc7bc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fc7bf); words below are literal-pool data ---
  2fc7c0: 62b8         	str	r0, [r7, #0x28]
  2fc7c2: 0063         	lsls	r3, r4, #0x1
  2fc7c4: d858         	bhi	0x2fc878 <MouthTableView::~MouthTableView()+0x64> @ imm = #0xb0
  2fc7c6: ffff f5a0    	<unknown>

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc7c8 (= ELF address; Ghidra 0x30c7c8), 8 bytes, Thumb-2
  2fc7c8: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc7cc: f7ff bfbc    	b.w	0x2fc748 <HairColorTableView::~HairColorTableView()> @ imm = #-0x88

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc7d0 (= ELF address; Ghidra 0x30c7d0), 8 bytes, Thumb-2
  2fc7d0: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc7d4: f7ff bfb8    	b.w	0x2fc748 <HairColorTableView::~HairColorTableView()> @ imm = #-0x90

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc7d8 (= ELF address; Ghidra 0x30c7d8), 8 bytes, Thumb-2
  2fc7d8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc7dc: f7ff bfb4    	b.w	0x2fc748 <HairColorTableView::~HairColorTableView()> @ imm = #-0x98

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc7e0 (= ELF address; Ghidra 0x30c7e0), 28 bytes, Thumb-2
  2fc7e0: b500         	push	{lr}
  2fc7e2: b083         	sub	sp, #0xc
  2fc7e4: 9001         	str	r0, [sp, #0x4]
  2fc7e6: 9801         	ldr	r0, [sp, #0x4]
  2fc7e8: f7ff ffae    	bl	0x2fc748 <HairColorTableView::~HairColorTableView()> @ imm = #-0xa4
  2fc7ec: 9801         	ldr	r0, [sp, #0x4]
  2fc7ee: f08b f459    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48b8b2
  2fc7f2: 9b01         	ldr	r3, [sp, #0x4]
  2fc7f4: 4618         	mov	r0, r3
  2fc7f6: b003         	add	sp, #0xc
  2fc7f8: f85d fb04    	ldr	pc, [sp], #4

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc7fc (= ELF address; Ghidra 0x30c7fc), 6 bytes, Thumb-2
  2fc7fc: f5a0 70e4    	sub.w	r0, r0, #0x1c8
  2fc800: e7ee         	b	0x2fc7e0 <HairColorTableView::~HairColorTableView()> @ imm = #-0x24

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc804 (= ELF address; Ghidra 0x30c804), 6 bytes, Thumb-2
  2fc804: f5a0 70cc    	sub.w	r0, r0, #0x198
  2fc808: e7ea         	b	0x2fc7e0 <HairColorTableView::~HairColorTableView()> @ imm = #-0x2c

// ==== HairColorTableView::~HairColorTableView
//      file offset 0x2fc80c (= ELF address; Ghidra 0x30c80c), 6 bytes, Thumb-2
  2fc80c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2fc810: e7e6         	b	0x2fc7e0 <HairColorTableView::~HairColorTableView()> @ imm = #-0x34
