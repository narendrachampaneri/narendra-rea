// AvatarCreator: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 23 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AvatarCreator.cpp

// ==== AvatarCreator::scrollViewDidScroll
//      file offset 0x2ea450 (= ELF address; Ghidra 0x2fa450), 10 bytes, Thumb-2
  2ea450: b082         	sub	sp, #0x8
  2ea452: 9001         	str	r0, [sp, #0x4]
  2ea454: 9100         	str	r1, [sp]
  2ea456: b002         	add	sp, #0x8
  2ea458: 4770         	bx	lr

// ==== AvatarCreator::scrollViewDidScroll
//      file offset 0x2ea45c (= ELF address; Ghidra 0x2fa45c), 6 bytes, Thumb-2
  2ea45c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ea460: e7f6         	b	0x2ea450 <AvatarCreator::scrollViewDidScroll(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== AvatarCreator::scrollViewDidZoom
//      file offset 0x2ea464 (= ELF address; Ghidra 0x2fa464), 10 bytes, Thumb-2
  2ea464: b082         	sub	sp, #0x8
  2ea466: 9001         	str	r0, [sp, #0x4]
  2ea468: 9100         	str	r1, [sp]
  2ea46a: b002         	add	sp, #0x8
  2ea46c: 4770         	bx	lr

// ==== AvatarCreator::scrollViewDidZoom
//      file offset 0x2ea470 (= ELF address; Ghidra 0x2fa470), 6 bytes, Thumb-2
  2ea470: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ea474: e7f6         	b	0x2ea464 <AvatarCreator::scrollViewDidZoom(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== AvatarCreator::tableCellAtIndex
//      file offset 0x2ea478 (= ELF address; Ghidra 0x2fa478), 16 bytes, Thumb-2
  2ea478: b084         	sub	sp, #0x10
  2ea47a: 9003         	str	r0, [sp, #0xc]
  2ea47c: 9102         	str	r1, [sp, #0x8]
  2ea47e: 9201         	str	r2, [sp, #0x4]
  2ea480: 2300         	movs	r3, #0x0
  2ea482: 4618         	mov	r0, r3
  2ea484: b004         	add	sp, #0x10
  2ea486: 4770         	bx	lr

// ==== AvatarCreator::tableCellAtIndex
//      file offset 0x2ea488 (= ELF address; Ghidra 0x2fa488), 6 bytes, Thumb-2
  2ea488: f1a0 00e8    	sub.w	r0, r0, #0xe8
  2ea48c: e7f4         	b	0x2ea478 <AvatarCreator::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x18

// ==== AvatarCreator::numberOfCellsInTableView
//      file offset 0x2ea490 (= ELF address; Ghidra 0x2fa490), 14 bytes, Thumb-2
  2ea490: b082         	sub	sp, #0x8
  2ea492: 9001         	str	r0, [sp, #0x4]
  2ea494: 9100         	str	r1, [sp]
  2ea496: 2300         	movs	r3, #0x0
  2ea498: 4618         	mov	r0, r3
  2ea49a: b002         	add	sp, #0x8
  2ea49c: 4770         	bx	lr

// ==== AvatarCreator::numberOfCellsInTableView
//      file offset 0x2ea4a0 (= ELF address; Ghidra 0x2fa4a0), 6 bytes, Thumb-2
  2ea4a0: f1a0 00e8    	sub.w	r0, r0, #0xe8
  2ea4a4: e7f4         	b	0x2ea490 <AvatarCreator::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x18

// ==== AvatarCreator::AvatarCreator
//      file offset 0x2ea574 (= ELF address; Ghidra 0x2fa574), 92 bytes, Thumb-2
  2ea574: b510         	push	{r4, lr}
  2ea576: b082         	sub	sp, #0x8
  2ea578: 9001         	str	r0, [sp, #0x4]
  2ea57a: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x2ea5c8 <AvatarCreator::AvatarCreator()+0x54>
  2ea57c: 447c         	add	r4, pc
  2ea57e: 9b01         	ldr	r3, [sp, #0x4]
  2ea580: 4618         	mov	r0, r3
  2ea582: f2a5 f859    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x2a50b2
  2ea586: 9b01         	ldr	r3, [sp, #0x4]
  2ea588: 33e4         	adds	r3, #0xe4
  2ea58a: 4618         	mov	r0, r3
  2ea58c: f7ff ff9e    	bl	0x2ea4cc <cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate()> @ imm = #-0xc4
  2ea590: 9b01         	ldr	r3, [sp, #0x4]
  2ea592: 33e8         	adds	r3, #0xe8
  2ea594: 4618         	mov	r0, r3
  2ea596: f7ff ffdb    	bl	0x2ea550 <cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource()> @ imm = #-0x4a
  2ea59a: 9b01         	ldr	r3, [sp, #0x4]
  2ea59c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x2ea5cc <AvatarCreator::AvatarCreator()+0x58>
  2ea59e: 58a2         	ldr	r2, [r4, r2]
  2ea5a0: 3208         	adds	r2, #0x8
  2ea5a2: 601a         	str	r2, [r3]
  2ea5a4: 9b01         	ldr	r3, [sp, #0x4]
  2ea5a6: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2ea5cc <AvatarCreator::AvatarCreator()+0x58>
  2ea5a8: 58a2         	ldr	r2, [r4, r2]
  2ea5aa: f502 72e0    	add.w	r2, r2, #0x1c0
  2ea5ae: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2ea5b2: 9b01         	ldr	r3, [sp, #0x4]
  2ea5b4: 4a05         	ldr	r2, [pc, #0x14]         @ 0x2ea5cc <AvatarCreator::AvatarCreator()+0x58>
  2ea5b6: 58a2         	ldr	r2, [r4, r2]
  2ea5b8: f502 72f4    	add.w	r2, r2, #0x1e8
  2ea5bc: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2ea5c0: 9b01         	ldr	r3, [sp, #0x4]
  2ea5c2: 4618         	mov	r0, r3
  2ea5c4: b002         	add	sp, #0x8
  2ea5c6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ea5c7); words below are literal-pool data ---
  2ea5c8: 848c         	strh	r4, [r1, #0x24]
  2ea5ca: 0064         	lsls	r4, r4, #0x1
  2ea5cc: d848         	bhi	0x2ea660 <HeadTableView::HeadTableView()+0x1c> @ imm = #0x90
  2ea5ce: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AvatarCreator::init
//      file offset 0x2eaee0 (= ELF address; Ghidra 0x2faee0), 4626 bytes, Thumb-2
  2eaee0: b570         	push	{r4, r5, r6, lr}
  2eaee2: b094         	sub	sp, #0x50
  2eaee4: 9003         	str	r0, [sp, #0xc]
  2eaee6: 4c09         	ldr	r4, [pc, #0x24]         @ 0x2eaf0c <AvatarCreator::init()+0x2c>
  2eaee8: 447c         	add	r4, pc
  2eaeea: 9b03         	ldr	r3, [sp, #0xc]
  2eaeec: 4618         	mov	r0, r3
  2eaeee: f2a4 fdad    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x2a4b5a
  2eaef2: 4603         	mov	r3, r0
  2eaef4: f88d 3013    	strb.w	r3, [sp, #0x13]
  2eaef8: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  2eaefc: f083 0301    	eor	r3, r3, #0x1
  2eaf00: b2db         	uxtb	r3, r3
  2eaf02: 2b00         	cmp	r3, #0x0
  2eaf04: d004         	beq	0x2eaf10 <AvatarCreator::init()+0x30> @ imm = #0x8
  2eaf06: 2300         	movs	r3, #0x0
  2eaf08: f001 b8f0    	b.w	0x2ec0ec <AvatarCreator::init()+0x120c> @ imm = #0x11e0
  2eaf0c: 7b20         	ldrb	r0, [r4, #0xc]
  2eaf0e: 0064         	lsls	r4, r4, #0x1
  2eaf10: 9b03         	ldr	r3, [sp, #0xc]
  2eaf12: 2200         	movs	r2, #0x0
  2eaf14: f8c3 2144    	str.w	r2, [r3, #0x144]
  2eaf18: 4bc7         	ldr	r3, [pc, #0x31c]        @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eaf1a: 58e3         	ldr	r3, [r4, r3]
  2eaf1c: ed93 7a00    	vldr	s14, [r3]
  2eaf20: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2eaf24: eec7 6a27    	vdiv.f32	s13, s14, s15
  2eaf28: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eaf2a: 58e3         	ldr	r3, [r4, r3]
  2eaf2c: ed93 7a01    	vldr	s14, [r3, #4]
  2eaf30: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2eaf34: eec7 7a27    	vdiv.f32	s15, s14, s15
  2eaf38: ab0c         	add	r3, sp, #0x30
  2eaf3a: 4618         	mov	r0, r3
  2eaf3c: ee16 1a90    	vmov	r1, s13
  2eaf40: ee17 2a90    	vmov	r2, s15
  2eaf44: f2a7 fed4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a7da8
  2eaf48: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eaf4a: 58e3         	ldr	r3, [r4, r3]
  2eaf4c: ed93 7a00    	vldr	s14, [r3]
  2eaf50: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2eaf54: eec7 6a27    	vdiv.f32	s13, s14, s15
  2eaf58: 4bb7         	ldr	r3, [pc, #0x2dc]        @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eaf5a: 58e3         	ldr	r3, [r4, r3]
  2eaf5c: ed93 7a01    	vldr	s14, [r3, #4]
  2eaf60: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2eaf64: ee87 7a27    	vdiv.f32	s14, s14, s15
  2eaf68: eddf 7ab0    	vldr	s15, [pc, #704]         @ 0x2eb22c <AvatarCreator::init()+0x34c>
  2eaf6c: ee77 7a67    	vsub.f32	s15, s14, s15
  2eaf70: ab0e         	add	r3, sp, #0x38
  2eaf72: 4618         	mov	r0, r3
  2eaf74: ee16 1a90    	vmov	r1, s13
  2eaf78: ee17 2a90    	vmov	r2, s15
  2eaf7c: f2a7 feb8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a7d70
  2eaf80: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x2eb23c <AvatarCreator::init()+0x35c>
  2eaf82: 447b         	add	r3, pc
  2eaf84: 4618         	mov	r0, r3
  2eaf86: f2ed f8fd    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2ed1fa
  2eaf8a: 4603         	mov	r3, r0
  2eaf8c: 9305         	str	r3, [sp, #0x14]
  2eaf8e: 9b05         	ldr	r3, [sp, #0x14]
  2eaf90: 681b         	ldr	r3, [r3]
  2eaf92: 334c         	adds	r3, #0x4c
  2eaf94: 681b         	ldr	r3, [r3]
  2eaf96: aa0c         	add	r2, sp, #0x30
  2eaf98: 9805         	ldr	r0, [sp, #0x14]
  2eaf9a: 4611         	mov	r1, r2
  2eaf9c: 4798         	blx	r3
  2eaf9e: 9b05         	ldr	r3, [sp, #0x14]
  2eafa0: 681b         	ldr	r3, [r3]
  2eafa2: f503 73d2    	add.w	r3, r3, #0x1a4
  2eafa6: 681b         	ldr	r3, [r3]
  2eafa8: 9805         	ldr	r0, [sp, #0x14]
  2eafaa: 2123         	movs	r1, #0x23
  2eafac: 4798         	blx	r3
  2eafae: 9b03         	ldr	r3, [sp, #0xc]
  2eafb0: 681b         	ldr	r3, [r3]
  2eafb2: 33c8         	adds	r3, #0xc8
  2eafb4: 681b         	ldr	r3, [r3]
  2eafb6: 9a03         	ldr	r2, [sp, #0xc]
  2eafb8: 4610         	mov	r0, r2
  2eafba: 9905         	ldr	r1, [sp, #0x14]
  2eafbc: 4798         	blx	r3
  2eafbe: ab10         	add	r3, sp, #0x40
  2eafc0: 4618         	mov	r0, r3
  2eafc2: f04f 0100    	mov.w	r1, #0x0
  2eafc6: f2c4 2186    	movt	r1, #0x4286
  2eafca: f04f 0200    	mov.w	r2, #0x0
  2eafce: f2c4 32a0    	movt	r2, #0x43a0
  2eafd2: f2a8 f85f    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a80be
  2eafd6: f44f 70e8    	mov.w	r0, #0x1d0
  2eafda: f09c f4c3    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c986
  2eafde: 4605         	mov	r5, r0
  2eafe0: 462a         	mov	r2, r5
  2eafe2: f44f 73e8    	mov.w	r3, #0x1d0
  2eafe6: 4610         	mov	r0, r2
  2eafe8: 2100         	movs	r1, #0x0
  2eafea: 461a         	mov	r2, r3
  2eafec: f7ea efc2    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x1507c
  2eaff0: 4628         	mov	r0, r5
  2eaff2: f7ff faed    	bl	0x2ea5d0 <PartTableView::PartTableView()> @ imm = #-0xa26
  2eaff6: 9b03         	ldr	r3, [sp, #0xc]
  2eaff8: f8c3 50f0    	str.w	r5, [r3, #0xf0]
  2eaffc: 9b03         	ldr	r3, [sp, #0xc]
  2eaffe: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2eb002: 461d         	mov	r5, r3
  2eb004: aa12         	add	r2, sp, #0x48
  2eb006: ab10         	add	r3, sp, #0x40
  2eb008: 4610         	mov	r0, r2
  2eb00a: 4619         	mov	r1, r3
  2eb00c: f2a8 f850    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a80a0
  2eb010: ab12         	add	r3, sp, #0x48
  2eb012: 4628         	mov	r0, r5
  2eb014: 4619         	mov	r1, r3
  2eb016: 2200         	movs	r2, #0x0
  2eb018: f085 fe86    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85d0c
  2eb01c: 9b03         	ldr	r3, [sp, #0xc]
  2eb01e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2eb022: 681b         	ldr	r3, [r3]
  2eb024: 3354         	adds	r3, #0x54
  2eb026: 681b         	ldr	r3, [r3]
  2eb028: 9a03         	ldr	r2, [sp, #0xc]
  2eb02a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2eb02e: 4610         	mov	r0, r2
  2eb030: f04f 0100    	mov.w	r1, #0x0
  2eb034: f04f 0200    	mov.w	r2, #0x0
  2eb038: 4798         	blx	r3
  2eb03a: 9b03         	ldr	r3, [sp, #0xc]
  2eb03c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2eb040: 461a         	mov	r2, r3
  2eb042: 9b03         	ldr	r3, [sp, #0xc]
  2eb044: 33e4         	adds	r3, #0xe4
  2eb046: 4610         	mov	r0, r2
  2eb048: 4619         	mov	r1, r3
  2eb04a: f7ff f9f7    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xc12
  2eb04e: 9b03         	ldr	r3, [sp, #0xc]
  2eb050: 681b         	ldr	r3, [r3]
  2eb052: 33c8         	adds	r3, #0xc8
  2eb054: 681b         	ldr	r3, [r3]
  2eb056: 9903         	ldr	r1, [sp, #0xc]
  2eb058: 9a03         	ldr	r2, [sp, #0xc]
  2eb05a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2eb05e: 4608         	mov	r0, r1
  2eb060: 4611         	mov	r1, r2
  2eb062: 4798         	blx	r3
  2eb064: ab12         	add	r3, sp, #0x48
  2eb066: 4618         	mov	r0, r3
  2eb068: f04f 0100    	mov.w	r1, #0x0
  2eb06c: f2c4 2188    	movt	r1, #0x4288
  2eb070: f04f 0200    	mov.w	r2, #0x0
  2eb074: f2c4 325c    	movt	r2, #0x435c
  2eb078: f2a8 f80c    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a8018
  2eb07c: aa10         	add	r2, sp, #0x40
  2eb07e: ab12         	add	r3, sp, #0x48
  2eb080: 4610         	mov	r0, r2
  2eb082: 4619         	mov	r1, r3
  2eb084: f2a8 f834    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a8068
  2eb088: f44f 70e8    	mov.w	r0, #0x1d0
  2eb08c: f09c f46a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c8d4
  2eb090: 4605         	mov	r5, r0
  2eb092: 462a         	mov	r2, r5
  2eb094: f44f 73e8    	mov.w	r3, #0x1d0
  2eb098: 4610         	mov	r0, r2
  2eb09a: 2100         	movs	r1, #0x0
  2eb09c: 461a         	mov	r2, r3
  2eb09e: f7ea ef6a    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x1512c
  2eb0a2: 4628         	mov	r0, r5
  2eb0a4: f7ff face    	bl	0x2ea644 <HeadTableView::HeadTableView()> @ imm = #-0xa64
  2eb0a8: 9b03         	ldr	r3, [sp, #0xc]
  2eb0aa: f8c3 50f4    	str.w	r5, [r3, #0xf4]
  2eb0ae: 9b03         	ldr	r3, [sp, #0xc]
  2eb0b0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2eb0b4: 461d         	mov	r5, r3
  2eb0b6: aa12         	add	r2, sp, #0x48
  2eb0b8: ab10         	add	r3, sp, #0x40
  2eb0ba: 4610         	mov	r0, r2
  2eb0bc: 4619         	mov	r1, r3
  2eb0be: f2a7 fff7    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7fee
  2eb0c2: ab12         	add	r3, sp, #0x48
  2eb0c4: 4628         	mov	r0, r5
  2eb0c6: 4619         	mov	r1, r3
  2eb0c8: 2200         	movs	r2, #0x0
  2eb0ca: f085 fe2d    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85c5a
  2eb0ce: 9b03         	ldr	r3, [sp, #0xc]
  2eb0d0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2eb0d4: 681b         	ldr	r3, [r3]
  2eb0d6: 3354         	adds	r3, #0x54
  2eb0d8: 681b         	ldr	r3, [r3]
  2eb0da: 9a03         	ldr	r2, [sp, #0xc]
  2eb0dc: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2eb0e0: 4611         	mov	r1, r2
  2eb0e2: 4a55         	ldr	r2, [pc, #0x154]        @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eb0e4: 58a2         	ldr	r2, [r4, r2]
  2eb0e6: ed92 7a00    	vldr	s14, [r2]
  2eb0ea: eddf 7a51    	vldr	s15, [pc, #324]         @ 0x2eb230 <AvatarCreator::init()+0x350>
  2eb0ee: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb0f2: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb0f4: 4608         	mov	r0, r1
  2eb0f6: ee17 1a90    	vmov	r1, s15
  2eb0fa: 4798         	blx	r3
  2eb0fc: 9b03         	ldr	r3, [sp, #0xc]
  2eb0fe: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2eb102: 461a         	mov	r2, r3
  2eb104: 9b03         	ldr	r3, [sp, #0xc]
  2eb106: 33e4         	adds	r3, #0xe4
  2eb108: 4610         	mov	r0, r2
  2eb10a: 4619         	mov	r1, r3
  2eb10c: f7ff f996    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xcd4
  2eb110: ab12         	add	r3, sp, #0x48
  2eb112: 4618         	mov	r0, r3
  2eb114: f04f 0100    	mov.w	r1, #0x0
  2eb118: f2c4 2120    	movt	r1, #0x4220
  2eb11c: f04f 0200    	mov.w	r2, #0x0
  2eb120: f2c4 325c    	movt	r2, #0x435c
  2eb124: f2a7 ffb6    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7f6c
  2eb128: aa10         	add	r2, sp, #0x40
  2eb12a: ab12         	add	r3, sp, #0x48
  2eb12c: 4610         	mov	r0, r2
  2eb12e: 4619         	mov	r1, r3
  2eb130: f2a7 ffde    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7fbc
  2eb134: f44f 70e8    	mov.w	r0, #0x1d0
  2eb138: f09c f414    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c828
  2eb13c: 4605         	mov	r5, r0
  2eb13e: 462a         	mov	r2, r5
  2eb140: f44f 73e8    	mov.w	r3, #0x1d0
  2eb144: 4610         	mov	r0, r2
  2eb146: 2100         	movs	r1, #0x0
  2eb148: 461a         	mov	r2, r3
  2eb14a: f7ea ef14    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x151d8
  2eb14e: 4628         	mov	r0, r5
  2eb150: f7ff fab2    	bl	0x2ea6b8 <SkinColorTableView::SkinColorTableView()> @ imm = #-0xa9c
  2eb154: 9b03         	ldr	r3, [sp, #0xc]
  2eb156: f8c3 50f8    	str.w	r5, [r3, #0xf8]
  2eb15a: 9b03         	ldr	r3, [sp, #0xc]
  2eb15c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2eb160: 461d         	mov	r5, r3
  2eb162: aa12         	add	r2, sp, #0x48
  2eb164: ab10         	add	r3, sp, #0x40
  2eb166: 4610         	mov	r0, r2
  2eb168: 4619         	mov	r1, r3
  2eb16a: f2a7 ffa1    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7f42
  2eb16e: ab12         	add	r3, sp, #0x48
  2eb170: 4628         	mov	r0, r5
  2eb172: 4619         	mov	r1, r3
  2eb174: 2200         	movs	r2, #0x0
  2eb176: f085 fdd7    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85bae
  2eb17a: 9b03         	ldr	r3, [sp, #0xc]
  2eb17c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2eb180: 681b         	ldr	r3, [r3]
  2eb182: 3354         	adds	r3, #0x54
  2eb184: 681b         	ldr	r3, [r3]
  2eb186: 9a03         	ldr	r2, [sp, #0xc]
  2eb188: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2eb18c: 4611         	mov	r1, r2
  2eb18e: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x2eb238 <AvatarCreator::init()+0x358>
  2eb190: 58a2         	ldr	r2, [r4, r2]
  2eb192: ed92 7a00    	vldr	s14, [r2]
  2eb196: eddf 7a27    	vldr	s15, [pc, #156]         @ 0x2eb234 <AvatarCreator::init()+0x354>
  2eb19a: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb19e: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb1a0: 4608         	mov	r0, r1
  2eb1a2: ee17 1a90    	vmov	r1, s15
  2eb1a6: 4798         	blx	r3
  2eb1a8: 9b03         	ldr	r3, [sp, #0xc]
  2eb1aa: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2eb1ae: 461a         	mov	r2, r3
  2eb1b0: 9b03         	ldr	r3, [sp, #0xc]
  2eb1b2: 33e4         	adds	r3, #0xe4
  2eb1b4: 4610         	mov	r0, r2
  2eb1b6: 4619         	mov	r1, r3
  2eb1b8: f7ff f940    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xd80
  2eb1bc: ab12         	add	r3, sp, #0x48
  2eb1be: 4618         	mov	r0, r3
  2eb1c0: f04f 0100    	mov.w	r1, #0x0
  2eb1c4: f2c4 2120    	movt	r1, #0x4220
  2eb1c8: f04f 0200    	mov.w	r2, #0x0
  2eb1cc: f2c4 325c    	movt	r2, #0x435c
  2eb1d0: f2a7 ff60    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7ec0
  2eb1d4: aa10         	add	r2, sp, #0x40
  2eb1d6: ab12         	add	r3, sp, #0x48
  2eb1d8: 4610         	mov	r0, r2
  2eb1da: 4619         	mov	r1, r3
  2eb1dc: f2a7 ff88    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7f10
  2eb1e0: f44f 70e8    	mov.w	r0, #0x1d0
  2eb1e4: f09c f3be    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c77c
  2eb1e8: 4605         	mov	r5, r0
  2eb1ea: 462a         	mov	r2, r5
  2eb1ec: f44f 73e8    	mov.w	r3, #0x1d0
  2eb1f0: 4610         	mov	r0, r2
  2eb1f2: 2100         	movs	r1, #0x0
  2eb1f4: 461a         	mov	r2, r3
  2eb1f6: f7ea eebe    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15284
  2eb1fa: 4628         	mov	r0, r5
  2eb1fc: f7ff fa96    	bl	0x2ea72c <HairColorTableView::HairColorTableView()> @ imm = #-0xad4
  2eb200: 9b03         	ldr	r3, [sp, #0xc]
  2eb202: f8c3 5110    	str.w	r5, [r3, #0x110]
  2eb206: 9b03         	ldr	r3, [sp, #0xc]
  2eb208: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2eb20c: 461d         	mov	r5, r3
  2eb20e: aa12         	add	r2, sp, #0x48
  2eb210: ab10         	add	r3, sp, #0x40
  2eb212: 4610         	mov	r0, r2
  2eb214: 4619         	mov	r1, r3
  2eb216: f2a7 ff4b    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7e96
  2eb21a: ab12         	add	r3, sp, #0x48
  2eb21c: 4628         	mov	r0, r5
  2eb21e: 4619         	mov	r1, r3
  2eb220: 2200         	movs	r2, #0x0
  2eb222: f085 fd81    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85b02
  2eb226: 9b03         	ldr	r3, [sp, #0xc]
  2eb228: e00a         	b	0x2eb240 <AvatarCreator::init()+0x360> @ imm = #0x14
  2eb22a: bf00         	nop
  2eb22c: 0000         	movs	r0, r0
  2eb22e: 42aa         	cmp	r2, r5
  2eb230: 0000         	movs	r0, r0
  2eb232: 428c         	cmp	r4, r1
  2eb234: 0000         	movs	r0, r0
  2eb236: 4316         	orrs	r6, r2
  2eb238: d724         	bvc	0x2eb284 <AvatarCreator::init()+0x3a4> @ imm = #0x48
  2eb23a: ffff 80a2    	<unknown>
  2eb23e: 004d         	lsls	r5, r1, #0x1
  2eb240: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2eb244: 681b         	ldr	r3, [r3]
  2eb246: 3354         	adds	r3, #0x54
  2eb248: 681b         	ldr	r3, [r3]
  2eb24a: 9a03         	ldr	r2, [sp, #0xc]
  2eb24c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2eb250: 4611         	mov	r1, r2
  2eb252: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x2eb53c <AvatarCreator::init()+0x65c>
  2eb254: 58a2         	ldr	r2, [r4, r2]
  2eb256: ed92 7a00    	vldr	s14, [r2]
  2eb25a: eddf 7ab3    	vldr	s15, [pc, #716]         @ 0x2eb528 <AvatarCreator::init()+0x648>
  2eb25e: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb262: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb264: 4608         	mov	r0, r1
  2eb266: ee17 1a90    	vmov	r1, s15
  2eb26a: 4798         	blx	r3
  2eb26c: 9b03         	ldr	r3, [sp, #0xc]
  2eb26e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2eb272: 461a         	mov	r2, r3
  2eb274: 9b03         	ldr	r3, [sp, #0xc]
  2eb276: 33e4         	adds	r3, #0xe4
  2eb278: 4610         	mov	r0, r2
  2eb27a: 4619         	mov	r1, r3
  2eb27c: f7ff f8de    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xe44
  2eb280: ab12         	add	r3, sp, #0x48
  2eb282: 4618         	mov	r0, r3
  2eb284: f04f 0100    	mov.w	r1, #0x0
  2eb288: f2c4 2120    	movt	r1, #0x4220
  2eb28c: f04f 0200    	mov.w	r2, #0x0
  2eb290: f2c4 325c    	movt	r2, #0x435c
  2eb294: f2a7 fefe    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7dfc
  2eb298: aa10         	add	r2, sp, #0x40
  2eb29a: ab12         	add	r3, sp, #0x48
  2eb29c: 4610         	mov	r0, r2
  2eb29e: 4619         	mov	r1, r3
  2eb2a0: f2a7 ff26    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7e4c
  2eb2a4: f44f 70e8    	mov.w	r0, #0x1d0
  2eb2a8: f09c f35c    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c6b8
  2eb2ac: 4605         	mov	r5, r0
  2eb2ae: 462a         	mov	r2, r5
  2eb2b0: f44f 73e8    	mov.w	r3, #0x1d0
  2eb2b4: 4610         	mov	r0, r2
  2eb2b6: 2100         	movs	r1, #0x0
  2eb2b8: 461a         	mov	r2, r3
  2eb2ba: f7ea ee5c    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15348
  2eb2be: 4628         	mov	r0, r5
  2eb2c0: f7ff fa34    	bl	0x2ea72c <HairColorTableView::HairColorTableView()> @ imm = #-0xb98
  2eb2c4: 9b03         	ldr	r3, [sp, #0xc]
  2eb2c6: f8c3 50fc    	str.w	r5, [r3, #0xfc]
  2eb2ca: 9b03         	ldr	r3, [sp, #0xc]
  2eb2cc: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2eb2d0: 461d         	mov	r5, r3
  2eb2d2: aa12         	add	r2, sp, #0x48
  2eb2d4: ab10         	add	r3, sp, #0x40
  2eb2d6: 4610         	mov	r0, r2
  2eb2d8: 4619         	mov	r1, r3
  2eb2da: f2a7 fee9    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7dd2
  2eb2de: ab12         	add	r3, sp, #0x48
  2eb2e0: 4628         	mov	r0, r5
  2eb2e2: 4619         	mov	r1, r3
  2eb2e4: 2200         	movs	r2, #0x0
  2eb2e6: f085 fd1f    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85a3e
  2eb2ea: 9b03         	ldr	r3, [sp, #0xc]
  2eb2ec: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2eb2f0: 681b         	ldr	r3, [r3]
  2eb2f2: 3354         	adds	r3, #0x54
  2eb2f4: 681b         	ldr	r3, [r3]
  2eb2f6: 9a03         	ldr	r2, [sp, #0xc]
  2eb2f8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2eb2fc: 4611         	mov	r1, r2
  2eb2fe: 4a8f         	ldr	r2, [pc, #0x23c]        @ 0x2eb53c <AvatarCreator::init()+0x65c>
  2eb300: 58a2         	ldr	r2, [r4, r2]
  2eb302: ed92 7a00    	vldr	s14, [r2]
  2eb306: eddf 7a89    	vldr	s15, [pc, #548]         @ 0x2eb52c <AvatarCreator::init()+0x64c>
  2eb30a: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb30e: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb310: 4608         	mov	r0, r1
  2eb312: ee17 1a90    	vmov	r1, s15
  2eb316: 4798         	blx	r3
  2eb318: 9b03         	ldr	r3, [sp, #0xc]
  2eb31a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2eb31e: 461a         	mov	r2, r3
  2eb320: 9b03         	ldr	r3, [sp, #0xc]
  2eb322: 33e4         	adds	r3, #0xe4
  2eb324: 4610         	mov	r0, r2
  2eb326: 4619         	mov	r1, r3
  2eb328: f7ff f888    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xef0
  2eb32c: ab12         	add	r3, sp, #0x48
  2eb32e: 4618         	mov	r0, r3
  2eb330: f04f 0100    	mov.w	r1, #0x0
  2eb334: f2c4 2120    	movt	r1, #0x4220
  2eb338: f04f 0200    	mov.w	r2, #0x0
  2eb33c: f2c4 325c    	movt	r2, #0x435c
  2eb340: f2a7 fea8    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7d50
  2eb344: aa10         	add	r2, sp, #0x40
  2eb346: ab12         	add	r3, sp, #0x48
  2eb348: 4610         	mov	r0, r2
  2eb34a: 4619         	mov	r1, r3
  2eb34c: f2a7 fed0    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7da0
  2eb350: f44f 70e8    	mov.w	r0, #0x1d0
  2eb354: f09c f306    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c60c
  2eb358: 4605         	mov	r5, r0
  2eb35a: 462a         	mov	r2, r5
  2eb35c: f44f 73e8    	mov.w	r3, #0x1d0
  2eb360: 4610         	mov	r0, r2
  2eb362: 2100         	movs	r1, #0x0
  2eb364: 461a         	mov	r2, r3
  2eb366: f7ea ee06    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x153f4
  2eb36a: 4628         	mov	r0, r5
  2eb36c: f7ff fa18    	bl	0x2ea7a0 <BrowTableView::BrowTableView()> @ imm = #-0xbd0
  2eb370: 9b03         	ldr	r3, [sp, #0xc]
  2eb372: f8c3 5104    	str.w	r5, [r3, #0x104]
  2eb376: 9b03         	ldr	r3, [sp, #0xc]
  2eb378: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2eb37c: 461d         	mov	r5, r3
  2eb37e: aa12         	add	r2, sp, #0x48
  2eb380: ab10         	add	r3, sp, #0x40
  2eb382: 4610         	mov	r0, r2
  2eb384: 4619         	mov	r1, r3
  2eb386: f2a7 fe93    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7d26
  2eb38a: ab12         	add	r3, sp, #0x48
  2eb38c: 4628         	mov	r0, r5
  2eb38e: 4619         	mov	r1, r3
  2eb390: 2200         	movs	r2, #0x0
  2eb392: f085 fcc9    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85992
  2eb396: 9b03         	ldr	r3, [sp, #0xc]
  2eb398: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2eb39c: 681b         	ldr	r3, [r3]
  2eb39e: 3354         	adds	r3, #0x54
  2eb3a0: 681b         	ldr	r3, [r3]
  2eb3a2: 9a03         	ldr	r2, [sp, #0xc]
  2eb3a4: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  2eb3a8: 4611         	mov	r1, r2
  2eb3aa: 4a64         	ldr	r2, [pc, #0x190]        @ 0x2eb53c <AvatarCreator::init()+0x65c>
  2eb3ac: 58a2         	ldr	r2, [r4, r2]
  2eb3ae: ed92 7a00    	vldr	s14, [r2]
  2eb3b2: eddf 7a5f    	vldr	s15, [pc, #380]         @ 0x2eb530 <AvatarCreator::init()+0x650>
  2eb3b6: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb3ba: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb3bc: 4608         	mov	r0, r1
  2eb3be: ee17 1a90    	vmov	r1, s15
  2eb3c2: 4798         	blx	r3
  2eb3c4: 9b03         	ldr	r3, [sp, #0xc]
  2eb3c6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2eb3ca: 461a         	mov	r2, r3
  2eb3cc: 9b03         	ldr	r3, [sp, #0xc]
  2eb3ce: 33e4         	adds	r3, #0xe4
  2eb3d0: 4610         	mov	r0, r2
  2eb3d2: 4619         	mov	r1, r3
  2eb3d4: f7ff f832    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xf9c
  2eb3d8: ab12         	add	r3, sp, #0x48
  2eb3da: 4618         	mov	r0, r3
  2eb3dc: f04f 0100    	mov.w	r1, #0x0
  2eb3e0: f2c4 2120    	movt	r1, #0x4220
  2eb3e4: f04f 0200    	mov.w	r2, #0x0
  2eb3e8: f2c4 325c    	movt	r2, #0x435c
  2eb3ec: f2a7 fe52    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7ca4
  2eb3f0: aa10         	add	r2, sp, #0x40
  2eb3f2: ab12         	add	r3, sp, #0x48
  2eb3f4: 4610         	mov	r0, r2
  2eb3f6: 4619         	mov	r1, r3
  2eb3f8: f2a7 fe7a    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7cf4
  2eb3fc: f44f 70e8    	mov.w	r0, #0x1d0
  2eb400: f09c f2b0    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c560
  2eb404: 4605         	mov	r5, r0
  2eb406: 462a         	mov	r2, r5
  2eb408: f44f 73e8    	mov.w	r3, #0x1d0
  2eb40c: 4610         	mov	r0, r2
  2eb40e: 2100         	movs	r1, #0x0
  2eb410: 461a         	mov	r2, r3
  2eb412: f7ea edb0    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x154a0
  2eb416: 4628         	mov	r0, r5
  2eb418: f7ff f9fc    	bl	0x2ea814 <EyeTableView::EyeTableView()> @ imm = #-0xc08
  2eb41c: 9b03         	ldr	r3, [sp, #0xc]
  2eb41e: f8c3 5100    	str.w	r5, [r3, #0x100]
  2eb422: 9b03         	ldr	r3, [sp, #0xc]
  2eb424: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2eb428: 461d         	mov	r5, r3
  2eb42a: aa12         	add	r2, sp, #0x48
  2eb42c: ab10         	add	r3, sp, #0x40
  2eb42e: 4610         	mov	r0, r2
  2eb430: 4619         	mov	r1, r3
  2eb432: f2a7 fe3d    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7c7a
  2eb436: ab12         	add	r3, sp, #0x48
  2eb438: 4628         	mov	r0, r5
  2eb43a: 4619         	mov	r1, r3
  2eb43c: 2200         	movs	r2, #0x0
  2eb43e: f085 fc73    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x858e6
  2eb442: 9b03         	ldr	r3, [sp, #0xc]
  2eb444: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2eb448: 681b         	ldr	r3, [r3]
  2eb44a: 3354         	adds	r3, #0x54
  2eb44c: 681b         	ldr	r3, [r3]
  2eb44e: 9a03         	ldr	r2, [sp, #0xc]
  2eb450: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  2eb454: 4611         	mov	r1, r2
  2eb456: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x2eb53c <AvatarCreator::init()+0x65c>
  2eb458: 58a2         	ldr	r2, [r4, r2]
  2eb45a: ed92 7a00    	vldr	s14, [r2]
  2eb45e: eddf 7a35    	vldr	s15, [pc, #212]         @ 0x2eb534 <AvatarCreator::init()+0x654>
  2eb462: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb466: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb468: 4608         	mov	r0, r1
  2eb46a: ee17 1a90    	vmov	r1, s15
  2eb46e: 4798         	blx	r3
  2eb470: 9b03         	ldr	r3, [sp, #0xc]
  2eb472: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2eb476: 461a         	mov	r2, r3
  2eb478: 9b03         	ldr	r3, [sp, #0xc]
  2eb47a: 33e4         	adds	r3, #0xe4
  2eb47c: 4610         	mov	r0, r2
  2eb47e: 4619         	mov	r1, r3
  2eb480: f7fe ffdc    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x1048
  2eb484: ab12         	add	r3, sp, #0x48
  2eb486: 4618         	mov	r0, r3
  2eb488: f04f 0100    	mov.w	r1, #0x0
  2eb48c: f2c4 2120    	movt	r1, #0x4220
  2eb490: f04f 0200    	mov.w	r2, #0x0
  2eb494: f2c4 325c    	movt	r2, #0x435c
  2eb498: f2a7 fdfc    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7bf8
  2eb49c: aa10         	add	r2, sp, #0x40
  2eb49e: ab12         	add	r3, sp, #0x48
  2eb4a0: 4610         	mov	r0, r2
  2eb4a2: 4619         	mov	r1, r3
  2eb4a4: f2a7 fe24    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7c48
  2eb4a8: f44f 70e8    	mov.w	r0, #0x1d0
  2eb4ac: f09c f25a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c4b4
  2eb4b0: 4605         	mov	r5, r0
  2eb4b2: 462a         	mov	r2, r5
  2eb4b4: f44f 73e8    	mov.w	r3, #0x1d0
  2eb4b8: 4610         	mov	r0, r2
  2eb4ba: 2100         	movs	r1, #0x0
  2eb4bc: 461a         	mov	r2, r3
  2eb4be: f7ea ed5a    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x1554c
  2eb4c2: 4628         	mov	r0, r5
  2eb4c4: f7ff f9e0    	bl	0x2ea888 <MouthTableView::MouthTableView()> @ imm = #-0xc40
  2eb4c8: 9b03         	ldr	r3, [sp, #0xc]
  2eb4ca: f8c3 5108    	str.w	r5, [r3, #0x108]
  2eb4ce: 9b03         	ldr	r3, [sp, #0xc]
  2eb4d0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2eb4d4: 461d         	mov	r5, r3
  2eb4d6: aa12         	add	r2, sp, #0x48
  2eb4d8: ab10         	add	r3, sp, #0x40
  2eb4da: 4610         	mov	r0, r2
  2eb4dc: 4619         	mov	r1, r3
  2eb4de: f2a7 fde7    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7bce
  2eb4e2: ab12         	add	r3, sp, #0x48
  2eb4e4: 4628         	mov	r0, r5
  2eb4e6: 4619         	mov	r1, r3
  2eb4e8: 2200         	movs	r2, #0x0
  2eb4ea: f085 fc1d    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x8583a
  2eb4ee: 9b03         	ldr	r3, [sp, #0xc]
  2eb4f0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2eb4f4: 681b         	ldr	r3, [r3]
  2eb4f6: 3354         	adds	r3, #0x54
  2eb4f8: 681b         	ldr	r3, [r3]
  2eb4fa: 9a03         	ldr	r2, [sp, #0xc]
  2eb4fc: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  2eb500: 4611         	mov	r1, r2
  2eb502: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x2eb53c <AvatarCreator::init()+0x65c>
  2eb504: 58a2         	ldr	r2, [r4, r2]
  2eb506: ed92 7a00    	vldr	s14, [r2]
  2eb50a: eddf 7a0b    	vldr	s15, [pc, #44]          @ 0x2eb538 <AvatarCreator::init()+0x658>
  2eb50e: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb512: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb514: 4608         	mov	r0, r1
  2eb516: ee17 1a90    	vmov	r1, s15
  2eb51a: 4798         	blx	r3
  2eb51c: 9b03         	ldr	r3, [sp, #0xc]
  2eb51e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2eb522: 461a         	mov	r2, r3
  2eb524: 9b03         	ldr	r3, [sp, #0xc]
  2eb526: e00b         	b	0x2eb540 <AvatarCreator::init()+0x660> @ imm = #0x16
  2eb528: 0000         	movs	r0, r0
  2eb52a: 4361         	muls	r1, r4, r1
  2eb52c: 0000         	movs	r0, r0
  2eb52e: 4348         	muls	r0, r1, r0
  2eb530: 0000         	movs	r0, r0
  2eb532: 4316         	orrs	r6, r2
  2eb534: 0000         	movs	r0, r0
  2eb536: 42c8         	cmn	r0, r1
  2eb538: 0000         	movs	r0, r0
  2eb53a: 4248         	rsbs	r0, r1, #0
  2eb53c: d724         	bvc	0x2eb588 <AvatarCreator::init()+0x6a8> @ imm = #0x48
  2eb53e: ffff 33e4    	<unknown>
  2eb542: 4610         	mov	r0, r2
  2eb544: 4619         	mov	r1, r3
  2eb546: f7fe ff79    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x110e
  2eb54a: ab12         	add	r3, sp, #0x48
  2eb54c: 4618         	mov	r0, r3
  2eb54e: f04f 0100    	mov.w	r1, #0x0
  2eb552: f2c4 2188    	movt	r1, #0x4288
  2eb556: f04f 0200    	mov.w	r2, #0x0
  2eb55a: f2c4 325c    	movt	r2, #0x435c
  2eb55e: f2a7 fd99    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7b32
  2eb562: aa10         	add	r2, sp, #0x40
  2eb564: ab12         	add	r3, sp, #0x48
  2eb566: 4610         	mov	r0, r2
  2eb568: 4619         	mov	r1, r3
  2eb56a: f2a7 fdc1    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7b82
  2eb56e: f44f 70e8    	mov.w	r0, #0x1d0
  2eb572: f09c f1f7    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c3ee
  2eb576: 4605         	mov	r5, r0
  2eb578: 462a         	mov	r2, r5
  2eb57a: f44f 73e8    	mov.w	r3, #0x1d0
  2eb57e: 4610         	mov	r0, r2
  2eb580: 2100         	movs	r1, #0x0
  2eb582: 461a         	mov	r2, r3
  2eb584: f7ea ecf6    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15614
  2eb588: 4628         	mov	r0, r5
  2eb58a: f7ff f9b7    	bl	0x2ea8fc <HairTableView::HairTableView()> @ imm = #-0xc92
  2eb58e: 9b03         	ldr	r3, [sp, #0xc]
  2eb590: f8c3 510c    	str.w	r5, [r3, #0x10c]
  2eb594: 9b03         	ldr	r3, [sp, #0xc]
  2eb596: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2eb59a: 461d         	mov	r5, r3
  2eb59c: aa12         	add	r2, sp, #0x48
  2eb59e: ab10         	add	r3, sp, #0x40
  2eb5a0: 4610         	mov	r0, r2
  2eb5a2: 4619         	mov	r1, r3
  2eb5a4: f2a7 fd84    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7b08
  2eb5a8: ab12         	add	r3, sp, #0x48
  2eb5aa: 4628         	mov	r0, r5
  2eb5ac: 4619         	mov	r1, r3
  2eb5ae: 2200         	movs	r2, #0x0
  2eb5b0: f085 fbba    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85774
  2eb5b4: 9b03         	ldr	r3, [sp, #0xc]
  2eb5b6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2eb5ba: 681b         	ldr	r3, [r3]
  2eb5bc: 3354         	adds	r3, #0x54
  2eb5be: 681b         	ldr	r3, [r3]
  2eb5c0: 9a03         	ldr	r2, [sp, #0xc]
  2eb5c2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2eb5c6: 4611         	mov	r1, r2
  2eb5c8: 4ab8         	ldr	r2, [pc, #0x2e0]        @ 0x2eb8ac <AvatarCreator::init()+0x9cc>
  2eb5ca: 58a2         	ldr	r2, [r4, r2]
  2eb5cc: ed92 7a00    	vldr	s14, [r2]
  2eb5d0: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x2eb89c <AvatarCreator::init()+0x9bc>
  2eb5d4: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb5d8: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb5da: 4608         	mov	r0, r1
  2eb5dc: ee17 1a90    	vmov	r1, s15
  2eb5e0: 4798         	blx	r3
  2eb5e2: 9b03         	ldr	r3, [sp, #0xc]
  2eb5e4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2eb5e8: 461a         	mov	r2, r3
  2eb5ea: 9b03         	ldr	r3, [sp, #0xc]
  2eb5ec: 33e4         	adds	r3, #0xe4
  2eb5ee: 4610         	mov	r0, r2
  2eb5f0: 4619         	mov	r1, r3
  2eb5f2: f7fe ff23    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x11ba
  2eb5f6: ab12         	add	r3, sp, #0x48
  2eb5f8: 4618         	mov	r0, r3
  2eb5fa: f04f 0100    	mov.w	r1, #0x0
  2eb5fe: f2c4 2188    	movt	r1, #0x4288
  2eb602: f04f 0200    	mov.w	r2, #0x0
  2eb606: f2c4 325c    	movt	r2, #0x435c
  2eb60a: f2a7 fd43    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7a86
  2eb60e: aa10         	add	r2, sp, #0x40
  2eb610: ab12         	add	r3, sp, #0x48
  2eb612: 4610         	mov	r0, r2
  2eb614: 4619         	mov	r1, r3
  2eb616: f2a7 fd6b    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7ad6
  2eb61a: f44f 70e8    	mov.w	r0, #0x1d0
  2eb61e: f09c f1a1    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c342
  2eb622: 4605         	mov	r5, r0
  2eb624: 462a         	mov	r2, r5
  2eb626: f44f 73e8    	mov.w	r3, #0x1d0
  2eb62a: 4610         	mov	r0, r2
  2eb62c: 2100         	movs	r1, #0x0
  2eb62e: 461a         	mov	r2, r3
  2eb630: f7ea eca0    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x156c0
  2eb634: 4628         	mov	r0, r5
  2eb636: f7ff f99b    	bl	0x2ea970 <BackHairTableView::BackHairTableView()> @ imm = #-0xcca
  2eb63a: 9b03         	ldr	r3, [sp, #0xc]
  2eb63c: f8c3 5114    	str.w	r5, [r3, #0x114]
  2eb640: 9b03         	ldr	r3, [sp, #0xc]
  2eb642: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2eb646: 461d         	mov	r5, r3
  2eb648: aa12         	add	r2, sp, #0x48
  2eb64a: ab10         	add	r3, sp, #0x40
  2eb64c: 4610         	mov	r0, r2
  2eb64e: 4619         	mov	r1, r3
  2eb650: f2a7 fd2e    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7a5c
  2eb654: ab12         	add	r3, sp, #0x48
  2eb656: 4628         	mov	r0, r5
  2eb658: 4619         	mov	r1, r3
  2eb65a: 2200         	movs	r2, #0x0
  2eb65c: f085 fb64    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x856c8
  2eb660: 9b03         	ldr	r3, [sp, #0xc]
  2eb662: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2eb666: 681b         	ldr	r3, [r3]
  2eb668: 3354         	adds	r3, #0x54
  2eb66a: 681b         	ldr	r3, [r3]
  2eb66c: 9a03         	ldr	r2, [sp, #0xc]
  2eb66e: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2eb672: 4611         	mov	r1, r2
  2eb674: 4a8d         	ldr	r2, [pc, #0x234]        @ 0x2eb8ac <AvatarCreator::init()+0x9cc>
  2eb676: 58a2         	ldr	r2, [r4, r2]
  2eb678: ed92 7a00    	vldr	s14, [r2]
  2eb67c: eddf 7a88    	vldr	s15, [pc, #544]         @ 0x2eb8a0 <AvatarCreator::init()+0x9c0>
  2eb680: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb684: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb686: 4608         	mov	r0, r1
  2eb688: ee17 1a90    	vmov	r1, s15
  2eb68c: 4798         	blx	r3
  2eb68e: 9b03         	ldr	r3, [sp, #0xc]
  2eb690: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2eb694: 461a         	mov	r2, r3
  2eb696: 9b03         	ldr	r3, [sp, #0xc]
  2eb698: 33e4         	adds	r3, #0xe4
  2eb69a: 4610         	mov	r0, r2
  2eb69c: 4619         	mov	r1, r3
  2eb69e: f7fe fecd    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x1266
  2eb6a2: ab12         	add	r3, sp, #0x48
  2eb6a4: 4618         	mov	r0, r3
  2eb6a6: f04f 4184    	mov.w	r1, #0x42000000
  2eb6aa: f04f 0200    	mov.w	r2, #0x0
  2eb6ae: f2c4 325c    	movt	r2, #0x435c
  2eb6b2: f2a7 fcef    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a79de
  2eb6b6: aa10         	add	r2, sp, #0x40
  2eb6b8: ab12         	add	r3, sp, #0x48
  2eb6ba: 4610         	mov	r0, r2
  2eb6bc: 4619         	mov	r1, r3
  2eb6be: f2a7 fd17    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7a2e
  2eb6c2: f44f 70e8    	mov.w	r0, #0x1d0
  2eb6c6: f09c f14d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c29a
  2eb6ca: 4605         	mov	r5, r0
  2eb6cc: 462a         	mov	r2, r5
  2eb6ce: f44f 73e8    	mov.w	r3, #0x1d0
  2eb6d2: 4610         	mov	r0, r2
  2eb6d4: 2100         	movs	r1, #0x0
  2eb6d6: 461a         	mov	r2, r3
  2eb6d8: f7ea ec4c    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15768
  2eb6dc: 4628         	mov	r0, r5
  2eb6de: f7ff f981    	bl	0x2ea9e4 <BurnTableView::BurnTableView()> @ imm = #-0xcfe
  2eb6e2: 9b03         	ldr	r3, [sp, #0xc]
  2eb6e4: f8c3 5118    	str.w	r5, [r3, #0x118]
  2eb6e8: 9b03         	ldr	r3, [sp, #0xc]
  2eb6ea: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2eb6ee: 461d         	mov	r5, r3
  2eb6f0: aa12         	add	r2, sp, #0x48
  2eb6f2: ab10         	add	r3, sp, #0x40
  2eb6f4: 4610         	mov	r0, r2
  2eb6f6: 4619         	mov	r1, r3
  2eb6f8: f2a7 fcda    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a79b4
  2eb6fc: ab12         	add	r3, sp, #0x48
  2eb6fe: 4628         	mov	r0, r5
  2eb700: 4619         	mov	r1, r3
  2eb702: 2200         	movs	r2, #0x0
  2eb704: f085 fb10    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85620
  2eb708: 9b03         	ldr	r3, [sp, #0xc]
  2eb70a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2eb70e: 681b         	ldr	r3, [r3]
  2eb710: 3354         	adds	r3, #0x54
  2eb712: 681b         	ldr	r3, [r3]
  2eb714: 9a03         	ldr	r2, [sp, #0xc]
  2eb716: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2eb71a: 4611         	mov	r1, r2
  2eb71c: 4a63         	ldr	r2, [pc, #0x18c]        @ 0x2eb8ac <AvatarCreator::init()+0x9cc>
  2eb71e: 58a2         	ldr	r2, [r4, r2]
  2eb720: ed92 7a00    	vldr	s14, [r2]
  2eb724: eddf 7a5f    	vldr	s15, [pc, #380]         @ 0x2eb8a4 <AvatarCreator::init()+0x9c4>
  2eb728: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb72c: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb72e: 4608         	mov	r0, r1
  2eb730: ee17 1a90    	vmov	r1, s15
  2eb734: 4798         	blx	r3
  2eb736: 9b03         	ldr	r3, [sp, #0xc]
  2eb738: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2eb73c: 461a         	mov	r2, r3
  2eb73e: 9b03         	ldr	r3, [sp, #0xc]
  2eb740: 33e4         	adds	r3, #0xe4
  2eb742: 4610         	mov	r0, r2
  2eb744: 4619         	mov	r1, r3
  2eb746: f7fe fe79    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x130e
  2eb74a: ab12         	add	r3, sp, #0x48
  2eb74c: 4618         	mov	r0, r3
  2eb74e: f04f 0100    	mov.w	r1, #0x0
  2eb752: f2c4 215c    	movt	r1, #0x425c
  2eb756: f04f 0200    	mov.w	r2, #0x0
  2eb75a: f2c4 325c    	movt	r2, #0x435c
  2eb75e: f2a7 fc99    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7932
  2eb762: aa10         	add	r2, sp, #0x40
  2eb764: ab12         	add	r3, sp, #0x48
  2eb766: 4610         	mov	r0, r2
  2eb768: 4619         	mov	r1, r3
  2eb76a: f2a7 fcc1    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7982
  2eb76e: f44f 70e8    	mov.w	r0, #0x1d0
  2eb772: f09c f0f7    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c1ee
  2eb776: 4605         	mov	r5, r0
  2eb778: 462a         	mov	r2, r5
  2eb77a: f44f 73e8    	mov.w	r3, #0x1d0
  2eb77e: 4610         	mov	r0, r2
  2eb780: 2100         	movs	r1, #0x0
  2eb782: 461a         	mov	r2, r3
  2eb784: f7ea ebf6    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15814
  2eb788: 4628         	mov	r0, r5
  2eb78a: f7ff f965    	bl	0x2eaa58 <BeardTableView::BeardTableView()> @ imm = #-0xd36
  2eb78e: 9b03         	ldr	r3, [sp, #0xc]
  2eb790: f8c3 511c    	str.w	r5, [r3, #0x11c]
  2eb794: 9b03         	ldr	r3, [sp, #0xc]
  2eb796: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2eb79a: 461d         	mov	r5, r3
  2eb79c: aa12         	add	r2, sp, #0x48
  2eb79e: ab10         	add	r3, sp, #0x40
  2eb7a0: 4610         	mov	r0, r2
  2eb7a2: 4619         	mov	r1, r3
  2eb7a4: f2a7 fc84    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7908
  2eb7a8: ab12         	add	r3, sp, #0x48
  2eb7aa: 4628         	mov	r0, r5
  2eb7ac: 4619         	mov	r1, r3
  2eb7ae: 2200         	movs	r2, #0x0
  2eb7b0: f085 faba    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85574
  2eb7b4: 9b03         	ldr	r3, [sp, #0xc]
  2eb7b6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2eb7ba: 681b         	ldr	r3, [r3]
  2eb7bc: 3354         	adds	r3, #0x54
  2eb7be: 681b         	ldr	r3, [r3]
  2eb7c0: 9a03         	ldr	r2, [sp, #0xc]
  2eb7c2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2eb7c6: 4611         	mov	r1, r2
  2eb7c8: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x2eb8ac <AvatarCreator::init()+0x9cc>
  2eb7ca: 58a2         	ldr	r2, [r4, r2]
  2eb7cc: ed92 7a00    	vldr	s14, [r2]
  2eb7d0: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x2eb8a0 <AvatarCreator::init()+0x9c0>
  2eb7d4: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb7d8: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb7da: 4608         	mov	r0, r1
  2eb7dc: ee17 1a90    	vmov	r1, s15
  2eb7e0: 4798         	blx	r3
  2eb7e2: 9b03         	ldr	r3, [sp, #0xc]
  2eb7e4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2eb7e8: 461a         	mov	r2, r3
  2eb7ea: 9b03         	ldr	r3, [sp, #0xc]
  2eb7ec: 33e4         	adds	r3, #0xe4
  2eb7ee: 4610         	mov	r0, r2
  2eb7f0: 4619         	mov	r1, r3
  2eb7f2: f7fe fe23    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x13ba
  2eb7f6: ab12         	add	r3, sp, #0x48
  2eb7f8: 4618         	mov	r0, r3
  2eb7fa: f04f 0100    	mov.w	r1, #0x0
  2eb7fe: f2c4 2120    	movt	r1, #0x4220
  2eb802: f04f 0200    	mov.w	r2, #0x0
  2eb806: f2c4 325c    	movt	r2, #0x435c
  2eb80a: f2a7 fc43    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7886
  2eb80e: aa10         	add	r2, sp, #0x40
  2eb810: ab12         	add	r3, sp, #0x48
  2eb812: 4610         	mov	r0, r2
  2eb814: 4619         	mov	r1, r3
  2eb816: f2a7 fc6b    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a78d6
  2eb81a: f44f 70e8    	mov.w	r0, #0x1d0
  2eb81e: f09c f0a1    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c142
  2eb822: 4605         	mov	r5, r0
  2eb824: 462a         	mov	r2, r5
  2eb826: f44f 73e8    	mov.w	r3, #0x1d0
  2eb82a: 4610         	mov	r0, r2
  2eb82c: 2100         	movs	r1, #0x0
  2eb82e: 461a         	mov	r2, r3
  2eb830: f7ea eba0    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x158c0
  2eb834: 4628         	mov	r0, r5
  2eb836: f7ff f949    	bl	0x2eaacc <StacheTableView::StacheTableView()> @ imm = #-0xd6e
  2eb83a: 9b03         	ldr	r3, [sp, #0xc]
  2eb83c: f8c3 5120    	str.w	r5, [r3, #0x120]
  2eb840: 9b03         	ldr	r3, [sp, #0xc]
  2eb842: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2eb846: 461d         	mov	r5, r3
  2eb848: aa12         	add	r2, sp, #0x48
  2eb84a: ab10         	add	r3, sp, #0x40
  2eb84c: 4610         	mov	r0, r2
  2eb84e: 4619         	mov	r1, r3
  2eb850: f2a7 fc2e    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a785c
  2eb854: ab12         	add	r3, sp, #0x48
  2eb856: 4628         	mov	r0, r5
  2eb858: 4619         	mov	r1, r3
  2eb85a: 2200         	movs	r2, #0x0
  2eb85c: f085 fa64    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x854c8
  2eb860: 9b03         	ldr	r3, [sp, #0xc]
  2eb862: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2eb866: 681b         	ldr	r3, [r3]
  2eb868: 3354         	adds	r3, #0x54
  2eb86a: 681b         	ldr	r3, [r3]
  2eb86c: 9a03         	ldr	r2, [sp, #0xc]
  2eb86e: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2eb872: 4611         	mov	r1, r2
  2eb874: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2eb8ac <AvatarCreator::init()+0x9cc>
  2eb876: 58a2         	ldr	r2, [r4, r2]
  2eb878: ed92 7a00    	vldr	s14, [r2]
  2eb87c: eddf 7a0a    	vldr	s15, [pc, #40]          @ 0x2eb8a8 <AvatarCreator::init()+0x9c8>
  2eb880: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb884: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb886: 4608         	mov	r0, r1
  2eb888: ee17 1a90    	vmov	r1, s15
  2eb88c: 4798         	blx	r3
  2eb88e: 9b03         	ldr	r3, [sp, #0xc]
  2eb890: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2eb894: 461a         	mov	r2, r3
  2eb896: 9b03         	ldr	r3, [sp, #0xc]
  2eb898: 33e4         	adds	r3, #0xe4
  2eb89a: e009         	b	0x2eb8b0 <AvatarCreator::init()+0x9d0> @ imm = #0x12
  2eb89c: 0000         	movs	r0, r0
  2eb89e: 430c         	orrs	r4, r1
  2eb8a0: 0000         	movs	r0, r0
  2eb8a2: 428c         	cmp	r4, r1
  2eb8a4: 0000         	movs	r0, r0
  2eb8a6: 4331         	orrs	r1, r6
  2eb8a8: 0000         	movs	r0, r0
  2eb8aa: 42fa         	cmn	r2, r7
  2eb8ac: d724         	bvc	0x2eb8f8 <AvatarCreator::init()+0xa18> @ imm = #0x48
  2eb8ae: ffff 4610    	vqshlu.s32	d20, d0, #0x1f
  2eb8b2: 4619         	mov	r1, r3
  2eb8b4: f7fe fdc2    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x147c
  2eb8b8: ab12         	add	r3, sp, #0x48
  2eb8ba: 4618         	mov	r0, r3
  2eb8bc: f04f 0100    	mov.w	r1, #0x0
  2eb8c0: f2c4 2170    	movt	r1, #0x4270
  2eb8c4: f04f 0200    	mov.w	r2, #0x0
  2eb8c8: f2c4 325c    	movt	r2, #0x435c
  2eb8cc: f2a7 fbe2    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a77c4
  2eb8d0: aa10         	add	r2, sp, #0x40
  2eb8d2: ab12         	add	r3, sp, #0x48
  2eb8d4: 4610         	mov	r0, r2
  2eb8d6: 4619         	mov	r1, r3
  2eb8d8: f2a7 fc0a    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7814
  2eb8dc: f44f 70e8    	mov.w	r0, #0x1d0
  2eb8e0: f09c f040    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49c080
  2eb8e4: 4605         	mov	r5, r0
  2eb8e6: 462a         	mov	r2, r5
  2eb8e8: f44f 73e8    	mov.w	r3, #0x1d0
  2eb8ec: 4610         	mov	r0, r2
  2eb8ee: 2100         	movs	r1, #0x0
  2eb8f0: 461a         	mov	r2, r3
  2eb8f2: f7ea eb40    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15980
  2eb8f6: 4628         	mov	r0, r5
  2eb8f8: f7ff f922    	bl	0x2eab40 <EyeWareTableView::EyeWareTableView()> @ imm = #-0xdbc
  2eb8fc: 9b03         	ldr	r3, [sp, #0xc]
  2eb8fe: f8c3 5124    	str.w	r5, [r3, #0x124]
  2eb902: 9b03         	ldr	r3, [sp, #0xc]
  2eb904: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2eb908: 461d         	mov	r5, r3
  2eb90a: aa12         	add	r2, sp, #0x48
  2eb90c: ab10         	add	r3, sp, #0x40
  2eb90e: 4610         	mov	r0, r2
  2eb910: 4619         	mov	r1, r3
  2eb912: f2a7 fbcd    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a779a
  2eb916: ab12         	add	r3, sp, #0x48
  2eb918: 4628         	mov	r0, r5
  2eb91a: 4619         	mov	r1, r3
  2eb91c: 2200         	movs	r2, #0x0
  2eb91e: f085 fa03    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85406
  2eb922: 9b03         	ldr	r3, [sp, #0xc]
  2eb924: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2eb928: 681b         	ldr	r3, [r3]
  2eb92a: 3354         	adds	r3, #0x54
  2eb92c: 681b         	ldr	r3, [r3]
  2eb92e: 9a03         	ldr	r2, [sp, #0xc]
  2eb930: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2eb934: 4611         	mov	r1, r2
  2eb936: 4aba         	ldr	r2, [pc, #0x2e8]        @ 0x2ebc20 <AvatarCreator::init()+0xd40>
  2eb938: 58a2         	ldr	r2, [r4, r2]
  2eb93a: ed92 7a00    	vldr	s14, [r2]
  2eb93e: eddf 7ab3    	vldr	s15, [pc, #716]         @ 0x2ebc0c <AvatarCreator::init()+0xd2c>
  2eb942: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb946: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb948: 4608         	mov	r0, r1
  2eb94a: ee17 1a90    	vmov	r1, s15
  2eb94e: 4798         	blx	r3
  2eb950: 9b03         	ldr	r3, [sp, #0xc]
  2eb952: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2eb956: 461a         	mov	r2, r3
  2eb958: 9b03         	ldr	r3, [sp, #0xc]
  2eb95a: 33e4         	adds	r3, #0xe4
  2eb95c: 4610         	mov	r0, r2
  2eb95e: 4619         	mov	r1, r3
  2eb960: f7fe fd6c    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x1528
  2eb964: ab12         	add	r3, sp, #0x48
  2eb966: 4618         	mov	r0, r3
  2eb968: f04f 0100    	mov.w	r1, #0x0
  2eb96c: f2c4 21c2    	movt	r1, #0x42c2
  2eb970: f04f 0200    	mov.w	r2, #0x0
  2eb974: f2c4 325c    	movt	r2, #0x435c
  2eb978: f2a7 fb8c    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7718
  2eb97c: aa10         	add	r2, sp, #0x40
  2eb97e: ab12         	add	r3, sp, #0x48
  2eb980: 4610         	mov	r0, r2
  2eb982: 4619         	mov	r1, r3
  2eb984: f2a7 fbb4    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7768
  2eb988: f44f 70e8    	mov.w	r0, #0x1d0
  2eb98c: f09b f7ea    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bfd4
  2eb990: 4605         	mov	r5, r0
  2eb992: 462a         	mov	r2, r5
  2eb994: f44f 73e8    	mov.w	r3, #0x1d0
  2eb998: 4610         	mov	r0, r2
  2eb99a: 2100         	movs	r1, #0x0
  2eb99c: 461a         	mov	r2, r3
  2eb99e: f7ea eaea    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15a2c
  2eb9a2: 4628         	mov	r0, r5
  2eb9a4: f7ff f906    	bl	0x2eabb4 <HatTableView::HatTableView()> @ imm = #-0xdf4
  2eb9a8: 9b03         	ldr	r3, [sp, #0xc]
  2eb9aa: f8c3 5128    	str.w	r5, [r3, #0x128]
  2eb9ae: 9b03         	ldr	r3, [sp, #0xc]
  2eb9b0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2eb9b4: 461d         	mov	r5, r3
  2eb9b6: aa12         	add	r2, sp, #0x48
  2eb9b8: ab10         	add	r3, sp, #0x40
  2eb9ba: 4610         	mov	r0, r2
  2eb9bc: 4619         	mov	r1, r3
  2eb9be: f2a7 fb77    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a76ee
  2eb9c2: ab12         	add	r3, sp, #0x48
  2eb9c4: 4628         	mov	r0, r5
  2eb9c6: 4619         	mov	r1, r3
  2eb9c8: 2200         	movs	r2, #0x0
  2eb9ca: f085 f9ad    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x8535a
  2eb9ce: 9b03         	ldr	r3, [sp, #0xc]
  2eb9d0: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2eb9d4: 681b         	ldr	r3, [r3]
  2eb9d6: 3354         	adds	r3, #0x54
  2eb9d8: 681b         	ldr	r3, [r3]
  2eb9da: 9a03         	ldr	r2, [sp, #0xc]
  2eb9dc: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2eb9e0: 4611         	mov	r1, r2
  2eb9e2: 4a8f         	ldr	r2, [pc, #0x23c]        @ 0x2ebc20 <AvatarCreator::init()+0xd40>
  2eb9e4: 58a2         	ldr	r2, [r4, r2]
  2eb9e6: ed92 7a00    	vldr	s14, [r2]
  2eb9ea: eddf 7a89    	vldr	s15, [pc, #548]         @ 0x2ebc10 <AvatarCreator::init()+0xd30>
  2eb9ee: ee77 7a67    	vsub.f32	s15, s14, s15
  2eb9f2: 9a0f         	ldr	r2, [sp, #0x3c]
  2eb9f4: 4608         	mov	r0, r1
  2eb9f6: ee17 1a90    	vmov	r1, s15
  2eb9fa: 4798         	blx	r3
  2eb9fc: 9b03         	ldr	r3, [sp, #0xc]
  2eb9fe: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2eba02: 461a         	mov	r2, r3
  2eba04: 9b03         	ldr	r3, [sp, #0xc]
  2eba06: 33e4         	adds	r3, #0xe4
  2eba08: 4610         	mov	r0, r2
  2eba0a: 4619         	mov	r1, r3
  2eba0c: f7fe fd16    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x15d4
  2eba10: ab12         	add	r3, sp, #0x48
  2eba12: 4618         	mov	r0, r3
  2eba14: f04f 0100    	mov.w	r1, #0x0
  2eba18: f2c4 2184    	movt	r1, #0x4284
  2eba1c: f04f 0200    	mov.w	r2, #0x0
  2eba20: f2c4 325c    	movt	r2, #0x435c
  2eba24: f2a7 fb36    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a766c
  2eba28: aa10         	add	r2, sp, #0x40
  2eba2a: ab12         	add	r3, sp, #0x48
  2eba2c: 4610         	mov	r0, r2
  2eba2e: 4619         	mov	r1, r3
  2eba30: f2a7 fb5e    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a76bc
  2eba34: f44f 70e8    	mov.w	r0, #0x1d0
  2eba38: f09b f794    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bf28
  2eba3c: 4605         	mov	r5, r0
  2eba3e: 462a         	mov	r2, r5
  2eba40: f44f 73e8    	mov.w	r3, #0x1d0
  2eba44: 4610         	mov	r0, r2
  2eba46: 2100         	movs	r1, #0x0
  2eba48: 461a         	mov	r2, r3
  2eba4a: f7ea ea94    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15ad8
  2eba4e: 4628         	mov	r0, r5
  2eba50: f7ff f8ea    	bl	0x2eac28 <BodyTableView::BodyTableView()> @ imm = #-0xe2c
  2eba54: 9b03         	ldr	r3, [sp, #0xc]
  2eba56: f8c3 512c    	str.w	r5, [r3, #0x12c]
  2eba5a: 9b03         	ldr	r3, [sp, #0xc]
  2eba5c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2eba60: 461d         	mov	r5, r3
  2eba62: aa12         	add	r2, sp, #0x48
  2eba64: ab10         	add	r3, sp, #0x40
  2eba66: 4610         	mov	r0, r2
  2eba68: 4619         	mov	r1, r3
  2eba6a: f2a7 fb21    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7642
  2eba6e: ab12         	add	r3, sp, #0x48
  2eba70: 4628         	mov	r0, r5
  2eba72: 4619         	mov	r1, r3
  2eba74: 2200         	movs	r2, #0x0
  2eba76: f085 f957    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x852ae
  2eba7a: 9b03         	ldr	r3, [sp, #0xc]
  2eba7c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2eba80: 681b         	ldr	r3, [r3]
  2eba82: 3354         	adds	r3, #0x54
  2eba84: 681b         	ldr	r3, [r3]
  2eba86: 9a03         	ldr	r2, [sp, #0xc]
  2eba88: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2eba8c: 4611         	mov	r1, r2
  2eba8e: 4a64         	ldr	r2, [pc, #0x190]        @ 0x2ebc20 <AvatarCreator::init()+0xd40>
  2eba90: 58a2         	ldr	r2, [r4, r2]
  2eba92: ed92 7a00    	vldr	s14, [r2]
  2eba96: eddf 7a5f    	vldr	s15, [pc, #380]         @ 0x2ebc14 <AvatarCreator::init()+0xd34>
  2eba9a: ee77 7a67    	vsub.f32	s15, s14, s15
  2eba9e: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebaa0: 4608         	mov	r0, r1
  2ebaa2: ee17 1a90    	vmov	r1, s15
  2ebaa6: 4798         	blx	r3
  2ebaa8: 9b03         	ldr	r3, [sp, #0xc]
  2ebaaa: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ebaae: 461a         	mov	r2, r3
  2ebab0: 9b03         	ldr	r3, [sp, #0xc]
  2ebab2: 33e4         	adds	r3, #0xe4
  2ebab4: 4610         	mov	r0, r2
  2ebab6: 4619         	mov	r1, r3
  2ebab8: f7fe fcc0    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x1680
  2ebabc: ab12         	add	r3, sp, #0x48
  2ebabe: 4618         	mov	r0, r3
  2ebac0: f04f 0100    	mov.w	r1, #0x0
  2ebac4: f2c4 2184    	movt	r1, #0x4284
  2ebac8: f04f 0200    	mov.w	r2, #0x0
  2ebacc: f2c4 325c    	movt	r2, #0x435c
  2ebad0: f2a7 fae0    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a75c0
  2ebad4: aa10         	add	r2, sp, #0x40
  2ebad6: ab12         	add	r3, sp, #0x48
  2ebad8: 4610         	mov	r0, r2
  2ebada: 4619         	mov	r1, r3
  2ebadc: f2a7 fb08    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7610
  2ebae0: f44f 70e8    	mov.w	r0, #0x1d0
  2ebae4: f09b f73e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49be7c
  2ebae8: 4605         	mov	r5, r0
  2ebaea: 462a         	mov	r2, r5
  2ebaec: f44f 73e8    	mov.w	r3, #0x1d0
  2ebaf0: 4610         	mov	r0, r2
  2ebaf2: 2100         	movs	r1, #0x0
  2ebaf4: 461a         	mov	r2, r3
  2ebaf6: f7ea ea3e    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15b84
  2ebafa: 4628         	mov	r0, r5
  2ebafc: f7ff f8ce    	bl	0x2eac9c <ShirtTableView::ShirtTableView()> @ imm = #-0xe64
  2ebb00: 9b03         	ldr	r3, [sp, #0xc]
  2ebb02: f8c3 5130    	str.w	r5, [r3, #0x130]
  2ebb06: 9b03         	ldr	r3, [sp, #0xc]
  2ebb08: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ebb0c: 461d         	mov	r5, r3
  2ebb0e: aa12         	add	r2, sp, #0x48
  2ebb10: ab10         	add	r3, sp, #0x40
  2ebb12: 4610         	mov	r0, r2
  2ebb14: 4619         	mov	r1, r3
  2ebb16: f2a7 facb    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7596
  2ebb1a: ab12         	add	r3, sp, #0x48
  2ebb1c: 4628         	mov	r0, r5
  2ebb1e: 4619         	mov	r1, r3
  2ebb20: 2200         	movs	r2, #0x0
  2ebb22: f085 f901    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85202
  2ebb26: 9b03         	ldr	r3, [sp, #0xc]
  2ebb28: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ebb2c: 681b         	ldr	r3, [r3]
  2ebb2e: 3354         	adds	r3, #0x54
  2ebb30: 681b         	ldr	r3, [r3]
  2ebb32: 9a03         	ldr	r2, [sp, #0xc]
  2ebb34: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2ebb38: 4611         	mov	r1, r2
  2ebb3a: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x2ebc20 <AvatarCreator::init()+0xd40>
  2ebb3c: 58a2         	ldr	r2, [r4, r2]
  2ebb3e: ed92 7a00    	vldr	s14, [r2]
  2ebb42: eddf 7a35    	vldr	s15, [pc, #212]         @ 0x2ebc18 <AvatarCreator::init()+0xd38>
  2ebb46: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebb4a: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebb4c: 4608         	mov	r0, r1
  2ebb4e: ee17 1a90    	vmov	r1, s15
  2ebb52: 4798         	blx	r3
  2ebb54: 9b03         	ldr	r3, [sp, #0xc]
  2ebb56: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ebb5a: 461a         	mov	r2, r3
  2ebb5c: 9b03         	ldr	r3, [sp, #0xc]
  2ebb5e: 33e4         	adds	r3, #0xe4
  2ebb60: 4610         	mov	r0, r2
  2ebb62: 4619         	mov	r1, r3
  2ebb64: f7fe fc6a    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x172c
  2ebb68: ab12         	add	r3, sp, #0x48
  2ebb6a: 4618         	mov	r0, r3
  2ebb6c: f04f 0100    	mov.w	r1, #0x0
  2ebb70: f2c4 2128    	movt	r1, #0x4228
  2ebb74: f04f 0200    	mov.w	r2, #0x0
  2ebb78: f2c4 325c    	movt	r2, #0x435c
  2ebb7c: f2a7 fa8a    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a7514
  2ebb80: aa10         	add	r2, sp, #0x40
  2ebb82: ab12         	add	r3, sp, #0x48
  2ebb84: 4610         	mov	r0, r2
  2ebb86: 4619         	mov	r1, r3
  2ebb88: f2a7 fab2    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7564
  2ebb8c: f44f 70e8    	mov.w	r0, #0x1d0
  2ebb90: f09b f6e8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bdd0
  2ebb94: 4605         	mov	r5, r0
  2ebb96: 462a         	mov	r2, r5
  2ebb98: f44f 73e8    	mov.w	r3, #0x1d0
  2ebb9c: 4610         	mov	r0, r2
  2ebb9e: 2100         	movs	r1, #0x0
  2ebba0: 461a         	mov	r2, r3
  2ebba2: f7ea e9e8    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15c30
  2ebba6: 4628         	mov	r0, r5
  2ebba8: f7ff f8b2    	bl	0x2ead10 <LegTableView::LegTableView()> @ imm = #-0xe9c
  2ebbac: 9b03         	ldr	r3, [sp, #0xc]
  2ebbae: f8c3 5134    	str.w	r5, [r3, #0x134]
  2ebbb2: 9b03         	ldr	r3, [sp, #0xc]
  2ebbb4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ebbb8: 461d         	mov	r5, r3
  2ebbba: aa12         	add	r2, sp, #0x48
  2ebbbc: ab10         	add	r3, sp, #0x40
  2ebbbe: 4610         	mov	r0, r2
  2ebbc0: 4619         	mov	r1, r3
  2ebbc2: f2a7 fa75    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a74ea
  2ebbc6: ab12         	add	r3, sp, #0x48
  2ebbc8: 4628         	mov	r0, r5
  2ebbca: 4619         	mov	r1, r3
  2ebbcc: 2200         	movs	r2, #0x0
  2ebbce: f085 f8ab    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85156
  2ebbd2: 9b03         	ldr	r3, [sp, #0xc]
  2ebbd4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ebbd8: 681b         	ldr	r3, [r3]
  2ebbda: 3354         	adds	r3, #0x54
  2ebbdc: 681b         	ldr	r3, [r3]
  2ebbde: 9a03         	ldr	r2, [sp, #0xc]
  2ebbe0: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2ebbe4: 4611         	mov	r1, r2
  2ebbe6: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x2ebc20 <AvatarCreator::init()+0xd40>
  2ebbe8: 58a2         	ldr	r2, [r4, r2]
  2ebbea: ed92 7a00    	vldr	s14, [r2]
  2ebbee: eddf 7a0b    	vldr	s15, [pc, #44]          @ 0x2ebc1c <AvatarCreator::init()+0xd3c>
  2ebbf2: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebbf6: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebbf8: 4608         	mov	r0, r1
  2ebbfa: ee17 1a90    	vmov	r1, s15
  2ebbfe: 4798         	blx	r3
  2ebc00: 9b03         	ldr	r3, [sp, #0xc]
  2ebc02: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ebc06: 461a         	mov	r2, r3
  2ebc08: 9b03         	ldr	r3, [sp, #0xc]
  2ebc0a: e00b         	b	0x2ebc24 <AvatarCreator::init()+0xd44> @ imm = #0x16
  2ebc0c: 0000         	movs	r0, r0
  2ebc0e: 432f         	orrs	r7, r5
  2ebc10: 0000         	movs	r0, r0
  2ebc12: 42d2         	cmn	r2, r2
  2ebc14: 0000         	movs	r0, r0
  2ebc16: 42a0         	cmp	r0, r4
  2ebc18: 0000         	movs	r0, r0
  2ebc1a: 4316         	orrs	r6, r2
  2ebc1c: 0000         	movs	r0, r0
  2ebc1e: 4348         	muls	r0, r1, r0
  2ebc20: d724         	bvc	0x2ebc6c <AvatarCreator::init()+0xd8c> @ imm = #0x48
  2ebc22: ffff 33e4    	<unknown>
  2ebc26: 4610         	mov	r0, r2
  2ebc28: 4619         	mov	r1, r3
  2ebc2a: f7fe fc07    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x17f2
  2ebc2e: ab12         	add	r3, sp, #0x48
  2ebc30: 4618         	mov	r0, r3
  2ebc32: f04f 0100    	mov.w	r1, #0x0
  2ebc36: f2c4 2140    	movt	r1, #0x4240
  2ebc3a: f04f 0200    	mov.w	r2, #0x0
  2ebc3e: f2c4 325c    	movt	r2, #0x435c
  2ebc42: f2a7 fa27    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a744e
  2ebc46: aa10         	add	r2, sp, #0x40
  2ebc48: ab12         	add	r3, sp, #0x48
  2ebc4a: 4610         	mov	r0, r2
  2ebc4c: 4619         	mov	r1, r3
  2ebc4e: f2a7 fa4f    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a749e
  2ebc52: f44f 70e8    	mov.w	r0, #0x1d0
  2ebc56: f09b f685    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bd0a
  2ebc5a: 4605         	mov	r5, r0
  2ebc5c: 462a         	mov	r2, r5
  2ebc5e: f44f 73e8    	mov.w	r3, #0x1d0
  2ebc62: 4610         	mov	r0, r2
  2ebc64: 2100         	movs	r1, #0x0
  2ebc66: 461a         	mov	r2, r3
  2ebc68: f7ea e984    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15cf8
  2ebc6c: 4628         	mov	r0, r5
  2ebc6e: f7ff f889    	bl	0x2ead84 <FootTableView::FootTableView()> @ imm = #-0xeee
  2ebc72: 9b03         	ldr	r3, [sp, #0xc]
  2ebc74: f8c3 5138    	str.w	r5, [r3, #0x138]
  2ebc78: 9b03         	ldr	r3, [sp, #0xc]
  2ebc7a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ebc7e: 461d         	mov	r5, r3
  2ebc80: aa12         	add	r2, sp, #0x48
  2ebc82: ab10         	add	r3, sp, #0x40
  2ebc84: 4610         	mov	r0, r2
  2ebc86: 4619         	mov	r1, r3
  2ebc88: f2a7 fa12    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7424
  2ebc8c: ab12         	add	r3, sp, #0x48
  2ebc8e: 4628         	mov	r0, r5
  2ebc90: 4619         	mov	r1, r3
  2ebc92: 2200         	movs	r2, #0x0
  2ebc94: f085 f848    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x85090
  2ebc98: 9b03         	ldr	r3, [sp, #0xc]
  2ebc9a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ebc9e: 681b         	ldr	r3, [r3]
  2ebca0: 3354         	adds	r3, #0x54
  2ebca2: 681b         	ldr	r3, [r3]
  2ebca4: 9a03         	ldr	r2, [sp, #0xc]
  2ebca6: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ebcaa: 4611         	mov	r1, r2
  2ebcac: 4abb         	ldr	r2, [pc, #0x2ec]        @ 0x2ebf9c <AvatarCreator::init()+0x10bc>
  2ebcae: 58a2         	ldr	r2, [r4, r2]
  2ebcb0: ed92 7a00    	vldr	s14, [r2]
  2ebcb4: eddf 7ab6    	vldr	s15, [pc, #728]         @ 0x2ebf90 <AvatarCreator::init()+0x10b0>
  2ebcb8: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebcbc: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebcbe: 4608         	mov	r0, r1
  2ebcc0: ee17 1a90    	vmov	r1, s15
  2ebcc4: 4798         	blx	r3
  2ebcc6: 9b03         	ldr	r3, [sp, #0xc]
  2ebcc8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ebccc: 461a         	mov	r2, r3
  2ebcce: 9b03         	ldr	r3, [sp, #0xc]
  2ebcd0: 33e4         	adds	r3, #0xe4
  2ebcd2: 4610         	mov	r0, r2
  2ebcd4: 4619         	mov	r1, r3
  2ebcd6: f7fe fbb1    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x189e
  2ebcda: ab12         	add	r3, sp, #0x48
  2ebcdc: 4618         	mov	r0, r3
  2ebcde: f04f 0100    	mov.w	r1, #0x0
  2ebce2: f2c4 2140    	movt	r1, #0x4240
  2ebce6: f04f 0200    	mov.w	r2, #0x0
  2ebcea: f2c4 325c    	movt	r2, #0x435c
  2ebcee: f2a7 f9d1    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a73a2
  2ebcf2: aa10         	add	r2, sp, #0x40
  2ebcf4: ab12         	add	r3, sp, #0x48
  2ebcf6: 4610         	mov	r0, r2
  2ebcf8: 4619         	mov	r1, r3
  2ebcfa: f2a7 f9f9    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a73f2
  2ebcfe: f44f 70e8    	mov.w	r0, #0x1d0
  2ebd02: f09b f62f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bc5e
  2ebd06: 4605         	mov	r5, r0
  2ebd08: 462a         	mov	r2, r5
  2ebd0a: f44f 73e8    	mov.w	r3, #0x1d0
  2ebd0e: 4610         	mov	r0, r2
  2ebd10: 2100         	movs	r1, #0x0
  2ebd12: 461a         	mov	r2, r3
  2ebd14: f7ea e92e    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15da4
  2ebd18: 4628         	mov	r0, r5
  2ebd1a: f7ff f86d    	bl	0x2eadf8 <HandTableView::HandTableView()> @ imm = #-0xf26
  2ebd1e: 9b03         	ldr	r3, [sp, #0xc]
  2ebd20: f8c3 513c    	str.w	r5, [r3, #0x13c]
  2ebd24: 9b03         	ldr	r3, [sp, #0xc]
  2ebd26: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ebd2a: 461d         	mov	r5, r3
  2ebd2c: aa12         	add	r2, sp, #0x48
  2ebd2e: ab10         	add	r3, sp, #0x40
  2ebd30: 4610         	mov	r0, r2
  2ebd32: 4619         	mov	r1, r3
  2ebd34: f2a7 f9bc    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a7378
  2ebd38: ab12         	add	r3, sp, #0x48
  2ebd3a: 4628         	mov	r0, r5
  2ebd3c: 4619         	mov	r1, r3
  2ebd3e: 2200         	movs	r2, #0x0
  2ebd40: f084 fff2    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x84fe4
  2ebd44: 9b03         	ldr	r3, [sp, #0xc]
  2ebd46: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ebd4a: 681b         	ldr	r3, [r3]
  2ebd4c: 3354         	adds	r3, #0x54
  2ebd4e: 681b         	ldr	r3, [r3]
  2ebd50: 9a03         	ldr	r2, [sp, #0xc]
  2ebd52: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ebd56: 4611         	mov	r1, r2
  2ebd58: 4a90         	ldr	r2, [pc, #0x240]        @ 0x2ebf9c <AvatarCreator::init()+0x10bc>
  2ebd5a: 58a2         	ldr	r2, [r4, r2]
  2ebd5c: ed92 7a00    	vldr	s14, [r2]
  2ebd60: eddf 7a8c    	vldr	s15, [pc, #560]         @ 0x2ebf94 <AvatarCreator::init()+0x10b4>
  2ebd64: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebd68: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebd6a: 4608         	mov	r0, r1
  2ebd6c: ee17 1a90    	vmov	r1, s15
  2ebd70: 4798         	blx	r3
  2ebd72: 9b03         	ldr	r3, [sp, #0xc]
  2ebd74: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ebd78: 461a         	mov	r2, r3
  2ebd7a: 9b03         	ldr	r3, [sp, #0xc]
  2ebd7c: 33e4         	adds	r3, #0xe4
  2ebd7e: 4610         	mov	r0, r2
  2ebd80: 4619         	mov	r1, r3
  2ebd82: f7fe fb5b    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x194a
  2ebd86: ab12         	add	r3, sp, #0x48
  2ebd88: 4618         	mov	r0, r3
  2ebd8a: f04f 0100    	mov.w	r1, #0x0
  2ebd8e: f2c4 2184    	movt	r1, #0x4284
  2ebd92: f04f 0200    	mov.w	r2, #0x0
  2ebd96: f2c4 325c    	movt	r2, #0x435c
  2ebd9a: f2a7 f97b    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2a72f6
  2ebd9e: aa10         	add	r2, sp, #0x40
  2ebda0: ab12         	add	r3, sp, #0x48
  2ebda2: 4610         	mov	r0, r2
  2ebda4: 4619         	mov	r1, r3
  2ebda6: f2a7 f9a3    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2a7346
  2ebdaa: f44f 70e8    	mov.w	r0, #0x1d0
  2ebdae: f09b f5d9    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49bbb2
  2ebdb2: 4605         	mov	r5, r0
  2ebdb4: 462a         	mov	r2, r5
  2ebdb6: f44f 73e8    	mov.w	r3, #0x1d0
  2ebdba: 4610         	mov	r0, r2
  2ebdbc: 2100         	movs	r1, #0x0
  2ebdbe: 461a         	mov	r2, r3
  2ebdc0: f7ea e8d8    	blx	0x2d5f74 <.plt+0xa4>    @ imm = #-0x15e50
  2ebdc4: 4628         	mov	r0, r5
  2ebdc6: f7ff f851    	bl	0x2eae6c <VestTableView::VestTableView()> @ imm = #-0xf5e
  2ebdca: 9b03         	ldr	r3, [sp, #0xc]
  2ebdcc: f8c3 5140    	str.w	r5, [r3, #0x140]
  2ebdd0: 9b03         	ldr	r3, [sp, #0xc]
  2ebdd2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ebdd6: 461d         	mov	r5, r3
  2ebdd8: aa12         	add	r2, sp, #0x48
  2ebdda: ab10         	add	r3, sp, #0x40
  2ebddc: 4610         	mov	r0, r2
  2ebdde: 4619         	mov	r1, r3
  2ebde0: f2a7 f966    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a72cc
  2ebde4: ab12         	add	r3, sp, #0x48
  2ebde6: 4628         	mov	r0, r5
  2ebde8: 4619         	mov	r1, r3
  2ebdea: 2200         	movs	r2, #0x0
  2ebdec: f084 ff9c    	bl	0x370d28 <MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*)> @ imm = #0x84f38
  2ebdf0: 9b03         	ldr	r3, [sp, #0xc]
  2ebdf2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ebdf6: 681b         	ldr	r3, [r3]
  2ebdf8: 3354         	adds	r3, #0x54
  2ebdfa: 681b         	ldr	r3, [r3]
  2ebdfc: 9a03         	ldr	r2, [sp, #0xc]
  2ebdfe: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ebe02: 4611         	mov	r1, r2
  2ebe04: 4a65         	ldr	r2, [pc, #0x194]        @ 0x2ebf9c <AvatarCreator::init()+0x10bc>
  2ebe06: 58a2         	ldr	r2, [r4, r2]
  2ebe08: ed92 7a00    	vldr	s14, [r2]
  2ebe0c: eddf 7a62    	vldr	s15, [pc, #392]         @ 0x2ebf98 <AvatarCreator::init()+0x10b8>
  2ebe10: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebe14: 9a0f         	ldr	r2, [sp, #0x3c]
  2ebe16: 4608         	mov	r0, r1
  2ebe18: ee17 1a90    	vmov	r1, s15
  2ebe1c: 4798         	blx	r3
  2ebe1e: 9b03         	ldr	r3, [sp, #0xc]
  2ebe20: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ebe24: 461a         	mov	r2, r3
  2ebe26: 9b03         	ldr	r3, [sp, #0xc]
  2ebe28: 33e4         	adds	r3, #0xe4
  2ebe2a: 4610         	mov	r0, r2
  2ebe2c: 4619         	mov	r1, r3
  2ebe2e: f7fe fb05    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0x19f6
  2ebe32: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x2ebfa0 <AvatarCreator::init()+0x10c0>
  2ebe34: 58e3         	ldr	r3, [r4, r3]
  2ebe36: f04f 527e    	mov.w	r2, #0x3f800000
  2ebe3a: 601a         	str	r2, [r3]
  2ebe3c: f7fe fa3e    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x1b84
  2ebe40: 4602         	mov	r2, r0
  2ebe42: 9b03         	ldr	r3, [sp, #0xc]
  2ebe44: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2ebe48: 9b03         	ldr	r3, [sp, #0xc]
  2ebe4a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebe4e: 4618         	mov	r0, r3
  2ebe50: f2ac f84a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2ac094
  2ebe54: 9b03         	ldr	r3, [sp, #0xc]
  2ebe56: 681b         	ldr	r3, [r3]
  2ebe58: 33c8         	adds	r3, #0xc8
  2ebe5a: 681b         	ldr	r3, [r3]
  2ebe5c: 9903         	ldr	r1, [sp, #0xc]
  2ebe5e: 9a03         	ldr	r2, [sp, #0xc]
  2ebe60: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2ebe64: 4608         	mov	r0, r1
  2ebe66: 4611         	mov	r1, r2
  2ebe68: 4798         	blx	r3
  2ebe6a: 9b03         	ldr	r3, [sp, #0xc]
  2ebe6c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebe70: 2201         	movs	r2, #0x1
  2ebe72: f883 21e1    	strb.w	r2, [r3, #0x1e1]
  2ebe76: 9b03         	ldr	r3, [sp, #0xc]
  2ebe78: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebe7c: 681b         	ldr	r3, [r3]
  2ebe7e: 334c         	adds	r3, #0x4c
  2ebe80: 681d         	ldr	r5, [r3]
  2ebe82: 9b03         	ldr	r3, [sp, #0xc]
  2ebe84: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebe88: 461e         	mov	r6, r3
  2ebe8a: 4b44         	ldr	r3, [pc, #0x110]        @ 0x2ebf9c <AvatarCreator::init()+0x10bc>
  2ebe8c: 58e3         	ldr	r3, [r4, r3]
  2ebe8e: ed93 7a00    	vldr	s14, [r3]
  2ebe92: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ebe96: ee87 7a27    	vdiv.f32	s14, s14, s15
  2ebe9a: eddf 7a3f    	vldr	s15, [pc, #252]         @ 0x2ebf98 <AvatarCreator::init()+0x10b8>
  2ebe9e: ee77 6a67    	vsub.f32	s13, s14, s15
  2ebea2: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x2ebf9c <AvatarCreator::init()+0x10bc>
  2ebea4: 58e3         	ldr	r3, [r4, r3]
  2ebea6: ed93 7a01    	vldr	s14, [r3, #4]
  2ebeaa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2ebeae: ee87 7a27    	vdiv.f32	s14, s14, s15
  2ebeb2: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  2ebeb6: ee77 7a67    	vsub.f32	s15, s14, s15
  2ebeba: ab12         	add	r3, sp, #0x48
  2ebebc: 4618         	mov	r0, r3
  2ebebe: ee16 1a90    	vmov	r1, s13
  2ebec2: ee17 2a90    	vmov	r2, s15
  2ebec6: f2a6 ff13    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a6e26
  2ebeca: ab12         	add	r3, sp, #0x48
  2ebecc: 4630         	mov	r0, r6
  2ebece: 4619         	mov	r1, r3
  2ebed0: 47a8         	blx	r5
  2ebed2: 9b03         	ldr	r3, [sp, #0xc]
  2ebed4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebed8: 4618         	mov	r0, r3
  2ebeda: f04f 0100    	mov.w	r1, #0x0
  2ebede: f106 fe4f    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0x106c9e
  2ebee2: 9b03         	ldr	r3, [sp, #0xc]
  2ebee4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebee8: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2ebeec: 681b         	ldr	r3, [r3]
  2ebeee: 3398         	adds	r3, #0x98
  2ebef0: 681b         	ldr	r3, [r3]
  2ebef2: 9a03         	ldr	r2, [sp, #0xc]
  2ebef4: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2ebef8: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2ebefc: 4610         	mov	r0, r2
  2ebefe: f04f 0100    	mov.w	r1, #0x0
  2ebf02: 4798         	blx	r3
  2ebf04: 9b03         	ldr	r3, [sp, #0xc]
  2ebf06: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebf0a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ebf0e: 681b         	ldr	r3, [r3]
  2ebf10: 3398         	adds	r3, #0x98
  2ebf12: 681b         	ldr	r3, [r3]
  2ebf14: 9a03         	ldr	r2, [sp, #0xc]
  2ebf16: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2ebf1a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2ebf1e: 4610         	mov	r0, r2
  2ebf20: f04f 0100    	mov.w	r1, #0x0
  2ebf24: f2c4 21c8    	movt	r1, #0x42c8
  2ebf28: 4798         	blx	r3
  2ebf2a: 9b03         	ldr	r3, [sp, #0xc]
  2ebf2c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebf30: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ebf34: 681b         	ldr	r3, [r3]
  2ebf36: 3398         	adds	r3, #0x98
  2ebf38: 681b         	ldr	r3, [r3]
  2ebf3a: 9a03         	ldr	r2, [sp, #0xc]
  2ebf3c: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2ebf40: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2ebf44: 4610         	mov	r0, r2
  2ebf46: f04f 0100    	mov.w	r1, #0x0
  2ebf4a: f2c4 2148    	movt	r1, #0x4248
  2ebf4e: 4798         	blx	r3
  2ebf50: 9b03         	ldr	r3, [sp, #0xc]
  2ebf52: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ebf56: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2ebf5a: 681b         	ldr	r3, [r3]
  2ebf5c: 3390         	adds	r3, #0x90
  2ebf5e: 681b         	ldr	r3, [r3]
  2ebf60: 9a03         	ldr	r2, [sp, #0xc]
  2ebf62: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2ebf66: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2ebf6a: 4610         	mov	r0, r2
  2ebf6c: 2100         	movs	r1, #0x0
  2ebf6e: 4798         	blx	r3
  2ebf70: f007 fda2    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7b44
  2ebf74: 4603         	mov	r3, r0
  2ebf76: 4618         	mov	r0, r3
  2ebf78: f00c f9ea    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #0xc3d4
  2ebf7c: 4603         	mov	r3, r0
  2ebf7e: 9306         	str	r3, [sp, #0x18]
  2ebf80: f007 fd9a    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7b34
  2ebf84: 4603         	mov	r3, r0
  2ebf86: 4618         	mov	r0, r3
  2ebf88: 9906         	ldr	r1, [sp, #0x18]
  2ebf8a: 2200         	movs	r2, #0x0
  2ebf8c: e00a         	b	0x2ebfa4 <AvatarCreator::init()+0x10c4> @ imm = #0x14
  2ebf8e: bf00         	nop
  2ebf90: 0000         	movs	r0, r0
  2ebf92: 433e         	orrs	r6, r7
  2ebf94: 0000         	movs	r0, r0
  2ebf96: 4302         	orrs	r2, r0
  2ebf98: 0000         	movs	r0, r0
  2ebf9a: 42a0         	cmp	r0, r4
  2ebf9c: d724         	bvc	0x2ebfe8 <AvatarCreator::init()+0x1108> @ imm = #0x48
  2ebf9e: ffff d748    	<unknown>
  2ebfa2: ffff f00b    	<unknown>
  2ebfa6: f864 4603    	<unknown>
  2ebfaa: 9307         	str	r3, [sp, #0x1c]
  2ebfac: f007 fd84    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7b08
  2ebfb0: 4603         	mov	r3, r0
  2ebfb2: 4618         	mov	r0, r3
  2ebfb4: 9906         	ldr	r1, [sp, #0x18]
  2ebfb6: 2200         	movs	r2, #0x0
  2ebfb8: f00b ff64    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #0xbec8
  2ebfbc: 4603         	mov	r3, r0
  2ebfbe: 9308         	str	r3, [sp, #0x20]
  2ebfc0: f007 fd7a    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7af4
  2ebfc4: 4603         	mov	r3, r0
  2ebfc6: 4618         	mov	r0, r3
  2ebfc8: 9906         	ldr	r1, [sp, #0x18]
  2ebfca: 2200         	movs	r2, #0x0
  2ebfcc: f00b fff8    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #0xbff0
  2ebfd0: 4603         	mov	r3, r0
  2ebfd2: 9309         	str	r3, [sp, #0x24]
  2ebfd4: f007 fd70    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7ae0
  2ebfd8: 4603         	mov	r3, r0
  2ebfda: 4618         	mov	r0, r3
  2ebfdc: 9906         	ldr	r1, [sp, #0x18]
  2ebfde: 2200         	movs	r2, #0x0
  2ebfe0: f00c f88c    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #0xc118
  2ebfe4: 4603         	mov	r3, r0
  2ebfe6: 930a         	str	r3, [sp, #0x28]
  2ebfe8: f007 fd66    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x7acc
  2ebfec: 4603         	mov	r3, r0
  2ebfee: 4618         	mov	r0, r3
  2ebff0: 9906         	ldr	r1, [sp, #0x18]
  2ebff2: 2200         	movs	r2, #0x0
  2ebff4: f00c f920    	bl	0x2f8238 <AvatarRenderer::getBodyType(cocos2d::CCArray*, int)> @ imm = #0xc240
  2ebff8: 4603         	mov	r3, r0
  2ebffa: 930b         	str	r3, [sp, #0x2c]
  2ebffc: 9b03         	ldr	r3, [sp, #0xc]
  2ebffe: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ec002: 9a09         	ldr	r2, [sp, #0x24]
  2ec004: 9200         	str	r2, [sp]
  2ec006: 9a0a         	ldr	r2, [sp, #0x28]
  2ec008: 9201         	str	r2, [sp, #0x4]
  2ec00a: 4618         	mov	r0, r3
  2ec00c: 990b         	ldr	r1, [sp, #0x2c]
  2ec00e: 9a07         	ldr	r2, [sp, #0x1c]
  2ec010: 9b08         	ldr	r3, [sp, #0x20]
  2ec012: f108 f837    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x10806e
  2ec016: 2301         	movs	r3, #0x1
  2ec018: e068         	b	0x2ec0ec <AvatarCreator::init()+0x120c> @ imm = #0xd0
  2ec01a: 4628         	mov	r0, r5
  2ec01c: f09c f042    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c084
  2ec020: f09c f044    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c088
  2ec024: 4628         	mov	r0, r5
  2ec026: f09c f03d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c07a
  2ec02a: f09c f03f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c07e
  2ec02e: 4628         	mov	r0, r5
  2ec030: f09c f038    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c070
  2ec034: f09c f03a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c074
  2ec038: 4628         	mov	r0, r5
  2ec03a: f09c f033    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c066
  2ec03e: f09c f035    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c06a
  2ec042: 4628         	mov	r0, r5
  2ec044: f09c f02e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c05c
  2ec048: f09c f030    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c060
  2ec04c: 4628         	mov	r0, r5
  2ec04e: f09c f029    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c052
  2ec052: f09c f02b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c056
  2ec056: 4628         	mov	r0, r5
  2ec058: f09c f024    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c048
  2ec05c: f09c f026    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c04c
  2ec060: 4628         	mov	r0, r5
  2ec062: f09c f01f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c03e
  2ec066: f09c f021    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c042
  2ec06a: 4628         	mov	r0, r5
  2ec06c: f09c f01a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c034
  2ec070: f09c f01c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c038
  2ec074: 4628         	mov	r0, r5
  2ec076: f09c f015    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c02a
  2ec07a: f09c f017    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c02e
  2ec07e: 4628         	mov	r0, r5
  2ec080: f09c f010    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c020
  2ec084: f09c f012    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c024
  2ec088: 4628         	mov	r0, r5
  2ec08a: f09c f00b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c016
  2ec08e: f09c f00d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c01a
  2ec092: 4628         	mov	r0, r5
  2ec094: f09c f006    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c00c
  2ec098: f09c f008    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c010
  2ec09c: 4628         	mov	r0, r5
  2ec09e: f09c f001    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49c002
  2ec0a2: f09c f003    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49c006
  2ec0a6: 4628         	mov	r0, r5
  2ec0a8: f09b f7fc    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bff8
  2ec0ac: f09b f7fe    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bffc
  2ec0b0: 4628         	mov	r0, r5
  2ec0b2: f09b f7f7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfee
  2ec0b6: f09b f7f9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bff2
  2ec0ba: 4628         	mov	r0, r5
  2ec0bc: f09b f7f2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfe4
  2ec0c0: f09b f7f4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bfe8
  2ec0c4: 4628         	mov	r0, r5
  2ec0c6: f09b f7ed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfda
  2ec0ca: f09b f7ef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bfde
  2ec0ce: 4628         	mov	r0, r5
  2ec0d0: f09b f7e8    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfd0
  2ec0d4: f09b f7ea    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bfd4
  2ec0d8: 4628         	mov	r0, r5
  2ec0da: f09b f7e3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfc6
  2ec0de: f09b f7e5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bfca
  2ec0e2: 4628         	mov	r0, r5
  2ec0e4: f09b f7de    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49bfbc
  2ec0e8: f09b f7e0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49bfc0
  2ec0ec: 4618         	mov	r0, r3
  2ec0ee: b014         	add	sp, #0x50
  2ec0f0: bd70         	pop	{r4, r5, r6, pc}

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec0f4 (= ELF address; Ghidra 0x2fc0f4), 380 bytes, Thumb-2
  2ec0f4: b500         	push	{lr}
  2ec0f6: b083         	sub	sp, #0xc
  2ec0f8: 9001         	str	r0, [sp, #0x4]
  2ec0fa: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x2ec268 <AvatarCreator::~AvatarCreator()+0x174>
  2ec0fc: 447b         	add	r3, pc
  2ec0fe: 9a01         	ldr	r2, [sp, #0x4]
  2ec100: 495a         	ldr	r1, [pc, #0x168]        @ 0x2ec26c <AvatarCreator::~AvatarCreator()+0x178>
  2ec102: 5859         	ldr	r1, [r3, r1]
  2ec104: 3108         	adds	r1, #0x8
  2ec106: 6011         	str	r1, [r2]
  2ec108: 9a01         	ldr	r2, [sp, #0x4]
  2ec10a: 4958         	ldr	r1, [pc, #0x160]        @ 0x2ec26c <AvatarCreator::~AvatarCreator()+0x178>
  2ec10c: 5859         	ldr	r1, [r3, r1]
  2ec10e: f501 71e0    	add.w	r1, r1, #0x1c0
  2ec112: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2ec116: 9a01         	ldr	r2, [sp, #0x4]
  2ec118: 4954         	ldr	r1, [pc, #0x150]        @ 0x2ec26c <AvatarCreator::~AvatarCreator()+0x178>
  2ec11a: 585b         	ldr	r3, [r3, r1]
  2ec11c: f503 73f4    	add.w	r3, r3, #0x1e8
  2ec120: f8c2 30e8    	str.w	r3, [r2, #0xe8]
  2ec124: 9b01         	ldr	r3, [sp, #0x4]
  2ec126: 4618         	mov	r0, r3
  2ec128: f2a4 fa80    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2a4500
  2ec12c: 9b01         	ldr	r3, [sp, #0x4]
  2ec12e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2ec132: 4618         	mov	r0, r3
  2ec134: f2ab fec0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd80
  2ec138: 9b01         	ldr	r3, [sp, #0x4]
  2ec13a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2ec13e: 4618         	mov	r0, r3
  2ec140: f2ab feba    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd74
  2ec144: 9b01         	ldr	r3, [sp, #0x4]
  2ec146: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2ec14a: 4618         	mov	r0, r3
  2ec14c: f2ab feb4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd68
  2ec150: 9b01         	ldr	r3, [sp, #0x4]
  2ec152: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2ec156: 4618         	mov	r0, r3
  2ec158: f2ab feae    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd5c
  2ec15c: 9b01         	ldr	r3, [sp, #0x4]
  2ec15e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ec162: 4618         	mov	r0, r3
  2ec164: f2ab fea8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd50
  2ec168: 9b01         	ldr	r3, [sp, #0x4]
  2ec16a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2ec16e: 4618         	mov	r0, r3
  2ec170: f2ab fea2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd44
  2ec174: 9b01         	ldr	r3, [sp, #0x4]
  2ec176: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2ec17a: 4618         	mov	r0, r3
  2ec17c: f2ab fe9c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd38
  2ec180: 9b01         	ldr	r3, [sp, #0x4]
  2ec182: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2ec186: 4618         	mov	r0, r3
  2ec188: f2ab fe96    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd2c
  2ec18c: 9b01         	ldr	r3, [sp, #0x4]
  2ec18e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2ec192: 4618         	mov	r0, r3
  2ec194: f2ab fe90    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd20
  2ec198: 9b01         	ldr	r3, [sp, #0x4]
  2ec19a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2ec19e: 4618         	mov	r0, r3
  2ec1a0: f2ab fe8a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd14
  2ec1a4: 9b01         	ldr	r3, [sp, #0x4]
  2ec1a6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ec1aa: 4618         	mov	r0, r3
  2ec1ac: f2ab fe84    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abd08
  2ec1b0: 9b01         	ldr	r3, [sp, #0x4]
  2ec1b2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ec1b6: 4618         	mov	r0, r3
  2ec1b8: f2ab fe7e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abcfc
  2ec1bc: 9b01         	ldr	r3, [sp, #0x4]
  2ec1be: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ec1c2: 4618         	mov	r0, r3
  2ec1c4: f2ab fe78    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abcf0
  2ec1c8: 9b01         	ldr	r3, [sp, #0x4]
  2ec1ca: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2ec1ce: 4618         	mov	r0, r3
  2ec1d0: f2ab fe72    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abce4
  2ec1d4: 9b01         	ldr	r3, [sp, #0x4]
  2ec1d6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ec1da: 4618         	mov	r0, r3
  2ec1dc: f2ab fe6c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abcd8
  2ec1e0: 9b01         	ldr	r3, [sp, #0x4]
  2ec1e2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ec1e6: 4618         	mov	r0, r3
  2ec1e8: f2ab fe66    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abccc
  2ec1ec: 9b01         	ldr	r3, [sp, #0x4]
  2ec1ee: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ec1f2: 4618         	mov	r0, r3
  2ec1f4: f2ab fe60    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abcc0
  2ec1f8: 9b01         	ldr	r3, [sp, #0x4]
  2ec1fa: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ec1fe: 4618         	mov	r0, r3
  2ec200: f2ab fe5a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abcb4
  2ec204: 9b01         	ldr	r3, [sp, #0x4]
  2ec206: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ec20a: 4618         	mov	r0, r3
  2ec20c: f2ab fe54    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abca8
  2ec210: 9b01         	ldr	r3, [sp, #0x4]
  2ec212: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ec216: 4618         	mov	r0, r3
  2ec218: f2ab fe4e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abc9c
  2ec21c: 9b01         	ldr	r3, [sp, #0x4]
  2ec21e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ec222: 4618         	mov	r0, r3
  2ec224: f2ab fe48    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abc90
  2ec228: 9b01         	ldr	r3, [sp, #0x4]
  2ec22a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ec22e: 4618         	mov	r0, r3
  2ec230: f2ab fe42    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2abc84
  2ec234: 9b01         	ldr	r3, [sp, #0x4]
  2ec236: 33e8         	adds	r3, #0xe8
  2ec238: 4618         	mov	r0, r3
  2ec23a: f7fe f8b1    	bl	0x2ea3a0 <cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource()> @ imm = #-0x1e9e
  2ec23e: 9b01         	ldr	r3, [sp, #0x4]
  2ec240: 33e4         	adds	r3, #0xe4
  2ec242: 4618         	mov	r0, r3
  2ec244: f7fe f958    	bl	0x2ea4f8 <cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate()> @ imm = #-0x1d50
  2ec248: 9b01         	ldr	r3, [sp, #0x4]
  2ec24a: 4618         	mov	r0, r3
  2ec24c: f2a3 fafa    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2a35f4
  2ec250: 2300         	movs	r3, #0x0
  2ec252: 2b00         	cmp	r3, #0x0
  2ec254: d002         	beq	0x2ec25c <AvatarCreator::~AvatarCreator()+0x168> @ imm = #0x4
  2ec256: 9801         	ldr	r0, [sp, #0x4]
  2ec258: f09b f724    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49be48
  2ec25c: 9b01         	ldr	r3, [sp, #0x4]
  2ec25e: 4618         	mov	r0, r3
  2ec260: b003         	add	sp, #0xc
  2ec262: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2ec265); words below are literal-pool data ---
  2ec266: bf00         	nop
  2ec268: 690c         	ldr	r4, [r1, #0x10]
  2ec26a: 0064         	lsls	r4, r4, #0x1
  2ec26c: d848         	bhi	0x2ec300 <AvatarCreator::setTableViews(int)+0x54> @ imm = #0x90
  2ec26e: ffff f1a0    	<unknown>

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec270 (= ELF address; Ghidra 0x2fc270), 8 bytes, Thumb-2
  2ec270: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ec274: f7ff bf3e    	b.w	0x2ec0f4 <AvatarCreator::~AvatarCreator()> @ imm = #-0x184

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec278 (= ELF address; Ghidra 0x2fc278), 8 bytes, Thumb-2
  2ec278: f1a0 00e8    	sub.w	r0, r0, #0xe8
  2ec27c: f7ff bf3a    	b.w	0x2ec0f4 <AvatarCreator::~AvatarCreator()> @ imm = #-0x18c

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec280 (= ELF address; Ghidra 0x2fc280), 28 bytes, Thumb-2
  2ec280: b500         	push	{lr}
  2ec282: b083         	sub	sp, #0xc
  2ec284: 9001         	str	r0, [sp, #0x4]
  2ec286: 9801         	ldr	r0, [sp, #0x4]
  2ec288: f7ff ff34    	bl	0x2ec0f4 <AvatarCreator::~AvatarCreator()> @ imm = #-0x198
  2ec28c: 9801         	ldr	r0, [sp, #0x4]
  2ec28e: f09b f709    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49be12
  2ec292: 9b01         	ldr	r3, [sp, #0x4]
  2ec294: 4618         	mov	r0, r3
  2ec296: b003         	add	sp, #0xc
  2ec298: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec29c (= ELF address; Ghidra 0x2fc29c), 8 bytes, Thumb-2
  2ec29c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ec2a0: f7ff bfee    	b.w	0x2ec280 <AvatarCreator::~AvatarCreator()> @ imm = #-0x24

// ==== AvatarCreator::~AvatarCreator
//      file offset 0x2ec2a4 (= ELF address; Ghidra 0x2fc2a4), 8 bytes, Thumb-2
  2ec2a4: f1a0 00e8    	sub.w	r0, r0, #0xe8
  2ec2a8: f7ff bfea    	b.w	0x2ec280 <AvatarCreator::~AvatarCreator()> @ imm = #-0x2c

// ==== AvatarCreator::setTableViews
//      file offset 0x2ec2ac (= ELF address; Ghidra 0x2fc2ac), 1180 bytes, Thumb-2
  2ec2ac: b510         	push	{r4, lr}
  2ec2ae: b084         	sub	sp, #0x10
  2ec2b0: 9001         	str	r0, [sp, #0x4]
  2ec2b2: 9100         	str	r1, [sp]
  2ec2b4: 9b01         	ldr	r3, [sp, #0x4]
  2ec2b6: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2ec2ba: 681b         	ldr	r3, [r3]
  2ec2bc: 33e8         	adds	r3, #0xe8
  2ec2be: 681b         	ldr	r3, [r3]
  2ec2c0: 9a01         	ldr	r2, [sp, #0x4]
  2ec2c2: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2ec2c6: 4610         	mov	r0, r2
  2ec2c8: 4798         	blx	r3
  2ec2ca: 9b01         	ldr	r3, [sp, #0x4]
  2ec2cc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2ec2d0: 681b         	ldr	r3, [r3]
  2ec2d2: 33e8         	adds	r3, #0xe8
  2ec2d4: 681b         	ldr	r3, [r3]
  2ec2d6: 9a01         	ldr	r2, [sp, #0x4]
  2ec2d8: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2ec2dc: 4610         	mov	r0, r2
  2ec2de: 4798         	blx	r3
  2ec2e0: 9b01         	ldr	r3, [sp, #0x4]
  2ec2e2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ec2e6: 681b         	ldr	r3, [r3]
  2ec2e8: 33e8         	adds	r3, #0xe8
  2ec2ea: 681b         	ldr	r3, [r3]
  2ec2ec: 9a01         	ldr	r2, [sp, #0x4]
  2ec2ee: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2ec2f2: 4610         	mov	r0, r2
  2ec2f4: 4798         	blx	r3
  2ec2f6: 9b01         	ldr	r3, [sp, #0x4]
  2ec2f8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2ec2fc: 681b         	ldr	r3, [r3]
  2ec2fe: 33e8         	adds	r3, #0xe8
  2ec300: 681b         	ldr	r3, [r3]
  2ec302: 9a01         	ldr	r2, [sp, #0x4]
  2ec304: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2ec308: 4610         	mov	r0, r2
  2ec30a: 4798         	blx	r3
  2ec30c: 9b01         	ldr	r3, [sp, #0x4]
  2ec30e: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2ec312: 681b         	ldr	r3, [r3]
  2ec314: 33e8         	adds	r3, #0xe8
  2ec316: 681b         	ldr	r3, [r3]
  2ec318: 9a01         	ldr	r2, [sp, #0x4]
  2ec31a: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  2ec31e: 4610         	mov	r0, r2
  2ec320: 4798         	blx	r3
  2ec322: 9b01         	ldr	r3, [sp, #0x4]
  2ec324: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2ec328: 681b         	ldr	r3, [r3]
  2ec32a: 33e8         	adds	r3, #0xe8
  2ec32c: 681b         	ldr	r3, [r3]
  2ec32e: 9a01         	ldr	r2, [sp, #0x4]
  2ec330: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  2ec334: 4610         	mov	r0, r2
  2ec336: 4798         	blx	r3
  2ec338: 9b01         	ldr	r3, [sp, #0x4]
  2ec33a: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2ec33e: 681b         	ldr	r3, [r3]
  2ec340: 33e8         	adds	r3, #0xe8
  2ec342: 681b         	ldr	r3, [r3]
  2ec344: 9a01         	ldr	r2, [sp, #0x4]
  2ec346: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  2ec34a: 4610         	mov	r0, r2
  2ec34c: 4798         	blx	r3
  2ec34e: 9b01         	ldr	r3, [sp, #0x4]
  2ec350: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2ec354: 681b         	ldr	r3, [r3]
  2ec356: 33e8         	adds	r3, #0xe8
  2ec358: 681b         	ldr	r3, [r3]
  2ec35a: 9a01         	ldr	r2, [sp, #0x4]
  2ec35c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2ec360: 4610         	mov	r0, r2
  2ec362: 4798         	blx	r3
  2ec364: 9b01         	ldr	r3, [sp, #0x4]
  2ec366: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ec36a: 681b         	ldr	r3, [r3]
  2ec36c: 33e8         	adds	r3, #0xe8
  2ec36e: 681b         	ldr	r3, [r3]
  2ec370: 9a01         	ldr	r2, [sp, #0x4]
  2ec372: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2ec376: 4610         	mov	r0, r2
  2ec378: 4798         	blx	r3
  2ec37a: 9b01         	ldr	r3, [sp, #0x4]
  2ec37c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ec380: 681b         	ldr	r3, [r3]
  2ec382: 33e8         	adds	r3, #0xe8
  2ec384: 681b         	ldr	r3, [r3]
  2ec386: 9a01         	ldr	r2, [sp, #0x4]
  2ec388: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2ec38c: 4610         	mov	r0, r2
  2ec38e: 4798         	blx	r3
  2ec390: 9b01         	ldr	r3, [sp, #0x4]
  2ec392: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ec396: 681b         	ldr	r3, [r3]
  2ec398: 33e8         	adds	r3, #0xe8
  2ec39a: 681b         	ldr	r3, [r3]
  2ec39c: 9a01         	ldr	r2, [sp, #0x4]
  2ec39e: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2ec3a2: 4610         	mov	r0, r2
  2ec3a4: 4798         	blx	r3
  2ec3a6: 9b01         	ldr	r3, [sp, #0x4]
  2ec3a8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2ec3ac: 681b         	ldr	r3, [r3]
  2ec3ae: 33e8         	adds	r3, #0xe8
  2ec3b0: 681b         	ldr	r3, [r3]
  2ec3b2: 9a01         	ldr	r2, [sp, #0x4]
  2ec3b4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2ec3b8: 4610         	mov	r0, r2
  2ec3ba: 4798         	blx	r3
  2ec3bc: 9b01         	ldr	r3, [sp, #0x4]
  2ec3be: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ec3c2: 681b         	ldr	r3, [r3]
  2ec3c4: 33e8         	adds	r3, #0xe8
  2ec3c6: 681b         	ldr	r3, [r3]
  2ec3c8: 9a01         	ldr	r2, [sp, #0x4]
  2ec3ca: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2ec3ce: 4610         	mov	r0, r2
  2ec3d0: 4798         	blx	r3
  2ec3d2: 9b01         	ldr	r3, [sp, #0x4]
  2ec3d4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ec3d8: 681b         	ldr	r3, [r3]
  2ec3da: 33e8         	adds	r3, #0xe8
  2ec3dc: 681b         	ldr	r3, [r3]
  2ec3de: 9a01         	ldr	r2, [sp, #0x4]
  2ec3e0: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2ec3e4: 4610         	mov	r0, r2
  2ec3e6: 4798         	blx	r3
  2ec3e8: 9b01         	ldr	r3, [sp, #0x4]
  2ec3ea: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ec3ee: 681b         	ldr	r3, [r3]
  2ec3f0: 33e8         	adds	r3, #0xe8
  2ec3f2: 681b         	ldr	r3, [r3]
  2ec3f4: 9a01         	ldr	r2, [sp, #0x4]
  2ec3f6: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2ec3fa: 4610         	mov	r0, r2
  2ec3fc: 4798         	blx	r3
  2ec3fe: 9b01         	ldr	r3, [sp, #0x4]
  2ec400: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ec404: 681b         	ldr	r3, [r3]
  2ec406: 33e8         	adds	r3, #0xe8
  2ec408: 681b         	ldr	r3, [r3]
  2ec40a: 9a01         	ldr	r2, [sp, #0x4]
  2ec40c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2ec410: 4610         	mov	r0, r2
  2ec412: 4798         	blx	r3
  2ec414: 9b01         	ldr	r3, [sp, #0x4]
  2ec416: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ec41a: 681b         	ldr	r3, [r3]
  2ec41c: 33e8         	adds	r3, #0xe8
  2ec41e: 681b         	ldr	r3, [r3]
  2ec420: 9a01         	ldr	r2, [sp, #0x4]
  2ec422: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2ec426: 4610         	mov	r0, r2
  2ec428: 4798         	blx	r3
  2ec42a: 9b01         	ldr	r3, [sp, #0x4]
  2ec42c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ec430: 681b         	ldr	r3, [r3]
  2ec432: 33e8         	adds	r3, #0xe8
  2ec434: 681b         	ldr	r3, [r3]
  2ec436: 9a01         	ldr	r2, [sp, #0x4]
  2ec438: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ec43c: 4610         	mov	r0, r2
  2ec43e: 4798         	blx	r3
  2ec440: 9b01         	ldr	r3, [sp, #0x4]
  2ec442: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ec446: 681b         	ldr	r3, [r3]
  2ec448: 33e8         	adds	r3, #0xe8
  2ec44a: 681b         	ldr	r3, [r3]
  2ec44c: 9a01         	ldr	r2, [sp, #0x4]
  2ec44e: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ec452: 4610         	mov	r0, r2
  2ec454: 4798         	blx	r3
  2ec456: 9b01         	ldr	r3, [sp, #0x4]
  2ec458: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ec45c: 681b         	ldr	r3, [r3]
  2ec45e: 33e8         	adds	r3, #0xe8
  2ec460: 681b         	ldr	r3, [r3]
  2ec462: 9a01         	ldr	r2, [sp, #0x4]
  2ec464: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ec468: 4610         	mov	r0, r2
  2ec46a: 4798         	blx	r3
  2ec46c: 9b00         	ldr	r3, [sp]
  2ec46e: 2b06         	cmp	r3, #0x6
  2ec470: f200 815e    	bhi.w	0x2ec730 <AvatarCreator::setTableViews(int)+0x484> @ imm = #0x2bc
  2ec474: a102         	adr	r1, #8 <AvatarCreator::setTableViews(int)+0x1ce>
  2ec476: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  2ec47a: 4411         	add	r1, r2
  2ec47c: 4708         	bx	r1
  2ec47e: bf00         	nop
  2ec480: 001d         	movs	r5, r3
  2ec482: 0000         	movs	r0, r0
  2ec484: 004b         	lsls	r3, r1, #0x1
  2ec486: 0000         	movs	r0, r0
  2ec488: 00a5         	lsls	r5, r4, #0x2
  2ec48a: 0000         	movs	r0, r0
  2ec48c: 00ff         	lsls	r7, r7, #0x3
  2ec48e: 0000         	movs	r0, r0
  2ec490: 012d         	lsls	r5, r5, #0x4
  2ec492: 0000         	movs	r0, r0
  2ec494: 0171         	lsls	r1, r6, #0x5
  2ec496: 0000         	movs	r0, r0
  2ec498: 01ef         	lsls	r7, r5, #0x7
  2ec49a: 0000         	movs	r0, r0
  2ec49c: 9b01         	ldr	r3, [sp, #0x4]
  2ec49e: 681b         	ldr	r3, [r3]
  2ec4a0: 33c8         	adds	r3, #0xc8
  2ec4a2: 681b         	ldr	r3, [r3]
  2ec4a4: 9901         	ldr	r1, [sp, #0x4]
  2ec4a6: 9a01         	ldr	r2, [sp, #0x4]
  2ec4a8: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  2ec4ac: 4608         	mov	r0, r1
  2ec4ae: 4611         	mov	r1, r2
  2ec4b0: 4798         	blx	r3
  2ec4b2: 9b01         	ldr	r3, [sp, #0x4]
  2ec4b4: 681b         	ldr	r3, [r3]
  2ec4b6: 33c8         	adds	r3, #0xc8
  2ec4b8: 681b         	ldr	r3, [r3]
  2ec4ba: 9901         	ldr	r1, [sp, #0x4]
  2ec4bc: 9a01         	ldr	r2, [sp, #0x4]
  2ec4be: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  2ec4c2: 4608         	mov	r0, r1
  2ec4c4: 4611         	mov	r1, r2
  2ec4c6: 4798         	blx	r3
  2ec4c8: e133         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x266
  2ec4ca: 9b01         	ldr	r3, [sp, #0x4]
  2ec4cc: 681b         	ldr	r3, [r3]
  2ec4ce: 33c8         	adds	r3, #0xc8
  2ec4d0: 681b         	ldr	r3, [r3]
  2ec4d2: 9901         	ldr	r1, [sp, #0x4]
  2ec4d4: 9a01         	ldr	r2, [sp, #0x4]
  2ec4d6: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  2ec4da: 4608         	mov	r0, r1
  2ec4dc: 4611         	mov	r1, r2
  2ec4de: 4798         	blx	r3
  2ec4e0: 9b01         	ldr	r3, [sp, #0x4]
  2ec4e2: 681b         	ldr	r3, [r3]
  2ec4e4: 33c8         	adds	r3, #0xc8
  2ec4e6: 681b         	ldr	r3, [r3]
  2ec4e8: 9901         	ldr	r1, [sp, #0x4]
  2ec4ea: 9a01         	ldr	r2, [sp, #0x4]
  2ec4ec: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  2ec4f0: 4608         	mov	r0, r1
  2ec4f2: 4611         	mov	r1, r2
  2ec4f4: 4798         	blx	r3
  2ec4f6: 9b01         	ldr	r3, [sp, #0x4]
  2ec4f8: 681b         	ldr	r3, [r3]
  2ec4fa: 33c8         	adds	r3, #0xc8
  2ec4fc: 681b         	ldr	r3, [r3]
  2ec4fe: 9901         	ldr	r1, [sp, #0x4]
  2ec500: 9a01         	ldr	r2, [sp, #0x4]
  2ec502: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  2ec506: 4608         	mov	r0, r1
  2ec508: 4611         	mov	r1, r2
  2ec50a: 4798         	blx	r3
  2ec50c: 9b01         	ldr	r3, [sp, #0x4]
  2ec50e: 681b         	ldr	r3, [r3]
  2ec510: 33c8         	adds	r3, #0xc8
  2ec512: 681b         	ldr	r3, [r3]
  2ec514: 9901         	ldr	r1, [sp, #0x4]
  2ec516: 9a01         	ldr	r2, [sp, #0x4]
  2ec518: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  2ec51c: 4608         	mov	r0, r1
  2ec51e: 4611         	mov	r1, r2
  2ec520: 4798         	blx	r3
  2ec522: e106         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x20c
  2ec524: 9b01         	ldr	r3, [sp, #0x4]
  2ec526: 681b         	ldr	r3, [r3]
  2ec528: 33c8         	adds	r3, #0xc8
  2ec52a: 681b         	ldr	r3, [r3]
  2ec52c: 9901         	ldr	r1, [sp, #0x4]
  2ec52e: 9a01         	ldr	r2, [sp, #0x4]
  2ec530: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2ec534: 4608         	mov	r0, r1
  2ec536: 4611         	mov	r1, r2
  2ec538: 4798         	blx	r3
  2ec53a: 9b01         	ldr	r3, [sp, #0x4]
  2ec53c: 681b         	ldr	r3, [r3]
  2ec53e: 33c8         	adds	r3, #0xc8
  2ec540: 681b         	ldr	r3, [r3]
  2ec542: 9901         	ldr	r1, [sp, #0x4]
  2ec544: 9a01         	ldr	r2, [sp, #0x4]
  2ec546: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2ec54a: 4608         	mov	r0, r1
  2ec54c: 4611         	mov	r1, r2
  2ec54e: 4798         	blx	r3
  2ec550: 9b01         	ldr	r3, [sp, #0x4]
  2ec552: 681b         	ldr	r3, [r3]
  2ec554: 33c8         	adds	r3, #0xc8
  2ec556: 681b         	ldr	r3, [r3]
  2ec558: 9901         	ldr	r1, [sp, #0x4]
  2ec55a: 9a01         	ldr	r2, [sp, #0x4]
  2ec55c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2ec560: 4608         	mov	r0, r1
  2ec562: 4611         	mov	r1, r2
  2ec564: 4798         	blx	r3
  2ec566: 9b01         	ldr	r3, [sp, #0x4]
  2ec568: 681b         	ldr	r3, [r3]
  2ec56a: 33c8         	adds	r3, #0xc8
  2ec56c: 681b         	ldr	r3, [r3]
  2ec56e: 9901         	ldr	r1, [sp, #0x4]
  2ec570: 9a01         	ldr	r2, [sp, #0x4]
  2ec572: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2ec576: 4608         	mov	r0, r1
  2ec578: 4611         	mov	r1, r2
  2ec57a: 4798         	blx	r3
  2ec57c: e0d9         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x1b2
  2ec57e: 9b01         	ldr	r3, [sp, #0x4]
  2ec580: 681b         	ldr	r3, [r3]
  2ec582: 33c8         	adds	r3, #0xc8
  2ec584: 681b         	ldr	r3, [r3]
  2ec586: 9901         	ldr	r1, [sp, #0x4]
  2ec588: 9a01         	ldr	r2, [sp, #0x4]
  2ec58a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2ec58e: 4608         	mov	r0, r1
  2ec590: 4611         	mov	r1, r2
  2ec592: 4798         	blx	r3
  2ec594: 9b01         	ldr	r3, [sp, #0x4]
  2ec596: 681b         	ldr	r3, [r3]
  2ec598: 33c8         	adds	r3, #0xc8
  2ec59a: 681b         	ldr	r3, [r3]
  2ec59c: 9901         	ldr	r1, [sp, #0x4]
  2ec59e: 9a01         	ldr	r2, [sp, #0x4]
  2ec5a0: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2ec5a4: 4608         	mov	r0, r1
  2ec5a6: 4611         	mov	r1, r2
  2ec5a8: 4798         	blx	r3
  2ec5aa: e0c2         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x184
  2ec5ac: 9b01         	ldr	r3, [sp, #0x4]
  2ec5ae: 681b         	ldr	r3, [r3]
  2ec5b0: 33c8         	adds	r3, #0xc8
  2ec5b2: 681b         	ldr	r3, [r3]
  2ec5b4: 9901         	ldr	r1, [sp, #0x4]
  2ec5b6: 9a01         	ldr	r2, [sp, #0x4]
  2ec5b8: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2ec5bc: 4608         	mov	r0, r1
  2ec5be: 4611         	mov	r1, r2
  2ec5c0: 4798         	blx	r3
  2ec5c2: 9b01         	ldr	r3, [sp, #0x4]
  2ec5c4: 681b         	ldr	r3, [r3]
  2ec5c6: 33c8         	adds	r3, #0xc8
  2ec5c8: 681b         	ldr	r3, [r3]
  2ec5ca: 9901         	ldr	r1, [sp, #0x4]
  2ec5cc: 9a01         	ldr	r2, [sp, #0x4]
  2ec5ce: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2ec5d2: 4608         	mov	r0, r1
  2ec5d4: 4611         	mov	r1, r2
  2ec5d6: 4798         	blx	r3
  2ec5d8: 9b01         	ldr	r3, [sp, #0x4]
  2ec5da: 681b         	ldr	r3, [r3]
  2ec5dc: 33c8         	adds	r3, #0xc8
  2ec5de: 681b         	ldr	r3, [r3]
  2ec5e0: 9901         	ldr	r1, [sp, #0x4]
  2ec5e2: 9a01         	ldr	r2, [sp, #0x4]
  2ec5e4: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2ec5e8: 4608         	mov	r0, r1
  2ec5ea: 4611         	mov	r1, r2
  2ec5ec: 4798         	blx	r3
  2ec5ee: e0a0         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x140
  2ec5f0: ab02         	add	r3, sp, #0x8
  2ec5f2: 4618         	mov	r0, r3
  2ec5f4: f09d f6fe    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49ddfc
  2ec5f8: aa03         	add	r2, sp, #0xc
  2ec5fa: ab02         	add	r3, sp, #0x8
  2ec5fc: 4610         	mov	r0, r2
  2ec5fe: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x2ec738 <AvatarCreator::setTableViews(int)+0x48c>
  2ec600: 447a         	add	r2, pc
  2ec602: 4611         	mov	r1, r2
  2ec604: 461a         	mov	r2, r3
  2ec606: f0ca f22b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ca456
  2ec60a: ab03         	add	r3, sp, #0xc
  2ec60c: 4618         	mov	r0, r3
  2ec60e: f145 f8a7    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x14514e
  2ec612: 4603         	mov	r3, r0
  2ec614: 461c         	mov	r4, r3
  2ec616: ab03         	add	r3, sp, #0xc
  2ec618: 4618         	mov	r0, r3
  2ec61a: f0c9 f17b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c92f6
  2ec61e: ab02         	add	r3, sp, #0x8
  2ec620: 4618         	mov	r0, r3
  2ec622: f09d f6eb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49ddd6
  2ec626: 2c00         	cmp	r4, #0x0
  2ec628: d016         	beq	0x2ec658 <AvatarCreator::setTableViews(int)+0x3ac> @ imm = #0x2c
  2ec62a: 9b01         	ldr	r3, [sp, #0x4]
  2ec62c: 681b         	ldr	r3, [r3]
  2ec62e: 33c8         	adds	r3, #0xc8
  2ec630: 681b         	ldr	r3, [r3]
  2ec632: 9901         	ldr	r1, [sp, #0x4]
  2ec634: 9a01         	ldr	r2, [sp, #0x4]
  2ec636: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2ec63a: 4608         	mov	r0, r1
  2ec63c: 4611         	mov	r1, r2
  2ec63e: 4798         	blx	r3
  2ec640: 9b01         	ldr	r3, [sp, #0x4]
  2ec642: 681b         	ldr	r3, [r3]
  2ec644: 33c8         	adds	r3, #0xc8
  2ec646: 681b         	ldr	r3, [r3]
  2ec648: 9901         	ldr	r1, [sp, #0x4]
  2ec64a: 9a01         	ldr	r2, [sp, #0x4]
  2ec64c: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  2ec650: 4608         	mov	r0, r1
  2ec652: 4611         	mov	r1, r2
  2ec654: 4798         	blx	r3
  2ec656: e06c         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0xd8
  2ec658: f2f4 f82a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f4054
  2ec65c: 4603         	mov	r3, r0
  2ec65e: 4618         	mov	r0, r3
  2ec660: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x2ec73c <AvatarCreator::setTableViews(int)+0x490>
  2ec662: 447b         	add	r3, pc
  2ec664: 4619         	mov	r1, r3
  2ec666: 2200         	movs	r2, #0x0
  2ec668: f2f4 fa60    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2f44c0
  2ec66c: e061         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0xc2
  2ec66e: ab02         	add	r3, sp, #0x8
  2ec670: 4618         	mov	r0, r3
  2ec672: f09d f6bf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49dd7e
  2ec676: aa03         	add	r2, sp, #0xc
  2ec678: ab02         	add	r3, sp, #0x8
  2ec67a: 4610         	mov	r0, r2
  2ec67c: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x2ec740 <AvatarCreator::setTableViews(int)+0x494>
  2ec67e: 447a         	add	r2, pc
  2ec680: 4611         	mov	r1, r2
  2ec682: 461a         	mov	r2, r3
  2ec684: f0ca f1ec    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ca3d8
  2ec688: ab03         	add	r3, sp, #0xc
  2ec68a: 4618         	mov	r0, r3
  2ec68c: f145 f868    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0x1450d0
  2ec690: 4603         	mov	r3, r0
  2ec692: 461c         	mov	r4, r3
  2ec694: ab03         	add	r3, sp, #0xc
  2ec696: 4618         	mov	r0, r3
  2ec698: f0c9 f13c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c9278
  2ec69c: ab02         	add	r3, sp, #0x8
  2ec69e: 4618         	mov	r0, r3
  2ec6a0: f09d f6ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49dd58
  2ec6a4: 2c00         	cmp	r4, #0x0
  2ec6a6: d021         	beq	0x2ec6ec <AvatarCreator::setTableViews(int)+0x440> @ imm = #0x42
  2ec6a8: 9b01         	ldr	r3, [sp, #0x4]
  2ec6aa: 681b         	ldr	r3, [r3]
  2ec6ac: 33c8         	adds	r3, #0xc8
  2ec6ae: 681b         	ldr	r3, [r3]
  2ec6b0: 9901         	ldr	r1, [sp, #0x4]
  2ec6b2: 9a01         	ldr	r2, [sp, #0x4]
  2ec6b4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2ec6b8: 4608         	mov	r0, r1
  2ec6ba: 4611         	mov	r1, r2
  2ec6bc: 4798         	blx	r3
  2ec6be: 9b01         	ldr	r3, [sp, #0x4]
  2ec6c0: 681b         	ldr	r3, [r3]
  2ec6c2: 33c8         	adds	r3, #0xc8
  2ec6c4: 681b         	ldr	r3, [r3]
  2ec6c6: 9901         	ldr	r1, [sp, #0x4]
  2ec6c8: 9a01         	ldr	r2, [sp, #0x4]
  2ec6ca: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2ec6ce: 4608         	mov	r0, r1
  2ec6d0: 4611         	mov	r1, r2
  2ec6d2: 4798         	blx	r3
  2ec6d4: 9b01         	ldr	r3, [sp, #0x4]
  2ec6d6: 681b         	ldr	r3, [r3]
  2ec6d8: 33c8         	adds	r3, #0xc8
  2ec6da: 681b         	ldr	r3, [r3]
  2ec6dc: 9901         	ldr	r1, [sp, #0x4]
  2ec6de: 9a01         	ldr	r2, [sp, #0x4]
  2ec6e0: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  2ec6e4: 4608         	mov	r0, r1
  2ec6e6: 4611         	mov	r1, r2
  2ec6e8: 4798         	blx	r3
  2ec6ea: e022         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x44
  2ec6ec: f2f3 ffe0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f3fc0
  2ec6f0: 4603         	mov	r3, r0
  2ec6f2: 4618         	mov	r0, r3
  2ec6f4: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x2ec744 <AvatarCreator::setTableViews(int)+0x498>
  2ec6f6: 447b         	add	r3, pc
  2ec6f8: 4619         	mov	r1, r3
  2ec6fa: 2200         	movs	r2, #0x0
  2ec6fc: f2f4 fa16    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2f442c
  2ec700: bf00         	nop
  2ec702: e016         	b	0x2ec732 <AvatarCreator::setTableViews(int)+0x486> @ imm = #0x2c
  2ec704: ab03         	add	r3, sp, #0xc
  2ec706: 4618         	mov	r0, r3
  2ec708: f0c9 f104    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c9208
  2ec70c: e7ff         	b	0x2ec70e <AvatarCreator::setTableViews(int)+0x462> @ imm = #-0x2
  2ec70e: ab02         	add	r3, sp, #0x8
  2ec710: 4618         	mov	r0, r3
  2ec712: f09d f673    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49dce6
  2ec716: f09b f4c9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49b992
  2ec71a: ab03         	add	r3, sp, #0xc
  2ec71c: 4618         	mov	r0, r3
  2ec71e: f0c9 f0f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c91f2
  2ec722: e7ff         	b	0x2ec724 <AvatarCreator::setTableViews(int)+0x478> @ imm = #-0x2
  2ec724: ab02         	add	r3, sp, #0x8
  2ec726: 4618         	mov	r0, r3
  2ec728: f09d f668    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49dcd0
  2ec72c: f09b f4be    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49b97c
  2ec730: bf00         	nop
  2ec732: b004         	add	sp, #0x10
  2ec734: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2ec735); words below are literal-pool data ---
  2ec736: bf00         	nop
  2ec738: 6a38         	ldr	r0, [r7, #0x20]
  2ec73a: 004d         	lsls	r5, r1, #0x1
  2ec73c: 69f2         	ldr	r2, [r6, #0x1c]
  2ec73e: 004d         	lsls	r5, r1, #0x1
  2ec740: 69ba         	ldr	r2, [r7, #0x18]
  2ec742: 004d         	lsls	r5, r1, #0x1
  2ec744: 695e         	ldr	r6, [r3, #0x14]
  2ec746: 004d         	lsls	r5, r1, #0x1

// ==== AvatarCreator::intAtArrayIndex
//      file offset 0x2ec748 (= ELF address; Ghidra 0x2fc748), 82 bytes, Thumb-2
  2ec748: b500         	push	{lr}
  2ec74a: b085         	sub	sp, #0x14
  2ec74c: 9003         	str	r0, [sp, #0xc]
  2ec74e: 9102         	str	r1, [sp, #0x8]
  2ec750: 9201         	str	r2, [sp, #0x4]
  2ec752: 9802         	ldr	r0, [sp, #0x8]
  2ec754: f2ad fcc4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2ad988
  2ec758: 4602         	mov	r2, r0
  2ec75a: 9b01         	ldr	r3, [sp, #0x4]
  2ec75c: 429a         	cmp	r2, r3
  2ec75e: d909         	bls	0x2ec774 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)+0x2c> @ imm = #0x12
  2ec760: 9b01         	ldr	r3, [sp, #0x4]
  2ec762: 9802         	ldr	r0, [sp, #0x8]
  2ec764: 4619         	mov	r1, r3
  2ec766: f2ad fcdb    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2ad9b6
  2ec76a: 4603         	mov	r3, r0
  2ec76c: 2b00         	cmp	r3, #0x0
  2ec76e: d001         	beq	0x2ec774 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)+0x2c> @ imm = #0x2
  2ec770: 2301         	movs	r3, #0x1
  2ec772: e000         	b	0x2ec776 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)+0x2e> @ imm = #0x0
  2ec774: 2300         	movs	r3, #0x0
  2ec776: 2b00         	cmp	r3, #0x0
  2ec778: d00a         	beq	0x2ec790 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)+0x48> @ imm = #0x14
  2ec77a: 9b01         	ldr	r3, [sp, #0x4]
  2ec77c: 9802         	ldr	r0, [sp, #0x8]
  2ec77e: 4619         	mov	r1, r3
  2ec780: f2ad fcce    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2ad99c
  2ec784: 4603         	mov	r3, r0
  2ec786: 4618         	mov	r0, r3
  2ec788: f2ad f80a    	bl	0x5997a0 <cocos2d::CCString::intValue() const> @ imm = #0x2ad014
  2ec78c: 4603         	mov	r3, r0
  2ec78e: e000         	b	0x2ec792 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)+0x4a> @ imm = #0x0
  2ec790: 2300         	movs	r3, #0x0
  2ec792: 4618         	mov	r0, r3
  2ec794: b005         	add	sp, #0x14
  2ec796: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarCreator::getSelections
//      file offset 0x2ec79c (= ELF address; Ghidra 0x2fc79c), 680 bytes, Thumb-2
  2ec79c: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  2ec7a0: b0a3         	sub	sp, #0x8c
  2ec7a2: 901f         	str	r0, [sp, #0x7c]
  2ec7a4: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec7a6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2ec7aa: 4a91         	ldr	r2, [pc, #0x244]        @ 0x2ec9f0 <AvatarCreator::getSelections()+0x254>
  2ec7ac: 447a         	add	r2, pc
  2ec7ae: 4610         	mov	r0, r2
  2ec7b0: 4619         	mov	r1, r3
  2ec7b2: f2ad f9ad    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad35a
  2ec7b6: 901e         	str	r0, [sp, #0x78]
  2ec7b8: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec7ba: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  2ec7be: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec7c2: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x2ec9f4 <AvatarCreator::getSelections()+0x258>
  2ec7c4: 447a         	add	r2, pc
  2ec7c6: 4610         	mov	r0, r2
  2ec7c8: 4619         	mov	r1, r3
  2ec7ca: f2ad f9a1    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad342
  2ec7ce: 901d         	str	r0, [sp, #0x74]
  2ec7d0: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec7d2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  2ec7d6: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec7da: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x2ec9f8 <AvatarCreator::getSelections()+0x25c>
  2ec7dc: 447a         	add	r2, pc
  2ec7de: 4610         	mov	r0, r2
  2ec7e0: 4619         	mov	r1, r3
  2ec7e2: f2ad f995    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad32a
  2ec7e6: 901c         	str	r0, [sp, #0x70]
  2ec7e8: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec7ea: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  2ec7ee: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec7f2: 4a82         	ldr	r2, [pc, #0x208]        @ 0x2ec9fc <AvatarCreator::getSelections()+0x260>
  2ec7f4: 447a         	add	r2, pc
  2ec7f6: 4610         	mov	r0, r2
  2ec7f8: 4619         	mov	r1, r3
  2ec7fa: f2ad f989    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad312
  2ec7fe: 901b         	str	r0, [sp, #0x6c]
  2ec800: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec802: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  2ec806: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec80a: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x2eca00 <AvatarCreator::getSelections()+0x264>
  2ec80c: 447a         	add	r2, pc
  2ec80e: 4610         	mov	r0, r2
  2ec810: 4619         	mov	r1, r3
  2ec812: f2ad f97d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad2fa
  2ec816: 4682         	mov	r10, r0
  2ec818: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec81a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  2ec81e: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec822: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x2eca04 <AvatarCreator::getSelections()+0x268>
  2ec824: 447a         	add	r2, pc
  2ec826: 4610         	mov	r0, r2
  2ec828: 4619         	mov	r1, r3
  2ec82a: f2ad f971    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad2e2
  2ec82e: 4683         	mov	r11, r0
  2ec830: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec832: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2ec836: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec83a: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x2eca08 <AvatarCreator::getSelections()+0x26c>
  2ec83c: 447a         	add	r2, pc
  2ec83e: 4610         	mov	r0, r2
  2ec840: 4619         	mov	r1, r3
  2ec842: f2ad f965    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad2ca
  2ec846: 901a         	str	r0, [sp, #0x68]
  2ec848: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec84a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2ec84e: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec852: 4a6e         	ldr	r2, [pc, #0x1b8]        @ 0x2eca0c <AvatarCreator::getSelections()+0x270>
  2ec854: 447a         	add	r2, pc
  2ec856: 4610         	mov	r0, r2
  2ec858: 4619         	mov	r1, r3
  2ec85a: f2ad f959    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad2b2
  2ec85e: 9019         	str	r0, [sp, #0x64]
  2ec860: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec862: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2ec866: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec86a: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x2eca10 <AvatarCreator::getSelections()+0x274>
  2ec86c: 447a         	add	r2, pc
  2ec86e: 4610         	mov	r0, r2
  2ec870: 4619         	mov	r1, r3
  2ec872: f2ad f94d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad29a
  2ec876: 9018         	str	r0, [sp, #0x60]
  2ec878: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec87a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2ec87e: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec882: 4a64         	ldr	r2, [pc, #0x190]        @ 0x2eca14 <AvatarCreator::getSelections()+0x278>
  2ec884: 447a         	add	r2, pc
  2ec886: 4610         	mov	r0, r2
  2ec888: 4619         	mov	r1, r3
  2ec88a: f2ad f941    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad282
  2ec88e: 9017         	str	r0, [sp, #0x5c]
  2ec890: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec892: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2ec896: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec89a: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x2eca18 <AvatarCreator::getSelections()+0x27c>
  2ec89c: 447a         	add	r2, pc
  2ec89e: 4610         	mov	r0, r2
  2ec8a0: 4619         	mov	r1, r3
  2ec8a2: f2ad f935    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad26a
  2ec8a6: 9016         	str	r0, [sp, #0x58]
  2ec8a8: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec8aa: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2ec8ae: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec8b2: 4a5a         	ldr	r2, [pc, #0x168]        @ 0x2eca1c <AvatarCreator::getSelections()+0x280>
  2ec8b4: 447a         	add	r2, pc
  2ec8b6: 4610         	mov	r0, r2
  2ec8b8: 4619         	mov	r1, r3
  2ec8ba: f2ad f929    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad252
  2ec8be: 9015         	str	r0, [sp, #0x54]
  2ec8c0: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec8c2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2ec8c6: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ec8ca: 4a55         	ldr	r2, [pc, #0x154]        @ 0x2eca20 <AvatarCreator::getSelections()+0x284>
  2ec8cc: 447a         	add	r2, pc
  2ec8ce: 4610         	mov	r0, r2
  2ec8d0: 4619         	mov	r1, r3
  2ec8d2: f2ad f91d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad23a
  2ec8d6: 9014         	str	r0, [sp, #0x50]
  2ec8d8: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec8da: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  2ec8de: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec8e2: 4b50         	ldr	r3, [pc, #0x140]        @ 0x2eca24 <AvatarCreator::getSelections()+0x288>
  2ec8e4: 447b         	add	r3, pc
  2ec8e6: 4618         	mov	r0, r3
  2ec8e8: 4611         	mov	r1, r2
  2ec8ea: f2ad f911    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad222
  2ec8ee: 9013         	str	r0, [sp, #0x4c]
  2ec8f0: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec8f2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2ec8f6: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec8fa: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x2eca28 <AvatarCreator::getSelections()+0x28c>
  2ec8fc: 447b         	add	r3, pc
  2ec8fe: 4618         	mov	r0, r3
  2ec900: 4611         	mov	r1, r2
  2ec902: f2ad f905    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad20a
  2ec906: 4681         	mov	r9, r0
  2ec908: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec90a: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2ec90e: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec912: 4b46         	ldr	r3, [pc, #0x118]        @ 0x2eca2c <AvatarCreator::getSelections()+0x290>
  2ec914: 447b         	add	r3, pc
  2ec916: 4618         	mov	r0, r3
  2ec918: 4611         	mov	r1, r2
  2ec91a: f2ad f8f9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad1f2
  2ec91e: 4680         	mov	r8, r0
  2ec920: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec922: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2ec926: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec92a: 4b41         	ldr	r3, [pc, #0x104]        @ 0x2eca30 <AvatarCreator::getSelections()+0x294>
  2ec92c: 447b         	add	r3, pc
  2ec92e: 4618         	mov	r0, r3
  2ec930: 4611         	mov	r1, r2
  2ec932: f2ad f8ed    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad1da
  2ec936: 4607         	mov	r7, r0
  2ec938: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec93a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2ec93e: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec942: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2eca34 <AvatarCreator::getSelections()+0x298>
  2ec944: 447b         	add	r3, pc
  2ec946: 4618         	mov	r0, r3
  2ec948: 4611         	mov	r1, r2
  2ec94a: f2ad f8e1    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad1c2
  2ec94e: 4606         	mov	r6, r0
  2ec950: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec952: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2ec956: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec95a: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x2eca38 <AvatarCreator::getSelections()+0x29c>
  2ec95c: 447b         	add	r3, pc
  2ec95e: 4618         	mov	r0, r3
  2ec960: 4611         	mov	r1, r2
  2ec962: f2ad f8d5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad1aa
  2ec966: 4605         	mov	r5, r0
  2ec968: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec96a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2ec96e: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec972: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x2eca3c <AvatarCreator::getSelections()+0x2a0>
  2ec974: 447b         	add	r3, pc
  2ec976: 4618         	mov	r0, r3
  2ec978: 4611         	mov	r1, r2
  2ec97a: f2ad f8c9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad192
  2ec97e: 4604         	mov	r4, r0
  2ec980: 9b1f         	ldr	r3, [sp, #0x7c]
  2ec982: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  2ec986: f8d3 21cc    	ldr.w	r2, [r3, #0x1cc]
  2ec98a: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x2eca40 <AvatarCreator::getSelections()+0x2a4>
  2ec98c: 447b         	add	r3, pc
  2ec98e: 4618         	mov	r0, r3
  2ec990: 4611         	mov	r1, r2
  2ec992: f2ad f8bd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2ad17a
  2ec996: 4603         	mov	r3, r0
  2ec998: f8cd a000    	str.w	r10, [sp]
  2ec99c: f8cd b004    	str.w	r11, [sp, #0x4]
  2ec9a0: 9a1a         	ldr	r2, [sp, #0x68]
  2ec9a2: 9202         	str	r2, [sp, #0x8]
  2ec9a4: 9a19         	ldr	r2, [sp, #0x64]
  2ec9a6: 9203         	str	r2, [sp, #0xc]
  2ec9a8: 9a18         	ldr	r2, [sp, #0x60]
  2ec9aa: 9204         	str	r2, [sp, #0x10]
  2ec9ac: 9a17         	ldr	r2, [sp, #0x5c]
  2ec9ae: 9205         	str	r2, [sp, #0x14]
  2ec9b0: 9a16         	ldr	r2, [sp, #0x58]
  2ec9b2: 9206         	str	r2, [sp, #0x18]
  2ec9b4: 9a15         	ldr	r2, [sp, #0x54]
  2ec9b6: 9207         	str	r2, [sp, #0x1c]
  2ec9b8: 9a14         	ldr	r2, [sp, #0x50]
  2ec9ba: 9208         	str	r2, [sp, #0x20]
  2ec9bc: 9a13         	ldr	r2, [sp, #0x4c]
  2ec9be: 9209         	str	r2, [sp, #0x24]
  2ec9c0: f8cd 9028    	str.w	r9, [sp, #0x28]
  2ec9c4: f8cd 802c    	str.w	r8, [sp, #0x2c]
  2ec9c8: 970c         	str	r7, [sp, #0x30]
  2ec9ca: 960d         	str	r6, [sp, #0x34]
  2ec9cc: 950e         	str	r5, [sp, #0x38]
  2ec9ce: 940f         	str	r4, [sp, #0x3c]
  2ec9d0: 9310         	str	r3, [sp, #0x40]
  2ec9d2: 2300         	movs	r3, #0x0
  2ec9d4: 9311         	str	r3, [sp, #0x44]
  2ec9d6: 981e         	ldr	r0, [sp, #0x78]
  2ec9d8: 991d         	ldr	r1, [sp, #0x74]
  2ec9da: 9a1c         	ldr	r2, [sp, #0x70]
  2ec9dc: 9b1b         	ldr	r3, [sp, #0x6c]
  2ec9de: f2ad fa17    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2ad42e
  2ec9e2: 4603         	mov	r3, r0
  2ec9e4: 9321         	str	r3, [sp, #0x84]
  2ec9e6: 9b21         	ldr	r3, [sp, #0x84]
  2ec9e8: 4618         	mov	r0, r3
  2ec9ea: b023         	add	sp, #0x8c
  2ec9ec: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x2ec9ef); words below are literal-pool data ---
  2ec9f0: 68c0         	ldr	r0, [r0, #0xc]
  2ec9f2: 004d         	lsls	r5, r1, #0x1
  2ec9f4: 68a8         	ldr	r0, [r5, #0x8]
  2ec9f6: 004d         	lsls	r5, r1, #0x1
  2ec9f8: 6890         	ldr	r0, [r2, #0x8]
  2ec9fa: 004d         	lsls	r5, r1, #0x1
  2ec9fc: 6878         	ldr	r0, [r7, #0x4]
  2ec9fe: 004d         	lsls	r5, r1, #0x1
  2eca00: 6860         	ldr	r0, [r4, #0x4]
  2eca02: 004d         	lsls	r5, r1, #0x1
  2eca04: 6848         	ldr	r0, [r1, #0x4]
  2eca06: 004d         	lsls	r5, r1, #0x1
  2eca08: 6830         	ldr	r0, [r6]
  2eca0a: 004d         	lsls	r5, r1, #0x1
  2eca0c: 6818         	ldr	r0, [r3]
  2eca0e: 004d         	lsls	r5, r1, #0x1
  2eca10: 6800         	ldr	r0, [r0]
  2eca12: 004d         	lsls	r5, r1, #0x1
  2eca14: 67e8         	str	r0, [r5, #0x7c]
  2eca16: 004d         	lsls	r5, r1, #0x1
  2eca18: 67d0         	str	r0, [r2, #0x7c]
  2eca1a: 004d         	lsls	r5, r1, #0x1
  2eca1c: 67b8         	str	r0, [r7, #0x78]
  2eca1e: 004d         	lsls	r5, r1, #0x1
  2eca20: 67a0         	str	r0, [r4, #0x78]
  2eca22: 004d         	lsls	r5, r1, #0x1
  2eca24: 6788         	str	r0, [r1, #0x78]
  2eca26: 004d         	lsls	r5, r1, #0x1
  2eca28: 6770         	str	r0, [r6, #0x74]
  2eca2a: 004d         	lsls	r5, r1, #0x1
  2eca2c: 6758         	str	r0, [r3, #0x74]
  2eca2e: 004d         	lsls	r5, r1, #0x1
  2eca30: 6740         	str	r0, [r0, #0x74]
  2eca32: 004d         	lsls	r5, r1, #0x1
  2eca34: 6728         	str	r0, [r5, #0x70]
  2eca36: 004d         	lsls	r5, r1, #0x1
  2eca38: 6710         	str	r0, [r2, #0x70]
  2eca3a: 004d         	lsls	r5, r1, #0x1
  2eca3c: 66f8         	str	r0, [r7, #0x6c]
  2eca3e: 004d         	lsls	r5, r1, #0x1
  2eca40: 66e0         	str	r0, [r4, #0x6c]
  2eca42: 004d         	lsls	r5, r1, #0x1

// ==== AvatarCreator::setSelections
//      file offset 0x2eca44 (= ELF address; Ghidra 0x2fca44), 470 bytes, Thumb-2
  2eca44: b510         	push	{r4, lr}
  2eca46: b082         	sub	sp, #0x8
  2eca48: 9001         	str	r0, [sp, #0x4]
  2eca4a: 9100         	str	r1, [sp]
  2eca4c: 9801         	ldr	r0, [sp, #0x4]
  2eca4e: 9900         	ldr	r1, [sp]
  2eca50: 2200         	movs	r2, #0x0
  2eca52: f7ff fe79    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x30e
  2eca56: 4602         	mov	r2, r0
  2eca58: 9b01         	ldr	r3, [sp, #0x4]
  2eca5a: f8c3 2144    	str.w	r2, [r3, #0x144]
  2eca5e: 9b01         	ldr	r3, [sp, #0x4]
  2eca60: f8d3 40f4    	ldr.w	r4, [r3, #0xf4]
  2eca64: 9801         	ldr	r0, [sp, #0x4]
  2eca66: 9900         	ldr	r1, [sp]
  2eca68: 2201         	movs	r2, #0x1
  2eca6a: f7ff fe6d    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x326
  2eca6e: 4603         	mov	r3, r0
  2eca70: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2eca74: 9b01         	ldr	r3, [sp, #0x4]
  2eca76: f8d3 40f8    	ldr.w	r4, [r3, #0xf8]
  2eca7a: 9801         	ldr	r0, [sp, #0x4]
  2eca7c: 9900         	ldr	r1, [sp]
  2eca7e: 2202         	movs	r2, #0x2
  2eca80: f7ff fe62    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x33c
  2eca84: 4603         	mov	r3, r0
  2eca86: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2eca8a: 9b01         	ldr	r3, [sp, #0x4]
  2eca8c: f8d3 4100    	ldr.w	r4, [r3, #0x100]
  2eca90: 9801         	ldr	r0, [sp, #0x4]
  2eca92: 9900         	ldr	r1, [sp]
  2eca94: 2203         	movs	r2, #0x3
  2eca96: f7ff fe57    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x352
  2eca9a: 4603         	mov	r3, r0
  2eca9c: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecaa0: 9b01         	ldr	r3, [sp, #0x4]
  2ecaa2: f8d3 4104    	ldr.w	r4, [r3, #0x104]
  2ecaa6: 9801         	ldr	r0, [sp, #0x4]
  2ecaa8: 9900         	ldr	r1, [sp]
  2ecaaa: 2204         	movs	r2, #0x4
  2ecaac: f7ff fe4c    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x368
  2ecab0: 4603         	mov	r3, r0
  2ecab2: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecab6: 9b01         	ldr	r3, [sp, #0x4]
  2ecab8: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  2ecabc: 9801         	ldr	r0, [sp, #0x4]
  2ecabe: 9900         	ldr	r1, [sp]
  2ecac0: 2205         	movs	r2, #0x5
  2ecac2: f7ff fe41    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x37e
  2ecac6: 4603         	mov	r3, r0
  2ecac8: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecacc: 9b01         	ldr	r3, [sp, #0x4]
  2ecace: f8d3 4108    	ldr.w	r4, [r3, #0x108]
  2ecad2: 9801         	ldr	r0, [sp, #0x4]
  2ecad4: 9900         	ldr	r1, [sp]
  2ecad6: 2206         	movs	r2, #0x6
  2ecad8: f7ff fe36    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x394
  2ecadc: 4603         	mov	r3, r0
  2ecade: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecae2: 9b01         	ldr	r3, [sp, #0x4]
  2ecae4: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  2ecae8: 9801         	ldr	r0, [sp, #0x4]
  2ecaea: 9900         	ldr	r1, [sp]
  2ecaec: 2207         	movs	r2, #0x7
  2ecaee: f7ff fe2b    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x3aa
  2ecaf2: 4603         	mov	r3, r0
  2ecaf4: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecaf8: 9b01         	ldr	r3, [sp, #0x4]
  2ecafa: f8d3 4114    	ldr.w	r4, [r3, #0x114]
  2ecafe: 9801         	ldr	r0, [sp, #0x4]
  2ecb00: 9900         	ldr	r1, [sp]
  2ecb02: 2208         	movs	r2, #0x8
  2ecb04: f7ff fe20    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x3c0
  2ecb08: 4603         	mov	r3, r0
  2ecb0a: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb0e: 9b01         	ldr	r3, [sp, #0x4]
  2ecb10: f8d3 4118    	ldr.w	r4, [r3, #0x118]
  2ecb14: 9801         	ldr	r0, [sp, #0x4]
  2ecb16: 9900         	ldr	r1, [sp]
  2ecb18: 2209         	movs	r2, #0x9
  2ecb1a: f7ff fe15    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x3d6
  2ecb1e: 4603         	mov	r3, r0
  2ecb20: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb24: 9b01         	ldr	r3, [sp, #0x4]
  2ecb26: f8d3 4110    	ldr.w	r4, [r3, #0x110]
  2ecb2a: 9801         	ldr	r0, [sp, #0x4]
  2ecb2c: 9900         	ldr	r1, [sp]
  2ecb2e: 220a         	movs	r2, #0xa
  2ecb30: f7ff fe0a    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x3ec
  2ecb34: 4603         	mov	r3, r0
  2ecb36: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb3a: 9b01         	ldr	r3, [sp, #0x4]
  2ecb3c: f8d3 411c    	ldr.w	r4, [r3, #0x11c]
  2ecb40: 9801         	ldr	r0, [sp, #0x4]
  2ecb42: 9900         	ldr	r1, [sp]
  2ecb44: 220b         	movs	r2, #0xb
  2ecb46: f7ff fdff    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x402
  2ecb4a: 4603         	mov	r3, r0
  2ecb4c: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb50: 9b01         	ldr	r3, [sp, #0x4]
  2ecb52: f8d3 4120    	ldr.w	r4, [r3, #0x120]
  2ecb56: 9801         	ldr	r0, [sp, #0x4]
  2ecb58: 9900         	ldr	r1, [sp]
  2ecb5a: 220c         	movs	r2, #0xc
  2ecb5c: f7ff fdf4    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x418
  2ecb60: 4603         	mov	r3, r0
  2ecb62: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb66: 9b01         	ldr	r3, [sp, #0x4]
  2ecb68: f8d3 4124    	ldr.w	r4, [r3, #0x124]
  2ecb6c: 9801         	ldr	r0, [sp, #0x4]
  2ecb6e: 9900         	ldr	r1, [sp]
  2ecb70: 220d         	movs	r2, #0xd
  2ecb72: f7ff fde9    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x42e
  2ecb76: 4603         	mov	r3, r0
  2ecb78: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb7c: 9b01         	ldr	r3, [sp, #0x4]
  2ecb7e: f8d3 4128    	ldr.w	r4, [r3, #0x128]
  2ecb82: 9801         	ldr	r0, [sp, #0x4]
  2ecb84: 9900         	ldr	r1, [sp]
  2ecb86: 220e         	movs	r2, #0xe
  2ecb88: f7ff fdde    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x444
  2ecb8c: 4603         	mov	r3, r0
  2ecb8e: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecb92: 9b01         	ldr	r3, [sp, #0x4]
  2ecb94: f8d3 412c    	ldr.w	r4, [r3, #0x12c]
  2ecb98: 9801         	ldr	r0, [sp, #0x4]
  2ecb9a: 9900         	ldr	r1, [sp]
  2ecb9c: 220f         	movs	r2, #0xf
  2ecb9e: f7ff fdd3    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x45a
  2ecba2: 4603         	mov	r3, r0
  2ecba4: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecba8: 9b01         	ldr	r3, [sp, #0x4]
  2ecbaa: f8d3 4130    	ldr.w	r4, [r3, #0x130]
  2ecbae: 9801         	ldr	r0, [sp, #0x4]
  2ecbb0: 9900         	ldr	r1, [sp]
  2ecbb2: 2210         	movs	r2, #0x10
  2ecbb4: f7ff fdc8    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x470
  2ecbb8: 4603         	mov	r3, r0
  2ecbba: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecbbe: 9b01         	ldr	r3, [sp, #0x4]
  2ecbc0: f8d3 4134    	ldr.w	r4, [r3, #0x134]
  2ecbc4: 9801         	ldr	r0, [sp, #0x4]
  2ecbc6: 9900         	ldr	r1, [sp]
  2ecbc8: 2211         	movs	r2, #0x11
  2ecbca: f7ff fdbd    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x486
  2ecbce: 4603         	mov	r3, r0
  2ecbd0: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecbd4: 9b01         	ldr	r3, [sp, #0x4]
  2ecbd6: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  2ecbda: 9801         	ldr	r0, [sp, #0x4]
  2ecbdc: 9900         	ldr	r1, [sp]
  2ecbde: 2212         	movs	r2, #0x12
  2ecbe0: f7ff fdb2    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x49c
  2ecbe4: 4603         	mov	r3, r0
  2ecbe6: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecbea: 9b01         	ldr	r3, [sp, #0x4]
  2ecbec: f8d3 413c    	ldr.w	r4, [r3, #0x13c]
  2ecbf0: 9801         	ldr	r0, [sp, #0x4]
  2ecbf2: 9900         	ldr	r1, [sp]
  2ecbf4: 2213         	movs	r2, #0x13
  2ecbf6: f7ff fda7    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x4b2
  2ecbfa: 4603         	mov	r3, r0
  2ecbfc: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecc00: 9b01         	ldr	r3, [sp, #0x4]
  2ecc02: f8d3 4140    	ldr.w	r4, [r3, #0x140]
  2ecc06: 9801         	ldr	r0, [sp, #0x4]
  2ecc08: 9900         	ldr	r1, [sp]
  2ecc0a: 2214         	movs	r2, #0x14
  2ecc0c: f7ff fd9c    	bl	0x2ec748 <AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int)> @ imm = #-0x4c8
  2ecc10: 4603         	mov	r3, r0
  2ecc12: f8c4 31cc    	str.w	r3, [r4, #0x1cc]
  2ecc16: b002         	add	sp, #0x8
  2ecc18: bd10         	pop	{r4, pc}

// ==== AvatarCreator::tableCellTouched
//      file offset 0x2ecc1c (= ELF address; Ghidra 0x2fcc1c), 200 bytes, Thumb-2
  2ecc1c: b510         	push	{r4, lr}
  2ecc1e: b08c         	sub	sp, #0x30
  2ecc20: 9005         	str	r0, [sp, #0x14]
  2ecc22: 9104         	str	r1, [sp, #0x10]
  2ecc24: 9203         	str	r2, [sp, #0xc]
  2ecc26: 4c2d         	ldr	r4, [pc, #0xb4]         @ 0x2eccdc <AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0xc0>
  2ecc28: 447c         	add	r4, pc
  2ecc2a: 9b04         	ldr	r3, [sp, #0x10]
  2ecc2c: 9306         	str	r3, [sp, #0x18]
  2ecc2e: 9803         	ldr	r0, [sp, #0xc]
  2ecc30: f169 f9dc    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0x1693b8
  2ecc34: 4603         	mov	r3, r0
  2ecc36: 9806         	ldr	r0, [sp, #0x18]
  2ecc38: 4619         	mov	r1, r3
  2ecc3a: f084 f89f    	bl	0x370d7c <MenuTableView::cellTouched(unsigned int)> @ imm = #0x8413e
  2ecc3e: 9b05         	ldr	r3, [sp, #0x14]
  2ecc40: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2ecc44: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  2ecc48: 9805         	ldr	r0, [sp, #0x14]
  2ecc4a: 4619         	mov	r1, r3
  2ecc4c: f7ff fb2e    	bl	0x2ec2ac <AvatarCreator::setTableViews(int)> @ imm = #-0x9a4
  2ecc50: 9805         	ldr	r0, [sp, #0x14]
  2ecc52: f7ff fda3    	bl	0x2ec79c <AvatarCreator::getSelections()> @ imm = #-0x4ba
  2ecc56: 4603         	mov	r3, r0
  2ecc58: 9307         	str	r3, [sp, #0x1c]
  2ecc5a: f006 ff2d    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x6e5a
  2ecc5e: 4603         	mov	r3, r0
  2ecc60: 4618         	mov	r0, r3
  2ecc62: 9907         	ldr	r1, [sp, #0x1c]
  2ecc64: 2200         	movs	r2, #0x0
  2ecc66: f00a fa03    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #0xa406
  2ecc6a: 4603         	mov	r3, r0
  2ecc6c: 9308         	str	r3, [sp, #0x20]
  2ecc6e: f006 ff23    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x6e46
  2ecc72: 4603         	mov	r3, r0
  2ecc74: 4618         	mov	r0, r3
  2ecc76: 9907         	ldr	r1, [sp, #0x1c]
  2ecc78: 2200         	movs	r2, #0x0
  2ecc7a: f00b f903    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #0xb206
  2ecc7e: 4603         	mov	r3, r0
  2ecc80: 9309         	str	r3, [sp, #0x24]
  2ecc82: f006 ff19    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x6e32
  2ecc86: 4603         	mov	r3, r0
  2ecc88: 4618         	mov	r0, r3
  2ecc8a: 9907         	ldr	r1, [sp, #0x1c]
  2ecc8c: 2200         	movs	r2, #0x0
  2ecc8e: f00b f997    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #0xb32e
  2ecc92: 4603         	mov	r3, r0
  2ecc94: 930a         	str	r3, [sp, #0x28]
  2ecc96: f006 ff0f    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #0x6e1e
  2ecc9a: 4603         	mov	r3, r0
  2ecc9c: 4618         	mov	r0, r3
  2ecc9e: 9907         	ldr	r1, [sp, #0x1c]
  2ecca0: 2200         	movs	r2, #0x0
  2ecca2: f00b fa2b    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #0xb456
  2ecca6: 4603         	mov	r3, r0
  2ecca8: 930b         	str	r3, [sp, #0x2c]
  2eccaa: 9b05         	ldr	r3, [sp, #0x14]
  2eccac: f8d3 20ec    	ldr.w	r2, [r3, #0xec]
  2eccb0: 9b05         	ldr	r3, [sp, #0x14]
  2eccb2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  2eccb6: 990a         	ldr	r1, [sp, #0x28]
  2eccb8: 9100         	str	r1, [sp]
  2eccba: 990b         	ldr	r1, [sp, #0x2c]
  2eccbc: 9101         	str	r1, [sp, #0x4]
  2eccbe: 4610         	mov	r0, r2
  2eccc0: 4619         	mov	r1, r3
  2eccc2: 9a08         	ldr	r2, [sp, #0x20]
  2eccc4: 9b09         	ldr	r3, [sp, #0x24]
  2eccc6: f107 f9dd    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #0x1073ba
  2eccca: 4b05         	ldr	r3, [pc, #0x14]         @ 0x2ecce0 <AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0xc4>
  2ecccc: 58e3         	ldr	r3, [r4, r3]
  2eccce: 681b         	ldr	r3, [r3]
  2eccd0: 4618         	mov	r0, r3
  2eccd2: 210d         	movs	r1, #0xd
  2eccd4: f10b f874    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x10b0e8
  2eccd8: b00c         	add	sp, #0x30
  2eccda: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2eccdb); words below are literal-pool data ---
  2eccdc: 5de0         	ldrb	r0, [r4, r7]
  2eccde: 0064         	lsls	r4, r4, #0x1
  2ecce0: d730         	bvc	0x2ecd44 <non-virtual thunk to AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)+0x60> @ imm = #0x60
  2ecce2: ffff f1a0    	<unknown>

// ==== AvatarCreator::tableCellTouched
//      file offset 0x2ecce4 (= ELF address; Ghidra 0x2fcce4), 8 bytes, Thumb-2
  2ecce4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2ecce8: f7ff bf98    	b.w	0x2ecc1c <AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)> @ imm = #-0xd0

// ==== AvatarCreator::create
//      file offset 0x30e36c (= ELF address; Ghidra 0x31e36c), 112 bytes, Thumb-2
  30e36c: b510         	push	{r4, lr}
  30e36e: b082         	sub	sp, #0x8
  30e370: f44f 70a4    	mov.w	r0, #0x148
  30e374: f079 f2f6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4795ec
  30e378: 4603         	mov	r3, r0
  30e37a: 461c         	mov	r4, r3
  30e37c: 4620         	mov	r0, r4
  30e37e: f7dc f8f9    	bl	0x2ea574 <AvatarCreator::AvatarCreator()> @ imm = #-0x23e0e
  30e382: 9401         	str	r4, [sp, #0x4]
  30e384: 9b01         	ldr	r3, [sp, #0x4]
  30e386: 2b00         	cmp	r3, #0x0
  30e388: d00a         	beq	0x30e3a0 <AvatarCreator::create()+0x34> @ imm = #0x14
  30e38a: 9b01         	ldr	r3, [sp, #0x4]
  30e38c: 681b         	ldr	r3, [r3]
  30e38e: 3318         	adds	r3, #0x18
  30e390: 681b         	ldr	r3, [r3]
  30e392: 9801         	ldr	r0, [sp, #0x4]
  30e394: 4798         	blx	r3
  30e396: 4603         	mov	r3, r0
  30e398: 2b00         	cmp	r3, #0x0
  30e39a: d001         	beq	0x30e3a0 <AvatarCreator::create()+0x34> @ imm = #0x2
  30e39c: 2301         	movs	r3, #0x1
  30e39e: e000         	b	0x30e3a2 <AvatarCreator::create()+0x36> @ imm = #0x0
  30e3a0: 2300         	movs	r3, #0x0
  30e3a2: 2b00         	cmp	r3, #0x0
  30e3a4: d005         	beq	0x30e3b2 <AvatarCreator::create()+0x46> @ imm = #0xa
  30e3a6: 9b01         	ldr	r3, [sp, #0x4]
  30e3a8: 4618         	mov	r0, r3
  30e3aa: f289 fda7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x289b4e
  30e3ae: 9b01         	ldr	r3, [sp, #0x4]
  30e3b0: e011         	b	0x30e3d6 <AvatarCreator::create()+0x6a> @ imm = #0x22
  30e3b2: 9b01         	ldr	r3, [sp, #0x4]
  30e3b4: 2b00         	cmp	r3, #0x0
  30e3b6: d005         	beq	0x30e3c4 <AvatarCreator::create()+0x58> @ imm = #0xa
  30e3b8: 9b01         	ldr	r3, [sp, #0x4]
  30e3ba: 681b         	ldr	r3, [r3]
  30e3bc: 3308         	adds	r3, #0x8
  30e3be: 681b         	ldr	r3, [r3]
  30e3c0: 9801         	ldr	r0, [sp, #0x4]
  30e3c2: 4798         	blx	r3
  30e3c4: 2300         	movs	r3, #0x0
  30e3c6: 9301         	str	r3, [sp, #0x4]
  30e3c8: 2300         	movs	r3, #0x0
  30e3ca: e004         	b	0x30e3d6 <AvatarCreator::create()+0x6a> @ imm = #0x8
  30e3cc: 4620         	mov	r0, r4
  30e3ce: f079 f669    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x479cd2
  30e3d2: f079 f66b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x479cd6
  30e3d6: 4618         	mov	r0, r3
  30e3d8: b002         	add	sp, #0x8
  30e3da: bd10         	pop	{r4, pc}
