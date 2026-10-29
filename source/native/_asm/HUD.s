// HUD: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 55 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HUD.cpp

// ==== HUD::HUD
//      file offset 0x33a1ec (= ELF address; Ghidra 0x34a1ec), 176 bytes, Thumb-2
  33a1ec: b510         	push	{r4, lr}
  33a1ee: b082         	sub	sp, #0x8
  33a1f0: 9001         	str	r0, [sp, #0x4]
  33a1f2: 4c28         	ldr	r4, [pc, #0xa0]         @ 0x33a294 <HUD::HUD()+0xa8>
  33a1f4: 447c         	add	r4, pc
  33a1f6: 9b01         	ldr	r3, [sp, #0x4]
  33a1f8: 4618         	mov	r0, r3
  33a1fa: f255 fa1d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x25543a
  33a1fe: 9b01         	ldr	r3, [sp, #0x4]
  33a200: 33e4         	adds	r3, #0xe4
  33a202: 4618         	mov	r0, r3
  33a204: f7b3 fd70    	bl	0x2edce8 <cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate()> @ imm = #-0x4c520
  33a208: 9b01         	ldr	r3, [sp, #0x4]
  33a20a: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x33a298 <HUD::HUD()+0xac>
  33a20c: 58a2         	ldr	r2, [r4, r2]
  33a20e: 3208         	adds	r2, #0x8
  33a210: 601a         	str	r2, [r3]
  33a212: 9b01         	ldr	r3, [sp, #0x4]
  33a214: 4a20         	ldr	r2, [pc, #0x80]         @ 0x33a298 <HUD::HUD()+0xac>
  33a216: 58a2         	ldr	r2, [r4, r2]
  33a218: f502 72da    	add.w	r2, r2, #0x1b4
  33a21c: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  33a220: 9b01         	ldr	r3, [sp, #0x4]
  33a222: f503 73ac    	add.w	r3, r3, #0x158
  33a226: 4618         	mov	r0, r3
  33a228: f258 fd54    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258aa8
  33a22c: 9b01         	ldr	r3, [sp, #0x4]
  33a22e: f503 73b0    	add.w	r3, r3, #0x160
  33a232: 4618         	mov	r0, r3
  33a234: f258 fd4e    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a9c
  33a238: 9b01         	ldr	r3, [sp, #0x4]
  33a23a: f503 73b4    	add.w	r3, r3, #0x168
  33a23e: 4618         	mov	r0, r3
  33a240: f258 fd48    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a90
  33a244: 9b01         	ldr	r3, [sp, #0x4]
  33a246: f503 73b8    	add.w	r3, r3, #0x170
  33a24a: 4618         	mov	r0, r3
  33a24c: f258 fd42    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a84
  33a250: 9b01         	ldr	r3, [sp, #0x4]
  33a252: f503 73bc    	add.w	r3, r3, #0x178
  33a256: 4618         	mov	r0, r3
  33a258: f258 fd3c    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a78
  33a25c: 9b01         	ldr	r3, [sp, #0x4]
  33a25e: f503 73c0    	add.w	r3, r3, #0x180
  33a262: 4618         	mov	r0, r3
  33a264: f258 fd36    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a6c
  33a268: 9b01         	ldr	r3, [sp, #0x4]
  33a26a: f503 73da    	add.w	r3, r3, #0x1b4
  33a26e: 4618         	mov	r0, r3
  33a270: f258 fd30    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x258a60
  33a274: 9b01         	ldr	r3, [sp, #0x4]
  33a276: e00a         	b	0x33a28e <HUD::HUD()+0xa2> @ imm = #0x14
  33a278: 9b01         	ldr	r3, [sp, #0x4]
  33a27a: 33e4         	adds	r3, #0xe4
  33a27c: 4618         	mov	r0, r3
  33a27e: f7b3 fcc1    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0x4c67e
  33a282: 9b01         	ldr	r3, [sp, #0x4]
  33a284: 4618         	mov	r0, r3
  33a286: f255 fadd    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2555ba
  33a28a: f04d f70f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44de1e
  33a28e: 4618         	mov	r0, r3
  33a290: b002         	add	sp, #0x8
  33a292: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33a293); words below are literal-pool data ---
  33a294: 8814         	ldrh	r4, [r2]
  33a296: 005f         	lsls	r7, r3, #0x1
  33a298: daa8         	bge	0x33a1ec <HUD::HUD()>   @ imm = #-0xb0
  33a29a: ffff b5f0    	<unknown>

// ==== HUD::init
//      file offset 0x33a29c (= ELF address; Ghidra 0x34a29c), 6284 bytes, Thumb-2
  33a29c: b5f0         	push	{r4, r5, r6, r7, lr}
  33a29e: ed2d 8b02    	vpush	{d8}
  33a2a2: b0d1         	sub	sp, #0x144
  33a2a4: ab07         	add	r3, sp, #0x1c
  33a2a6: 6018         	str	r0, [r3]
  33a2a8: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x33a2d8 <HUD::init()+0x3c>
  33a2aa: 447c         	add	r4, pc
  33a2ac: ab07         	add	r3, sp, #0x1c
  33a2ae: 681b         	ldr	r3, [r3]
  33a2b0: 4618         	mov	r0, r3
  33a2b2: f255 fbcb    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x255796
  33a2b6: 4603         	mov	r3, r0
  33a2b8: 461a         	mov	r2, r3
  33a2ba: f10d 0327    	add.w	r3, sp, #0x27
  33a2be: 701a         	strb	r2, [r3]
  33a2c0: f10d 0327    	add.w	r3, sp, #0x27
  33a2c4: 781b         	ldrb	r3, [r3]
  33a2c6: f083 0301    	eor	r3, r3, #0x1
  33a2ca: b2db         	uxtb	r3, r3
  33a2cc: 2b00         	cmp	r3, #0x0
  33a2ce: d005         	beq	0x33a2dc <HUD::init()+0x40> @ imm = #0xa
  33a2d0: 2300         	movs	r3, #0x0
  33a2d2: f001 bc24    	b.w	0x33bb1e <HUD::init()+0x1882> @ imm = #0x1848
  33a2d6: bf00         	nop
  33a2d8: 875e         	strh	r6, [r3, #0x3a]
  33a2da: 005f         	lsls	r7, r3, #0x1
  33a2dc: ab07         	add	r3, sp, #0x1c
  33a2de: 681b         	ldr	r3, [r3]
  33a2e0: 2200         	movs	r2, #0x0
  33a2e2: f8c3 2104    	str.w	r2, [r3, #0x104]
  33a2e6: f7ff fe31    	bl	0x339f4c <Joypad::create()> @ imm = #-0x39e
  33a2ea: 4602         	mov	r2, r0
  33a2ec: ab07         	add	r3, sp, #0x1c
  33a2ee: 681b         	ldr	r3, [r3]
  33a2f0: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  33a2f4: f7ff fe62    	bl	0x339fbc <AmmoMeter::create()> @ imm = #-0x33c
  33a2f8: 4602         	mov	r2, r0
  33a2fa: ab07         	add	r3, sp, #0x1c
  33a2fc: 681b         	ldr	r3, [r3]
  33a2fe: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  33a302: f7ff fe93    	bl	0x33a02c <HeartMeter::create()> @ imm = #-0x2da
  33a306: 4602         	mov	r2, r0
  33a308: ab07         	add	r3, sp, #0x1c
  33a30a: 681b         	ldr	r3, [r3]
  33a30c: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  33a310: f7ff fefc    	bl	0x33a10c <Radar::create()> @ imm = #-0x208
  33a314: 4602         	mov	r2, r0
  33a316: ab07         	add	r3, sp, #0x1c
  33a318: 681b         	ldr	r3, [r3]
  33a31a: f8c3 2100    	str.w	r2, [r3, #0x100]
  33a31e: ab07         	add	r3, sp, #0x1c
  33a320: 681b         	ldr	r3, [r3]
  33a322: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  33a326: 4618         	mov	r0, r3
  33a328: f25d fdde    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25dbbc
  33a32c: ab07         	add	r3, sp, #0x1c
  33a32e: 681b         	ldr	r3, [r3]
  33a330: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33a334: 4618         	mov	r0, r3
  33a336: f25d fdd7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25dbae
  33a33a: ab07         	add	r3, sp, #0x1c
  33a33c: 681b         	ldr	r3, [r3]
  33a33e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33a342: 4618         	mov	r0, r3
  33a344: f25d fdd0    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25dba0
  33a348: ab07         	add	r3, sp, #0x1c
  33a34a: 681b         	ldr	r3, [r3]
  33a34c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  33a350: 4618         	mov	r0, r3
  33a352: f25d fdc9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25db92
  33a356: ab4e         	add	r3, sp, #0x138
  33a358: 4618         	mov	r0, r3
  33a35a: f04f 0100    	mov.w	r1, #0x0
  33a35e: f2c4 01a0    	movt	r1, #0x40a0
  33a362: f04f 0200    	mov.w	r2, #0x0
  33a366: f2c4 02a0    	movt	r2, #0x40a0
  33a36a: f258 fe93    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x258d26
  33a36e: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x33a714 <HUD::init()+0x478>
  33a370: 447b         	add	r3, pc
  33a372: 4618         	mov	r0, r3
  33a374: f113 fefe    	bl	0x44e174 <cocos2d::extension::CCScale9Sprite::create(char const*)> @ imm = #0x113dfc
  33a378: 4603         	mov	r3, r0
  33a37a: aa4e         	add	r2, sp, #0x138
  33a37c: 4610         	mov	r0, r2
  33a37e: 4619         	mov	r1, r3
  33a380: 2200         	movs	r2, #0x0
  33a382: 2300         	movs	r3, #0x0
  33a384: f11c fae4    	bl	0x456950 <cocos2d::extension::CCEditBox::create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*)> @ imm = #0x11c5c8
  33a388: 4602         	mov	r2, r0
  33a38a: ab07         	add	r3, sp, #0x1c
  33a38c: 681b         	ldr	r3, [r3]
  33a38e: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  33a392: ab07         	add	r3, sp, #0x1c
  33a394: 681b         	ldr	r3, [r3]
  33a396: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33a39a: 4618         	mov	r0, r3
  33a39c: f25d fda4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25db48
  33a3a0: ab07         	add	r3, sp, #0x1c
  33a3a2: 681b         	ldr	r3, [r3]
  33a3a4: f8d3 20f0    	ldr.w	r2, [r3, #0xf0]
  33a3a8: ab07         	add	r3, sp, #0x1c
  33a3aa: 681b         	ldr	r3, [r3]
  33a3ac: 33e4         	adds	r3, #0xe4
  33a3ae: 4610         	mov	r0, r2
  33a3b0: 4619         	mov	r1, r3
  33a3b2: f11c fb89    	bl	0x456ac8 <cocos2d::extension::CCEditBox::setDelegate(cocos2d::extension::CCEditBoxDelegate*)> @ imm = #0x11c712
  33a3b6: ab07         	add	r3, sp, #0x1c
  33a3b8: 681b         	ldr	r3, [r3]
  33a3ba: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33a3be: 681b         	ldr	r3, [r3]
  33a3c0: 3390         	adds	r3, #0x90
  33a3c2: 681b         	ldr	r3, [r3]
  33a3c4: aa07         	add	r2, sp, #0x1c
  33a3c6: 6812         	ldr	r2, [r2]
  33a3c8: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  33a3cc: 4610         	mov	r0, r2
  33a3ce: 2100         	movs	r1, #0x0
  33a3d0: 4798         	blx	r3
  33a3d2: ab07         	add	r3, sp, #0x1c
  33a3d4: 681b         	ldr	r3, [r3]
  33a3d6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33a3da: 681b         	ldr	r3, [r3]
  33a3dc: 334c         	adds	r3, #0x4c
  33a3de: 681d         	ldr	r5, [r3]
  33a3e0: ab07         	add	r3, sp, #0x1c
  33a3e2: 681b         	ldr	r3, [r3]
  33a3e4: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  33a3e8: 4bcb         	ldr	r3, [pc, #0x32c]        @ 0x33a718 <HUD::init()+0x47c>
  33a3ea: 58e3         	ldr	r3, [r4, r3]
  33a3ec: edd3 7a01    	vldr	s15, [r3, #4]
  33a3f0: ee77 7aa7    	vadd.f32	s15, s15, s15
  33a3f4: ab4e         	add	r3, sp, #0x138
  33a3f6: 4618         	mov	r0, r3
  33a3f8: f04f 0100    	mov.w	r1, #0x0
  33a3fc: ee17 2a90    	vmov	r2, s15
  33a400: f258 fc76    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2588ec
  33a404: ab4e         	add	r3, sp, #0x138
  33a406: 4630         	mov	r0, r6
  33a408: 4619         	mov	r1, r3
  33a40a: 47a8         	blx	r5
  33a40c: ab07         	add	r3, sp, #0x1c
  33a40e: 681b         	ldr	r3, [r3]
  33a410: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33a414: 4618         	mov	r0, r3
  33a416: 2103         	movs	r1, #0x3
  33a418: f11c fd72    	bl	0x456f00 <cocos2d::extension::CCEditBox::setInputFlag(cocos2d::extension::EditBoxInputFlag)> @ imm = #0x11cae4
  33a41c: ab07         	add	r3, sp, #0x1c
  33a41e: 681b         	ldr	r3, [r3]
  33a420: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33a424: 4618         	mov	r0, r3
  33a426: 2101         	movs	r1, #0x1
  33a428: f11c fd86    	bl	0x456f38 <cocos2d::extension::CCEditBox::setReturnType(cocos2d::extension::KeyboardReturnType)> @ imm = #0x11cb0c
  33a42c: ab07         	add	r3, sp, #0x1c
  33a42e: 681b         	ldr	r3, [r3]
  33a430: f503 75ac    	add.w	r5, r3, #0x158
  33a434: 4bb8         	ldr	r3, [pc, #0x2e0]        @ 0x33a718 <HUD::init()+0x47c>
  33a436: 58e3         	ldr	r3, [r4, r3]
  33a438: ed93 7a00    	vldr	s14, [r3]
  33a43c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33a440: eec7 6a27    	vdiv.f32	s13, s14, s15
  33a444: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x33a718 <HUD::init()+0x47c>
  33a446: 58e3         	ldr	r3, [r4, r3]
  33a448: ed93 7a01    	vldr	s14, [r3, #4]
  33a44c: eddf 7aaf    	vldr	s15, [pc, #700]         @ 0x33a70c <HUD::init()+0x470>
  33a450: ee77 7a67    	vsub.f32	s15, s14, s15
  33a454: ab4e         	add	r3, sp, #0x138
  33a456: 4618         	mov	r0, r3
  33a458: ee16 1a90    	vmov	r1, s13
  33a45c: ee17 2a90    	vmov	r2, s15
  33a460: f258 fc46    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25888c
  33a464: ab4e         	add	r3, sp, #0x138
  33a466: 4628         	mov	r0, r5
  33a468: 4619         	mov	r1, r3
  33a46a: f258 fc6f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2588de
  33a46e: ab07         	add	r3, sp, #0x1c
  33a470: 681b         	ldr	r3, [r3]
  33a472: f503 73b0    	add.w	r3, r3, #0x160
  33a476: 4618         	mov	r0, r3
  33a478: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x33a71c <HUD::init()+0x480>
  33a47a: 58e3         	ldr	r3, [r4, r3]
  33a47c: 4619         	mov	r1, r3
  33a47e: f258 fc65    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2588ca
  33a482: ab07         	add	r3, sp, #0x1c
  33a484: 681b         	ldr	r3, [r3]
  33a486: f503 73b4    	add.w	r3, r3, #0x168
  33a48a: 4618         	mov	r0, r3
  33a48c: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x33a720 <HUD::init()+0x484>
  33a48e: 58e3         	ldr	r3, [r4, r3]
  33a490: 4619         	mov	r1, r3
  33a492: f258 fc5b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2588b6
  33a496: ab07         	add	r3, sp, #0x1c
  33a498: 681b         	ldr	r3, [r3]
  33a49a: f503 73b8    	add.w	r3, r3, #0x170
  33a49e: 4618         	mov	r0, r3
  33a4a0: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x33a724 <HUD::init()+0x488>
  33a4a2: 58e3         	ldr	r3, [r4, r3]
  33a4a4: 4619         	mov	r1, r3
  33a4a6: f258 fc51    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2588a2
  33a4aa: ab07         	add	r3, sp, #0x1c
  33a4ac: 681b         	ldr	r3, [r3]
  33a4ae: f503 73bc    	add.w	r3, r3, #0x178
  33a4b2: 4618         	mov	r0, r3
  33a4b4: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x33a728 <HUD::init()+0x48c>
  33a4b6: 58e3         	ldr	r3, [r4, r3]
  33a4b8: 4619         	mov	r1, r3
  33a4ba: f258 fc47    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x25888e
  33a4be: ab07         	add	r3, sp, #0x1c
  33a4c0: 681b         	ldr	r3, [r3]
  33a4c2: f503 75c0    	add.w	r5, r3, #0x180
  33a4c6: 4b94         	ldr	r3, [pc, #0x250]        @ 0x33a718 <HUD::init()+0x47c>
  33a4c8: 58e3         	ldr	r3, [r4, r3]
  33a4ca: ed93 7a01    	vldr	s14, [r3, #4]
  33a4ce: eddf 7a90    	vldr	s15, [pc, #576]         @ 0x33a710 <HUD::init()+0x474>
  33a4d2: ee77 7a27    	vadd.f32	s15, s14, s15
  33a4d6: ab4e         	add	r3, sp, #0x138
  33a4d8: 4618         	mov	r0, r3
  33a4da: f04f 0100    	mov.w	r1, #0x0
  33a4de: ee17 2a90    	vmov	r2, s15
  33a4e2: f258 fc05    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25880a
  33a4e6: ab4e         	add	r3, sp, #0x138
  33a4e8: 4628         	mov	r0, r5
  33a4ea: 4619         	mov	r1, r3
  33a4ec: f258 fc2e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x25885c
  33a4f0: ab07         	add	r3, sp, #0x1c
  33a4f2: 681b         	ldr	r3, [r3]
  33a4f4: f04f 0200    	mov.w	r2, #0x0
  33a4f8: f8c3 2188    	str.w	r2, [r3, #0x188]
  33a4fc: ab07         	add	r3, sp, #0x1c
  33a4fe: 681b         	ldr	r3, [r3]
  33a500: f04f 0200    	mov.w	r2, #0x0
  33a504: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  33a508: ab07         	add	r3, sp, #0x1c
  33a50a: 681b         	ldr	r3, [r3]
  33a50c: f04f 0200    	mov.w	r2, #0x0
  33a510: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  33a514: f25f fc0e    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x25f81c
  33a518: 4602         	mov	r2, r0
  33a51a: ab07         	add	r3, sp, #0x1c
  33a51c: 681b         	ldr	r3, [r3]
  33a51e: f8c3 2154    	str.w	r2, [r3, #0x154]
  33a522: ab07         	add	r3, sp, #0x1c
  33a524: 681b         	ldr	r3, [r3]
  33a526: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33a52a: 4618         	mov	r0, r3
  33a52c: f25d fcdc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d9b8
  33a530: ab07         	add	r3, sp, #0x1c
  33a532: 681b         	ldr	r3, [r3]
  33a534: f503 75da    	add.w	r5, r3, #0x1b4
  33a538: 4b77         	ldr	r3, [pc, #0x1dc]        @ 0x33a718 <HUD::init()+0x47c>
  33a53a: 58e3         	ldr	r3, [r4, r3]
  33a53c: ed93 7a00    	vldr	s14, [r3]
  33a540: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33a544: ee87 7a27    	vdiv.f32	s14, s14, s15
  33a548: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  33a54c: ee77 6a67    	vsub.f32	s13, s14, s15
  33a550: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x33a718 <HUD::init()+0x47c>
  33a552: 58e3         	ldr	r3, [r4, r3]
  33a554: ed93 7a01    	vldr	s14, [r3, #4]
  33a558: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  33a55c: ee77 7a67    	vsub.f32	s15, s14, s15
  33a560: ab4e         	add	r3, sp, #0x138
  33a562: 4618         	mov	r0, r3
  33a564: ee16 1a90    	vmov	r1, s13
  33a568: ee17 2a90    	vmov	r2, s15
  33a56c: f258 fbc0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x258780
  33a570: ab4e         	add	r3, sp, #0x138
  33a572: 4628         	mov	r0, r5
  33a574: 4619         	mov	r1, r3
  33a576: f258 fbe9    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2587d2
  33a57a: 2320         	movs	r3, #0x20
  33a57c: 9300         	str	r3, [sp]
  33a57e: 4b6b         	ldr	r3, [pc, #0x1ac]        @ 0x33a72c <HUD::init()+0x490>
  33a580: 447b         	add	r3, pc
  33a582: 4618         	mov	r0, r3
  33a584: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x33a730 <HUD::init()+0x494>
  33a586: 447b         	add	r3, pc
  33a588: 4619         	mov	r1, r3
  33a58a: 2220         	movs	r2, #0x20
  33a58c: 2320         	movs	r3, #0x20
  33a58e: f26a fef3    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26ade6
  33a592: 4602         	mov	r2, r0
  33a594: ab07         	add	r3, sp, #0x1c
  33a596: 681b         	ldr	r3, [r3]
  33a598: f8c3 2108    	str.w	r2, [r3, #0x108]
  33a59c: ab07         	add	r3, sp, #0x1c
  33a59e: 681b         	ldr	r3, [r3]
  33a5a0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a5a4: 4618         	mov	r0, r3
  33a5a6: f25d fc9f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d93e
  33a5aa: ab07         	add	r3, sp, #0x1c
  33a5ac: 681b         	ldr	r3, [r3]
  33a5ae: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a5b2: 681b         	ldr	r3, [r3]
  33a5b4: 337c         	adds	r3, #0x7c
  33a5b6: 681d         	ldr	r5, [r3]
  33a5b8: ab07         	add	r3, sp, #0x1c
  33a5ba: 681b         	ldr	r3, [r3]
  33a5bc: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a5c0: 461e         	mov	r6, r3
  33a5c2: ab4e         	add	r3, sp, #0x138
  33a5c4: 4618         	mov	r0, r3
  33a5c6: f04f 0100    	mov.w	r1, #0x0
  33a5ca: f04f 527c    	mov.w	r2, #0x3f000000
  33a5ce: f258 fb8f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25871e
  33a5d2: ab4e         	add	r3, sp, #0x138
  33a5d4: 4630         	mov	r0, r6
  33a5d6: 4619         	mov	r1, r3
  33a5d8: 47a8         	blx	r5
  33a5da: ab07         	add	r3, sp, #0x1c
  33a5dc: 681b         	ldr	r3, [r3]
  33a5de: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a5e2: 681b         	ldr	r3, [r3]
  33a5e4: 334c         	adds	r3, #0x4c
  33a5e6: 681d         	ldr	r5, [r3]
  33a5e8: ab07         	add	r3, sp, #0x1c
  33a5ea: 681b         	ldr	r3, [r3]
  33a5ec: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a5f0: 461e         	mov	r6, r3
  33a5f2: ab07         	add	r3, sp, #0x1c
  33a5f4: 681b         	ldr	r3, [r3]
  33a5f6: ed93 7a6d    	vldr	s14, [r3, #436]
  33a5fa: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  33a5fe: ee77 7a27    	vadd.f32	s15, s14, s15
  33a602: ab07         	add	r3, sp, #0x1c
  33a604: 681b         	ldr	r3, [r3]
  33a606: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  33a60a: aa4e         	add	r2, sp, #0x138
  33a60c: 4610         	mov	r0, r2
  33a60e: ee17 1a90    	vmov	r1, s15
  33a612: 461a         	mov	r2, r3
  33a614: f258 fb6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2586d8
  33a618: ab4e         	add	r3, sp, #0x138
  33a61a: 4630         	mov	r0, r6
  33a61c: 4619         	mov	r1, r3
  33a61e: 47a8         	blx	r5
  33a620: ab07         	add	r3, sp, #0x1c
  33a622: 681b         	ldr	r3, [r3]
  33a624: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a628: 681b         	ldr	r3, [r3]
  33a62a: 3340         	adds	r3, #0x40
  33a62c: 681b         	ldr	r3, [r3]
  33a62e: aa07         	add	r2, sp, #0x1c
  33a630: 6812         	ldr	r2, [r2]
  33a632: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  33a636: 4610         	mov	r0, r2
  33a638: f04f 517c    	mov.w	r1, #0x3f000000
  33a63c: 4798         	blx	r3
  33a63e: ab07         	add	r3, sp, #0x1c
  33a640: 681b         	ldr	r3, [r3]
  33a642: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a646: 4618         	mov	r0, r3
  33a648: 2119         	movs	r1, #0x19
  33a64a: f26b fb9b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26b736
  33a64e: ab07         	add	r3, sp, #0x1c
  33a650: 681b         	ldr	r3, [r3]
  33a652: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a656: 681b         	ldr	r3, [r3]
  33a658: f503 73de    	add.w	r3, r3, #0x1bc
  33a65c: 681d         	ldr	r5, [r3]
  33a65e: ab07         	add	r3, sp, #0x1c
  33a660: 681b         	ldr	r3, [r3]
  33a662: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33a666: 461e         	mov	r6, r3
  33a668: 20ff         	movs	r0, #0xff
  33a66a: 21ff         	movs	r1, #0xff
  33a66c: 22ff         	movs	r2, #0xff
  33a66e: f7fe fd71    	bl	0x339154 <GasCloud::updateStep(float)+0x49c> @ imm = #-0x151e
  33a672: 4603         	mov	r3, r0
  33a674: 461a         	mov	r2, r3
  33a676: f88d 2138    	strb.w	r2, [sp, #0x138]
  33a67a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33a67e: f88d 2139    	strb.w	r2, [sp, #0x139]
  33a682: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  33a686: f88d 313a    	strb.w	r3, [sp, #0x13a]
  33a68a: ab4e         	add	r3, sp, #0x138
  33a68c: 4630         	mov	r0, r6
  33a68e: 4619         	mov	r1, r3
  33a690: 47a8         	blx	r5
  33a692: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x33a734 <HUD::init()+0x498>
  33a694: 447b         	add	r3, pc
  33a696: 4618         	mov	r0, r3
  33a698: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x33a738 <HUD::init()+0x49c>
  33a69a: 447b         	add	r3, pc
  33a69c: 4619         	mov	r1, r3
  33a69e: f04f 0200    	mov.w	r2, #0x0
  33a6a2: f2c4 1250    	movt	r2, #0x4150
  33a6a6: f271 fcbb    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x271976
  33a6aa: 4602         	mov	r2, r0
  33a6ac: ab07         	add	r3, sp, #0x1c
  33a6ae: 681b         	ldr	r3, [r3]
  33a6b0: f8c3 2148    	str.w	r2, [r3, #0x148]
  33a6b4: ab07         	add	r3, sp, #0x1c
  33a6b6: 681b         	ldr	r3, [r3]
  33a6b8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a6bc: 4618         	mov	r0, r3
  33a6be: f25d fc13    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d826
  33a6c2: ab07         	add	r3, sp, #0x1c
  33a6c4: 681b         	ldr	r3, [r3]
  33a6c6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a6ca: 681b         	ldr	r3, [r3]
  33a6cc: 337c         	adds	r3, #0x7c
  33a6ce: 681d         	ldr	r5, [r3]
  33a6d0: ab07         	add	r3, sp, #0x1c
  33a6d2: 681b         	ldr	r3, [r3]
  33a6d4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a6d8: 461e         	mov	r6, r3
  33a6da: ab4e         	add	r3, sp, #0x138
  33a6dc: 4618         	mov	r0, r3
  33a6de: f04f 517c    	mov.w	r1, #0x3f000000
  33a6e2: f04f 527c    	mov.w	r2, #0x3f000000
  33a6e6: f258 fb03    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x258606
  33a6ea: ab4e         	add	r3, sp, #0x138
  33a6ec: 4630         	mov	r0, r6
  33a6ee: 4619         	mov	r1, r3
  33a6f0: 47a8         	blx	r5
  33a6f2: ab07         	add	r3, sp, #0x1c
  33a6f4: 681b         	ldr	r3, [r3]
  33a6f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a6fa: 681b         	ldr	r3, [r3]
  33a6fc: 334c         	adds	r3, #0x4c
  33a6fe: 681d         	ldr	r5, [r3]
  33a700: ab07         	add	r3, sp, #0x1c
  33a702: 681b         	ldr	r3, [r3]
  33a704: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a708: 461e         	mov	r6, r3
  33a70a: e017         	b	0x33a73c <HUD::init()+0x4a0> @ imm = #0x2e
  33a70c: 0000         	movs	r0, r0
  33a70e: 420c         	tst	r4, r1
  33a710: 0000         	movs	r0, r0
  33a712: 447a         	add	r2, pc
  33a714: f454 0048    	orrs	r0, r4, #0xc80000
  33a718: d724         	bvc	0x33a764 <HUD::init()+0x4c8> @ imm = #0x48
  33a71a: ffff d814    	vqshrun.s64	d29, q2, #0x1
  33a71e: ffff d80c    	vtbl.8	d29, {d15}, d12
  33a722: ffff d810    	vqshrun.s64	d29, q0, #0x1
  33a726: ffff d818    	vqshrun.s64	d29, q4, #0x1
  33a72a: ffff f254    	<unknown>
  33a72e: 0048         	lsls	r0, r1, #0x1
  33a730: f252 0048    	<unknown>
  33a734: f140 0048    	adc	r0, r0, #0x48
  33a738: f14e 0048    	adc	r0, lr, #0x48
  33a73c: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x33aa10 <HUD::init()+0x774>
  33a73e: 58e3         	ldr	r3, [r4, r3]
  33a740: ed93 7a00    	vldr	s14, [r3]
  33a744: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33a748: eec7 6a27    	vdiv.f32	s13, s14, s15
  33a74c: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x33aa10 <HUD::init()+0x774>
  33a74e: 58e3         	ldr	r3, [r4, r3]
  33a750: ed93 7a01    	vldr	s14, [r3, #4]
  33a754: eddf 7aad    	vldr	s15, [pc, #692]         @ 0x33aa0c <HUD::init()+0x770>
  33a758: ee77 7a67    	vsub.f32	s15, s14, s15
  33a75c: ab4e         	add	r3, sp, #0x138
  33a75e: 4618         	mov	r0, r3
  33a760: ee16 1a90    	vmov	r1, s13
  33a764: ee17 2a90    	vmov	r2, s15
  33a768: f258 fac2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x258584
  33a76c: ab4e         	add	r3, sp, #0x138
  33a76e: 4630         	mov	r0, r6
  33a770: 4619         	mov	r1, r3
  33a772: 47a8         	blx	r5
  33a774: ab07         	add	r3, sp, #0x1c
  33a776: 681b         	ldr	r3, [r3]
  33a778: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a77c: 681b         	ldr	r3, [r3]
  33a77e: f503 73de    	add.w	r3, r3, #0x1bc
  33a782: 681d         	ldr	r5, [r3]
  33a784: ab07         	add	r3, sp, #0x1c
  33a786: 681b         	ldr	r3, [r3]
  33a788: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33a78c: 461e         	mov	r6, r3
  33a78e: 20ff         	movs	r0, #0xff
  33a790: 21ff         	movs	r1, #0xff
  33a792: 22ff         	movs	r2, #0xff
  33a794: f7fe fcde    	bl	0x339154 <GasCloud::updateStep(float)+0x49c> @ imm = #-0x1644
  33a798: 4603         	mov	r3, r0
  33a79a: 461a         	mov	r2, r3
  33a79c: f88d 2138    	strb.w	r2, [sp, #0x138]
  33a7a0: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33a7a4: f88d 2139    	strb.w	r2, [sp, #0x139]
  33a7a8: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  33a7ac: f88d 313a    	strb.w	r3, [sp, #0x13a]
  33a7b0: ab4e         	add	r3, sp, #0x138
  33a7b2: 4630         	mov	r0, r6
  33a7b4: 4619         	mov	r1, r3
  33a7b6: 47a8         	blx	r5
  33a7b8: 2320         	movs	r3, #0x20
  33a7ba: 9300         	str	r3, [sp]
  33a7bc: 4b95         	ldr	r3, [pc, #0x254]        @ 0x33aa14 <HUD::init()+0x778>
  33a7be: 447b         	add	r3, pc
  33a7c0: 4618         	mov	r0, r3
  33a7c2: 4b95         	ldr	r3, [pc, #0x254]        @ 0x33aa18 <HUD::init()+0x77c>
  33a7c4: 447b         	add	r3, pc
  33a7c6: 4619         	mov	r1, r3
  33a7c8: 2220         	movs	r2, #0x20
  33a7ca: 2320         	movs	r3, #0x20
  33a7cc: f26a fdd4    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26aba8
  33a7d0: 4602         	mov	r2, r0
  33a7d2: ab07         	add	r3, sp, #0x1c
  33a7d4: 681b         	ldr	r3, [r3]
  33a7d6: f8c3 2150    	str.w	r2, [r3, #0x150]
  33a7da: ab07         	add	r3, sp, #0x1c
  33a7dc: 681b         	ldr	r3, [r3]
  33a7de: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a7e2: 4618         	mov	r0, r3
  33a7e4: f25d fb80    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d700
  33a7e8: ab07         	add	r3, sp, #0x1c
  33a7ea: 681b         	ldr	r3, [r3]
  33a7ec: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a7f0: 681b         	ldr	r3, [r3]
  33a7f2: 337c         	adds	r3, #0x7c
  33a7f4: 681d         	ldr	r5, [r3]
  33a7f6: ab07         	add	r3, sp, #0x1c
  33a7f8: 681b         	ldr	r3, [r3]
  33a7fa: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a7fe: 461e         	mov	r6, r3
  33a800: ab4e         	add	r3, sp, #0x138
  33a802: 4618         	mov	r0, r3
  33a804: f04f 517c    	mov.w	r1, #0x3f000000
  33a808: f04f 527c    	mov.w	r2, #0x3f000000
  33a80c: f258 fa70    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2584e0
  33a810: ab4e         	add	r3, sp, #0x138
  33a812: 4630         	mov	r0, r6
  33a814: 4619         	mov	r1, r3
  33a816: 47a8         	blx	r5
  33a818: ab07         	add	r3, sp, #0x1c
  33a81a: 681b         	ldr	r3, [r3]
  33a81c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a820: 681b         	ldr	r3, [r3]
  33a822: 3340         	adds	r3, #0x40
  33a824: 681b         	ldr	r3, [r3]
  33a826: aa07         	add	r2, sp, #0x1c
  33a828: 6812         	ldr	r2, [r2]
  33a82a: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  33a82e: 4610         	mov	r0, r2
  33a830: f246 6166    	movw	r1, #0x6666
  33a834: f6c3 61e6    	movt	r1, #0x3ee6
  33a838: 4798         	blx	r3
  33a83a: ab07         	add	r3, sp, #0x1c
  33a83c: 681b         	ldr	r3, [r3]
  33a83e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a842: 4618         	mov	r0, r3
  33a844: 2119         	movs	r1, #0x19
  33a846: f26b fa9d    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26b53a
  33a84a: ab07         	add	r3, sp, #0x1c
  33a84c: 681b         	ldr	r3, [r3]
  33a84e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a852: 681b         	ldr	r3, [r3]
  33a854: f503 73d2    	add.w	r3, r3, #0x1a4
  33a858: 681b         	ldr	r3, [r3]
  33a85a: aa07         	add	r2, sp, #0x1c
  33a85c: 6812         	ldr	r2, [r2]
  33a85e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  33a862: 4610         	mov	r0, r2
  33a864: 21be         	movs	r1, #0xbe
  33a866: 4798         	blx	r3
  33a868: ab07         	add	r3, sp, #0x1c
  33a86a: 681b         	ldr	r3, [r3]
  33a86c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a870: 681b         	ldr	r3, [r3]
  33a872: f503 73de    	add.w	r3, r3, #0x1bc
  33a876: 681d         	ldr	r5, [r3]
  33a878: ab07         	add	r3, sp, #0x1c
  33a87a: 681b         	ldr	r3, [r3]
  33a87c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33a880: 461e         	mov	r6, r3
  33a882: 20ff         	movs	r0, #0xff
  33a884: 21ff         	movs	r1, #0xff
  33a886: 22ff         	movs	r2, #0xff
  33a888: f7fe fc64    	bl	0x339154 <GasCloud::updateStep(float)+0x49c> @ imm = #-0x1738
  33a88c: 4603         	mov	r3, r0
  33a88e: 461a         	mov	r2, r3
  33a890: f88d 2138    	strb.w	r2, [sp, #0x138]
  33a894: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33a898: f88d 2139    	strb.w	r2, [sp, #0x139]
  33a89c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  33a8a0: f88d 313a    	strb.w	r3, [sp, #0x13a]
  33a8a4: ab4e         	add	r3, sp, #0x138
  33a8a6: 4630         	mov	r0, r6
  33a8a8: 4619         	mov	r1, r3
  33a8aa: 47a8         	blx	r5
  33a8ac: 2320         	movs	r3, #0x20
  33a8ae: 9300         	str	r3, [sp]
  33a8b0: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x33aa1c <HUD::init()+0x780>
  33a8b2: 447b         	add	r3, pc
  33a8b4: 4618         	mov	r0, r3
  33a8b6: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x33aa20 <HUD::init()+0x784>
  33a8b8: 447b         	add	r3, pc
  33a8ba: 4619         	mov	r1, r3
  33a8bc: 2220         	movs	r2, #0x20
  33a8be: 2320         	movs	r3, #0x20
  33a8c0: f26a fd5a    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26aab4
  33a8c4: 4602         	mov	r2, r0
  33a8c6: ab07         	add	r3, sp, #0x1c
  33a8c8: 681b         	ldr	r3, [r3]
  33a8ca: f8c3 2140    	str.w	r2, [r3, #0x140]
  33a8ce: ab07         	add	r3, sp, #0x1c
  33a8d0: 681b         	ldr	r3, [r3]
  33a8d2: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a8d6: 4618         	mov	r0, r3
  33a8d8: f25d fb06    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d60c
  33a8dc: ab07         	add	r3, sp, #0x1c
  33a8de: 681b         	ldr	r3, [r3]
  33a8e0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a8e4: 681b         	ldr	r3, [r3]
  33a8e6: 337c         	adds	r3, #0x7c
  33a8e8: 681d         	ldr	r5, [r3]
  33a8ea: ab07         	add	r3, sp, #0x1c
  33a8ec: 681b         	ldr	r3, [r3]
  33a8ee: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a8f2: 461e         	mov	r6, r3
  33a8f4: ab4e         	add	r3, sp, #0x138
  33a8f6: 4618         	mov	r0, r3
  33a8f8: f04f 517c    	mov.w	r1, #0x3f000000
  33a8fc: f04f 527c    	mov.w	r2, #0x3f000000
  33a900: f258 f9f6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2583ec
  33a904: ab4e         	add	r3, sp, #0x138
  33a906: 4630         	mov	r0, r6
  33a908: 4619         	mov	r1, r3
  33a90a: 47a8         	blx	r5
  33a90c: ab07         	add	r3, sp, #0x1c
  33a90e: 681b         	ldr	r3, [r3]
  33a910: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a914: 681b         	ldr	r3, [r3]
  33a916: 334c         	adds	r3, #0x4c
  33a918: 681d         	ldr	r5, [r3]
  33a91a: ab07         	add	r3, sp, #0x1c
  33a91c: 681b         	ldr	r3, [r3]
  33a91e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a922: 461e         	mov	r6, r3
  33a924: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x33aa10 <HUD::init()+0x774>
  33a926: 58e3         	ldr	r3, [r4, r3]
  33a928: ed93 7a00    	vldr	s14, [r3]
  33a92c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33a930: eec7 6a27    	vdiv.f32	s13, s14, s15
  33a934: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x33aa10 <HUD::init()+0x774>
  33a936: 58e3         	ldr	r3, [r4, r3]
  33a938: ed93 7a01    	vldr	s14, [r3, #4]
  33a93c: eef2 7a0a    	vmov.f32	s15, #1.300000e+01
  33a940: ee77 7a67    	vsub.f32	s15, s14, s15
  33a944: ab4e         	add	r3, sp, #0x138
  33a946: 4618         	mov	r0, r3
  33a948: ee16 1a90    	vmov	r1, s13
  33a94c: ee17 2a90    	vmov	r2, s15
  33a950: f258 f9ce    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25839c
  33a954: ab4e         	add	r3, sp, #0x138
  33a956: 4630         	mov	r0, r6
  33a958: 4619         	mov	r1, r3
  33a95a: 47a8         	blx	r5
  33a95c: ab07         	add	r3, sp, #0x1c
  33a95e: 681b         	ldr	r3, [r3]
  33a960: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a964: 681b         	ldr	r3, [r3]
  33a966: 3340         	adds	r3, #0x40
  33a968: 681b         	ldr	r3, [r3]
  33a96a: aa07         	add	r2, sp, #0x1c
  33a96c: 6812         	ldr	r2, [r2]
  33a96e: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  33a972: 4610         	mov	r0, r2
  33a974: f246 6166    	movw	r1, #0x6666
  33a978: f6c3 61e6    	movt	r1, #0x3ee6
  33a97c: 4798         	blx	r3
  33a97e: ab07         	add	r3, sp, #0x1c
  33a980: 681b         	ldr	r3, [r3]
  33a982: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33a986: 4618         	mov	r0, r3
  33a988: 2119         	movs	r1, #0x19
  33a98a: f26b f9fb    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26b3f6
  33a98e: 2320         	movs	r3, #0x20
  33a990: 9300         	str	r3, [sp]
  33a992: 4b24         	ldr	r3, [pc, #0x90]         @ 0x33aa24 <HUD::init()+0x788>
  33a994: 447b         	add	r3, pc
  33a996: 4618         	mov	r0, r3
  33a998: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x33aa28 <HUD::init()+0x78c>
  33a99a: 447b         	add	r3, pc
  33a99c: 4619         	mov	r1, r3
  33a99e: 2220         	movs	r2, #0x20
  33a9a0: 2320         	movs	r3, #0x20
  33a9a2: f26a fce9    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26a9d2
  33a9a6: 4602         	mov	r2, r0
  33a9a8: ab07         	add	r3, sp, #0x1c
  33a9aa: 681b         	ldr	r3, [r3]
  33a9ac: f8c3 2144    	str.w	r2, [r3, #0x144]
  33a9b0: ab07         	add	r3, sp, #0x1c
  33a9b2: 681b         	ldr	r3, [r3]
  33a9b4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33a9b8: 4618         	mov	r0, r3
  33a9ba: f25d fa95    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d52a
  33a9be: ab07         	add	r3, sp, #0x1c
  33a9c0: 681b         	ldr	r3, [r3]
  33a9c2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33a9c6: 681b         	ldr	r3, [r3]
  33a9c8: 337c         	adds	r3, #0x7c
  33a9ca: 681d         	ldr	r5, [r3]
  33a9cc: ab07         	add	r3, sp, #0x1c
  33a9ce: 681b         	ldr	r3, [r3]
  33a9d0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33a9d4: 461e         	mov	r6, r3
  33a9d6: ab4e         	add	r3, sp, #0x138
  33a9d8: 4618         	mov	r0, r3
  33a9da: f04f 517c    	mov.w	r1, #0x3f000000
  33a9de: f04f 527c    	mov.w	r2, #0x3f000000
  33a9e2: f258 f985    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25830a
  33a9e6: ab4e         	add	r3, sp, #0x138
  33a9e8: 4630         	mov	r0, r6
  33a9ea: 4619         	mov	r1, r3
  33a9ec: 47a8         	blx	r5
  33a9ee: ab07         	add	r3, sp, #0x1c
  33a9f0: 681b         	ldr	r3, [r3]
  33a9f2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33a9f6: 681b         	ldr	r3, [r3]
  33a9f8: 334c         	adds	r3, #0x4c
  33a9fa: 681d         	ldr	r5, [r3]
  33a9fc: ab07         	add	r3, sp, #0x1c
  33a9fe: 681b         	ldr	r3, [r3]
  33aa00: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33aa04: 461e         	mov	r6, r3
  33aa06: 4b02         	ldr	r3, [pc, #0x8]          @ 0x33aa10 <HUD::init()+0x774>
  33aa08: 58e3         	ldr	r3, [r4, r3]
  33aa0a: e00f         	b	0x33aa2c <HUD::init()+0x790> @ imm = #0x1e
  33aa0c: 0000         	movs	r0, r0
  33aa0e: 4296         	cmp	r6, r2
  33aa10: d724         	bvc	0x33aa5c <HUD::init()+0x7c0> @ imm = #0x48
  33aa12: ffff f03a    	vshr.u32	d31, d26, #0x1
  33aa16: 0048         	lsls	r0, r1, #0x1
  33aa18: f014 0048    	ands	r0, r4, #0x48
  33aa1c: ef4a 0048    	vhadd.s8	q8, q5, q4
  33aa20: ef20 0048    	vhadd.s32	q0, q0, q4
  33aa24: ee40 0048    	cdp	p0, #0x4, c0, c0, c8, #0x2
  33aa28: ee3e 0048    	cdp	p0, #0x3, c0, c14, c8, #0x2
  33aa2c: ed93 7a00    	vldr	s14, [r3]
  33aa30: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33aa34: eec7 7a27    	vdiv.f32	s15, s14, s15
  33aa38: ab4e         	add	r3, sp, #0x138
  33aa3a: 4618         	mov	r0, r3
  33aa3c: ee17 1a90    	vmov	r1, s15
  33aa40: f04f 0200    	mov.w	r2, #0x0
  33aa44: f2c4 225c    	movt	r2, #0x425c
  33aa48: f258 f952    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2582a4
  33aa4c: ab4e         	add	r3, sp, #0x138
  33aa4e: 4630         	mov	r0, r6
  33aa50: 4619         	mov	r1, r3
  33aa52: 47a8         	blx	r5
  33aa54: ab07         	add	r3, sp, #0x1c
  33aa56: 681b         	ldr	r3, [r3]
  33aa58: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33aa5c: 681b         	ldr	r3, [r3]
  33aa5e: 3340         	adds	r3, #0x40
  33aa60: 681b         	ldr	r3, [r3]
  33aa62: aa07         	add	r2, sp, #0x1c
  33aa64: 6812         	ldr	r2, [r2]
  33aa66: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  33aa6a: 4610         	mov	r0, r2
  33aa6c: f64c 41cd    	movw	r1, #0xcccd
  33aa70: f6c3 710c    	movt	r1, #0x3f0c
  33aa74: 4798         	blx	r3
  33aa76: ab07         	add	r3, sp, #0x1c
  33aa78: 681b         	ldr	r3, [r3]
  33aa7a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33aa7e: 4618         	mov	r0, r3
  33aa80: 2119         	movs	r1, #0x19
  33aa82: f26b f97f    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26b2fe
  33aa86: 4bcc         	ldr	r3, [pc, #0x330]        @ 0x33adb8 <HUD::init()+0xb1c>
  33aa88: 447b         	add	r3, pc
  33aa8a: 4618         	mov	r0, r3
  33aa8c: f29d fc3a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d874
  33aa90: 4602         	mov	r2, r0
  33aa92: ab07         	add	r3, sp, #0x1c
  33aa94: 681b         	ldr	r3, [r3]
  33aa96: f8c3 210c    	str.w	r2, [r3, #0x10c]
  33aa9a: ab07         	add	r3, sp, #0x1c
  33aa9c: 681b         	ldr	r3, [r3]
  33aa9e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33aaa2: 4618         	mov	r0, r3
  33aaa4: f25d fa20    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25d440
  33aaa8: ab07         	add	r3, sp, #0x1c
  33aaaa: 681b         	ldr	r3, [r3]
  33aaac: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33aab0: 681b         	ldr	r3, [r3]
  33aab2: 3340         	adds	r3, #0x40
  33aab4: 681b         	ldr	r3, [r3]
  33aab6: aa07         	add	r2, sp, #0x1c
  33aab8: 6812         	ldr	r2, [r2]
  33aaba: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  33aabe: 4610         	mov	r0, r2
  33aac0: f64c 41cd    	movw	r1, #0xcccd
  33aac4: f6c3 61cc    	movt	r1, #0x3ecc
  33aac8: 4798         	blx	r3
  33aaca: ab07         	add	r3, sp, #0x1c
  33aacc: 681b         	ldr	r3, [r3]
  33aace: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33aad2: 681b         	ldr	r3, [r3]
  33aad4: 337c         	adds	r3, #0x7c
  33aad6: 681d         	ldr	r5, [r3]
  33aad8: ab07         	add	r3, sp, #0x1c
  33aada: 681b         	ldr	r3, [r3]
  33aadc: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  33aae0: ab4e         	add	r3, sp, #0x138
  33aae2: 4618         	mov	r0, r3
  33aae4: f246 6166    	movw	r1, #0x6666
  33aae8: f6c3 61e6    	movt	r1, #0x3ee6
  33aaec: f04f 527c    	mov.w	r2, #0x3f000000
  33aaf0: f258 f8fe    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2581fc
  33aaf4: ab4e         	add	r3, sp, #0x138
  33aaf6: 4630         	mov	r0, r6
  33aaf8: 4619         	mov	r1, r3
  33aafa: 47a8         	blx	r5
  33aafc: ab07         	add	r3, sp, #0x1c
  33aafe: 681b         	ldr	r3, [r3]
  33ab00: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33ab04: 681b         	ldr	r3, [r3]
  33ab06: 334c         	adds	r3, #0x4c
  33ab08: 681d         	ldr	r5, [r3]
  33ab0a: ab07         	add	r3, sp, #0x1c
  33ab0c: 681b         	ldr	r3, [r3]
  33ab0e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33ab12: 461e         	mov	r6, r3
  33ab14: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x33adbc <HUD::init()+0xb20>
  33ab16: 58e3         	ldr	r3, [r4, r3]
  33ab18: ed93 7a00    	vldr	s14, [r3]
  33ab1c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33ab20: ee87 7a27    	vdiv.f32	s14, s14, s15
  33ab24: eddf 7aa2    	vldr	s15, [pc, #648]         @ 0x33adb0 <HUD::init()+0xb14>
  33ab28: ee77 6a27    	vadd.f32	s13, s14, s15
  33ab2c: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x33adbc <HUD::init()+0xb20>
  33ab2e: 58e3         	ldr	r3, [r4, r3]
  33ab30: ed93 7a01    	vldr	s14, [r3, #4]
  33ab34: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  33ab38: ee77 7a67    	vsub.f32	s15, s14, s15
  33ab3c: ab4e         	add	r3, sp, #0x138
  33ab3e: 4618         	mov	r0, r3
  33ab40: ee16 1a90    	vmov	r1, s13
  33ab44: ee17 2a90    	vmov	r2, s15
  33ab48: f258 f8d2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2581a4
  33ab4c: ab4e         	add	r3, sp, #0x138
  33ab4e: 4630         	mov	r0, r6
  33ab50: 4619         	mov	r1, r3
  33ab52: 47a8         	blx	r5
  33ab54: ab07         	add	r3, sp, #0x1c
  33ab56: 681b         	ldr	r3, [r3]
  33ab58: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33ab5c: 681b         	ldr	r3, [r3]
  33ab5e: 334c         	adds	r3, #0x4c
  33ab60: 681d         	ldr	r5, [r3]
  33ab62: ab07         	add	r3, sp, #0x1c
  33ab64: 681b         	ldr	r3, [r3]
  33ab66: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33ab6a: 461e         	mov	r6, r3
  33ab6c: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x33adbc <HUD::init()+0xb20>
  33ab6e: 58e3         	ldr	r3, [r4, r3]
  33ab70: ed93 7a00    	vldr	s14, [r3]
  33ab74: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33ab78: ee87 7a27    	vdiv.f32	s14, s14, s15
  33ab7c: eddf 7a8d    	vldr	s15, [pc, #564]         @ 0x33adb4 <HUD::init()+0xb18>
  33ab80: ee77 6a67    	vsub.f32	s13, s14, s15
  33ab84: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x33adbc <HUD::init()+0xb20>
  33ab86: 58e3         	ldr	r3, [r4, r3]
  33ab88: ed93 7a01    	vldr	s14, [r3, #4]
  33ab8c: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  33ab90: ee77 7a67    	vsub.f32	s15, s14, s15
  33ab94: ab4e         	add	r3, sp, #0x138
  33ab96: 4618         	mov	r0, r3
  33ab98: ee16 1a90    	vmov	r1, s13
  33ab9c: ee17 2a90    	vmov	r2, s15
  33aba0: f258 f8a6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25814c
  33aba4: ab4e         	add	r3, sp, #0x138
  33aba6: 4630         	mov	r0, r6
  33aba8: 4619         	mov	r1, r3
  33abaa: 47a8         	blx	r5
  33abac: 4b84         	ldr	r3, [pc, #0x210]        @ 0x33adc0 <HUD::init()+0xb24>
  33abae: 447b         	add	r3, pc
  33abb0: 4618         	mov	r0, r3
  33abb2: f29d fba7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d74e
  33abb6: 4602         	mov	r2, r0
  33abb8: ab0a         	add	r3, sp, #0x28
  33abba: 601a         	str	r2, [r3]
  33abbc: 4b81         	ldr	r3, [pc, #0x204]        @ 0x33adc4 <HUD::init()+0xb28>
  33abbe: 447b         	add	r3, pc
  33abc0: 4618         	mov	r0, r3
  33abc2: f29d fb9f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d73e
  33abc6: 4602         	mov	r2, r0
  33abc8: ab0b         	add	r3, sp, #0x2c
  33abca: 601a         	str	r2, [r3]
  33abcc: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x33adc8 <HUD::init()+0xb2c>
  33abce: 447b         	add	r3, pc
  33abd0: 4618         	mov	r0, r3
  33abd2: f29d fb97    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d72e
  33abd6: 4602         	mov	r2, r0
  33abd8: ab0c         	add	r3, sp, #0x30
  33abda: 601a         	str	r2, [r3]
  33abdc: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x33adcc <HUD::init()+0xb30>
  33abde: 447b         	add	r3, pc
  33abe0: 4618         	mov	r0, r3
  33abe2: f29d fb8f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d71e
  33abe6: 4602         	mov	r2, r0
  33abe8: ab0d         	add	r3, sp, #0x34
  33abea: 601a         	str	r2, [r3]
  33abec: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x33add0 <HUD::init()+0xb34>
  33abee: 447b         	add	r3, pc
  33abf0: 4618         	mov	r0, r3
  33abf2: f29d fb87    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d70e
  33abf6: 4602         	mov	r2, r0
  33abf8: ab0e         	add	r3, sp, #0x38
  33abfa: 601a         	str	r2, [r3]
  33abfc: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x33add4 <HUD::init()+0xb38>
  33abfe: 447b         	add	r3, pc
  33ac00: 4618         	mov	r0, r3
  33ac02: f29d fb7f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6fe
  33ac06: 4602         	mov	r2, r0
  33ac08: ab0f         	add	r3, sp, #0x3c
  33ac0a: 601a         	str	r2, [r3]
  33ac0c: 4b72         	ldr	r3, [pc, #0x1c8]        @ 0x33add8 <HUD::init()+0xb3c>
  33ac0e: 447b         	add	r3, pc
  33ac10: 4618         	mov	r0, r3
  33ac12: f29d fb77    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6ee
  33ac16: 4602         	mov	r2, r0
  33ac18: ab10         	add	r3, sp, #0x40
  33ac1a: 601a         	str	r2, [r3]
  33ac1c: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x33addc <HUD::init()+0xb40>
  33ac1e: 447b         	add	r3, pc
  33ac20: 4618         	mov	r0, r3
  33ac22: f29d fb6f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6de
  33ac26: 4603         	mov	r3, r0
  33ac28: 9311         	str	r3, [sp, #0x44]
  33ac2a: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x33ade0 <HUD::init()+0xb44>
  33ac2c: 447b         	add	r3, pc
  33ac2e: 4618         	mov	r0, r3
  33ac30: f29d fb68    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6d0
  33ac34: 4603         	mov	r3, r0
  33ac36: 9312         	str	r3, [sp, #0x48]
  33ac38: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x33ade4 <HUD::init()+0xb48>
  33ac3a: 447b         	add	r3, pc
  33ac3c: 4618         	mov	r0, r3
  33ac3e: f29d fb61    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6c2
  33ac42: 4603         	mov	r3, r0
  33ac44: 9313         	str	r3, [sp, #0x4c]
  33ac46: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x33ade8 <HUD::init()+0xb4c>
  33ac48: 447b         	add	r3, pc
  33ac4a: 4618         	mov	r0, r3
  33ac4c: f29d fb5a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6b4
  33ac50: 4603         	mov	r3, r0
  33ac52: 9314         	str	r3, [sp, #0x50]
  33ac54: 4b65         	ldr	r3, [pc, #0x194]        @ 0x33adec <HUD::init()+0xb50>
  33ac56: 447b         	add	r3, pc
  33ac58: 4618         	mov	r0, r3
  33ac5a: f29d fb53    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d6a6
  33ac5e: 4603         	mov	r3, r0
  33ac60: 9315         	str	r3, [sp, #0x54]
  33ac62: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x33adf0 <HUD::init()+0xb54>
  33ac64: 447b         	add	r3, pc
  33ac66: 4618         	mov	r0, r3
  33ac68: f29d fb4c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d698
  33ac6c: 4603         	mov	r3, r0
  33ac6e: 9316         	str	r3, [sp, #0x58]
  33ac70: 4b60         	ldr	r3, [pc, #0x180]        @ 0x33adf4 <HUD::init()+0xb58>
  33ac72: 447b         	add	r3, pc
  33ac74: 4618         	mov	r0, r3
  33ac76: f29d fb45    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d68a
  33ac7a: 4603         	mov	r3, r0
  33ac7c: 9317         	str	r3, [sp, #0x5c]
  33ac7e: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x33adf8 <HUD::init()+0xb5c>
  33ac80: 447b         	add	r3, pc
  33ac82: 4618         	mov	r0, r3
  33ac84: f29d fb3e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d67c
  33ac88: 4603         	mov	r3, r0
  33ac8a: 9318         	str	r3, [sp, #0x60]
  33ac8c: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x33adfc <HUD::init()+0xb60>
  33ac8e: 447b         	add	r3, pc
  33ac90: 4618         	mov	r0, r3
  33ac92: f29d fb37    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d66e
  33ac96: 4603         	mov	r3, r0
  33ac98: 9319         	str	r3, [sp, #0x64]
  33ac9a: 4b59         	ldr	r3, [pc, #0x164]        @ 0x33ae00 <HUD::init()+0xb64>
  33ac9c: 447b         	add	r3, pc
  33ac9e: 4618         	mov	r0, r3
  33aca0: f29d fb30    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d660
  33aca4: 4603         	mov	r3, r0
  33aca6: 931a         	str	r3, [sp, #0x68]
  33aca8: 4b56         	ldr	r3, [pc, #0x158]        @ 0x33ae04 <HUD::init()+0xb68>
  33acaa: 447b         	add	r3, pc
  33acac: 4618         	mov	r0, r3
  33acae: f29d fb29    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x29d652
  33acb2: 4603         	mov	r3, r0
  33acb4: 931b         	str	r3, [sp, #0x6c]
  33acb6: ab07         	add	r3, sp, #0x1c
  33acb8: 681a         	ldr	r2, [r3]
  33acba: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x33ae08 <HUD::init()+0xb6c>
  33acbc: 58e3         	ldr	r3, [r4, r3]
  33acbe: 931c         	str	r3, [sp, #0x70]
  33acc0: 2300         	movs	r3, #0x0
  33acc2: 931d         	str	r3, [sp, #0x74]
  33acc4: a80a         	add	r0, sp, #0x28
  33acc6: a90b         	add	r1, sp, #0x2c
  33acc8: 9b1d         	ldr	r3, [sp, #0x74]
  33acca: 9300         	str	r3, [sp]
  33accc: 9b1c         	ldr	r3, [sp, #0x70]
  33acce: 6800         	ldr	r0, [r0]
  33acd0: 6809         	ldr	r1, [r1]
  33acd2: f27d fb2b    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d656
  33acd6: 4602         	mov	r2, r0
  33acd8: ab07         	add	r3, sp, #0x1c
  33acda: 681b         	ldr	r3, [r3]
  33acdc: f8c3 2114    	str.w	r2, [r3, #0x114]
  33ace0: ab07         	add	r3, sp, #0x1c
  33ace2: 681b         	ldr	r3, [r3]
  33ace4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  33ace8: 681b         	ldr	r3, [r3]
  33acea: 334c         	adds	r3, #0x4c
  33acec: 681b         	ldr	r3, [r3]
  33acee: aa07         	add	r2, sp, #0x1c
  33acf0: 6812         	ldr	r2, [r2]
  33acf2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  33acf6: 4611         	mov	r1, r2
  33acf8: aa07         	add	r2, sp, #0x1c
  33acfa: 6812         	ldr	r2, [r2]
  33acfc: f502 72b8    	add.w	r2, r2, #0x170
  33ad00: 4608         	mov	r0, r1
  33ad02: 4611         	mov	r1, r2
  33ad04: 4798         	blx	r3
  33ad06: ab07         	add	r3, sp, #0x1c
  33ad08: 681a         	ldr	r2, [r3]
  33ad0a: 4b40         	ldr	r3, [pc, #0x100]        @ 0x33ae0c <HUD::init()+0xb70>
  33ad0c: 58e3         	ldr	r3, [r4, r3]
  33ad0e: 931e         	str	r3, [sp, #0x78]
  33ad10: 2300         	movs	r3, #0x0
  33ad12: 931f         	str	r3, [sp, #0x7c]
  33ad14: a80c         	add	r0, sp, #0x30
  33ad16: a90d         	add	r1, sp, #0x34
  33ad18: 9b1f         	ldr	r3, [sp, #0x7c]
  33ad1a: 9300         	str	r3, [sp]
  33ad1c: 9b1e         	ldr	r3, [sp, #0x78]
  33ad1e: 6800         	ldr	r0, [r0]
  33ad20: 6809         	ldr	r1, [r1]
  33ad22: f27d fb03    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d606
  33ad26: 4602         	mov	r2, r0
  33ad28: ab07         	add	r3, sp, #0x1c
  33ad2a: 681b         	ldr	r3, [r3]
  33ad2c: f8c3 2118    	str.w	r2, [r3, #0x118]
  33ad30: ab07         	add	r3, sp, #0x1c
  33ad32: 681b         	ldr	r3, [r3]
  33ad34: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33ad38: 681b         	ldr	r3, [r3]
  33ad3a: 334c         	adds	r3, #0x4c
  33ad3c: 681b         	ldr	r3, [r3]
  33ad3e: aa07         	add	r2, sp, #0x1c
  33ad40: 6812         	ldr	r2, [r2]
  33ad42: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33ad46: 4611         	mov	r1, r2
  33ad48: aa07         	add	r2, sp, #0x1c
  33ad4a: 6812         	ldr	r2, [r2]
  33ad4c: f502 72b4    	add.w	r2, r2, #0x168
  33ad50: 4608         	mov	r0, r1
  33ad52: 4611         	mov	r1, r2
  33ad54: 4798         	blx	r3
  33ad56: ab07         	add	r3, sp, #0x1c
  33ad58: 681b         	ldr	r3, [r3]
  33ad5a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33ad5e: 681b         	ldr	r3, [r3]
  33ad60: 334c         	adds	r3, #0x4c
  33ad62: 681d         	ldr	r5, [r3]
  33ad64: ab07         	add	r3, sp, #0x1c
  33ad66: 681b         	ldr	r3, [r3]
  33ad68: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33ad6c: 461e         	mov	r6, r3
  33ad6e: ab07         	add	r3, sp, #0x1c
  33ad70: 681b         	ldr	r3, [r3]
  33ad72: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33ad76: 681b         	ldr	r3, [r3]
  33ad78: 338c         	adds	r3, #0x8c
  33ad7a: 681b         	ldr	r3, [r3]
  33ad7c: aa07         	add	r2, sp, #0x1c
  33ad7e: 6812         	ldr	r2, [r2]
  33ad80: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33ad84: 4610         	mov	r0, r2
  33ad86: 4798         	blx	r3
  33ad88: 4603         	mov	r3, r0
  33ad8a: ed93 7a00    	vldr	s14, [r3]
  33ad8e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33ad92: ee87 8a27    	vdiv.f32	s16, s14, s15
  33ad96: ab07         	add	r3, sp, #0x1c
  33ad98: 681b         	ldr	r3, [r3]
  33ad9a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33ad9e: 681b         	ldr	r3, [r3]
  33ada0: 338c         	adds	r3, #0x8c
  33ada2: 681b         	ldr	r3, [r3]
  33ada4: aa07         	add	r2, sp, #0x1c
  33ada6: 6812         	ldr	r2, [r2]
  33ada8: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33adac: 4610         	mov	r0, r2
  33adae: e02f         	b	0x33ae10 <HUD::init()+0xb74> @ imm = #0x5e
  33adb0: 0000         	movs	r0, r0
  33adb2: 42dc         	cmn	r4, r3
  33adb4: 0000         	movs	r0, r0
  33adb6: 42c8         	cmn	r0, r1
  33adb8: ed7c 0048    	ldcl	p0, c0, [r12, #-288]!
  33adbc: d724         	bvc	0x33ae08 <HUD::init()+0xb6c> @ imm = #0x48
  33adbe: ffff ec5e    	<unknown>
  33adc2: 0048         	lsls	r0, r1, #0x1
  33adc4: ec4e 0048    	mcrr	p0, #0x4, r0, lr, c8
  33adc8: ec4e 0048    	mcrr	p0, #0x4, r0, lr, c8
  33adcc: ec3e 0048    	ldc	p0, c0, [lr], #-288
  33add0: ec3e 0048    	ldc	p0, c0, [lr], #-288
  33add4: ec2e 0048    	stc	p0, c0, [lr], #-288
  33add8: ec32 0048    	ldc	p0, c0, [r2], #-288
  33addc: ec22 0048    	stc	p0, c0, [r2], #-288
  33ade0: ec14 0048    	<unknown>
  33ade4: ec06 0048    	<unknown>
  33ade8: ec0c 0048    	<unknown>
  33adec: ebfe 0048    	<unknown>
  33adf0: ec04 0048    	<unknown>
  33adf4: ebf6 0048    	<unknown>
  33adf8: ebf4 0048    	<unknown>
  33adfc: ebe6 0048    	<unknown>
  33ae00: ebe4 0048    	<unknown>
  33ae04: ebd6 0048    	rsbs	r0, r6, r8, lsl #1
  33ae08: daac         	bge	0x33ad64 <HUD::init()+0xac8> @ imm = #-0xa8
  33ae0a: ffff dab0    	<unknown>
  33ae0e: ffff 4798    	vqshl.u64	d20, d8, #0x3f
  33ae12: 4603         	mov	r3, r0
  33ae14: ed93 7a01    	vldr	s14, [r3, #4]
  33ae18: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33ae1c: eec7 7a27    	vdiv.f32	s15, s14, s15
  33ae20: ab4a         	add	r3, sp, #0x128
  33ae22: 4618         	mov	r0, r3
  33ae24: ee18 1a10    	vmov	r1, s16
  33ae28: ee17 2a90    	vmov	r2, s15
  33ae2c: f257 ff60    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257ec0
  33ae30: ab4c         	add	r3, sp, #0x130
  33ae32: 4618         	mov	r0, r3
  33ae34: f04f 0100    	mov.w	r1, #0x0
  33ae38: f2c4 1150    	movt	r1, #0x4150
  33ae3c: f04f 0200    	mov.w	r2, #0x0
  33ae40: f257 ff56    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257eac
  33ae44: a94e         	add	r1, sp, #0x138
  33ae46: aa4a         	add	r2, sp, #0x128
  33ae48: ab4c         	add	r3, sp, #0x130
  33ae4a: 4608         	mov	r0, r1
  33ae4c: 4611         	mov	r1, r2
  33ae4e: 461a         	mov	r2, r3
  33ae50: f7fe f9ae    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x1ca4
  33ae54: ab4e         	add	r3, sp, #0x138
  33ae56: 4630         	mov	r0, r6
  33ae58: 4619         	mov	r1, r3
  33ae5a: 47a8         	blx	r5
  33ae5c: ab07         	add	r3, sp, #0x1c
  33ae5e: 681a         	ldr	r2, [r3]
  33ae60: f8df 3a14    	ldr.w	r3, [pc, #0xa14]        @ 0x33b878 <HUD::init()+0x15dc>
  33ae64: 58e3         	ldr	r3, [r4, r3]
  33ae66: 9320         	str	r3, [sp, #0x80]
  33ae68: 2300         	movs	r3, #0x0
  33ae6a: 9321         	str	r3, [sp, #0x84]
  33ae6c: a80e         	add	r0, sp, #0x38
  33ae6e: a90f         	add	r1, sp, #0x3c
  33ae70: 9b21         	ldr	r3, [sp, #0x84]
  33ae72: 9300         	str	r3, [sp]
  33ae74: 9b20         	ldr	r3, [sp, #0x80]
  33ae76: 6800         	ldr	r0, [r0]
  33ae78: 6809         	ldr	r1, [r1]
  33ae7a: f27d fa57    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d4ae
  33ae7e: 4602         	mov	r2, r0
  33ae80: ab07         	add	r3, sp, #0x1c
  33ae82: 681b         	ldr	r3, [r3]
  33ae84: f8c3 2128    	str.w	r2, [r3, #0x128]
  33ae88: ab07         	add	r3, sp, #0x1c
  33ae8a: 681b         	ldr	r3, [r3]
  33ae8c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33ae90: 681b         	ldr	r3, [r3]
  33ae92: 334c         	adds	r3, #0x4c
  33ae94: 681b         	ldr	r3, [r3]
  33ae96: aa07         	add	r2, sp, #0x1c
  33ae98: 6812         	ldr	r2, [r2]
  33ae9a: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33ae9e: 4611         	mov	r1, r2
  33aea0: aa07         	add	r2, sp, #0x1c
  33aea2: 6812         	ldr	r2, [r2]
  33aea4: f502 72c0    	add.w	r2, r2, #0x180
  33aea8: 4608         	mov	r0, r1
  33aeaa: 4611         	mov	r1, r2
  33aeac: 4798         	blx	r3
  33aeae: ab07         	add	r3, sp, #0x1c
  33aeb0: 681b         	ldr	r3, [r3]
  33aeb2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33aeb6: 681b         	ldr	r3, [r3]
  33aeb8: 334c         	adds	r3, #0x4c
  33aeba: 681d         	ldr	r5, [r3]
  33aebc: ab07         	add	r3, sp, #0x1c
  33aebe: 681b         	ldr	r3, [r3]
  33aec0: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  33aec4: ab07         	add	r3, sp, #0x1c
  33aec6: 681b         	ldr	r3, [r3]
  33aec8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33aecc: 681b         	ldr	r3, [r3]
  33aece: 3350         	adds	r3, #0x50
  33aed0: 681b         	ldr	r3, [r3]
  33aed2: aa07         	add	r2, sp, #0x1c
  33aed4: 6812         	ldr	r2, [r2]
  33aed6: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33aeda: 4610         	mov	r0, r2
  33aedc: 4798         	blx	r3
  33aede: 4603         	mov	r3, r0
  33aee0: 4630         	mov	r0, r6
  33aee2: 4619         	mov	r1, r3
  33aee4: 47a8         	blx	r5
  33aee6: ab07         	add	r3, sp, #0x1c
  33aee8: 681a         	ldr	r2, [r3]
  33aeea: f8df 3990    	ldr.w	r3, [pc, #0x990]        @ 0x33b87c <HUD::init()+0x15e0>
  33aeee: 58e3         	ldr	r3, [r4, r3]
  33aef0: 9322         	str	r3, [sp, #0x88]
  33aef2: 2300         	movs	r3, #0x0
  33aef4: 9323         	str	r3, [sp, #0x8c]
  33aef6: a910         	add	r1, sp, #0x40
  33aef8: 9b23         	ldr	r3, [sp, #0x8c]
  33aefa: 9300         	str	r3, [sp]
  33aefc: 9b22         	ldr	r3, [sp, #0x88]
  33aefe: 6808         	ldr	r0, [r1]
  33af00: 9911         	ldr	r1, [sp, #0x44]
  33af02: f27d fa13    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d426
  33af06: 4602         	mov	r2, r0
  33af08: ab07         	add	r3, sp, #0x1c
  33af0a: 681b         	ldr	r3, [r3]
  33af0c: f8c3 211c    	str.w	r2, [r3, #0x11c]
  33af10: ab07         	add	r3, sp, #0x1c
  33af12: 681b         	ldr	r3, [r3]
  33af14: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  33af18: 681b         	ldr	r3, [r3]
  33af1a: 334c         	adds	r3, #0x4c
  33af1c: 681d         	ldr	r5, [r3]
  33af1e: ab07         	add	r3, sp, #0x1c
  33af20: 681b         	ldr	r3, [r3]
  33af22: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  33af26: 461e         	mov	r6, r3
  33af28: ab07         	add	r3, sp, #0x1c
  33af2a: 681b         	ldr	r3, [r3]
  33af2c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33af30: 681b         	ldr	r3, [r3]
  33af32: 3350         	adds	r3, #0x50
  33af34: 681b         	ldr	r3, [r3]
  33af36: aa07         	add	r2, sp, #0x1c
  33af38: 6812         	ldr	r2, [r2]
  33af3a: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  33af3e: 4610         	mov	r0, r2
  33af40: 4798         	blx	r3
  33af42: 4607         	mov	r7, r0
  33af44: ab4c         	add	r3, sp, #0x130
  33af46: 4618         	mov	r0, r3
  33af48: f04f 0100    	mov.w	r1, #0x0
  33af4c: f2cc 1170    	movt	r1, #0xc170
  33af50: f04f 0200    	mov.w	r2, #0x0
  33af54: f257 fecc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257d98
  33af58: aa4e         	add	r2, sp, #0x138
  33af5a: ab4c         	add	r3, sp, #0x130
  33af5c: 4610         	mov	r0, r2
  33af5e: 4639         	mov	r1, r7
  33af60: 461a         	mov	r2, r3
  33af62: f7fe f925    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x1db6
  33af66: ab4e         	add	r3, sp, #0x138
  33af68: 4630         	mov	r0, r6
  33af6a: 4619         	mov	r1, r3
  33af6c: 47a8         	blx	r5
  33af6e: ab07         	add	r3, sp, #0x1c
  33af70: 681a         	ldr	r2, [r3]
  33af72: f8df 390c    	ldr.w	r3, [pc, #0x90c]        @ 0x33b880 <HUD::init()+0x15e4>
  33af76: 58e3         	ldr	r3, [r4, r3]
  33af78: 9324         	str	r3, [sp, #0x90]
  33af7a: 2300         	movs	r3, #0x0
  33af7c: 9325         	str	r3, [sp, #0x94]
  33af7e: 9b25         	ldr	r3, [sp, #0x94]
  33af80: 9300         	str	r3, [sp]
  33af82: 9b24         	ldr	r3, [sp, #0x90]
  33af84: 9814         	ldr	r0, [sp, #0x50]
  33af86: 9915         	ldr	r1, [sp, #0x54]
  33af88: f27d f9d0    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d3a0
  33af8c: 4602         	mov	r2, r0
  33af8e: ab07         	add	r3, sp, #0x1c
  33af90: 681b         	ldr	r3, [r3]
  33af92: f8c3 2120    	str.w	r2, [r3, #0x120]
  33af96: ab07         	add	r3, sp, #0x1c
  33af98: 681b         	ldr	r3, [r3]
  33af9a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  33af9e: 681b         	ldr	r3, [r3]
  33afa0: 334c         	adds	r3, #0x4c
  33afa2: 681d         	ldr	r5, [r3]
  33afa4: ab07         	add	r3, sp, #0x1c
  33afa6: 681b         	ldr	r3, [r3]
  33afa8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  33afac: 461e         	mov	r6, r3
  33afae: ab07         	add	r3, sp, #0x1c
  33afb0: 681b         	ldr	r3, [r3]
  33afb2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33afb6: 681b         	ldr	r3, [r3]
  33afb8: 3350         	adds	r3, #0x50
  33afba: 681b         	ldr	r3, [r3]
  33afbc: aa07         	add	r2, sp, #0x1c
  33afbe: 6812         	ldr	r2, [r2]
  33afc0: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  33afc4: 4610         	mov	r0, r2
  33afc6: 4798         	blx	r3
  33afc8: 4607         	mov	r7, r0
  33afca: ab4c         	add	r3, sp, #0x130
  33afcc: 4618         	mov	r0, r3
  33afce: f04f 0100    	mov.w	r1, #0x0
  33afd2: f2c4 215c    	movt	r1, #0x425c
  33afd6: f04f 0200    	mov.w	r2, #0x0
  33afda: f257 fe89    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257d12
  33afde: aa4e         	add	r2, sp, #0x138
  33afe0: ab4c         	add	r3, sp, #0x130
  33afe2: 4610         	mov	r0, r2
  33afe4: 4639         	mov	r1, r7
  33afe6: 461a         	mov	r2, r3
  33afe8: f7fe f8e2    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x1e3c
  33afec: ab4e         	add	r3, sp, #0x138
  33afee: 4630         	mov	r0, r6
  33aff0: 4619         	mov	r1, r3
  33aff2: 47a8         	blx	r5
  33aff4: ab07         	add	r3, sp, #0x1c
  33aff6: 681a         	ldr	r2, [r3]
  33aff8: f8df 3888    	ldr.w	r3, [pc, #0x888]        @ 0x33b884 <HUD::init()+0x15e8>
  33affc: 58e3         	ldr	r3, [r4, r3]
  33affe: 9326         	str	r3, [sp, #0x98]
  33b000: 2300         	movs	r3, #0x0
  33b002: 9327         	str	r3, [sp, #0x9c]
  33b004: 9b27         	ldr	r3, [sp, #0x9c]
  33b006: 9300         	str	r3, [sp]
  33b008: 9b26         	ldr	r3, [sp, #0x98]
  33b00a: 9816         	ldr	r0, [sp, #0x58]
  33b00c: 9917         	ldr	r1, [sp, #0x5c]
  33b00e: f27d f98d    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d31a
  33b012: 4602         	mov	r2, r0
  33b014: ab07         	add	r3, sp, #0x1c
  33b016: 681b         	ldr	r3, [r3]
  33b018: f8c3 212c    	str.w	r2, [r3, #0x12c]
  33b01c: ab07         	add	r3, sp, #0x1c
  33b01e: 681b         	ldr	r3, [r3]
  33b020: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33b024: 681b         	ldr	r3, [r3]
  33b026: 334c         	adds	r3, #0x4c
  33b028: 681b         	ldr	r3, [r3]
  33b02a: aa07         	add	r2, sp, #0x1c
  33b02c: 6812         	ldr	r2, [r2]
  33b02e: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  33b032: 4611         	mov	r1, r2
  33b034: aa07         	add	r2, sp, #0x1c
  33b036: 6812         	ldr	r2, [r2]
  33b038: f502 72b0    	add.w	r2, r2, #0x160
  33b03c: 4608         	mov	r0, r1
  33b03e: 4611         	mov	r1, r2
  33b040: 4798         	blx	r3
  33b042: ab07         	add	r3, sp, #0x1c
  33b044: 681a         	ldr	r2, [r3]
  33b046: f8df 3840    	ldr.w	r3, [pc, #0x840]        @ 0x33b888 <HUD::init()+0x15ec>
  33b04a: 58e3         	ldr	r3, [r4, r3]
  33b04c: 9328         	str	r3, [sp, #0xa0]
  33b04e: 2300         	movs	r3, #0x0
  33b050: 9329         	str	r3, [sp, #0xa4]
  33b052: 9b29         	ldr	r3, [sp, #0xa4]
  33b054: 9300         	str	r3, [sp]
  33b056: 9b28         	ldr	r3, [sp, #0xa0]
  33b058: 9818         	ldr	r0, [sp, #0x60]
  33b05a: 9919         	ldr	r1, [sp, #0x64]
  33b05c: f27d f966    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d2cc
  33b060: 4602         	mov	r2, r0
  33b062: ab07         	add	r3, sp, #0x1c
  33b064: 681b         	ldr	r3, [r3]
  33b066: f8c3 2130    	str.w	r2, [r3, #0x130]
  33b06a: ab07         	add	r3, sp, #0x1c
  33b06c: 681b         	ldr	r3, [r3]
  33b06e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33b072: 681b         	ldr	r3, [r3]
  33b074: 334c         	adds	r3, #0x4c
  33b076: 681b         	ldr	r3, [r3]
  33b078: aa07         	add	r2, sp, #0x1c
  33b07a: 6812         	ldr	r2, [r2]
  33b07c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33b080: 4611         	mov	r1, r2
  33b082: aa07         	add	r2, sp, #0x1c
  33b084: 6812         	ldr	r2, [r2]
  33b086: f502 72bc    	add.w	r2, r2, #0x178
  33b08a: 4608         	mov	r0, r1
  33b08c: 4611         	mov	r1, r2
  33b08e: 4798         	blx	r3
  33b090: ab07         	add	r3, sp, #0x1c
  33b092: 681a         	ldr	r2, [r3]
  33b094: f8df 37f4    	ldr.w	r3, [pc, #0x7f4]        @ 0x33b88c <HUD::init()+0x15f0>
  33b098: 58e3         	ldr	r3, [r4, r3]
  33b09a: 932a         	str	r3, [sp, #0xa8]
  33b09c: 2300         	movs	r3, #0x0
  33b09e: 932b         	str	r3, [sp, #0xac]
  33b0a0: 9b2b         	ldr	r3, [sp, #0xac]
  33b0a2: 9300         	str	r3, [sp]
  33b0a4: 9b2a         	ldr	r3, [sp, #0xa8]
  33b0a6: 9812         	ldr	r0, [sp, #0x48]
  33b0a8: 9913         	ldr	r1, [sp, #0x4c]
  33b0aa: f27d f93f    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d27e
  33b0ae: 4602         	mov	r2, r0
  33b0b0: ab07         	add	r3, sp, #0x1c
  33b0b2: 681b         	ldr	r3, [r3]
  33b0b4: f8c3 2134    	str.w	r2, [r3, #0x134]
  33b0b8: ab07         	add	r3, sp, #0x1c
  33b0ba: 681b         	ldr	r3, [r3]
  33b0bc: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  33b0c0: 681b         	ldr	r3, [r3]
  33b0c2: 334c         	adds	r3, #0x4c
  33b0c4: 681d         	ldr	r5, [r3]
  33b0c6: ab07         	add	r3, sp, #0x1c
  33b0c8: 681b         	ldr	r3, [r3]
  33b0ca: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  33b0ce: 461e         	mov	r6, r3
  33b0d0: ab07         	add	r3, sp, #0x1c
  33b0d2: 681b         	ldr	r3, [r3]
  33b0d4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33b0d8: 681b         	ldr	r3, [r3]
  33b0da: 3350         	adds	r3, #0x50
  33b0dc: 681b         	ldr	r3, [r3]
  33b0de: aa07         	add	r2, sp, #0x1c
  33b0e0: 6812         	ldr	r2, [r2]
  33b0e2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  33b0e6: 4610         	mov	r0, r2
  33b0e8: 4798         	blx	r3
  33b0ea: 4603         	mov	r3, r0
  33b0ec: 4630         	mov	r0, r6
  33b0ee: 4619         	mov	r1, r3
  33b0f0: 47a8         	blx	r5
  33b0f2: ab07         	add	r3, sp, #0x1c
  33b0f4: 681a         	ldr	r2, [r3]
  33b0f6: f8df 3798    	ldr.w	r3, [pc, #0x798]        @ 0x33b890 <HUD::init()+0x15f4>
  33b0fa: 58e3         	ldr	r3, [r4, r3]
  33b0fc: 932c         	str	r3, [sp, #0xb0]
  33b0fe: 2300         	movs	r3, #0x0
  33b100: 932d         	str	r3, [sp, #0xb4]
  33b102: 9b2d         	ldr	r3, [sp, #0xb4]
  33b104: 9300         	str	r3, [sp]
  33b106: 9b2c         	ldr	r3, [sp, #0xb0]
  33b108: 981a         	ldr	r0, [sp, #0x68]
  33b10a: 991b         	ldr	r1, [sp, #0x6c]
  33b10c: f27d f90e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x27d21c
  33b110: 4602         	mov	r2, r0
  33b112: ab07         	add	r3, sp, #0x1c
  33b114: 681b         	ldr	r3, [r3]
  33b116: f8c3 2138    	str.w	r2, [r3, #0x138]
  33b11a: ab07         	add	r3, sp, #0x1c
  33b11c: 681b         	ldr	r3, [r3]
  33b11e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33b122: 681b         	ldr	r3, [r3]
  33b124: 334c         	adds	r3, #0x4c
  33b126: 681b         	ldr	r3, [r3]
  33b128: aa07         	add	r2, sp, #0x1c
  33b12a: 6812         	ldr	r2, [r2]
  33b12c: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33b130: 4611         	mov	r1, r2
  33b132: aa07         	add	r2, sp, #0x1c
  33b134: 6812         	ldr	r2, [r2]
  33b136: f502 72c0    	add.w	r2, r2, #0x180
  33b13a: 4608         	mov	r0, r1
  33b13c: 4611         	mov	r1, r2
  33b13e: 4798         	blx	r3
  33b140: ab07         	add	r3, sp, #0x1c
  33b142: 681b         	ldr	r3, [r3]
  33b144: f8d3 0114    	ldr.w	r0, [r3, #0x114]
  33b148: ab07         	add	r3, sp, #0x1c
  33b14a: 681b         	ldr	r3, [r3]
  33b14c: f8d3 1118    	ldr.w	r1, [r3, #0x118]
  33b150: ab07         	add	r3, sp, #0x1c
  33b152: 681b         	ldr	r3, [r3]
  33b154: f8d3 2128    	ldr.w	r2, [r3, #0x128]
  33b158: ab07         	add	r3, sp, #0x1c
  33b15a: 681b         	ldr	r3, [r3]
  33b15c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  33b160: ad07         	add	r5, sp, #0x1c
  33b162: 682d         	ldr	r5, [r5]
  33b164: f8d5 c120    	ldr.w	r12, [r5, #0x120]
  33b168: ad07         	add	r5, sp, #0x1c
  33b16a: 682d         	ldr	r5, [r5]
  33b16c: f8d5 e12c    	ldr.w	lr, [r5, #0x12c]
  33b170: ad07         	add	r5, sp, #0x1c
  33b172: 682d         	ldr	r5, [r5]
  33b174: f8d5 7130    	ldr.w	r7, [r5, #0x130]
  33b178: ad07         	add	r5, sp, #0x1c
  33b17a: 682d         	ldr	r5, [r5]
  33b17c: f8d5 6134    	ldr.w	r6, [r5, #0x134]
  33b180: ad07         	add	r5, sp, #0x1c
  33b182: 682d         	ldr	r5, [r5]
  33b184: f8d5 5138    	ldr.w	r5, [r5, #0x138]
  33b188: f8cd c000    	str.w	r12, [sp]
  33b18c: f8cd e004    	str.w	lr, [sp, #0x4]
  33b190: 9702         	str	r7, [sp, #0x8]
  33b192: 9603         	str	r6, [sp, #0xc]
  33b194: 9504         	str	r5, [sp, #0x10]
  33b196: 2500         	movs	r5, #0x0
  33b198: 9505         	str	r5, [sp, #0x14]
  33b19a: f279 ffcf    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x279f9e
  33b19e: 4602         	mov	r2, r0
  33b1a0: ab07         	add	r3, sp, #0x1c
  33b1a2: 681b         	ldr	r3, [r3]
  33b1a4: f8c3 2110    	str.w	r2, [r3, #0x110]
  33b1a8: ab07         	add	r3, sp, #0x1c
  33b1aa: 681b         	ldr	r3, [r3]
  33b1ac: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  33b1b0: 4618         	mov	r0, r3
  33b1b2: f25c fe99    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25cd32
  33b1b6: 2320         	movs	r3, #0x20
  33b1b8: 9300         	str	r3, [sp]
  33b1ba: f8df 36d8    	ldr.w	r3, [pc, #0x6d8]        @ 0x33b894 <HUD::init()+0x15f8>
  33b1be: 447b         	add	r3, pc
  33b1c0: 4618         	mov	r0, r3
  33b1c2: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x33b898 <HUD::init()+0x15fc>
  33b1c6: 447b         	add	r3, pc
  33b1c8: 4619         	mov	r1, r3
  33b1ca: 2220         	movs	r2, #0x20
  33b1cc: 2320         	movs	r3, #0x20
  33b1ce: f26a f8d3    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x26a1a6
  33b1d2: 4602         	mov	r2, r0
  33b1d4: ab07         	add	r3, sp, #0x1c
  33b1d6: 681b         	ldr	r3, [r3]
  33b1d8: f8c3 213c    	str.w	r2, [r3, #0x13c]
  33b1dc: ab07         	add	r3, sp, #0x1c
  33b1de: 681b         	ldr	r3, [r3]
  33b1e0: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b1e4: 4618         	mov	r0, r3
  33b1e6: f25c fe7f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25ccfe
  33b1ea: ab07         	add	r3, sp, #0x1c
  33b1ec: 681b         	ldr	r3, [r3]
  33b1ee: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b1f2: 4618         	mov	r0, r3
  33b1f4: 211c         	movs	r1, #0x1c
  33b1f6: f26a fdc5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x26ab8a
  33b1fa: ab07         	add	r3, sp, #0x1c
  33b1fc: 681b         	ldr	r3, [r3]
  33b1fe: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b202: 681b         	ldr	r3, [r3]
  33b204: 337c         	adds	r3, #0x7c
  33b206: 681d         	ldr	r5, [r3]
  33b208: ab07         	add	r3, sp, #0x1c
  33b20a: 681b         	ldr	r3, [r3]
  33b20c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b210: 461e         	mov	r6, r3
  33b212: ab4e         	add	r3, sp, #0x138
  33b214: 4618         	mov	r0, r3
  33b216: f04f 517c    	mov.w	r1, #0x3f000000
  33b21a: f04f 527c    	mov.w	r2, #0x3f000000
  33b21e: f257 fd67    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257ace
  33b222: ab4e         	add	r3, sp, #0x138
  33b224: 4630         	mov	r0, r6
  33b226: 4619         	mov	r1, r3
  33b228: 47a8         	blx	r5
  33b22a: ab07         	add	r3, sp, #0x1c
  33b22c: 681b         	ldr	r3, [r3]
  33b22e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b232: 681b         	ldr	r3, [r3]
  33b234: 3340         	adds	r3, #0x40
  33b236: 681b         	ldr	r3, [r3]
  33b238: aa07         	add	r2, sp, #0x1c
  33b23a: 6812         	ldr	r2, [r2]
  33b23c: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  33b240: 4610         	mov	r0, r2
  33b242: f64c 41cd    	movw	r1, #0xcccd
  33b246: f6c3 61cc    	movt	r1, #0x3ecc
  33b24a: 4798         	blx	r3
  33b24c: ab07         	add	r3, sp, #0x1c
  33b24e: 681b         	ldr	r3, [r3]
  33b250: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b254: 681b         	ldr	r3, [r3]
  33b256: 334c         	adds	r3, #0x4c
  33b258: 681d         	ldr	r5, [r3]
  33b25a: ab07         	add	r3, sp, #0x1c
  33b25c: 681b         	ldr	r3, [r3]
  33b25e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33b262: 461e         	mov	r6, r3
  33b264: ab07         	add	r3, sp, #0x1c
  33b266: 681b         	ldr	r3, [r3]
  33b268: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33b26c: 681b         	ldr	r3, [r3]
  33b26e: 338c         	adds	r3, #0x8c
  33b270: 681b         	ldr	r3, [r3]
  33b272: aa07         	add	r2, sp, #0x1c
  33b274: 6812         	ldr	r2, [r2]
  33b276: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33b27a: 4610         	mov	r0, r2
  33b27c: 4798         	blx	r3
  33b27e: 4603         	mov	r3, r0
  33b280: ed93 7a00    	vldr	s14, [r3]
  33b284: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33b288: ee87 8a27    	vdiv.f32	s16, s14, s15
  33b28c: ab07         	add	r3, sp, #0x1c
  33b28e: 681b         	ldr	r3, [r3]
  33b290: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33b294: 681b         	ldr	r3, [r3]
  33b296: 338c         	adds	r3, #0x8c
  33b298: 681b         	ldr	r3, [r3]
  33b29a: aa07         	add	r2, sp, #0x1c
  33b29c: 6812         	ldr	r2, [r2]
  33b29e: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33b2a2: 4610         	mov	r0, r2
  33b2a4: 4798         	blx	r3
  33b2a6: 4603         	mov	r3, r0
  33b2a8: ed93 7a01    	vldr	s14, [r3, #4]
  33b2ac: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33b2b0: eec7 7a27    	vdiv.f32	s15, s14, s15
  33b2b4: ab4e         	add	r3, sp, #0x138
  33b2b6: 4618         	mov	r0, r3
  33b2b8: ee18 1a10    	vmov	r1, s16
  33b2bc: ee17 2a90    	vmov	r2, s15
  33b2c0: f257 fd16    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257a2c
  33b2c4: ab4e         	add	r3, sp, #0x138
  33b2c6: 4630         	mov	r0, r6
  33b2c8: 4619         	mov	r1, r3
  33b2ca: 47a8         	blx	r5
  33b2cc: ab07         	add	r3, sp, #0x1c
  33b2ce: 681b         	ldr	r3, [r3]
  33b2d0: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33b2d4: 681b         	ldr	r3, [r3]
  33b2d6: 3340         	adds	r3, #0x40
  33b2d8: 681b         	ldr	r3, [r3]
  33b2da: aa07         	add	r2, sp, #0x1c
  33b2dc: 6812         	ldr	r2, [r2]
  33b2de: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  33b2e2: 4611         	mov	r1, r2
  33b2e4: f8df 25b4    	ldr.w	r2, [pc, #0x5b4]        @ 0x33b89c <HUD::init()+0x1600>
  33b2e8: 58a2         	ldr	r2, [r4, r2]
  33b2ea: 6812         	ldr	r2, [r2]
  33b2ec: 4608         	mov	r0, r1
  33b2ee: 4611         	mov	r1, r2
  33b2f0: 4798         	blx	r3
  33b2f2: ab07         	add	r3, sp, #0x1c
  33b2f4: 681b         	ldr	r3, [r3]
  33b2f6: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33b2fa: 681b         	ldr	r3, [r3]
  33b2fc: 3340         	adds	r3, #0x40
  33b2fe: 681b         	ldr	r3, [r3]
  33b300: aa07         	add	r2, sp, #0x1c
  33b302: 6812         	ldr	r2, [r2]
  33b304: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33b308: 4611         	mov	r1, r2
  33b30a: f8df 2594    	ldr.w	r2, [pc, #0x594]        @ 0x33b8a0 <HUD::init()+0x1604>
  33b30e: 58a2         	ldr	r2, [r4, r2]
  33b310: 6812         	ldr	r2, [r2]
  33b312: 4608         	mov	r0, r1
  33b314: 4611         	mov	r1, r2
  33b316: 4798         	blx	r3
  33b318: ab07         	add	r3, sp, #0x1c
  33b31a: 681b         	ldr	r3, [r3]
  33b31c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33b320: 681b         	ldr	r3, [r3]
  33b322: 3340         	adds	r3, #0x40
  33b324: 681b         	ldr	r3, [r3]
  33b326: aa07         	add	r2, sp, #0x1c
  33b328: 6812         	ldr	r2, [r2]
  33b32a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33b32e: 4611         	mov	r1, r2
  33b330: f8df 2570    	ldr.w	r2, [pc, #0x570]        @ 0x33b8a4 <HUD::init()+0x1608>
  33b334: 58a2         	ldr	r2, [r4, r2]
  33b336: 6812         	ldr	r2, [r2]
  33b338: 4608         	mov	r0, r1
  33b33a: 4611         	mov	r1, r2
  33b33c: 4798         	blx	r3
  33b33e: ab07         	add	r3, sp, #0x1c
  33b340: 681b         	ldr	r3, [r3]
  33b342: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  33b346: 681b         	ldr	r3, [r3]
  33b348: 3340         	adds	r3, #0x40
  33b34a: 681b         	ldr	r3, [r3]
  33b34c: aa07         	add	r2, sp, #0x1c
  33b34e: 6812         	ldr	r2, [r2]
  33b350: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  33b354: 4611         	mov	r1, r2
  33b356: f8df 2550    	ldr.w	r2, [pc, #0x550]        @ 0x33b8a8 <HUD::init()+0x160c>
  33b35a: 58a2         	ldr	r2, [r4, r2]
  33b35c: 6812         	ldr	r2, [r2]
  33b35e: 4608         	mov	r0, r1
  33b360: 4611         	mov	r1, r2
  33b362: 4798         	blx	r3
  33b364: ab07         	add	r3, sp, #0x1c
  33b366: 681b         	ldr	r3, [r3]
  33b368: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33b36c: 681b         	ldr	r3, [r3]
  33b36e: 3390         	adds	r3, #0x90
  33b370: 681b         	ldr	r3, [r3]
  33b372: aa07         	add	r2, sp, #0x1c
  33b374: 6812         	ldr	r2, [r2]
  33b376: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33b37a: 4610         	mov	r0, r2
  33b37c: 2100         	movs	r1, #0x0
  33b37e: 4798         	blx	r3
  33b380: ab07         	add	r3, sp, #0x1c
  33b382: 681b         	ldr	r3, [r3]
  33b384: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33b388: 681b         	ldr	r3, [r3]
  33b38a: 3390         	adds	r3, #0x90
  33b38c: 681b         	ldr	r3, [r3]
  33b38e: aa07         	add	r2, sp, #0x1c
  33b390: 6812         	ldr	r2, [r2]
  33b392: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33b396: 4610         	mov	r0, r2
  33b398: 2100         	movs	r1, #0x0
  33b39a: 4798         	blx	r3
  33b39c: ab07         	add	r3, sp, #0x1c
  33b39e: 681b         	ldr	r3, [r3]
  33b3a0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  33b3a4: 681b         	ldr	r3, [r3]
  33b3a6: 334c         	adds	r3, #0x4c
  33b3a8: 681d         	ldr	r5, [r3]
  33b3aa: ab07         	add	r3, sp, #0x1c
  33b3ac: 681b         	ldr	r3, [r3]
  33b3ae: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  33b3b2: 461e         	mov	r6, r3
  33b3b4: ab4e         	add	r3, sp, #0x138
  33b3b6: 4618         	mov	r0, r3
  33b3b8: f04f 0100    	mov.w	r1, #0x0
  33b3bc: f04f 0200    	mov.w	r2, #0x0
  33b3c0: f257 fc96    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25792c
  33b3c4: ab4e         	add	r3, sp, #0x138
  33b3c6: 4630         	mov	r0, r6
  33b3c8: 4619         	mov	r1, r3
  33b3ca: 47a8         	blx	r5
  33b3cc: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x33b8ac <HUD::init()+0x1610>
  33b3d0: 447b         	add	r3, pc
  33b3d2: 4618         	mov	r0, r3
  33b3d4: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x33b8b0 <HUD::init()+0x1614>
  33b3d8: 447b         	add	r3, pc
  33b3da: 4619         	mov	r1, r3
  33b3dc: f04f 4283    	mov.w	r2, #0x41800000
  33b3e0: f270 fe1e    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x270c3c
  33b3e4: 4602         	mov	r2, r0
  33b3e6: ab07         	add	r3, sp, #0x1c
  33b3e8: 681b         	ldr	r3, [r3]
  33b3ea: f8c3 214c    	str.w	r2, [r3, #0x14c]
  33b3ee: ab07         	add	r3, sp, #0x1c
  33b3f0: 681b         	ldr	r3, [r3]
  33b3f2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b3f6: 4618         	mov	r0, r3
  33b3f8: f25c fd76    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25caec
  33b3fc: ab07         	add	r3, sp, #0x1c
  33b3fe: 681b         	ldr	r3, [r3]
  33b400: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b404: 681b         	ldr	r3, [r3]
  33b406: 337c         	adds	r3, #0x7c
  33b408: 681d         	ldr	r5, [r3]
  33b40a: ab07         	add	r3, sp, #0x1c
  33b40c: 681b         	ldr	r3, [r3]
  33b40e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b412: 461e         	mov	r6, r3
  33b414: ab4e         	add	r3, sp, #0x138
  33b416: 4618         	mov	r0, r3
  33b418: f04f 517c    	mov.w	r1, #0x3f000000
  33b41c: f04f 527c    	mov.w	r2, #0x3f000000
  33b420: f257 fc66    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2578cc
  33b424: ab4e         	add	r3, sp, #0x138
  33b426: 4630         	mov	r0, r6
  33b428: 4619         	mov	r1, r3
  33b42a: 47a8         	blx	r5
  33b42c: ab07         	add	r3, sp, #0x1c
  33b42e: 681b         	ldr	r3, [r3]
  33b430: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b434: 681b         	ldr	r3, [r3]
  33b436: 334c         	adds	r3, #0x4c
  33b438: 681d         	ldr	r5, [r3]
  33b43a: ab07         	add	r3, sp, #0x1c
  33b43c: 681b         	ldr	r3, [r3]
  33b43e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b442: 461e         	mov	r6, r3
  33b444: f8df 346c    	ldr.w	r3, [pc, #0x46c]        @ 0x33b8b4 <HUD::init()+0x1618>
  33b448: 58e3         	ldr	r3, [r4, r3]
  33b44a: ed93 7a00    	vldr	s14, [r3]
  33b44e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33b452: eec7 6a27    	vdiv.f32	s13, s14, s15
  33b456: f8df 345c    	ldr.w	r3, [pc, #0x45c]        @ 0x33b8b4 <HUD::init()+0x1618>
  33b45a: 58e3         	ldr	r3, [r4, r3]
  33b45c: ed93 7a01    	vldr	s14, [r3, #4]
  33b460: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33b464: eec7 7a27    	vdiv.f32	s15, s14, s15
  33b468: ab4a         	add	r3, sp, #0x128
  33b46a: 4618         	mov	r0, r3
  33b46c: ee16 1a90    	vmov	r1, s13
  33b470: ee17 2a90    	vmov	r2, s15
  33b474: f257 fc3c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257878
  33b478: ab4c         	add	r3, sp, #0x130
  33b47a: 4618         	mov	r0, r3
  33b47c: f04f 0100    	mov.w	r1, #0x0
  33b480: f2c4 1120    	movt	r1, #0x4120
  33b484: f04f 0200    	mov.w	r2, #0x0
  33b488: f2c4 22c8    	movt	r2, #0x42c8
  33b48c: f257 fc30    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x257860
  33b490: a94e         	add	r1, sp, #0x138
  33b492: aa4a         	add	r2, sp, #0x128
  33b494: ab4c         	add	r3, sp, #0x130
  33b496: 4608         	mov	r0, r1
  33b498: 4611         	mov	r1, r2
  33b49a: 461a         	mov	r2, r3
  33b49c: f7fd fe88    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x22f0
  33b4a0: ab4e         	add	r3, sp, #0x138
  33b4a2: 4630         	mov	r0, r6
  33b4a4: 4619         	mov	r1, r3
  33b4a6: 47a8         	blx	r5
  33b4a8: ab07         	add	r3, sp, #0x1c
  33b4aa: 681b         	ldr	r3, [r3]
  33b4ac: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b4b0: 681b         	ldr	r3, [r3]
  33b4b2: f503 73de    	add.w	r3, r3, #0x1bc
  33b4b6: 681d         	ldr	r5, [r3]
  33b4b8: ab07         	add	r3, sp, #0x1c
  33b4ba: 681b         	ldr	r3, [r3]
  33b4bc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33b4c0: 461e         	mov	r6, r3
  33b4c2: 20f5         	movs	r0, #0xf5
  33b4c4: 21f5         	movs	r1, #0xf5
  33b4c6: 2200         	movs	r2, #0x0
  33b4c8: f7fd fe44    	bl	0x339154 <GasCloud::updateStep(float)+0x49c> @ imm = #-0x2378
  33b4cc: 4603         	mov	r3, r0
  33b4ce: 461a         	mov	r2, r3
  33b4d0: f88d 2138    	strb.w	r2, [sp, #0x138]
  33b4d4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33b4d8: f88d 2139    	strb.w	r2, [sp, #0x139]
  33b4dc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  33b4e0: f88d 313a    	strb.w	r3, [sp, #0x13a]
  33b4e4: ab4e         	add	r3, sp, #0x138
  33b4e6: 4630         	mov	r0, r6
  33b4e8: 4619         	mov	r1, r3
  33b4ea: 47a8         	blx	r5
  33b4ec: f2a5 f8e0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a51c0
  33b4f0: 4602         	mov	r2, r0
  33b4f2: ab07         	add	r3, sp, #0x1c
  33b4f4: 681b         	ldr	r3, [r3]
  33b4f6: 49f0         	ldr	r1, [pc, #0x3c0]        @ 0x33b8b8 <HUD::init()+0x161c>
  33b4f8: 5861         	ldr	r1, [r4, r1]
  33b4fa: 912e         	str	r1, [sp, #0xb8]
  33b4fc: 2100         	movs	r1, #0x0
  33b4fe: 912f         	str	r1, [sp, #0xbc]
  33b500: 49ee         	ldr	r1, [pc, #0x3b8]        @ 0x33b8bc <HUD::init()+0x1620>
  33b502: 4479         	add	r1, pc
  33b504: 9100         	str	r1, [sp]
  33b506: 2100         	movs	r1, #0x0
  33b508: 9101         	str	r1, [sp, #0x4]
  33b50a: 4610         	mov	r0, r2
  33b50c: 4619         	mov	r1, r3
  33b50e: ab2e         	add	r3, sp, #0xb8
  33b510: cb0c         	ldm	r3, {r2, r3}
  33b512: f2a5 f969    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a52d2
  33b516: f2a5 f8cb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a5196
  33b51a: 4602         	mov	r2, r0
  33b51c: ab07         	add	r3, sp, #0x1c
  33b51e: 681b         	ldr	r3, [r3]
  33b520: 49e7         	ldr	r1, [pc, #0x39c]        @ 0x33b8c0 <HUD::init()+0x1624>
  33b522: 5861         	ldr	r1, [r4, r1]
  33b524: 9130         	str	r1, [sp, #0xc0]
  33b526: 2100         	movs	r1, #0x0
  33b528: 9131         	str	r1, [sp, #0xc4]
  33b52a: 49e6         	ldr	r1, [pc, #0x398]        @ 0x33b8c4 <HUD::init()+0x1628>
  33b52c: 4479         	add	r1, pc
  33b52e: 9100         	str	r1, [sp]
  33b530: 2100         	movs	r1, #0x0
  33b532: 9101         	str	r1, [sp, #0x4]
  33b534: 4610         	mov	r0, r2
  33b536: 4619         	mov	r1, r3
  33b538: ab30         	add	r3, sp, #0xc0
  33b53a: cb0c         	ldm	r3, {r2, r3}
  33b53c: f2a5 f954    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a52a8
  33b540: f2a5 f8b6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a516c
  33b544: 4602         	mov	r2, r0
  33b546: ab07         	add	r3, sp, #0x1c
  33b548: 681b         	ldr	r3, [r3]
  33b54a: 49df         	ldr	r1, [pc, #0x37c]        @ 0x33b8c8 <HUD::init()+0x162c>
  33b54c: 5861         	ldr	r1, [r4, r1]
  33b54e: 9132         	str	r1, [sp, #0xc8]
  33b550: 2100         	movs	r1, #0x0
  33b552: 9133         	str	r1, [sp, #0xcc]
  33b554: 49dd         	ldr	r1, [pc, #0x374]        @ 0x33b8cc <HUD::init()+0x1630>
  33b556: 4479         	add	r1, pc
  33b558: 9100         	str	r1, [sp]
  33b55a: 2100         	movs	r1, #0x0
  33b55c: 9101         	str	r1, [sp, #0x4]
  33b55e: 4610         	mov	r0, r2
  33b560: 4619         	mov	r1, r3
  33b562: ab32         	add	r3, sp, #0xc8
  33b564: cb0c         	ldm	r3, {r2, r3}
  33b566: f2a5 f93f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a527e
  33b56a: f2a5 f8a1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a5142
  33b56e: 4602         	mov	r2, r0
  33b570: ab07         	add	r3, sp, #0x1c
  33b572: 681b         	ldr	r3, [r3]
  33b574: 49d6         	ldr	r1, [pc, #0x358]        @ 0x33b8d0 <HUD::init()+0x1634>
  33b576: 5861         	ldr	r1, [r4, r1]
  33b578: 9134         	str	r1, [sp, #0xd0]
  33b57a: 2100         	movs	r1, #0x0
  33b57c: 9135         	str	r1, [sp, #0xd4]
  33b57e: 49d5         	ldr	r1, [pc, #0x354]        @ 0x33b8d4 <HUD::init()+0x1638>
  33b580: 4479         	add	r1, pc
  33b582: 9100         	str	r1, [sp]
  33b584: 2100         	movs	r1, #0x0
  33b586: 9101         	str	r1, [sp, #0x4]
  33b588: 4610         	mov	r0, r2
  33b58a: 4619         	mov	r1, r3
  33b58c: ab34         	add	r3, sp, #0xd0
  33b58e: cb0c         	ldm	r3, {r2, r3}
  33b590: f2a5 f92a    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5254
  33b594: f2a5 f88c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a5118
  33b598: 4602         	mov	r2, r0
  33b59a: ab07         	add	r3, sp, #0x1c
  33b59c: 681b         	ldr	r3, [r3]
  33b59e: 49ce         	ldr	r1, [pc, #0x338]        @ 0x33b8d8 <HUD::init()+0x163c>
  33b5a0: 5861         	ldr	r1, [r4, r1]
  33b5a2: 9136         	str	r1, [sp, #0xd8]
  33b5a4: 2100         	movs	r1, #0x0
  33b5a6: 9137         	str	r1, [sp, #0xdc]
  33b5a8: 49cc         	ldr	r1, [pc, #0x330]        @ 0x33b8dc <HUD::init()+0x1640>
  33b5aa: 4479         	add	r1, pc
  33b5ac: 9100         	str	r1, [sp]
  33b5ae: 2100         	movs	r1, #0x0
  33b5b0: 9101         	str	r1, [sp, #0x4]
  33b5b2: 4610         	mov	r0, r2
  33b5b4: 4619         	mov	r1, r3
  33b5b6: ab36         	add	r3, sp, #0xd8
  33b5b8: cb0c         	ldm	r3, {r2, r3}
  33b5ba: f2a5 f915    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a522a
  33b5be: f2a5 f877    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a50ee
  33b5c2: 4602         	mov	r2, r0
  33b5c4: ab07         	add	r3, sp, #0x1c
  33b5c6: 681b         	ldr	r3, [r3]
  33b5c8: 49c5         	ldr	r1, [pc, #0x314]        @ 0x33b8e0 <HUD::init()+0x1644>
  33b5ca: 5861         	ldr	r1, [r4, r1]
  33b5cc: 9138         	str	r1, [sp, #0xe0]
  33b5ce: 2100         	movs	r1, #0x0
  33b5d0: 9139         	str	r1, [sp, #0xe4]
  33b5d2: 49c4         	ldr	r1, [pc, #0x310]        @ 0x33b8e4 <HUD::init()+0x1648>
  33b5d4: 4479         	add	r1, pc
  33b5d6: 9100         	str	r1, [sp]
  33b5d8: 2100         	movs	r1, #0x0
  33b5da: 9101         	str	r1, [sp, #0x4]
  33b5dc: 4610         	mov	r0, r2
  33b5de: 4619         	mov	r1, r3
  33b5e0: ab38         	add	r3, sp, #0xe0
  33b5e2: cb0c         	ldm	r3, {r2, r3}
  33b5e4: f2a5 f900    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5200
  33b5e8: f2a5 f862    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a50c4
  33b5ec: 4602         	mov	r2, r0
  33b5ee: ab07         	add	r3, sp, #0x1c
  33b5f0: 681b         	ldr	r3, [r3]
  33b5f2: 49bd         	ldr	r1, [pc, #0x2f4]        @ 0x33b8e8 <HUD::init()+0x164c>
  33b5f4: 5861         	ldr	r1, [r4, r1]
  33b5f6: 913a         	str	r1, [sp, #0xe8]
  33b5f8: 2100         	movs	r1, #0x0
  33b5fa: 913b         	str	r1, [sp, #0xec]
  33b5fc: 49bb         	ldr	r1, [pc, #0x2ec]        @ 0x33b8ec <HUD::init()+0x1650>
  33b5fe: 4479         	add	r1, pc
  33b600: 9100         	str	r1, [sp]
  33b602: 2100         	movs	r1, #0x0
  33b604: 9101         	str	r1, [sp, #0x4]
  33b606: 4610         	mov	r0, r2
  33b608: 4619         	mov	r1, r3
  33b60a: ab3a         	add	r3, sp, #0xe8
  33b60c: cb0c         	ldm	r3, {r2, r3}
  33b60e: f2a5 f8eb    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a51d6
  33b612: f2a5 f84d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a509a
  33b616: 4602         	mov	r2, r0
  33b618: ab07         	add	r3, sp, #0x1c
  33b61a: 681b         	ldr	r3, [r3]
  33b61c: 49b4         	ldr	r1, [pc, #0x2d0]        @ 0x33b8f0 <HUD::init()+0x1654>
  33b61e: 5861         	ldr	r1, [r4, r1]
  33b620: 913c         	str	r1, [sp, #0xf0]
  33b622: 2100         	movs	r1, #0x0
  33b624: 913d         	str	r1, [sp, #0xf4]
  33b626: 49b3         	ldr	r1, [pc, #0x2cc]        @ 0x33b8f4 <HUD::init()+0x1658>
  33b628: 4479         	add	r1, pc
  33b62a: 9100         	str	r1, [sp]
  33b62c: 2100         	movs	r1, #0x0
  33b62e: 9101         	str	r1, [sp, #0x4]
  33b630: 4610         	mov	r0, r2
  33b632: 4619         	mov	r1, r3
  33b634: ab3c         	add	r3, sp, #0xf0
  33b636: cb0c         	ldm	r3, {r2, r3}
  33b638: f2a5 f8d6    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a51ac
  33b63c: f2a5 f838    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a5070
  33b640: 4602         	mov	r2, r0
  33b642: ab07         	add	r3, sp, #0x1c
  33b644: 681b         	ldr	r3, [r3]
  33b646: 49ac         	ldr	r1, [pc, #0x2b0]        @ 0x33b8f8 <HUD::init()+0x165c>
  33b648: 5861         	ldr	r1, [r4, r1]
  33b64a: 913e         	str	r1, [sp, #0xf8]
  33b64c: 2100         	movs	r1, #0x0
  33b64e: 913f         	str	r1, [sp, #0xfc]
  33b650: 49aa         	ldr	r1, [pc, #0x2a8]        @ 0x33b8fc <HUD::init()+0x1660>
  33b652: 4479         	add	r1, pc
  33b654: 9100         	str	r1, [sp]
  33b656: 2100         	movs	r1, #0x0
  33b658: 9101         	str	r1, [sp, #0x4]
  33b65a: 4610         	mov	r0, r2
  33b65c: 4619         	mov	r1, r3
  33b65e: ab3e         	add	r3, sp, #0xf8
  33b660: cb0c         	ldm	r3, {r2, r3}
  33b662: f2a5 f8c1    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5182
  33b666: f2a5 f823    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a5046
  33b66a: 4602         	mov	r2, r0
  33b66c: ab07         	add	r3, sp, #0x1c
  33b66e: 681b         	ldr	r3, [r3]
  33b670: 49a3         	ldr	r1, [pc, #0x28c]        @ 0x33b900 <HUD::init()+0x1664>
  33b672: 5861         	ldr	r1, [r4, r1]
  33b674: 9140         	str	r1, [sp, #0x100]
  33b676: 2100         	movs	r1, #0x0
  33b678: 9141         	str	r1, [sp, #0x104]
  33b67a: 49a2         	ldr	r1, [pc, #0x288]        @ 0x33b904 <HUD::init()+0x1668>
  33b67c: 4479         	add	r1, pc
  33b67e: 9100         	str	r1, [sp]
  33b680: 2100         	movs	r1, #0x0
  33b682: 9101         	str	r1, [sp, #0x4]
  33b684: 4610         	mov	r0, r2
  33b686: 4619         	mov	r1, r3
  33b688: ab40         	add	r3, sp, #0x100
  33b68a: cb0c         	ldm	r3, {r2, r3}
  33b68c: f2a5 f8ac    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5158
  33b690: f2a5 f80e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a501c
  33b694: 4602         	mov	r2, r0
  33b696: ab07         	add	r3, sp, #0x1c
  33b698: 681b         	ldr	r3, [r3]
  33b69a: 499b         	ldr	r1, [pc, #0x26c]        @ 0x33b908 <HUD::init()+0x166c>
  33b69c: 5861         	ldr	r1, [r4, r1]
  33b69e: 9142         	str	r1, [sp, #0x108]
  33b6a0: 2100         	movs	r1, #0x0
  33b6a2: 9143         	str	r1, [sp, #0x10c]
  33b6a4: 4999         	ldr	r1, [pc, #0x264]        @ 0x33b90c <HUD::init()+0x1670>
  33b6a6: 4479         	add	r1, pc
  33b6a8: 9100         	str	r1, [sp]
  33b6aa: 2100         	movs	r1, #0x0
  33b6ac: 9101         	str	r1, [sp, #0x4]
  33b6ae: 4610         	mov	r0, r2
  33b6b0: 4619         	mov	r1, r3
  33b6b2: ab42         	add	r3, sp, #0x108
  33b6b4: cb0c         	ldm	r3, {r2, r3}
  33b6b6: f2a5 f897    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a512e
  33b6ba: f2a4 fff9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4ff2
  33b6be: 4602         	mov	r2, r0
  33b6c0: ab07         	add	r3, sp, #0x1c
  33b6c2: 681b         	ldr	r3, [r3]
  33b6c4: 4992         	ldr	r1, [pc, #0x248]        @ 0x33b910 <HUD::init()+0x1674>
  33b6c6: 5861         	ldr	r1, [r4, r1]
  33b6c8: 9144         	str	r1, [sp, #0x110]
  33b6ca: 2100         	movs	r1, #0x0
  33b6cc: 9145         	str	r1, [sp, #0x114]
  33b6ce: 4991         	ldr	r1, [pc, #0x244]        @ 0x33b914 <HUD::init()+0x1678>
  33b6d0: 4479         	add	r1, pc
  33b6d2: 9100         	str	r1, [sp]
  33b6d4: 2100         	movs	r1, #0x0
  33b6d6: 9101         	str	r1, [sp, #0x4]
  33b6d8: 4610         	mov	r0, r2
  33b6da: 4619         	mov	r1, r3
  33b6dc: ab44         	add	r3, sp, #0x110
  33b6de: cb0c         	ldm	r3, {r2, r3}
  33b6e0: f2a5 f882    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5104
  33b6e4: f2a4 ffe4    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4fc8
  33b6e8: 4602         	mov	r2, r0
  33b6ea: ab07         	add	r3, sp, #0x1c
  33b6ec: 681b         	ldr	r3, [r3]
  33b6ee: 498a         	ldr	r1, [pc, #0x228]        @ 0x33b918 <HUD::init()+0x167c>
  33b6f0: 5861         	ldr	r1, [r4, r1]
  33b6f2: 9146         	str	r1, [sp, #0x118]
  33b6f4: 2100         	movs	r1, #0x0
  33b6f6: 9147         	str	r1, [sp, #0x11c]
  33b6f8: 4988         	ldr	r1, [pc, #0x220]        @ 0x33b91c <HUD::init()+0x1680>
  33b6fa: 4479         	add	r1, pc
  33b6fc: 9100         	str	r1, [sp]
  33b6fe: 2100         	movs	r1, #0x0
  33b700: 9101         	str	r1, [sp, #0x4]
  33b702: 4610         	mov	r0, r2
  33b704: 4619         	mov	r1, r3
  33b706: ab46         	add	r3, sp, #0x118
  33b708: cb0c         	ldm	r3, {r2, r3}
  33b70a: f2a5 f86d    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a50da
  33b70e: f2a4 ffcf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4f9e
  33b712: 4602         	mov	r2, r0
  33b714: ab07         	add	r3, sp, #0x1c
  33b716: 681b         	ldr	r3, [r3]
  33b718: 4981         	ldr	r1, [pc, #0x204]        @ 0x33b920 <HUD::init()+0x1684>
  33b71a: 5861         	ldr	r1, [r4, r1]
  33b71c: 9148         	str	r1, [sp, #0x120]
  33b71e: 2100         	movs	r1, #0x0
  33b720: 9149         	str	r1, [sp, #0x124]
  33b722: 4980         	ldr	r1, [pc, #0x200]        @ 0x33b924 <HUD::init()+0x1688>
  33b724: 4479         	add	r1, pc
  33b726: 9100         	str	r1, [sp]
  33b728: 2100         	movs	r1, #0x0
  33b72a: 9101         	str	r1, [sp, #0x4]
  33b72c: 4610         	mov	r0, r2
  33b72e: 4619         	mov	r1, r3
  33b730: ab48         	add	r3, sp, #0x120
  33b732: cb0c         	ldm	r3, {r2, r3}
  33b734: f2a5 f858    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a50b0
  33b738: f2a4 ffba    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4f74
  33b73c: 4602         	mov	r2, r0
  33b73e: ab07         	add	r3, sp, #0x1c
  33b740: 681b         	ldr	r3, [r3]
  33b742: 4979         	ldr	r1, [pc, #0x1e4]        @ 0x33b928 <HUD::init()+0x168c>
  33b744: 5861         	ldr	r1, [r4, r1]
  33b746: 914a         	str	r1, [sp, #0x128]
  33b748: 2100         	movs	r1, #0x0
  33b74a: 914b         	str	r1, [sp, #0x12c]
  33b74c: 4977         	ldr	r1, [pc, #0x1dc]        @ 0x33b92c <HUD::init()+0x1690>
  33b74e: 4479         	add	r1, pc
  33b750: 9100         	str	r1, [sp]
  33b752: 2100         	movs	r1, #0x0
  33b754: 9101         	str	r1, [sp, #0x4]
  33b756: 4610         	mov	r0, r2
  33b758: 4619         	mov	r1, r3
  33b75a: ab4a         	add	r3, sp, #0x128
  33b75c: cb0c         	ldm	r3, {r2, r3}
  33b75e: f2a5 f843    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5086
  33b762: f2a4 ffa5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4f4a
  33b766: 4602         	mov	r2, r0
  33b768: ab07         	add	r3, sp, #0x1c
  33b76a: 681b         	ldr	r3, [r3]
  33b76c: 4970         	ldr	r1, [pc, #0x1c0]        @ 0x33b930 <HUD::init()+0x1694>
  33b76e: 5861         	ldr	r1, [r4, r1]
  33b770: 914c         	str	r1, [sp, #0x130]
  33b772: 2100         	movs	r1, #0x0
  33b774: 914d         	str	r1, [sp, #0x134]
  33b776: 496f         	ldr	r1, [pc, #0x1bc]        @ 0x33b934 <HUD::init()+0x1698>
  33b778: 4479         	add	r1, pc
  33b77a: 9100         	str	r1, [sp]
  33b77c: 2100         	movs	r1, #0x0
  33b77e: 9101         	str	r1, [sp, #0x4]
  33b780: 4610         	mov	r0, r2
  33b782: 4619         	mov	r1, r3
  33b784: ab4c         	add	r3, sp, #0x130
  33b786: cb0c         	ldm	r3, {r2, r3}
  33b788: f2a5 f82e    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a505c
  33b78c: f2a4 ff90    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4f20
  33b790: 4602         	mov	r2, r0
  33b792: ab07         	add	r3, sp, #0x1c
  33b794: 681b         	ldr	r3, [r3]
  33b796: 4968         	ldr	r1, [pc, #0x1a0]        @ 0x33b938 <HUD::init()+0x169c>
  33b798: 5861         	ldr	r1, [r4, r1]
  33b79a: 914e         	str	r1, [sp, #0x138]
  33b79c: 2100         	movs	r1, #0x0
  33b79e: 914f         	str	r1, [sp, #0x13c]
  33b7a0: 4966         	ldr	r1, [pc, #0x198]        @ 0x33b93c <HUD::init()+0x16a0>
  33b7a2: 4479         	add	r1, pc
  33b7a4: 9100         	str	r1, [sp]
  33b7a6: 2100         	movs	r1, #0x0
  33b7a8: 9101         	str	r1, [sp, #0x4]
  33b7aa: 4610         	mov	r0, r2
  33b7ac: 4619         	mov	r1, r3
  33b7ae: ab4e         	add	r3, sp, #0x138
  33b7b0: cb0c         	ldm	r3, {r2, r3}
  33b7b2: f2a5 f819    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2a5032
  33b7b6: f7fe fc71    	bl	0x33a09c <ScoreScreen::create()> @ imm = #-0x171e
  33b7ba: 4602         	mov	r2, r0
  33b7bc: ab07         	add	r3, sp, #0x1c
  33b7be: 681b         	ldr	r3, [r3]
  33b7c0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  33b7c4: f7fe fcda    	bl	0x33a17c <MenuScreen::create()> @ imm = #-0x164c
  33b7c8: 4602         	mov	r2, r0
  33b7ca: ab07         	add	r3, sp, #0x1c
  33b7cc: 681b         	ldr	r3, [r3]
  33b7ce: f8c3 20ec    	str.w	r2, [r3, #0xec]
  33b7d2: ab07         	add	r3, sp, #0x1c
  33b7d4: 681b         	ldr	r3, [r3]
  33b7d6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33b7da: 4618         	mov	r0, r3
  33b7dc: f25c fb84    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25c708
  33b7e0: ab07         	add	r3, sp, #0x1c
  33b7e2: 681b         	ldr	r3, [r3]
  33b7e4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33b7e8: 4618         	mov	r0, r3
  33b7ea: f25c fb7d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25c6fa
  33b7ee: ab07         	add	r3, sp, #0x1c
  33b7f0: 681b         	ldr	r3, [r3]
  33b7f2: 681b         	ldr	r3, [r3]
  33b7f4: 33c8         	adds	r3, #0xc8
  33b7f6: 681b         	ldr	r3, [r3]
  33b7f8: aa07         	add	r2, sp, #0x1c
  33b7fa: 6811         	ldr	r1, [r2]
  33b7fc: aa07         	add	r2, sp, #0x1c
  33b7fe: 6812         	ldr	r2, [r2]
  33b800: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  33b804: 4608         	mov	r0, r1
  33b806: 4611         	mov	r1, r2
  33b808: 4798         	blx	r3
  33b80a: ab07         	add	r3, sp, #0x1c
  33b80c: 681b         	ldr	r3, [r3]
  33b80e: 681b         	ldr	r3, [r3]
  33b810: 33cc         	adds	r3, #0xcc
  33b812: 681b         	ldr	r3, [r3]
  33b814: aa07         	add	r2, sp, #0x1c
  33b816: 6811         	ldr	r1, [r2]
  33b818: aa07         	add	r2, sp, #0x1c
  33b81a: 6812         	ldr	r2, [r2]
  33b81c: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  33b820: 4608         	mov	r0, r1
  33b822: 4611         	mov	r1, r2
  33b824: 2200         	movs	r2, #0x0
  33b826: 4798         	blx	r3
  33b828: ab07         	add	r3, sp, #0x1c
  33b82a: 681b         	ldr	r3, [r3]
  33b82c: 681b         	ldr	r3, [r3]
  33b82e: 33cc         	adds	r3, #0xcc
  33b830: 681b         	ldr	r3, [r3]
  33b832: aa07         	add	r2, sp, #0x1c
  33b834: 6811         	ldr	r1, [r2]
  33b836: aa07         	add	r2, sp, #0x1c
  33b838: 6812         	ldr	r2, [r2]
  33b83a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  33b83e: 4608         	mov	r0, r1
  33b840: 4611         	mov	r1, r2
  33b842: 2200         	movs	r2, #0x0
  33b844: 4798         	blx	r3
  33b846: ab07         	add	r3, sp, #0x1c
  33b848: 681b         	ldr	r3, [r3]
  33b84a: 681b         	ldr	r3, [r3]
  33b84c: 33cc         	adds	r3, #0xcc
  33b84e: 681b         	ldr	r3, [r3]
  33b850: aa07         	add	r2, sp, #0x1c
  33b852: 6811         	ldr	r1, [r2]
  33b854: aa07         	add	r2, sp, #0x1c
  33b856: 6812         	ldr	r2, [r2]
  33b858: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  33b85c: 4608         	mov	r0, r1
  33b85e: 4611         	mov	r1, r2
  33b860: 2200         	movs	r2, #0x0
  33b862: 4798         	blx	r3
  33b864: ab07         	add	r3, sp, #0x1c
  33b866: 681b         	ldr	r3, [r3]
  33b868: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33b86c: 681b         	ldr	r3, [r3]
  33b86e: 33cc         	adds	r3, #0xcc
  33b870: 681b         	ldr	r3, [r3]
  33b872: aa07         	add	r2, sp, #0x1c
  33b874: e064         	b	0x33b940 <HUD::init()+0x16a4> @ imm = #0xc8
  33b876: bf00         	nop
  33b878: dab4         	bge	0x33b7e4 <HUD::init()+0x1548> @ imm = #-0x98
  33b87a: ffff dab8    	<unknown>
  33b87e: ffff dabc    	<unknown>
  33b882: ffff dac0    	vtbx.8	d29, {d31, fpinst2, mvfr0}, d0
  33b886: ffff dac4    	vtbx.8	d29, {d31, fpinst2, mvfr0}, d4
  33b88a: ffff dac8    	vtbx.8	d29, {d31, fpinst2, mvfr0}, d8
  33b88e: ffff dacc    	vtbx.8	d29, {d31, fpinst2, mvfr0}, d12
  33b892: ffff e6ce    	<unknown>
  33b896: 0048         	lsls	r0, r1, #0x1
  33b898: e612         	b	0x33b4c0 <HUD::init()+0x1224> @ imm = #-0x3dc
  33b89a: 0048         	lsls	r0, r1, #0x1
  33b89c: d830         	bhi	0x33b900 <HUD::init()+0x1664> @ imm = #0x60
  33b89e: ffff d828    	vtbl.8	d29, {d15}, d24
  33b8a2: ffff d82c    	vtbl.8	d29, {d15}, d28
  33b8a6: ffff d824    	vtbl.8	d29, {d15}, d20
  33b8aa: ffff e404    	<unknown>
  33b8ae: 0048         	lsls	r0, r1, #0x1
  33b8b0: e410         	b	0x33b0d4 <HUD::init()+0xe38> @ imm = #-0x7e0
  33b8b2: 0048         	lsls	r0, r1, #0x1
  33b8b4: d724         	bvc	0x33b900 <HUD::init()+0x1664> @ imm = #0x48
  33b8b6: ffff dad0    	<unknown>
  33b8ba: ffff e38e    	<unknown>
  33b8be: 0048         	lsls	r0, r1, #0x1
  33b8c0: dad4         	bge	0x33b86c <HUD::init()+0x15d0> @ imm = #-0x58
  33b8c2: ffff e37c    	vrsra.u32	q15, q14, #0x1
  33b8c6: 0048         	lsls	r0, r1, #0x1
  33b8c8: dad8         	bge	0x33b87c <HUD::init()+0x15e0> @ imm = #-0x50
  33b8ca: ffff e36a    	<unknown>
  33b8ce: 0048         	lsls	r0, r1, #0x1
  33b8d0: dadc         	bge	0x33b88c <HUD::init()+0x15f0> @ imm = #-0x48
  33b8d2: ffff e34c    	<unknown>
  33b8d6: 0048         	lsls	r0, r1, #0x1
  33b8d8: dae0         	bge	0x33b89c <HUD::init()+0x1600> @ imm = #-0x40
  33b8da: ffff e332    	vrsra.u32	d30, d18, #0x1
  33b8de: 0048         	lsls	r0, r1, #0x1
  33b8e0: dae4         	bge	0x33b8ac <HUD::init()+0x1610> @ imm = #-0x38
  33b8e2: ffff e31c    	vrsra.u32	d30, d12, #0x1
  33b8e6: 0048         	lsls	r0, r1, #0x1
  33b8e8: dae8         	bge	0x33b8bc <HUD::init()+0x1620> @ imm = #-0x30
  33b8ea: ffff e306    	<unknown>
  33b8ee: 0048         	lsls	r0, r1, #0x1
  33b8f0: daec         	bge	0x33b8cc <HUD::init()+0x1630> @ imm = #-0x28
  33b8f2: ffff e2ec    	<unknown>
  33b8f6: 0048         	lsls	r0, r1, #0x1
  33b8f8: daf0         	bge	0x33b8dc <HUD::init()+0x1640> @ imm = #-0x20
  33b8fa: ffff e2da    	vrshr.u64	q15, q5, #0x1
  33b8fe: 0048         	lsls	r0, r1, #0x1
  33b900: daf4         	bge	0x33b8ec <HUD::init()+0x1650> @ imm = #-0x18
  33b902: ffff e2c0    	<unknown>
  33b906: 0048         	lsls	r0, r1, #0x1
  33b908: daf8         	bge	0x33b8fc <HUD::init()+0x1660> @ imm = #-0x10
  33b90a: ffff e2a6    	<unknown>
  33b90e: 0048         	lsls	r0, r1, #0x1
  33b910: dafc         	bge	0x33b90c <HUD::init()+0x1670> @ imm = #-0x8
  33b912: ffff e28c    	<unknown>
  33b916: 0048         	lsls	r0, r1, #0x1
  33b918: db00         	blt	0x33b91c <HUD::init()+0x1680> @ imm = #0x0
  33b91a: ffff e272    	vrshr.u32	q15, q9, #0x1
  33b91e: 0048         	lsls	r0, r1, #0x1
  33b920: db04         	blt	0x33b92c <HUD::init()+0x1690> @ imm = #0x8
  33b922: ffff e258    	vrshr.u32	q15, q4, #0x1
  33b926: 0048         	lsls	r0, r1, #0x1
  33b928: db08         	blt	0x33b93c <HUD::init()+0x16a0> @ imm = #0x10
  33b92a: ffff e242    	<unknown>
  33b92e: 0048         	lsls	r0, r1, #0x1
  33b930: db0c         	blt	0x33b94c <HUD::init()+0x16b0> @ imm = #0x18
  33b932: ffff e228    	<unknown>
  33b936: 0048         	lsls	r0, r1, #0x1
  33b938: db10         	blt	0x33b95c <HUD::init()+0x16c0> @ imm = #0x20
  33b93a: ffff e20e    	<unknown>
  33b93e: 0048         	lsls	r0, r1, #0x1
  33b940: 6812         	ldr	r2, [r2]
  33b942: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33b946: 4611         	mov	r1, r2
  33b948: aa07         	add	r2, sp, #0x1c
  33b94a: 6812         	ldr	r2, [r2]
  33b94c: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  33b950: 4608         	mov	r0, r1
  33b952: 4611         	mov	r1, r2
  33b954: 2200         	movs	r2, #0x0
  33b956: 4798         	blx	r3
  33b958: ab07         	add	r3, sp, #0x1c
  33b95a: 681b         	ldr	r3, [r3]
  33b95c: 681b         	ldr	r3, [r3]
  33b95e: 33cc         	adds	r3, #0xcc
  33b960: 681b         	ldr	r3, [r3]
  33b962: aa07         	add	r2, sp, #0x1c
  33b964: 6811         	ldr	r1, [r2]
  33b966: aa07         	add	r2, sp, #0x1c
  33b968: 6812         	ldr	r2, [r2]
  33b96a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  33b96e: 4608         	mov	r0, r1
  33b970: 4611         	mov	r1, r2
  33b972: 2200         	movs	r2, #0x0
  33b974: 4798         	blx	r3
  33b976: ab07         	add	r3, sp, #0x1c
  33b978: 681b         	ldr	r3, [r3]
  33b97a: 681b         	ldr	r3, [r3]
  33b97c: 33cc         	adds	r3, #0xcc
  33b97e: 681b         	ldr	r3, [r3]
  33b980: aa07         	add	r2, sp, #0x1c
  33b982: 6811         	ldr	r1, [r2]
  33b984: aa07         	add	r2, sp, #0x1c
  33b986: 6812         	ldr	r2, [r2]
  33b988: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  33b98c: 4608         	mov	r0, r1
  33b98e: 4611         	mov	r1, r2
  33b990: 2200         	movs	r2, #0x0
  33b992: 4798         	blx	r3
  33b994: ab07         	add	r3, sp, #0x1c
  33b996: 681b         	ldr	r3, [r3]
  33b998: 681b         	ldr	r3, [r3]
  33b99a: 33cc         	adds	r3, #0xcc
  33b99c: 681b         	ldr	r3, [r3]
  33b99e: aa07         	add	r2, sp, #0x1c
  33b9a0: 6811         	ldr	r1, [r2]
  33b9a2: aa07         	add	r2, sp, #0x1c
  33b9a4: 6812         	ldr	r2, [r2]
  33b9a6: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  33b9aa: 4608         	mov	r0, r1
  33b9ac: 4611         	mov	r1, r2
  33b9ae: 2200         	movs	r2, #0x0
  33b9b0: 4798         	blx	r3
  33b9b2: ab07         	add	r3, sp, #0x1c
  33b9b4: 681b         	ldr	r3, [r3]
  33b9b6: 681b         	ldr	r3, [r3]
  33b9b8: 33cc         	adds	r3, #0xcc
  33b9ba: 681b         	ldr	r3, [r3]
  33b9bc: aa07         	add	r2, sp, #0x1c
  33b9be: 6811         	ldr	r1, [r2]
  33b9c0: aa07         	add	r2, sp, #0x1c
  33b9c2: 6812         	ldr	r2, [r2]
  33b9c4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  33b9c8: 4608         	mov	r0, r1
  33b9ca: 4611         	mov	r1, r2
  33b9cc: 2200         	movs	r2, #0x0
  33b9ce: 4798         	blx	r3
  33b9d0: ab07         	add	r3, sp, #0x1c
  33b9d2: 681b         	ldr	r3, [r3]
  33b9d4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33b9d8: 681b         	ldr	r3, [r3]
  33b9da: 33cc         	adds	r3, #0xcc
  33b9dc: 681b         	ldr	r3, [r3]
  33b9de: aa07         	add	r2, sp, #0x1c
  33b9e0: 6812         	ldr	r2, [r2]
  33b9e2: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33b9e6: 4611         	mov	r1, r2
  33b9e8: aa07         	add	r2, sp, #0x1c
  33b9ea: 6812         	ldr	r2, [r2]
  33b9ec: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  33b9f0: 4608         	mov	r0, r1
  33b9f2: 4611         	mov	r1, r2
  33b9f4: 2200         	movs	r2, #0x0
  33b9f6: 4798         	blx	r3
  33b9f8: ab07         	add	r3, sp, #0x1c
  33b9fa: 681b         	ldr	r3, [r3]
  33b9fc: 681b         	ldr	r3, [r3]
  33b9fe: 33cc         	adds	r3, #0xcc
  33ba00: 681b         	ldr	r3, [r3]
  33ba02: aa07         	add	r2, sp, #0x1c
  33ba04: 6811         	ldr	r1, [r2]
  33ba06: aa07         	add	r2, sp, #0x1c
  33ba08: 6812         	ldr	r2, [r2]
  33ba0a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  33ba0e: 4608         	mov	r0, r1
  33ba10: 4611         	mov	r1, r2
  33ba12: 2200         	movs	r2, #0x0
  33ba14: 4798         	blx	r3
  33ba16: ab07         	add	r3, sp, #0x1c
  33ba18: 681b         	ldr	r3, [r3]
  33ba1a: 681b         	ldr	r3, [r3]
  33ba1c: 33cc         	adds	r3, #0xcc
  33ba1e: 681b         	ldr	r3, [r3]
  33ba20: aa07         	add	r2, sp, #0x1c
  33ba22: 6811         	ldr	r1, [r2]
  33ba24: aa07         	add	r2, sp, #0x1c
  33ba26: 6812         	ldr	r2, [r2]
  33ba28: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  33ba2c: 4608         	mov	r0, r1
  33ba2e: 4611         	mov	r1, r2
  33ba30: 2200         	movs	r2, #0x0
  33ba32: 4798         	blx	r3
  33ba34: ab07         	add	r3, sp, #0x1c
  33ba36: 681b         	ldr	r3, [r3]
  33ba38: 681b         	ldr	r3, [r3]
  33ba3a: 33cc         	adds	r3, #0xcc
  33ba3c: 681b         	ldr	r3, [r3]
  33ba3e: aa07         	add	r2, sp, #0x1c
  33ba40: 6811         	ldr	r1, [r2]
  33ba42: aa07         	add	r2, sp, #0x1c
  33ba44: 6812         	ldr	r2, [r2]
  33ba46: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  33ba4a: 4608         	mov	r0, r1
  33ba4c: 4611         	mov	r1, r2
  33ba4e: 2200         	movs	r2, #0x0
  33ba50: 4798         	blx	r3
  33ba52: ab07         	add	r3, sp, #0x1c
  33ba54: 681b         	ldr	r3, [r3]
  33ba56: 681b         	ldr	r3, [r3]
  33ba58: 33cc         	adds	r3, #0xcc
  33ba5a: 681b         	ldr	r3, [r3]
  33ba5c: aa07         	add	r2, sp, #0x1c
  33ba5e: 6811         	ldr	r1, [r2]
  33ba60: aa07         	add	r2, sp, #0x1c
  33ba62: 6812         	ldr	r2, [r2]
  33ba64: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  33ba68: 4608         	mov	r0, r1
  33ba6a: 4611         	mov	r1, r2
  33ba6c: 2200         	movs	r2, #0x0
  33ba6e: 4798         	blx	r3
  33ba70: ab07         	add	r3, sp, #0x1c
  33ba72: 681b         	ldr	r3, [r3]
  33ba74: 681b         	ldr	r3, [r3]
  33ba76: 33cc         	adds	r3, #0xcc
  33ba78: 681b         	ldr	r3, [r3]
  33ba7a: aa07         	add	r2, sp, #0x1c
  33ba7c: 6811         	ldr	r1, [r2]
  33ba7e: aa07         	add	r2, sp, #0x1c
  33ba80: 6812         	ldr	r2, [r2]
  33ba82: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  33ba86: 4608         	mov	r0, r1
  33ba88: 4611         	mov	r1, r2
  33ba8a: 2200         	movs	r2, #0x0
  33ba8c: 4798         	blx	r3
  33ba8e: 2000         	movs	r0, #0x0
  33ba90: f79a eab8    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0x65a90
  33ba94: 4602         	mov	r2, r0
  33ba96: ab07         	add	r3, sp, #0x1c
  33ba98: 681b         	ldr	r3, [r3]
  33ba9a: f8c3 2198    	str.w	r2, [r3, #0x198]
  33ba9e: ab07         	add	r3, sp, #0x1c
  33baa0: 681b         	ldr	r3, [r3]
  33baa2: 2200         	movs	r2, #0x0
  33baa4: f8c3 219c    	str.w	r2, [r3, #0x19c]
  33baa8: ab07         	add	r3, sp, #0x1c
  33baaa: 681b         	ldr	r3, [r3]
  33baac: f44f 72c8    	mov.w	r2, #0x190
  33bab0: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  33bab4: ab07         	add	r3, sp, #0x1c
  33bab6: 681b         	ldr	r3, [r3]
  33bab8: f8d3 21a0    	ldr.w	r2, [r3, #0x1a0]
  33babc: ab07         	add	r3, sp, #0x1c
  33babe: 681b         	ldr	r3, [r3]
  33bac0: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  33bac4: ab07         	add	r3, sp, #0x1c
  33bac6: 681b         	ldr	r3, [r3]
  33bac8: f04f 0200    	mov.w	r2, #0x0
  33bacc: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  33bad0: ab07         	add	r3, sp, #0x1c
  33bad2: 681b         	ldr	r3, [r3]
  33bad4: f04f 0200    	mov.w	r2, #0x0
  33bad8: f8c3 218c    	str.w	r2, [r3, #0x18c]
  33badc: ab07         	add	r3, sp, #0x1c
  33bade: 681b         	ldr	r3, [r3]
  33bae0: f04f 0200    	mov.w	r2, #0x0
  33bae4: f8c3 2190    	str.w	r2, [r3, #0x190]
  33bae8: ab07         	add	r3, sp, #0x1c
  33baea: 681b         	ldr	r3, [r3]
  33baec: f04f 0200    	mov.w	r2, #0x0
  33baf0: f8c3 2194    	str.w	r2, [r3, #0x194]
  33baf4: ab07         	add	r3, sp, #0x1c
  33baf6: 681b         	ldr	r3, [r3]
  33baf8: 2200         	movs	r2, #0x0
  33bafa: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  33bafe: ab07         	add	r3, sp, #0x1c
  33bb00: 681b         	ldr	r3, [r3]
  33bb02: 2200         	movs	r2, #0x0
  33bb04: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  33bb08: ab07         	add	r3, sp, #0x1c
  33bb0a: 681b         	ldr	r3, [r3]
  33bb0c: 2200         	movs	r2, #0x0
  33bb0e: f883 21bc    	strb.w	r2, [r3, #0x1bc]
  33bb12: ab07         	add	r3, sp, #0x1c
  33bb14: 681b         	ldr	r3, [r3]
  33bb16: 2200         	movs	r2, #0x0
  33bb18: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  33bb1c: 2301         	movs	r3, #0x1
  33bb1e: 4618         	mov	r0, r3
  33bb20: b051         	add	sp, #0x144
  33bb22: ecbd 8b02    	vpop	{d8}
  33bb26: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== HUD::~HUD
//      file offset 0x33bb28 (= ELF address; Ghidra 0x34bb28), 348 bytes, Thumb-2
  33bb28: b500         	push	{lr}
  33bb2a: b083         	sub	sp, #0xc
  33bb2c: 9001         	str	r0, [sp, #0x4]
  33bb2e: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x33bc7c <HUD::~HUD()+0x154>
  33bb30: 447b         	add	r3, pc
  33bb32: 9a01         	ldr	r2, [sp, #0x4]
  33bb34: 4952         	ldr	r1, [pc, #0x148]        @ 0x33bc80 <HUD::~HUD()+0x158>
  33bb36: 5859         	ldr	r1, [r3, r1]
  33bb38: 3108         	adds	r1, #0x8
  33bb3a: 6011         	str	r1, [r2]
  33bb3c: 9a01         	ldr	r2, [sp, #0x4]
  33bb3e: 4950         	ldr	r1, [pc, #0x140]        @ 0x33bc80 <HUD::~HUD()+0x158>
  33bb40: 585b         	ldr	r3, [r3, r1]
  33bb42: f503 73da    	add.w	r3, r3, #0x1b4
  33bb46: f8c2 30e4    	str.w	r3, [r2, #0xe4]
  33bb4a: f2a4 fdb1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a4b62
  33bb4e: 4602         	mov	r2, r0
  33bb50: 9b01         	ldr	r3, [sp, #0x4]
  33bb52: 4610         	mov	r0, r2
  33bb54: 4619         	mov	r1, r3
  33bb56: f2a4 fee3    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2a4dc6
  33bb5a: 9b01         	ldr	r3, [sp, #0x4]
  33bb5c: 4618         	mov	r0, r3
  33bb5e: f254 fd65    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x254aca
  33bb62: 9b01         	ldr	r3, [sp, #0x4]
  33bb64: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33bb68: 4618         	mov	r0, r3
  33bb6a: f25c f9a5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c34a
  33bb6e: 9b01         	ldr	r3, [sp, #0x4]
  33bb70: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33bb74: 4618         	mov	r0, r3
  33bb76: f25c f99f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c33e
  33bb7a: 9b01         	ldr	r3, [sp, #0x4]
  33bb7c: 2200         	movs	r2, #0x0
  33bb7e: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  33bb82: 9b01         	ldr	r3, [sp, #0x4]
  33bb84: 2200         	movs	r2, #0x0
  33bb86: f8c3 214c    	str.w	r2, [r3, #0x14c]
  33bb8a: 9b01         	ldr	r3, [sp, #0x4]
  33bb8c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33bb90: 4618         	mov	r0, r3
  33bb92: f25c f991    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c322
  33bb96: 9b01         	ldr	r3, [sp, #0x4]
  33bb98: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33bb9c: 4618         	mov	r0, r3
  33bb9e: f25c f98b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c316
  33bba2: 9b01         	ldr	r3, [sp, #0x4]
  33bba4: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  33bba8: 4618         	mov	r0, r3
  33bbaa: f25c f985    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c30a
  33bbae: 9b01         	ldr	r3, [sp, #0x4]
  33bbb0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  33bbb4: 4618         	mov	r0, r3
  33bbb6: f25c f97f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2fe
  33bbba: 9b01         	ldr	r3, [sp, #0x4]
  33bbbc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33bbc0: 4618         	mov	r0, r3
  33bbc2: f25c f979    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2f2
  33bbc6: 9b01         	ldr	r3, [sp, #0x4]
  33bbc8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33bbcc: 4618         	mov	r0, r3
  33bbce: f25c f973    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2e6
  33bbd2: 9b01         	ldr	r3, [sp, #0x4]
  33bbd4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33bbd8: 4618         	mov	r0, r3
  33bbda: f25c f96d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2da
  33bbde: 9b01         	ldr	r3, [sp, #0x4]
  33bbe0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33bbe4: 4618         	mov	r0, r3
  33bbe6: f25c f967    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2ce
  33bbea: 9b01         	ldr	r3, [sp, #0x4]
  33bbec: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  33bbf0: 4618         	mov	r0, r3
  33bbf2: f25c f961    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2c2
  33bbf6: 9b01         	ldr	r3, [sp, #0x4]
  33bbf8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33bbfc: 4618         	mov	r0, r3
  33bbfe: f25c f95b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2b6
  33bc02: 9b01         	ldr	r3, [sp, #0x4]
  33bc04: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33bc08: 4618         	mov	r0, r3
  33bc0a: f25c f955    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c2aa
  33bc0e: 9b01         	ldr	r3, [sp, #0x4]
  33bc10: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33bc14: 4618         	mov	r0, r3
  33bc16: f25c f94f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c29e
  33bc1a: 9b01         	ldr	r3, [sp, #0x4]
  33bc1c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33bc20: 4618         	mov	r0, r3
  33bc22: f25c f949    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c292
  33bc26: 9b01         	ldr	r3, [sp, #0x4]
  33bc28: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33bc2c: 4618         	mov	r0, r3
  33bc2e: f25c f943    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c286
  33bc32: 9b01         	ldr	r3, [sp, #0x4]
  33bc34: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33bc38: 2b00         	cmp	r3, #0x0
  33bc3a: d005         	beq	0x33bc48 <HUD::~HUD()+0x120> @ imm = #0xa
  33bc3c: 9b01         	ldr	r3, [sp, #0x4]
  33bc3e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33bc42: 4618         	mov	r0, r3
  33bc44: f25c f938    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c270
  33bc48: 9b01         	ldr	r3, [sp, #0x4]
  33bc4a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33bc4e: 4618         	mov	r0, r3
  33bc50: f25c f932    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25c264
  33bc54: 9b01         	ldr	r3, [sp, #0x4]
  33bc56: 33e4         	adds	r3, #0xe4
  33bc58: 4618         	mov	r0, r3
  33bc5a: f7b1 ffd3    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0x4e05a
  33bc5e: 9b01         	ldr	r3, [sp, #0x4]
  33bc60: 4618         	mov	r0, r3
  33bc62: f253 fdef    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x253bde
  33bc66: 2300         	movs	r3, #0x0
  33bc68: 2b00         	cmp	r3, #0x0
  33bc6a: d002         	beq	0x33bc72 <HUD::~HUD()+0x14a> @ imm = #0x4
  33bc6c: 9801         	ldr	r0, [sp, #0x4]
  33bc6e: f04c f219    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44c432
  33bc72: 9b01         	ldr	r3, [sp, #0x4]
  33bc74: 4618         	mov	r0, r3
  33bc76: b003         	add	sp, #0xc
  33bc78: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33bc7b); words below are literal-pool data ---
  33bc7c: 6ed8         	ldr	r0, [r3, #0x6c]
  33bc7e: 005f         	lsls	r7, r3, #0x1
  33bc80: daa8         	bge	0x33bbd4 <HUD::~HUD()+0xac> @ imm = #-0xb0
  33bc82: ffff f1a0    	<unknown>

// ==== HUD::~HUD
//      file offset 0x33bc84 (= ELF address; Ghidra 0x34bc84), 8 bytes, Thumb-2
  33bc84: f1a0 00e4    	sub.w	r0, r0, #0xe4
  33bc88: f7ff bf4e    	b.w	0x33bb28 <HUD::~HUD()>  @ imm = #-0x164

// ==== HUD::~HUD
//      file offset 0x33bc8c (= ELF address; Ghidra 0x34bc8c), 28 bytes, Thumb-2
  33bc8c: b500         	push	{lr}
  33bc8e: b083         	sub	sp, #0xc
  33bc90: 9001         	str	r0, [sp, #0x4]
  33bc92: 9801         	ldr	r0, [sp, #0x4]
  33bc94: f7ff ff48    	bl	0x33bb28 <HUD::~HUD()>  @ imm = #-0x170
  33bc98: 9801         	ldr	r0, [sp, #0x4]
  33bc9a: f04c f203    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44c406
  33bc9e: 9b01         	ldr	r3, [sp, #0x4]
  33bca0: 4618         	mov	r0, r3
  33bca2: b003         	add	sp, #0xc
  33bca4: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::~HUD
//      file offset 0x33bca8 (= ELF address; Ghidra 0x34bca8), 8 bytes, Thumb-2
  33bca8: f1a0 00e4    	sub.w	r0, r0, #0xe4
  33bcac: f7ff bfee    	b.w	0x33bc8c <HUD::~HUD()>  @ imm = #-0x24

// ==== HUD::removeAllDependencies
//      file offset 0x33bcb0 (= ELF address; Ghidra 0x34bcb0), 8 bytes, Thumb-2
  33bcb0: b082         	sub	sp, #0x8
  33bcb2: 9001         	str	r0, [sp, #0x4]
  33bcb4: b002         	add	sp, #0x8
  33bcb6: 4770         	bx	lr

// ==== HUD::presentProPackAlertDual
//      file offset 0x33bcb8 (= ELF address; Ghidra 0x34bcb8), 456 bytes, Thumb-2
  33bcb8: b570         	push	{r4, r5, r6, lr}
  33bcba: b08e         	sub	sp, #0x38
  33bcbc: 9003         	str	r0, [sp, #0xc]
  33bcbe: 4c69         	ldr	r4, [pc, #0x1a4]        @ 0x33be64 <HUD::presentProPackAlertDual()+0x1ac>
  33bcc0: 447c         	add	r4, pc
  33bcc2: ab0c         	add	r3, sp, #0x30
  33bcc4: 4618         	mov	r0, r3
  33bcc6: f04e f395    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e72a
  33bcca: aa0d         	add	r2, sp, #0x34
  33bccc: ab0c         	add	r3, sp, #0x30
  33bcce: 4610         	mov	r0, r2
  33bcd0: 4a65         	ldr	r2, [pc, #0x194]        @ 0x33be68 <HUD::presentProPackAlertDual()+0x1b0>
  33bcd2: 447a         	add	r2, pc
  33bcd4: 4611         	mov	r1, r2
  33bcd6: 461a         	mov	r2, r3
  33bcd8: f07a f6c2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ad84
  33bcdc: aa09         	add	r2, sp, #0x24
  33bcde: ab0d         	add	r3, sp, #0x34
  33bce0: 4610         	mov	r0, r2
  33bce2: 4619         	mov	r1, r3
  33bce4: f0f5 ff2e    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0xf5e5c
  33bce8: ab0d         	add	r3, sp, #0x34
  33bcea: 4618         	mov	r0, r3
  33bcec: f079 f612    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479c24
  33bcf0: ab0c         	add	r3, sp, #0x30
  33bcf2: 4618         	mov	r0, r3
  33bcf4: f04e f382    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e704
  33bcf8: ab09         	add	r3, sp, #0x24
  33bcfa: 4618         	mov	r0, r3
  33bcfc: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x33be6c <HUD::presentProPackAlertDual()+0x1b4>
  33bcfe: 447b         	add	r3, pc
  33bd00: 4619         	mov	r1, r3
  33bd02: f07a f2f5    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x47a5ea
  33bd06: ab07         	add	r3, sp, #0x1c
  33bd08: 4618         	mov	r0, r3
  33bd0a: f04e f373    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e6e6
  33bd0e: aa0c         	add	r2, sp, #0x30
  33bd10: ab07         	add	r3, sp, #0x1c
  33bd12: 4610         	mov	r0, r2
  33bd14: 4a56         	ldr	r2, [pc, #0x158]        @ 0x33be70 <HUD::presentProPackAlertDual()+0x1b8>
  33bd16: 447a         	add	r2, pc
  33bd18: 4611         	mov	r1, r2
  33bd1a: 461a         	mov	r2, r3
  33bd1c: f07a f6a0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ad40
  33bd20: ab08         	add	r3, sp, #0x20
  33bd22: 4618         	mov	r0, r3
  33bd24: f04e f366    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e6cc
  33bd28: aa0d         	add	r2, sp, #0x34
  33bd2a: ab08         	add	r3, sp, #0x20
  33bd2c: 4610         	mov	r0, r2
  33bd2e: 4a51         	ldr	r2, [pc, #0x144]        @ 0x33be74 <HUD::presentProPackAlertDual()+0x1bc>
  33bd30: 447a         	add	r2, pc
  33bd32: 4611         	mov	r1, r2
  33bd34: 461a         	mov	r2, r3
  33bd36: f07a f693    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ad26
  33bd3a: ab05         	add	r3, sp, #0x14
  33bd3c: 4618         	mov	r0, r3
  33bd3e: f04e f359    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e6b2
  33bd42: aa0a         	add	r2, sp, #0x28
  33bd44: ab05         	add	r3, sp, #0x14
  33bd46: 4610         	mov	r0, r2
  33bd48: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x33be78 <HUD::presentProPackAlertDual()+0x1c0>
  33bd4a: 447a         	add	r2, pc
  33bd4c: 4611         	mov	r1, r2
  33bd4e: 461a         	mov	r2, r3
  33bd50: f07a f686    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ad0c
  33bd54: ab0a         	add	r3, sp, #0x28
  33bd56: 4618         	mov	r0, r3
  33bd58: f25d fe70    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25dce0
  33bd5c: 4605         	mov	r5, r0
  33bd5e: ab09         	add	r3, sp, #0x24
  33bd60: 4618         	mov	r0, r3
  33bd62: f079 f2cd    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47959a
  33bd66: 4606         	mov	r6, r0
  33bd68: ab06         	add	r3, sp, #0x18
  33bd6a: 4618         	mov	r0, r3
  33bd6c: f04e f342    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e684
  33bd70: aa0b         	add	r2, sp, #0x2c
  33bd72: ab06         	add	r3, sp, #0x18
  33bd74: 4610         	mov	r0, r2
  33bd76: 4631         	mov	r1, r6
  33bd78: 461a         	mov	r2, r3
  33bd7a: f07a f671    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ace2
  33bd7e: ab0b         	add	r3, sp, #0x2c
  33bd80: 4618         	mov	r0, r3
  33bd82: f25d fe5b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25dcb6
  33bd86: 4603         	mov	r3, r0
  33bd88: 4628         	mov	r0, r5
  33bd8a: 4619         	mov	r1, r3
  33bd8c: 2200         	movs	r2, #0x0
  33bd8e: f25e f83f    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x25e07e
  33bd92: 4603         	mov	r3, r0
  33bd94: a90c         	add	r1, sp, #0x30
  33bd96: aa0d         	add	r2, sp, #0x34
  33bd98: 2000         	movs	r0, #0x0
  33bd9a: 9000         	str	r0, [sp]
  33bd9c: 2000         	movs	r0, #0x0
  33bd9e: 9001         	str	r0, [sp, #0x4]
  33bda0: 4836         	ldr	r0, [pc, #0xd8]         @ 0x33be7c <HUD::presentProPackAlertDual()+0x1c4>
  33bda2: 5820         	ldr	r0, [r4, r0]
  33bda4: f7a3 fd26    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x5c5b4
  33bda8: ab0b         	add	r3, sp, #0x2c
  33bdaa: 4618         	mov	r0, r3
  33bdac: f079 f5b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b64
  33bdb0: ab06         	add	r3, sp, #0x18
  33bdb2: 4618         	mov	r0, r3
  33bdb4: f04e f322    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e644
  33bdb8: ab0a         	add	r3, sp, #0x28
  33bdba: 4618         	mov	r0, r3
  33bdbc: f079 f5aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b54
  33bdc0: ab05         	add	r3, sp, #0x14
  33bdc2: 4618         	mov	r0, r3
  33bdc4: f04e f31a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e634
  33bdc8: ab0d         	add	r3, sp, #0x34
  33bdca: 4618         	mov	r0, r3
  33bdcc: f079 f5a2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b44
  33bdd0: ab08         	add	r3, sp, #0x20
  33bdd2: 4618         	mov	r0, r3
  33bdd4: f04e f312    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e624
  33bdd8: ab0c         	add	r3, sp, #0x30
  33bdda: 4618         	mov	r0, r3
  33bddc: f079 f59a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b34
  33bde0: ab07         	add	r3, sp, #0x1c
  33bde2: 4618         	mov	r0, r3
  33bde4: f04e f30a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e614
  33bde8: ab09         	add	r3, sp, #0x24
  33bdea: 4618         	mov	r0, r3
  33bdec: f079 f592    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b24
  33bdf0: e036         	b	0x33be60 <HUD::presentProPackAlertDual()+0x1a8> @ imm = #0x6c
  33bdf2: ab0d         	add	r3, sp, #0x34
  33bdf4: 4618         	mov	r0, r3
  33bdf6: f079 f58d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b1a
  33bdfa: e7ff         	b	0x33bdfc <HUD::presentProPackAlertDual()+0x144> @ imm = #-0x2
  33bdfc: ab0c         	add	r3, sp, #0x30
  33bdfe: 4618         	mov	r0, r3
  33be00: f04e f2fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e5f8
  33be04: f04c f152    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44c2a4
  33be08: ab0b         	add	r3, sp, #0x2c
  33be0a: 4618         	mov	r0, r3
  33be0c: f079 f582    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479b04
  33be10: e7ff         	b	0x33be12 <HUD::presentProPackAlertDual()+0x15a> @ imm = #-0x2
  33be12: ab06         	add	r3, sp, #0x18
  33be14: 4618         	mov	r0, r3
  33be16: f04e f2f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e5e2
  33be1a: e7ff         	b	0x33be1c <HUD::presentProPackAlertDual()+0x164> @ imm = #-0x2
  33be1c: ab0a         	add	r3, sp, #0x28
  33be1e: 4618         	mov	r0, r3
  33be20: f079 f578    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479af0
  33be24: e7ff         	b	0x33be26 <HUD::presentProPackAlertDual()+0x16e> @ imm = #-0x2
  33be26: ab05         	add	r3, sp, #0x14
  33be28: 4618         	mov	r0, r3
  33be2a: f04e f2e7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e5ce
  33be2e: ab0d         	add	r3, sp, #0x34
  33be30: 4618         	mov	r0, r3
  33be32: f079 f56f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479ade
  33be36: e7ff         	b	0x33be38 <HUD::presentProPackAlertDual()+0x180> @ imm = #-0x2
  33be38: ab08         	add	r3, sp, #0x20
  33be3a: 4618         	mov	r0, r3
  33be3c: f04e f2de    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e5bc
  33be40: ab0c         	add	r3, sp, #0x30
  33be42: 4618         	mov	r0, r3
  33be44: f079 f566    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479acc
  33be48: e7ff         	b	0x33be4a <HUD::presentProPackAlertDual()+0x192> @ imm = #-0x2
  33be4a: ab07         	add	r3, sp, #0x1c
  33be4c: 4618         	mov	r0, r3
  33be4e: f04e f2d5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e5aa
  33be52: e7ff         	b	0x33be54 <HUD::presentProPackAlertDual()+0x19c> @ imm = #-0x2
  33be54: ab09         	add	r3, sp, #0x24
  33be56: 4618         	mov	r0, r3
  33be58: f079 f55c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479ab8
  33be5c: f04c f126    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44c24c
  33be60: b00e         	add	sp, #0x38
  33be62: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33be63); words below are literal-pool data ---
  33be64: 6d48         	ldr	r0, [r1, #0x54]
  33be66: 005f         	lsls	r7, r3, #0x1
  33be68: dcee         	bgt	0x33be48 <HUD::presentProPackAlertDual()+0x190> @ imm = #-0x24
  33be6a: 0048         	lsls	r0, r1, #0x1
  33be6c: dcde         	bgt	0x33be2c <HUD::presentProPackAlertDual()+0x174> @ imm = #-0x44
  33be6e: 0048         	lsls	r0, r1, #0x1
  33be70: dcd2         	bgt	0x33be18 <HUD::presentProPackAlertDual()+0x160> @ imm = #-0x5c
  33be72: 0048         	lsls	r0, r1, #0x1
  33be74: dcd0         	bgt	0x33be18 <HUD::presentProPackAlertDual()+0x160> @ imm = #-0x60
  33be76: 0048         	lsls	r0, r1, #0x1
  33be78: dcee         	bgt	0x33be58 <HUD::presentProPackAlertDual()+0x1a0> @ imm = #-0x24
  33be7a: 0048         	lsls	r0, r1, #0x1
  33be7c: db14         	blt	0x33bea8 <HUD::presentProPackAlertWeapon()+0x28> @ imm = #0x28
  33be7e: ffff b570    	<unknown>

// ==== HUD::presentProPackAlertWeapon
//      file offset 0x33be80 (= ELF address; Ghidra 0x34be80), 456 bytes, Thumb-2
  33be80: b570         	push	{r4, r5, r6, lr}
  33be82: b08e         	sub	sp, #0x38
  33be84: 9003         	str	r0, [sp, #0xc]
  33be86: 4c69         	ldr	r4, [pc, #0x1a4]        @ 0x33c02c <HUD::presentProPackAlertWeapon()+0x1ac>
  33be88: 447c         	add	r4, pc
  33be8a: ab0c         	add	r3, sp, #0x30
  33be8c: 4618         	mov	r0, r3
  33be8e: f04e f2b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e562
  33be92: aa0d         	add	r2, sp, #0x34
  33be94: ab0c         	add	r3, sp, #0x30
  33be96: 4610         	mov	r0, r2
  33be98: 4a65         	ldr	r2, [pc, #0x194]        @ 0x33c030 <HUD::presentProPackAlertWeapon()+0x1b0>
  33be9a: 447a         	add	r2, pc
  33be9c: 4611         	mov	r1, r2
  33be9e: 461a         	mov	r2, r3
  33bea0: f07a f5de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47abbc
  33bea4: aa09         	add	r2, sp, #0x24
  33bea6: ab0d         	add	r3, sp, #0x34
  33bea8: 4610         	mov	r0, r2
  33beaa: 4619         	mov	r1, r3
  33beac: f0f5 fe4a    	bl	0x431b44 <InAppPurchaseBridge::getProductPrice(std::string)> @ imm = #0xf5c94
  33beb0: ab0d         	add	r3, sp, #0x34
  33beb2: 4618         	mov	r0, r3
  33beb4: f079 f52e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479a5c
  33beb8: ab0c         	add	r3, sp, #0x30
  33beba: 4618         	mov	r0, r3
  33bebc: f04e f29e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e53c
  33bec0: ab09         	add	r3, sp, #0x24
  33bec2: 4618         	mov	r0, r3
  33bec4: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x33c034 <HUD::presentProPackAlertWeapon()+0x1b4>
  33bec6: 447b         	add	r3, pc
  33bec8: 4619         	mov	r1, r3
  33beca: f07a f211    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x47a422
  33bece: ab07         	add	r3, sp, #0x1c
  33bed0: 4618         	mov	r0, r3
  33bed2: f04e f28f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e51e
  33bed6: aa0c         	add	r2, sp, #0x30
  33bed8: ab07         	add	r3, sp, #0x1c
  33beda: 4610         	mov	r0, r2
  33bedc: 4a56         	ldr	r2, [pc, #0x158]        @ 0x33c038 <HUD::presentProPackAlertWeapon()+0x1b8>
  33bede: 447a         	add	r2, pc
  33bee0: 4611         	mov	r1, r2
  33bee2: 461a         	mov	r2, r3
  33bee4: f07a f5bc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ab78
  33bee8: ab08         	add	r3, sp, #0x20
  33beea: 4618         	mov	r0, r3
  33beec: f04e f282    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e504
  33bef0: aa0d         	add	r2, sp, #0x34
  33bef2: ab08         	add	r3, sp, #0x20
  33bef4: 4610         	mov	r0, r2
  33bef6: 4a51         	ldr	r2, [pc, #0x144]        @ 0x33c03c <HUD::presentProPackAlertWeapon()+0x1bc>
  33bef8: 447a         	add	r2, pc
  33befa: 4611         	mov	r1, r2
  33befc: 461a         	mov	r2, r3
  33befe: f07a f5af    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ab5e
  33bf02: ab05         	add	r3, sp, #0x14
  33bf04: 4618         	mov	r0, r3
  33bf06: f04e f275    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e4ea
  33bf0a: aa0a         	add	r2, sp, #0x28
  33bf0c: ab05         	add	r3, sp, #0x14
  33bf0e: 4610         	mov	r0, r2
  33bf10: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x33c040 <HUD::presentProPackAlertWeapon()+0x1c0>
  33bf12: 447a         	add	r2, pc
  33bf14: 4611         	mov	r1, r2
  33bf16: 461a         	mov	r2, r3
  33bf18: f07a f5a2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ab44
  33bf1c: ab0a         	add	r3, sp, #0x28
  33bf1e: 4618         	mov	r0, r3
  33bf20: f25d fd8c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25db18
  33bf24: 4605         	mov	r5, r0
  33bf26: ab09         	add	r3, sp, #0x24
  33bf28: 4618         	mov	r0, r3
  33bf2a: f079 f1e9    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4793d2
  33bf2e: 4606         	mov	r6, r0
  33bf30: ab06         	add	r3, sp, #0x18
  33bf32: 4618         	mov	r0, r3
  33bf34: f04e f25e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44e4bc
  33bf38: aa0b         	add	r2, sp, #0x2c
  33bf3a: ab06         	add	r3, sp, #0x18
  33bf3c: 4610         	mov	r0, r2
  33bf3e: 4631         	mov	r1, r6
  33bf40: 461a         	mov	r2, r3
  33bf42: f07a f58d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47ab1a
  33bf46: ab0b         	add	r3, sp, #0x2c
  33bf48: 4618         	mov	r0, r3
  33bf4a: f25d fd77    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25daee
  33bf4e: 4603         	mov	r3, r0
  33bf50: 4628         	mov	r0, r5
  33bf52: 4619         	mov	r1, r3
  33bf54: 2200         	movs	r2, #0x0
  33bf56: f25d ff5b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x25deb6
  33bf5a: 4603         	mov	r3, r0
  33bf5c: a90c         	add	r1, sp, #0x30
  33bf5e: aa0d         	add	r2, sp, #0x34
  33bf60: 2000         	movs	r0, #0x0
  33bf62: 9000         	str	r0, [sp]
  33bf64: 2000         	movs	r0, #0x0
  33bf66: 9001         	str	r0, [sp, #0x4]
  33bf68: 4836         	ldr	r0, [pc, #0xd8]         @ 0x33c044 <HUD::presentProPackAlertWeapon()+0x1c4>
  33bf6a: 5820         	ldr	r0, [r4, r0]
  33bf6c: f7a3 fc42    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x5c77c
  33bf70: ab0b         	add	r3, sp, #0x2c
  33bf72: 4618         	mov	r0, r3
  33bf74: f079 f4ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47999c
  33bf78: ab06         	add	r3, sp, #0x18
  33bf7a: 4618         	mov	r0, r3
  33bf7c: f04e f23e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e47c
  33bf80: ab0a         	add	r3, sp, #0x28
  33bf82: 4618         	mov	r0, r3
  33bf84: f079 f4c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47998c
  33bf88: ab05         	add	r3, sp, #0x14
  33bf8a: 4618         	mov	r0, r3
  33bf8c: f04e f236    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e46c
  33bf90: ab0d         	add	r3, sp, #0x34
  33bf92: 4618         	mov	r0, r3
  33bf94: f079 f4be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47997c
  33bf98: ab08         	add	r3, sp, #0x20
  33bf9a: 4618         	mov	r0, r3
  33bf9c: f04e f22e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e45c
  33bfa0: ab0c         	add	r3, sp, #0x30
  33bfa2: 4618         	mov	r0, r3
  33bfa4: f079 f4b6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47996c
  33bfa8: ab07         	add	r3, sp, #0x1c
  33bfaa: 4618         	mov	r0, r3
  33bfac: f04e f226    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e44c
  33bfb0: ab09         	add	r3, sp, #0x24
  33bfb2: 4618         	mov	r0, r3
  33bfb4: f079 f4ae    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47995c
  33bfb8: e036         	b	0x33c028 <HUD::presentProPackAlertWeapon()+0x1a8> @ imm = #0x6c
  33bfba: ab0d         	add	r3, sp, #0x34
  33bfbc: 4618         	mov	r0, r3
  33bfbe: f079 f4a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479952
  33bfc2: e7ff         	b	0x33bfc4 <HUD::presentProPackAlertWeapon()+0x144> @ imm = #-0x2
  33bfc4: ab0c         	add	r3, sp, #0x30
  33bfc6: 4618         	mov	r0, r3
  33bfc8: f04e f218    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e430
  33bfcc: f04c f06e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44c0dc
  33bfd0: ab0b         	add	r3, sp, #0x2c
  33bfd2: 4618         	mov	r0, r3
  33bfd4: f079 f49e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47993c
  33bfd8: e7ff         	b	0x33bfda <HUD::presentProPackAlertWeapon()+0x15a> @ imm = #-0x2
  33bfda: ab06         	add	r3, sp, #0x18
  33bfdc: 4618         	mov	r0, r3
  33bfde: f04e f20d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e41a
  33bfe2: e7ff         	b	0x33bfe4 <HUD::presentProPackAlertWeapon()+0x164> @ imm = #-0x2
  33bfe4: ab0a         	add	r3, sp, #0x28
  33bfe6: 4618         	mov	r0, r3
  33bfe8: f079 f494    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479928
  33bfec: e7ff         	b	0x33bfee <HUD::presentProPackAlertWeapon()+0x16e> @ imm = #-0x2
  33bfee: ab05         	add	r3, sp, #0x14
  33bff0: 4618         	mov	r0, r3
  33bff2: f04e f203    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e406
  33bff6: ab0d         	add	r3, sp, #0x34
  33bff8: 4618         	mov	r0, r3
  33bffa: f079 f48b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479916
  33bffe: e7ff         	b	0x33c000 <HUD::presentProPackAlertWeapon()+0x180> @ imm = #-0x2
  33c000: ab08         	add	r3, sp, #0x20
  33c002: 4618         	mov	r0, r3
  33c004: f04e f1fa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e3f4
  33c008: ab0c         	add	r3, sp, #0x30
  33c00a: 4618         	mov	r0, r3
  33c00c: f079 f482    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479904
  33c010: e7ff         	b	0x33c012 <HUD::presentProPackAlertWeapon()+0x192> @ imm = #-0x2
  33c012: ab07         	add	r3, sp, #0x1c
  33c014: 4618         	mov	r0, r3
  33c016: f04e f1f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44e3e2
  33c01a: e7ff         	b	0x33c01c <HUD::presentProPackAlertWeapon()+0x19c> @ imm = #-0x2
  33c01c: ab09         	add	r3, sp, #0x24
  33c01e: 4618         	mov	r0, r3
  33c020: f079 f478    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4798f0
  33c024: f04c f042    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44c084
  33c028: b00e         	add	sp, #0x38
  33c02a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33c02b); words below are literal-pool data ---
  33c02c: 6b80         	ldr	r0, [r0, #0x38]
  33c02e: 005f         	lsls	r7, r3, #0x1
  33c030: db26         	blt	0x33c080 <HUD::onPunch(cocos2d::CCObject*)+0x4> @ imm = #0x4c
  33c032: 0048         	lsls	r0, r1, #0x1
  33c034: db16         	blt	0x33c064 <HUD::setMeters(float, float)+0x1c> @ imm = #0x2c
  33c036: 0048         	lsls	r0, r1, #0x1
  33c038: db62         	blt	0x33c100 <HUD::onGrenadeChange(cocos2d::CCObject*)+0x8> @ imm = #0xc4
  33c03a: 0048         	lsls	r0, r1, #0x1
  33c03c: db5c         	blt	0x33c0f8 <HUD::onGrenadeChange(cocos2d::CCObject*)> @ imm = #0xb8
  33c03e: 0048         	lsls	r0, r1, #0x1
  33c040: db26         	blt	0x33c090 <HUD::onPunch(cocos2d::CCObject*)+0x14> @ imm = #0x4c
  33c042: 0048         	lsls	r0, r1, #0x1
  33c044: db14         	blt	0x33c070 <HUD::setMeters(float, float)+0x28> @ imm = #0x28
  33c046: ffff b500    	<unknown>

// ==== HUD::setMeters
//      file offset 0x33c048 (= ELF address; Ghidra 0x34c048), 52 bytes, Thumb-2
  33c048: b500         	push	{lr}
  33c04a: b087         	sub	sp, #0x1c
  33c04c: 9005         	str	r0, [sp, #0x14]
  33c04e: 9104         	str	r1, [sp, #0x10]
  33c050: 9203         	str	r2, [sp, #0xc]
  33c052: 9b05         	ldr	r3, [sp, #0x14]
  33c054: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  33c058: eddd 7a04    	vldr	s15, [sp, #16]
  33c05c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  33c060: eddd 7a03    	vldr	s15, [sp, #12]
  33c064: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  33c068: ed8d 7b00    	vstr	d7, [sp]
  33c06c: 4618         	mov	r0, r3
  33c06e: ec53 2b16    	vmov	r2, r3, d6
  33c072: f006 fc5d    	bl	0x342930 <HeartMeter::setMeters(double, double)> @ imm = #0x68ba
  33c076: b007         	add	sp, #0x1c
  33c078: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPunch
//      file offset 0x33c07c (= ELF address; Ghidra 0x34c07c), 124 bytes, Thumb-2
  33c07c: b510         	push	{r4, lr}
  33c07e: b082         	sub	sp, #0x8
  33c080: 9001         	str	r0, [sp, #0x4]
  33c082: 9100         	str	r1, [sp]
  33c084: 4c1a         	ldr	r4, [pc, #0x68]         @ 0x33c0f0 <HUD::onPunch(cocos2d::CCObject*)+0x74>
  33c086: 447c         	add	r4, pc
  33c088: 9b01         	ldr	r3, [sp, #0x4]
  33c08a: ed93 7a64    	vldr	s14, [r3, #400]
  33c08e: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  33c092: eeb4 7ae7    	vcmpe.f32	s14, s15
  33c096: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33c09a: dd13         	ble	0x33c0c4 <HUD::onPunch(cocos2d::CCObject*)+0x48> @ imm = #0x26
  33c09c: 4b15         	ldr	r3, [pc, #0x54]         @ 0x33c0f4 <HUD::onPunch(cocos2d::CCObject*)+0x78>
  33c09e: 58e3         	ldr	r3, [r4, r3]
  33c0a0: 681b         	ldr	r3, [r3]
  33c0a2: 681b         	ldr	r3, [r3]
  33c0a4: f503 7319    	add.w	r3, r3, #0x264
  33c0a8: 681b         	ldr	r3, [r3]
  33c0aa: 4a12         	ldr	r2, [pc, #0x48]         @ 0x33c0f4 <HUD::onPunch(cocos2d::CCObject*)+0x78>
  33c0ac: 58a2         	ldr	r2, [r4, r2]
  33c0ae: 6812         	ldr	r2, [r2]
  33c0b0: 4610         	mov	r0, r2
  33c0b2: 4798         	blx	r3
  33c0b4: 4603         	mov	r3, r0
  33c0b6: f083 0301    	eor	r3, r3, #0x1
  33c0ba: b2db         	uxtb	r3, r3
  33c0bc: 2b00         	cmp	r3, #0x0
  33c0be: d001         	beq	0x33c0c4 <HUD::onPunch(cocos2d::CCObject*)+0x48> @ imm = #0x2
  33c0c0: 2301         	movs	r3, #0x1
  33c0c2: e000         	b	0x33c0c6 <HUD::onPunch(cocos2d::CCObject*)+0x4a> @ imm = #0x0
  33c0c4: 2300         	movs	r3, #0x0
  33c0c6: 2b00         	cmp	r3, #0x0
  33c0c8: d010         	beq	0x33c0ec <HUD::onPunch(cocos2d::CCObject*)+0x70> @ imm = #0x20
  33c0ca: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x33c0f4 <HUD::onPunch(cocos2d::CCObject*)+0x78>
  33c0cc: 58e3         	ldr	r3, [r4, r3]
  33c0ce: 681b         	ldr	r3, [r3]
  33c0d0: 681b         	ldr	r3, [r3]
  33c0d2: f503 7334    	add.w	r3, r3, #0x2d0
  33c0d6: 681b         	ldr	r3, [r3]
  33c0d8: 4a06         	ldr	r2, [pc, #0x18]         @ 0x33c0f4 <HUD::onPunch(cocos2d::CCObject*)+0x78>
  33c0da: 58a2         	ldr	r2, [r4, r2]
  33c0dc: 6812         	ldr	r2, [r2]
  33c0de: 4610         	mov	r0, r2
  33c0e0: 4798         	blx	r3
  33c0e2: 9b01         	ldr	r3, [sp, #0x4]
  33c0e4: f04f 0200    	mov.w	r2, #0x0
  33c0e8: f8c3 2190    	str.w	r2, [r3, #0x190]
  33c0ec: b002         	add	sp, #0x8
  33c0ee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c0ef); words below are literal-pool data ---
  33c0f0: 6982         	ldr	r2, [r0, #0x18]
  33c0f2: 005f         	lsls	r7, r3, #0x1
  33c0f4: d784         	bvc	0x33c000 <HUD::presentProPackAlertWeapon()+0x180> @ imm = #-0xf8
  33c0f6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::onGrenadeChange
//      file offset 0x33c0f8 (= ELF address; Ghidra 0x34c0f8), 104 bytes, Thumb-2
  33c0f8: b530         	push	{r4, r5, lr}
  33c0fa: b083         	sub	sp, #0xc
  33c0fc: 9001         	str	r0, [sp, #0x4]
  33c0fe: 9100         	str	r1, [sp]
  33c100: 4b14         	ldr	r3, [pc, #0x50]         @ 0x33c154 <HUD::onGrenadeChange(cocos2d::CCObject*)+0x5c>
  33c102: 447b         	add	r3, pc
  33c104: 9a01         	ldr	r2, [sp, #0x4]
  33c106: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  33c10a: 6812         	ldr	r2, [r2]
  33c10c: f502 72fc    	add.w	r2, r2, #0x1f8
  33c110: 6814         	ldr	r4, [r2]
  33c112: 9a01         	ldr	r2, [sp, #0x4]
  33c114: f8d2 5150    	ldr.w	r5, [r2, #0x150]
  33c118: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x33c158 <HUD::onGrenadeChange(cocos2d::CCObject*)+0x60>
  33c11a: 589a         	ldr	r2, [r3, r2]
  33c11c: 6812         	ldr	r2, [r2]
  33c11e: 6812         	ldr	r2, [r2]
  33c120: f502 7236    	add.w	r2, r2, #0x2d8
  33c124: 6812         	ldr	r2, [r2]
  33c126: 490c         	ldr	r1, [pc, #0x30]         @ 0x33c158 <HUD::onGrenadeChange(cocos2d::CCObject*)+0x60>
  33c128: 585b         	ldr	r3, [r3, r1]
  33c12a: 681b         	ldr	r3, [r3]
  33c12c: 4618         	mov	r0, r3
  33c12e: 4790         	blx	r2
  33c130: 4603         	mov	r3, r0
  33c132: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x33c15c <HUD::onGrenadeChange(cocos2d::CCObject*)+0x64>
  33c134: 447a         	add	r2, pc
  33c136: 4610         	mov	r0, r2
  33c138: 4619         	mov	r1, r3
  33c13a: f25d fce9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x25d9d2
  33c13e: 4603         	mov	r3, r0
  33c140: 4618         	mov	r0, r3
  33c142: f25d fbf1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25d7e2
  33c146: 4603         	mov	r3, r0
  33c148: 4628         	mov	r0, r5
  33c14a: 4619         	mov	r1, r3
  33c14c: 47a0         	blx	r4
  33c14e: b003         	add	sp, #0xc
  33c150: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33c151); words below are literal-pool data ---
  33c152: bf00         	nop
  33c154: 6906         	ldr	r6, [r0, #0x10]
  33c156: 005f         	lsls	r7, r3, #0x1
  33c158: d784         	bvc	0x33c064 <HUD::setMeters(float, float)+0x1c> @ imm = #-0xf8
  33c15a: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  33c15e: 0048         	lsls	r0, r1, #0x1

// ==== HUD::onGrenade
//      file offset 0x33c160 (= ELF address; Ghidra 0x34c160), 160 bytes, Thumb-2
  33c160: b510         	push	{r4, lr}
  33c162: b082         	sub	sp, #0x8
  33c164: 9001         	str	r0, [sp, #0x4]
  33c166: 9100         	str	r1, [sp]
  33c168: 4c22         	ldr	r4, [pc, #0x88]         @ 0x33c1f4 <HUD::onGrenade(cocos2d::CCObject*)+0x94>
  33c16a: 447c         	add	r4, pc
  33c16c: 9b01         	ldr	r3, [sp, #0x4]
  33c16e: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  33c172: 2b00         	cmp	r3, #0x0
  33c174: dc0a         	bgt	0x33c18c <HUD::onGrenade(cocos2d::CCObject*)+0x2c> @ imm = #0x14
  33c176: 4b20         	ldr	r3, [pc, #0x80]         @ 0x33c1f8 <HUD::onGrenade(cocos2d::CCObject*)+0x98>
  33c178: 58e3         	ldr	r3, [r4, r3]
  33c17a: 681b         	ldr	r3, [r3]
  33c17c: 2b04         	cmp	r3, #0x4
  33c17e: d004         	beq	0x33c18a <HUD::onGrenade(cocos2d::CCObject*)+0x2a> @ imm = #0x8
  33c180: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x33c1f8 <HUD::onGrenade(cocos2d::CCObject*)+0x98>
  33c182: 58e3         	ldr	r3, [r4, r3]
  33c184: 681b         	ldr	r3, [r3]
  33c186: 2b03         	cmp	r3, #0x3
  33c188: d100         	bne	0x33c18c <HUD::onGrenade(cocos2d::CCObject*)+0x2c> @ imm = #0x0
  33c18a: e031         	b	0x33c1f0 <HUD::onGrenade(cocos2d::CCObject*)+0x90> @ imm = #0x62
  33c18c: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x33c1fc <HUD::onGrenade(cocos2d::CCObject*)+0x9c>
  33c18e: 58e3         	ldr	r3, [r4, r3]
  33c190: 681b         	ldr	r3, [r3]
  33c192: 681b         	ldr	r3, [r3]
  33c194: f503 7319    	add.w	r3, r3, #0x264
  33c198: 681b         	ldr	r3, [r3]
  33c19a: 4a18         	ldr	r2, [pc, #0x60]         @ 0x33c1fc <HUD::onGrenade(cocos2d::CCObject*)+0x9c>
  33c19c: 58a2         	ldr	r2, [r4, r2]
  33c19e: 6812         	ldr	r2, [r2]
  33c1a0: 4610         	mov	r0, r2
  33c1a2: 4798         	blx	r3
  33c1a4: 4603         	mov	r3, r0
  33c1a6: f083 0301    	eor	r3, r3, #0x1
  33c1aa: b2db         	uxtb	r3, r3
  33c1ac: 2b00         	cmp	r3, #0x0
  33c1ae: d00b         	beq	0x33c1c8 <HUD::onGrenade(cocos2d::CCObject*)+0x68> @ imm = #0x16
  33c1b0: 9b01         	ldr	r3, [sp, #0x4]
  33c1b2: ed93 7a63    	vldr	s14, [r3, #396]
  33c1b6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  33c1ba: eeb4 7ae7    	vcmpe.f32	s14, s15
  33c1be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33c1c2: dd01         	ble	0x33c1c8 <HUD::onGrenade(cocos2d::CCObject*)+0x68> @ imm = #0x2
  33c1c4: 2301         	movs	r3, #0x1
  33c1c6: e000         	b	0x33c1ca <HUD::onGrenade(cocos2d::CCObject*)+0x6a> @ imm = #0x0
  33c1c8: 2300         	movs	r3, #0x0
  33c1ca: 2b00         	cmp	r3, #0x0
  33c1cc: d010         	beq	0x33c1f0 <HUD::onGrenade(cocos2d::CCObject*)+0x90> @ imm = #0x20
  33c1ce: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x33c1fc <HUD::onGrenade(cocos2d::CCObject*)+0x9c>
  33c1d0: 58e3         	ldr	r3, [r4, r3]
  33c1d2: 681b         	ldr	r3, [r3]
  33c1d4: 681b         	ldr	r3, [r3]
  33c1d6: f503 731d    	add.w	r3, r3, #0x274
  33c1da: 681b         	ldr	r3, [r3]
  33c1dc: 4a07         	ldr	r2, [pc, #0x1c]         @ 0x33c1fc <HUD::onGrenade(cocos2d::CCObject*)+0x9c>
  33c1de: 58a2         	ldr	r2, [r4, r2]
  33c1e0: 6812         	ldr	r2, [r2]
  33c1e2: 4610         	mov	r0, r2
  33c1e4: 4798         	blx	r3
  33c1e6: 9b01         	ldr	r3, [sp, #0x4]
  33c1e8: f04f 0200    	mov.w	r2, #0x0
  33c1ec: f8c3 218c    	str.w	r2, [r3, #0x18c]
  33c1f0: b002         	add	sp, #0x8
  33c1f2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c1f3); words below are literal-pool data ---
  33c1f4: 689e         	ldr	r6, [r3, #0x8]
  33c1f6: 005f         	lsls	r7, r3, #0x1
  33c1f8: d838         	bhi	0x33c26c <HUD::updateZoomLabel()+0x6c> @ imm = #0x70
  33c1fa: ffff d784    	<unknown>
  33c1fe: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::updateZoomLabel
//      file offset 0x33c200 (= ELF address; Ghidra 0x34c200), 132 bytes, Thumb-2
  33c200: b530         	push	{r4, r5, lr}
  33c202: b085         	sub	sp, #0x14
  33c204: 9001         	str	r0, [sp, #0x4]
  33c206: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x33c27c <HUD::updateZoomLabel()+0x7c>
  33c208: 447b         	add	r3, pc
  33c20a: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x33c280 <HUD::updateZoomLabel()+0x80>
  33c20c: 589a         	ldr	r2, [r3, r2]
  33c20e: 6812         	ldr	r2, [r2]
  33c210: 6812         	ldr	r2, [r2]
  33c212: f502 72fa    	add.w	r2, r2, #0x1f4
  33c216: 6812         	ldr	r2, [r2]
  33c218: 4919         	ldr	r1, [pc, #0x64]         @ 0x33c280 <HUD::updateZoomLabel()+0x80>
  33c21a: 585b         	ldr	r3, [r3, r1]
  33c21c: 681b         	ldr	r3, [r3]
  33c21e: 4618         	mov	r0, r3
  33c220: 4790         	blx	r2
  33c222: 4603         	mov	r3, r0
  33c224: 9303         	str	r3, [sp, #0xc]
  33c226: 9b03         	ldr	r3, [sp, #0xc]
  33c228: 2b00         	cmp	r3, #0x0
  33c22a: d025         	beq	0x33c278 <HUD::updateZoomLabel()+0x78> @ imm = #0x4a
  33c22c: 9b01         	ldr	r3, [sp, #0x4]
  33c22e: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33c232: 681b         	ldr	r3, [r3]
  33c234: f503 73fc    	add.w	r3, r3, #0x1f8
  33c238: 681c         	ldr	r4, [r3]
  33c23a: 9b01         	ldr	r3, [sp, #0x4]
  33c23c: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  33c240: 9b03         	ldr	r3, [sp, #0xc]
  33c242: 681b         	ldr	r3, [r3]
  33c244: f503 7335    	add.w	r3, r3, #0x2d4
  33c248: 681b         	ldr	r3, [r3]
  33c24a: aa02         	add	r2, sp, #0x8
  33c24c: 4610         	mov	r0, r2
  33c24e: 9903         	ldr	r1, [sp, #0xc]
  33c250: 4798         	blx	r3
  33c252: ab02         	add	r3, sp, #0x8
  33c254: 4618         	mov	r0, r3
  33c256: f079 f053    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4790a6
  33c25a: 4603         	mov	r3, r0
  33c25c: 4628         	mov	r0, r5
  33c25e: 4619         	mov	r1, r3
  33c260: 47a0         	blx	r4
  33c262: ab02         	add	r3, sp, #0x8
  33c264: 4618         	mov	r0, r3
  33c266: f079 f355    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4796aa
  33c26a: e005         	b	0x33c278 <HUD::updateZoomLabel()+0x78> @ imm = #0xa
  33c26c: ab02         	add	r3, sp, #0x8
  33c26e: 4618         	mov	r0, r3
  33c270: f079 f350    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4796a0
  33c274: f04b f71a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44be34
  33c278: b005         	add	sp, #0x14
  33c27a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33c27b); words below are literal-pool data ---
  33c27c: 6800         	ldr	r0, [r0]
  33c27e: 005f         	lsls	r7, r3, #0x1
  33c280: d784         	bvc	0x33c18c <HUD::onGrenade(cocos2d::CCObject*)+0x2c> @ imm = #-0xf8
  33c282: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HUD::onZoom
//      file offset 0x33c284 (= ELF address; Ghidra 0x34c284), 96 bytes, Thumb-2
  33c284: b510         	push	{r4, lr}
  33c286: b084         	sub	sp, #0x10
  33c288: 9001         	str	r0, [sp, #0x4]
  33c28a: 9100         	str	r1, [sp]
  33c28c: 4c12         	ldr	r4, [pc, #0x48]         @ 0x33c2d8 <HUD::onZoom(cocos2d::CCObject*)+0x54>
  33c28e: 447c         	add	r4, pc
  33c290: 4b12         	ldr	r3, [pc, #0x48]         @ 0x33c2dc <HUD::onZoom(cocos2d::CCObject*)+0x58>
  33c292: 58e3         	ldr	r3, [r4, r3]
  33c294: 681b         	ldr	r3, [r3]
  33c296: 4618         	mov	r0, r3
  33c298: 2104         	movs	r1, #0x4
  33c29a: f0bb fd91    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xbbb22
  33c29e: 4b10         	ldr	r3, [pc, #0x40]         @ 0x33c2e0 <HUD::onZoom(cocos2d::CCObject*)+0x5c>
  33c2a0: 58e3         	ldr	r3, [r4, r3]
  33c2a2: 681b         	ldr	r3, [r3]
  33c2a4: 681b         	ldr	r3, [r3]
  33c2a6: f503 73fa    	add.w	r3, r3, #0x1f4
  33c2aa: 681b         	ldr	r3, [r3]
  33c2ac: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x33c2e0 <HUD::onZoom(cocos2d::CCObject*)+0x5c>
  33c2ae: 58a2         	ldr	r2, [r4, r2]
  33c2b0: 6812         	ldr	r2, [r2]
  33c2b2: 4610         	mov	r0, r2
  33c2b4: 4798         	blx	r3
  33c2b6: 4603         	mov	r3, r0
  33c2b8: 9303         	str	r3, [sp, #0xc]
  33c2ba: 9b03         	ldr	r3, [sp, #0xc]
  33c2bc: 2b00         	cmp	r3, #0x0
  33c2be: d006         	beq	0x33c2ce <HUD::onZoom(cocos2d::CCObject*)+0x4a> @ imm = #0xc
  33c2c0: 9b03         	ldr	r3, [sp, #0xc]
  33c2c2: 681b         	ldr	r3, [r3]
  33c2c4: f503 7336    	add.w	r3, r3, #0x2d8
  33c2c8: 681b         	ldr	r3, [r3]
  33c2ca: 9803         	ldr	r0, [sp, #0xc]
  33c2cc: 4798         	blx	r3
  33c2ce: 9801         	ldr	r0, [sp, #0x4]
  33c2d0: f7ff ff96    	bl	0x33c200 <HUD::updateZoomLabel()> @ imm = #-0xd4
  33c2d4: b004         	add	sp, #0x10
  33c2d6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c2d7); words below are literal-pool data ---
  33c2d8: 677a         	str	r2, [r7, #0x74]
  33c2da: 005f         	lsls	r7, r3, #0x1
  33c2dc: d730         	bvc	0x33c340 <HUD::onPlayerSpawn(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  33c2de: ffff d784    	<unknown>
  33c2e2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::onPlayerSpawn
//      file offset 0x33c2e4 (= ELF address; Ghidra 0x34c2e4), 308 bytes, Thumb-2
  33c2e4: b530         	push	{r4, r5, lr}
  33c2e6: b089         	sub	sp, #0x24
  33c2e8: 9001         	str	r0, [sp, #0x4]
  33c2ea: 9100         	str	r1, [sp]
  33c2ec: 4c48         	ldr	r4, [pc, #0x120]        @ 0x33c410 <HUD::onPlayerSpawn(cocos2d::CCObject*)+0x12c>
  33c2ee: 447c         	add	r4, pc
  33c2f0: 9800         	ldr	r0, [sp]
  33c2f2: f7b0 fdaf    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x4f4a2
  33c2f6: 4603         	mov	r3, r0
  33c2f8: 9303         	str	r3, [sp, #0xc]
  33c2fa: 9801         	ldr	r0, [sp, #0x4]
  33c2fc: f7ff ff80    	bl	0x33c200 <HUD::updateZoomLabel()> @ imm = #-0x100
  33c300: f7b7 fbda    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x4884c
  33c304: 4603         	mov	r3, r0
  33c306: 4618         	mov	r0, r3
  33c308: f7bc f822    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #-0x43fbc
  33c30c: 4603         	mov	r3, r0
  33c30e: 9304         	str	r3, [sp, #0x10]
  33c310: f7b7 fbd2    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x4885c
  33c314: 4602         	mov	r2, r0
  33c316: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x33c414 <HUD::onPlayerSpawn(cocos2d::CCObject*)+0x130>
  33c318: 58e3         	ldr	r3, [r4, r3]
  33c31a: 681b         	ldr	r3, [r3]
  33c31c: 4610         	mov	r0, r2
  33c31e: 9904         	ldr	r1, [sp, #0x10]
  33c320: 461a         	mov	r2, r3
  33c322: f7ba fea5    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x452b6
  33c326: 4603         	mov	r3, r0
  33c328: 9305         	str	r3, [sp, #0x14]
  33c32a: 9b01         	ldr	r3, [sp, #0x4]
  33c32c: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c330: 2b00         	cmp	r3, #0x0
  33c332: d011         	beq	0x33c358 <HUD::onPlayerSpawn(cocos2d::CCObject*)+0x74> @ imm = #0x22
  33c334: 9b01         	ldr	r3, [sp, #0x4]
  33c336: 681b         	ldr	r3, [r3]
  33c338: 33f4         	adds	r3, #0xf4
  33c33a: 681b         	ldr	r3, [r3]
  33c33c: 9901         	ldr	r1, [sp, #0x4]
  33c33e: 9a01         	ldr	r2, [sp, #0x4]
  33c340: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33c344: 4608         	mov	r0, r1
  33c346: 4611         	mov	r1, r2
  33c348: 2200         	movs	r2, #0x0
  33c34a: 4798         	blx	r3
  33c34c: 9b01         	ldr	r3, [sp, #0x4]
  33c34e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c352: 4618         	mov	r0, r3
  33c354: f25b fdb0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x25bb60
  33c358: 9805         	ldr	r0, [sp, #0x14]
  33c35a: f29b fe95    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x29bd2a
  33c35e: 4602         	mov	r2, r0
  33c360: 9b01         	ldr	r3, [sp, #0x4]
  33c362: f8c3 2104    	str.w	r2, [r3, #0x104]
  33c366: 9b01         	ldr	r3, [sp, #0x4]
  33c368: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c36c: 4618         	mov	r0, r3
  33c36e: f25b fdbb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25bb76
  33c372: 9b01         	ldr	r3, [sp, #0x4]
  33c374: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c378: 681b         	ldr	r3, [r3]
  33c37a: 3340         	adds	r3, #0x40
  33c37c: 681b         	ldr	r3, [r3]
  33c37e: 9a01         	ldr	r2, [sp, #0x4]
  33c380: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33c384: 4610         	mov	r0, r2
  33c386: f64c 41cd    	movw	r1, #0xcccd
  33c38a: f6c3 61cc    	movt	r1, #0x3ecc
  33c38e: 4798         	blx	r3
  33c390: 9b01         	ldr	r3, [sp, #0x4]
  33c392: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c396: 681b         	ldr	r3, [r3]
  33c398: 337c         	adds	r3, #0x7c
  33c39a: 681c         	ldr	r4, [r3]
  33c39c: 9b01         	ldr	r3, [sp, #0x4]
  33c39e: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  33c3a2: ab06         	add	r3, sp, #0x18
  33c3a4: 4618         	mov	r0, r3
  33c3a6: f04f 517c    	mov.w	r1, #0x3f000000
  33c3aa: f04f 527c    	mov.w	r2, #0x3f000000
  33c3ae: f256 fc9f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25693e
  33c3b2: ab06         	add	r3, sp, #0x18
  33c3b4: 4628         	mov	r0, r5
  33c3b6: 4619         	mov	r1, r3
  33c3b8: 47a0         	blx	r4
  33c3ba: 9b01         	ldr	r3, [sp, #0x4]
  33c3bc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33c3c0: 681b         	ldr	r3, [r3]
  33c3c2: 334c         	adds	r3, #0x4c
  33c3c4: 681b         	ldr	r3, [r3]
  33c3c6: 9a01         	ldr	r2, [sp, #0x4]
  33c3c8: f8d2 1104    	ldr.w	r1, [r2, #0x104]
  33c3cc: 9a01         	ldr	r2, [sp, #0x4]
  33c3ce: f502 72da    	add.w	r2, r2, #0x1b4
  33c3d2: 4608         	mov	r0, r1
  33c3d4: 4611         	mov	r1, r2
  33c3d6: 4798         	blx	r3
  33c3d8: 9b01         	ldr	r3, [sp, #0x4]
  33c3da: 681b         	ldr	r3, [r3]
  33c3dc: 33cc         	adds	r3, #0xcc
  33c3de: 681b         	ldr	r3, [r3]
  33c3e0: 9901         	ldr	r1, [sp, #0x4]
  33c3e2: 9a01         	ldr	r2, [sp, #0x4]
  33c3e4: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33c3e8: 4608         	mov	r0, r1
  33c3ea: 4611         	mov	r1, r2
  33c3ec: 2200         	movs	r2, #0x0
  33c3ee: 4798         	blx	r3
  33c3f0: 9801         	ldr	r0, [sp, #0x4]
  33c3f2: 9903         	ldr	r1, [sp, #0xc]
  33c3f4: f000 f810    	bl	0x33c418 <HUD::updateLifeCount(int)> @ imm = #0x20
  33c3f8: 9801         	ldr	r0, [sp, #0x4]
  33c3fa: 2100         	movs	r1, #0x0
  33c3fc: f7ff fe7c    	bl	0x33c0f8 <HUD::onGrenadeChange(cocos2d::CCObject*)> @ imm = #-0x308
  33c400: 9b01         	ldr	r3, [sp, #0x4]
  33c402: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  33c406: 4618         	mov	r0, r3
  33c408: f012 f838    	bl	0x34e47c <Joypad::cancelTouches()> @ imm = #0x12070
  33c40c: b009         	add	sp, #0x24
  33c40e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33c40f); words below are literal-pool data ---
  33c410: 671a         	str	r2, [r3, #0x70]
  33c412: 005f         	lsls	r7, r3, #0x1
  33c414: d8b0         	bhi	0x33c378 <HUD::onPlayerSpawn(cocos2d::CCObject*)+0x94> @ imm = #-0xa0
  33c416: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::updateLifeCount
//      file offset 0x33c418 (= ELF address; Ghidra 0x34c418), 64 bytes, Thumb-2
  33c418: b530         	push	{r4, r5, lr}
  33c41a: b083         	sub	sp, #0xc
  33c41c: 9001         	str	r0, [sp, #0x4]
  33c41e: 9100         	str	r1, [sp]
  33c420: 9b01         	ldr	r3, [sp, #0x4]
  33c422: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33c426: 681b         	ldr	r3, [r3]
  33c428: f503 73fc    	add.w	r3, r3, #0x1f8
  33c42c: 681c         	ldr	r4, [r3]
  33c42e: 9b01         	ldr	r3, [sp, #0x4]
  33c430: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  33c434: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x33c454 <HUD::updateLifeCount(int)+0x3c>
  33c436: 447b         	add	r3, pc
  33c438: 4618         	mov	r0, r3
  33c43a: 9900         	ldr	r1, [sp]
  33c43c: f25d fb68    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x25d6d0
  33c440: 4603         	mov	r3, r0
  33c442: 4618         	mov	r0, r3
  33c444: f25d fa70    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25d4e0
  33c448: 4603         	mov	r3, r0
  33c44a: 4628         	mov	r0, r5
  33c44c: 4619         	mov	r1, r3
  33c44e: 47a0         	blx	r4
  33c450: b003         	add	sp, #0xc
  33c452: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33c453); words below are literal-pool data ---
  33c454: d65a         	bvs	0x33c50c <HUD::onReload(cocos2d::CCObject*)+0xb4> @ imm = #0xb4
  33c456: 0048         	lsls	r0, r1, #0x1

// ==== HUD::onReload
//      file offset 0x33c458 (= ELF address; Ghidra 0x34c458), 204 bytes, Thumb-2
  33c458: b510         	push	{r4, lr}
  33c45a: b084         	sub	sp, #0x10
  33c45c: 9001         	str	r0, [sp, #0x4]
  33c45e: 9100         	str	r1, [sp]
  33c460: 4c2d         	ldr	r4, [pc, #0xb4]         @ 0x33c518 <HUD::onReload(cocos2d::CCObject*)+0xc0>
  33c462: 447c         	add	r4, pc
  33c464: 9b01         	ldr	r3, [sp, #0x4]
  33c466: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33c46a: 681b         	ldr	r3, [r3]
  33c46c: 3394         	adds	r3, #0x94
  33c46e: 681b         	ldr	r3, [r3]
  33c470: 9a01         	ldr	r2, [sp, #0x4]
  33c472: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  33c476: 4610         	mov	r0, r2
  33c478: 4798         	blx	r3
  33c47a: 4603         	mov	r3, r0
  33c47c: f083 0301    	eor	r3, r3, #0x1
  33c480: b2db         	uxtb	r3, r3
  33c482: 2b00         	cmp	r3, #0x0
  33c484: d000         	beq	0x33c488 <HUD::onReload(cocos2d::CCObject*)+0x30> @ imm = #0x0
  33c486: e044         	b	0x33c512 <HUD::onReload(cocos2d::CCObject*)+0xba> @ imm = #0x88
  33c488: 4b24         	ldr	r3, [pc, #0x90]         @ 0x33c51c <HUD::onReload(cocos2d::CCObject*)+0xc4>
  33c48a: 58e3         	ldr	r3, [r4, r3]
  33c48c: 681b         	ldr	r3, [r3]
  33c48e: 681b         	ldr	r3, [r3]
  33c490: f503 7319    	add.w	r3, r3, #0x264
  33c494: 681b         	ldr	r3, [r3]
  33c496: 4a21         	ldr	r2, [pc, #0x84]         @ 0x33c51c <HUD::onReload(cocos2d::CCObject*)+0xc4>
  33c498: 58a2         	ldr	r2, [r4, r2]
  33c49a: 6812         	ldr	r2, [r2]
  33c49c: 4610         	mov	r0, r2
  33c49e: 4798         	blx	r3
  33c4a0: 4603         	mov	r3, r0
  33c4a2: f083 0301    	eor	r3, r3, #0x1
  33c4a6: b2db         	uxtb	r3, r3
  33c4a8: 2b00         	cmp	r3, #0x0
  33c4aa: d00b         	beq	0x33c4c4 <HUD::onReload(cocos2d::CCObject*)+0x6c> @ imm = #0x16
  33c4ac: 9b01         	ldr	r3, [sp, #0x4]
  33c4ae: ed93 7a65    	vldr	s14, [r3, #404]
  33c4b2: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  33c4b6: eeb4 7ae7    	vcmpe.f32	s14, s15
  33c4ba: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33c4be: dd01         	ble	0x33c4c4 <HUD::onReload(cocos2d::CCObject*)+0x6c> @ imm = #0x2
  33c4c0: 2301         	movs	r3, #0x1
  33c4c2: e000         	b	0x33c4c6 <HUD::onReload(cocos2d::CCObject*)+0x6e> @ imm = #0x0
  33c4c4: 2300         	movs	r3, #0x0
  33c4c6: 2b00         	cmp	r3, #0x0
  33c4c8: d023         	beq	0x33c512 <HUD::onReload(cocos2d::CCObject*)+0xba> @ imm = #0x46
  33c4ca: 4b15         	ldr	r3, [pc, #0x54]         @ 0x33c520 <HUD::onReload(cocos2d::CCObject*)+0xc8>
  33c4cc: 58e3         	ldr	r3, [r4, r3]
  33c4ce: 681b         	ldr	r3, [r3]
  33c4d0: 4618         	mov	r0, r3
  33c4d2: 2104         	movs	r1, #0x4
  33c4d4: f0bb fc74    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xbb8e8
  33c4d8: 4b10         	ldr	r3, [pc, #0x40]         @ 0x33c51c <HUD::onReload(cocos2d::CCObject*)+0xc4>
  33c4da: 58e3         	ldr	r3, [r4, r3]
  33c4dc: 681b         	ldr	r3, [r3]
  33c4de: 681b         	ldr	r3, [r3]
  33c4e0: f503 73fa    	add.w	r3, r3, #0x1f4
  33c4e4: 681b         	ldr	r3, [r3]
  33c4e6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x33c51c <HUD::onReload(cocos2d::CCObject*)+0xc4>
  33c4e8: 58a2         	ldr	r2, [r4, r2]
  33c4ea: 6812         	ldr	r2, [r2]
  33c4ec: 4610         	mov	r0, r2
  33c4ee: 4798         	blx	r3
  33c4f0: 4603         	mov	r3, r0
  33c4f2: 9303         	str	r3, [sp, #0xc]
  33c4f4: 9b03         	ldr	r3, [sp, #0xc]
  33c4f6: 2b00         	cmp	r3, #0x0
  33c4f8: d006         	beq	0x33c508 <HUD::onReload(cocos2d::CCObject*)+0xb0> @ imm = #0xc
  33c4fa: 9b03         	ldr	r3, [sp, #0xc]
  33c4fc: 681b         	ldr	r3, [r3]
  33c4fe: f503 7323    	add.w	r3, r3, #0x28c
  33c502: 681b         	ldr	r3, [r3]
  33c504: 9803         	ldr	r0, [sp, #0xc]
  33c506: 4798         	blx	r3
  33c508: 9b01         	ldr	r3, [sp, #0x4]
  33c50a: f04f 0200    	mov.w	r2, #0x0
  33c50e: f8c3 2194    	str.w	r2, [r3, #0x194]
  33c512: b004         	add	sp, #0x10
  33c514: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c515); words below are literal-pool data ---
  33c516: bf00         	nop
  33c518: 65a6         	str	r6, [r4, #0x58]
  33c51a: 005f         	lsls	r7, r3, #0x1
  33c51c: d784         	bvc	0x33c428 <HUD::updateLifeCount(int)+0x10> @ imm = #-0xf8
  33c51e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  33c522: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::onWeaponSwitch
//      file offset 0x33c524 (= ELF address; Ghidra 0x34c524), 176 bytes, Thumb-2
  33c524: b530         	push	{r4, r5, lr}
  33c526: b085         	sub	sp, #0x14
  33c528: 9001         	str	r0, [sp, #0x4]
  33c52a: 9100         	str	r1, [sp]
  33c52c: 4c26         	ldr	r4, [pc, #0x98]         @ 0x33c5c8 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xa4>
  33c52e: 447c         	add	r4, pc
  33c530: 4b26         	ldr	r3, [pc, #0x98]         @ 0x33c5cc <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xa8>
  33c532: 58e3         	ldr	r3, [r4, r3]
  33c534: 681b         	ldr	r3, [r3]
  33c536: 4618         	mov	r0, r3
  33c538: 2104         	movs	r1, #0x4
  33c53a: f0bb fc41    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xbb882
  33c53e: 4b24         	ldr	r3, [pc, #0x90]         @ 0x33c5d0 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xac>
  33c540: 58e3         	ldr	r3, [r4, r3]
  33c542: 681b         	ldr	r3, [r3]
  33c544: 681b         	ldr	r3, [r3]
  33c546: f503 732b    	add.w	r3, r3, #0x2ac
  33c54a: 681b         	ldr	r3, [r3]
  33c54c: 4a20         	ldr	r2, [pc, #0x80]         @ 0x33c5d0 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xac>
  33c54e: 58a2         	ldr	r2, [r4, r2]
  33c550: 6812         	ldr	r2, [r2]
  33c552: 4610         	mov	r0, r2
  33c554: 4798         	blx	r3
  33c556: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x33c5d0 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xac>
  33c558: 58e3         	ldr	r3, [r4, r3]
  33c55a: 681b         	ldr	r3, [r3]
  33c55c: 681b         	ldr	r3, [r3]
  33c55e: f503 73fa    	add.w	r3, r3, #0x1f4
  33c562: 681b         	ldr	r3, [r3]
  33c564: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x33c5d0 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xac>
  33c566: 58a2         	ldr	r2, [r4, r2]
  33c568: 6812         	ldr	r2, [r2]
  33c56a: 4610         	mov	r0, r2
  33c56c: 4798         	blx	r3
  33c56e: 4603         	mov	r3, r0
  33c570: 9303         	str	r3, [sp, #0xc]
  33c572: 9b03         	ldr	r3, [sp, #0xc]
  33c574: 2b00         	cmp	r3, #0x0
  33c576: d025         	beq	0x33c5c4 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xa0> @ imm = #0x4a
  33c578: 9b01         	ldr	r3, [sp, #0x4]
  33c57a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33c57e: 681b         	ldr	r3, [r3]
  33c580: f503 73fc    	add.w	r3, r3, #0x1f8
  33c584: 681c         	ldr	r4, [r3]
  33c586: 9b01         	ldr	r3, [sp, #0x4]
  33c588: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  33c58c: 9b03         	ldr	r3, [sp, #0xc]
  33c58e: 681b         	ldr	r3, [r3]
  33c590: f503 7335    	add.w	r3, r3, #0x2d4
  33c594: 681b         	ldr	r3, [r3]
  33c596: aa02         	add	r2, sp, #0x8
  33c598: 4610         	mov	r0, r2
  33c59a: 9903         	ldr	r1, [sp, #0xc]
  33c59c: 4798         	blx	r3
  33c59e: ab02         	add	r3, sp, #0x8
  33c5a0: 4618         	mov	r0, r3
  33c5a2: f078 f6ad    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x478d5a
  33c5a6: 4603         	mov	r3, r0
  33c5a8: 4628         	mov	r0, r5
  33c5aa: 4619         	mov	r1, r3
  33c5ac: 47a0         	blx	r4
  33c5ae: ab02         	add	r3, sp, #0x8
  33c5b0: 4618         	mov	r0, r3
  33c5b2: f079 f1af    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47935e
  33c5b6: e005         	b	0x33c5c4 <HUD::onWeaponSwitch(cocos2d::CCObject*)+0xa0> @ imm = #0xa
  33c5b8: ab02         	add	r3, sp, #0x8
  33c5ba: 4618         	mov	r0, r3
  33c5bc: f079 f1aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x479354
  33c5c0: f04b f574    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44bae8
  33c5c4: b005         	add	sp, #0x14
  33c5c6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33c5c7); words below are literal-pool data ---
  33c5c8: 64da         	str	r2, [r3, #0x4c]
  33c5ca: 005f         	lsls	r7, r3, #0x1
  33c5cc: d730         	bvc	0x33c630 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  33c5ce: ffff d784    	<unknown>
  33c5d2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HUD::onGrenadeSwitch
//      file offset 0x33c5d4 (= ELF address; Ghidra 0x34c5d4), 100 bytes, Thumb-2
  33c5d4: b510         	push	{r4, lr}
  33c5d6: b082         	sub	sp, #0x8
  33c5d8: 9001         	str	r0, [sp, #0x4]
  33c5da: 9100         	str	r1, [sp]
  33c5dc: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x33c62c <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x58>
  33c5de: 447c         	add	r4, pc
  33c5e0: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x33c630 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x5c>
  33c5e2: 58e3         	ldr	r3, [r4, r3]
  33c5e4: 681b         	ldr	r3, [r3]
  33c5e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  33c5ea: 4618         	mov	r0, r3
  33c5ec: f25d fd78    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x25daf0
  33c5f0: 4603         	mov	r3, r0
  33c5f2: 2b01         	cmp	r3, #0x1
  33c5f4: bf94         	ite	ls
  33c5f6: 2300         	movls	r3, #0x0
  33c5f8: 2301         	movhi	r3, #0x1
  33c5fa: b2db         	uxtb	r3, r3
  33c5fc: 2b00         	cmp	r3, #0x0
  33c5fe: d012         	beq	0x33c626 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x52> @ imm = #0x24
  33c600: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x33c634 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x60>
  33c602: 58e3         	ldr	r3, [r4, r3]
  33c604: 681b         	ldr	r3, [r3]
  33c606: 4618         	mov	r0, r3
  33c608: 2104         	movs	r1, #0x4
  33c60a: f0bb fbd9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xbb7b2
  33c60e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x33c630 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x5c>
  33c610: 58e3         	ldr	r3, [r4, r3]
  33c612: 681b         	ldr	r3, [r3]
  33c614: 681b         	ldr	r3, [r3]
  33c616: f503 732c    	add.w	r3, r3, #0x2b0
  33c61a: 681b         	ldr	r3, [r3]
  33c61c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x33c630 <HUD::onGrenadeSwitch(cocos2d::CCObject*)+0x5c>
  33c61e: 58a2         	ldr	r2, [r4, r2]
  33c620: 6812         	ldr	r2, [r2]
  33c622: 4610         	mov	r0, r2
  33c624: 4798         	blx	r3
  33c626: b002         	add	sp, #0x8
  33c628: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c629); words below are literal-pool data ---
  33c62a: bf00         	nop
  33c62c: 642a         	str	r2, [r5, #0x40]
  33c62e: 005f         	lsls	r7, r3, #0x1
  33c630: d784         	bvc	0x33c53c <HUD::onWeaponSwitch(cocos2d::CCObject*)+0x18> @ imm = #-0xf8
  33c632: ffff d730    	vqshl.u32	d29, d16, #0x1f
  33c636: ffff b570    	<unknown>

// ==== HUD::onPickUpWeapon
//      file offset 0x33c638 (= ELF address; Ghidra 0x34c638), 340 bytes, Thumb-2
  33c638: b570         	push	{r4, r5, r6, lr}
  33c63a: b086         	sub	sp, #0x18
  33c63c: 9001         	str	r0, [sp, #0x4]
  33c63e: 9100         	str	r1, [sp]
  33c640: 4e4d         	ldr	r6, [pc, #0x134]        @ 0x33c778 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x140>
  33c642: 447e         	add	r6, pc
  33c644: 9b01         	ldr	r3, [sp, #0x4]
  33c646: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33c64a: 681b         	ldr	r3, [r3]
  33c64c: 3394         	adds	r3, #0x94
  33c64e: 681b         	ldr	r3, [r3]
  33c650: 9a01         	ldr	r2, [sp, #0x4]
  33c652: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33c656: 4610         	mov	r0, r2
  33c658: 4798         	blx	r3
  33c65a: 4603         	mov	r3, r0
  33c65c: f083 0301    	eor	r3, r3, #0x1
  33c660: b2db         	uxtb	r3, r3
  33c662: 2b00         	cmp	r3, #0x0
  33c664: d000         	beq	0x33c668 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x30> @ imm = #0x0
  33c666: e084         	b	0x33c772 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x13a> @ imm = #0x108
  33c668: 2400         	movs	r4, #0x0
  33c66a: 2500         	movs	r5, #0x0
  33c66c: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x33c77c <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x144>
  33c66e: 58f3         	ldr	r3, [r6, r3]
  33c670: 681b         	ldr	r3, [r3]
  33c672: 2b04         	cmp	r3, #0x4
  33c674: d125         	bne	0x33c6c2 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x8a> @ imm = #0x4a
  33c676: ab02         	add	r3, sp, #0x8
  33c678: 4618         	mov	r0, r3
  33c67a: f04d f6bb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44dd76
  33c67e: 2401         	movs	r4, #0x1
  33c680: aa04         	add	r2, sp, #0x10
  33c682: ab02         	add	r3, sp, #0x8
  33c684: 4610         	mov	r0, r2
  33c686: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x33c780 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x148>
  33c688: 447a         	add	r2, pc
  33c68a: 4611         	mov	r1, r2
  33c68c: 461a         	mov	r2, r3
  33c68e: f07a f1e7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47a3ce
  33c692: 2501         	movs	r5, #0x1
  33c694: ab04         	add	r3, sp, #0x10
  33c696: 4618         	mov	r0, r3
  33c698: f0f5 f862    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xf50c4
  33c69c: 4603         	mov	r3, r0
  33c69e: 2b00         	cmp	r3, #0x0
  33c6a0: d10f         	bne	0x33c6c2 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x8a> @ imm = #0x1e
  33c6a2: f0db f96f    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0xdb2de
  33c6a6: 4602         	mov	r2, r0
  33c6a8: 9b01         	ldr	r3, [sp, #0x4]
  33c6aa: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  33c6ae: 4610         	mov	r0, r2
  33c6b0: 4619         	mov	r1, r3
  33c6b2: f0dc f94d    	bl	0x418950 <WeaponFactory::isProPackWeapon(ItemType)> @ imm = #0xdc29a
  33c6b6: 4603         	mov	r3, r0
  33c6b8: f083 0301    	eor	r3, r3, #0x1
  33c6bc: b2db         	uxtb	r3, r3
  33c6be: 2b00         	cmp	r3, #0x0
  33c6c0: d001         	beq	0x33c6c6 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x8e> @ imm = #0x2
  33c6c2: 2301         	movs	r3, #0x1
  33c6c4: e000         	b	0x33c6c8 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x90> @ imm = #0x0
  33c6c6: 2300         	movs	r3, #0x0
  33c6c8: 461e         	mov	r6, r3
  33c6ca: 2d00         	cmp	r5, #0x0
  33c6cc: d003         	beq	0x33c6d6 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x9e> @ imm = #0x6
  33c6ce: ab04         	add	r3, sp, #0x10
  33c6d0: 4618         	mov	r0, r3
  33c6d2: f079 f11f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47923e
  33c6d6: 2c00         	cmp	r4, #0x0
  33c6d8: d004         	beq	0x33c6e4 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0xac> @ imm = #0x8
  33c6da: bf00         	nop
  33c6dc: ab02         	add	r3, sp, #0x8
  33c6de: 4618         	mov	r0, r3
  33c6e0: f04d f68c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44dd18
  33c6e4: 2e00         	cmp	r6, #0x0
  33c6e6: d024         	beq	0x33c732 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0xfa> @ imm = #0x48
  33c6e8: f2a3 ffe2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a3fc4
  33c6ec: 4604         	mov	r4, r0
  33c6ee: ab03         	add	r3, sp, #0xc
  33c6f0: 4618         	mov	r0, r3
  33c6f2: f04d f67f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44dcfe
  33c6f6: aa05         	add	r2, sp, #0x14
  33c6f8: ab03         	add	r3, sp, #0xc
  33c6fa: 4610         	mov	r0, r2
  33c6fc: 4a21         	ldr	r2, [pc, #0x84]         @ 0x33c784 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x14c>
  33c6fe: 447a         	add	r2, pc
  33c700: 4611         	mov	r1, r2
  33c702: 461a         	mov	r2, r3
  33c704: f07a f1ac    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47a358
  33c708: ab05         	add	r3, sp, #0x14
  33c70a: 4618         	mov	r0, r3
  33c70c: f25d f996    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25d32c
  33c710: 4603         	mov	r3, r0
  33c712: 4620         	mov	r0, r4
  33c714: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x33c788 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x150>
  33c716: 447a         	add	r2, pc
  33c718: 4611         	mov	r1, r2
  33c71a: 461a         	mov	r2, r3
  33c71c: f2a4 fa06    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2a440c
  33c720: ab05         	add	r3, sp, #0x14
  33c722: 4618         	mov	r0, r3
  33c724: f079 f0f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4791ec
  33c728: ab03         	add	r3, sp, #0xc
  33c72a: 4618         	mov	r0, r3
  33c72c: f04d f666    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44dccc
  33c730: e01f         	b	0x33c772 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x13a> @ imm = #0x3e
  33c732: 9801         	ldr	r0, [sp, #0x4]
  33c734: f7ff fba4    	bl	0x33be80 <HUD::presentProPackAlertWeapon()> @ imm = #-0x8b8
  33c738: e01b         	b	0x33c772 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x13a> @ imm = #0x36
  33c73a: 2d00         	cmp	r5, #0x0
  33c73c: d003         	beq	0x33c746 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x10e> @ imm = #0x6
  33c73e: ab04         	add	r3, sp, #0x10
  33c740: 4618         	mov	r0, r3
  33c742: f079 f0e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4791ce
  33c746: 2c00         	cmp	r4, #0x0
  33c748: d005         	beq	0x33c756 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x11e> @ imm = #0xa
  33c74a: bf00         	nop
  33c74c: ab02         	add	r3, sp, #0x8
  33c74e: 4618         	mov	r0, r3
  33c750: f04d f654    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44dca8
  33c754: e000         	b	0x33c758 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x120> @ imm = #0x0
  33c756: bf00         	nop
  33c758: f04b f4a8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44b950
  33c75c: ab05         	add	r3, sp, #0x14
  33c75e: 4618         	mov	r0, r3
  33c760: f079 f0d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4791b0
  33c764: e7ff         	b	0x33c766 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0x12e> @ imm = #-0x2
  33c766: ab03         	add	r3, sp, #0xc
  33c768: 4618         	mov	r0, r3
  33c76a: f04d f647    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44dc8e
  33c76e: f04b f49d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44b93a
  33c772: b006         	add	sp, #0x18
  33c774: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33c775); words below are literal-pool data ---
  33c776: bf00         	nop
  33c778: 63c6         	str	r6, [r0, #0x3c]
  33c77a: 005f         	lsls	r7, r3, #0x1
  33c77c: d838         	bhi	0x33c7f0 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x64> @ imm = #0x70
  33c77e: ffff d338    	vrsra.u32	d29, d24, #0x1
  33c782: 0048         	lsls	r0, r1, #0x1
  33c784: d0d6         	beq	0x33c734 <HUD::onPickUpWeapon(cocos2d::CCObject*)+0xfc> @ imm = #-0x54
  33c786: 0048         	lsls	r0, r1, #0x1
  33c788: d37e         	blo	0x33c888 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0xfc> @ imm = #0xfc
  33c78a: 0048         	lsls	r0, r1, #0x1

// ==== HUD::onPickUpDualWeapon
//      file offset 0x33c78c (= ELF address; Ghidra 0x34c78c), 308 bytes, Thumb-2
  33c78c: b570         	push	{r4, r5, r6, lr}
  33c78e: b086         	sub	sp, #0x18
  33c790: 9001         	str	r0, [sp, #0x4]
  33c792: 9100         	str	r1, [sp]
  33c794: 4e45         	ldr	r6, [pc, #0x114]        @ 0x33c8ac <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x120>
  33c796: 447e         	add	r6, pc
  33c798: 9b01         	ldr	r3, [sp, #0x4]
  33c79a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33c79e: 681b         	ldr	r3, [r3]
  33c7a0: 3394         	adds	r3, #0x94
  33c7a2: 681b         	ldr	r3, [r3]
  33c7a4: 9a01         	ldr	r2, [sp, #0x4]
  33c7a6: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33c7aa: 4610         	mov	r0, r2
  33c7ac: 4798         	blx	r3
  33c7ae: 4603         	mov	r3, r0
  33c7b0: f083 0301    	eor	r3, r3, #0x1
  33c7b4: b2db         	uxtb	r3, r3
  33c7b6: 2b00         	cmp	r3, #0x0
  33c7b8: d000         	beq	0x33c7bc <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x30> @ imm = #0x0
  33c7ba: e074         	b	0x33c8a6 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x11a> @ imm = #0xe8
  33c7bc: 2400         	movs	r4, #0x0
  33c7be: 2500         	movs	r5, #0x0
  33c7c0: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x33c8b0 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x124>
  33c7c2: 58f3         	ldr	r3, [r6, r3]
  33c7c4: 681b         	ldr	r3, [r3]
  33c7c6: 2b04         	cmp	r3, #0x4
  33c7c8: d115         	bne	0x33c7f6 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x6a> @ imm = #0x2a
  33c7ca: ab02         	add	r3, sp, #0x8
  33c7cc: 4618         	mov	r0, r3
  33c7ce: f04d f611    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44dc22
  33c7d2: 2401         	movs	r4, #0x1
  33c7d4: aa04         	add	r2, sp, #0x10
  33c7d6: ab02         	add	r3, sp, #0x8
  33c7d8: 4610         	mov	r0, r2
  33c7da: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x33c8b4 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x128>
  33c7dc: 447a         	add	r2, pc
  33c7de: 4611         	mov	r1, r2
  33c7e0: 461a         	mov	r2, r3
  33c7e2: f07a f13d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47a27a
  33c7e6: 2501         	movs	r5, #0x1
  33c7e8: ab04         	add	r3, sp, #0x10
  33c7ea: 4618         	mov	r0, r3
  33c7ec: f0f4 ffb8    	bl	0x431760 <InAppPurchaseBridge::isProductPurchased(std::string)> @ imm = #0xf4f70
  33c7f0: 4603         	mov	r3, r0
  33c7f2: 2b00         	cmp	r3, #0x0
  33c7f4: d001         	beq	0x33c7fa <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x6e> @ imm = #0x2
  33c7f6: 2301         	movs	r3, #0x1
  33c7f8: e000         	b	0x33c7fc <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x70> @ imm = #0x0
  33c7fa: 2300         	movs	r3, #0x0
  33c7fc: 461e         	mov	r6, r3
  33c7fe: 2d00         	cmp	r5, #0x0
  33c800: d003         	beq	0x33c80a <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x7e> @ imm = #0x6
  33c802: ab04         	add	r3, sp, #0x10
  33c804: 4618         	mov	r0, r3
  33c806: f079 f085    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47910a
  33c80a: 2c00         	cmp	r4, #0x0
  33c80c: d004         	beq	0x33c818 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x8c> @ imm = #0x8
  33c80e: bf00         	nop
  33c810: ab02         	add	r3, sp, #0x8
  33c812: 4618         	mov	r0, r3
  33c814: f04d f5f2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44dbe4
  33c818: 2e00         	cmp	r6, #0x0
  33c81a: d024         	beq	0x33c866 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0xda> @ imm = #0x48
  33c81c: f2a3 ff48    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a3e90
  33c820: 4604         	mov	r4, r0
  33c822: ab03         	add	r3, sp, #0xc
  33c824: 4618         	mov	r0, r3
  33c826: f04d f5e5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44dbca
  33c82a: aa05         	add	r2, sp, #0x14
  33c82c: ab03         	add	r3, sp, #0xc
  33c82e: 4610         	mov	r0, r2
  33c830: 4a21         	ldr	r2, [pc, #0x84]         @ 0x33c8b8 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x12c>
  33c832: 447a         	add	r2, pc
  33c834: 4611         	mov	r1, r2
  33c836: 461a         	mov	r2, r3
  33c838: f07a f112    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x47a224
  33c83c: ab05         	add	r3, sp, #0x14
  33c83e: 4618         	mov	r0, r3
  33c840: f25d f8fc    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25d1f8
  33c844: 4603         	mov	r3, r0
  33c846: 4620         	mov	r0, r4
  33c848: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x33c8bc <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x130>
  33c84a: 447a         	add	r2, pc
  33c84c: 4611         	mov	r1, r2
  33c84e: 461a         	mov	r2, r3
  33c850: f2a4 f96c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2a42d8
  33c854: ab05         	add	r3, sp, #0x14
  33c856: 4618         	mov	r0, r3
  33c858: f079 f05c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4790b8
  33c85c: ab03         	add	r3, sp, #0xc
  33c85e: 4618         	mov	r0, r3
  33c860: f04d f5cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44db98
  33c864: e01f         	b	0x33c8a6 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x11a> @ imm = #0x3e
  33c866: 9801         	ldr	r0, [sp, #0x4]
  33c868: f7ff fa26    	bl	0x33bcb8 <HUD::presentProPackAlertDual()> @ imm = #-0xbb4
  33c86c: e01b         	b	0x33c8a6 <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x11a> @ imm = #0x36
  33c86e: 2d00         	cmp	r5, #0x0
  33c870: d003         	beq	0x33c87a <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0xee> @ imm = #0x6
  33c872: ab04         	add	r3, sp, #0x10
  33c874: 4618         	mov	r0, r3
  33c876: f079 f04d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47909a
  33c87a: 2c00         	cmp	r4, #0x0
  33c87c: d005         	beq	0x33c88a <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0xfe> @ imm = #0xa
  33c87e: bf00         	nop
  33c880: ab02         	add	r3, sp, #0x8
  33c882: 4618         	mov	r0, r3
  33c884: f04d f5ba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44db74
  33c888: e000         	b	0x33c88c <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x100> @ imm = #0x0
  33c88a: bf00         	nop
  33c88c: f04b f40e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44b81c
  33c890: ab05         	add	r3, sp, #0x14
  33c892: 4618         	mov	r0, r3
  33c894: f079 f03e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47907c
  33c898: e7ff         	b	0x33c89a <HUD::onPickUpDualWeapon(cocos2d::CCObject*)+0x10e> @ imm = #-0x2
  33c89a: ab03         	add	r3, sp, #0xc
  33c89c: 4618         	mov	r0, r3
  33c89e: f04d f5ad    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44db5a
  33c8a2: f04b f403    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44b806
  33c8a6: b006         	add	sp, #0x18
  33c8a8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33c8a9); words below are literal-pool data ---
  33c8aa: bf00         	nop
  33c8ac: 6272         	str	r2, [r6, #0x24]
  33c8ae: 005f         	lsls	r7, r3, #0x1
  33c8b0: d838         	bhi	0x33c924 <HUD::onScoreScreen()+0x64> @ imm = #0x70
  33c8b2: ffff d1e4    	<unknown>
  33c8b6: 0048         	lsls	r0, r1, #0x1
  33c8b8: d272         	bhs	0x33c9a0 <HUD::onMenuScreen(cocos2d::CCObject*)+0x54> @ imm = #0xe4
  33c8ba: 0048         	lsls	r0, r1, #0x1
  33c8bc: d24a         	bhs	0x33c954 <HUD::onMenuScreen(cocos2d::CCObject*)+0x8> @ imm = #0x94
  33c8be: 0048         	lsls	r0, r1, #0x1

// ==== HUD::onScoreScreen
//      file offset 0x33c8c0 (= ELF address; Ghidra 0x34c8c0), 140 bytes, Thumb-2
  33c8c0: b510         	push	{r4, lr}
  33c8c2: b082         	sub	sp, #0x8
  33c8c4: 9001         	str	r0, [sp, #0x4]
  33c8c6: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x33c940 <HUD::onScoreScreen()+0x80>
  33c8c8: 447c         	add	r4, pc
  33c8ca: 9b01         	ldr	r3, [sp, #0x4]
  33c8cc: f893 31c5    	ldrb.w	r3, [r3, #0x1c5]
  33c8d0: 2b00         	cmp	r3, #0x0
  33c8d2: d000         	beq	0x33c8d6 <HUD::onScoreScreen()+0x16> @ imm = #0x0
  33c8d4: e032         	b	0x33c93c <HUD::onScoreScreen()+0x7c> @ imm = #0x64
  33c8d6: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x33c944 <HUD::onScoreScreen()+0x84>
  33c8d8: 58e3         	ldr	r3, [r4, r3]
  33c8da: 681b         	ldr	r3, [r3]
  33c8dc: 4618         	mov	r0, r3
  33c8de: f0b0 f9ff    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xb03fe
  33c8e2: 4603         	mov	r3, r0
  33c8e4: 2b00         	cmp	r3, #0x0
  33c8e6: d000         	beq	0x33c8ea <HUD::onScoreScreen()+0x2a> @ imm = #0x0
  33c8e8: e028         	b	0x33c93c <HUD::onScoreScreen()+0x7c> @ imm = #0x50
  33c8ea: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x33c948 <HUD::onScoreScreen()+0x88>
  33c8ec: 58e3         	ldr	r3, [r4, r3]
  33c8ee: 681b         	ldr	r3, [r3]
  33c8f0: 4618         	mov	r0, r3
  33c8f2: 210d         	movs	r1, #0xd
  33c8f4: f0bb fa64    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xbb4c8
  33c8f8: 9b01         	ldr	r3, [sp, #0x4]
  33c8fa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33c8fe: 681b         	ldr	r3, [r3]
  33c900: 3394         	adds	r3, #0x94
  33c902: 681b         	ldr	r3, [r3]
  33c904: 9a01         	ldr	r2, [sp, #0x4]
  33c906: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  33c90a: 4610         	mov	r0, r2
  33c90c: 4798         	blx	r3
  33c90e: 4603         	mov	r3, r0
  33c910: f083 0301    	eor	r3, r3, #0x1
  33c914: b2db         	uxtb	r3, r3
  33c916: 2b00         	cmp	r3, #0x0
  33c918: d008         	beq	0x33c92c <HUD::onScoreScreen()+0x6c> @ imm = #0x10
  33c91a: 9b01         	ldr	r3, [sp, #0x4]
  33c91c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33c920: 4618         	mov	r0, r3
  33c922: 2101         	movs	r1, #0x1
  33c924: 2201         	movs	r2, #0x1
  33c926: f09a fafb    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x9a5f6
  33c92a: e007         	b	0x33c93c <HUD::onScoreScreen()+0x7c> @ imm = #0xe
  33c92c: 9b01         	ldr	r3, [sp, #0x4]
  33c92e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33c932: 4618         	mov	r0, r3
  33c934: 2100         	movs	r1, #0x0
  33c936: 2200         	movs	r2, #0x0
  33c938: f09a faf2    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x9a5e4
  33c93c: b002         	add	sp, #0x8
  33c93e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33c93f); words below are literal-pool data ---
  33c940: 6140         	str	r0, [r0, #0x14]
  33c942: 005f         	lsls	r7, r3, #0x1
  33c944: d910         	bls	0x33c968 <HUD::onMenuScreen(cocos2d::CCObject*)+0x1c> @ imm = #0x20
  33c946: ffff d730    	vqshl.u32	d29, d16, #0x1f
  33c94a: ffff b500    	<unknown>

// ==== HUD::onMenuScreen
//      file offset 0x33c94c (= ELF address; Ghidra 0x34c94c), 268 bytes, Thumb-2
  33c94c: b500         	push	{lr}
  33c94e: b083         	sub	sp, #0xc
  33c950: 9001         	str	r0, [sp, #0x4]
  33c952: 9100         	str	r1, [sp]
  33c954: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x33ca48 <HUD::onMenuScreen(cocos2d::CCObject*)+0xfc>
  33c956: 447b         	add	r3, pc
  33c958: 9a01         	ldr	r2, [sp, #0x4]
  33c95a: f892 21c5    	ldrb.w	r2, [r2, #0x1c5]
  33c95e: 2a00         	cmp	r2, #0x0
  33c960: d000         	beq	0x33c964 <HUD::onMenuScreen(cocos2d::CCObject*)+0x18> @ imm = #0x0
  33c962: e06d         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0xda
  33c964: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x33ca4c <HUD::onMenuScreen(cocos2d::CCObject*)+0x100>
  33c966: 589a         	ldr	r2, [r3, r2]
  33c968: 6812         	ldr	r2, [r2]
  33c96a: 2a05         	cmp	r2, #0x5
  33c96c: d867         	bhi	0x33ca3e <HUD::onMenuScreen(cocos2d::CCObject*)+0xf2> @ imm = #0xce
  33c96e: a002         	adr	r0, #8 <HUD::onMenuScreen(cocos2d::CCObject*)+0x28>
  33c970: f850 1022    	ldr.w	r1, [r0, r2, lsl #2]
  33c974: 4408         	add	r0, r1
  33c976: 4700         	bx	r0
  33c978: 0019         	movs	r1, r3
  33c97a: 0000         	movs	r0, r0
  33c97c: 003f         	movs	r7, r7
  33c97e: 0000         	movs	r0, r0
  33c980: 007d         	lsls	r5, r7, #0x1
  33c982: 0000         	movs	r0, r0
  33c984: 00bf         	lsls	r7, r7, #0x2
  33c986: 0000         	movs	r0, r0
  33c988: 00bf         	lsls	r7, r7, #0x2
  33c98a: 0000         	movs	r0, r0
  33c98c: 007d         	lsls	r5, r7, #0x1
  33c98e: 0000         	movs	r0, r0
  33c990: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x33ca50 <HUD::onMenuScreen(cocos2d::CCObject*)+0x104>
  33c992: 589b         	ldr	r3, [r3, r2]
  33c994: 781b         	ldrb	r3, [r3]
  33c996: 2b00         	cmp	r3, #0x0
  33c998: d006         	beq	0x33c9a8 <HUD::onMenuScreen(cocos2d::CCObject*)+0x5c> @ imm = #0xc
  33c99a: 9b01         	ldr	r3, [sp, #0x4]
  33c99c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33c9a0: 4618         	mov	r0, r3
  33c9a2: f031 fb87    	bl	0x36e0b4 <MenuScreen::resumeTraining()> @ imm = #0x3170e
  33c9a6: e04b         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0x96
  33c9a8: 9b01         	ldr	r3, [sp, #0x4]
  33c9aa: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33c9ae: 4618         	mov	r0, r3
  33c9b0: f031 fa06    	bl	0x36ddc0 <MenuScreen::pauseTraining()> @ imm = #0x3140c
  33c9b4: e044         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0x88
  33c9b6: 4a26         	ldr	r2, [pc, #0x98]         @ 0x33ca50 <HUD::onMenuScreen(cocos2d::CCObject*)+0x104>
  33c9b8: 589a         	ldr	r2, [r3, r2]
  33c9ba: 7812         	ldrb	r2, [r2]
  33c9bc: 2a00         	cmp	r2, #0x0
  33c9be: d006         	beq	0x33c9ce <HUD::onMenuScreen(cocos2d::CCObject*)+0x82> @ imm = #0xc
  33c9c0: 9b01         	ldr	r3, [sp, #0x4]
  33c9c2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33c9c6: 4618         	mov	r0, r3
  33c9c8: f032 f8d8    	bl	0x36eb7c <MenuScreen::resumeSurvival()> @ imm = #0x321b0
  33c9cc: e011         	b	0x33c9f2 <HUD::onMenuScreen(cocos2d::CCObject*)+0xa6> @ imm = #0x22
  33c9ce: 4a21         	ldr	r2, [pc, #0x84]         @ 0x33ca54 <HUD::onMenuScreen(cocos2d::CCObject*)+0x108>
  33c9d0: 589b         	ldr	r3, [r3, r2]
  33c9d2: 681b         	ldr	r3, [r3]
  33c9d4: 4618         	mov	r0, r3
  33c9d6: f0b0 f983    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xb0306
  33c9da: 4603         	mov	r3, r0
  33c9dc: f083 0301    	eor	r3, r3, #0x1
  33c9e0: b2db         	uxtb	r3, r3
  33c9e2: 2b00         	cmp	r3, #0x0
  33c9e4: d005         	beq	0x33c9f2 <HUD::onMenuScreen(cocos2d::CCObject*)+0xa6> @ imm = #0xa
  33c9e6: 9b01         	ldr	r3, [sp, #0x4]
  33c9e8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33c9ec: 4618         	mov	r0, r3
  33c9ee: f031 feef    	bl	0x36e7d0 <MenuScreen::pauseSurvival()> @ imm = #0x31dde
  33c9f2: e025         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0x4a
  33c9f4: 9a01         	ldr	r2, [sp, #0x4]
  33c9f6: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  33c9fa: f892 2124    	ldrb.w	r2, [r2, #0x124]
  33c9fe: 2a00         	cmp	r2, #0x0
  33ca00: d006         	beq	0x33ca10 <HUD::onMenuScreen(cocos2d::CCObject*)+0xc4> @ imm = #0xc
  33ca02: 9b01         	ldr	r3, [sp, #0x4]
  33ca04: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33ca08: 4618         	mov	r0, r3
  33ca0a: f031 fec9    	bl	0x36e7a0 <MenuScreen::resumeCoop()> @ imm = #0x31d92
  33ca0e: e011         	b	0x33ca34 <HUD::onMenuScreen(cocos2d::CCObject*)+0xe8> @ imm = #0x22
  33ca10: 4a10         	ldr	r2, [pc, #0x40]         @ 0x33ca54 <HUD::onMenuScreen(cocos2d::CCObject*)+0x108>
  33ca12: 589b         	ldr	r3, [r3, r2]
  33ca14: 681b         	ldr	r3, [r3]
  33ca16: 4618         	mov	r0, r3
  33ca18: f0b0 f962    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xb02c4
  33ca1c: 4603         	mov	r3, r0
  33ca1e: f083 0301    	eor	r3, r3, #0x1
  33ca22: b2db         	uxtb	r3, r3
  33ca24: 2b00         	cmp	r3, #0x0
  33ca26: d005         	beq	0x33ca34 <HUD::onMenuScreen(cocos2d::CCObject*)+0xe8> @ imm = #0xa
  33ca28: 9b01         	ldr	r3, [sp, #0x4]
  33ca2a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33ca2e: 4618         	mov	r0, r3
  33ca30: f031 fc84    	bl	0x36e33c <MenuScreen::pauseCoop()> @ imm = #0x31908
  33ca34: e004         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0x8
  33ca36: 9801         	ldr	r0, [sp, #0x4]
  33ca38: f7ff ff42    	bl	0x33c8c0 <HUD::onScoreScreen()> @ imm = #-0x17c
  33ca3c: e000         	b	0x33ca40 <HUD::onMenuScreen(cocos2d::CCObject*)+0xf4> @ imm = #0x0
  33ca3e: bf00         	nop
  33ca40: b003         	add	sp, #0xc
  33ca42: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33ca45); words below are literal-pool data ---
  33ca46: bf00         	nop
  33ca48: 60b2         	str	r2, [r6, #0x8]
  33ca4a: 005f         	lsls	r7, r3, #0x1
  33ca4c: d838         	bhi	0x33cac0 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x68> @ imm = #0x70
  33ca4e: ffff db18    	<unknown>
  33ca52: ffff d910    	vqshrn.u64	d29, q0, #0x1
  33ca56: ffff b570    	<unknown>

// ==== HUD::weaponProxyStart
//      file offset 0x33ca58 (= ELF address; Ghidra 0x34ca58), 1348 bytes, Thumb-2
  33ca58: b570         	push	{r4, r5, r6, lr}
  33ca5a: b08c         	sub	sp, #0x30
  33ca5c: 9001         	str	r0, [sp, #0x4]
  33ca5e: 9100         	str	r1, [sp]
  33ca60: f8df 4530    	ldr.w	r4, [pc, #0x530]        @ 0x33cf94 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x53c>
  33ca64: 447c         	add	r4, pc
  33ca66: 9b00         	ldr	r3, [sp]
  33ca68: 9303         	str	r3, [sp, #0xc]
  33ca6a: f8df 352c    	ldr.w	r3, [pc, #0x52c]        @ 0x33cf98 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x540>
  33ca6e: 58e3         	ldr	r3, [r4, r3]
  33ca70: 681b         	ldr	r3, [r3]
  33ca72: 681b         	ldr	r3, [r3]
  33ca74: f503 73fa    	add.w	r3, r3, #0x1f4
  33ca78: 681b         	ldr	r3, [r3]
  33ca7a: f8df 251c    	ldr.w	r2, [pc, #0x51c]        @ 0x33cf98 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x540>
  33ca7e: 58a2         	ldr	r2, [r4, r2]
  33ca80: 6812         	ldr	r2, [r2]
  33ca82: 4610         	mov	r0, r2
  33ca84: 4798         	blx	r3
  33ca86: 4603         	mov	r3, r0
  33ca88: 9304         	str	r3, [sp, #0x10]
  33ca8a: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x33cf98 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x540>
  33ca8e: 58e3         	ldr	r3, [r4, r3]
  33ca90: 681b         	ldr	r3, [r3]
  33ca92: 681b         	ldr	r3, [r3]
  33ca94: f503 73fc    	add.w	r3, r3, #0x1f8
  33ca98: 681b         	ldr	r3, [r3]
  33ca9a: f8df 24fc    	ldr.w	r2, [pc, #0x4fc]        @ 0x33cf98 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x540>
  33ca9e: 58a2         	ldr	r2, [r4, r2]
  33caa0: 6812         	ldr	r2, [r2]
  33caa2: 4610         	mov	r0, r2
  33caa4: 4798         	blx	r3
  33caa6: 4603         	mov	r3, r0
  33caa8: 9305         	str	r3, [sp, #0x14]
  33caaa: 2300         	movs	r3, #0x0
  33caac: f88d 300b    	strb.w	r3, [sp, #0xb]
  33cab0: 9801         	ldr	r0, [sp, #0x4]
  33cab2: f000 fa7d    	bl	0x33cfb0 <HUD::hidePickUpWeapon()> @ imm = #0x4fa
  33cab6: 9b03         	ldr	r3, [sp, #0xc]
  33cab8: 681b         	ldr	r3, [r3]
  33caba: f503 733c    	add.w	r3, r3, #0x2f0
  33cabe: 681b         	ldr	r3, [r3]
  33cac0: 9803         	ldr	r0, [sp, #0xc]
  33cac2: 4798         	blx	r3
  33cac4: 4603         	mov	r3, r0
  33cac6: 2b00         	cmp	r3, #0x0
  33cac8: d01b         	beq	0x33cb02 <HUD::weaponProxyStart(cocos2d::CCObject*)+0xaa> @ imm = #0x36
  33caca: 9b04         	ldr	r3, [sp, #0x10]
  33cacc: 2b00         	cmp	r3, #0x0
  33cace: d009         	beq	0x33cae4 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x8c> @ imm = #0x12
  33cad0: 9b04         	ldr	r3, [sp, #0x10]
  33cad2: 681b         	ldr	r3, [r3]
  33cad4: f503 733b    	add.w	r3, r3, #0x2ec
  33cad8: 681b         	ldr	r3, [r3]
  33cada: 9804         	ldr	r0, [sp, #0x10]
  33cadc: 4798         	blx	r3
  33cade: 4603         	mov	r3, r0
  33cae0: 2b00         	cmp	r3, #0x0
  33cae2: d10c         	bne	0x33cafe <HUD::weaponProxyStart(cocos2d::CCObject*)+0xa6> @ imm = #0x18
  33cae4: 9b05         	ldr	r3, [sp, #0x14]
  33cae6: 2b00         	cmp	r3, #0x0
  33cae8: d00b         	beq	0x33cb02 <HUD::weaponProxyStart(cocos2d::CCObject*)+0xaa> @ imm = #0x16
  33caea: 9b05         	ldr	r3, [sp, #0x14]
  33caec: 681b         	ldr	r3, [r3]
  33caee: f503 733b    	add.w	r3, r3, #0x2ec
  33caf2: 681b         	ldr	r3, [r3]
  33caf4: 9805         	ldr	r0, [sp, #0x14]
  33caf6: 4798         	blx	r3
  33caf8: 4603         	mov	r3, r0
  33cafa: 2b00         	cmp	r3, #0x0
  33cafc: d001         	beq	0x33cb02 <HUD::weaponProxyStart(cocos2d::CCObject*)+0xaa> @ imm = #0x2
  33cafe: 2301         	movs	r3, #0x1
  33cb00: e000         	b	0x33cb04 <HUD::weaponProxyStart(cocos2d::CCObject*)+0xac> @ imm = #0x0
  33cb02: 2300         	movs	r3, #0x0
  33cb04: 2b00         	cmp	r3, #0x0
  33cb06: d01f         	beq	0x33cb48 <HUD::weaponProxyStart(cocos2d::CCObject*)+0xf0> @ imm = #0x3e
  33cb08: 9b01         	ldr	r3, [sp, #0x4]
  33cb0a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cb0e: 681b         	ldr	r3, [r3]
  33cb10: 3390         	adds	r3, #0x90
  33cb12: 681b         	ldr	r3, [r3]
  33cb14: 9a01         	ldr	r2, [sp, #0x4]
  33cb16: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cb1a: 4610         	mov	r0, r2
  33cb1c: 2101         	movs	r1, #0x1
  33cb1e: 4798         	blx	r3
  33cb20: 9b01         	ldr	r3, [sp, #0x4]
  33cb22: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cb26: 681b         	ldr	r3, [r3]
  33cb28: 334c         	adds	r3, #0x4c
  33cb2a: 681b         	ldr	r3, [r3]
  33cb2c: 9a01         	ldr	r2, [sp, #0x4]
  33cb2e: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cb32: 4611         	mov	r1, r2
  33cb34: 9a01         	ldr	r2, [sp, #0x4]
  33cb36: f502 72ac    	add.w	r2, r2, #0x158
  33cb3a: 4608         	mov	r0, r1
  33cb3c: 4611         	mov	r1, r2
  33cb3e: 4798         	blx	r3
  33cb40: 2301         	movs	r3, #0x1
  33cb42: f88d 300b    	strb.w	r3, [sp, #0xb]
  33cb46: e1f6         	b	0x33cf36 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x4de> @ imm = #0x3ec
  33cb48: 9b03         	ldr	r3, [sp, #0xc]
  33cb4a: 681b         	ldr	r3, [r3]
  33cb4c: f503 733b    	add.w	r3, r3, #0x2ec
  33cb50: 681b         	ldr	r3, [r3]
  33cb52: 9803         	ldr	r0, [sp, #0xc]
  33cb54: 4798         	blx	r3
  33cb56: 4603         	mov	r3, r0
  33cb58: 2b00         	cmp	r3, #0x0
  33cb5a: d04c         	beq	0x33cbf6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19e> @ imm = #0x98
  33cb5c: 9b03         	ldr	r3, [sp, #0xc]
  33cb5e: 681b         	ldr	r3, [r3]
  33cb60: f503 733d    	add.w	r3, r3, #0x2f4
  33cb64: 681b         	ldr	r3, [r3]
  33cb66: 9803         	ldr	r0, [sp, #0xc]
  33cb68: 4798         	blx	r3
  33cb6a: 4603         	mov	r3, r0
  33cb6c: f083 0301    	eor	r3, r3, #0x1
  33cb70: b2db         	uxtb	r3, r3
  33cb72: 2b00         	cmp	r3, #0x0
  33cb74: d03f         	beq	0x33cbf6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19e> @ imm = #0x7e
  33cb76: 9b04         	ldr	r3, [sp, #0x10]
  33cb78: 2b00         	cmp	r3, #0x0
  33cb7a: d01b         	beq	0x33cbb4 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x15c> @ imm = #0x36
  33cb7c: 9b04         	ldr	r3, [sp, #0x10]
  33cb7e: 681b         	ldr	r3, [r3]
  33cb80: f503 733b    	add.w	r3, r3, #0x2ec
  33cb84: 681b         	ldr	r3, [r3]
  33cb86: 9804         	ldr	r0, [sp, #0x10]
  33cb88: 4798         	blx	r3
  33cb8a: 4603         	mov	r3, r0
  33cb8c: 2b00         	cmp	r3, #0x0
  33cb8e: d011         	beq	0x33cbb4 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x15c> @ imm = #0x22
  33cb90: 9b04         	ldr	r3, [sp, #0x10]
  33cb92: 681b         	ldr	r3, [r3]
  33cb94: f503 731a    	add.w	r3, r3, #0x268
  33cb98: 681b         	ldr	r3, [r3]
  33cb9a: 9804         	ldr	r0, [sp, #0x10]
  33cb9c: 4798         	blx	r3
  33cb9e: 4604         	mov	r4, r0
  33cba0: 9b03         	ldr	r3, [sp, #0xc]
  33cba2: 681b         	ldr	r3, [r3]
  33cba4: f503 731a    	add.w	r3, r3, #0x268
  33cba8: 681b         	ldr	r3, [r3]
  33cbaa: 9803         	ldr	r0, [sp, #0xc]
  33cbac: 4798         	blx	r3
  33cbae: 4603         	mov	r3, r0
  33cbb0: 429c         	cmp	r4, r3
  33cbb2: d01e         	beq	0x33cbf2 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19a> @ imm = #0x3c
  33cbb4: 9b05         	ldr	r3, [sp, #0x14]
  33cbb6: 2b00         	cmp	r3, #0x0
  33cbb8: d01d         	beq	0x33cbf6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19e> @ imm = #0x3a
  33cbba: 9b05         	ldr	r3, [sp, #0x14]
  33cbbc: 681b         	ldr	r3, [r3]
  33cbbe: f503 733b    	add.w	r3, r3, #0x2ec
  33cbc2: 681b         	ldr	r3, [r3]
  33cbc4: 9805         	ldr	r0, [sp, #0x14]
  33cbc6: 4798         	blx	r3
  33cbc8: 4603         	mov	r3, r0
  33cbca: 2b00         	cmp	r3, #0x0
  33cbcc: d013         	beq	0x33cbf6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19e> @ imm = #0x26
  33cbce: 9b05         	ldr	r3, [sp, #0x14]
  33cbd0: 681b         	ldr	r3, [r3]
  33cbd2: f503 731a    	add.w	r3, r3, #0x268
  33cbd6: 681b         	ldr	r3, [r3]
  33cbd8: 9805         	ldr	r0, [sp, #0x14]
  33cbda: 4798         	blx	r3
  33cbdc: 4604         	mov	r4, r0
  33cbde: 9b03         	ldr	r3, [sp, #0xc]
  33cbe0: 681b         	ldr	r3, [r3]
  33cbe2: f503 731a    	add.w	r3, r3, #0x268
  33cbe6: 681b         	ldr	r3, [r3]
  33cbe8: 9803         	ldr	r0, [sp, #0xc]
  33cbea: 4798         	blx	r3
  33cbec: 4603         	mov	r3, r0
  33cbee: 429c         	cmp	r4, r3
  33cbf0: d101         	bne	0x33cbf6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x19e> @ imm = #0x2
  33cbf2: 2301         	movs	r3, #0x1
  33cbf4: e000         	b	0x33cbf8 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x1a0> @ imm = #0x0
  33cbf6: 2300         	movs	r3, #0x0
  33cbf8: 2b00         	cmp	r3, #0x0
  33cbfa: d01f         	beq	0x33cc3c <HUD::weaponProxyStart(cocos2d::CCObject*)+0x1e4> @ imm = #0x3e
  33cbfc: 9b01         	ldr	r3, [sp, #0x4]
  33cbfe: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cc02: 681b         	ldr	r3, [r3]
  33cc04: 3390         	adds	r3, #0x90
  33cc06: 681b         	ldr	r3, [r3]
  33cc08: 9a01         	ldr	r2, [sp, #0x4]
  33cc0a: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cc0e: 4610         	mov	r0, r2
  33cc10: 2101         	movs	r1, #0x1
  33cc12: 4798         	blx	r3
  33cc14: 9b01         	ldr	r3, [sp, #0x4]
  33cc16: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cc1a: 681b         	ldr	r3, [r3]
  33cc1c: 334c         	adds	r3, #0x4c
  33cc1e: 681b         	ldr	r3, [r3]
  33cc20: 9a01         	ldr	r2, [sp, #0x4]
  33cc22: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cc26: 4611         	mov	r1, r2
  33cc28: 9a01         	ldr	r2, [sp, #0x4]
  33cc2a: f502 72ac    	add.w	r2, r2, #0x158
  33cc2e: 4608         	mov	r0, r1
  33cc30: 4611         	mov	r1, r2
  33cc32: 4798         	blx	r3
  33cc34: 2301         	movs	r3, #0x1
  33cc36: f88d 300b    	strb.w	r3, [sp, #0xb]
  33cc3a: e17c         	b	0x33cf36 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x4de> @ imm = #0x2f8
  33cc3c: 9b03         	ldr	r3, [sp, #0xc]
  33cc3e: 681b         	ldr	r3, [r3]
  33cc40: f503 733c    	add.w	r3, r3, #0x2f0
  33cc44: 681b         	ldr	r3, [r3]
  33cc46: 9803         	ldr	r0, [sp, #0xc]
  33cc48: 4798         	blx	r3
  33cc4a: 4603         	mov	r3, r0
  33cc4c: f083 0301    	eor	r3, r3, #0x1
  33cc50: b2db         	uxtb	r3, r3
  33cc52: 2b00         	cmp	r3, #0x0
  33cc54: d049         	beq	0x33ccea <HUD::weaponProxyStart(cocos2d::CCObject*)+0x292> @ imm = #0x92
  33cc56: 9b03         	ldr	r3, [sp, #0xc]
  33cc58: 681b         	ldr	r3, [r3]
  33cc5a: f503 733b    	add.w	r3, r3, #0x2ec
  33cc5e: 681b         	ldr	r3, [r3]
  33cc60: 9803         	ldr	r0, [sp, #0xc]
  33cc62: 4798         	blx	r3
  33cc64: 4603         	mov	r3, r0
  33cc66: 2b00         	cmp	r3, #0x0
  33cc68: d03f         	beq	0x33ccea <HUD::weaponProxyStart(cocos2d::CCObject*)+0x292> @ imm = #0x7e
  33cc6a: 9b04         	ldr	r3, [sp, #0x10]
  33cc6c: 2b00         	cmp	r3, #0x0
  33cc6e: d01b         	beq	0x33cca8 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x250> @ imm = #0x36
  33cc70: 9b04         	ldr	r3, [sp, #0x10]
  33cc72: 681b         	ldr	r3, [r3]
  33cc74: f503 733b    	add.w	r3, r3, #0x2ec
  33cc78: 681b         	ldr	r3, [r3]
  33cc7a: 9804         	ldr	r0, [sp, #0x10]
  33cc7c: 4798         	blx	r3
  33cc7e: 4603         	mov	r3, r0
  33cc80: 2b00         	cmp	r3, #0x0
  33cc82: d011         	beq	0x33cca8 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x250> @ imm = #0x22
  33cc84: 9b04         	ldr	r3, [sp, #0x10]
  33cc86: 681b         	ldr	r3, [r3]
  33cc88: f503 731a    	add.w	r3, r3, #0x268
  33cc8c: 681b         	ldr	r3, [r3]
  33cc8e: 9804         	ldr	r0, [sp, #0x10]
  33cc90: 4798         	blx	r3
  33cc92: 4604         	mov	r4, r0
  33cc94: 9b03         	ldr	r3, [sp, #0xc]
  33cc96: 681b         	ldr	r3, [r3]
  33cc98: f503 731a    	add.w	r3, r3, #0x268
  33cc9c: 681b         	ldr	r3, [r3]
  33cc9e: 9803         	ldr	r0, [sp, #0xc]
  33cca0: 4798         	blx	r3
  33cca2: 4603         	mov	r3, r0
  33cca4: 429c         	cmp	r4, r3
  33cca6: d11e         	bne	0x33cce6 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x28e> @ imm = #0x3c
  33cca8: 9b05         	ldr	r3, [sp, #0x14]
  33ccaa: 2b00         	cmp	r3, #0x0
  33ccac: d01d         	beq	0x33ccea <HUD::weaponProxyStart(cocos2d::CCObject*)+0x292> @ imm = #0x3a
  33ccae: 9b05         	ldr	r3, [sp, #0x14]
  33ccb0: 681b         	ldr	r3, [r3]
  33ccb2: f503 733b    	add.w	r3, r3, #0x2ec
  33ccb6: 681b         	ldr	r3, [r3]
  33ccb8: 9805         	ldr	r0, [sp, #0x14]
  33ccba: 4798         	blx	r3
  33ccbc: 4603         	mov	r3, r0
  33ccbe: 2b00         	cmp	r3, #0x0
  33ccc0: d013         	beq	0x33ccea <HUD::weaponProxyStart(cocos2d::CCObject*)+0x292> @ imm = #0x26
  33ccc2: 9b05         	ldr	r3, [sp, #0x14]
  33ccc4: 681b         	ldr	r3, [r3]
  33ccc6: f503 731a    	add.w	r3, r3, #0x268
  33ccca: 681b         	ldr	r3, [r3]
  33cccc: 9805         	ldr	r0, [sp, #0x14]
  33ccce: 4798         	blx	r3
  33ccd0: 4604         	mov	r4, r0
  33ccd2: 9b03         	ldr	r3, [sp, #0xc]
  33ccd4: 681b         	ldr	r3, [r3]
  33ccd6: f503 731a    	add.w	r3, r3, #0x268
  33ccda: 681b         	ldr	r3, [r3]
  33ccdc: 9803         	ldr	r0, [sp, #0xc]
  33ccde: 4798         	blx	r3
  33cce0: 4603         	mov	r3, r0
  33cce2: 429c         	cmp	r4, r3
  33cce4: d001         	beq	0x33ccea <HUD::weaponProxyStart(cocos2d::CCObject*)+0x292> @ imm = #0x2
  33cce6: 2301         	movs	r3, #0x1
  33cce8: e000         	b	0x33ccec <HUD::weaponProxyStart(cocos2d::CCObject*)+0x294> @ imm = #0x0
  33ccea: 2300         	movs	r3, #0x0
  33ccec: 2b00         	cmp	r3, #0x0
  33ccee: f000 80ad    	beq.w	0x33ce4c <HUD::weaponProxyStart(cocos2d::CCObject*)+0x3f4> @ imm = #0x15a
  33ccf2: 9b01         	ldr	r3, [sp, #0x4]
  33ccf4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33ccf8: 681b         	ldr	r3, [r3]
  33ccfa: 3390         	adds	r3, #0x90
  33ccfc: 681b         	ldr	r3, [r3]
  33ccfe: 9a01         	ldr	r2, [sp, #0x4]
  33cd00: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cd04: 4610         	mov	r0, r2
  33cd06: 2101         	movs	r1, #0x1
  33cd08: 4798         	blx	r3
  33cd0a: 9b01         	ldr	r3, [sp, #0x4]
  33cd0c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cd10: 681b         	ldr	r3, [r3]
  33cd12: 334c         	adds	r3, #0x4c
  33cd14: 681c         	ldr	r4, [r3]
  33cd16: 9b01         	ldr	r3, [sp, #0x4]
  33cd18: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cd1c: 461d         	mov	r5, r3
  33cd1e: 9b01         	ldr	r3, [sp, #0x4]
  33cd20: f503 76ac    	add.w	r6, r3, #0x158
  33cd24: ab06         	add	r3, sp, #0x18
  33cd26: 4618         	mov	r0, r3
  33cd28: f04f 0100    	mov.w	r1, #0x0
  33cd2c: f2cc 11f0    	movt	r1, #0xc1f0
  33cd30: f04f 0200    	mov.w	r2, #0x0
  33cd34: f2cc 12a0    	movt	r2, #0xc1a0
  33cd38: f255 ffda    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x255fb4
  33cd3c: aa08         	add	r2, sp, #0x20
  33cd3e: ab06         	add	r3, sp, #0x18
  33cd40: 4610         	mov	r0, r2
  33cd42: 4631         	mov	r1, r6
  33cd44: 461a         	mov	r2, r3
  33cd46: f7fc fa33    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x3b9a
  33cd4a: ab08         	add	r3, sp, #0x20
  33cd4c: 4628         	mov	r0, r5
  33cd4e: 4619         	mov	r1, r3
  33cd50: 47a0         	blx	r4
  33cd52: 9b01         	ldr	r3, [sp, #0x4]
  33cd54: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33cd58: 681b         	ldr	r3, [r3]
  33cd5a: 3390         	adds	r3, #0x90
  33cd5c: 681b         	ldr	r3, [r3]
  33cd5e: 9a01         	ldr	r2, [sp, #0x4]
  33cd60: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33cd64: 4610         	mov	r0, r2
  33cd66: 2101         	movs	r1, #0x1
  33cd68: 4798         	blx	r3
  33cd6a: 9b01         	ldr	r3, [sp, #0x4]
  33cd6c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33cd70: 681b         	ldr	r3, [r3]
  33cd72: 334c         	adds	r3, #0x4c
  33cd74: 681c         	ldr	r4, [r3]
  33cd76: 9b01         	ldr	r3, [sp, #0x4]
  33cd78: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33cd7c: 461d         	mov	r5, r3
  33cd7e: 9b01         	ldr	r3, [sp, #0x4]
  33cd80: f503 76ac    	add.w	r6, r3, #0x158
  33cd84: ab06         	add	r3, sp, #0x18
  33cd86: 4618         	mov	r0, r3
  33cd88: f04f 0100    	mov.w	r1, #0x0
  33cd8c: f2c4 11f0    	movt	r1, #0x41f0
  33cd90: f04f 0200    	mov.w	r2, #0x0
  33cd94: f2cc 12a0    	movt	r2, #0xc1a0
  33cd98: f255 ffaa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x255f54
  33cd9c: aa08         	add	r2, sp, #0x20
  33cd9e: ab06         	add	r3, sp, #0x18
  33cda0: 4610         	mov	r0, r2
  33cda2: 4631         	mov	r1, r6
  33cda4: 461a         	mov	r2, r3
  33cda6: f7fc fa03    	bl	0x3391b0 <GasCloud::updateStep(float)+0x4f8> @ imm = #-0x3bfa
  33cdaa: ab08         	add	r3, sp, #0x20
  33cdac: 4628         	mov	r0, r5
  33cdae: 4619         	mov	r1, r3
  33cdb0: 47a0         	blx	r4
  33cdb2: 9b01         	ldr	r3, [sp, #0x4]
  33cdb4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33cdb8: 681b         	ldr	r3, [r3]
  33cdba: 334c         	adds	r3, #0x4c
  33cdbc: 681c         	ldr	r4, [r3]
  33cdbe: 9b01         	ldr	r3, [sp, #0x4]
  33cdc0: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  33cdc4: 9b01         	ldr	r3, [sp, #0x4]
  33cdc6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33cdca: 681b         	ldr	r3, [r3]
  33cdcc: 3350         	adds	r3, #0x50
  33cdce: 681b         	ldr	r3, [r3]
  33cdd0: 9a01         	ldr	r2, [sp, #0x4]
  33cdd2: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33cdd6: 4610         	mov	r0, r2
  33cdd8: 4798         	blx	r3
  33cdda: 4603         	mov	r3, r0
  33cddc: 4628         	mov	r0, r5
  33cdde: 4619         	mov	r1, r3
  33cde0: 47a0         	blx	r4
  33cde2: 9b01         	ldr	r3, [sp, #0x4]
  33cde4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33cde8: 681b         	ldr	r3, [r3]
  33cdea: 3390         	adds	r3, #0x90
  33cdec: 681b         	ldr	r3, [r3]
  33cdee: 9a01         	ldr	r2, [sp, #0x4]
  33cdf0: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  33cdf4: 4610         	mov	r0, r2
  33cdf6: 2101         	movs	r1, #0x1
  33cdf8: 4798         	blx	r3
  33cdfa: 9b03         	ldr	r3, [sp, #0xc]
  33cdfc: 2b00         	cmp	r3, #0x0
  33cdfe: d021         	beq	0x33ce44 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x3ec> @ imm = #0x42
  33ce00: 9b01         	ldr	r3, [sp, #0x4]
  33ce02: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33ce06: 681b         	ldr	r3, [r3]
  33ce08: f503 7302    	add.w	r3, r3, #0x208
  33ce0c: 681c         	ldr	r4, [r3]
  33ce0e: 9b01         	ldr	r3, [sp, #0x4]
  33ce10: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  33ce14: 9b03         	ldr	r3, [sp, #0xc]
  33ce16: 681b         	ldr	r3, [r3]
  33ce18: f503 731c    	add.w	r3, r3, #0x270
  33ce1c: 681b         	ldr	r3, [r3]
  33ce1e: aa08         	add	r2, sp, #0x20
  33ce20: 4610         	mov	r0, r2
  33ce22: 9903         	ldr	r1, [sp, #0xc]
  33ce24: 4798         	blx	r3
  33ce26: ab08         	add	r3, sp, #0x20
  33ce28: 4628         	mov	r0, r5
  33ce2a: 4619         	mov	r1, r3
  33ce2c: 47a0         	blx	r4
  33ce2e: 9b03         	ldr	r3, [sp, #0xc]
  33ce30: 681b         	ldr	r3, [r3]
  33ce32: f503 731f    	add.w	r3, r3, #0x27c
  33ce36: 681b         	ldr	r3, [r3]
  33ce38: 9803         	ldr	r0, [sp, #0xc]
  33ce3a: 4798         	blx	r3
  33ce3c: 4602         	mov	r2, r0
  33ce3e: 9b01         	ldr	r3, [sp, #0x4]
  33ce40: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  33ce44: 2301         	movs	r3, #0x1
  33ce46: f88d 300b    	strb.w	r3, [sp, #0xb]
  33ce4a: e074         	b	0x33cf36 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x4de> @ imm = #0xe8
  33ce4c: 9b03         	ldr	r3, [sp, #0xc]
  33ce4e: 681b         	ldr	r3, [r3]
  33ce50: f503 733c    	add.w	r3, r3, #0x2f0
  33ce54: 681b         	ldr	r3, [r3]
  33ce56: 9803         	ldr	r0, [sp, #0xc]
  33ce58: 4798         	blx	r3
  33ce5a: 4603         	mov	r3, r0
  33ce5c: f083 0301    	eor	r3, r3, #0x1
  33ce60: b2db         	uxtb	r3, r3
  33ce62: 2b00         	cmp	r3, #0x0
  33ce64: d067         	beq	0x33cf36 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x4de> @ imm = #0xce
  33ce66: 9b01         	ldr	r3, [sp, #0x4]
  33ce68: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33ce6c: 681b         	ldr	r3, [r3]
  33ce6e: 3390         	adds	r3, #0x90
  33ce70: 681b         	ldr	r3, [r3]
  33ce72: 9a01         	ldr	r2, [sp, #0x4]
  33ce74: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33ce78: 4610         	mov	r0, r2
  33ce7a: 2101         	movs	r1, #0x1
  33ce7c: 4798         	blx	r3
  33ce7e: 9b01         	ldr	r3, [sp, #0x4]
  33ce80: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33ce84: 681b         	ldr	r3, [r3]
  33ce86: 334c         	adds	r3, #0x4c
  33ce88: 681b         	ldr	r3, [r3]
  33ce8a: 9a01         	ldr	r2, [sp, #0x4]
  33ce8c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33ce90: 4611         	mov	r1, r2
  33ce92: 9a01         	ldr	r2, [sp, #0x4]
  33ce94: f502 72ac    	add.w	r2, r2, #0x158
  33ce98: 4608         	mov	r0, r1
  33ce9a: 4611         	mov	r1, r2
  33ce9c: 4798         	blx	r3
  33ce9e: 9b01         	ldr	r3, [sp, #0x4]
  33cea0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33cea4: 681b         	ldr	r3, [r3]
  33cea6: 334c         	adds	r3, #0x4c
  33cea8: 681c         	ldr	r4, [r3]
  33ceaa: 9b01         	ldr	r3, [sp, #0x4]
  33ceac: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  33ceb0: 9b01         	ldr	r3, [sp, #0x4]
  33ceb2: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33ceb6: 681b         	ldr	r3, [r3]
  33ceb8: 3350         	adds	r3, #0x50
  33ceba: 681b         	ldr	r3, [r3]
  33cebc: 9a01         	ldr	r2, [sp, #0x4]
  33cebe: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33cec2: 4610         	mov	r0, r2
  33cec4: 4798         	blx	r3
  33cec6: 4603         	mov	r3, r0
  33cec8: 4628         	mov	r0, r5
  33ceca: 4619         	mov	r1, r3
  33cecc: 47a0         	blx	r4
  33cece: 9b01         	ldr	r3, [sp, #0x4]
  33ced0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33ced4: 681b         	ldr	r3, [r3]
  33ced6: 3390         	adds	r3, #0x90
  33ced8: 681b         	ldr	r3, [r3]
  33ceda: 9a01         	ldr	r2, [sp, #0x4]
  33cedc: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  33cee0: 4610         	mov	r0, r2
  33cee2: 2101         	movs	r1, #0x1
  33cee4: 4798         	blx	r3
  33cee6: 9b03         	ldr	r3, [sp, #0xc]
  33cee8: 2b00         	cmp	r3, #0x0
  33ceea: d021         	beq	0x33cf30 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x4d8> @ imm = #0x42
  33ceec: 9b01         	ldr	r3, [sp, #0x4]
  33ceee: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33cef2: 681b         	ldr	r3, [r3]
  33cef4: f503 7302    	add.w	r3, r3, #0x208
  33cef8: 681c         	ldr	r4, [r3]
  33cefa: 9b01         	ldr	r3, [sp, #0x4]
  33cefc: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  33cf00: 9b03         	ldr	r3, [sp, #0xc]
  33cf02: 681b         	ldr	r3, [r3]
  33cf04: f503 731c    	add.w	r3, r3, #0x270
  33cf08: 681b         	ldr	r3, [r3]
  33cf0a: aa08         	add	r2, sp, #0x20
  33cf0c: 4610         	mov	r0, r2
  33cf0e: 9903         	ldr	r1, [sp, #0xc]
  33cf10: 4798         	blx	r3
  33cf12: ab08         	add	r3, sp, #0x20
  33cf14: 4628         	mov	r0, r5
  33cf16: 4619         	mov	r1, r3
  33cf18: 47a0         	blx	r4
  33cf1a: 9b03         	ldr	r3, [sp, #0xc]
  33cf1c: 681b         	ldr	r3, [r3]
  33cf1e: f503 731f    	add.w	r3, r3, #0x27c
  33cf22: 681b         	ldr	r3, [r3]
  33cf24: 9803         	ldr	r0, [sp, #0xc]
  33cf26: 4798         	blx	r3
  33cf28: 4602         	mov	r2, r0
  33cf2a: 9b01         	ldr	r3, [sp, #0x4]
  33cf2c: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  33cf30: 2301         	movs	r3, #0x1
  33cf32: f88d 300b    	strb.w	r3, [sp, #0xb]
  33cf36: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  33cf3a: 2b00         	cmp	r3, #0x0
  33cf3c: d028         	beq	0x33cf90 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x538> @ imm = #0x50
  33cf3e: 9b01         	ldr	r3, [sp, #0x4]
  33cf40: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33cf44: 681b         	ldr	r3, [r3]
  33cf46: 3390         	adds	r3, #0x90
  33cf48: 681b         	ldr	r3, [r3]
  33cf4a: 9a01         	ldr	r2, [sp, #0x4]
  33cf4c: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  33cf50: 4610         	mov	r0, r2
  33cf52: 2100         	movs	r1, #0x0
  33cf54: 4798         	blx	r3
  33cf56: 9b01         	ldr	r3, [sp, #0x4]
  33cf58: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33cf5c: 681b         	ldr	r3, [r3]
  33cf5e: 3390         	adds	r3, #0x90
  33cf60: 681b         	ldr	r3, [r3]
  33cf62: 9a01         	ldr	r2, [sp, #0x4]
  33cf64: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  33cf68: 4610         	mov	r0, r2
  33cf6a: 2100         	movs	r1, #0x0
  33cf6c: 4798         	blx	r3
  33cf6e: 9b01         	ldr	r3, [sp, #0x4]
  33cf70: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33cf74: 2b00         	cmp	r3, #0x0
  33cf76: d00b         	beq	0x33cf90 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x538> @ imm = #0x16
  33cf78: 9b01         	ldr	r3, [sp, #0x4]
  33cf7a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33cf7e: 681b         	ldr	r3, [r3]
  33cf80: 3390         	adds	r3, #0x90
  33cf82: 681b         	ldr	r3, [r3]
  33cf84: 9a01         	ldr	r2, [sp, #0x4]
  33cf86: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33cf8a: 4610         	mov	r0, r2
  33cf8c: 2100         	movs	r1, #0x0
  33cf8e: 4798         	blx	r3
  33cf90: b00c         	add	sp, #0x30
  33cf92: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33cf93); words below are literal-pool data ---
  33cf94: 5fa4         	ldrsh	r4, [r4, r6]
  33cf96: 005f         	lsls	r7, r3, #0x1
  33cf98: d784         	bvc	0x33cea4 <HUD::weaponProxyStart(cocos2d::CCObject*)+0x44c> @ imm = #-0xf8
  33cf9a: ffff b500    	<unknown>

// ==== HUD::weaponProxyEnd
//      file offset 0x33cf9c (= ELF address; Ghidra 0x34cf9c), 20 bytes, Thumb-2
  33cf9c: b500         	push	{lr}
  33cf9e: b083         	sub	sp, #0xc
  33cfa0: 9001         	str	r0, [sp, #0x4]
  33cfa2: 9100         	str	r1, [sp]
  33cfa4: 9801         	ldr	r0, [sp, #0x4]
  33cfa6: f000 f803    	bl	0x33cfb0 <HUD::hidePickUpWeapon()> @ imm = #0x6
  33cfaa: b003         	add	sp, #0xc
  33cfac: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::hidePickUpWeapon
//      file offset 0x33cfb0 (= ELF address; Ghidra 0x34cfb0), 420 bytes, Thumb-2
  33cfb0: b570         	push	{r4, r5, r6, lr}
  33cfb2: b084         	sub	sp, #0x10
  33cfb4: 9001         	str	r0, [sp, #0x4]
  33cfb6: 4c65         	ldr	r4, [pc, #0x194]        @ 0x33d14c <HUD::hidePickUpWeapon()+0x19c>
  33cfb8: 447c         	add	r4, pc
  33cfba: 9b01         	ldr	r3, [sp, #0x4]
  33cfbc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cfc0: 681b         	ldr	r3, [r3]
  33cfc2: 3390         	adds	r3, #0x90
  33cfc4: 681b         	ldr	r3, [r3]
  33cfc6: 9a01         	ldr	r2, [sp, #0x4]
  33cfc8: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cfcc: 4610         	mov	r0, r2
  33cfce: 2100         	movs	r1, #0x0
  33cfd0: 4798         	blx	r3
  33cfd2: 9b01         	ldr	r3, [sp, #0x4]
  33cfd4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  33cfd8: 681b         	ldr	r3, [r3]
  33cfda: 334c         	adds	r3, #0x4c
  33cfdc: 681b         	ldr	r3, [r3]
  33cfde: 9a01         	ldr	r2, [sp, #0x4]
  33cfe0: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  33cfe4: 4611         	mov	r1, r2
  33cfe6: 9a01         	ldr	r2, [sp, #0x4]
  33cfe8: f502 72c0    	add.w	r2, r2, #0x180
  33cfec: 4608         	mov	r0, r1
  33cfee: 4611         	mov	r1, r2
  33cff0: 4798         	blx	r3
  33cff2: 9b01         	ldr	r3, [sp, #0x4]
  33cff4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33cff8: 681b         	ldr	r3, [r3]
  33cffa: 3390         	adds	r3, #0x90
  33cffc: 681b         	ldr	r3, [r3]
  33cffe: 9a01         	ldr	r2, [sp, #0x4]
  33d000: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33d004: 4610         	mov	r0, r2
  33d006: 2100         	movs	r1, #0x0
  33d008: 4798         	blx	r3
  33d00a: 9b01         	ldr	r3, [sp, #0x4]
  33d00c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33d010: 681b         	ldr	r3, [r3]
  33d012: 3390         	adds	r3, #0x90
  33d014: 681b         	ldr	r3, [r3]
  33d016: 9a01         	ldr	r2, [sp, #0x4]
  33d018: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  33d01c: 4610         	mov	r0, r2
  33d01e: 2100         	movs	r1, #0x0
  33d020: 4798         	blx	r3
  33d022: 9b01         	ldr	r3, [sp, #0x4]
  33d024: f893 31c4    	ldrb.w	r3, [r3, #0x1c4]
  33d028: 2b00         	cmp	r3, #0x0
  33d02a: d00c         	beq	0x33d046 <HUD::hidePickUpWeapon()+0x96> @ imm = #0x18
  33d02c: 9b01         	ldr	r3, [sp, #0x4]
  33d02e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33d032: 681b         	ldr	r3, [r3]
  33d034: 3390         	adds	r3, #0x90
  33d036: 681b         	ldr	r3, [r3]
  33d038: 9a01         	ldr	r2, [sp, #0x4]
  33d03a: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  33d03e: 4610         	mov	r0, r2
  33d040: 2101         	movs	r1, #0x1
  33d042: 4798         	blx	r3
  33d044: e01c         	b	0x33d080 <HUD::hidePickUpWeapon()+0xd0> @ imm = #0x38
  33d046: 9b01         	ldr	r3, [sp, #0x4]
  33d048: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33d04c: 681b         	ldr	r3, [r3]
  33d04e: 3390         	adds	r3, #0x90
  33d050: 681b         	ldr	r3, [r3]
  33d052: 9a01         	ldr	r2, [sp, #0x4]
  33d054: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  33d058: 4610         	mov	r0, r2
  33d05a: 2101         	movs	r1, #0x1
  33d05c: 4798         	blx	r3
  33d05e: 9b01         	ldr	r3, [sp, #0x4]
  33d060: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33d064: 2b00         	cmp	r3, #0x0
  33d066: d00b         	beq	0x33d080 <HUD::hidePickUpWeapon()+0xd0> @ imm = #0x16
  33d068: 9b01         	ldr	r3, [sp, #0x4]
  33d06a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33d06e: 681b         	ldr	r3, [r3]
  33d070: 3390         	adds	r3, #0x90
  33d072: 681b         	ldr	r3, [r3]
  33d074: 9a01         	ldr	r2, [sp, #0x4]
  33d076: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33d07a: 4610         	mov	r0, r2
  33d07c: 2101         	movs	r1, #0x1
  33d07e: 4798         	blx	r3
  33d080: 9b01         	ldr	r3, [sp, #0x4]
  33d082: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33d086: 681b         	ldr	r3, [r3]
  33d088: 334c         	adds	r3, #0x4c
  33d08a: 681b         	ldr	r3, [r3]
  33d08c: 9a01         	ldr	r2, [sp, #0x4]
  33d08e: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33d092: 4611         	mov	r1, r2
  33d094: 9a01         	ldr	r2, [sp, #0x4]
  33d096: f502 72c0    	add.w	r2, r2, #0x180
  33d09a: 4608         	mov	r0, r1
  33d09c: 4611         	mov	r1, r2
  33d09e: 4798         	blx	r3
  33d0a0: 9b01         	ldr	r3, [sp, #0x4]
  33d0a2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  33d0a6: 681b         	ldr	r3, [r3]
  33d0a8: 334c         	adds	r3, #0x4c
  33d0aa: 681d         	ldr	r5, [r3]
  33d0ac: 9b01         	ldr	r3, [sp, #0x4]
  33d0ae: f8d3 610c    	ldr.w	r6, [r3, #0x10c]
  33d0b2: 9b01         	ldr	r3, [sp, #0x4]
  33d0b4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33d0b8: 681b         	ldr	r3, [r3]
  33d0ba: 3350         	adds	r3, #0x50
  33d0bc: 681b         	ldr	r3, [r3]
  33d0be: 9a01         	ldr	r2, [sp, #0x4]
  33d0c0: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33d0c4: 4610         	mov	r0, r2
  33d0c6: 4798         	blx	r3
  33d0c8: 4603         	mov	r3, r0
  33d0ca: 4630         	mov	r0, r6
  33d0cc: 4619         	mov	r1, r3
  33d0ce: 47a8         	blx	r5
  33d0d0: 9b01         	ldr	r3, [sp, #0x4]
  33d0d2: f04f 0200    	mov.w	r2, #0x0
  33d0d6: f8c3 2188    	str.w	r2, [r3, #0x188]
  33d0da: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x33d150 <HUD::hidePickUpWeapon()+0x1a0>
  33d0dc: 58e3         	ldr	r3, [r4, r3]
  33d0de: 681b         	ldr	r3, [r3]
  33d0e0: 681b         	ldr	r3, [r3]
  33d0e2: f503 73fa    	add.w	r3, r3, #0x1f4
  33d0e6: 681b         	ldr	r3, [r3]
  33d0e8: 4a19         	ldr	r2, [pc, #0x64]         @ 0x33d150 <HUD::hidePickUpWeapon()+0x1a0>
  33d0ea: 58a2         	ldr	r2, [r4, r2]
  33d0ec: 6812         	ldr	r2, [r2]
  33d0ee: 4610         	mov	r0, r2
  33d0f0: 4798         	blx	r3
  33d0f2: 4603         	mov	r3, r0
  33d0f4: 9303         	str	r3, [sp, #0xc]
  33d0f6: 9b03         	ldr	r3, [sp, #0xc]
  33d0f8: 2b00         	cmp	r3, #0x0
  33d0fa: d025         	beq	0x33d148 <HUD::hidePickUpWeapon()+0x198> @ imm = #0x4a
  33d0fc: 9b01         	ldr	r3, [sp, #0x4]
  33d0fe: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33d102: 681b         	ldr	r3, [r3]
  33d104: f503 73fc    	add.w	r3, r3, #0x1f8
  33d108: 681c         	ldr	r4, [r3]
  33d10a: 9b01         	ldr	r3, [sp, #0x4]
  33d10c: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  33d110: 9b03         	ldr	r3, [sp, #0xc]
  33d112: 681b         	ldr	r3, [r3]
  33d114: f503 7335    	add.w	r3, r3, #0x2d4
  33d118: 681b         	ldr	r3, [r3]
  33d11a: aa02         	add	r2, sp, #0x8
  33d11c: 4610         	mov	r0, r2
  33d11e: 9903         	ldr	r1, [sp, #0xc]
  33d120: 4798         	blx	r3
  33d122: ab02         	add	r3, sp, #0x8
  33d124: 4618         	mov	r0, r3
  33d126: f078 f0eb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4781d6
  33d12a: 4603         	mov	r3, r0
  33d12c: 4628         	mov	r0, r5
  33d12e: 4619         	mov	r1, r3
  33d130: 47a0         	blx	r4
  33d132: ab02         	add	r3, sp, #0x8
  33d134: 4618         	mov	r0, r3
  33d136: f078 f3ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4787da
  33d13a: e005         	b	0x33d148 <HUD::hidePickUpWeapon()+0x198> @ imm = #0xa
  33d13c: ab02         	add	r3, sp, #0x8
  33d13e: 4618         	mov	r0, r3
  33d140: f078 f3e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4787d0
  33d144: f04a f7b2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44af64
  33d148: b004         	add	sp, #0x10
  33d14a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x33d14b); words below are literal-pool data ---
  33d14c: 5a50         	ldrh	r0, [r2, r1]
  33d14e: 005f         	lsls	r7, r3, #0x1
  33d150: d784         	bvc	0x33d05c <HUD::hidePickUpWeapon()+0xac> @ imm = #-0xf8
  33d152: ffff b082    	<unknown>

// ==== HUD::startClock
//      file offset 0x33d154 (= ELF address; Ghidra 0x34d154), 8 bytes, Thumb-2
  33d154: b082         	sub	sp, #0x8
  33d156: 9001         	str	r0, [sp, #0x4]
  33d158: b002         	add	sp, #0x8
  33d15a: 4770         	bx	lr

// ==== HUD::updateClock
//      file offset 0x33d15c (= ELF address; Ghidra 0x34d15c), 340 bytes, Thumb-2
  33d15c: b530         	push	{r4, r5, lr}
  33d15e: b08b         	sub	sp, #0x2c
  33d160: 9003         	str	r0, [sp, #0xc]
  33d162: 2000         	movs	r0, #0x0
  33d164: f798 ef4e    	blx	0x2d6004 <.plt+0x134>   @ imm = #-0x67164
  33d168: 9005         	str	r0, [sp, #0x14]
  33d16a: 9b03         	ldr	r3, [sp, #0xc]
  33d16c: f8d3 219c    	ldr.w	r2, [r3, #0x19c]
  33d170: 9b03         	ldr	r3, [sp, #0xc]
  33d172: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  33d176: 9905         	ldr	r1, [sp, #0x14]
  33d178: 1acb         	subs	r3, r1, r3
  33d17a: 441a         	add	r2, r3
  33d17c: 9b03         	ldr	r3, [sp, #0xc]
  33d17e: f8c3 219c    	str.w	r2, [r3, #0x19c]
  33d182: 9b03         	ldr	r3, [sp, #0xc]
  33d184: 9a05         	ldr	r2, [sp, #0x14]
  33d186: f8c3 2198    	str.w	r2, [r3, #0x198]
  33d18a: 9b03         	ldr	r3, [sp, #0xc]
  33d18c: f8d3 21a0    	ldr.w	r2, [r3, #0x1a0]
  33d190: 9b03         	ldr	r3, [sp, #0xc]
  33d192: f8d3 319c    	ldr.w	r3, [r3, #0x19c]
  33d196: 1ad3         	subs	r3, r2, r3
  33d198: ea23 72e3    	bic.w	r2, r3, r3, asr #31
  33d19c: 9b03         	ldr	r3, [sp, #0xc]
  33d19e: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  33d1a2: 9b03         	ldr	r3, [sp, #0xc]
  33d1a4: f8d3 21c0    	ldr.w	r2, [r3, #0x1c0]
  33d1a8: f248 13b5    	movw	r3, #0x81b5
  33d1ac: f6c1 334e    	movt	r3, #0x1b4e
  33d1b0: fb83 1302    	smull	r1, r3, r3, r2
  33d1b4: 1199         	asrs	r1, r3, #0x6
  33d1b6: 17d3         	asrs	r3, r2, #0x1f
  33d1b8: 1acb         	subs	r3, r1, r3
  33d1ba: 9306         	str	r3, [sp, #0x18]
  33d1bc: 9b03         	ldr	r3, [sp, #0xc]
  33d1be: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  33d1c2: f648 0289    	movw	r2, #0x8889
  33d1c6: f6c8 0288    	movt	r2, #0x8888
  33d1ca: fb82 1203    	smull	r1, r2, r2, r3
  33d1ce: 441a         	add	r2, r3
  33d1d0: 1152         	asrs	r2, r2, #0x5
  33d1d2: 17db         	asrs	r3, r3, #0x1f
  33d1d4: 1ad2         	subs	r2, r2, r3
  33d1d6: f246 6367    	movw	r3, #0x6667
  33d1da: f2c6 6366    	movt	r3, #0x6666
  33d1de: fb83 1302    	smull	r1, r3, r3, r2
  33d1e2: 1099         	asrs	r1, r3, #0x2
  33d1e4: 17d3         	asrs	r3, r2, #0x1f
  33d1e6: 1ac9         	subs	r1, r1, r3
  33d1e8: 460b         	mov	r3, r1
  33d1ea: 009b         	lsls	r3, r3, #0x2
  33d1ec: 440b         	add	r3, r1
  33d1ee: 005b         	lsls	r3, r3, #0x1
  33d1f0: 1ad3         	subs	r3, r2, r3
  33d1f2: 9307         	str	r3, [sp, #0x1c]
  33d1f4: 9b03         	ldr	r3, [sp, #0xc]
  33d1f6: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  33d1fa: f648 0389    	movw	r3, #0x8889
  33d1fe: f6c8 0388    	movt	r3, #0x8888
  33d202: fb83 2301    	smull	r2, r3, r3, r1
  33d206: 440b         	add	r3, r1
  33d208: 115a         	asrs	r2, r3, #0x5
  33d20a: 17cb         	asrs	r3, r1, #0x1f
  33d20c: 1ad2         	subs	r2, r2, r3
  33d20e: 4613         	mov	r3, r2
  33d210: 011b         	lsls	r3, r3, #0x4
  33d212: 1a9b         	subs	r3, r3, r2
  33d214: 009b         	lsls	r3, r3, #0x2
  33d216: 1aca         	subs	r2, r1, r3
  33d218: f246 6367    	movw	r3, #0x6667
  33d21c: f2c6 6366    	movt	r3, #0x6666
  33d220: fb83 1302    	smull	r1, r3, r3, r2
  33d224: 1099         	asrs	r1, r3, #0x2
  33d226: 17d3         	asrs	r3, r2, #0x1f
  33d228: 1acb         	subs	r3, r1, r3
  33d22a: 9308         	str	r3, [sp, #0x20]
  33d22c: 9b03         	ldr	r3, [sp, #0xc]
  33d22e: f8d3 11c0    	ldr.w	r1, [r3, #0x1c0]
  33d232: f648 0389    	movw	r3, #0x8889
  33d236: f6c8 0388    	movt	r3, #0x8888
  33d23a: fb83 2301    	smull	r2, r3, r3, r1
  33d23e: 440b         	add	r3, r1
  33d240: 115a         	asrs	r2, r3, #0x5
  33d242: 17cb         	asrs	r3, r1, #0x1f
  33d244: 1ad2         	subs	r2, r2, r3
  33d246: 4613         	mov	r3, r2
  33d248: 011b         	lsls	r3, r3, #0x4
  33d24a: 1a9b         	subs	r3, r3, r2
  33d24c: 009b         	lsls	r3, r3, #0x2
  33d24e: 1aca         	subs	r2, r1, r3
  33d250: f246 6367    	movw	r3, #0x6667
  33d254: f2c6 6366    	movt	r3, #0x6666
  33d258: fb83 1302    	smull	r1, r3, r3, r2
  33d25c: 1099         	asrs	r1, r3, #0x2
  33d25e: 17d3         	asrs	r3, r2, #0x1f
  33d260: 1ac9         	subs	r1, r1, r3
  33d262: 460b         	mov	r3, r1
  33d264: 009b         	lsls	r3, r3, #0x2
  33d266: 440b         	add	r3, r1
  33d268: 005b         	lsls	r3, r3, #0x1
  33d26a: 1ad3         	subs	r3, r2, r3
  33d26c: 9309         	str	r3, [sp, #0x24]
  33d26e: 9b03         	ldr	r3, [sp, #0xc]
  33d270: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33d274: 681b         	ldr	r3, [r3]
  33d276: f503 73fc    	add.w	r3, r3, #0x1f8
  33d27a: 681c         	ldr	r4, [r3]
  33d27c: 9b03         	ldr	r3, [sp, #0xc]
  33d27e: f8d3 5140    	ldr.w	r5, [r3, #0x140]
  33d282: 9b09         	ldr	r3, [sp, #0x24]
  33d284: 9300         	str	r3, [sp]
  33d286: 4b09         	ldr	r3, [pc, #0x24]         @ 0x33d2ac <HUD::updateClock()+0x150>
  33d288: 447b         	add	r3, pc
  33d28a: 4618         	mov	r0, r3
  33d28c: 9906         	ldr	r1, [sp, #0x18]
  33d28e: 9a07         	ldr	r2, [sp, #0x1c]
  33d290: 9b08         	ldr	r3, [sp, #0x20]
  33d292: f25c fc3d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x25c87a
  33d296: 4603         	mov	r3, r0
  33d298: 4618         	mov	r0, r3
  33d29a: f25c fb45    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25c68a
  33d29e: 4603         	mov	r3, r0
  33d2a0: 4628         	mov	r0, r5
  33d2a2: 4619         	mov	r1, r3
  33d2a4: 47a0         	blx	r4
  33d2a6: b00b         	add	sp, #0x2c
  33d2a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33d2a9); words below are literal-pool data ---
  33d2aa: bf00         	nop
  33d2ac: c820         	ldm	r0!, {r5}
  33d2ae: 0048         	lsls	r0, r1, #0x1

// ==== HUD::setGameClockToZero
//      file offset 0x33d2b0 (= ELF address; Ghidra 0x34d2b0), 16 bytes, Thumb-2
  33d2b0: b082         	sub	sp, #0x8
  33d2b2: 9001         	str	r0, [sp, #0x4]
  33d2b4: 9b01         	ldr	r3, [sp, #0x4]
  33d2b6: 2200         	movs	r2, #0x0
  33d2b8: f8c3 2198    	str.w	r2, [r3, #0x198]
  33d2bc: b002         	add	sp, #0x8
  33d2be: 4770         	bx	lr

// ==== HUD::addMessage
//      file offset 0x33d2c0 (= ELF address; Ghidra 0x34d2c0), 292 bytes, Thumb-2
  33d2c0: b5f0         	push	{r4, r5, r6, r7, lr}
  33d2c2: b08b         	sub	sp, #0x2c
  33d2c4: 9005         	str	r0, [sp, #0x14]
  33d2c6: 9104         	str	r1, [sp, #0x10]
  33d2c8: 9203         	str	r2, [sp, #0xc]
  33d2ca: f8ad 300a    	strh.w	r3, [sp, #0xa]
  33d2ce: 9804         	ldr	r0, [sp, #0x10]
  33d2d0: f078 f016    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x47802c
  33d2d4: 4604         	mov	r4, r0
  33d2d6: ab07         	add	r3, sp, #0x1c
  33d2d8: 4618         	mov	r0, r3
  33d2da: f04d f08b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44d116
  33d2de: aa08         	add	r2, sp, #0x20
  33d2e0: ab07         	add	r3, sp, #0x1c
  33d2e2: 4610         	mov	r0, r2
  33d2e4: 4621         	mov	r1, r4
  33d2e6: 461a         	mov	r2, r3
  33d2e8: f079 f3ba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x479774
  33d2ec: ab08         	add	r3, sp, #0x20
  33d2ee: 4618         	mov	r0, r3
  33d2f0: f25c fba4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25c748
  33d2f4: 4607         	mov	r7, r0
  33d2f6: f89d 300c    	ldrb.w	r3, [sp, #0xc]
  33d2fa: 4618         	mov	r0, r3
  33d2fc: f7a7 fd04    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x585f8
  33d300: 4606         	mov	r6, r0
  33d302: f89d 300d    	ldrb.w	r3, [sp, #0xd]
  33d306: 4618         	mov	r0, r3
  33d308: f7a7 fcfe    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x58604
  33d30c: 4605         	mov	r5, r0
  33d30e: f89d 300e    	ldrb.w	r3, [sp, #0xe]
  33d312: 4618         	mov	r0, r3
  33d314: f7a7 fcf8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x58610
  33d318: 4604         	mov	r4, r0
  33d31a: f9bd 300a    	ldrsh.w	r3, [sp, #0xa]
  33d31e: 4618         	mov	r0, r3
  33d320: f7a7 fcf2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x5861c
  33d324: 4603         	mov	r3, r0
  33d326: 9300         	str	r3, [sp]
  33d328: 2300         	movs	r3, #0x0
  33d32a: 9301         	str	r3, [sp, #0x4]
  33d32c: 4638         	mov	r0, r7
  33d32e: 4631         	mov	r1, r6
  33d330: 462a         	mov	r2, r5
  33d332: 4623         	mov	r3, r4
  33d334: f25c fd6c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x25cad8
  33d338: 4603         	mov	r3, r0
  33d33a: 9309         	str	r3, [sp, #0x24]
  33d33c: ab08         	add	r3, sp, #0x20
  33d33e: 4618         	mov	r0, r3
  33d340: f078 f2e8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4785d0
  33d344: ab07         	add	r3, sp, #0x1c
  33d346: 4618         	mov	r0, r3
  33d348: f04d f058    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44d0b0
  33d34c: 9b05         	ldr	r3, [sp, #0x14]
  33d34e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33d352: 4618         	mov	r0, r3
  33d354: 9909         	ldr	r1, [sp, #0x24]
  33d356: f25c ff89    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x25cf12
  33d35a: 9b05         	ldr	r3, [sp, #0x14]
  33d35c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33d360: 4618         	mov	r0, r3
  33d362: f25c febd    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x25cd7a
  33d366: 4603         	mov	r3, r0
  33d368: 2b01         	cmp	r3, #0x1
  33d36a: bf14         	ite	ne
  33d36c: 2300         	movne	r3, #0x0
  33d36e: 2301         	moveq	r3, #0x1
  33d370: b2db         	uxtb	r3, r3
  33d372: 2b00         	cmp	r3, #0x0
  33d374: d034         	beq	0x33d3e0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)+0x120> @ imm = #0x68
  33d376: 9b05         	ldr	r3, [sp, #0x14]
  33d378: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33d37c: 681b         	ldr	r3, [r3]
  33d37e: f503 73de    	add.w	r3, r3, #0x1bc
  33d382: 681b         	ldr	r3, [r3]
  33d384: 9a05         	ldr	r2, [sp, #0x14]
  33d386: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  33d38a: 4611         	mov	r1, r2
  33d38c: aa03         	add	r2, sp, #0xc
  33d38e: 4608         	mov	r0, r1
  33d390: 4611         	mov	r1, r2
  33d392: 4798         	blx	r3
  33d394: 9b05         	ldr	r3, [sp, #0x14]
  33d396: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33d39a: 681b         	ldr	r3, [r3]
  33d39c: f503 730f    	add.w	r3, r3, #0x23c
  33d3a0: 681c         	ldr	r4, [r3]
  33d3a2: 9b05         	ldr	r3, [sp, #0x14]
  33d3a4: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  33d3a8: 9804         	ldr	r0, [sp, #0x10]
  33d3aa: f077 f7a9    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x477f52
  33d3ae: 4603         	mov	r3, r0
  33d3b0: 4628         	mov	r0, r5
  33d3b2: 4619         	mov	r1, r3
  33d3b4: 47a0         	blx	r4
  33d3b6: f9bd 300a    	ldrsh.w	r3, [sp, #0xa]
  33d3ba: ee07 3a10    	vmov	s14, r3
  33d3be: eef8 7ac7    	vcvt.f32.s32	s15, s14
  33d3c2: 9b05         	ldr	r3, [sp, #0x14]
  33d3c4: edc3 7a6c    	vstr	s15, [r3, #432]
  33d3c8: e00a         	b	0x33d3e0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)+0x120> @ imm = #0x14
  33d3ca: ab08         	add	r3, sp, #0x20
  33d3cc: 4618         	mov	r0, r3
  33d3ce: f078 f2a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478542
  33d3d2: e7ff         	b	0x33d3d4 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)+0x114> @ imm = #-0x2
  33d3d4: ab07         	add	r3, sp, #0x1c
  33d3d6: 4618         	mov	r0, r3
  33d3d8: f04d f010    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44d020
  33d3dc: f04a f666    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44accc
  33d3e0: b00b         	add	sp, #0x2c
  33d3e2: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== HUD::removePlayer
//      file offset 0x33d3e4 (= ELF address; Ghidra 0x34d3e4), 114 bytes, Thumb-2
  33d3e4: b510         	push	{r4, lr}
  33d3e6: b084         	sub	sp, #0x10
  33d3e8: 9001         	str	r0, [sp, #0x4]
  33d3ea: 9100         	str	r1, [sp]
  33d3ec: 9b01         	ldr	r3, [sp, #0x4]
  33d3ee: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d3f2: 4618         	mov	r0, r3
  33d3f4: f099 fed0    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x99da0
  33d3f8: 4604         	mov	r4, r0
  33d3fa: ab03         	add	r3, sp, #0xc
  33d3fc: 4618         	mov	r0, r3
  33d3fe: 9900         	ldr	r1, [sp]
  33d400: f079 f072    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4790e4
  33d404: ab03         	add	r3, sp, #0xc
  33d406: 4620         	mov	r0, r4
  33d408: 4619         	mov	r1, r3
  33d40a: f097 ffa3    	bl	0x3d5354 <ScoreList::deactivateScore(std::string)> @ imm = #0x97f46
  33d40e: ab03         	add	r3, sp, #0xc
  33d410: 4618         	mov	r0, r3
  33d412: f078 f27f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4784fe
  33d416: 9b01         	ldr	r3, [sp, #0x4]
  33d418: f8d3 4100    	ldr.w	r4, [r3, #0x100]
  33d41c: ab03         	add	r3, sp, #0xc
  33d41e: 4618         	mov	r0, r3
  33d420: 9900         	ldr	r1, [sp]
  33d422: f079 f061    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4790c2
  33d426: ab03         	add	r3, sp, #0xc
  33d428: 4620         	mov	r0, r4
  33d42a: 4619         	mov	r1, r3
  33d42c: f080 fb08    	bl	0x3bda40 <Radar::removeAlert(std::string)> @ imm = #0x80610
  33d430: ab03         	add	r3, sp, #0xc
  33d432: 4618         	mov	r0, r3
  33d434: f078 f26e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4784dc
  33d438: e00b         	b	0x33d452 <HUD::removePlayer(std::string)+0x6e> @ imm = #0x16
  33d43a: ab03         	add	r3, sp, #0xc
  33d43c: 4618         	mov	r0, r3
  33d43e: f078 f269    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4784d2
  33d442: f04a f633    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44ac66
  33d446: ab03         	add	r3, sp, #0xc
  33d448: 4618         	mov	r0, r3
  33d44a: f078 f263    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4784c6
  33d44e: f04a f62d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44ac5a
  33d452: b004         	add	sp, #0x10
  33d454: bd10         	pop	{r4, pc}

// ==== HUD::addPlayer
//      file offset 0x33d458 (= ELF address; Ghidra 0x34d458), 336 bytes, Thumb-2
  33d458: b530         	push	{r4, r5, lr}
  33d45a: b087         	sub	sp, #0x1c
  33d45c: 9001         	str	r0, [sp, #0x4]
  33d45e: 9100         	str	r1, [sp]
  33d460: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x33d5a0 <HUD::addPlayer(std::string)+0x148>
  33d462: 447c         	add	r4, pc
  33d464: 9b01         	ldr	r3, [sp, #0x4]
  33d466: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  33d46a: ab04         	add	r3, sp, #0x10
  33d46c: 4618         	mov	r0, r3
  33d46e: 9900         	ldr	r1, [sp]
  33d470: f079 f03a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x479074
  33d474: ab04         	add	r3, sp, #0x10
  33d476: 4628         	mov	r0, r5
  33d478: 4619         	mov	r1, r3
  33d47a: f080 fa99    	bl	0x3bd9b0 <Radar::addAlert(std::string)> @ imm = #0x80532
  33d47e: ab04         	add	r3, sp, #0x10
  33d480: 4618         	mov	r0, r3
  33d482: f078 f247    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47848e
  33d486: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x33d5a4 <HUD::addPlayer(std::string)+0x14c>
  33d488: 58e3         	ldr	r3, [r4, r3]
  33d48a: 681b         	ldr	r3, [r3]
  33d48c: 4618         	mov	r0, r3
  33d48e: 9900         	ldr	r1, [sp]
  33d490: f256 fd2e    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x256a5c
  33d494: 4603         	mov	r3, r0
  33d496: 9305         	str	r3, [sp, #0x14]
  33d498: 9b05         	ldr	r3, [sp, #0x14]
  33d49a: 2b00         	cmp	r3, #0x0
  33d49c: d07e         	beq	0x33d59c <HUD::addPlayer(std::string)+0x144> @ imm = #0xfc
  33d49e: f094 ff13    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x94e26
  33d4a2: 4604         	mov	r4, r0
  33d4a4: 9b05         	ldr	r3, [sp, #0x14]
  33d4a6: 681b         	ldr	r3, [r3]
  33d4a8: f503 73ec    	add.w	r3, r3, #0x1d8
  33d4ac: 681b         	ldr	r3, [r3]
  33d4ae: 9805         	ldr	r0, [sp, #0x14]
  33d4b0: 4798         	blx	r3
  33d4b2: 4603         	mov	r3, r0
  33d4b4: aa03         	add	r2, sp, #0xc
  33d4b6: 4610         	mov	r0, r2
  33d4b8: 4619         	mov	r1, r3
  33d4ba: f0b6 fd71    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #0xb6ae2
  33d4be: 9b05         	ldr	r3, [sp, #0x14]
  33d4c0: 681b         	ldr	r3, [r3]
  33d4c2: f503 73e0    	add.w	r3, r3, #0x1c0
  33d4c6: 681b         	ldr	r3, [r3]
  33d4c8: aa04         	add	r2, sp, #0x10
  33d4ca: 4610         	mov	r0, r2
  33d4cc: 9905         	ldr	r1, [sp, #0x14]
  33d4ce: 4798         	blx	r3
  33d4d0: 9b05         	ldr	r3, [sp, #0x14]
  33d4d2: 681b         	ldr	r3, [r3]
  33d4d4: f503 73e2    	add.w	r3, r3, #0x1c4
  33d4d8: 681b         	ldr	r3, [r3]
  33d4da: 9a05         	ldr	r2, [sp, #0x14]
  33d4dc: 4610         	mov	r0, r2
  33d4de: 4798         	blx	r3
  33d4e0: 4603         	mov	r3, r0
  33d4e2: a903         	add	r1, sp, #0xc
  33d4e4: aa04         	add	r2, sp, #0x10
  33d4e6: 4620         	mov	r0, r4
  33d4e8: f095 f97e    	bl	0x3d27e8 <ScoreKeeper::addPlayerScore(std::string, std::string, int)> @ imm = #0x952fc
  33d4ec: ab04         	add	r3, sp, #0x10
  33d4ee: 4618         	mov	r0, r3
  33d4f0: f078 f210    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478420
  33d4f4: ab03         	add	r3, sp, #0xc
  33d4f6: 4618         	mov	r0, r3
  33d4f8: f078 f20c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478418
  33d4fc: 9b01         	ldr	r3, [sp, #0x4]
  33d4fe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d502: 4618         	mov	r0, r3
  33d504: f099 fe48    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x99c90
  33d508: 4604         	mov	r4, r0
  33d50a: 9b05         	ldr	r3, [sp, #0x14]
  33d50c: 681b         	ldr	r3, [r3]
  33d50e: f503 73ec    	add.w	r3, r3, #0x1d8
  33d512: 681b         	ldr	r3, [r3]
  33d514: 9805         	ldr	r0, [sp, #0x14]
  33d516: 4798         	blx	r3
  33d518: 4603         	mov	r3, r0
  33d51a: aa03         	add	r2, sp, #0xc
  33d51c: 4610         	mov	r0, r2
  33d51e: 4619         	mov	r1, r3
  33d520: f0b6 fd3e    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #0xb6a7c
  33d524: 9b05         	ldr	r3, [sp, #0x14]
  33d526: 681b         	ldr	r3, [r3]
  33d528: f503 73e0    	add.w	r3, r3, #0x1c0
  33d52c: 681b         	ldr	r3, [r3]
  33d52e: aa04         	add	r2, sp, #0x10
  33d530: 4610         	mov	r0, r2
  33d532: 9905         	ldr	r1, [sp, #0x14]
  33d534: 4798         	blx	r3
  33d536: 9b05         	ldr	r3, [sp, #0x14]
  33d538: 681b         	ldr	r3, [r3]
  33d53a: f503 73e2    	add.w	r3, r3, #0x1c4
  33d53e: 681b         	ldr	r3, [r3]
  33d540: 9a05         	ldr	r2, [sp, #0x14]
  33d542: 4610         	mov	r0, r2
  33d544: 4798         	blx	r3
  33d546: 4603         	mov	r3, r0
  33d548: a903         	add	r1, sp, #0xc
  33d54a: aa04         	add	r2, sp, #0x10
  33d54c: 4620         	mov	r0, r4
  33d54e: f097 fde1    	bl	0x3d5114 <ScoreList::addSoldierScore(std::string, std::string, int)> @ imm = #0x97bc2
  33d552: ab04         	add	r3, sp, #0x10
  33d554: 4618         	mov	r0, r3
  33d556: f078 f1dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4783ba
  33d55a: ab03         	add	r3, sp, #0xc
  33d55c: 4618         	mov	r0, r3
  33d55e: f078 f1d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4783b2
  33d562: e01b         	b	0x33d59c <HUD::addPlayer(std::string)+0x144> @ imm = #0x36
  33d564: ab04         	add	r3, sp, #0x10
  33d566: 4618         	mov	r0, r3
  33d568: f078 f1d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4783a8
  33d56c: f04a f59e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44ab3c
  33d570: ab04         	add	r3, sp, #0x10
  33d572: 4618         	mov	r0, r3
  33d574: f078 f1ce    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47839c
  33d578: e7ff         	b	0x33d57a <HUD::addPlayer(std::string)+0x122> @ imm = #-0x2
  33d57a: ab03         	add	r3, sp, #0xc
  33d57c: 4618         	mov	r0, r3
  33d57e: f078 f1c9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478392
  33d582: f04a f593    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44ab26
  33d586: ab04         	add	r3, sp, #0x10
  33d588: 4618         	mov	r0, r3
  33d58a: f078 f1c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478386
  33d58e: e7ff         	b	0x33d590 <HUD::addPlayer(std::string)+0x138> @ imm = #-0x2
  33d590: ab03         	add	r3, sp, #0xc
  33d592: 4618         	mov	r0, r3
  33d594: f078 f1be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47837c
  33d598: f04a f588    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44ab10
  33d59c: b007         	add	sp, #0x1c
  33d59e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33d59f); words below are literal-pool data ---
  33d5a0: 55a6         	strb	r6, [r4, r6]
  33d5a2: 005f         	lsls	r7, r3, #0x1
  33d5a4: d920         	bls	0x33d5e8 <HUD::addHostPlayer()+0x40> @ imm = #0x40
  33d5a6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::addHostPlayer
//      file offset 0x33d5a8 (= ELF address; Ghidra 0x34d5a8), 284 bytes, Thumb-2
  33d5a8: b530         	push	{r4, r5, lr}
  33d5aa: b085         	sub	sp, #0x14
  33d5ac: 9001         	str	r0, [sp, #0x4]
  33d5ae: 4c42         	ldr	r4, [pc, #0x108]        @ 0x33d6b8 <HUD::addHostPlayer()+0x110>
  33d5b0: 447c         	add	r4, pc
  33d5b2: f094 fe89    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x94d12
  33d5b6: 4605         	mov	r5, r0
  33d5b8: 4b40         	ldr	r3, [pc, #0x100]        @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d5ba: 58e3         	ldr	r3, [r4, r3]
  33d5bc: 681b         	ldr	r3, [r3]
  33d5be: 681b         	ldr	r3, [r3]
  33d5c0: f503 73ec    	add.w	r3, r3, #0x1d8
  33d5c4: 681b         	ldr	r3, [r3]
  33d5c6: 4a3d         	ldr	r2, [pc, #0xf4]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d5c8: 58a2         	ldr	r2, [r4, r2]
  33d5ca: 6812         	ldr	r2, [r2]
  33d5cc: 4610         	mov	r0, r2
  33d5ce: 4798         	blx	r3
  33d5d0: 4603         	mov	r3, r0
  33d5d2: aa02         	add	r2, sp, #0x8
  33d5d4: 4610         	mov	r0, r2
  33d5d6: 4619         	mov	r1, r3
  33d5d8: f0b6 fce2    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #0xb69c4
  33d5dc: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d5de: 58e3         	ldr	r3, [r4, r3]
  33d5e0: 681b         	ldr	r3, [r3]
  33d5e2: 681b         	ldr	r3, [r3]
  33d5e4: f503 73e0    	add.w	r3, r3, #0x1c0
  33d5e8: 681b         	ldr	r3, [r3]
  33d5ea: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d5ec: 58a2         	ldr	r2, [r4, r2]
  33d5ee: 6812         	ldr	r2, [r2]
  33d5f0: a903         	add	r1, sp, #0xc
  33d5f2: 4608         	mov	r0, r1
  33d5f4: 4611         	mov	r1, r2
  33d5f6: 4798         	blx	r3
  33d5f8: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x33d6c0 <HUD::addHostPlayer()+0x118>
  33d5fa: 58e3         	ldr	r3, [r4, r3]
  33d5fc: 681b         	ldr	r3, [r3]
  33d5fe: a902         	add	r1, sp, #0x8
  33d600: aa03         	add	r2, sp, #0xc
  33d602: 4628         	mov	r0, r5
  33d604: f095 f8f0    	bl	0x3d27e8 <ScoreKeeper::addPlayerScore(std::string, std::string, int)> @ imm = #0x951e0
  33d608: ab03         	add	r3, sp, #0xc
  33d60a: 4618         	mov	r0, r3
  33d60c: f078 f182    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478304
  33d610: ab02         	add	r3, sp, #0x8
  33d612: 4618         	mov	r0, r3
  33d614: f078 f17e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4782fc
  33d618: 9b01         	ldr	r3, [sp, #0x4]
  33d61a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d61e: 4618         	mov	r0, r3
  33d620: f099 fdba    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x99b74
  33d624: 4605         	mov	r5, r0
  33d626: 4b25         	ldr	r3, [pc, #0x94]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d628: 58e3         	ldr	r3, [r4, r3]
  33d62a: 681b         	ldr	r3, [r3]
  33d62c: 681b         	ldr	r3, [r3]
  33d62e: f503 73ec    	add.w	r3, r3, #0x1d8
  33d632: 681b         	ldr	r3, [r3]
  33d634: 4a21         	ldr	r2, [pc, #0x84]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d636: 58a2         	ldr	r2, [r4, r2]
  33d638: 6812         	ldr	r2, [r2]
  33d63a: 4610         	mov	r0, r2
  33d63c: 4798         	blx	r3
  33d63e: 4603         	mov	r3, r0
  33d640: aa02         	add	r2, sp, #0x8
  33d642: 4610         	mov	r0, r2
  33d644: 4619         	mov	r1, r3
  33d646: f0b6 fcab    	bl	0x3f3fa0 <SoldierView::getPlayerName()> @ imm = #0xb6956
  33d64a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d64c: 58e3         	ldr	r3, [r4, r3]
  33d64e: 681b         	ldr	r3, [r3]
  33d650: 681b         	ldr	r3, [r3]
  33d652: f503 73e0    	add.w	r3, r3, #0x1c0
  33d656: 681b         	ldr	r3, [r3]
  33d658: 4a18         	ldr	r2, [pc, #0x60]         @ 0x33d6bc <HUD::addHostPlayer()+0x114>
  33d65a: 58a2         	ldr	r2, [r4, r2]
  33d65c: 6812         	ldr	r2, [r2]
  33d65e: a903         	add	r1, sp, #0xc
  33d660: 4608         	mov	r0, r1
  33d662: 4611         	mov	r1, r2
  33d664: 4798         	blx	r3
  33d666: 4b16         	ldr	r3, [pc, #0x58]         @ 0x33d6c0 <HUD::addHostPlayer()+0x118>
  33d668: 58e3         	ldr	r3, [r4, r3]
  33d66a: 681b         	ldr	r3, [r3]
  33d66c: a902         	add	r1, sp, #0x8
  33d66e: aa03         	add	r2, sp, #0xc
  33d670: 4628         	mov	r0, r5
  33d672: f097 fd4f    	bl	0x3d5114 <ScoreList::addSoldierScore(std::string, std::string, int)> @ imm = #0x97a9e
  33d676: ab03         	add	r3, sp, #0xc
  33d678: 4618         	mov	r0, r3
  33d67a: f078 f14b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478296
  33d67e: ab02         	add	r3, sp, #0x8
  33d680: 4618         	mov	r0, r3
  33d682: f078 f147    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47828e
  33d686: e015         	b	0x33d6b4 <HUD::addHostPlayer()+0x10c> @ imm = #0x2a
  33d688: ab03         	add	r3, sp, #0xc
  33d68a: 4618         	mov	r0, r3
  33d68c: f078 f142    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478284
  33d690: e7ff         	b	0x33d692 <HUD::addHostPlayer()+0xea> @ imm = #-0x2
  33d692: ab02         	add	r3, sp, #0x8
  33d694: 4618         	mov	r0, r3
  33d696: f078 f13d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47827a
  33d69a: f04a f507    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44aa0e
  33d69e: ab03         	add	r3, sp, #0xc
  33d6a0: 4618         	mov	r0, r3
  33d6a2: f078 f137    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47826e
  33d6a6: e7ff         	b	0x33d6a8 <HUD::addHostPlayer()+0x100> @ imm = #-0x2
  33d6a8: ab02         	add	r3, sp, #0x8
  33d6aa: 4618         	mov	r0, r3
  33d6ac: f078 f132    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x478264
  33d6b0: f04a f4fc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a9f8
  33d6b4: b005         	add	sp, #0x14
  33d6b6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33d6b7); words below are literal-pool data ---
  33d6b8: 5458         	strb	r0, [r3, r1]
  33d6ba: 005f         	lsls	r7, r3, #0x1
  33d6bc: d784         	bvc	0x33d5c8 <HUD::addHostPlayer()+0x20> @ imm = #-0xf8
  33d6be: ffff d7d0    	<unknown>
  33d6c2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== HUD::updateMenuScreen
//      file offset 0x33d6c4 (= ELF address; Ghidra 0x34d6c4), 384 bytes, Thumb-2
  33d6c4: b510         	push	{r4, lr}
  33d6c6: b082         	sub	sp, #0x8
  33d6c8: 9001         	str	r0, [sp, #0x4]
  33d6ca: 9100         	str	r1, [sp]
  33d6cc: 4c5a         	ldr	r4, [pc, #0x168]        @ 0x33d838 <HUD::updateMenuScreen(float)+0x174>
  33d6ce: 447c         	add	r4, pc
  33d6d0: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x33d83c <HUD::updateMenuScreen(float)+0x178>
  33d6d2: 58e3         	ldr	r3, [r4, r3]
  33d6d4: 681b         	ldr	r3, [r3]
  33d6d6: 2b05         	cmp	r3, #0x5
  33d6d8: f200 80ab    	bhi.w	0x33d832 <HUD::updateMenuScreen(float)+0x16e> @ imm = #0x156
  33d6dc: a102         	adr	r1, #8 <HUD::updateMenuScreen(float)+0x1e>
  33d6de: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  33d6e2: 4411         	add	r1, r2
  33d6e4: 4708         	bx	r1
  33d6e6: bf00         	nop
  33d6e8: 0019         	movs	r1, r3
  33d6ea: 0000         	movs	r0, r0
  33d6ec: 0019         	movs	r1, r3
  33d6ee: 0000         	movs	r0, r0
  33d6f0: 0019         	movs	r1, r3
  33d6f2: 0000         	movs	r0, r0
  33d6f4: 00ab         	lsls	r3, r5, #0x2
  33d6f6: 0000         	movs	r0, r0
  33d6f8: 00ab         	lsls	r3, r5, #0x2
  33d6fa: 0000         	movs	r0, r0
  33d6fc: 0019         	movs	r1, r3
  33d6fe: 0000         	movs	r0, r0
  33d700: 9b01         	ldr	r3, [sp, #0x4]
  33d702: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33d706: 4618         	mov	r0, r3
  33d708: 9900         	ldr	r1, [sp]
  33d70a: f030 fa37    	bl	0x36db7c <MenuScreen::updateStep(float)> @ imm = #0x3046e
  33d70e: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d710: 58e3         	ldr	r3, [r4, r3]
  33d712: 681b         	ldr	r3, [r3]
  33d714: 4618         	mov	r0, r3
  33d716: f0af fae3    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xaf5c6
  33d71a: 4603         	mov	r3, r0
  33d71c: 2b00         	cmp	r3, #0x0
  33d71e: d037         	beq	0x33d790 <HUD::updateMenuScreen(float)+0xcc> @ imm = #0x6e
  33d720: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d722: 58e3         	ldr	r3, [r4, r3]
  33d724: 681b         	ldr	r3, [r3]
  33d726: 4618         	mov	r0, r3
  33d728: f0af fad2    	bl	0x3eccd0 <SoldierManager::getRespawnTime()> @ imm = #0xaf5a4
  33d72c: ee07 0a10    	vmov	s14, r0
  33d730: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33d734: eeb4 7ae7    	vcmpe.f32	s14, s15
  33d738: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33d73c: dd0e         	ble	0x33d75c <HUD::updateMenuScreen(float)+0x98> @ imm = #0x1c
  33d73e: 4b40         	ldr	r3, [pc, #0x100]        @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d740: 58e3         	ldr	r3, [r4, r3]
  33d742: 681b         	ldr	r3, [r3]
  33d744: 4618         	mov	r0, r3
  33d746: f0af fac3    	bl	0x3eccd0 <SoldierManager::getRespawnTime()> @ imm = #0xaf586
  33d74a: ee07 0a10    	vmov	s14, r0
  33d74e: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  33d752: eeb4 7ae7    	vcmpe.f32	s14, s15
  33d756: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33d75a: d404         	bmi	0x33d766 <HUD::updateMenuScreen(float)+0xa2> @ imm = #0x8
  33d75c: 9b01         	ldr	r3, [sp, #0x4]
  33d75e: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  33d762: 2b00         	cmp	r3, #0x0
  33d764: d101         	bne	0x33d76a <HUD::updateMenuScreen(float)+0xa6> @ imm = #0x2
  33d766: 2301         	movs	r3, #0x1
  33d768: e000         	b	0x33d76c <HUD::updateMenuScreen(float)+0xa8> @ imm = #0x0
  33d76a: 2300         	movs	r3, #0x0
  33d76c: 2b00         	cmp	r3, #0x0
  33d76e: d007         	beq	0x33d780 <HUD::updateMenuScreen(float)+0xbc> @ imm = #0xe
  33d770: 9b01         	ldr	r3, [sp, #0x4]
  33d772: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33d776: 4618         	mov	r0, r3
  33d778: 2101         	movs	r1, #0x1
  33d77a: f032 faf5    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x325ea
  33d77e: e007         	b	0x33d790 <HUD::updateMenuScreen(float)+0xcc> @ imm = #0xe
  33d780: 9b01         	ldr	r3, [sp, #0x4]
  33d782: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33d786: 4618         	mov	r0, r3
  33d788: 2100         	movs	r1, #0x0
  33d78a: f032 faed    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x325da
  33d78e: e051         	b	0x33d834 <HUD::updateMenuScreen(float)+0x170> @ imm = #0xa2
  33d790: e050         	b	0x33d834 <HUD::updateMenuScreen(float)+0x170> @ imm = #0xa0
  33d792: 9b01         	ldr	r3, [sp, #0x4]
  33d794: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d798: 4618         	mov	r0, r3
  33d79a: 9900         	ldr	r1, [sp]
  33d79c: f098 fcf2    	bl	0x3d6184 <ScoreScreen::updateStep(float)> @ imm = #0x989e4
  33d7a0: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d7a2: 58e3         	ldr	r3, [r4, r3]
  33d7a4: 681b         	ldr	r3, [r3]
  33d7a6: 4618         	mov	r0, r3
  33d7a8: f0af fa9a    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xaf534
  33d7ac: 4603         	mov	r3, r0
  33d7ae: 2b00         	cmp	r3, #0x0
  33d7b0: d03e         	beq	0x33d830 <HUD::updateMenuScreen(float)+0x16c> @ imm = #0x7c
  33d7b2: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d7b4: 58e3         	ldr	r3, [r4, r3]
  33d7b6: 681b         	ldr	r3, [r3]
  33d7b8: 4618         	mov	r0, r3
  33d7ba: f0af fa89    	bl	0x3eccd0 <SoldierManager::getRespawnTime()> @ imm = #0xaf512
  33d7be: ee07 0a10    	vmov	s14, r0
  33d7c2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  33d7c6: eeb4 7ae7    	vcmpe.f32	s14, s15
  33d7ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33d7ce: dd0e         	ble	0x33d7ee <HUD::updateMenuScreen(float)+0x12a> @ imm = #0x1c
  33d7d0: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x33d840 <HUD::updateMenuScreen(float)+0x17c>
  33d7d2: 58e3         	ldr	r3, [r4, r3]
  33d7d4: 681b         	ldr	r3, [r3]
  33d7d6: 4618         	mov	r0, r3
  33d7d8: f0af fa7a    	bl	0x3eccd0 <SoldierManager::getRespawnTime()> @ imm = #0xaf4f4
  33d7dc: ee07 0a10    	vmov	s14, r0
  33d7e0: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  33d7e4: eeb4 7ae7    	vcmpe.f32	s14, s15
  33d7e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33d7ec: d409         	bmi	0x33d802 <HUD::updateMenuScreen(float)+0x13e> @ imm = #0x12
  33d7ee: 9b01         	ldr	r3, [sp, #0x4]
  33d7f0: f893 31bc    	ldrb.w	r3, [r3, #0x1bc]
  33d7f4: 2b00         	cmp	r3, #0x0
  33d7f6: d104         	bne	0x33d802 <HUD::updateMenuScreen(float)+0x13e> @ imm = #0x8
  33d7f8: 9b01         	ldr	r3, [sp, #0x4]
  33d7fa: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  33d7fe: 2b00         	cmp	r3, #0x0
  33d800: d101         	bne	0x33d806 <HUD::updateMenuScreen(float)+0x142> @ imm = #0x2
  33d802: 2301         	movs	r3, #0x1
  33d804: e000         	b	0x33d808 <HUD::updateMenuScreen(float)+0x144> @ imm = #0x0
  33d806: 2300         	movs	r3, #0x0
  33d808: 2b00         	cmp	r3, #0x0
  33d80a: d008         	beq	0x33d81e <HUD::updateMenuScreen(float)+0x15a> @ imm = #0x10
  33d80c: 9b01         	ldr	r3, [sp, #0x4]
  33d80e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d812: 4618         	mov	r0, r3
  33d814: 2101         	movs	r1, #0x1
  33d816: 2200         	movs	r2, #0x0
  33d818: f099 fb82    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x99704
  33d81c: e008         	b	0x33d830 <HUD::updateMenuScreen(float)+0x16c> @ imm = #0x10
  33d81e: 9b01         	ldr	r3, [sp, #0x4]
  33d820: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33d824: 4618         	mov	r0, r3
  33d826: 2100         	movs	r1, #0x0
  33d828: 2200         	movs	r2, #0x0
  33d82a: f099 fb79    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x996f2
  33d82e: e001         	b	0x33d834 <HUD::updateMenuScreen(float)+0x170> @ imm = #0x2
  33d830: e000         	b	0x33d834 <HUD::updateMenuScreen(float)+0x170> @ imm = #0x0
  33d832: bf00         	nop
  33d834: b002         	add	sp, #0x8
  33d836: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x33d837); words below are literal-pool data ---
  33d838: 533a         	strh	r2, [r7, r4]
  33d83a: 005f         	lsls	r7, r3, #0x1
  33d83c: d838         	bhi	0x33d8b0 <HUD::updateStep(float)+0x6c> @ imm = #0x70
  33d83e: ffff d910    	vqshrn.u64	d29, q0, #0x1
  33d842: ffff b5f0    	<unknown>

// ==== HUD::updateStep
//      file offset 0x33d844 (= ELF address; Ghidra 0x34d844), 1252 bytes, Thumb-2
  33d844: b5f0         	push	{r4, r5, r6, r7, lr}
  33d846: b08d         	sub	sp, #0x34
  33d848: 9001         	str	r0, [sp, #0x4]
  33d84a: 9100         	str	r1, [sp]
  33d84c: 4cc3         	ldr	r4, [pc, #0x30c]        @ 0x33db5c <HUD::updateStep(float)+0x318>
  33d84e: 447c         	add	r4, pc
  33d850: 9b01         	ldr	r3, [sp, #0x4]
  33d852: ed93 7a62    	vldr	s14, [r3, #392]
  33d856: eddd 7a00    	vldr	s15, [sp]
  33d85a: ee77 7a27    	vadd.f32	s15, s14, s15
  33d85e: 9b01         	ldr	r3, [sp, #0x4]
  33d860: edc3 7a62    	vstr	s15, [r3, #392]
  33d864: 9b01         	ldr	r3, [sp, #0x4]
  33d866: ed93 7a63    	vldr	s14, [r3, #396]
  33d86a: eddd 7a00    	vldr	s15, [sp]
  33d86e: ee77 7a27    	vadd.f32	s15, s14, s15
  33d872: 9b01         	ldr	r3, [sp, #0x4]
  33d874: edc3 7a63    	vstr	s15, [r3, #396]
  33d878: 9b01         	ldr	r3, [sp, #0x4]
  33d87a: ed93 7a64    	vldr	s14, [r3, #400]
  33d87e: eddd 7a00    	vldr	s15, [sp]
  33d882: ee77 7a27    	vadd.f32	s15, s14, s15
  33d886: 9b01         	ldr	r3, [sp, #0x4]
  33d888: edc3 7a64    	vstr	s15, [r3, #400]
  33d88c: 9b01         	ldr	r3, [sp, #0x4]
  33d88e: ed93 7a65    	vldr	s14, [r3, #404]
  33d892: eddd 7a00    	vldr	s15, [sp]
  33d896: ee77 7a27    	vadd.f32	s15, s14, s15
  33d89a: 9b01         	ldr	r3, [sp, #0x4]
  33d89c: edc3 7a65    	vstr	s15, [r3, #404]
  33d8a0: 9b01         	ldr	r3, [sp, #0x4]
  33d8a2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  33d8a6: 4618         	mov	r0, r3
  33d8a8: 9900         	ldr	r1, [sp]
  33d8aa: f010 f955    	bl	0x34db58 <Joypad::updateStep(float)> @ imm = #0x102aa
  33d8ae: 9b01         	ldr	r3, [sp, #0x4]
  33d8b0: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  33d8b4: 4618         	mov	r0, r3
  33d8b6: 9900         	ldr	r1, [sp]
  33d8b8: f080 fa5a    	bl	0x3bdd70 <Radar::updateStep(float)> @ imm = #0x804b4
  33d8bc: 9b01         	ldr	r3, [sp, #0x4]
  33d8be: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  33d8c2: 681b         	ldr	r3, [r3]
  33d8c4: 3398         	adds	r3, #0x98
  33d8c6: 681b         	ldr	r3, [r3]
  33d8c8: 9a01         	ldr	r2, [sp, #0x4]
  33d8ca: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  33d8ce: 9901         	ldr	r1, [sp, #0x4]
  33d8d0: ed91 7a62    	vldr	s14, [r1, #392]
  33d8d4: eddf 7aa0    	vldr	s15, [pc, #640]         @ 0x33db58 <HUD::updateStep(float)+0x314>
  33d8d8: ee67 7a27    	vmul.f32	s15, s14, s15
  33d8dc: 4610         	mov	r0, r2
  33d8de: ee17 1a90    	vmov	r1, s15
  33d8e2: 4798         	blx	r3
  33d8e4: 9b01         	ldr	r3, [sp, #0x4]
  33d8e6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  33d8ea: 4618         	mov	r0, r3
  33d8ec: 9900         	ldr	r1, [sp]
  33d8ee: f7a6 fe9f    	bl	0x2e4630 <AmmoMeter::updateStep(float)> @ imm = #-0x592c2
  33d8f2: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x33db60 <HUD::updateStep(float)+0x31c>
  33d8f4: 58e3         	ldr	r3, [r4, r3]
  33d8f6: 681b         	ldr	r3, [r3]
  33d8f8: 681b         	ldr	r3, [r3]
  33d8fa: f503 73fa    	add.w	r3, r3, #0x1f4
  33d8fe: 681b         	ldr	r3, [r3]
  33d900: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x33db60 <HUD::updateStep(float)+0x31c>
  33d902: 58a2         	ldr	r2, [r4, r2]
  33d904: 6812         	ldr	r2, [r2]
  33d906: 4610         	mov	r0, r2
  33d908: 4798         	blx	r3
  33d90a: 4603         	mov	r3, r0
  33d90c: 9304         	str	r3, [sp, #0x10]
  33d90e: 9b01         	ldr	r3, [sp, #0x4]
  33d910: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33d914: 681b         	ldr	r3, [r3]
  33d916: 3390         	adds	r3, #0x90
  33d918: 681d         	ldr	r5, [r3]
  33d91a: 9b01         	ldr	r3, [sp, #0x4]
  33d91c: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  33d920: 461e         	mov	r6, r3
  33d922: 9b04         	ldr	r3, [sp, #0x10]
  33d924: 2b00         	cmp	r3, #0x0
  33d926: d02e         	beq	0x33d986 <HUD::updateStep(float)+0x142> @ imm = #0x5c
  33d928: 9b04         	ldr	r3, [sp, #0x10]
  33d92a: 681b         	ldr	r3, [r3]
  33d92c: f503 731d    	add.w	r3, r3, #0x274
  33d930: 681b         	ldr	r3, [r3]
  33d932: 9804         	ldr	r0, [sp, #0x10]
  33d934: 4798         	blx	r3
  33d936: 4603         	mov	r3, r0
  33d938: b29b         	uxth	r3, r3
  33d93a: b21b         	sxth	r3, r3
  33d93c: 2b00         	cmp	r3, #0x0
  33d93e: dd22         	ble	0x33d986 <HUD::updateStep(float)+0x142> @ imm = #0x44
  33d940: 9b04         	ldr	r3, [sp, #0x10]
  33d942: 681b         	ldr	r3, [r3]
  33d944: f503 7333    	add.w	r3, r3, #0x2cc
  33d948: 681b         	ldr	r3, [r3]
  33d94a: 9804         	ldr	r0, [sp, #0x10]
  33d94c: 4798         	blx	r3
  33d94e: 4603         	mov	r3, r0
  33d950: f083 0301    	eor	r3, r3, #0x1
  33d954: b2db         	uxtb	r3, r3
  33d956: 2b00         	cmp	r3, #0x0
  33d958: d015         	beq	0x33d986 <HUD::updateStep(float)+0x142> @ imm = #0x2a
  33d95a: 9b04         	ldr	r3, [sp, #0x10]
  33d95c: 681b         	ldr	r3, [r3]
  33d95e: f503 7321    	add.w	r3, r3, #0x284
  33d962: 681b         	ldr	r3, [r3]
  33d964: 9804         	ldr	r0, [sp, #0x10]
  33d966: 4798         	blx	r3
  33d968: 4603         	mov	r3, r0
  33d96a: b29b         	uxth	r3, r3
  33d96c: b21f         	sxth	r7, r3
  33d96e: 9b04         	ldr	r3, [sp, #0x10]
  33d970: 681b         	ldr	r3, [r3]
  33d972: f503 732d    	add.w	r3, r3, #0x2b4
  33d976: 681b         	ldr	r3, [r3]
  33d978: 9804         	ldr	r0, [sp, #0x10]
  33d97a: 4798         	blx	r3
  33d97c: 4603         	mov	r3, r0
  33d97e: 429f         	cmp	r7, r3
  33d980: da01         	bge	0x33d986 <HUD::updateStep(float)+0x142> @ imm = #0x2
  33d982: 2301         	movs	r3, #0x1
  33d984: e000         	b	0x33d988 <HUD::updateStep(float)+0x144> @ imm = #0x0
  33d986: 2300         	movs	r3, #0x0
  33d988: 4630         	mov	r0, r6
  33d98a: 4619         	mov	r1, r3
  33d98c: 47a8         	blx	r5
  33d98e: 9b01         	ldr	r3, [sp, #0x4]
  33d990: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  33d994: 681b         	ldr	r3, [r3]
  33d996: 3390         	adds	r3, #0x90
  33d998: 681b         	ldr	r3, [r3]
  33d99a: 9a01         	ldr	r2, [sp, #0x4]
  33d99c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  33d9a0: 4611         	mov	r1, r2
  33d9a2: 9a04         	ldr	r2, [sp, #0x10]
  33d9a4: 2a00         	cmp	r2, #0x0
  33d9a6: bf0c         	ite	eq
  33d9a8: 2200         	moveq	r2, #0x0
  33d9aa: 2201         	movne	r2, #0x1
  33d9ac: b2d2         	uxtb	r2, r2
  33d9ae: 4608         	mov	r0, r1
  33d9b0: 4611         	mov	r1, r2
  33d9b2: 4798         	blx	r3
  33d9b4: 9b01         	ldr	r3, [sp, #0x4]
  33d9b6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  33d9ba: 681b         	ldr	r3, [r3]
  33d9bc: 3390         	adds	r3, #0x90
  33d9be: 681b         	ldr	r3, [r3]
  33d9c0: 9a01         	ldr	r2, [sp, #0x4]
  33d9c2: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  33d9c6: 4611         	mov	r1, r2
  33d9c8: 9a04         	ldr	r2, [sp, #0x10]
  33d9ca: 2a00         	cmp	r2, #0x0
  33d9cc: bf0c         	ite	eq
  33d9ce: 2200         	moveq	r2, #0x0
  33d9d0: 2201         	movne	r2, #0x1
  33d9d2: b2d2         	uxtb	r2, r2
  33d9d4: 4608         	mov	r0, r1
  33d9d6: 4611         	mov	r1, r2
  33d9d8: 4798         	blx	r3
  33d9da: 9b01         	ldr	r3, [sp, #0x4]
  33d9dc: f893 31c4    	ldrb.w	r3, [r3, #0x1c4]
  33d9e0: 2b00         	cmp	r3, #0x0
  33d9e2: d039         	beq	0x33da58 <HUD::updateStep(float)+0x214> @ imm = #0x72
  33d9e4: 9b01         	ldr	r3, [sp, #0x4]
  33d9e6: ed93 7a6a    	vldr	s14, [r3, #424]
  33d9ea: eddd 7a00    	vldr	s15, [sp]
  33d9ee: ee77 7a27    	vadd.f32	s15, s14, s15
  33d9f2: 9b01         	ldr	r3, [sp, #0x4]
  33d9f4: edc3 7a6a    	vstr	s15, [r3, #424]
  33d9f8: 9b01         	ldr	r3, [sp, #0x4]
  33d9fa: ed93 7a6a    	vldr	s14, [r3, #424]
  33d9fe: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  33da02: eeb4 7ae7    	vcmpe.f32	s14, s15
  33da06: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33da0a: dd07         	ble	0x33da1c <HUD::updateStep(float)+0x1d8> @ imm = #0xe
  33da0c: 9801         	ldr	r0, [sp, #0x4]
  33da0e: f7ff fba5    	bl	0x33d15c <HUD::updateClock()> @ imm = #-0x8b6
  33da12: 9b01         	ldr	r3, [sp, #0x4]
  33da14: f04f 0200    	mov.w	r2, #0x0
  33da18: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  33da1c: 9b01         	ldr	r3, [sp, #0x4]
  33da1e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  33da22: 681b         	ldr	r3, [r3]
  33da24: 3390         	adds	r3, #0x90
  33da26: 681b         	ldr	r3, [r3]
  33da28: 9a01         	ldr	r2, [sp, #0x4]
  33da2a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  33da2e: 4610         	mov	r0, r2
  33da30: 2100         	movs	r1, #0x0
  33da32: 4798         	blx	r3
  33da34: 9b01         	ldr	r3, [sp, #0x4]
  33da36: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33da3a: 2b00         	cmp	r3, #0x0
  33da3c: d018         	beq	0x33da70 <HUD::updateStep(float)+0x22c> @ imm = #0x30
  33da3e: 9b01         	ldr	r3, [sp, #0x4]
  33da40: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  33da44: 681b         	ldr	r3, [r3]
  33da46: 3390         	adds	r3, #0x90
  33da48: 681b         	ldr	r3, [r3]
  33da4a: 9a01         	ldr	r2, [sp, #0x4]
  33da4c: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  33da50: 4610         	mov	r0, r2
  33da52: 2100         	movs	r1, #0x0
  33da54: 4798         	blx	r3
  33da56: e00b         	b	0x33da70 <HUD::updateStep(float)+0x22c> @ imm = #0x16
  33da58: 9b01         	ldr	r3, [sp, #0x4]
  33da5a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  33da5e: 681b         	ldr	r3, [r3]
  33da60: 3390         	adds	r3, #0x90
  33da62: 681b         	ldr	r3, [r3]
  33da64: 9a01         	ldr	r2, [sp, #0x4]
  33da66: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  33da6a: 4610         	mov	r0, r2
  33da6c: 2100         	movs	r1, #0x0
  33da6e: 4798         	blx	r3
  33da70: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x33db60 <HUD::updateStep(float)+0x31c>
  33da72: 58e3         	ldr	r3, [r4, r3]
  33da74: 681b         	ldr	r3, [r3]
  33da76: 681b         	ldr	r3, [r3]
  33da78: f503 7336    	add.w	r3, r3, #0x2d8
  33da7c: 681b         	ldr	r3, [r3]
  33da7e: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x33db60 <HUD::updateStep(float)+0x31c>
  33da80: 58a2         	ldr	r2, [r4, r2]
  33da82: 6812         	ldr	r2, [r2]
  33da84: 4610         	mov	r0, r2
  33da86: 4798         	blx	r3
  33da88: 4603         	mov	r3, r0
  33da8a: 9305         	str	r3, [sp, #0x14]
  33da8c: 9b01         	ldr	r3, [sp, #0x4]
  33da8e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33da92: 681b         	ldr	r3, [r3]
  33da94: 3390         	adds	r3, #0x90
  33da96: 681b         	ldr	r3, [r3]
  33da98: 9a01         	ldr	r2, [sp, #0x4]
  33da9a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33da9e: 4611         	mov	r1, r2
  33daa0: 9a05         	ldr	r2, [sp, #0x14]
  33daa2: 2a00         	cmp	r2, #0x0
  33daa4: bfd4         	ite	le
  33daa6: 2200         	movle	r2, #0x0
  33daa8: 2201         	movgt	r2, #0x1
  33daaa: b2d2         	uxtb	r2, r2
  33daac: 4608         	mov	r0, r1
  33daae: 4611         	mov	r1, r2
  33dab0: 4798         	blx	r3
  33dab2: 9b01         	ldr	r3, [sp, #0x4]
  33dab4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33dab8: 681b         	ldr	r3, [r3]
  33daba: 3390         	adds	r3, #0x90
  33dabc: 681d         	ldr	r5, [r3]
  33dabe: 9b01         	ldr	r3, [sp, #0x4]
  33dac0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  33dac4: 461e         	mov	r6, r3
  33dac6: 9b01         	ldr	r3, [sp, #0x4]
  33dac8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  33dacc: 681b         	ldr	r3, [r3]
  33dace: 3394         	adds	r3, #0x94
  33dad0: 681b         	ldr	r3, [r3]
  33dad2: 9a01         	ldr	r2, [sp, #0x4]
  33dad4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  33dad8: 4610         	mov	r0, r2
  33dada: 4798         	blx	r3
  33dadc: 4603         	mov	r3, r0
  33dade: 4630         	mov	r0, r6
  33dae0: 4619         	mov	r1, r3
  33dae2: 47a8         	blx	r5
  33dae4: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x33db64 <HUD::updateStep(float)+0x320>
  33dae6: 58e3         	ldr	r3, [r4, r3]
  33dae8: 681b         	ldr	r3, [r3]
  33daea: 4618         	mov	r0, r3
  33daec: f0af f8f8    	bl	0x3ecce0 <SoldierManager::isRespawning()> @ imm = #0xaf1f0
  33daf0: 4603         	mov	r3, r0
  33daf2: 2b00         	cmp	r3, #0x0
  33daf4: d03a         	beq	0x33db6c <HUD::updateStep(float)+0x328> @ imm = #0x74
  33daf6: 9b01         	ldr	r3, [sp, #0x4]
  33daf8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33dafc: 681b         	ldr	r3, [r3]
  33dafe: f503 73fc    	add.w	r3, r3, #0x1f8
  33db02: 681d         	ldr	r5, [r3]
  33db04: 9b01         	ldr	r3, [sp, #0x4]
  33db06: f8d3 6144    	ldr.w	r6, [r3, #0x144]
  33db0a: 4b16         	ldr	r3, [pc, #0x58]         @ 0x33db64 <HUD::updateStep(float)+0x320>
  33db0c: 58e3         	ldr	r3, [r4, r3]
  33db0e: 681b         	ldr	r3, [r3]
  33db10: 4618         	mov	r0, r3
  33db12: f0af f8dd    	bl	0x3eccd0 <SoldierManager::getRespawnTime()> @ imm = #0xaf1ba
  33db16: ee07 0a90    	vmov	s15, r0
  33db1a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  33db1e: ee17 2a90    	vmov	r2, s15
  33db22: 4b11         	ldr	r3, [pc, #0x44]         @ 0x33db68 <HUD::updateStep(float)+0x324>
  33db24: 447b         	add	r3, pc
  33db26: 4618         	mov	r0, r3
  33db28: 4611         	mov	r1, r2
  33db2a: f25b fff1    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x25bfe2
  33db2e: 4603         	mov	r3, r0
  33db30: 4618         	mov	r0, r3
  33db32: f25b fef9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25bdf2
  33db36: 4603         	mov	r3, r0
  33db38: 4630         	mov	r0, r6
  33db3a: 4619         	mov	r1, r3
  33db3c: 47a8         	blx	r5
  33db3e: 9b01         	ldr	r3, [sp, #0x4]
  33db40: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33db44: 681b         	ldr	r3, [r3]
  33db46: 3390         	adds	r3, #0x90
  33db48: 681b         	ldr	r3, [r3]
  33db4a: 9a01         	ldr	r2, [sp, #0x4]
  33db4c: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  33db50: 4610         	mov	r0, r2
  33db52: 2101         	movs	r1, #0x1
  33db54: 4798         	blx	r3
  33db56: e015         	b	0x33db84 <HUD::updateStep(float)+0x340> @ imm = #0x2a
  33db58: 0000         	movs	r0, r0
  33db5a: c316         	stm	r3!, {r1, r2, r4}
  33db5c: 51ba         	str	r2, [r7, r6]
  33db5e: 005f         	lsls	r7, r3, #0x1
  33db60: d784         	bvc	0x33da6c <HUD::updateStep(float)+0x228> @ imm = #-0xf8
  33db62: ffff d910    	vqshrn.u64	d29, q0, #0x1
  33db66: ffff bf90    	<unknown>
  33db6a: 0048         	lsls	r0, r1, #0x1
  33db6c: 9b01         	ldr	r3, [sp, #0x4]
  33db6e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  33db72: 681b         	ldr	r3, [r3]
  33db74: 3390         	adds	r3, #0x90
  33db76: 681b         	ldr	r3, [r3]
  33db78: 9a01         	ldr	r2, [sp, #0x4]
  33db7a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  33db7e: 4610         	mov	r0, r2
  33db80: 2100         	movs	r1, #0x0
  33db82: 4798         	blx	r3
  33db84: 9801         	ldr	r0, [sp, #0x4]
  33db86: 9900         	ldr	r1, [sp]
  33db88: f7ff fd9c    	bl	0x33d6c4 <HUD::updateMenuScreen(float)> @ imm = #-0x4c8
  33db8c: 9b01         	ldr	r3, [sp, #0x4]
  33db8e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33db92: 4618         	mov	r0, r3
  33db94: f25c faa4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x25c548
  33db98: 4603         	mov	r3, r0
  33db9a: 2b00         	cmp	r3, #0x0
  33db9c: bf0c         	ite	eq
  33db9e: 2300         	moveq	r3, #0x0
  33dba0: 2301         	movne	r3, #0x1
  33dba2: b2db         	uxtb	r3, r3
  33dba4: 2b00         	cmp	r3, #0x0
  33dba6: f000 80b1    	beq.w	0x33dd0c <HUD::updateStep(float)+0x4c8> @ imm = #0x162
  33dbaa: 9b01         	ldr	r3, [sp, #0x4]
  33dbac: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33dbb0: 681b         	ldr	r3, [r3]
  33dbb2: 3390         	adds	r3, #0x90
  33dbb4: 681b         	ldr	r3, [r3]
  33dbb6: 9a01         	ldr	r2, [sp, #0x4]
  33dbb8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  33dbbc: 4610         	mov	r0, r2
  33dbbe: 2101         	movs	r1, #0x1
  33dbc0: 4798         	blx	r3
  33dbc2: 9b01         	ldr	r3, [sp, #0x4]
  33dbc4: ed93 7a6b    	vldr	s14, [r3, #428]
  33dbc8: eddd 7a00    	vldr	s15, [sp]
  33dbcc: ee77 7a27    	vadd.f32	s15, s14, s15
  33dbd0: 9b01         	ldr	r3, [sp, #0x4]
  33dbd2: edc3 7a6b    	vstr	s15, [r3, #428]
  33dbd6: 9b01         	ldr	r3, [sp, #0x4]
  33dbd8: ed93 7a6b    	vldr	s14, [r3, #428]
  33dbdc: 9b01         	ldr	r3, [sp, #0x4]
  33dbde: edd3 7a6c    	vldr	s15, [r3, #432]
  33dbe2: eeb4 7ae7    	vcmpe.f32	s14, s15
  33dbe6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  33dbea: dc00         	bgt	0x33dbee <HUD::updateStep(float)+0x3aa> @ imm = #0x0
  33dbec: e09a         	b	0x33dd24 <HUD::updateStep(float)+0x4e0> @ imm = #0x134
  33dbee: 9b01         	ldr	r3, [sp, #0x4]
  33dbf0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33dbf4: 4618         	mov	r0, r3
  33dbf6: 2100         	movs	r1, #0x0
  33dbf8: 2201         	movs	r2, #0x1
  33dbfa: f25c fb8f    	bl	0x59a31c <cocos2d::CCArray::removeObjectAtIndex(unsigned int, bool)> @ imm = #0x25c71e
  33dbfe: 9b01         	ldr	r3, [sp, #0x4]
  33dc00: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33dc04: 4618         	mov	r0, r3
  33dc06: f25c fa6b    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x25c4d6
  33dc0a: 4603         	mov	r3, r0
  33dc0c: 2b00         	cmp	r3, #0x0
  33dc0e: bf0c         	ite	eq
  33dc10: 2300         	moveq	r3, #0x0
  33dc12: 2301         	movne	r3, #0x1
  33dc14: b2db         	uxtb	r3, r3
  33dc16: 2b00         	cmp	r3, #0x0
  33dc18: d072         	beq	0x33dd00 <HUD::updateStep(float)+0x4bc> @ imm = #0xe4
  33dc1a: 9b01         	ldr	r3, [sp, #0x4]
  33dc1c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  33dc20: 4618         	mov	r0, r3
  33dc22: 2100         	movs	r1, #0x0
  33dc24: f25c fa7c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4f8
  33dc28: 4603         	mov	r3, r0
  33dc2a: 9306         	str	r3, [sp, #0x18]
  33dc2c: 9806         	ldr	r0, [sp, #0x18]
  33dc2e: 2100         	movs	r1, #0x0
  33dc30: f25c fa76    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4ec
  33dc34: 4603         	mov	r3, r0
  33dc36: 9307         	str	r3, [sp, #0x1c]
  33dc38: 9806         	ldr	r0, [sp, #0x18]
  33dc3a: 2101         	movs	r1, #0x1
  33dc3c: f25c fa70    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4e0
  33dc40: 4603         	mov	r3, r0
  33dc42: 9308         	str	r3, [sp, #0x20]
  33dc44: 9806         	ldr	r0, [sp, #0x18]
  33dc46: 2102         	movs	r1, #0x2
  33dc48: f25c fa6a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4d4
  33dc4c: 4603         	mov	r3, r0
  33dc4e: 9309         	str	r3, [sp, #0x24]
  33dc50: 9806         	ldr	r0, [sp, #0x18]
  33dc52: 2103         	movs	r1, #0x3
  33dc54: f25c fa64    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4c8
  33dc58: 4603         	mov	r3, r0
  33dc5a: 930a         	str	r3, [sp, #0x28]
  33dc5c: 9806         	ldr	r0, [sp, #0x18]
  33dc5e: 2104         	movs	r1, #0x4
  33dc60: f25c fa5e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x25c4bc
  33dc64: 4603         	mov	r3, r0
  33dc66: 930b         	str	r3, [sp, #0x2c]
  33dc68: 9b01         	ldr	r3, [sp, #0x4]
  33dc6a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33dc6e: 681b         	ldr	r3, [r3]
  33dc70: f503 730f    	add.w	r3, r3, #0x23c
  33dc74: 681c         	ldr	r4, [r3]
  33dc76: 9b01         	ldr	r3, [sp, #0x4]
  33dc78: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  33dc7c: 9807         	ldr	r0, [sp, #0x1c]
  33dc7e: f25b fe53    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25bca6
  33dc82: 4603         	mov	r3, r0
  33dc84: 4628         	mov	r0, r5
  33dc86: 4619         	mov	r1, r3
  33dc88: 47a0         	blx	r4
  33dc8a: 9b01         	ldr	r3, [sp, #0x4]
  33dc8c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33dc90: 681b         	ldr	r3, [r3]
  33dc92: f503 73de    	add.w	r3, r3, #0x1bc
  33dc96: 681c         	ldr	r4, [r3]
  33dc98: 9b01         	ldr	r3, [sp, #0x4]
  33dc9a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33dc9e: 461d         	mov	r5, r3
  33dca0: 9808         	ldr	r0, [sp, #0x20]
  33dca2: f7af f8d7    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x50e52
  33dca6: 4603         	mov	r3, r0
  33dca8: b2df         	uxtb	r7, r3
  33dcaa: 9809         	ldr	r0, [sp, #0x24]
  33dcac: f7af f8d2    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x50e5c
  33dcb0: 4603         	mov	r3, r0
  33dcb2: b2de         	uxtb	r6, r3
  33dcb4: 980a         	ldr	r0, [sp, #0x28]
  33dcb6: f7af f8cd    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x50e66
  33dcba: 4603         	mov	r3, r0
  33dcbc: b2db         	uxtb	r3, r3
  33dcbe: 4638         	mov	r0, r7
  33dcc0: 4631         	mov	r1, r6
  33dcc2: 461a         	mov	r2, r3
  33dcc4: f7fb fa46    	bl	0x339154 <GasCloud::updateStep(float)+0x49c> @ imm = #-0x4b74
  33dcc8: 4603         	mov	r3, r0
  33dcca: 461a         	mov	r2, r3
  33dccc: f88d 200c    	strb.w	r2, [sp, #0xc]
  33dcd0: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  33dcd4: f88d 200d    	strb.w	r2, [sp, #0xd]
  33dcd8: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  33dcdc: f88d 300e    	strb.w	r3, [sp, #0xe]
  33dce0: ab03         	add	r3, sp, #0xc
  33dce2: 4628         	mov	r0, r5
  33dce4: 4619         	mov	r1, r3
  33dce6: 47a0         	blx	r4
  33dce8: 980b         	ldr	r0, [sp, #0x2c]
  33dcea: f7af f8b3    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x50e9a
  33dcee: 4603         	mov	r3, r0
  33dcf0: b29b         	uxth	r3, r3
  33dcf2: ee07 3a10    	vmov	s14, r3
  33dcf6: eef8 7a47    	vcvt.f32.u32	s15, s14
  33dcfa: 9b01         	ldr	r3, [sp, #0x4]
  33dcfc: edc3 7a6c    	vstr	s15, [r3, #432]
  33dd00: 9b01         	ldr	r3, [sp, #0x4]
  33dd02: f04f 0200    	mov.w	r2, #0x0
  33dd06: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  33dd0a: e00b         	b	0x33dd24 <HUD::updateStep(float)+0x4e0> @ imm = #0x16
  33dd0c: 9b01         	ldr	r3, [sp, #0x4]
  33dd0e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  33dd12: 681b         	ldr	r3, [r3]
  33dd14: 3390         	adds	r3, #0x90
  33dd16: 681b         	ldr	r3, [r3]
  33dd18: 9a01         	ldr	r2, [sp, #0x4]
  33dd1a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  33dd1e: 4610         	mov	r0, r2
  33dd20: 2100         	movs	r1, #0x0
  33dd22: 4798         	blx	r3
  33dd24: b00d         	add	sp, #0x34
  33dd26: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== HUD::messageBoxHandler
//      file offset 0x33dd28 (= ELF address; Ghidra 0x34dd28), 100 bytes, Thumb-2
  33dd28: b500         	push	{lr}
  33dd2a: b087         	sub	sp, #0x1c
  33dd2c: 9003         	str	r0, [sp, #0xc]
  33dd2e: 9102         	str	r1, [sp, #0x8]
  33dd30: 9201         	str	r2, [sp, #0x4]
  33dd32: 9b03         	ldr	r3, [sp, #0xc]
  33dd34: 2b01         	cmp	r3, #0x1
  33dd36: d124         	bne	0x33dd82 <HUD::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5a> @ imm = #0x48
  33dd38: ab04         	add	r3, sp, #0x10
  33dd3a: 4618         	mov	r0, r3
  33dd3c: f04c f35a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44c6b4
  33dd40: aa05         	add	r2, sp, #0x14
  33dd42: ab04         	add	r3, sp, #0x10
  33dd44: 4610         	mov	r0, r2
  33dd46: 4a10         	ldr	r2, [pc, #0x40]         @ 0x33dd88 <HUD::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x60>
  33dd48: 447a         	add	r2, pc
  33dd4a: 4611         	mov	r1, r2
  33dd4c: 461a         	mov	r2, r3
  33dd4e: f078 f687    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x478d0e
  33dd52: ab05         	add	r3, sp, #0x14
  33dd54: 4618         	mov	r0, r3
  33dd56: f0f3 fc95    	bl	0x431684 <InAppPurchaseBridge::purchaseProductInGame(std::string)> @ imm = #0xf392a
  33dd5a: ab05         	add	r3, sp, #0x14
  33dd5c: 4618         	mov	r0, r3
  33dd5e: f077 f5d9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477bb2
  33dd62: ab04         	add	r3, sp, #0x10
  33dd64: 4618         	mov	r0, r3
  33dd66: f04c f349    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c692
  33dd6a: e00a         	b	0x33dd82 <HUD::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x5a> @ imm = #0x14
  33dd6c: ab05         	add	r3, sp, #0x14
  33dd6e: 4618         	mov	r0, r3
  33dd70: f077 f5d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477ba0
  33dd74: e7ff         	b	0x33dd76 <HUD::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x4e> @ imm = #-0x2
  33dd76: ab04         	add	r3, sp, #0x10
  33dd78: 4618         	mov	r0, r3
  33dd7a: f04c f33f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c67e
  33dd7e: f04a f195    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a32a
  33dd82: b007         	add	sp, #0x1c
  33dd84: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33dd87); words below are literal-pool data ---
  33dd88: bc78         	pop	{r3, r4, r5, r6}
  33dd8a: 0048         	lsls	r0, r1, #0x1

// ==== HUD::onActivateScore
//      file offset 0x33dd8c (= ELF address; Ghidra 0x34dd8c), 138 bytes, Thumb-2
  33dd8c: b510         	push	{r4, lr}
  33dd8e: b084         	sub	sp, #0x10
  33dd90: 9001         	str	r0, [sp, #0x4]
  33dd92: 9100         	str	r1, [sp]
  33dd94: 9800         	ldr	r0, [sp]
  33dd96: f25b fdc7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25bb8e
  33dd9a: 4604         	mov	r4, r0
  33dd9c: ab03         	add	r3, sp, #0xc
  33dd9e: 4618         	mov	r0, r3
  33dda0: f04c f328    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44c650
  33dda4: aa02         	add	r2, sp, #0x8
  33dda6: ab03         	add	r3, sp, #0xc
  33dda8: 4610         	mov	r0, r2
  33ddaa: 4621         	mov	r1, r4
  33ddac: 461a         	mov	r2, r3
  33ddae: f078 f657    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x478cae
  33ddb2: ab03         	add	r3, sp, #0xc
  33ddb4: 4618         	mov	r0, r3
  33ddb6: f04c f321    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c642
  33ddba: 9b01         	ldr	r3, [sp, #0x4]
  33ddbc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33ddc0: 4618         	mov	r0, r3
  33ddc2: f099 f9e9    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x993d2
  33ddc6: 4604         	mov	r4, r0
  33ddc8: aa03         	add	r2, sp, #0xc
  33ddca: ab02         	add	r3, sp, #0x8
  33ddcc: 4610         	mov	r0, r2
  33ddce: 4619         	mov	r1, r3
  33ddd0: f078 f38a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x478714
  33ddd4: ab03         	add	r3, sp, #0xc
  33ddd6: 4620         	mov	r0, r4
  33ddd8: 4619         	mov	r1, r3
  33ddda: f097 faf5    	bl	0x3d53c8 <ScoreList::activateScore(std::string)> @ imm = #0x975ea
  33ddde: ab03         	add	r3, sp, #0xc
  33dde0: 4618         	mov	r0, r3
  33dde2: f077 f597    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477b2e
  33dde6: ab02         	add	r3, sp, #0x8
  33dde8: 4618         	mov	r0, r3
  33ddea: f077 f593    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477b26
  33ddee: e010         	b	0x33de12 <HUD::onActivateScore(cocos2d::CCObject*)+0x86> @ imm = #0x20
  33ddf0: ab03         	add	r3, sp, #0xc
  33ddf2: 4618         	mov	r0, r3
  33ddf4: f04c f302    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c604
  33ddf8: f04a f158    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a2b0
  33ddfc: ab03         	add	r3, sp, #0xc
  33ddfe: 4618         	mov	r0, r3
  33de00: f077 f588    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477b10
  33de04: e7ff         	b	0x33de06 <HUD::onActivateScore(cocos2d::CCObject*)+0x7a> @ imm = #-0x2
  33de06: ab02         	add	r3, sp, #0x8
  33de08: 4618         	mov	r0, r3
  33de0a: f077 f583    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477b06
  33de0e: f04a f14d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a29a
  33de12: b004         	add	sp, #0x10
  33de14: bd10         	pop	{r4, pc}

// ==== HUD::onDeactivateScore
//      file offset 0x33de18 (= ELF address; Ghidra 0x34de18), 138 bytes, Thumb-2
  33de18: b510         	push	{r4, lr}
  33de1a: b084         	sub	sp, #0x10
  33de1c: 9001         	str	r0, [sp, #0x4]
  33de1e: 9100         	str	r1, [sp]
  33de20: 9800         	ldr	r0, [sp]
  33de22: f25b fd81    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x25bb02
  33de26: 4604         	mov	r4, r0
  33de28: ab03         	add	r3, sp, #0xc
  33de2a: 4618         	mov	r0, r3
  33de2c: f04c f2e2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44c5c4
  33de30: aa02         	add	r2, sp, #0x8
  33de32: ab03         	add	r3, sp, #0xc
  33de34: 4610         	mov	r0, r2
  33de36: 4621         	mov	r1, r4
  33de38: 461a         	mov	r2, r3
  33de3a: f078 f611    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x478c22
  33de3e: ab03         	add	r3, sp, #0xc
  33de40: 4618         	mov	r0, r3
  33de42: f04c f2db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c5b6
  33de46: 9b01         	ldr	r3, [sp, #0x4]
  33de48: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33de4c: 4618         	mov	r0, r3
  33de4e: f099 f9a3    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x99346
  33de52: 4604         	mov	r4, r0
  33de54: aa03         	add	r2, sp, #0xc
  33de56: ab02         	add	r3, sp, #0x8
  33de58: 4610         	mov	r0, r2
  33de5a: 4619         	mov	r1, r3
  33de5c: f078 f344    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x478688
  33de60: ab03         	add	r3, sp, #0xc
  33de62: 4620         	mov	r0, r4
  33de64: 4619         	mov	r1, r3
  33de66: f097 fa75    	bl	0x3d5354 <ScoreList::deactivateScore(std::string)> @ imm = #0x974ea
  33de6a: ab03         	add	r3, sp, #0xc
  33de6c: 4618         	mov	r0, r3
  33de6e: f077 f551    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477aa2
  33de72: ab02         	add	r3, sp, #0x8
  33de74: 4618         	mov	r0, r3
  33de76: f077 f54d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477a9a
  33de7a: e010         	b	0x33de9e <HUD::onDeactivateScore(cocos2d::CCObject*)+0x86> @ imm = #0x20
  33de7c: ab03         	add	r3, sp, #0xc
  33de7e: 4618         	mov	r0, r3
  33de80: f04c f2bc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c578
  33de84: f04a f112    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a224
  33de88: ab03         	add	r3, sp, #0xc
  33de8a: 4618         	mov	r0, r3
  33de8c: f077 f542    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477a84
  33de90: e7ff         	b	0x33de92 <HUD::onDeactivateScore(cocos2d::CCObject*)+0x7a> @ imm = #-0x2
  33de92: ab02         	add	r3, sp, #0x8
  33de94: 4618         	mov	r0, r3
  33de96: f077 f53d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477a7a
  33de9a: f04a f107    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44a20e
  33de9e: b004         	add	sp, #0x10
  33dea0: bd10         	pop	{r4, pc}

// ==== HUD::onScoreChanged
//      file offset 0x33dea4 (= ELF address; Ghidra 0x34dea4), 34 bytes, Thumb-2
  33dea4: b500         	push	{lr}
  33dea6: b083         	sub	sp, #0xc
  33dea8: 9001         	str	r0, [sp, #0x4]
  33deaa: 9100         	str	r1, [sp]
  33deac: 9b01         	ldr	r3, [sp, #0x4]
  33deae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33deb2: 4618         	mov	r0, r3
  33deb4: f099 f970    	bl	0x3d7198 <ScoreScreen::getScoreList()> @ imm = #0x992e0
  33deb8: 4603         	mov	r3, r0
  33deba: 4618         	mov	r0, r3
  33debc: f096 fe00    	bl	0x3d4ac0 <ScoreList::updateScores()> @ imm = #0x96c00
  33dec0: b003         	add	sp, #0xc
  33dec2: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressGrenadeButton
//      file offset 0x33dec8 (= ELF address; Ghidra 0x34dec8), 22 bytes, Thumb-2
  33dec8: b500         	push	{lr}
  33deca: b083         	sub	sp, #0xc
  33decc: 9001         	str	r0, [sp, #0x4]
  33dece: 9100         	str	r1, [sp]
  33ded0: 9801         	ldr	r0, [sp, #0x4]
  33ded2: 2100         	movs	r1, #0x0
  33ded4: f7fe f944    	bl	0x33c160 <HUD::onGrenade(cocos2d::CCObject*)> @ imm = #-0x1d78
  33ded8: b003         	add	sp, #0xc
  33deda: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressReloadButton
//      file offset 0x33dee0 (= ELF address; Ghidra 0x34dee0), 22 bytes, Thumb-2
  33dee0: b500         	push	{lr}
  33dee2: b083         	sub	sp, #0xc
  33dee4: 9001         	str	r0, [sp, #0x4]
  33dee6: 9100         	str	r1, [sp]
  33dee8: 9801         	ldr	r0, [sp, #0x4]
  33deea: 2100         	movs	r1, #0x0
  33deec: f7fe fab4    	bl	0x33c458 <HUD::onReload(cocos2d::CCObject*)> @ imm = #-0x1a98
  33def0: b003         	add	sp, #0xc
  33def2: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressZoomButton
//      file offset 0x33def8 (= ELF address; Ghidra 0x34def8), 22 bytes, Thumb-2
  33def8: b500         	push	{lr}
  33defa: b083         	sub	sp, #0xc
  33defc: 9001         	str	r0, [sp, #0x4]
  33defe: 9100         	str	r1, [sp]
  33df00: 9801         	ldr	r0, [sp, #0x4]
  33df02: 2100         	movs	r1, #0x0
  33df04: f7fe f9be    	bl	0x33c284 <HUD::onZoom(cocos2d::CCObject*)> @ imm = #-0x1c84
  33df08: b003         	add	sp, #0xc
  33df0a: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressChangeWeaponButton
//      file offset 0x33df10 (= ELF address; Ghidra 0x34df10), 22 bytes, Thumb-2
  33df10: b500         	push	{lr}
  33df12: b083         	sub	sp, #0xc
  33df14: 9001         	str	r0, [sp, #0x4]
  33df16: 9100         	str	r1, [sp]
  33df18: 9801         	ldr	r0, [sp, #0x4]
  33df1a: 2100         	movs	r1, #0x0
  33df1c: f7fe fb02    	bl	0x33c524 <HUD::onWeaponSwitch(cocos2d::CCObject*)> @ imm = #-0x19fc
  33df20: b003         	add	sp, #0xc
  33df22: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressChangeGrenadeButton
//      file offset 0x33df28 (= ELF address; Ghidra 0x34df28), 22 bytes, Thumb-2
  33df28: b500         	push	{lr}
  33df2a: b083         	sub	sp, #0xc
  33df2c: 9001         	str	r0, [sp, #0x4]
  33df2e: 9100         	str	r1, [sp]
  33df30: 9801         	ldr	r0, [sp, #0x4]
  33df32: 2100         	movs	r1, #0x0
  33df34: f7fe fb4e    	bl	0x33c5d4 <HUD::onGrenadeSwitch(cocos2d::CCObject*)> @ imm = #-0x1964
  33df38: b003         	add	sp, #0xc
  33df3a: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressScoreButton
//      file offset 0x33df40 (= ELF address; Ghidra 0x34df40), 22 bytes, Thumb-2
  33df40: b500         	push	{lr}
  33df42: b083         	sub	sp, #0xc
  33df44: 9001         	str	r0, [sp, #0x4]
  33df46: 9100         	str	r1, [sp]
  33df48: 9801         	ldr	r0, [sp, #0x4]
  33df4a: 2100         	movs	r1, #0x0
  33df4c: f7fe fcfe    	bl	0x33c94c <HUD::onMenuScreen(cocos2d::CCObject*)> @ imm = #-0x1604
  33df50: b003         	add	sp, #0xc
  33df52: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressMeleeButton
//      file offset 0x33df58 (= ELF address; Ghidra 0x34df58), 22 bytes, Thumb-2
  33df58: b500         	push	{lr}
  33df5a: b083         	sub	sp, #0xc
  33df5c: 9001         	str	r0, [sp, #0x4]
  33df5e: 9100         	str	r1, [sp]
  33df60: 9801         	ldr	r0, [sp, #0x4]
  33df62: 2100         	movs	r1, #0x0
  33df64: f7fe f88a    	bl	0x33c07c <HUD::onPunch(cocos2d::CCObject*)> @ imm = #-0x1eec
  33df68: b003         	add	sp, #0xc
  33df6a: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressPickupButton
//      file offset 0x33df70 (= ELF address; Ghidra 0x34df70), 22 bytes, Thumb-2
  33df70: b500         	push	{lr}
  33df72: b083         	sub	sp, #0xc
  33df74: 9001         	str	r0, [sp, #0x4]
  33df76: 9100         	str	r1, [sp]
  33df78: 9801         	ldr	r0, [sp, #0x4]
  33df7a: 2100         	movs	r1, #0x0
  33df7c: f7fe fb5c    	bl	0x33c638 <HUD::onPickUpWeapon(cocos2d::CCObject*)> @ imm = #-0x1948
  33df80: b003         	add	sp, #0xc
  33df82: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onPressPickupDualButton
//      file offset 0x33df88 (= ELF address; Ghidra 0x34df88), 22 bytes, Thumb-2
  33df88: b500         	push	{lr}
  33df8a: b083         	sub	sp, #0xc
  33df8c: 9001         	str	r0, [sp, #0x4]
  33df8e: 9100         	str	r1, [sp]
  33df90: 9801         	ldr	r0, [sp, #0x4]
  33df92: 2100         	movs	r1, #0x0
  33df94: f7fe fbfa    	bl	0x33c78c <HUD::onPickUpDualWeapon(cocos2d::CCObject*)> @ imm = #-0x180c
  33df98: b003         	add	sp, #0xc
  33df9a: f85d fb04    	ldr	pc, [sp], #4

// ==== HUD::onKeyboard
//      file offset 0x33dfa0 (= ELF address; Ghidra 0x34dfa0), 64 bytes, Thumb-2
  33dfa0: b500         	push	{lr}
  33dfa2: b083         	sub	sp, #0xc
  33dfa4: 9001         	str	r0, [sp, #0x4]
  33dfa6: 9100         	str	r1, [sp]
  33dfa8: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x33dfd8 <HUD::onKeyboard(cocos2d::CCObject*)+0x38>
  33dfaa: 447a         	add	r2, pc
  33dfac: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x33dfdc <HUD::onKeyboard(cocos2d::CCObject*)+0x3c>
  33dfae: 58d3         	ldr	r3, [r2, r3]
  33dfb0: 681b         	ldr	r3, [r3]
  33dfb2: 4618         	mov	r0, r3
  33dfb4: 210d         	movs	r1, #0xd
  33dfb6: f0b9 ff03    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xb9e06
  33dfba: 9b01         	ldr	r3, [sp, #0x4]
  33dfbc: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33dfc0: 4618         	mov	r0, r3
  33dfc2: 2100         	movs	r1, #0x0
  33dfc4: 2201         	movs	r2, #0x1
  33dfc6: f118 fcaf    	bl	0x456928 <cocos2d::extension::CCEditBox::touchDownAction(cocos2d::CCObject*, unsigned int)> @ imm = #0x11895e
  33dfca: 9b01         	ldr	r3, [sp, #0x4]
  33dfcc: 2201         	movs	r2, #0x1
  33dfce: f883 21bc    	strb.w	r2, [r3, #0x1bc]
  33dfd2: b003         	add	sp, #0xc
  33dfd4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x33dfd7); words below are literal-pool data ---
  33dfd8: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x33e154 <HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x14>
  33dfda: 005f         	lsls	r7, r3, #0x1
  33dfdc: d730         	bvc	0x33e040 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x60> @ imm = #0x60
  33dfde: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HUD::editBoxReturn
//      file offset 0x33dfe0 (= ELF address; Ghidra 0x34dfe0), 344 bytes, Thumb-2
  33dfe0: b530         	push	{r4, r5, lr}
  33dfe2: b087         	sub	sp, #0x1c
  33dfe4: 9001         	str	r0, [sp, #0x4]
  33dfe6: 9100         	str	r1, [sp]
  33dfe8: 9b01         	ldr	r3, [sp, #0x4]
  33dfea: 2200         	movs	r2, #0x0
  33dfec: f883 21bc    	strb.w	r2, [r3, #0x1bc]
  33dff0: 9b01         	ldr	r3, [sp, #0x4]
  33dff2: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33dff6: 2b00         	cmp	r3, #0x0
  33dff8: d004         	beq	0x33e004 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x24> @ imm = #0x8
  33dffa: 9b01         	ldr	r3, [sp, #0x4]
  33dffc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33e000: 2b00         	cmp	r3, #0x0
  33e002: d100         	bne	0x33e006 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x26> @ imm = #0x0
  33e004: e090         	b	0x33e128 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x148> @ imm = #0x120
  33e006: 9b01         	ldr	r3, [sp, #0x4]
  33e008: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33e00c: 4618         	mov	r0, r3
  33e00e: f118 fd9d    	bl	0x456b4c <cocos2d::extension::CCEditBox::getText()> @ imm = #0x118b3a
  33e012: 4604         	mov	r4, r0
  33e014: ab05         	add	r3, sp, #0x14
  33e016: 4618         	mov	r0, r3
  33e018: f04c f1ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44c3d8
  33e01c: aa04         	add	r2, sp, #0x10
  33e01e: ab05         	add	r3, sp, #0x14
  33e020: 4610         	mov	r0, r2
  33e022: 4621         	mov	r1, r4
  33e024: 461a         	mov	r2, r3
  33e026: f078 f51b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x478a36
  33e02a: ab05         	add	r3, sp, #0x14
  33e02c: 4618         	mov	r0, r3
  33e02e: f04c f1e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c3ca
  33e032: ab04         	add	r3, sp, #0x10
  33e034: 4618         	mov	r0, r3
  33e036: f077 f011    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x477022
  33e03a: 4603         	mov	r3, r0
  33e03c: 2b00         	cmp	r3, #0x0
  33e03e: bf0c         	ite	eq
  33e040: 2300         	moveq	r3, #0x0
  33e042: 2301         	movne	r3, #0x1
  33e044: b2db         	uxtb	r3, r3
  33e046: 2b00         	cmp	r3, #0x0
  33e048: d03e         	beq	0x33e0c8 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0xe8> @ imm = #0x7c
  33e04a: f2a2 fb31    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2a2662
  33e04e: 4604         	mov	r4, r0
  33e050: ab04         	add	r3, sp, #0x10
  33e052: 4618         	mov	r0, r3
  33e054: f077 f154    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4772a8
  33e058: 4605         	mov	r5, r0
  33e05a: ab03         	add	r3, sp, #0xc
  33e05c: 4618         	mov	r0, r3
  33e05e: f04c f1c9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x44c392
  33e062: aa05         	add	r2, sp, #0x14
  33e064: ab03         	add	r3, sp, #0xc
  33e066: 4610         	mov	r0, r2
  33e068: 4629         	mov	r1, r5
  33e06a: 461a         	mov	r2, r3
  33e06c: f078 f4f8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4789f0
  33e070: ab05         	add	r3, sp, #0x14
  33e072: 4618         	mov	r0, r3
  33e074: f25b fce2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x25b9c4
  33e078: 4603         	mov	r3, r0
  33e07a: 4620         	mov	r0, r4
  33e07c: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x33e12c <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x14c>
  33e07e: 447a         	add	r2, pc
  33e080: 4611         	mov	r1, r2
  33e082: 461a         	mov	r2, r3
  33e084: f2a2 fd52    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2a2aa4
  33e088: ab05         	add	r3, sp, #0x14
  33e08a: 4618         	mov	r0, r3
  33e08c: f077 f442    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477884
  33e090: ab03         	add	r3, sp, #0xc
  33e092: 4618         	mov	r0, r3
  33e094: f04c f1b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c364
  33e098: 9b01         	ldr	r3, [sp, #0x4]
  33e09a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33e09e: 4618         	mov	r0, r3
  33e0a0: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x33e130 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x150>
  33e0a2: 447b         	add	r3, pc
  33e0a4: 4619         	mov	r1, r3
  33e0a6: f118 fd2f    	bl	0x456b08 <cocos2d::extension::CCEditBox::setText(char const*)> @ imm = #0x118a5e
  33e0aa: 9b01         	ldr	r3, [sp, #0x4]
  33e0ac: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33e0b0: 681b         	ldr	r3, [r3]
  33e0b2: f503 730f    	add.w	r3, r3, #0x23c
  33e0b6: 681b         	ldr	r3, [r3]
  33e0b8: 9a01         	ldr	r2, [sp, #0x4]
  33e0ba: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  33e0be: 4610         	mov	r0, r2
  33e0c0: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x33e134 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x154>
  33e0c2: 447a         	add	r2, pc
  33e0c4: 4611         	mov	r1, r2
  33e0c6: 4798         	blx	r3
  33e0c8: 9b01         	ldr	r3, [sp, #0x4]
  33e0ca: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  33e0ce: 4618         	mov	r0, r3
  33e0d0: 2100         	movs	r1, #0x0
  33e0d2: 2200         	movs	r2, #0x0
  33e0d4: f098 ff24    	bl	0x3d6f20 <ScoreScreen::showScreen(bool, bool)> @ imm = #0x98e48
  33e0d8: 9b01         	ldr	r3, [sp, #0x4]
  33e0da: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  33e0de: 4618         	mov	r0, r3
  33e0e0: 2100         	movs	r1, #0x0
  33e0e2: f031 fe41    	bl	0x36fd68 <MenuScreen::showScreen(bool)> @ imm = #0x31c82
  33e0e6: 9b01         	ldr	r3, [sp, #0x4]
  33e0e8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  33e0ec: 4618         	mov	r0, r3
  33e0ee: f010 f9c5    	bl	0x34e47c <Joypad::cancelTouches()> @ imm = #0x1038a
  33e0f2: ab04         	add	r3, sp, #0x10
  33e0f4: 4618         	mov	r0, r3
  33e0f6: f077 f40d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x47781a
  33e0fa: e015         	b	0x33e128 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x148> @ imm = #0x2a
  33e0fc: ab05         	add	r3, sp, #0x14
  33e0fe: 4618         	mov	r0, r3
  33e100: f04c f17c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c2f8
  33e104: f049 f7d2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x449fa4
  33e108: ab05         	add	r3, sp, #0x14
  33e10a: 4618         	mov	r0, r3
  33e10c: f077 f402    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x477804
  33e110: e7ff         	b	0x33e112 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x132> @ imm = #-0x2
  33e112: ab03         	add	r3, sp, #0xc
  33e114: 4618         	mov	r0, r3
  33e116: f04c f171    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x44c2e2
  33e11a: e7ff         	b	0x33e11c <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)+0x13c> @ imm = #-0x2
  33e11c: ab04         	add	r3, sp, #0x10
  33e11e: 4618         	mov	r0, r3
  33e120: f077 f3f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4777f0
  33e124: f049 f7c2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x449f84
  33e128: b007         	add	sp, #0x1c
  33e12a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x33e12b); words below are literal-pool data ---
  33e12c: ba46         	rev16	r6, r0
  33e12e: 0048         	lsls	r0, r1, #0x1
  33e130: b732         	<unknown>
  33e132: 0048         	lsls	r0, r1, #0x1
  33e134: b712         	<unknown>
  33e136: 0048         	lsls	r0, r1, #0x1

// ==== HUD::editBoxReturn
//      file offset 0x33e138 (= ELF address; Ghidra 0x34e138), 8 bytes, Thumb-2
  33e138: f1a0 00e4    	sub.w	r0, r0, #0xe4
  33e13c: f7ff bf50    	b.w	0x33dfe0 <HUD::editBoxReturn(cocos2d::extension::CCEditBox*)> @ imm = #-0x160

// ==== HUD::editBoxTextChanged
//      file offset 0x33e140 (= ELF address; Ghidra 0x34e140), 76 bytes, Thumb-2
  33e140: b530         	push	{r4, r5, lr}
  33e142: b085         	sub	sp, #0x14
  33e144: 9003         	str	r0, [sp, #0xc]
  33e146: 9102         	str	r1, [sp, #0x8]
  33e148: 9201         	str	r2, [sp, #0x4]
  33e14a: 9b03         	ldr	r3, [sp, #0xc]
  33e14c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33e150: 2b00         	cmp	r3, #0x0
  33e152: d004         	beq	0x33e15e <HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x1e> @ imm = #0x8
  33e154: 9b03         	ldr	r3, [sp, #0xc]
  33e156: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33e15a: 2b00         	cmp	r3, #0x0
  33e15c: d100         	bne	0x33e160 <HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x20> @ imm = #0x0
  33e15e: e013         	b	0x33e188 <HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)+0x48> @ imm = #0x26
  33e160: 9b03         	ldr	r3, [sp, #0xc]
  33e162: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  33e166: 681b         	ldr	r3, [r3]
  33e168: f503 730f    	add.w	r3, r3, #0x23c
  33e16c: 681c         	ldr	r4, [r3]
  33e16e: 9b03         	ldr	r3, [sp, #0xc]
  33e170: f8d3 514c    	ldr.w	r5, [r3, #0x14c]
  33e174: 9b03         	ldr	r3, [sp, #0xc]
  33e176: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  33e17a: 4618         	mov	r0, r3
  33e17c: f118 fce6    	bl	0x456b4c <cocos2d::extension::CCEditBox::getText()> @ imm = #0x1189cc
  33e180: 4603         	mov	r3, r0
  33e182: 4628         	mov	r0, r5
  33e184: 4619         	mov	r1, r3
  33e186: 47a0         	blx	r4
  33e188: b005         	add	sp, #0x14
  33e18a: bd30         	pop	{r4, r5, pc}

// ==== HUD::editBoxTextChanged
//      file offset 0x33e18c (= ELF address; Ghidra 0x34e18c), 8 bytes, Thumb-2
  33e18c: f1a0 00e4    	sub.w	r0, r0, #0xe4
  33e190: f7ff bfd6    	b.w	0x33e140 <HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)> @ imm = #-0x54

// ==== HUD::create
//      file offset 0x3fad7c (= ELF address; Ghidra 0x40ad7c), 112 bytes, Thumb-2
  3fad7c: b510         	push	{r4, lr}
  3fad7e: b082         	sub	sp, #0x8
  3fad80: f44f 70e4    	mov.w	r0, #0x1c8
  3fad84: f38c fdee    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38cbdc
  3fad88: 4603         	mov	r3, r0
  3fad8a: 461c         	mov	r4, r3
  3fad8c: 4620         	mov	r0, r4
  3fad8e: f73f fa2d    	bl	0x33a1ec <HUD::HUD()>   @ imm = #-0xc0ba6
  3fad92: 9401         	str	r4, [sp, #0x4]
  3fad94: 9b01         	ldr	r3, [sp, #0x4]
  3fad96: 2b00         	cmp	r3, #0x0
  3fad98: d00a         	beq	0x3fadb0 <HUD::create()+0x34> @ imm = #0x14
  3fad9a: 9b01         	ldr	r3, [sp, #0x4]
  3fad9c: 681b         	ldr	r3, [r3]
  3fad9e: 3318         	adds	r3, #0x18
  3fada0: 681b         	ldr	r3, [r3]
  3fada2: 9801         	ldr	r0, [sp, #0x4]
  3fada4: 4798         	blx	r3
  3fada6: 4603         	mov	r3, r0
  3fada8: 2b00         	cmp	r3, #0x0
  3fadaa: d001         	beq	0x3fadb0 <HUD::create()+0x34> @ imm = #0x2
  3fadac: 2301         	movs	r3, #0x1
  3fadae: e000         	b	0x3fadb2 <HUD::create()+0x36> @ imm = #0x0
  3fadb0: 2300         	movs	r3, #0x0
  3fadb2: 2b00         	cmp	r3, #0x0
  3fadb4: d005         	beq	0x3fadc2 <HUD::create()+0x46> @ imm = #0xa
  3fadb6: 9b01         	ldr	r3, [sp, #0x4]
  3fadb8: 4618         	mov	r0, r3
  3fadba: f19d f89f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19d13e
  3fadbe: 9b01         	ldr	r3, [sp, #0x4]
  3fadc0: e011         	b	0x3fade6 <HUD::create()+0x6a> @ imm = #0x22
  3fadc2: 9b01         	ldr	r3, [sp, #0x4]
  3fadc4: 2b00         	cmp	r3, #0x0
  3fadc6: d005         	beq	0x3fadd4 <HUD::create()+0x58> @ imm = #0xa
  3fadc8: 9b01         	ldr	r3, [sp, #0x4]
  3fadca: 681b         	ldr	r3, [r3]
  3fadcc: 3308         	adds	r3, #0x8
  3fadce: 681b         	ldr	r3, [r3]
  3fadd0: 9801         	ldr	r0, [sp, #0x4]
  3fadd2: 4798         	blx	r3
  3fadd4: 2300         	movs	r3, #0x0
  3fadd6: 9301         	str	r3, [sp, #0x4]
  3fadd8: 2300         	movs	r3, #0x0
  3fadda: e004         	b	0x3fade6 <HUD::create()+0x6a> @ imm = #0x8
  3faddc: 4620         	mov	r0, r4
  3fadde: f38d f961    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38d2c2
  3fade2: f38d f963    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38d2c6
  3fade6: 4618         	mov	r0, r3
  3fade8: b002         	add	sp, #0x8
  3fadea: bd10         	pop	{r4, pc}
