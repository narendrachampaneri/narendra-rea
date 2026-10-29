// SoldierView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 51 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierView.cpp

// ==== SoldierView::create
//      file offset 0x2ea2bc (= ELF address; Ghidra 0x2fa2bc), 112 bytes, Thumb-2
  2ea2bc: b510         	push	{r4, lr}
  2ea2be: b082         	sub	sp, #0x8
  2ea2c0: f44f 70f4    	mov.w	r0, #0x1e8
  2ea2c4: f09d f34e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49d69c
  2ea2c8: 4603         	mov	r3, r0
  2ea2ca: 461c         	mov	r4, r3
  2ea2cc: 4620         	mov	r0, r4
  2ea2ce: f107 fc09    	bl	0x3f1ae4 <SoldierView::SoldierView()> @ imm = #0x107812
  2ea2d2: 9401         	str	r4, [sp, #0x4]
  2ea2d4: 9b01         	ldr	r3, [sp, #0x4]
  2ea2d6: 2b00         	cmp	r3, #0x0
  2ea2d8: d00a         	beq	0x2ea2f0 <SoldierView::create()+0x34> @ imm = #0x14
  2ea2da: 9b01         	ldr	r3, [sp, #0x4]
  2ea2dc: 681b         	ldr	r3, [r3]
  2ea2de: 3318         	adds	r3, #0x18
  2ea2e0: 681b         	ldr	r3, [r3]
  2ea2e2: 9801         	ldr	r0, [sp, #0x4]
  2ea2e4: 4798         	blx	r3
  2ea2e6: 4603         	mov	r3, r0
  2ea2e8: 2b00         	cmp	r3, #0x0
  2ea2ea: d001         	beq	0x2ea2f0 <SoldierView::create()+0x34> @ imm = #0x2
  2ea2ec: 2301         	movs	r3, #0x1
  2ea2ee: e000         	b	0x2ea2f2 <SoldierView::create()+0x36> @ imm = #0x0
  2ea2f0: 2300         	movs	r3, #0x0
  2ea2f2: 2b00         	cmp	r3, #0x0
  2ea2f4: d005         	beq	0x2ea302 <SoldierView::create()+0x46> @ imm = #0xa
  2ea2f6: 9b01         	ldr	r3, [sp, #0x4]
  2ea2f8: 4618         	mov	r0, r3
  2ea2fa: f2ad fdff    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2adbfe
  2ea2fe: 9b01         	ldr	r3, [sp, #0x4]
  2ea300: e011         	b	0x2ea326 <SoldierView::create()+0x6a> @ imm = #0x22
  2ea302: 9b01         	ldr	r3, [sp, #0x4]
  2ea304: 2b00         	cmp	r3, #0x0
  2ea306: d005         	beq	0x2ea314 <SoldierView::create()+0x58> @ imm = #0xa
  2ea308: 9b01         	ldr	r3, [sp, #0x4]
  2ea30a: 681b         	ldr	r3, [r3]
  2ea30c: 3308         	adds	r3, #0x8
  2ea30e: 681b         	ldr	r3, [r3]
  2ea310: 9801         	ldr	r0, [sp, #0x4]
  2ea312: 4798         	blx	r3
  2ea314: 2300         	movs	r3, #0x0
  2ea316: 9301         	str	r3, [sp, #0x4]
  2ea318: 2300         	movs	r3, #0x0
  2ea31a: e004         	b	0x2ea326 <SoldierView::create()+0x6a> @ imm = #0x8
  2ea31c: 4620         	mov	r0, r4
  2ea31e: f09d f6c1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49dd82
  2ea322: f09d f6c3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49dd86
  2ea326: 4618         	mov	r0, r3
  2ea328: b002         	add	sp, #0x8
  2ea32a: bd10         	pop	{r4, pc}

// ==== SoldierView::getBlood
//      file offset 0x313cdc (= ELF address; Ghidra 0x323cdc), 16 bytes, Thumb-2
  313cdc: b082         	sub	sp, #0x8
  313cde: 9001         	str	r0, [sp, #0x4]
  313ce0: 9b01         	ldr	r3, [sp, #0x4]
  313ce2: f893 31e2    	ldrb.w	r3, [r3, #0x1e2]
  313ce6: 4618         	mov	r0, r3
  313ce8: b002         	add	sp, #0x8
  313cea: 4770         	bx	lr

// ==== SoldierView::setBlood
//      file offset 0x345b24 (= ELF address; Ghidra 0x355b24), 24 bytes, Thumb-2
  345b24: b082         	sub	sp, #0x8
  345b26: 9001         	str	r0, [sp, #0x4]
  345b28: 460b         	mov	r3, r1
  345b2a: f88d 3003    	strb.w	r3, [sp, #0x3]
  345b2e: 9b01         	ldr	r3, [sp, #0x4]
  345b30: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  345b34: f883 21e2    	strb.w	r2, [r3, #0x1e2]
  345b38: b002         	add	sp, #0x8
  345b3a: 4770         	bx	lr

// ==== SoldierView::setHasWeapon
//      file offset 0x3deb5c (= ELF address; Ghidra 0x3eeb5c), 24 bytes, Thumb-2
  3deb5c: b082         	sub	sp, #0x8
  3deb5e: 9001         	str	r0, [sp, #0x4]
  3deb60: 460b         	mov	r3, r1
  3deb62: f88d 3003    	strb.w	r3, [sp, #0x3]
  3deb66: 9b01         	ldr	r3, [sp, #0x4]
  3deb68: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3deb6c: f883 21e3    	strb.w	r2, [r3, #0x1e3]
  3deb70: b002         	add	sp, #0x8
  3deb72: 4770         	bx	lr

// ==== SoldierView::SoldierView
//      file offset 0x3f1ae4 (= ELF address; Ghidra 0x401ae4), 252 bytes, Thumb-2
  3f1ae4: b510         	push	{r4, lr}
  3f1ae6: b082         	sub	sp, #0x8
  3f1ae8: 9001         	str	r0, [sp, #0x4]
  3f1aea: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x3f1bd8 <SoldierView::SoldierView()+0xf4>
  3f1aec: 447c         	add	r4, pc
  3f1aee: 9b01         	ldr	r3, [sp, #0x4]
  3f1af0: 4618         	mov	r0, r3
  3f1af2: f19d fda1    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x19db42
  3f1af6: 9b01         	ldr	r3, [sp, #0x4]
  3f1af8: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x3f1bdc <SoldierView::SoldierView()+0xf8>
  3f1afa: 58a2         	ldr	r2, [r4, r2]
  3f1afc: 3208         	adds	r2, #0x8
  3f1afe: 601a         	str	r2, [r3]
  3f1b00: 9b01         	ldr	r3, [sp, #0x4]
  3f1b02: f503 7394    	add.w	r3, r3, #0x128
  3f1b06: 4618         	mov	r0, r3
  3f1b08: f1a1 f8e4    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a11c8
  3f1b0c: 9b01         	ldr	r3, [sp, #0x4]
  3f1b0e: f503 7398    	add.w	r3, r3, #0x130
  3f1b12: 4618         	mov	r0, r3
  3f1b14: f1a1 f8de    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a11bc
  3f1b18: 9b01         	ldr	r3, [sp, #0x4]
  3f1b1a: f503 739c    	add.w	r3, r3, #0x138
  3f1b1e: 4618         	mov	r0, r3
  3f1b20: f1a1 f8d8    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a11b0
  3f1b24: 9b01         	ldr	r3, [sp, #0x4]
  3f1b26: f503 73a0    	add.w	r3, r3, #0x140
  3f1b2a: 4618         	mov	r0, r3
  3f1b2c: f1a1 f8d2    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a11a4
  3f1b30: 9b01         	ldr	r3, [sp, #0x4]
  3f1b32: f503 73a4    	add.w	r3, r3, #0x148
  3f1b36: 4618         	mov	r0, r3
  3f1b38: f1a1 f8cc    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1198
  3f1b3c: 9b01         	ldr	r3, [sp, #0x4]
  3f1b3e: f503 73a8    	add.w	r3, r3, #0x150
  3f1b42: 4618         	mov	r0, r3
  3f1b44: f1a1 f8c6    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a118c
  3f1b48: 9b01         	ldr	r3, [sp, #0x4]
  3f1b4a: f503 73ac    	add.w	r3, r3, #0x158
  3f1b4e: 4618         	mov	r0, r3
  3f1b50: f1a1 f8c0    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1180
  3f1b54: 9b01         	ldr	r3, [sp, #0x4]
  3f1b56: f503 73b0    	add.w	r3, r3, #0x160
  3f1b5a: 4618         	mov	r0, r3
  3f1b5c: f1a1 f8ba    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1174
  3f1b60: 9b01         	ldr	r3, [sp, #0x4]
  3f1b62: f503 73b4    	add.w	r3, r3, #0x168
  3f1b66: 4618         	mov	r0, r3
  3f1b68: f1a1 f8b4    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1168
  3f1b6c: 9b01         	ldr	r3, [sp, #0x4]
  3f1b6e: f503 73b8    	add.w	r3, r3, #0x170
  3f1b72: 4618         	mov	r0, r3
  3f1b74: f1a1 f8ae    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a115c
  3f1b78: 9b01         	ldr	r3, [sp, #0x4]
  3f1b7a: f503 73bc    	add.w	r3, r3, #0x178
  3f1b7e: 4618         	mov	r0, r3
  3f1b80: f1a1 f8a8    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1150
  3f1b84: 9b01         	ldr	r3, [sp, #0x4]
  3f1b86: f503 73c0    	add.w	r3, r3, #0x180
  3f1b8a: 4618         	mov	r0, r3
  3f1b8c: f1a1 f8a2    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1144
  3f1b90: 9b01         	ldr	r3, [sp, #0x4]
  3f1b92: f503 73c4    	add.w	r3, r3, #0x188
  3f1b96: 4618         	mov	r0, r3
  3f1b98: f1a1 f89c    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1138
  3f1b9c: 9b01         	ldr	r3, [sp, #0x4]
  3f1b9e: f503 73c8    	add.w	r3, r3, #0x190
  3f1ba2: 4618         	mov	r0, r3
  3f1ba4: f1a1 f896    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a112c
  3f1ba8: 9b01         	ldr	r3, [sp, #0x4]
  3f1baa: f503 73cc    	add.w	r3, r3, #0x198
  3f1bae: 4618         	mov	r0, r3
  3f1bb0: f1a1 f890    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1a1120
  3f1bb4: 9b01         	ldr	r3, [sp, #0x4]
  3f1bb6: f503 73f2    	add.w	r3, r3, #0x1e4
  3f1bba: 4618         	mov	r0, r3
  3f1bbc: f3c3 faf8    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3c35f0
  3f1bc0: 9b01         	ldr	r3, [sp, #0x4]
  3f1bc2: e005         	b	0x3f1bd0 <SoldierView::SoldierView()+0xec> @ imm = #0xa
  3f1bc4: 9b01         	ldr	r3, [sp, #0x4]
  3f1bc6: 4618         	mov	r0, r3
  3f1bc8: f19d fe3c    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x19dc78
  3f1bcc: f396 fa6e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3964dc
  3f1bd0: 4618         	mov	r0, r3
  3f1bd2: b002         	add	sp, #0x8
  3f1bd4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f1bd5); words below are literal-pool data ---
  3f1bd6: bf00         	nop
  3f1bd8: 0f1c         	lsrs	r4, r3, #0x1c
  3f1bda: 0054         	lsls	r4, r2, #0x1
  3f1bdc: df28         	svc	#0x28
  3f1bde: ffff b570    	<unknown>

// ==== SoldierView::init
//      file offset 0x3f1be0 (= ELF address; Ghidra 0x401be0), 2592 bytes, Thumb-2
  3f1be0: b570         	push	{r4, r5, r6, lr}
  3f1be2: b086         	sub	sp, #0x18
  3f1be4: 9001         	str	r0, [sp, #0x4]
  3f1be6: f8df 49dc    	ldr.w	r4, [pc, #0x9dc]        @ 0x3f25c4 <SoldierView::init()+0x9e4>
  3f1bea: 447c         	add	r4, pc
  3f1bec: 9b01         	ldr	r3, [sp, #0x4]
  3f1bee: 4618         	mov	r0, r3
  3f1bf0: f19d ff2c    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x19de58
  3f1bf4: 4603         	mov	r3, r0
  3f1bf6: f88d 300f    	strb.w	r3, [sp, #0xf]
  3f1bfa: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3f1bfe: f083 0301    	eor	r3, r3, #0x1
  3f1c02: b2db         	uxtb	r3, r3
  3f1c04: 2b00         	cmp	r3, #0x0
  3f1c06: d002         	beq	0x3f1c0e <SoldierView::init()+0x2e> @ imm = #0x4
  3f1c08: 2300         	movs	r3, #0x0
  3f1c0a: f000 bcd7    	b.w	0x3f25bc <SoldierView::init()+0x9dc> @ imm = #0x9ae
  3f1c0e: 9b01         	ldr	r3, [sp, #0x4]
  3f1c10: 2200         	movs	r2, #0x0
  3f1c12: f883 21e2    	strb.w	r2, [r3, #0x1e2]
  3f1c16: 9b01         	ldr	r3, [sp, #0x4]
  3f1c18: 2200         	movs	r2, #0x0
  3f1c1a: f883 21e3    	strb.w	r2, [r3, #0x1e3]
  3f1c1e: f7ff ff29    	bl	0x3f1a74 <Boostie::create()> @ imm = #-0x1ae
  3f1c22: 4602         	mov	r2, r0
  3f1c24: 9b01         	ldr	r3, [sp, #0x4]
  3f1c26: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3f1c2a: f7ff ff23    	bl	0x3f1a74 <Boostie::create()> @ imm = #-0x1ba
  3f1c2e: 4602         	mov	r2, r0
  3f1c30: 9b01         	ldr	r3, [sp, #0x4]
  3f1c32: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3f1c36: 9b01         	ldr	r3, [sp, #0x4]
  3f1c38: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f1c3c: 4618         	mov	r0, r3
  3f1c3e: f1a6 f953    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a62a6
  3f1c42: 9b01         	ldr	r3, [sp, #0x4]
  3f1c44: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f1c48: 4618         	mov	r0, r3
  3f1c4a: f1a6 f94d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a629a
  3f1c4e: f19e fabf    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e57e
  3f1c52: 4602         	mov	r2, r0
  3f1c54: 9b01         	ldr	r3, [sp, #0x4]
  3f1c56: f8c3 2124    	str.w	r2, [r3, #0x124]
  3f1c5a: 9b01         	ldr	r3, [sp, #0x4]
  3f1c5c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f1c60: 4618         	mov	r0, r3
  3f1c62: f1a6 f941    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a6282
  3f1c66: f19e fab3    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e566
  3f1c6a: 4602         	mov	r2, r0
  3f1c6c: 9b01         	ldr	r3, [sp, #0x4]
  3f1c6e: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3f1c72: 9b01         	ldr	r3, [sp, #0x4]
  3f1c74: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f1c78: 4618         	mov	r0, r3
  3f1c7a: f1a6 f935    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a626a
  3f1c7e: f19e faa7    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e54e
  3f1c82: 4602         	mov	r2, r0
  3f1c84: 9b01         	ldr	r3, [sp, #0x4]
  3f1c86: f8c3 2108    	str.w	r2, [r3, #0x108]
  3f1c8a: 9b01         	ldr	r3, [sp, #0x4]
  3f1c8c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f1c90: 4618         	mov	r0, r3
  3f1c92: f1a6 f929    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a6252
  3f1c96: f19e fa9b    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e536
  3f1c9a: 4602         	mov	r2, r0
  3f1c9c: 9b01         	ldr	r3, [sp, #0x4]
  3f1c9e: f8c3 2114    	str.w	r2, [r3, #0x114]
  3f1ca2: 9b01         	ldr	r3, [sp, #0x4]
  3f1ca4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f1ca8: 4618         	mov	r0, r3
  3f1caa: f1a6 f91d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a623a
  3f1cae: f19e fa8f    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e51e
  3f1cb2: 4602         	mov	r2, r0
  3f1cb4: 9b01         	ldr	r3, [sp, #0x4]
  3f1cb6: f8c3 2118    	str.w	r2, [r3, #0x118]
  3f1cba: 9b01         	ldr	r3, [sp, #0x4]
  3f1cbc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f1cc0: 4618         	mov	r0, r3
  3f1cc2: f1a6 f911    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a6222
  3f1cc6: f19e fa83    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e506
  3f1cca: 4602         	mov	r2, r0
  3f1ccc: 9b01         	ldr	r3, [sp, #0x4]
  3f1cce: f8c3 2110    	str.w	r2, [r3, #0x110]
  3f1cd2: 9b01         	ldr	r3, [sp, #0x4]
  3f1cd4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f1cd8: 4618         	mov	r0, r3
  3f1cda: f1a6 f905    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a620a
  3f1cde: f19e fa77    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e4ee
  3f1ce2: 4602         	mov	r2, r0
  3f1ce4: 9b01         	ldr	r3, [sp, #0x4]
  3f1ce6: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3f1cea: 9b01         	ldr	r3, [sp, #0x4]
  3f1cec: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f1cf0: 4618         	mov	r0, r3
  3f1cf2: f1a6 f8f9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a61f2
  3f1cf6: f19e fa6b    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x19e4d6
  3f1cfa: 4602         	mov	r2, r0
  3f1cfc: 9b01         	ldr	r3, [sp, #0x4]
  3f1cfe: f8c3 2120    	str.w	r2, [r3, #0x120]
  3f1d02: 9b01         	ldr	r3, [sp, #0x4]
  3f1d04: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f1d08: 4618         	mov	r0, r3
  3f1d0a: f1a6 f8ed    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a61da
  3f1d0e: f8df 38bc    	ldr.w	r3, [pc, #0x8bc]        @ 0x3f25cc <SoldierView::init()+0x9ec>
  3f1d12: 447b         	add	r3, pc
  3f1d14: 4618         	mov	r0, r3
  3f1d16: f8df 38b8    	ldr.w	r3, [pc, #0x8b8]        @ 0x3f25d0 <SoldierView::init()+0x9f0>
  3f1d1a: 58e3         	ldr	r3, [r4, r3]
  3f1d1c: 4619         	mov	r1, r3
  3f1d1e: f1e6 fa6f    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e64de
  3f1d22: 4602         	mov	r2, r0
  3f1d24: 9b01         	ldr	r3, [sp, #0x4]
  3f1d26: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3f1d2a: 9b01         	ldr	r3, [sp, #0x4]
  3f1d2c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f1d30: 4618         	mov	r0, r3
  3f1d32: f1a6 f8d9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a61b2
  3f1d36: 9b01         	ldr	r3, [sp, #0x4]
  3f1d38: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f1d3c: 681b         	ldr	r3, [r3]
  3f1d3e: 337c         	adds	r3, #0x7c
  3f1d40: 681d         	ldr	r5, [r3]
  3f1d42: 9b01         	ldr	r3, [sp, #0x4]
  3f1d44: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  3f1d48: ab04         	add	r3, sp, #0x10
  3f1d4a: 4618         	mov	r0, r3
  3f1d4c: f04f 517c    	mov.w	r1, #0x3f000000
  3f1d50: f64c 42cd    	movw	r2, #0xcccd
  3f1d54: f6c3 624c    	movt	r2, #0x3e4c
  3f1d58: f1a0 ffca    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0f94
  3f1d5c: ab04         	add	r3, sp, #0x10
  3f1d5e: 4630         	mov	r0, r6
  3f1d60: 4619         	mov	r1, r3
  3f1d62: 47a8         	blx	r5
  3f1d64: f8df 386c    	ldr.w	r3, [pc, #0x86c]        @ 0x3f25d4 <SoldierView::init()+0x9f4>
  3f1d68: 447b         	add	r3, pc
  3f1d6a: 4618         	mov	r0, r3
  3f1d6c: f8df 3868    	ldr.w	r3, [pc, #0x868]        @ 0x3f25d8 <SoldierView::init()+0x9f8>
  3f1d70: 58e3         	ldr	r3, [r4, r3]
  3f1d72: 4619         	mov	r1, r3
  3f1d74: f1e6 fa44    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e6488
  3f1d78: 4602         	mov	r2, r0
  3f1d7a: 9b01         	ldr	r3, [sp, #0x4]
  3f1d7c: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3f1d80: 9b01         	ldr	r3, [sp, #0x4]
  3f1d82: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f1d86: 4618         	mov	r0, r3
  3f1d88: f1a6 f8ae    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a615c
  3f1d8c: 9b01         	ldr	r3, [sp, #0x4]
  3f1d8e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f1d92: 681b         	ldr	r3, [r3]
  3f1d94: 337c         	adds	r3, #0x7c
  3f1d96: 681d         	ldr	r5, [r3]
  3f1d98: 9b01         	ldr	r3, [sp, #0x4]
  3f1d9a: f8d3 60f4    	ldr.w	r6, [r3, #0xf4]
  3f1d9e: ab04         	add	r3, sp, #0x10
  3f1da0: 4618         	mov	r0, r3
  3f1da2: f04f 517c    	mov.w	r1, #0x3f000000
  3f1da6: f04f 527c    	mov.w	r2, #0x3f000000
  3f1daa: f1a0 ffa1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0f42
  3f1dae: ab04         	add	r3, sp, #0x10
  3f1db0: 4630         	mov	r0, r6
  3f1db2: 4619         	mov	r1, r3
  3f1db4: 47a8         	blx	r5
  3f1db6: f8df 3824    	ldr.w	r3, [pc, #0x824]        @ 0x3f25dc <SoldierView::init()+0x9fc>
  3f1dba: 447b         	add	r3, pc
  3f1dbc: 4618         	mov	r0, r3
  3f1dbe: f8df 3820    	ldr.w	r3, [pc, #0x820]        @ 0x3f25e0 <SoldierView::init()+0xa00>
  3f1dc2: 58e3         	ldr	r3, [r4, r3]
  3f1dc4: 4619         	mov	r1, r3
  3f1dc6: f1e6 fa1b    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e6436
  3f1dca: 4602         	mov	r2, r0
  3f1dcc: 9b01         	ldr	r3, [sp, #0x4]
  3f1dce: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3f1dd2: 9b01         	ldr	r3, [sp, #0x4]
  3f1dd4: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f1dd8: 4618         	mov	r0, r3
  3f1dda: f1a6 f885    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a610a
  3f1dde: 9b01         	ldr	r3, [sp, #0x4]
  3f1de0: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f1de4: 681b         	ldr	r3, [r3]
  3f1de6: 337c         	adds	r3, #0x7c
  3f1de8: 681d         	ldr	r5, [r3]
  3f1dea: 9b01         	ldr	r3, [sp, #0x4]
  3f1dec: f8d3 60f8    	ldr.w	r6, [r3, #0xf8]
  3f1df0: ab04         	add	r3, sp, #0x10
  3f1df2: 4618         	mov	r0, r3
  3f1df4: f64c 41cd    	movw	r1, #0xcccd
  3f1df8: f6c3 51cc    	movt	r1, #0x3dcc
  3f1dfc: f649 129a    	movw	r2, #0x999a
  3f1e00: f6c3 7219    	movt	r2, #0x3f19
  3f1e04: f1a0 ff74    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0ee8
  3f1e08: ab04         	add	r3, sp, #0x10
  3f1e0a: 4630         	mov	r0, r6
  3f1e0c: 4619         	mov	r1, r3
  3f1e0e: 47a8         	blx	r5
  3f1e10: f8df 37d0    	ldr.w	r3, [pc, #0x7d0]        @ 0x3f25e4 <SoldierView::init()+0xa04>
  3f1e14: 447b         	add	r3, pc
  3f1e16: 4618         	mov	r0, r3
  3f1e18: f8df 37c4    	ldr.w	r3, [pc, #0x7c4]        @ 0x3f25e0 <SoldierView::init()+0xa00>
  3f1e1c: 58e3         	ldr	r3, [r4, r3]
  3f1e1e: 4619         	mov	r1, r3
  3f1e20: f1e6 f9ee    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e63dc
  3f1e24: 4602         	mov	r2, r0
  3f1e26: 9b01         	ldr	r3, [sp, #0x4]
  3f1e28: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3f1e2c: 9b01         	ldr	r3, [sp, #0x4]
  3f1e2e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f1e32: 4618         	mov	r0, r3
  3f1e34: f1a6 f858    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a60b0
  3f1e38: 9b01         	ldr	r3, [sp, #0x4]
  3f1e3a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f1e3e: 681b         	ldr	r3, [r3]
  3f1e40: 337c         	adds	r3, #0x7c
  3f1e42: 681d         	ldr	r5, [r3]
  3f1e44: 9b01         	ldr	r3, [sp, #0x4]
  3f1e46: f8d3 60fc    	ldr.w	r6, [r3, #0xfc]
  3f1e4a: ab04         	add	r3, sp, #0x10
  3f1e4c: 4618         	mov	r0, r3
  3f1e4e: f64c 41cd    	movw	r1, #0xcccd
  3f1e52: f6c3 51cc    	movt	r1, #0x3dcc
  3f1e56: f649 129a    	movw	r2, #0x999a
  3f1e5a: f6c3 7219    	movt	r2, #0x3f19
  3f1e5e: f1a0 ff47    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0e8e
  3f1e62: ab04         	add	r3, sp, #0x10
  3f1e64: 4630         	mov	r0, r6
  3f1e66: 4619         	mov	r1, r3
  3f1e68: 47a8         	blx	r5
  3f1e6a: f8df 377c    	ldr.w	r3, [pc, #0x77c]        @ 0x3f25e8 <SoldierView::init()+0xa08>
  3f1e6e: 447b         	add	r3, pc
  3f1e70: 4618         	mov	r0, r3
  3f1e72: f8df 3778    	ldr.w	r3, [pc, #0x778]        @ 0x3f25ec <SoldierView::init()+0xa0c>
  3f1e76: 58e3         	ldr	r3, [r4, r3]
  3f1e78: 4619         	mov	r1, r3
  3f1e7a: f1e6 f9c1    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e6382
  3f1e7e: 4602         	mov	r2, r0
  3f1e80: 9b01         	ldr	r3, [sp, #0x4]
  3f1e82: f8c3 2100    	str.w	r2, [r3, #0x100]
  3f1e86: 9b01         	ldr	r3, [sp, #0x4]
  3f1e88: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f1e8c: 4618         	mov	r0, r3
  3f1e8e: f1a6 f82b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a6056
  3f1e92: 9b01         	ldr	r3, [sp, #0x4]
  3f1e94: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f1e98: 681b         	ldr	r3, [r3]
  3f1e9a: 337c         	adds	r3, #0x7c
  3f1e9c: 681d         	ldr	r5, [r3]
  3f1e9e: 9b01         	ldr	r3, [sp, #0x4]
  3f1ea0: f8d3 6100    	ldr.w	r6, [r3, #0x100]
  3f1ea4: ab04         	add	r3, sp, #0x10
  3f1ea6: 4618         	mov	r0, r3
  3f1ea8: f04f 517c    	mov.w	r1, #0x3f000000
  3f1eac: f246 6266    	movw	r2, #0x6666
  3f1eb0: f6c3 7266    	movt	r2, #0x3f66
  3f1eb4: f1a0 ff1c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0e38
  3f1eb8: ab04         	add	r3, sp, #0x10
  3f1eba: 4630         	mov	r0, r6
  3f1ebc: 4619         	mov	r1, r3
  3f1ebe: 47a8         	blx	r5
  3f1ec0: f8df 372c    	ldr.w	r3, [pc, #0x72c]        @ 0x3f25f0 <SoldierView::init()+0xa10>
  3f1ec4: 447b         	add	r3, pc
  3f1ec6: 4618         	mov	r0, r3
  3f1ec8: f8df 3720    	ldr.w	r3, [pc, #0x720]        @ 0x3f25ec <SoldierView::init()+0xa0c>
  3f1ecc: 58e3         	ldr	r3, [r4, r3]
  3f1ece: 4619         	mov	r1, r3
  3f1ed0: f1e6 f996    	bl	0x5d8200 <cocos2d::CCSprite::create(char const*, cocos2d::CCRect const&)> @ imm = #0x1e632c
  3f1ed4: 4602         	mov	r2, r0
  3f1ed6: 9b01         	ldr	r3, [sp, #0x4]
  3f1ed8: f8c3 2104    	str.w	r2, [r3, #0x104]
  3f1edc: 9b01         	ldr	r3, [sp, #0x4]
  3f1ede: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f1ee2: 4618         	mov	r0, r3
  3f1ee4: f1a6 f800    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a6000
  3f1ee8: 9b01         	ldr	r3, [sp, #0x4]
  3f1eea: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f1eee: 681b         	ldr	r3, [r3]
  3f1ef0: 337c         	adds	r3, #0x7c
  3f1ef2: 681d         	ldr	r5, [r3]
  3f1ef4: 9b01         	ldr	r3, [sp, #0x4]
  3f1ef6: f8d3 6104    	ldr.w	r6, [r3, #0x104]
  3f1efa: ab04         	add	r3, sp, #0x10
  3f1efc: 4618         	mov	r0, r3
  3f1efe: f04f 517c    	mov.w	r1, #0x3f000000
  3f1f02: f246 6266    	movw	r2, #0x6666
  3f1f06: f6c3 7266    	movt	r2, #0x3f66
  3f1f0a: f1a0 fef1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0de2
  3f1f0e: ab04         	add	r3, sp, #0x10
  3f1f10: 4630         	mov	r0, r6
  3f1f12: 4619         	mov	r1, r3
  3f1f14: 47a8         	blx	r5
  3f1f16: 9b01         	ldr	r3, [sp, #0x4]
  3f1f18: f503 759c    	add.w	r5, r3, #0x138
  3f1f1c: ab04         	add	r3, sp, #0x10
  3f1f1e: 4618         	mov	r0, r3
  3f1f20: f04f 0100    	mov.w	r1, #0x0
  3f1f24: f2c4 0140    	movt	r1, #0x4040
  3f1f28: f04f 0200    	mov.w	r2, #0x0
  3f1f2c: f2c4 1210    	movt	r2, #0x4110
  3f1f30: f1a0 fede    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0dbc
  3f1f34: ab04         	add	r3, sp, #0x10
  3f1f36: 4628         	mov	r0, r5
  3f1f38: 4619         	mov	r1, r3
  3f1f3a: f1a0 ff07    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0e0e
  3f1f3e: 9b01         	ldr	r3, [sp, #0x4]
  3f1f40: f503 75b4    	add.w	r5, r3, #0x168
  3f1f44: ab04         	add	r3, sp, #0x10
  3f1f46: 4618         	mov	r0, r3
  3f1f48: f04f 0100    	mov.w	r1, #0x0
  3f1f4c: f04f 0200    	mov.w	r2, #0x0
  3f1f50: f2c4 12d8    	movt	r2, #0x41d8
  3f1f54: f1a0 fecc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0d98
  3f1f58: ab04         	add	r3, sp, #0x10
  3f1f5a: 4628         	mov	r0, r5
  3f1f5c: 4619         	mov	r1, r3
  3f1f5e: f1a0 fef5    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0dea
  3f1f62: 9b01         	ldr	r3, [sp, #0x4]
  3f1f64: f503 75b8    	add.w	r5, r3, #0x170
  3f1f68: ab04         	add	r3, sp, #0x10
  3f1f6a: 4618         	mov	r0, r3
  3f1f6c: f04f 0100    	mov.w	r1, #0x0
  3f1f70: f04f 0200    	mov.w	r2, #0x0
  3f1f74: f1a0 febc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0d78
  3f1f78: ab04         	add	r3, sp, #0x10
  3f1f7a: 4628         	mov	r0, r5
  3f1f7c: 4619         	mov	r1, r3
  3f1f7e: f1a0 fee5    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0dca
  3f1f82: 9b01         	ldr	r3, [sp, #0x4]
  3f1f84: f503 75a0    	add.w	r5, r3, #0x140
  3f1f88: ab04         	add	r3, sp, #0x10
  3f1f8a: 4618         	mov	r0, r3
  3f1f8c: f04f 0100    	mov.w	r1, #0x0
  3f1f90: f04f 0200    	mov.w	r2, #0x0
  3f1f94: f2cc 1220    	movt	r2, #0xc120
  3f1f98: f1a0 feaa    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0d54
  3f1f9c: ab04         	add	r3, sp, #0x10
  3f1f9e: 4628         	mov	r0, r5
  3f1fa0: 4619         	mov	r1, r3
  3f1fa2: f1a0 fed3    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0da6
  3f1fa6: 9b01         	ldr	r3, [sp, #0x4]
  3f1fa8: f503 75a4    	add.w	r5, r3, #0x148
  3f1fac: ab04         	add	r3, sp, #0x10
  3f1fae: 4618         	mov	r0, r3
  3f1fb0: f04f 0100    	mov.w	r1, #0x0
  3f1fb4: f2cc 1188    	movt	r1, #0xc188
  3f1fb8: f04f 0200    	mov.w	r2, #0x0
  3f1fbc: f1a0 fe98    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0d30
  3f1fc0: ab04         	add	r3, sp, #0x10
  3f1fc2: 4628         	mov	r0, r5
  3f1fc4: 4619         	mov	r1, r3
  3f1fc6: f1a0 fec1    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0d82
  3f1fca: 9b01         	ldr	r3, [sp, #0x4]
  3f1fcc: f503 75a8    	add.w	r5, r3, #0x150
  3f1fd0: ab04         	add	r3, sp, #0x10
  3f1fd2: 4618         	mov	r0, r3
  3f1fd4: f04f 0100    	mov.w	r1, #0x0
  3f1fd8: f2c4 01a0    	movt	r1, #0x40a0
  3f1fdc: f04f 0200    	mov.w	r2, #0x0
  3f1fe0: f1a0 fe86    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0d0c
  3f1fe4: ab04         	add	r3, sp, #0x10
  3f1fe6: 4628         	mov	r0, r5
  3f1fe8: 4619         	mov	r1, r3
  3f1fea: f1a0 feaf    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0d5e
  3f1fee: 9b01         	ldr	r3, [sp, #0x4]
  3f1ff0: f503 75ac    	add.w	r5, r3, #0x158
  3f1ff4: ab04         	add	r3, sp, #0x10
  3f1ff6: 4618         	mov	r0, r3
  3f1ff8: f04f 0100    	mov.w	r1, #0x0
  3f1ffc: f2cc 1188    	movt	r1, #0xc188
  3f2000: f04f 0200    	mov.w	r2, #0x0
  3f2004: f2c4 1270    	movt	r2, #0x4170
  3f2008: f1a0 fe72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0ce4
  3f200c: ab04         	add	r3, sp, #0x10
  3f200e: 4628         	mov	r0, r5
  3f2010: 4619         	mov	r1, r3
  3f2012: f1a0 fe9b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0d36
  3f2016: 9b01         	ldr	r3, [sp, #0x4]
  3f2018: f503 75b0    	add.w	r5, r3, #0x160
  3f201c: ab04         	add	r3, sp, #0x10
  3f201e: 4618         	mov	r0, r3
  3f2020: f04f 0100    	mov.w	r1, #0x0
  3f2024: f2c4 01a0    	movt	r1, #0x40a0
  3f2028: f04f 0200    	mov.w	r2, #0x0
  3f202c: f2c4 1270    	movt	r2, #0x4170
  3f2030: f1a0 fe5e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0cbc
  3f2034: ab04         	add	r3, sp, #0x10
  3f2036: 4628         	mov	r0, r5
  3f2038: 4619         	mov	r1, r3
  3f203a: f1a0 fe87    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0d0e
  3f203e: 9b01         	ldr	r3, [sp, #0x4]
  3f2040: f503 7594    	add.w	r5, r3, #0x128
  3f2044: ab04         	add	r3, sp, #0x10
  3f2046: 4618         	mov	r0, r3
  3f2048: f04f 0100    	mov.w	r1, #0x0
  3f204c: f2cc 0180    	movt	r1, #0xc080
  3f2050: f04f 0200    	mov.w	r2, #0x0
  3f2054: f2cc 1240    	movt	r2, #0xc140
  3f2058: f1a0 fe4a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0c94
  3f205c: ab04         	add	r3, sp, #0x10
  3f205e: 4628         	mov	r0, r5
  3f2060: 4619         	mov	r1, r3
  3f2062: f1a0 fe73    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0ce6
  3f2066: 9b01         	ldr	r3, [sp, #0x4]
  3f2068: f503 7598    	add.w	r5, r3, #0x130
  3f206c: ab04         	add	r3, sp, #0x10
  3f206e: 4618         	mov	r0, r3
  3f2070: f04f 0100    	mov.w	r1, #0x0
  3f2074: f2c4 1160    	movt	r1, #0x4160
  3f2078: f04f 0200    	mov.w	r2, #0x0
  3f207c: f2cc 1220    	movt	r2, #0xc120
  3f2080: f1a0 fe36    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0c6c
  3f2084: ab04         	add	r3, sp, #0x10
  3f2086: 4628         	mov	r0, r5
  3f2088: 4619         	mov	r1, r3
  3f208a: f1a0 fe5f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0cbe
  3f208e: 9b01         	ldr	r3, [sp, #0x4]
  3f2090: f503 72bc    	add.w	r2, r3, #0x178
  3f2094: 9b01         	ldr	r3, [sp, #0x4]
  3f2096: f503 73b4    	add.w	r3, r3, #0x168
  3f209a: 4610         	mov	r0, r2
  3f209c: 4619         	mov	r1, r3
  3f209e: f1a0 fe55    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0caa
  3f20a2: 9b01         	ldr	r3, [sp, #0x4]
  3f20a4: f503 72c0    	add.w	r2, r3, #0x180
  3f20a8: 9b01         	ldr	r3, [sp, #0x4]
  3f20aa: f503 73b8    	add.w	r3, r3, #0x170
  3f20ae: 4610         	mov	r0, r2
  3f20b0: 4619         	mov	r1, r3
  3f20b2: f1a0 fe4b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a0c96
  3f20b6: 9b01         	ldr	r3, [sp, #0x4]
  3f20b8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f20bc: 681b         	ldr	r3, [r3]
  3f20be: 334c         	adds	r3, #0x4c
  3f20c0: 681b         	ldr	r3, [r3]
  3f20c2: 9a01         	ldr	r2, [sp, #0x4]
  3f20c4: f8d2 1120    	ldr.w	r1, [r2, #0x120]
  3f20c8: 9a01         	ldr	r2, [sp, #0x4]
  3f20ca: f502 72bc    	add.w	r2, r2, #0x178
  3f20ce: 4608         	mov	r0, r1
  3f20d0: 4611         	mov	r1, r2
  3f20d2: 4798         	blx	r3
  3f20d4: 9b01         	ldr	r3, [sp, #0x4]
  3f20d6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f20da: 681b         	ldr	r3, [r3]
  3f20dc: 334c         	adds	r3, #0x4c
  3f20de: 681b         	ldr	r3, [r3]
  3f20e0: 9a01         	ldr	r2, [sp, #0x4]
  3f20e2: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f20e6: 9a01         	ldr	r2, [sp, #0x4]
  3f20e8: f502 72c0    	add.w	r2, r2, #0x180
  3f20ec: 4608         	mov	r0, r1
  3f20ee: 4611         	mov	r1, r2
  3f20f0: 4798         	blx	r3
  3f20f2: 9b01         	ldr	r3, [sp, #0x4]
  3f20f4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f20f8: 681b         	ldr	r3, [r3]
  3f20fa: 334c         	adds	r3, #0x4c
  3f20fc: 681b         	ldr	r3, [r3]
  3f20fe: 9a01         	ldr	r2, [sp, #0x4]
  3f2100: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f2104: 9a01         	ldr	r2, [sp, #0x4]
  3f2106: f502 72b0    	add.w	r2, r2, #0x160
  3f210a: 4608         	mov	r0, r1
  3f210c: 4611         	mov	r1, r2
  3f210e: 4798         	blx	r3
  3f2110: 9b01         	ldr	r3, [sp, #0x4]
  3f2112: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f2116: 681b         	ldr	r3, [r3]
  3f2118: 334c         	adds	r3, #0x4c
  3f211a: 681b         	ldr	r3, [r3]
  3f211c: 9a01         	ldr	r2, [sp, #0x4]
  3f211e: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3f2122: 9a01         	ldr	r2, [sp, #0x4]
  3f2124: f502 72b0    	add.w	r2, r2, #0x160
  3f2128: 4608         	mov	r0, r1
  3f212a: 4611         	mov	r1, r2
  3f212c: 4798         	blx	r3
  3f212e: 9b01         	ldr	r3, [sp, #0x4]
  3f2130: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2134: 681b         	ldr	r3, [r3]
  3f2136: 334c         	adds	r3, #0x4c
  3f2138: 681b         	ldr	r3, [r3]
  3f213a: 9a01         	ldr	r2, [sp, #0x4]
  3f213c: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f2140: 9a01         	ldr	r2, [sp, #0x4]
  3f2142: f502 72ac    	add.w	r2, r2, #0x158
  3f2146: 4608         	mov	r0, r1
  3f2148: 4611         	mov	r1, r2
  3f214a: 4798         	blx	r3
  3f214c: 9b01         	ldr	r3, [sp, #0x4]
  3f214e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f2152: 681b         	ldr	r3, [r3]
  3f2154: 334c         	adds	r3, #0x4c
  3f2156: 681b         	ldr	r3, [r3]
  3f2158: 9a01         	ldr	r2, [sp, #0x4]
  3f215a: f8d2 1108    	ldr.w	r1, [r2, #0x108]
  3f215e: 9a01         	ldr	r2, [sp, #0x4]
  3f2160: f502 7294    	add.w	r2, r2, #0x128
  3f2164: 4608         	mov	r0, r1
  3f2166: 4611         	mov	r1, r2
  3f2168: 4798         	blx	r3
  3f216a: 9b01         	ldr	r3, [sp, #0x4]
  3f216c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f2170: 681b         	ldr	r3, [r3]
  3f2172: 334c         	adds	r3, #0x4c
  3f2174: 681b         	ldr	r3, [r3]
  3f2176: 9a01         	ldr	r2, [sp, #0x4]
  3f2178: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3f217c: 9a01         	ldr	r2, [sp, #0x4]
  3f217e: f502 7298    	add.w	r2, r2, #0x130
  3f2182: 4608         	mov	r0, r1
  3f2184: 4611         	mov	r1, r2
  3f2186: 4798         	blx	r3
  3f2188: 9b01         	ldr	r3, [sp, #0x4]
  3f218a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f218e: 681b         	ldr	r3, [r3]
  3f2190: 33cc         	adds	r3, #0xcc
  3f2192: 681b         	ldr	r3, [r3]
  3f2194: 9a01         	ldr	r2, [sp, #0x4]
  3f2196: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f219a: 9a01         	ldr	r2, [sp, #0x4]
  3f219c: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3f21a0: 4608         	mov	r0, r1
  3f21a2: 4611         	mov	r1, r2
  3f21a4: 2201         	movs	r2, #0x1
  3f21a6: 4798         	blx	r3
  3f21a8: 9b01         	ldr	r3, [sp, #0x4]
  3f21aa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f21ae: 681b         	ldr	r3, [r3]
  3f21b0: 33cc         	adds	r3, #0xcc
  3f21b2: 681b         	ldr	r3, [r3]
  3f21b4: 9a01         	ldr	r2, [sp, #0x4]
  3f21b6: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f21ba: 9a01         	ldr	r2, [sp, #0x4]
  3f21bc: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f21c0: 4608         	mov	r0, r1
  3f21c2: 4611         	mov	r1, r2
  3f21c4: 2201         	movs	r2, #0x1
  3f21c6: 4798         	blx	r3
  3f21c8: 9b01         	ldr	r3, [sp, #0x4]
  3f21ca: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f21ce: 681b         	ldr	r3, [r3]
  3f21d0: 33c8         	adds	r3, #0xc8
  3f21d2: 681b         	ldr	r3, [r3]
  3f21d4: 9a01         	ldr	r2, [sp, #0x4]
  3f21d6: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3f21da: 9a01         	ldr	r2, [sp, #0x4]
  3f21dc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3f21e0: 4608         	mov	r0, r1
  3f21e2: 4611         	mov	r1, r2
  3f21e4: 4798         	blx	r3
  3f21e6: 9b01         	ldr	r3, [sp, #0x4]
  3f21e8: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f21ec: 681b         	ldr	r3, [r3]
  3f21ee: 33c8         	adds	r3, #0xc8
  3f21f0: 681b         	ldr	r3, [r3]
  3f21f2: 9a01         	ldr	r2, [sp, #0x4]
  3f21f4: f8d2 1108    	ldr.w	r1, [r2, #0x108]
  3f21f8: 9a01         	ldr	r2, [sp, #0x4]
  3f21fa: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3f21fe: 4608         	mov	r0, r1
  3f2200: 4611         	mov	r1, r2
  3f2202: 4798         	blx	r3
  3f2204: 9b01         	ldr	r3, [sp, #0x4]
  3f2206: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f220a: 681b         	ldr	r3, [r3]
  3f220c: 33c8         	adds	r3, #0xc8
  3f220e: 681b         	ldr	r3, [r3]
  3f2210: 9a01         	ldr	r2, [sp, #0x4]
  3f2212: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3f2216: 9a01         	ldr	r2, [sp, #0x4]
  3f2218: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3f221c: 4608         	mov	r0, r1
  3f221e: 4611         	mov	r1, r2
  3f2220: 4798         	blx	r3
  3f2222: 9b01         	ldr	r3, [sp, #0x4]
  3f2224: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f2228: 681b         	ldr	r3, [r3]
  3f222a: 33c8         	adds	r3, #0xc8
  3f222c: 681b         	ldr	r3, [r3]
  3f222e: 9a01         	ldr	r2, [sp, #0x4]
  3f2230: f8d2 1108    	ldr.w	r1, [r2, #0x108]
  3f2234: 9a01         	ldr	r2, [sp, #0x4]
  3f2236: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3f223a: 4608         	mov	r0, r1
  3f223c: 4611         	mov	r1, r2
  3f223e: 4798         	blx	r3
  3f2240: 9b01         	ldr	r3, [sp, #0x4]
  3f2242: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f2246: 681b         	ldr	r3, [r3]
  3f2248: 33cc         	adds	r3, #0xcc
  3f224a: 681b         	ldr	r3, [r3]
  3f224c: 9a01         	ldr	r2, [sp, #0x4]
  3f224e: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f2252: 9a01         	ldr	r2, [sp, #0x4]
  3f2254: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3f2258: 4608         	mov	r0, r1
  3f225a: 4611         	mov	r1, r2
  3f225c: 2202         	movs	r2, #0x2
  3f225e: 4798         	blx	r3
  3f2260: 9b01         	ldr	r3, [sp, #0x4]
  3f2262: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f2266: 681b         	ldr	r3, [r3]
  3f2268: 33c8         	adds	r3, #0xc8
  3f226a: 681b         	ldr	r3, [r3]
  3f226c: 9a01         	ldr	r2, [sp, #0x4]
  3f226e: f8d2 1120    	ldr.w	r1, [r2, #0x120]
  3f2272: 9a01         	ldr	r2, [sp, #0x4]
  3f2274: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3f2278: 4608         	mov	r0, r1
  3f227a: 4611         	mov	r1, r2
  3f227c: 4798         	blx	r3
  3f227e: 9b01         	ldr	r3, [sp, #0x4]
  3f2280: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2284: 681b         	ldr	r3, [r3]
  3f2286: 33cc         	adds	r3, #0xcc
  3f2288: 681b         	ldr	r3, [r3]
  3f228a: 9a01         	ldr	r2, [sp, #0x4]
  3f228c: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2290: 9a01         	ldr	r2, [sp, #0x4]
  3f2292: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f2296: 4608         	mov	r0, r1
  3f2298: 4611         	mov	r1, r2
  3f229a: 2200         	movs	r2, #0x0
  3f229c: 4798         	blx	r3
  3f229e: 9b01         	ldr	r3, [sp, #0x4]
  3f22a0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f22a4: 681b         	ldr	r3, [r3]
  3f22a6: 33cc         	adds	r3, #0xcc
  3f22a8: 681b         	ldr	r3, [r3]
  3f22aa: 9a01         	ldr	r2, [sp, #0x4]
  3f22ac: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f22b0: 9a01         	ldr	r2, [sp, #0x4]
  3f22b2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f22b6: 4608         	mov	r0, r1
  3f22b8: 4611         	mov	r1, r2
  3f22ba: 2201         	movs	r2, #0x1
  3f22bc: 4798         	blx	r3
  3f22be: 9b01         	ldr	r3, [sp, #0x4]
  3f22c0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f22c4: 681b         	ldr	r3, [r3]
  3f22c6: 33cc         	adds	r3, #0xcc
  3f22c8: 681b         	ldr	r3, [r3]
  3f22ca: 9a01         	ldr	r2, [sp, #0x4]
  3f22cc: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f22d0: 9a01         	ldr	r2, [sp, #0x4]
  3f22d2: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3f22d6: 4608         	mov	r0, r1
  3f22d8: 4611         	mov	r1, r2
  3f22da: 2201         	movs	r2, #0x1
  3f22dc: 4798         	blx	r3
  3f22de: 9b01         	ldr	r3, [sp, #0x4]
  3f22e0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f22e4: 681b         	ldr	r3, [r3]
  3f22e6: 33cc         	adds	r3, #0xcc
  3f22e8: 681b         	ldr	r3, [r3]
  3f22ea: 9a01         	ldr	r2, [sp, #0x4]
  3f22ec: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f22f0: 9a01         	ldr	r2, [sp, #0x4]
  3f22f2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3f22f6: 4608         	mov	r0, r1
  3f22f8: 4611         	mov	r1, r2
  3f22fa: 2203         	movs	r2, #0x3
  3f22fc: 4798         	blx	r3
  3f22fe: 9b01         	ldr	r3, [sp, #0x4]
  3f2300: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2304: 681b         	ldr	r3, [r3]
  3f2306: 33cc         	adds	r3, #0xcc
  3f2308: 681b         	ldr	r3, [r3]
  3f230a: 9a01         	ldr	r2, [sp, #0x4]
  3f230c: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2310: 9a01         	ldr	r2, [sp, #0x4]
  3f2312: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3f2316: 4608         	mov	r0, r1
  3f2318: 4611         	mov	r1, r2
  3f231a: 2204         	movs	r2, #0x4
  3f231c: 4798         	blx	r3
  3f231e: 9b01         	ldr	r3, [sp, #0x4]
  3f2320: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2324: 681b         	ldr	r3, [r3]
  3f2326: 33cc         	adds	r3, #0xcc
  3f2328: 681b         	ldr	r3, [r3]
  3f232a: 9a01         	ldr	r2, [sp, #0x4]
  3f232c: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2330: 9a01         	ldr	r2, [sp, #0x4]
  3f2332: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3f2336: 4608         	mov	r0, r1
  3f2338: 4611         	mov	r1, r2
  3f233a: 2204         	movs	r2, #0x4
  3f233c: 4798         	blx	r3
  3f233e: 9b01         	ldr	r3, [sp, #0x4]
  3f2340: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2344: 681b         	ldr	r3, [r3]
  3f2346: 33cc         	adds	r3, #0xcc
  3f2348: 681b         	ldr	r3, [r3]
  3f234a: 9a01         	ldr	r2, [sp, #0x4]
  3f234c: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2350: 9a01         	ldr	r2, [sp, #0x4]
  3f2352: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2356: 4608         	mov	r0, r1
  3f2358: 4611         	mov	r1, r2
  3f235a: 2205         	movs	r2, #0x5
  3f235c: 4798         	blx	r3
  3f235e: 9b01         	ldr	r3, [sp, #0x4]
  3f2360: 681b         	ldr	r3, [r3]
  3f2362: 33c8         	adds	r3, #0xc8
  3f2364: 681b         	ldr	r3, [r3]
  3f2366: 9901         	ldr	r1, [sp, #0x4]
  3f2368: 9a01         	ldr	r2, [sp, #0x4]
  3f236a: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f236e: 4608         	mov	r0, r1
  3f2370: 4611         	mov	r1, r2
  3f2372: 4798         	blx	r3
  3f2374: 9b01         	ldr	r3, [sp, #0x4]
  3f2376: f503 73f2    	add.w	r3, r3, #0x1e4
  3f237a: 4618         	mov	r0, r3
  3f237c: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x3f25f4 <SoldierView::init()+0xa14>
  3f237e: 447b         	add	r3, pc
  3f2380: 4619         	mov	r1, r3
  3f2382: f3c3 fd75    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3c3aea
  3f2386: 9b01         	ldr	r3, [sp, #0x4]
  3f2388: f503 73f2    	add.w	r3, r3, #0x1e4
  3f238c: 4618         	mov	r0, r3
  3f238e: f3c2 ffb7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3c2f6e
  3f2392: 4603         	mov	r3, r0
  3f2394: 4618         	mov	r0, r3
  3f2396: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3f25f8 <SoldierView::init()+0xa18>
  3f2398: 447b         	add	r3, pc
  3f239a: 4619         	mov	r1, r3
  3f239c: f04f 0200    	mov.w	r2, #0x0
  3f23a0: f2c4 12f0    	movt	r2, #0x41f0
  3f23a4: f1b9 fe3c    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x1b9c78
  3f23a8: 4602         	mov	r2, r0
  3f23aa: 9b01         	ldr	r3, [sp, #0x4]
  3f23ac: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3f23b0: 9b01         	ldr	r3, [sp, #0x4]
  3f23b2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f23b6: 681b         	ldr	r3, [r3]
  3f23b8: 3340         	adds	r3, #0x40
  3f23ba: 681b         	ldr	r3, [r3]
  3f23bc: 9a01         	ldr	r2, [sp, #0x4]
  3f23be: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f23c2: 4610         	mov	r0, r2
  3f23c4: f04f 517e    	mov.w	r1, #0x3f800000
  3f23c8: 4798         	blx	r3
  3f23ca: 9b01         	ldr	r3, [sp, #0x4]
  3f23cc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f23d0: 681b         	ldr	r3, [r3]
  3f23d2: 337c         	adds	r3, #0x7c
  3f23d4: 681d         	ldr	r5, [r3]
  3f23d6: 9b01         	ldr	r3, [sp, #0x4]
  3f23d8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f23dc: 461e         	mov	r6, r3
  3f23de: ab04         	add	r3, sp, #0x10
  3f23e0: 4618         	mov	r0, r3
  3f23e2: f04f 517c    	mov.w	r1, #0x3f000000
  3f23e6: f04f 527c    	mov.w	r2, #0x3f000000
  3f23ea: f1a0 fc81    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0902
  3f23ee: ab04         	add	r3, sp, #0x10
  3f23f0: 4630         	mov	r0, r6
  3f23f2: 4619         	mov	r1, r3
  3f23f4: 47a8         	blx	r5
  3f23f6: 9b01         	ldr	r3, [sp, #0x4]
  3f23f8: 681b         	ldr	r3, [r3]
  3f23fa: 33cc         	adds	r3, #0xcc
  3f23fc: 681b         	ldr	r3, [r3]
  3f23fe: 9901         	ldr	r1, [sp, #0x4]
  3f2400: 9a01         	ldr	r2, [sp, #0x4]
  3f2402: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f2406: 4608         	mov	r0, r1
  3f2408: 4611         	mov	r1, r2
  3f240a: 2205         	movs	r2, #0x5
  3f240c: 4798         	blx	r3
  3f240e: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3f25fc <SoldierView::init()+0xa1c>
  3f2410: 58e3         	ldr	r3, [r4, r3]
  3f2412: edd3 7a00    	vldr	s15, [r3]
  3f2416: eef5 7a40    	vcmp.f32	s15, #0
  3f241a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f241e: d003         	beq	0x3f2428 <SoldierView::init()+0x848> @ imm = #0x6
  3f2420: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3f25fc <SoldierView::init()+0xa1c>
  3f2422: 58e3         	ldr	r3, [r4, r3]
  3f2424: 681b         	ldr	r3, [r3]
  3f2426: e001         	b	0x3f242c <SoldierView::init()+0x84c> @ imm = #0x2
  3f2428: f04f 537e    	mov.w	r3, #0x3f800000
  3f242c: 9a01         	ldr	r2, [sp, #0x4]
  3f242e: f8c2 31d0    	str.w	r3, [r2, #0x1d0]
  3f2432: 9b01         	ldr	r3, [sp, #0x4]
  3f2434: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2438: 681b         	ldr	r3, [r3]
  3f243a: 3340         	adds	r3, #0x40
  3f243c: 681b         	ldr	r3, [r3]
  3f243e: 9a01         	ldr	r2, [sp, #0x4]
  3f2440: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2444: 9a01         	ldr	r2, [sp, #0x4]
  3f2446: f8d2 21d0    	ldr.w	r2, [r2, #0x1d0]
  3f244a: 4608         	mov	r0, r1
  3f244c: 4611         	mov	r1, r2
  3f244e: 4798         	blx	r3
  3f2450: 9b01         	ldr	r3, [sp, #0x4]
  3f2452: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f2456: 681b         	ldr	r3, [r3]
  3f2458: 3340         	adds	r3, #0x40
  3f245a: 681b         	ldr	r3, [r3]
  3f245c: 9a01         	ldr	r2, [sp, #0x4]
  3f245e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f2462: 4611         	mov	r1, r2
  3f2464: 9a01         	ldr	r2, [sp, #0x4]
  3f2466: f8d2 21d0    	ldr.w	r2, [r2, #0x1d0]
  3f246a: 4608         	mov	r0, r1
  3f246c: 4611         	mov	r1, r2
  3f246e: 4798         	blx	r3
  3f2470: 9b01         	ldr	r3, [sp, #0x4]
  3f2472: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f2476: 681b         	ldr	r3, [r3]
  3f2478: 334c         	adds	r3, #0x4c
  3f247a: 681c         	ldr	r4, [r3]
  3f247c: 9b01         	ldr	r3, [sp, #0x4]
  3f247e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f2482: 461d         	mov	r5, r3
  3f2484: 9b01         	ldr	r3, [sp, #0x4]
  3f2486: ed93 7a74    	vldr	s14, [r3, #464]
  3f248a: eddf 7a4f    	vldr	s15, [pc, #316]         @ 0x3f25c8 <SoldierView::init()+0x9e8>
  3f248e: ee67 7a27    	vmul.f32	s15, s14, s15
  3f2492: ab04         	add	r3, sp, #0x10
  3f2494: 4618         	mov	r0, r3
  3f2496: f04f 0100    	mov.w	r1, #0x0
  3f249a: ee17 2a90    	vmov	r2, s15
  3f249e: f1a0 fc27    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a084e
  3f24a2: ab04         	add	r3, sp, #0x10
  3f24a4: 4628         	mov	r0, r5
  3f24a6: 4619         	mov	r1, r3
  3f24a8: 47a0         	blx	r4
  3f24aa: 9b01         	ldr	r3, [sp, #0x4]
  3f24ac: f04f 0200    	mov.w	r2, #0x0
  3f24b0: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3f24b4: 9b01         	ldr	r3, [sp, #0x4]
  3f24b6: f04f 0200    	mov.w	r2, #0x0
  3f24ba: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3f24be: 9b01         	ldr	r3, [sp, #0x4]
  3f24c0: f04f 0200    	mov.w	r2, #0x0
  3f24c4: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  3f24c8: 9b01         	ldr	r3, [sp, #0x4]
  3f24ca: f04f 0200    	mov.w	r2, #0x0
  3f24ce: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3f24d2: 9b01         	ldr	r3, [sp, #0x4]
  3f24d4: f503 74c4    	add.w	r4, r3, #0x188
  3f24d8: ab04         	add	r3, sp, #0x10
  3f24da: 4618         	mov	r0, r3
  3f24dc: f04f 0100    	mov.w	r1, #0x0
  3f24e0: f04f 0200    	mov.w	r2, #0x0
  3f24e4: f1a0 fc04    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a0808
  3f24e8: ab04         	add	r3, sp, #0x10
  3f24ea: 4620         	mov	r0, r4
  3f24ec: 4619         	mov	r1, r3
  3f24ee: f1a0 fc2d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a085a
  3f24f2: 9b01         	ldr	r3, [sp, #0x4]
  3f24f4: f04f 0200    	mov.w	r2, #0x0
  3f24f8: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3f24fc: 9b01         	ldr	r3, [sp, #0x4]
  3f24fe: f04f 0200    	mov.w	r2, #0x0
  3f2502: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3f2506: 9b01         	ldr	r3, [sp, #0x4]
  3f2508: f04f 0200    	mov.w	r2, #0x0
  3f250c: f8c3 21c4    	str.w	r2, [r3, #0x1c4]
  3f2510: 9b01         	ldr	r3, [sp, #0x4]
  3f2512: f503 74c8    	add.w	r4, r3, #0x190
  3f2516: ab04         	add	r3, sp, #0x10
  3f2518: 4618         	mov	r0, r3
  3f251a: f04f 0100    	mov.w	r1, #0x0
  3f251e: f04f 0200    	mov.w	r2, #0x0
  3f2522: f1a0 fbe5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a07ca
  3f2526: ab04         	add	r3, sp, #0x10
  3f2528: 4620         	mov	r0, r4
  3f252a: 4619         	mov	r1, r3
  3f252c: f1a0 fc0e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a081c
  3f2530: 9b01         	ldr	r3, [sp, #0x4]
  3f2532: f04f 0200    	mov.w	r2, #0x0
  3f2536: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3f253a: 9b01         	ldr	r3, [sp, #0x4]
  3f253c: f503 74cc    	add.w	r4, r3, #0x198
  3f2540: ab04         	add	r3, sp, #0x10
  3f2542: 4618         	mov	r0, r3
  3f2544: f04f 0100    	mov.w	r1, #0x0
  3f2548: f04f 0200    	mov.w	r2, #0x0
  3f254c: f1a0 fbd0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a07a0
  3f2550: ab04         	add	r3, sp, #0x10
  3f2552: 4620         	mov	r0, r4
  3f2554: 4619         	mov	r1, r3
  3f2556: f1a0 fbf9    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a07f2
  3f255a: 9b01         	ldr	r3, [sp, #0x4]
  3f255c: 2200         	movs	r2, #0x0
  3f255e: f883 21cd    	strb.w	r2, [r3, #0x1cd]
  3f2562: 9b01         	ldr	r3, [sp, #0x4]
  3f2564: 2200         	movs	r2, #0x0
  3f2566: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  3f256a: 9b01         	ldr	r3, [sp, #0x4]
  3f256c: 2200         	movs	r2, #0x0
  3f256e: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  3f2572: 9b01         	ldr	r3, [sp, #0x4]
  3f2574: f04f 0200    	mov.w	r2, #0x0
  3f2578: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3f257c: 9b01         	ldr	r3, [sp, #0x4]
  3f257e: 2200         	movs	r2, #0x0
  3f2580: f883 21d5    	strb.w	r2, [r3, #0x1d5]
  3f2584: 9b01         	ldr	r3, [sp, #0x4]
  3f2586: f04f 0200    	mov.w	r2, #0x0
  3f258a: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3f258e: 9b01         	ldr	r3, [sp, #0x4]
  3f2590: 2201         	movs	r2, #0x1
  3f2592: f883 21e2    	strb.w	r2, [r3, #0x1e2]
  3f2596: 9b01         	ldr	r3, [sp, #0x4]
  3f2598: f04f 0200    	mov.w	r2, #0x0
  3f259c: f8c3 21dc    	str.w	r2, [r3, #0x1dc]
  3f25a0: 9b01         	ldr	r3, [sp, #0x4]
  3f25a2: 2201         	movs	r2, #0x1
  3f25a4: f883 21e0    	strb.w	r2, [r3, #0x1e0]
  3f25a8: 9b01         	ldr	r3, [sp, #0x4]
  3f25aa: 2200         	movs	r2, #0x0
  3f25ac: f883 21e1    	strb.w	r2, [r3, #0x1e1]
  3f25b0: 9b01         	ldr	r3, [sp, #0x4]
  3f25b2: f04f 0200    	mov.w	r2, #0x0
  3f25b6: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  3f25ba: 2301         	movs	r3, #0x1
  3f25bc: 4618         	mov	r0, r3
  3f25be: b006         	add	sp, #0x18
  3f25c0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3f25c1); words below are literal-pool data ---
  3f25c2: bf00         	nop
  3f25c4: 0e1e         	lsrs	r6, r3, #0x18
  3f25c6: 0054         	lsls	r4, r2, #0x1
  3f25c8: 0000         	movs	r0, r0
  3f25ca: c296         	stm	r2!, {r1, r2, r4, r7}
  3f25cc: 6f1a         	ldr	r2, [r3, #0x70]
  3f25ce: 003e         	movs	r6, r7
  3f25d0: d7a8         	bvc	0x3f2524 <SoldierView::init()+0x944> @ imm = #-0xb0
  3f25d2: ffff 6ec4    	<unknown>
  3f25d6: 003e         	movs	r6, r7
  3f25d8: d7ac         	bvc	0x3f2534 <SoldierView::init()+0x954> @ imm = #-0xa8
  3f25da: ffff 6e72    	vcvt.f32.u32	q11, q9, #0x1
  3f25de: 003e         	movs	r6, r7
  3f25e0: d7b0         	bvc	0x3f2544 <SoldierView::init()+0x964> @ imm = #-0xa0
  3f25e2: ffff 6e18    	vcvt.f32.u32	d22, d8, #0x1
  3f25e6: 003e         	movs	r6, r7
  3f25e8: 6dbe         	ldr	r6, [r7, #0x58]
  3f25ea: 003e         	movs	r6, r7
  3f25ec: d7b4         	bvc	0x3f2558 <SoldierView::init()+0x978> @ imm = #-0x98
  3f25ee: ffff 6d68    	<unknown>
  3f25f2: 003e         	movs	r6, r7
  3f25f4: 68be         	ldr	r6, [r7, #0x8]
  3f25f6: 003e         	movs	r6, r7
  3f25f8: 68a8         	ldr	r0, [r5, #0x8]
  3f25fa: 003e         	movs	r6, r7
  3f25fc: d748         	bvc	0x3f2690 <SoldierView::~SoldierView()+0x90> @ imm = #0x90
  3f25fe: ffff b500    	<unknown>

// ==== SoldierView::~SoldierView
//      file offset 0x3f2600 (= ELF address; Ghidra 0x402600), 456 bytes, Thumb-2
  3f2600: b500         	push	{lr}
  3f2602: b083         	sub	sp, #0xc
  3f2604: 9001         	str	r0, [sp, #0x4]
  3f2606: 496e         	ldr	r1, [pc, #0x1b8]        @ 0x3f27c0 <SoldierView::~SoldierView()+0x1c0>
  3f2608: 4479         	add	r1, pc
  3f260a: 9b01         	ldr	r3, [sp, #0x4]
  3f260c: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x3f27c4 <SoldierView::~SoldierView()+0x1c4>
  3f260e: 588a         	ldr	r2, [r1, r2]
  3f2610: 3208         	adds	r2, #0x8
  3f2612: 601a         	str	r2, [r3]
  3f2614: 9b01         	ldr	r3, [sp, #0x4]
  3f2616: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f261a: 681b         	ldr	r3, [r3]
  3f261c: f503 7382    	add.w	r3, r3, #0x104
  3f2620: 681b         	ldr	r3, [r3]
  3f2622: 9a01         	ldr	r2, [sp, #0x4]
  3f2624: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2628: 4610         	mov	r0, r2
  3f262a: 2101         	movs	r1, #0x1
  3f262c: 4798         	blx	r3
  3f262e: 9b01         	ldr	r3, [sp, #0x4]
  3f2630: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2634: 681b         	ldr	r3, [r3]
  3f2636: f503 7382    	add.w	r3, r3, #0x104
  3f263a: 681b         	ldr	r3, [r3]
  3f263c: 9a01         	ldr	r2, [sp, #0x4]
  3f263e: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f2642: 4610         	mov	r0, r2
  3f2644: 2101         	movs	r1, #0x1
  3f2646: 4798         	blx	r3
  3f2648: 9b01         	ldr	r3, [sp, #0x4]
  3f264a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f264e: 681b         	ldr	r3, [r3]
  3f2650: f503 7382    	add.w	r3, r3, #0x104
  3f2654: 681b         	ldr	r3, [r3]
  3f2656: 9a01         	ldr	r2, [sp, #0x4]
  3f2658: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  3f265c: 4610         	mov	r0, r2
  3f265e: 2101         	movs	r1, #0x1
  3f2660: 4798         	blx	r3
  3f2662: 9b01         	ldr	r3, [sp, #0x4]
  3f2664: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f2668: 681b         	ldr	r3, [r3]
  3f266a: f503 7382    	add.w	r3, r3, #0x104
  3f266e: 681b         	ldr	r3, [r3]
  3f2670: 9a01         	ldr	r2, [sp, #0x4]
  3f2672: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3f2676: 4610         	mov	r0, r2
  3f2678: 2101         	movs	r1, #0x1
  3f267a: 4798         	blx	r3
  3f267c: 9b01         	ldr	r3, [sp, #0x4]
  3f267e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f2682: 681b         	ldr	r3, [r3]
  3f2684: f503 7382    	add.w	r3, r3, #0x104
  3f2688: 681b         	ldr	r3, [r3]
  3f268a: 9a01         	ldr	r2, [sp, #0x4]
  3f268c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f2690: 4610         	mov	r0, r2
  3f2692: 2101         	movs	r1, #0x1
  3f2694: 4798         	blx	r3
  3f2696: 9b01         	ldr	r3, [sp, #0x4]
  3f2698: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f269c: 681b         	ldr	r3, [r3]
  3f269e: f503 7382    	add.w	r3, r3, #0x104
  3f26a2: 681b         	ldr	r3, [r3]
  3f26a4: 9a01         	ldr	r2, [sp, #0x4]
  3f26a6: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  3f26aa: 4610         	mov	r0, r2
  3f26ac: 2101         	movs	r1, #0x1
  3f26ae: 4798         	blx	r3
  3f26b0: 9b01         	ldr	r3, [sp, #0x4]
  3f26b2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f26b6: 681b         	ldr	r3, [r3]
  3f26b8: f503 7382    	add.w	r3, r3, #0x104
  3f26bc: 681b         	ldr	r3, [r3]
  3f26be: 9a01         	ldr	r2, [sp, #0x4]
  3f26c0: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f26c4: 4610         	mov	r0, r2
  3f26c6: 2101         	movs	r1, #0x1
  3f26c8: 4798         	blx	r3
  3f26ca: 9b01         	ldr	r3, [sp, #0x4]
  3f26cc: 4618         	mov	r0, r3
  3f26ce: 2101         	movs	r1, #0x1
  3f26d0: f19d ffba    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x19df74
  3f26d4: 9b01         	ldr	r3, [sp, #0x4]
  3f26d6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f26da: 4618         	mov	r0, r3
  3f26dc: f1a5 fbec    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a57d8
  3f26e0: 9b01         	ldr	r3, [sp, #0x4]
  3f26e2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f26e6: 4618         	mov	r0, r3
  3f26e8: f1a5 fbe6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a57cc
  3f26ec: 9b01         	ldr	r3, [sp, #0x4]
  3f26ee: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f26f2: 4618         	mov	r0, r3
  3f26f4: f1a5 fbe0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a57c0
  3f26f8: 9b01         	ldr	r3, [sp, #0x4]
  3f26fa: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f26fe: 4618         	mov	r0, r3
  3f2700: f1a5 fbda    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a57b4
  3f2704: 9b01         	ldr	r3, [sp, #0x4]
  3f2706: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f270a: 4618         	mov	r0, r3
  3f270c: f1a5 fbd4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a57a8
  3f2710: 9b01         	ldr	r3, [sp, #0x4]
  3f2712: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f2716: 4618         	mov	r0, r3
  3f2718: f1a5 fbce    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a579c
  3f271c: 9b01         	ldr	r3, [sp, #0x4]
  3f271e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f2722: 4618         	mov	r0, r3
  3f2724: f1a5 fbc8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5790
  3f2728: 9b01         	ldr	r3, [sp, #0x4]
  3f272a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f272e: 4618         	mov	r0, r3
  3f2730: f1a5 fbc2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5784
  3f2734: 9b01         	ldr	r3, [sp, #0x4]
  3f2736: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f273a: 4618         	mov	r0, r3
  3f273c: f1a5 fbbc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5778
  3f2740: 9b01         	ldr	r3, [sp, #0x4]
  3f2742: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f2746: 4618         	mov	r0, r3
  3f2748: f1a5 fbb6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a576c
  3f274c: 9b01         	ldr	r3, [sp, #0x4]
  3f274e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f2752: 4618         	mov	r0, r3
  3f2754: f1a5 fbb0    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5760
  3f2758: 9b01         	ldr	r3, [sp, #0x4]
  3f275a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f275e: 4618         	mov	r0, r3
  3f2760: f1a5 fbaa    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5754
  3f2764: 9b01         	ldr	r3, [sp, #0x4]
  3f2766: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f276a: 4618         	mov	r0, r3
  3f276c: f1a5 fba4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5748
  3f2770: 9b01         	ldr	r3, [sp, #0x4]
  3f2772: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2776: 4618         	mov	r0, r3
  3f2778: f1a5 fb9e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a573c
  3f277c: 9b01         	ldr	r3, [sp, #0x4]
  3f277e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f2782: 4618         	mov	r0, r3
  3f2784: f1a5 fb98    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5730
  3f2788: 9b01         	ldr	r3, [sp, #0x4]
  3f278a: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f278e: 4618         	mov	r0, r3
  3f2790: f1a5 fb92    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a5724
  3f2794: 9b01         	ldr	r3, [sp, #0x4]
  3f2796: f503 73f2    	add.w	r3, r3, #0x1e4
  3f279a: 4618         	mov	r0, r3
  3f279c: f3c3 f8ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c3174
  3f27a0: 9b01         	ldr	r3, [sp, #0x4]
  3f27a2: 4618         	mov	r0, r3
  3f27a4: f19d f84e    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x19d09c
  3f27a8: 2300         	movs	r3, #0x0
  3f27aa: 2b00         	cmp	r3, #0x0
  3f27ac: d002         	beq	0x3f27b4 <SoldierView::~SoldierView()+0x1b4> @ imm = #0x4
  3f27ae: 9801         	ldr	r0, [sp, #0x4]
  3f27b0: f395 fc78    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3958f0
  3f27b4: 9b01         	ldr	r3, [sp, #0x4]
  3f27b6: 4618         	mov	r0, r3
  3f27b8: b003         	add	sp, #0xc
  3f27ba: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f27bd); words below are literal-pool data ---
  3f27be: bf00         	nop
  3f27c0: 0400         	lsls	r0, r0, #0x10
  3f27c2: 0054         	lsls	r4, r2, #0x1
  3f27c4: df28         	svc	#0x28
  3f27c6: ffff b500    	<unknown>

// ==== SoldierView::~SoldierView
//      file offset 0x3f27c8 (= ELF address; Ghidra 0x4027c8), 28 bytes, Thumb-2
  3f27c8: b500         	push	{lr}
  3f27ca: b083         	sub	sp, #0xc
  3f27cc: 9001         	str	r0, [sp, #0x4]
  3f27ce: 9801         	ldr	r0, [sp, #0x4]
  3f27d0: f7ff ff16    	bl	0x3f2600 <SoldierView::~SoldierView()> @ imm = #-0x1d4
  3f27d4: 9801         	ldr	r0, [sp, #0x4]
  3f27d6: f395 fc65    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3958ca
  3f27da: 9b01         	ldr	r3, [sp, #0x4]
  3f27dc: 4618         	mov	r0, r3
  3f27de: b003         	add	sp, #0xc
  3f27e0: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::updateVisible
//      file offset 0x3f27e4 (= ELF address; Ghidra 0x4027e4), 94 bytes, Thumb-2
  3f27e4: b500         	push	{lr}
  3f27e6: b083         	sub	sp, #0xc
  3f27e8: 9001         	str	r0, [sp, #0x4]
  3f27ea: 460b         	mov	r3, r1
  3f27ec: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f27f0: 9b01         	ldr	r3, [sp, #0x4]
  3f27f2: 681b         	ldr	r3, [r3]
  3f27f4: 3390         	adds	r3, #0x90
  3f27f6: 681b         	ldr	r3, [r3]
  3f27f8: 9901         	ldr	r1, [sp, #0x4]
  3f27fa: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f27fe: 4608         	mov	r0, r1
  3f2800: 4611         	mov	r1, r2
  3f2802: 4798         	blx	r3
  3f2804: 9b01         	ldr	r3, [sp, #0x4]
  3f2806: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f280a: 681b         	ldr	r3, [r3]
  3f280c: 3390         	adds	r3, #0x90
  3f280e: 681b         	ldr	r3, [r3]
  3f2810: 9a01         	ldr	r2, [sp, #0x4]
  3f2812: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3f2816: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f281a: 4608         	mov	r0, r1
  3f281c: 4611         	mov	r1, r2
  3f281e: 4798         	blx	r3
  3f2820: 9b01         	ldr	r3, [sp, #0x4]
  3f2822: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f2826: 681b         	ldr	r3, [r3]
  3f2828: 3390         	adds	r3, #0x90
  3f282a: 681b         	ldr	r3, [r3]
  3f282c: 9a01         	ldr	r2, [sp, #0x4]
  3f282e: f8d2 10ec    	ldr.w	r1, [r2, #0xec]
  3f2832: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f2836: 4608         	mov	r0, r1
  3f2838: 4611         	mov	r1, r2
  3f283a: 4798         	blx	r3
  3f283c: b003         	add	sp, #0xc
  3f283e: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setOpacity
//      file offset 0x3f2844 (= ELF address; Ghidra 0x402844), 194 bytes, Thumb-2
  3f2844: b500         	push	{lr}
  3f2846: b083         	sub	sp, #0xc
  3f2848: 9001         	str	r0, [sp, #0x4]
  3f284a: 9100         	str	r1, [sp]
  3f284c: 9b01         	ldr	r3, [sp, #0x4]
  3f284e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f2852: 681b         	ldr	r3, [r3]
  3f2854: f503 73d2    	add.w	r3, r3, #0x1a4
  3f2858: 681b         	ldr	r3, [r3]
  3f285a: 9a01         	ldr	r2, [sp, #0x4]
  3f285c: f8d2 10f0    	ldr.w	r1, [r2, #0xf0]
  3f2860: 9a00         	ldr	r2, [sp]
  3f2862: b2d2         	uxtb	r2, r2
  3f2864: 4608         	mov	r0, r1
  3f2866: 4611         	mov	r1, r2
  3f2868: 4798         	blx	r3
  3f286a: 9b01         	ldr	r3, [sp, #0x4]
  3f286c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f2870: 681b         	ldr	r3, [r3]
  3f2872: f503 73d2    	add.w	r3, r3, #0x1a4
  3f2876: 681b         	ldr	r3, [r3]
  3f2878: 9a01         	ldr	r2, [sp, #0x4]
  3f287a: f8d2 10f4    	ldr.w	r1, [r2, #0xf4]
  3f287e: 9a00         	ldr	r2, [sp]
  3f2880: b2d2         	uxtb	r2, r2
  3f2882: 4608         	mov	r0, r1
  3f2884: 4611         	mov	r1, r2
  3f2886: 4798         	blx	r3
  3f2888: 9b01         	ldr	r3, [sp, #0x4]
  3f288a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f288e: 681b         	ldr	r3, [r3]
  3f2890: f503 73d2    	add.w	r3, r3, #0x1a4
  3f2894: 681b         	ldr	r3, [r3]
  3f2896: 9a01         	ldr	r2, [sp, #0x4]
  3f2898: f8d2 10f8    	ldr.w	r1, [r2, #0xf8]
  3f289c: 9a00         	ldr	r2, [sp]
  3f289e: b2d2         	uxtb	r2, r2
  3f28a0: 4608         	mov	r0, r1
  3f28a2: 4611         	mov	r1, r2
  3f28a4: 4798         	blx	r3
  3f28a6: 9b01         	ldr	r3, [sp, #0x4]
  3f28a8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f28ac: 681b         	ldr	r3, [r3]
  3f28ae: f503 73d2    	add.w	r3, r3, #0x1a4
  3f28b2: 681b         	ldr	r3, [r3]
  3f28b4: 9a01         	ldr	r2, [sp, #0x4]
  3f28b6: f8d2 10fc    	ldr.w	r1, [r2, #0xfc]
  3f28ba: 9a00         	ldr	r2, [sp]
  3f28bc: b2d2         	uxtb	r2, r2
  3f28be: 4608         	mov	r0, r1
  3f28c0: 4611         	mov	r1, r2
  3f28c2: 4798         	blx	r3
  3f28c4: 9b01         	ldr	r3, [sp, #0x4]
  3f28c6: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f28ca: 681b         	ldr	r3, [r3]
  3f28cc: f503 73d2    	add.w	r3, r3, #0x1a4
  3f28d0: 681b         	ldr	r3, [r3]
  3f28d2: 9a01         	ldr	r2, [sp, #0x4]
  3f28d4: f8d2 1100    	ldr.w	r1, [r2, #0x100]
  3f28d8: 9a00         	ldr	r2, [sp]
  3f28da: b2d2         	uxtb	r2, r2
  3f28dc: 4608         	mov	r0, r1
  3f28de: 4611         	mov	r1, r2
  3f28e0: 4798         	blx	r3
  3f28e2: 9b01         	ldr	r3, [sp, #0x4]
  3f28e4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f28e8: 681b         	ldr	r3, [r3]
  3f28ea: f503 73d2    	add.w	r3, r3, #0x1a4
  3f28ee: 681b         	ldr	r3, [r3]
  3f28f0: 9a01         	ldr	r2, [sp, #0x4]
  3f28f2: f8d2 1104    	ldr.w	r1, [r2, #0x104]
  3f28f6: 9a00         	ldr	r2, [sp]
  3f28f8: b2d2         	uxtb	r2, r2
  3f28fa: 4608         	mov	r0, r1
  3f28fc: 4611         	mov	r1, r2
  3f28fe: 4798         	blx	r3
  3f2900: b003         	add	sp, #0xc
  3f2902: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::updateBody
//      file offset 0x3f2908 (= ELF address; Ghidra 0x402908), 144 bytes, Thumb-2
  3f2908: b500         	push	{lr}
  3f290a: b085         	sub	sp, #0x14
  3f290c: 9003         	str	r0, [sp, #0xc]
  3f290e: 9102         	str	r1, [sp, #0x8]
  3f2910: 9201         	str	r2, [sp, #0x4]
  3f2912: 9300         	str	r3, [sp]
  3f2914: 9b03         	ldr	r3, [sp, #0xc]
  3f2916: 681b         	ldr	r3, [r3]
  3f2918: 334c         	adds	r3, #0x4c
  3f291a: 681b         	ldr	r3, [r3]
  3f291c: 9a03         	ldr	r2, [sp, #0xc]
  3f291e: 4610         	mov	r0, r2
  3f2920: 9902         	ldr	r1, [sp, #0x8]
  3f2922: 4798         	blx	r3
  3f2924: 9b03         	ldr	r3, [sp, #0xc]
  3f2926: f503 73c8    	add.w	r3, r3, #0x190
  3f292a: 4618         	mov	r0, r3
  3f292c: 9901         	ldr	r1, [sp, #0x4]
  3f292e: f1a0 fa0d    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a041a
  3f2932: 9b03         	ldr	r3, [sp, #0xc]
  3f2934: 9a00         	ldr	r2, [sp]
  3f2936: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3f293a: 9b03         	ldr	r3, [sp, #0xc]
  3f293c: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2940: 681b         	ldr	r3, [r3]
  3f2942: 3398         	adds	r3, #0x98
  3f2944: 681b         	ldr	r3, [r3]
  3f2946: 9a03         	ldr	r2, [sp, #0xc]
  3f2948: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f294c: 9903         	ldr	r1, [sp, #0xc]
  3f294e: edd1 7a68    	vldr	s15, [r1, #416]
  3f2952: eeb1 7a67    	vneg.f32	s14, s15
  3f2956: eddf 7a0f    	vldr	s15, [pc, #60]          @ 0x3f2994 <SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint, float, bool)+0x8c>
  3f295a: ee67 7a27    	vmul.f32	s15, s14, s15
  3f295e: 4610         	mov	r0, r2
  3f2960: ee17 1a90    	vmov	r1, s15
  3f2964: 4798         	blx	r3
  3f2966: 9b03         	ldr	r3, [sp, #0xc]
  3f2968: f503 73cc    	add.w	r3, r3, #0x198
  3f296c: 4618         	mov	r0, r3
  3f296e: 9907         	ldr	r1, [sp, #0x1c]
  3f2970: f1a0 f9ec    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a03d8
  3f2974: 9b03         	ldr	r3, [sp, #0xc]
  3f2976: 9a06         	ldr	r2, [sp, #0x18]
  3f2978: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3f297c: 9b03         	ldr	r3, [sp, #0xc]
  3f297e: 9a08         	ldr	r2, [sp, #0x20]
  3f2980: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3f2984: 9b03         	ldr	r3, [sp, #0xc]
  3f2986: f89d 2024    	ldrb.w	r2, [sp, #0x24]
  3f298a: f883 21cd    	strb.w	r2, [r3, #0x1cd]
  3f298e: b005         	add	sp, #0x14
  3f2990: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f2993); words below are literal-pool data ---
  3f2994: 2ee1         	cmp	r6, #0xe1
  3f2996: 4265         	rsbs	r5, r4, #0

// ==== SoldierView::setNormalArmRotation
//      file offset 0x3f2998 (= ELF address; Ghidra 0x402998), 200 bytes, Thumb-2
  3f2998: b500         	push	{lr}
  3f299a: ed2d 8b02    	vpush	{d8}
  3f299e: b085         	sub	sp, #0x14
  3f29a0: 9001         	str	r0, [sp, #0x4]
  3f29a2: 9b01         	ldr	r3, [sp, #0x4]
  3f29a4: ed93 8a6e    	vldr	s16, [r3, #440]
  3f29a8: 9b01         	ldr	r3, [sp, #0x4]
  3f29aa: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f29ae: 681b         	ldr	r3, [r3]
  3f29b0: 339c         	adds	r3, #0x9c
  3f29b2: 681b         	ldr	r3, [r3]
  3f29b4: 9a01         	ldr	r2, [sp, #0x4]
  3f29b6: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f29ba: 4610         	mov	r0, r2
  3f29bc: 4798         	blx	r3
  3f29be: ee07 0a90    	vmov	s15, r0
  3f29c2: ee78 7a67    	vsub.f32	s15, s16, s15
  3f29c6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f29ca: ed8d 7b02    	vstr	d7, [sp, #8]
  3f29ce: 9b01         	ldr	r3, [sp, #0x4]
  3f29d0: f893 31cc    	ldrb.w	r3, [r3, #0x1cc]
  3f29d4: f083 0301    	eor	r3, r3, #0x1
  3f29d8: b2db         	uxtb	r3, r3
  3f29da: 2b00         	cmp	r3, #0x0
  3f29dc: d01e         	beq	0x3f2a1c <SoldierView::setNormalArmRotation()+0x84> @ imm = #0x3c
  3f29de: 9b01         	ldr	r3, [sp, #0x4]
  3f29e0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f29e4: 681b         	ldr	r3, [r3]
  3f29e6: 3398         	adds	r3, #0x98
  3f29e8: 681b         	ldr	r3, [r3]
  3f29ea: 9a01         	ldr	r2, [sp, #0x4]
  3f29ec: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f29f0: ed9d 7b02    	vldr	d7, [sp, #8]
  3f29f4: eeb1 6b47    	vneg.f64	d6, d7
  3f29f8: ed9f 7b17    	vldr	d7, [pc, #92]           @ 0x3f2a58 <SoldierView::setNormalArmRotation()+0xc0>
  3f29fc: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2a00: 9901         	ldr	r1, [sp, #0x4]
  3f2a02: edd1 7a70    	vldr	s15, [r1, #448]
  3f2a06: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2a0a: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2a0e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2a12: 4610         	mov	r0, r2
  3f2a14: ee17 1a90    	vmov	r1, s15
  3f2a18: 4798         	blx	r3
  3f2a1a: e017         	b	0x3f2a4c <SoldierView::setNormalArmRotation()+0xb4> @ imm = #0x2e
  3f2a1c: 9b01         	ldr	r3, [sp, #0x4]
  3f2a1e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2a22: 681b         	ldr	r3, [r3]
  3f2a24: 3398         	adds	r3, #0x98
  3f2a26: 681b         	ldr	r3, [r3]
  3f2a28: 9a01         	ldr	r2, [sp, #0x4]
  3f2a2a: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2a2e: 9901         	ldr	r1, [sp, #0x4]
  3f2a30: edd1 7a70    	vldr	s15, [r1, #448]
  3f2a34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2a38: ed9d 6b02    	vldr	d6, [sp, #8]
  3f2a3c: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2a40: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2a44: 4610         	mov	r0, r2
  3f2a46: ee17 1a90    	vmov	r1, s15
  3f2a4a: 4798         	blx	r3
  3f2a4c: b005         	add	sp, #0x14
  3f2a4e: ecbd 8b02    	vpop	{d8}
  3f2a52: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f2a55); words below are literal-pool data ---
  3f2a56: bf00         	nop
  3f2a58: 0000         	movs	r0, r0
  3f2a5a: 0000         	movs	r0, r0
  3f2a5c: 8000         	strh	r0, [r0]
  3f2a5e: 4066         	eors	r6, r4

// ==== SoldierView::setRecoilArmRotation
//      file offset 0x3f2a60 (= ELF address; Ghidra 0x402a60), 288 bytes, Thumb-2
  3f2a60: b500         	push	{lr}
  3f2a62: ed2d 8b02    	vpush	{d8}
  3f2a66: b085         	sub	sp, #0x14
  3f2a68: 9001         	str	r0, [sp, #0x4]
  3f2a6a: 9b01         	ldr	r3, [sp, #0x4]
  3f2a6c: ed93 8a6e    	vldr	s16, [r3, #440]
  3f2a70: 9b01         	ldr	r3, [sp, #0x4]
  3f2a72: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2a76: 681b         	ldr	r3, [r3]
  3f2a78: 339c         	adds	r3, #0x9c
  3f2a7a: 681b         	ldr	r3, [r3]
  3f2a7c: 9a01         	ldr	r2, [sp, #0x4]
  3f2a7e: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f2a82: 4610         	mov	r0, r2
  3f2a84: 4798         	blx	r3
  3f2a86: ee07 0a90    	vmov	s15, r0
  3f2a8a: ee78 7a67    	vsub.f32	s15, s16, s15
  3f2a8e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2a92: ed8d 7b02    	vstr	d7, [sp, #8]
  3f2a96: 9b01         	ldr	r3, [sp, #0x4]
  3f2a98: f893 31cc    	ldrb.w	r3, [r3, #0x1cc]
  3f2a9c: f083 0301    	eor	r3, r3, #0x1
  3f2aa0: b2db         	uxtb	r3, r3
  3f2aa2: 2b00         	cmp	r3, #0x0
  3f2aa4: d033         	beq	0x3f2b0e <SoldierView::setRecoilArmRotation()+0xae> @ imm = #0x66
  3f2aa6: 9b01         	ldr	r3, [sp, #0x4]
  3f2aa8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2aac: 681b         	ldr	r3, [r3]
  3f2aae: 3398         	adds	r3, #0x98
  3f2ab0: 681b         	ldr	r3, [r3]
  3f2ab2: 9a01         	ldr	r2, [sp, #0x4]
  3f2ab4: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2ab8: ed9d 7b02    	vldr	d7, [sp, #8]
  3f2abc: eeb1 6b47    	vneg.f64	d6, d7
  3f2ac0: ed9f 7b2d    	vldr	d7, [pc, #180]          @ 0x3f2b78 <SoldierView::setRecoilArmRotation()+0x118>
  3f2ac4: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2ac8: 9901         	ldr	r1, [sp, #0x4]
  3f2aca: edd1 7a6a    	vldr	s15, [r1, #424]
  3f2ace: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2ad2: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2ad6: 9901         	ldr	r1, [sp, #0x4]
  3f2ad8: edd1 7a6c    	vldr	s15, [r1, #432]
  3f2adc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2ae0: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2ae4: 9901         	ldr	r1, [sp, #0x4]
  3f2ae6: edd1 7a6f    	vldr	s15, [r1, #444]
  3f2aea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2aee: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2af2: 9901         	ldr	r1, [sp, #0x4]
  3f2af4: edd1 7a70    	vldr	s15, [r1, #448]
  3f2af8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2afc: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2b00: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2b04: 4610         	mov	r0, r2
  3f2b06: ee17 1a90    	vmov	r1, s15
  3f2b0a: 4798         	blx	r3
  3f2b0c: e02c         	b	0x3f2b68 <SoldierView::setRecoilArmRotation()+0x108> @ imm = #0x58
  3f2b0e: 9b01         	ldr	r3, [sp, #0x4]
  3f2b10: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2b14: 681b         	ldr	r3, [r3]
  3f2b16: 3398         	adds	r3, #0x98
  3f2b18: 681b         	ldr	r3, [r3]
  3f2b1a: 9a01         	ldr	r2, [sp, #0x4]
  3f2b1c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2b20: 9901         	ldr	r1, [sp, #0x4]
  3f2b22: edd1 7a6a    	vldr	s15, [r1, #424]
  3f2b26: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2b2a: ed9d 6b02    	vldr	d6, [sp, #8]
  3f2b2e: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2b32: 9901         	ldr	r1, [sp, #0x4]
  3f2b34: edd1 7a6c    	vldr	s15, [r1, #432]
  3f2b38: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2b3c: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2b40: 9901         	ldr	r1, [sp, #0x4]
  3f2b42: edd1 7a6f    	vldr	s15, [r1, #444]
  3f2b46: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2b4a: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2b4e: 9901         	ldr	r1, [sp, #0x4]
  3f2b50: edd1 7a70    	vldr	s15, [r1, #448]
  3f2b54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2b58: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2b5c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2b60: 4610         	mov	r0, r2
  3f2b62: ee17 1a90    	vmov	r1, s15
  3f2b66: 4798         	blx	r3
  3f2b68: b005         	add	sp, #0x14
  3f2b6a: ecbd 8b02    	vpop	{d8}
  3f2b6e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f2b71); words below are literal-pool data ---
  3f2b72: bf00         	nop
  3f2b74: f3af 8000    	nop.w
  3f2b78: 0000         	movs	r0, r0
  3f2b7a: 0000         	movs	r0, r0
  3f2b7c: 8000         	strh	r0, [r0]
  3f2b7e: 4066         	eors	r6, r4

// ==== SoldierView::updateStep
//      file offset 0x3f2b80 (= ELF address; Ghidra 0x402b80), 4304 bytes, Thumb-2
  3f2b80: b570         	push	{r4, r5, r6, lr}
  3f2b82: ed2d 8b02    	vpush	{d8}
  3f2b86: b0ae         	sub	sp, #0xb8
  3f2b88: 9005         	str	r0, [sp, #0x14]
  3f2b8a: 9104         	str	r1, [sp, #0x10]
  3f2b8c: 9b05         	ldr	r3, [sp, #0x14]
  3f2b8e: ed93 7a77    	vldr	s14, [r3, #476]
  3f2b92: eddd 7a04    	vldr	s15, [sp, #16]
  3f2b96: ee77 7a27    	vadd.f32	s15, s14, s15
  3f2b9a: 9b05         	ldr	r3, [sp, #0x14]
  3f2b9c: edc3 7a77    	vstr	s15, [r3, #476]
  3f2ba0: 9b05         	ldr	r3, [sp, #0x14]
  3f2ba2: ed93 8a6e    	vldr	s16, [r3, #440]
  3f2ba6: 9b05         	ldr	r3, [sp, #0x14]
  3f2ba8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2bac: 681b         	ldr	r3, [r3]
  3f2bae: 339c         	adds	r3, #0x9c
  3f2bb0: 681b         	ldr	r3, [r3]
  3f2bb2: 9a05         	ldr	r2, [sp, #0x14]
  3f2bb4: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f2bb8: 4610         	mov	r0, r2
  3f2bba: 4798         	blx	r3
  3f2bbc: ee07 0a90    	vmov	s15, r0
  3f2bc0: ee78 7a67    	vsub.f32	s15, s16, s15
  3f2bc4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2bc8: ed8d 7b0a    	vstr	d7, [sp, #40]
  3f2bcc: 9b05         	ldr	r3, [sp, #0x14]
  3f2bce: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2bd2: 681b         	ldr	r3, [r3]
  3f2bd4: 339c         	adds	r3, #0x9c
  3f2bd6: 681b         	ldr	r3, [r3]
  3f2bd8: 9a05         	ldr	r2, [sp, #0x14]
  3f2bda: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f2bde: 4610         	mov	r0, r2
  3f2be0: 4798         	blx	r3
  3f2be2: ee07 0a10    	vmov	s14, r0
  3f2be6: eddf 7aa6    	vldr	s15, [pc, #664]         @ 0x3f2e80 <SoldierView::updateStep(float)+0x300>
  3f2bea: ee67 7a27    	vmul.f32	s15, s14, s15
  3f2bee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2bf2: ed8d 7b0c    	vstr	d7, [sp, #48]
  3f2bf6: 9b05         	ldr	r3, [sp, #0x14]
  3f2bf8: ed93 7a6e    	vldr	s14, [r3, #440]
  3f2bfc: eddf 7aa0    	vldr	s15, [pc, #640]         @ 0x3f2e80 <SoldierView::updateStep(float)+0x300>
  3f2c00: ee67 7a27    	vmul.f32	s15, s14, s15
  3f2c04: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2c08: ed8d 7b0e    	vstr	d7, [sp, #56]
  3f2c0c: e9dd 010c    	ldrd	r0, r1, [sp, #48]
  3f2c10: f6e3 e97a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd0c
  3f2c14: 4604         	mov	r4, r0
  3f2c16: 460d         	mov	r5, r1
  3f2c18: e9dd 010c    	ldrd	r0, r1, [sp, #48]
  3f2c1c: f6e3 e97a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11cd0c
  3f2c20: 4602         	mov	r2, r0
  3f2c22: 460b         	mov	r3, r1
  3f2c24: a912         	add	r1, sp, #0x48
  3f2c26: 4608         	mov	r0, r1
  3f2c28: ec45 4b10    	vmov	d0, r4, r5
  3f2c2c: ec43 2b11    	vmov	d1, r2, r3
  3f2c30: f7fe f83c    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x1f88
  3f2c34: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2c38: f6e3 e966    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd34
  3f2c3c: 4604         	mov	r4, r0
  3f2c3e: 460d         	mov	r5, r1
  3f2c40: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2c44: f6e3 e966    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11cd34
  3f2c48: 4602         	mov	r2, r0
  3f2c4a: 460b         	mov	r3, r1
  3f2c4c: a916         	add	r1, sp, #0x58
  3f2c4e: 4608         	mov	r0, r1
  3f2c50: ec45 4b10    	vmov	d0, r4, r5
  3f2c54: ec43 2b11    	vmov	d1, r2, r3
  3f2c58: f7fe f828    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x1fb0
  3f2c5c: ed9d 4b12    	vldr	d4, [sp, #72]
  3f2c60: ed9d 5b14    	vldr	d5, [sp, #80]
  3f2c64: ed9d 6b16    	vldr	d6, [sp, #88]
  3f2c68: ed9d 7b18    	vldr	d7, [sp, #96]
  3f2c6c: eeb0 0b44    	vmov.f64	d0, d4
  3f2c70: eeb0 1b45    	vmov.f64	d1, d5
  3f2c74: eeb0 2b46    	vmov.f64	d2, d6
  3f2c78: eeb0 3b47    	vmov.f64	d3, d7
  3f2c7c: f7fe f82a    	bl	0x3f0cd4 <SoldierRemoteController::setTeamId(int)+0x2e0> @ imm = #-0x1fac
  3f2c80: ed8d 0b10    	vstr	d0, [sp, #64]
  3f2c84: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2c88: f6e3 e93e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cd84
  3f2c8c: ec41 0b16    	vmov	d6, r0, r1
  3f2c90: ed9f 7b71    	vldr	d7, [pc, #452]          @ 0x3f2e58 <SoldierView::updateStep(float)+0x2d8>
  3f2c94: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f2c98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2c9c: bfd4         	ite	le
  3f2c9e: 2300         	movle	r3, #0x0
  3f2ca0: 2301         	movgt	r3, #0x1
  3f2ca2: b2db         	uxtb	r3, r3
  3f2ca4: f083 0301    	eor	r3, r3, #0x1
  3f2ca8: b2db         	uxtb	r3, r3
  3f2caa: 2b00         	cmp	r3, #0x0
  3f2cac: d02e         	beq	0x3f2d0c <SoldierView::updateStep(float)+0x18c> @ imm = #0x5c
  3f2cae: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2cb2: f6e3 e92a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdac
  3f2cb6: ec41 0b16    	vmov	d6, r0, r1
  3f2cba: ed9f 7b69    	vldr	d7, [pc, #420]          @ 0x3f2e60 <SoldierView::updateStep(float)+0x2e0>
  3f2cbe: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f2cc2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2cc6: bf54         	ite	pl
  3f2cc8: 2300         	movpl	r3, #0x0
  3f2cca: 2301         	movmi	r3, #0x1
  3f2ccc: b2db         	uxtb	r3, r3
  3f2cce: f083 0301    	eor	r3, r3, #0x1
  3f2cd2: b2db         	uxtb	r3, r3
  3f2cd4: 2b00         	cmp	r3, #0x0
  3f2cd6: d019         	beq	0x3f2d0c <SoldierView::updateStep(float)+0x18c> @ imm = #0x32
  3f2cd8: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2cdc: f6e3 e914    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdd8
  3f2ce0: ec41 0b16    	vmov	d6, r0, r1
  3f2ce4: ed9f 7b5c    	vldr	d7, [pc, #368]          @ 0x3f2e58 <SoldierView::updateStep(float)+0x2d8>
  3f2ce8: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f2cec: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2cf0: dd03         	ble	0x3f2cfa <SoldierView::updateStep(float)+0x17a> @ imm = #0x6
  3f2cf2: a359         	adr	r3, #356 <SoldierView::updateStep(float)+0x1cf>
  3f2cf4: e9d3 2300    	ldrd	r2, r3, [r3]
  3f2cf8: e005         	b	0x3f2d06 <SoldierView::updateStep(float)+0x186> @ imm = #0xa
  3f2cfa: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2cfe: f6e3 e904    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11cdf8
  3f2d02: 4602         	mov	r2, r0
  3f2d04: 460b         	mov	r3, r1
  3f2d06: ec43 2b18    	vmov	d8, r2, r3
  3f2d0a: e001         	b	0x3f2d10 <SoldierView::updateStep(float)+0x190> @ imm = #0x2
  3f2d0c: ed9f 8b54    	vldr	d8, [pc, #336]          @ 0x3f2e60 <SoldierView::updateStep(float)+0x2e0>
  3f2d10: e9dd 010e    	ldrd	r0, r1, [sp, #56]
  3f2d14: f6e3 e8fe    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11ce04
  3f2d18: ec41 0b16    	vmov	d6, r0, r1
  3f2d1c: ed9f 7b52    	vldr	d7, [pc, #328]          @ 0x3f2e68 <SoldierView::updateStep(float)+0x2e8>
  3f2d20: ee26 7b07    	vmul.f64	d7, d6, d7
  3f2d24: ab1e         	add	r3, sp, #0x78
  3f2d26: 4618         	mov	r0, r3
  3f2d28: eeb0 0b48    	vmov.f64	d0, d8
  3f2d2c: eeb0 1b47    	vmov.f64	d1, d7
  3f2d30: f7fd ffbc    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x2088
  3f2d34: ab1e         	add	r3, sp, #0x78
  3f2d36: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f2d38: f7fe f822    	bl	0x3f0d80 <SoldierRemoteController::setTeamId(int)+0x38c> @ imm = #-0x1fbc
  3f2d3c: 9008         	str	r0, [sp, #0x20]
  3f2d3e: ed9d 7b10    	vldr	d7, [sp, #64]
  3f2d42: eeb5 7bc0    	vcmpe.f64	d7, #0
  3f2d46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2d4a: f200 80ea    	bhi.w	0x3f2f22 <SoldierView::updateStep(float)+0x3a2> @ imm = #0x1d4
  3f2d4e: ed9d 7b10    	vldr	d7, [sp, #64]
  3f2d52: eeb0 6bc7    	vabs.f64	d6, d7
  3f2d56: ed9f 7b46    	vldr	d7, [pc, #280]          @ 0x3f2e70 <SoldierView::updateStep(float)+0x2f0>
  3f2d5a: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f2d5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2d62: f340 80de    	ble.w	0x3f2f22 <SoldierView::updateStep(float)+0x3a2> @ imm = #0x1bc
  3f2d66: 9b05         	ldr	r3, [sp, #0x14]
  3f2d68: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2d6c: 681b         	ldr	r3, [r3]
  3f2d6e: 3330         	adds	r3, #0x30
  3f2d70: 681b         	ldr	r3, [r3]
  3f2d72: 9a05         	ldr	r2, [sp, #0x14]
  3f2d74: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f2d78: 9905         	ldr	r1, [sp, #0x14]
  3f2d7a: edd1 7a74    	vldr	s15, [r1, #464]
  3f2d7e: eef1 7a67    	vneg.f32	s15, s15
  3f2d82: ee17 1a90    	vmov	r1, s15
  3f2d86: 4610         	mov	r0, r2
  3f2d88: 4798         	blx	r3
  3f2d8a: 9b05         	ldr	r3, [sp, #0x14]
  3f2d8c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2d90: 681b         	ldr	r3, [r3]
  3f2d92: 3398         	adds	r3, #0x98
  3f2d94: 681b         	ldr	r3, [r3]
  3f2d96: 9a05         	ldr	r2, [sp, #0x14]
  3f2d98: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2d9c: ed9d 7b0a    	vldr	d7, [sp, #40]
  3f2da0: eeb1 6b47    	vneg.f64	d6, d7
  3f2da4: ed9f 7b34    	vldr	d7, [pc, #208]          @ 0x3f2e78 <SoldierView::updateStep(float)+0x2f8>
  3f2da8: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2dac: 9905         	ldr	r1, [sp, #0x14]
  3f2dae: edd1 7a6a    	vldr	s15, [r1, #424]
  3f2db2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2db6: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2dba: 9905         	ldr	r1, [sp, #0x14]
  3f2dbc: edd1 7a6c    	vldr	s15, [r1, #432]
  3f2dc0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2dc4: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2dc8: 9905         	ldr	r1, [sp, #0x14]
  3f2dca: edd1 7a6f    	vldr	s15, [r1, #444]
  3f2dce: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2dd2: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2dd6: 9905         	ldr	r1, [sp, #0x14]
  3f2dd8: edd1 7a70    	vldr	s15, [r1, #448]
  3f2ddc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2de0: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2de4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2de8: 4610         	mov	r0, r2
  3f2dea: ee17 1a90    	vmov	r1, s15
  3f2dee: 4798         	blx	r3
  3f2df0: 9b05         	ldr	r3, [sp, #0x14]
  3f2df2: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  3f2df6: 2b00         	cmp	r3, #0x0
  3f2df8: d107         	bne	0x3f2e0a <SoldierView::updateStep(float)+0x28a> @ imm = #0xe
  3f2dfa: 9b05         	ldr	r3, [sp, #0x14]
  3f2dfc: edd3 7a70    	vldr	s15, [r3, #448]
  3f2e00: eef5 7a40    	vcmp.f32	s15, #0
  3f2e04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2e08: d03c         	beq	0x3f2e84 <SoldierView::updateStep(float)+0x304> @ imm = #0x78
  3f2e0a: 9b05         	ldr	r3, [sp, #0x14]
  3f2e0c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2e10: 681b         	ldr	r3, [r3]
  3f2e12: 3398         	adds	r3, #0x98
  3f2e14: 681b         	ldr	r3, [r3]
  3f2e16: 9a05         	ldr	r2, [sp, #0x14]
  3f2e18: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f2e1c: ed9d 7b0a    	vldr	d7, [sp, #40]
  3f2e20: eeb1 6b47    	vneg.f64	d6, d7
  3f2e24: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x3f2e78 <SoldierView::updateStep(float)+0x2f8>
  3f2e28: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2e2c: 9905         	ldr	r1, [sp, #0x14]
  3f2e2e: edd1 7a6b    	vldr	s15, [r1, #428]
  3f2e32: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2e36: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2e3a: 9905         	ldr	r1, [sp, #0x14]
  3f2e3c: edd1 7a6d    	vldr	s15, [r1, #436]
  3f2e40: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2e44: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2e48: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2e4c: 4610         	mov	r0, r2
  3f2e4e: ee17 1a90    	vmov	r1, s15
  3f2e52: 4798         	blx	r3
  3f2e54: e040         	b	0x3f2ed8 <SoldierView::updateStep(float)+0x358> @ imm = #0x80
  3f2e56: bf00         	nop
  3f2e58: 3333         	adds	r3, #0x33
  3f2e5a: 3333         	adds	r3, #0x33
  3f2e5c: 3333         	adds	r3, #0x33
  3f2e5e: bfc3         	ittte	gt
  3f2e60: 3333         	addgt	r3, #0x33
  3f2e62: 3333         	addgt	r3, #0x33
  3f2e64: 3333         	addgt	r3, #0x33
  3f2e66: 3fc3         	suble	r7, #0xc3
  3f2e68: 999a         	ldr	r1, [sp, #0x268]
  3f2e6a: 9999         	ldr	r1, [sp, #0x264]
  3f2e6c: 9999         	ldr	r1, [sp, #0x264]
  3f2e6e: 3fb9         	subs	r7, #0xb9
  3f2e70: 999a         	ldr	r1, [sp, #0x268]
  3f2e72: 9999         	ldr	r1, [sp, #0x264]
  3f2e74: 9999         	ldr	r1, [sp, #0x264]
  3f2e76: 3fa9         	subs	r7, #0xa9
  3f2e78: 0000         	movs	r0, r0
  3f2e7a: 0000         	movs	r0, r0
  3f2e7c: 8000         	strh	r0, [r0]
  3f2e7e: 4066         	eors	r6, r4
  3f2e80: fa35 3c8e    	<unknown>
  3f2e84: 9b05         	ldr	r3, [sp, #0x14]
  3f2e86: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2e8a: 681b         	ldr	r3, [r3]
  3f2e8c: 3398         	adds	r3, #0x98
  3f2e8e: 681b         	ldr	r3, [r3]
  3f2e90: 9a05         	ldr	r2, [sp, #0x14]
  3f2e92: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f2e96: eddd 7a08    	vldr	s15, [sp, #32]
  3f2e9a: eeb1 7a67    	vneg.f32	s14, s15
  3f2e9e: 9905         	ldr	r1, [sp, #0x14]
  3f2ea0: edd1 7a6b    	vldr	s15, [r1, #428]
  3f2ea4: ee37 7a67    	vsub.f32	s14, s14, s15
  3f2ea8: 9905         	ldr	r1, [sp, #0x14]
  3f2eaa: edd1 7a6d    	vldr	s15, [r1, #436]
  3f2eae: ee77 7a67    	vsub.f32	s15, s14, s15
  3f2eb2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f2eb6: 9905         	ldr	r1, [sp, #0x14]
  3f2eb8: edd1 7a70    	vldr	s15, [r1, #448]
  3f2ebc: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3f2ec0: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3f2ec4: ee25 7b07    	vmul.f64	d7, d5, d7
  3f2ec8: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2ecc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2ed0: 4610         	mov	r0, r2
  3f2ed2: ee17 1a90    	vmov	r1, s15
  3f2ed6: 4798         	blx	r3
  3f2ed8: 9b05         	ldr	r3, [sp, #0x14]
  3f2eda: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f2ede: 681b         	ldr	r3, [r3]
  3f2ee0: 3398         	adds	r3, #0x98
  3f2ee2: 681b         	ldr	r3, [r3]
  3f2ee4: 9a05         	ldr	r2, [sp, #0x14]
  3f2ee6: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3f2eea: eddd 7a08    	vldr	s15, [sp, #32]
  3f2eee: eef1 7a67    	vneg.f32	s15, s15
  3f2ef2: ee17 1a90    	vmov	r1, s15
  3f2ef6: 4610         	mov	r0, r2
  3f2ef8: 4798         	blx	r3
  3f2efa: 9b05         	ldr	r3, [sp, #0x14]
  3f2efc: ed93 7a71    	vldr	s14, [r3, #452]
  3f2f00: 9b05         	ldr	r3, [sp, #0x14]
  3f2f02: edd3 6a66    	vldr	s13, [r3, #408]
  3f2f06: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3f2f0a: eec6 7aa7    	vdiv.f32	s15, s13, s15
  3f2f0e: ee77 7a27    	vadd.f32	s15, s14, s15
  3f2f12: 9b05         	ldr	r3, [sp, #0x14]
  3f2f14: edc3 7a71    	vstr	s15, [r3, #452]
  3f2f18: 9b05         	ldr	r3, [sp, #0x14]
  3f2f1a: 2200         	movs	r2, #0x0
  3f2f1c: f883 21cc    	strb.w	r2, [r3, #0x1cc]
  3f2f20: e0b6         	b	0x3f3090 <SoldierView::updateStep(float)+0x510> @ imm = #0x16c
  3f2f22: 9b05         	ldr	r3, [sp, #0x14]
  3f2f24: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f2f28: 681b         	ldr	r3, [r3]
  3f2f2a: 3330         	adds	r3, #0x30
  3f2f2c: 681b         	ldr	r3, [r3]
  3f2f2e: 9a05         	ldr	r2, [sp, #0x14]
  3f2f30: f8d2 1124    	ldr.w	r1, [r2, #0x124]
  3f2f34: 9a05         	ldr	r2, [sp, #0x14]
  3f2f36: f8d2 21d0    	ldr.w	r2, [r2, #0x1d0]
  3f2f3a: 4608         	mov	r0, r1
  3f2f3c: 4611         	mov	r1, r2
  3f2f3e: 4798         	blx	r3
  3f2f40: 9b05         	ldr	r3, [sp, #0x14]
  3f2f42: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f2f46: 681b         	ldr	r3, [r3]
  3f2f48: 3398         	adds	r3, #0x98
  3f2f4a: 681b         	ldr	r3, [r3]
  3f2f4c: 9a05         	ldr	r2, [sp, #0x14]
  3f2f4e: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f2f52: 9905         	ldr	r1, [sp, #0x14]
  3f2f54: edd1 7a6a    	vldr	s15, [r1, #424]
  3f2f58: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2f5c: ed9d 6b0a    	vldr	d6, [sp, #40]
  3f2f60: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2f64: 9905         	ldr	r1, [sp, #0x14]
  3f2f66: edd1 7a6c    	vldr	s15, [r1, #432]
  3f2f6a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2f6e: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2f72: 9905         	ldr	r1, [sp, #0x14]
  3f2f74: edd1 7a6f    	vldr	s15, [r1, #444]
  3f2f78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2f7c: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2f80: 9905         	ldr	r1, [sp, #0x14]
  3f2f82: edd1 7a70    	vldr	s15, [r1, #448]
  3f2f86: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2f8a: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2f8e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2f92: 4610         	mov	r0, r2
  3f2f94: ee17 1a90    	vmov	r1, s15
  3f2f98: 4798         	blx	r3
  3f2f9a: 9b05         	ldr	r3, [sp, #0x14]
  3f2f9c: f893 31d4    	ldrb.w	r3, [r3, #0x1d4]
  3f2fa0: 2b00         	cmp	r3, #0x0
  3f2fa2: d107         	bne	0x3f2fb4 <SoldierView::updateStep(float)+0x434> @ imm = #0xe
  3f2fa4: 9b05         	ldr	r3, [sp, #0x14]
  3f2fa6: edd3 7a70    	vldr	s15, [r3, #448]
  3f2faa: eef5 7a40    	vcmp.f32	s15, #0
  3f2fae: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f2fb2: d01f         	beq	0x3f2ff4 <SoldierView::updateStep(float)+0x474> @ imm = #0x3e
  3f2fb4: 9b05         	ldr	r3, [sp, #0x14]
  3f2fb6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2fba: 681b         	ldr	r3, [r3]
  3f2fbc: 3398         	adds	r3, #0x98
  3f2fbe: 681b         	ldr	r3, [r3]
  3f2fc0: 9a05         	ldr	r2, [sp, #0x14]
  3f2fc2: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f2fc6: 9905         	ldr	r1, [sp, #0x14]
  3f2fc8: edd1 7a6b    	vldr	s15, [r1, #428]
  3f2fcc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2fd0: ed9d 6b0a    	vldr	d6, [sp, #40]
  3f2fd4: ee36 6b47    	vsub.f64	d6, d6, d7
  3f2fd8: 9905         	ldr	r1, [sp, #0x14]
  3f2fda: edd1 7a6d    	vldr	s15, [r1, #436]
  3f2fde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f2fe2: ee36 7b47    	vsub.f64	d7, d6, d7
  3f2fe6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f2fea: 4610         	mov	r0, r2
  3f2fec: ee17 1a90    	vmov	r1, s15
  3f2ff0: 4798         	blx	r3
  3f2ff2: e029         	b	0x3f3048 <SoldierView::updateStep(float)+0x4c8> @ imm = #0x52
  3f2ff4: 9b05         	ldr	r3, [sp, #0x14]
  3f2ff6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f2ffa: 681b         	ldr	r3, [r3]
  3f2ffc: 3398         	adds	r3, #0x98
  3f2ffe: 681b         	ldr	r3, [r3]
  3f3000: 9a05         	ldr	r2, [sp, #0x14]
  3f3002: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f3006: eddd 7a08    	vldr	s15, [sp, #32]
  3f300a: eeb1 7a67    	vneg.f32	s14, s15
  3f300e: 9905         	ldr	r1, [sp, #0x14]
  3f3010: edd1 7a6b    	vldr	s15, [r1, #428]
  3f3014: ee37 7a67    	vsub.f32	s14, s14, s15
  3f3018: 9905         	ldr	r1, [sp, #0x14]
  3f301a: edd1 7a6d    	vldr	s15, [r1, #436]
  3f301e: ee77 7a67    	vsub.f32	s15, s14, s15
  3f3022: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3026: 9905         	ldr	r1, [sp, #0x14]
  3f3028: edd1 7a70    	vldr	s15, [r1, #448]
  3f302c: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3f3030: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3f3034: ee25 7b07    	vmul.f64	d7, d5, d7
  3f3038: ee36 7b47    	vsub.f64	d7, d6, d7
  3f303c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3040: 4610         	mov	r0, r2
  3f3042: ee17 1a90    	vmov	r1, s15
  3f3046: 4798         	blx	r3
  3f3048: 9b05         	ldr	r3, [sp, #0x14]
  3f304a: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f304e: 681b         	ldr	r3, [r3]
  3f3050: 3398         	adds	r3, #0x98
  3f3052: 681b         	ldr	r3, [r3]
  3f3054: 9a05         	ldr	r2, [sp, #0x14]
  3f3056: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  3f305a: eddd 7a08    	vldr	s15, [sp, #32]
  3f305e: eef1 7a67    	vneg.f32	s15, s15
  3f3062: ee17 1a90    	vmov	r1, s15
  3f3066: 4610         	mov	r0, r2
  3f3068: 4798         	blx	r3
  3f306a: 9b05         	ldr	r3, [sp, #0x14]
  3f306c: ed93 7a71    	vldr	s14, [r3, #452]
  3f3070: 9b05         	ldr	r3, [sp, #0x14]
  3f3072: edd3 6a66    	vldr	s13, [r3, #408]
  3f3076: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3f307a: eec6 7aa7    	vdiv.f32	s15, s13, s15
  3f307e: ee77 7a67    	vsub.f32	s15, s14, s15
  3f3082: 9b05         	ldr	r3, [sp, #0x14]
  3f3084: edc3 7a71    	vstr	s15, [r3, #452]
  3f3088: 9b05         	ldr	r3, [sp, #0x14]
  3f308a: 2201         	movs	r2, #0x1
  3f308c: f883 21cc    	strb.w	r2, [r3, #0x1cc]
  3f3090: 9b05         	ldr	r3, [sp, #0x14]
  3f3092: edd3 7a71    	vldr	s15, [r3, #452]
  3f3096: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f309a: ed9f 7b85    	vldr	d7, [pc, #532]          @ 0x3f32b0 <SoldierView::updateStep(float)+0x730>
  3f309e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f30a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f30a6: dd0d         	ble	0x3f30c4 <SoldierView::updateStep(float)+0x544> @ imm = #0x1a
  3f30a8: 9b05         	ldr	r3, [sp, #0x14]
  3f30aa: edd3 7a71    	vldr	s15, [r3, #452]
  3f30ae: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f30b2: ed9f 7b7f    	vldr	d7, [pc, #508]          @ 0x3f32b0 <SoldierView::updateStep(float)+0x730>
  3f30b6: ee36 7b47    	vsub.f64	d7, d6, d7
  3f30ba: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f30be: 9b05         	ldr	r3, [sp, #0x14]
  3f30c0: edc3 7a71    	vstr	s15, [r3, #452]
  3f30c4: 9b05         	ldr	r3, [sp, #0x14]
  3f30c6: edd3 7a71    	vldr	s15, [r3, #452]
  3f30ca: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f30ce: ed9f 7b7a    	vldr	d7, [pc, #488]          @ 0x3f32b8 <SoldierView::updateStep(float)+0x738>
  3f30d2: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f30d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f30da: d50d         	bpl	0x3f30f8 <SoldierView::updateStep(float)+0x578> @ imm = #0x1a
  3f30dc: 9b05         	ldr	r3, [sp, #0x14]
  3f30de: edd3 7a71    	vldr	s15, [r3, #452]
  3f30e2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f30e6: ed9f 7b72    	vldr	d7, [pc, #456]          @ 0x3f32b0 <SoldierView::updateStep(float)+0x730>
  3f30ea: ee36 7b07    	vadd.f64	d7, d6, d7
  3f30ee: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f30f2: 9b05         	ldr	r3, [sp, #0x14]
  3f30f4: edc3 7a71    	vstr	s15, [r3, #452]
  3f30f8: 9b05         	ldr	r3, [sp, #0x14]
  3f30fa: f893 31cd    	ldrb.w	r3, [r3, #0x1cd]
  3f30fe: 2b00         	cmp	r3, #0x0
  3f3100: d032         	beq	0x3f3168 <SoldierView::updateStep(float)+0x5e8> @ imm = #0x64
  3f3102: 9b05         	ldr	r3, [sp, #0x14]
  3f3104: f503 72bc    	add.w	r2, r3, #0x178
  3f3108: 9b05         	ldr	r3, [sp, #0x14]
  3f310a: f503 739c    	add.w	r3, r3, #0x138
  3f310e: 4610         	mov	r0, r2
  3f3110: 4619         	mov	r1, r3
  3f3112: f19f fe1b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19fc36
  3f3116: 9b05         	ldr	r3, [sp, #0x14]
  3f3118: f503 72c0    	add.w	r2, r3, #0x180
  3f311c: 9b05         	ldr	r3, [sp, #0x14]
  3f311e: f503 73a0    	add.w	r3, r3, #0x140
  3f3122: 4610         	mov	r0, r2
  3f3124: 4619         	mov	r1, r3
  3f3126: f19f fe11    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19fc22
  3f312a: 9b05         	ldr	r3, [sp, #0x14]
  3f312c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3130: 681b         	ldr	r3, [r3]
  3f3132: 334c         	adds	r3, #0x4c
  3f3134: 681b         	ldr	r3, [r3]
  3f3136: 9a05         	ldr	r2, [sp, #0x14]
  3f3138: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f313c: 9a05         	ldr	r2, [sp, #0x14]
  3f313e: f502 72a8    	add.w	r2, r2, #0x150
  3f3142: 4608         	mov	r0, r1
  3f3144: 4611         	mov	r1, r2
  3f3146: 4798         	blx	r3
  3f3148: 9b05         	ldr	r3, [sp, #0x14]
  3f314a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f314e: 681b         	ldr	r3, [r3]
  3f3150: 334c         	adds	r3, #0x4c
  3f3152: 681b         	ldr	r3, [r3]
  3f3154: 9a05         	ldr	r2, [sp, #0x14]
  3f3156: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f315a: 9a05         	ldr	r2, [sp, #0x14]
  3f315c: f502 72a4    	add.w	r2, r2, #0x148
  3f3160: 4608         	mov	r0, r1
  3f3162: 4611         	mov	r1, r2
  3f3164: 4798         	blx	r3
  3f3166: e031         	b	0x3f31cc <SoldierView::updateStep(float)+0x64c> @ imm = #0x62
  3f3168: 9b05         	ldr	r3, [sp, #0x14]
  3f316a: f503 72bc    	add.w	r2, r3, #0x178
  3f316e: 9b05         	ldr	r3, [sp, #0x14]
  3f3170: f503 73b4    	add.w	r3, r3, #0x168
  3f3174: 4610         	mov	r0, r2
  3f3176: 4619         	mov	r1, r3
  3f3178: f19f fde8    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19fbd0
  3f317c: 9b05         	ldr	r3, [sp, #0x14]
  3f317e: f503 72c0    	add.w	r2, r3, #0x180
  3f3182: 9b05         	ldr	r3, [sp, #0x14]
  3f3184: f503 73b8    	add.w	r3, r3, #0x170
  3f3188: 4610         	mov	r0, r2
  3f318a: 4619         	mov	r1, r3
  3f318c: f19f fdde    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19fbbc
  3f3190: 9b05         	ldr	r3, [sp, #0x14]
  3f3192: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3196: 681b         	ldr	r3, [r3]
  3f3198: 334c         	adds	r3, #0x4c
  3f319a: 681b         	ldr	r3, [r3]
  3f319c: 9a05         	ldr	r2, [sp, #0x14]
  3f319e: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f31a2: 9a05         	ldr	r2, [sp, #0x14]
  3f31a4: f502 72b0    	add.w	r2, r2, #0x160
  3f31a8: 4608         	mov	r0, r1
  3f31aa: 4611         	mov	r1, r2
  3f31ac: 4798         	blx	r3
  3f31ae: 9b05         	ldr	r3, [sp, #0x14]
  3f31b0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f31b4: 681b         	ldr	r3, [r3]
  3f31b6: 334c         	adds	r3, #0x4c
  3f31b8: 681b         	ldr	r3, [r3]
  3f31ba: 9a05         	ldr	r2, [sp, #0x14]
  3f31bc: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f31c0: 9a05         	ldr	r2, [sp, #0x14]
  3f31c2: f502 72ac    	add.w	r2, r2, #0x158
  3f31c6: 4608         	mov	r0, r1
  3f31c8: 4611         	mov	r1, r2
  3f31ca: 4798         	blx	r3
  3f31cc: 9b05         	ldr	r3, [sp, #0x14]
  3f31ce: edd3 7a66    	vldr	s15, [r3, #408]
  3f31d2: eef0 7ae7    	vabs.f32	s15, s15
  3f31d6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f31da: ed9f 7b39    	vldr	d7, [pc, #228]          @ 0x3f32c0 <SoldierView::updateStep(float)+0x740>
  3f31de: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f31e2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f31e6: f140 817b    	bpl.w	0x3f34e0 <SoldierView::updateStep(float)+0x960> @ imm = #0x2f6
  3f31ea: 9b05         	ldr	r3, [sp, #0x14]
  3f31ec: f893 31cd    	ldrb.w	r3, [r3, #0x1cd]
  3f31f0: f083 0301    	eor	r3, r3, #0x1
  3f31f4: b2db         	uxtb	r3, r3
  3f31f6: 2b00         	cmp	r3, #0x0
  3f31f8: f000 8172    	beq.w	0x3f34e0 <SoldierView::updateStep(float)+0x960> @ imm = #0x2e4
  3f31fc: 9b05         	ldr	r3, [sp, #0x14]
  3f31fe: edd3 7a65    	vldr	s15, [r3, #404]
  3f3202: eeb0 7ae7    	vabs.f32	s14, s15
  3f3206: eddf 7a32    	vldr	s15, [pc, #200]         @ 0x3f32d0 <SoldierView::updateStep(float)+0x750>
  3f320a: eeb4 7ae7    	vcmpe.f32	s14, s15
  3f320e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f3212: dd5f         	ble	0x3f32d4 <SoldierView::updateStep(float)+0x754> @ imm = #0xbe
  3f3214: 9b05         	ldr	r3, [sp, #0x14]
  3f3216: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f321a: 681b         	ldr	r3, [r3]
  3f321c: 3398         	adds	r3, #0x98
  3f321e: 681c         	ldr	r4, [r3]
  3f3220: 9b05         	ldr	r3, [sp, #0x14]
  3f3222: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f3226: 9b05         	ldr	r3, [sp, #0x14]
  3f3228: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f322c: 681b         	ldr	r3, [r3]
  3f322e: 339c         	adds	r3, #0x9c
  3f3230: 681b         	ldr	r3, [r3]
  3f3232: 9a05         	ldr	r2, [sp, #0x14]
  3f3234: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f3238: 4610         	mov	r0, r2
  3f323a: 4798         	blx	r3
  3f323c: ee07 0a90    	vmov	s15, r0
  3f3240: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3244: ed9f 7b20    	vldr	d7, [pc, #128]          @ 0x3f32c8 <SoldierView::updateStep(float)+0x748>
  3f3248: ee26 6b07    	vmul.f64	d6, d6, d7
  3f324c: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  3f3250: ee36 7b47    	vsub.f64	d7, d6, d7
  3f3254: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3258: 4628         	mov	r0, r5
  3f325a: ee17 1a90    	vmov	r1, s15
  3f325e: 47a0         	blx	r4
  3f3260: 9b05         	ldr	r3, [sp, #0x14]
  3f3262: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3266: 681b         	ldr	r3, [r3]
  3f3268: 3398         	adds	r3, #0x98
  3f326a: 681c         	ldr	r4, [r3]
  3f326c: 9b05         	ldr	r3, [sp, #0x14]
  3f326e: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f3272: 9b05         	ldr	r3, [sp, #0x14]
  3f3274: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3278: 681b         	ldr	r3, [r3]
  3f327a: 339c         	adds	r3, #0x9c
  3f327c: 681b         	ldr	r3, [r3]
  3f327e: 9a05         	ldr	r2, [sp, #0x14]
  3f3280: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3f3284: 4610         	mov	r0, r2
  3f3286: 4798         	blx	r3
  3f3288: ee07 0a90    	vmov	s15, r0
  3f328c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3290: ed9f 7b0d    	vldr	d7, [pc, #52]           @ 0x3f32c8 <SoldierView::updateStep(float)+0x748>
  3f3294: ee26 6b07    	vmul.f64	d6, d6, d7
  3f3298: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  3f329c: ee36 7b07    	vadd.f64	d7, d6, d7
  3f32a0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f32a4: 4628         	mov	r0, r5
  3f32a6: ee17 1a90    	vmov	r1, s15
  3f32aa: 47a0         	blx	r4
  3f32ac: e05e         	b	0x3f336c <SoldierView::updateStep(float)+0x7ec> @ imm = #0xbc
  3f32ae: bf00         	nop
  3f32b0: 851f         	strh	r7, [r3, #0x28]
  3f32b2: 51eb         	str	r3, [r5, r7]
  3f32b4: 1eb8         	subs	r0, r7, #0x2
  3f32b6: 4019         	ands	r1, r3
  3f32b8: 851f         	strh	r7, [r3, #0x28]
  3f32ba: 51eb         	str	r3, [r5, r7]
  3f32bc: 1eb8         	subs	r0, r7, #0x2
  3f32be: c019         	stm	r0!, {r0, r3, r4}
  3f32c0: 147b         	asrs	r3, r7, #0x11
  3f32c2: 47ae         	<unknown>
  3f32c4: 7ae1         	ldrb	r1, [r4, #0xb]
  3f32c6: 3f84         	subs	r7, #0x84
  3f32c8: 999a         	ldr	r1, [sp, #0x268]
  3f32ca: 9999         	ldr	r1, [sp, #0x264]
  3f32cc: 9999         	ldr	r1, [sp, #0x264]
  3f32ce: 3fe9         	subs	r7, #0xe9
  3f32d0: 0000         	movs	r0, r0
  3f32d2: 4248         	rsbs	r0, r1, #0
  3f32d4: 9b05         	ldr	r3, [sp, #0x14]
  3f32d6: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f32da: 681b         	ldr	r3, [r3]
  3f32dc: 3398         	adds	r3, #0x98
  3f32de: 681c         	ldr	r4, [r3]
  3f32e0: 9b05         	ldr	r3, [sp, #0x14]
  3f32e2: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f32e6: 9b05         	ldr	r3, [sp, #0x14]
  3f32e8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f32ec: 681b         	ldr	r3, [r3]
  3f32ee: 339c         	adds	r3, #0x9c
  3f32f0: 681b         	ldr	r3, [r3]
  3f32f2: 9a05         	ldr	r2, [sp, #0x14]
  3f32f4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f32f8: 4610         	mov	r0, r2
  3f32fa: 4798         	blx	r3
  3f32fc: ee07 0a90    	vmov	s15, r0
  3f3300: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3304: ed9f 7b6c    	vldr	d7, [pc, #432]          @ 0x3f34b8 <SoldierView::updateStep(float)+0x938>
  3f3308: ee26 6b07    	vmul.f64	d6, d6, d7
  3f330c: eeb0 7b00    	vmov.f64	d7, #2.000000e+00
  3f3310: ee36 7b47    	vsub.f64	d7, d6, d7
  3f3314: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3318: 4628         	mov	r0, r5
  3f331a: ee17 1a90    	vmov	r1, s15
  3f331e: 47a0         	blx	r4
  3f3320: 9b05         	ldr	r3, [sp, #0x14]
  3f3322: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3326: 681b         	ldr	r3, [r3]
  3f3328: 3398         	adds	r3, #0x98
  3f332a: 681c         	ldr	r4, [r3]
  3f332c: 9b05         	ldr	r3, [sp, #0x14]
  3f332e: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f3332: 9b05         	ldr	r3, [sp, #0x14]
  3f3334: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3338: 681b         	ldr	r3, [r3]
  3f333a: 339c         	adds	r3, #0x9c
  3f333c: 681b         	ldr	r3, [r3]
  3f333e: 9a05         	ldr	r2, [sp, #0x14]
  3f3340: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3f3344: 4610         	mov	r0, r2
  3f3346: 4798         	blx	r3
  3f3348: ee07 0a90    	vmov	s15, r0
  3f334c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3350: ed9f 7b59    	vldr	d7, [pc, #356]          @ 0x3f34b8 <SoldierView::updateStep(float)+0x938>
  3f3354: ee26 6b07    	vmul.f64	d6, d6, d7
  3f3358: eeb0 7b00    	vmov.f64	d7, #2.000000e+00
  3f335c: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3360: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3364: 4628         	mov	r0, r5
  3f3366: ee17 1a90    	vmov	r1, s15
  3f336a: 47a0         	blx	r4
  3f336c: 9b05         	ldr	r3, [sp, #0x14]
  3f336e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f3372: 681b         	ldr	r3, [r3]
  3f3374: 334c         	adds	r3, #0x4c
  3f3376: 681c         	ldr	r4, [r3]
  3f3378: 9b05         	ldr	r3, [sp, #0x14]
  3f337a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f337e: 9b05         	ldr	r3, [sp, #0x14]
  3f3380: f8d3 6130    	ldr.w	r6, [r3, #0x130]
  3f3384: 9b05         	ldr	r3, [sp, #0x14]
  3f3386: edd3 7a4d    	vldr	s15, [r3, #308]
  3f338a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f338e: ed9f 7b4c    	vldr	d7, [pc, #304]          @ 0x3f34c0 <SoldierView::updateStep(float)+0x940>
  3f3392: ee26 8b07    	vmul.f64	d8, d6, d7
  3f3396: 9b05         	ldr	r3, [sp, #0x14]
  3f3398: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f339c: 681b         	ldr	r3, [r3]
  3f339e: 3350         	adds	r3, #0x50
  3f33a0: 681b         	ldr	r3, [r3]
  3f33a2: 9a05         	ldr	r2, [sp, #0x14]
  3f33a4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3f33a8: 4610         	mov	r0, r2
  3f33aa: 4798         	blx	r3
  3f33ac: 4603         	mov	r3, r0
  3f33ae: edd3 7a01    	vldr	s15, [r3, #4]
  3f33b2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f33b6: ed9f 7b40    	vldr	d7, [pc, #256]          @ 0x3f34b8 <SoldierView::updateStep(float)+0x938>
  3f33ba: ee26 7b07    	vmul.f64	d7, d6, d7
  3f33be: ee38 7b07    	vadd.f64	d7, d8, d7
  3f33c2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f33c6: ab2a         	add	r3, sp, #0xa8
  3f33c8: 4618         	mov	r0, r3
  3f33ca: 4631         	mov	r1, r6
  3f33cc: ee17 2a90    	vmov	r2, s15
  3f33d0: f19f fc8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f91c
  3f33d4: ab2a         	add	r3, sp, #0xa8
  3f33d6: 4628         	mov	r0, r5
  3f33d8: 4619         	mov	r1, r3
  3f33da: 47a0         	blx	r4
  3f33dc: 9b05         	ldr	r3, [sp, #0x14]
  3f33de: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f33e2: 681b         	ldr	r3, [r3]
  3f33e4: 334c         	adds	r3, #0x4c
  3f33e6: 681c         	ldr	r4, [r3]
  3f33e8: 9b05         	ldr	r3, [sp, #0x14]
  3f33ea: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f33ee: 9b05         	ldr	r3, [sp, #0x14]
  3f33f0: f8d3 6128    	ldr.w	r6, [r3, #0x128]
  3f33f4: 9b05         	ldr	r3, [sp, #0x14]
  3f33f6: edd3 7a4b    	vldr	s15, [r3, #300]
  3f33fa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f33fe: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x3f34c0 <SoldierView::updateStep(float)+0x940>
  3f3402: ee26 8b07    	vmul.f64	d8, d6, d7
  3f3406: 9b05         	ldr	r3, [sp, #0x14]
  3f3408: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f340c: 681b         	ldr	r3, [r3]
  3f340e: 3350         	adds	r3, #0x50
  3f3410: 681b         	ldr	r3, [r3]
  3f3412: 9a05         	ldr	r2, [sp, #0x14]
  3f3414: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  3f3418: 4610         	mov	r0, r2
  3f341a: 4798         	blx	r3
  3f341c: 4603         	mov	r3, r0
  3f341e: edd3 7a01    	vldr	s15, [r3, #4]
  3f3422: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3426: ed9f 7b24    	vldr	d7, [pc, #144]          @ 0x3f34b8 <SoldierView::updateStep(float)+0x938>
  3f342a: ee26 7b07    	vmul.f64	d7, d6, d7
  3f342e: ee38 7b07    	vadd.f64	d7, d8, d7
  3f3432: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3436: ab2a         	add	r3, sp, #0xa8
  3f3438: 4618         	mov	r0, r3
  3f343a: 4631         	mov	r1, r6
  3f343c: ee17 2a90    	vmov	r2, s15
  3f3440: f19f fc56    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f8ac
  3f3444: ab2a         	add	r3, sp, #0xa8
  3f3446: 4628         	mov	r0, r5
  3f3448: 4619         	mov	r1, r3
  3f344a: 47a0         	blx	r4
  3f344c: 9b05         	ldr	r3, [sp, #0x14]
  3f344e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f3452: 681b         	ldr	r3, [r3]
  3f3454: 334c         	adds	r3, #0x4c
  3f3456: 681b         	ldr	r3, [r3]
  3f3458: 9a05         	ldr	r2, [sp, #0x14]
  3f345a: f8d2 1120    	ldr.w	r1, [r2, #0x120]
  3f345e: 9a05         	ldr	r2, [sp, #0x14]
  3f3460: f502 72bc    	add.w	r2, r2, #0x178
  3f3464: 4608         	mov	r0, r1
  3f3466: 4611         	mov	r1, r2
  3f3468: 4798         	blx	r3
  3f346a: 9b05         	ldr	r3, [sp, #0x14]
  3f346c: f893 31e3    	ldrb.w	r3, [r3, #0x1e3]
  3f3470: f083 0301    	eor	r3, r3, #0x1
  3f3474: b2db         	uxtb	r3, r3
  3f3476: 2b00         	cmp	r3, #0x0
  3f3478: d01d         	beq	0x3f34b6 <SoldierView::updateStep(float)+0x936> @ imm = #0x3a
  3f347a: 9b05         	ldr	r3, [sp, #0x14]
  3f347c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3480: 681b         	ldr	r3, [r3]
  3f3482: 3398         	adds	r3, #0x98
  3f3484: 681b         	ldr	r3, [r3]
  3f3486: 9a05         	ldr	r2, [sp, #0x14]
  3f3488: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f348c: 4610         	mov	r0, r2
  3f348e: f04f 0100    	mov.w	r1, #0x0
  3f3492: f2c4 21b4    	movt	r1, #0x42b4
  3f3496: 4798         	blx	r3
  3f3498: 9b05         	ldr	r3, [sp, #0x14]
  3f349a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f349e: 681b         	ldr	r3, [r3]
  3f34a0: 3398         	adds	r3, #0x98
  3f34a2: 681b         	ldr	r3, [r3]
  3f34a4: 9a05         	ldr	r2, [sp, #0x14]
  3f34a6: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  3f34aa: 4610         	mov	r0, r2
  3f34ac: f04f 0100    	mov.w	r1, #0x0
  3f34b0: f2c4 21b4    	movt	r1, #0x42b4
  3f34b4: 4798         	blx	r3
  3f34b6: e20c         	b	0x3f38d2 <SoldierView::updateStep(float)+0xd52> @ imm = #0x418
  3f34b8: 999a         	ldr	r1, [sp, #0x268]
  3f34ba: 9999         	ldr	r1, [sp, #0x264]
  3f34bc: 9999         	ldr	r1, [sp, #0x264]
  3f34be: 3fe9         	subs	r7, #0xe9
  3f34c0: 999a         	ldr	r1, [sp, #0x268]
  3f34c2: 9999         	ldr	r1, [sp, #0x264]
  3f34c4: 9999         	ldr	r1, [sp, #0x264]
  3f34c6: 3fc9         	subs	r7, #0xc9
  3f34c8: 851f         	strh	r7, [r3, #0x28]
  3f34ca: 51eb         	str	r3, [r5, r7]
  3f34cc: 1eb8         	subs	r0, r7, #0x2
  3f34ce: 4009         	ands	r1, r1
  3f34d0: 0000         	movs	r0, r0
  3f34d2: 0000         	movs	r0, r0
  3f34d4: 4000         	ands	r0, r0
  3f34d6: 405a         	eors	r2, r3
  3f34d8: 851f         	strh	r7, [r3, #0x28]
  3f34da: 51eb         	str	r3, [r5, r7]
  3f34dc: 1eb8         	subs	r0, r7, #0x2
  3f34de: 3ff9         	subs	r7, #0xf9
  3f34e0: 9b05         	ldr	r3, [sp, #0x14]
  3f34e2: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f34e6: 681b         	ldr	r3, [r3]
  3f34e8: 3398         	adds	r3, #0x98
  3f34ea: 681c         	ldr	r4, [r3]
  3f34ec: 9b05         	ldr	r3, [sp, #0x14]
  3f34ee: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f34f2: 9b05         	ldr	r3, [sp, #0x14]
  3f34f4: edd3 7a71    	vldr	s15, [r3, #452]
  3f34f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f34fc: ec51 0b17    	vmov	r0, r1, d7
  3f3500: f6e2 ed08    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d5f0
  3f3504: ec41 0b16    	vmov	d6, r0, r1
  3f3508: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3f350c: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3510: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3514: 4628         	mov	r0, r5
  3f3516: ee17 1a90    	vmov	r1, s15
  3f351a: 47a0         	blx	r4
  3f351c: 9b05         	ldr	r3, [sp, #0x14]
  3f351e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3522: 681b         	ldr	r3, [r3]
  3f3524: 3398         	adds	r3, #0x98
  3f3526: 681c         	ldr	r4, [r3]
  3f3528: 9b05         	ldr	r3, [sp, #0x14]
  3f352a: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f352e: 9b05         	ldr	r3, [sp, #0x14]
  3f3530: edd3 7a71    	vldr	s15, [r3, #452]
  3f3534: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3538: ed1f 7b1d    	vldr	d7, [pc, #-116]         @ 0x3f34c8 <SoldierView::updateStep(float)+0x948>
  3f353c: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3540: ec51 0b17    	vmov	r0, r1, d7
  3f3544: f6e2 ece6    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d634
  3f3548: ec41 0b16    	vmov	d6, r0, r1
  3f354c: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3f3550: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3554: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3558: 4628         	mov	r0, r5
  3f355a: ee17 1a90    	vmov	r1, s15
  3f355e: 47a0         	blx	r4
  3f3560: 9b05         	ldr	r3, [sp, #0x14]
  3f3562: f893 31cd    	ldrb.w	r3, [r3, #0x1cd]
  3f3566: 2b00         	cmp	r3, #0x0
  3f3568: f000 80c1    	beq.w	0x3f36ee <SoldierView::updateStep(float)+0xb6e> @ imm = #0x182
  3f356c: 9b05         	ldr	r3, [sp, #0x14]
  3f356e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f3572: 681b         	ldr	r3, [r3]
  3f3574: 334c         	adds	r3, #0x4c
  3f3576: 681c         	ldr	r4, [r3]
  3f3578: 9b05         	ldr	r3, [sp, #0x14]
  3f357a: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f357e: 9b05         	ldr	r3, [sp, #0x14]
  3f3580: edd3 7a4c    	vldr	s15, [r3, #304]
  3f3584: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f3588: 9b05         	ldr	r3, [sp, #0x14]
  3f358a: edd3 7a71    	vldr	s15, [r3, #452]
  3f358e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3592: ed1f 7b2f    	vldr	d7, [pc, #-188]         @ 0x3f34d8 <SoldierView::updateStep(float)+0x958>
  3f3596: ee36 7b07    	vadd.f64	d7, d6, d7
  3f359a: ec51 0b17    	vmov	r0, r1, d7
  3f359e: f6e2 ecba    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d68c
  3f35a2: ec41 0b16    	vmov	d6, r0, r1
  3f35a6: eeb1 7b0c    	vmov.f64	d7, #7.000000e+00
  3f35aa: ee26 7b07    	vmul.f64	d7, d6, d7
  3f35ae: ee38 6b07    	vadd.f64	d6, d8, d7
  3f35b2: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  3f35b6: ee36 7b07    	vadd.f64	d7, d6, d7
  3f35ba: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f35be: 9b05         	ldr	r3, [sp, #0x14]
  3f35c0: ed93 7a4d    	vldr	s14, [r3, #308]
  3f35c4: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3f35c8: ee77 7a67    	vsub.f32	s15, s14, s15
  3f35cc: ab2a         	add	r3, sp, #0xa8
  3f35ce: 4618         	mov	r0, r3
  3f35d0: ee16 1a90    	vmov	r1, s13
  3f35d4: ee17 2a90    	vmov	r2, s15
  3f35d8: f19f fb8a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f714
  3f35dc: ab2a         	add	r3, sp, #0xa8
  3f35de: 4628         	mov	r0, r5
  3f35e0: 4619         	mov	r1, r3
  3f35e2: 47a0         	blx	r4
  3f35e4: 9b05         	ldr	r3, [sp, #0x14]
  3f35e6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f35ea: 681b         	ldr	r3, [r3]
  3f35ec: 334c         	adds	r3, #0x4c
  3f35ee: 681c         	ldr	r4, [r3]
  3f35f0: 9b05         	ldr	r3, [sp, #0x14]
  3f35f2: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f35f6: 9b05         	ldr	r3, [sp, #0x14]
  3f35f8: edd3 7a4a    	vldr	s15, [r3, #296]
  3f35fc: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f3600: 9b05         	ldr	r3, [sp, #0x14]
  3f3602: edd3 7a71    	vldr	s15, [r3, #452]
  3f3606: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f360a: ed1f 7b4d    	vldr	d7, [pc, #-308]         @ 0x3f34d8 <SoldierView::updateStep(float)+0x958>
  3f360e: ee36 7b47    	vsub.f64	d7, d6, d7
  3f3612: ec51 0b17    	vmov	r0, r1, d7
  3f3616: f6e2 ec7e    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d704
  3f361a: ec41 0b16    	vmov	d6, r0, r1
  3f361e: eeb1 7b0c    	vmov.f64	d7, #7.000000e+00
  3f3622: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3626: ee38 6b07    	vadd.f64	d6, d8, d7
  3f362a: eeb2 7b08    	vmov.f64	d7, #1.200000e+01
  3f362e: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3632: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f3636: 9b05         	ldr	r3, [sp, #0x14]
  3f3638: ed93 7a4b    	vldr	s14, [r3, #300]
  3f363c: eef3 7a06    	vmov.f32	s15, #2.200000e+01
  3f3640: ee77 7a67    	vsub.f32	s15, s14, s15
  3f3644: ab2a         	add	r3, sp, #0xa8
  3f3646: 4618         	mov	r0, r3
  3f3648: ee16 1a90    	vmov	r1, s13
  3f364c: ee17 2a90    	vmov	r2, s15
  3f3650: f19f fb4e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f69c
  3f3654: ab2a         	add	r3, sp, #0xa8
  3f3656: 4628         	mov	r0, r5
  3f3658: 4619         	mov	r1, r3
  3f365a: 47a0         	blx	r4
  3f365c: 9b05         	ldr	r3, [sp, #0x14]
  3f365e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f3662: 681b         	ldr	r3, [r3]
  3f3664: 3398         	adds	r3, #0x98
  3f3666: 681c         	ldr	r4, [r3]
  3f3668: 9b05         	ldr	r3, [sp, #0x14]
  3f366a: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f366e: 9b05         	ldr	r3, [sp, #0x14]
  3f3670: edd3 7a71    	vldr	s15, [r3, #452]
  3f3674: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3678: ed1f 7b6d    	vldr	d7, [pc, #-436]         @ 0x3f34c8 <SoldierView::updateStep(float)+0x948>
  3f367c: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3680: ec51 0b17    	vmov	r0, r1, d7
  3f3684: f6e2 ec46    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d774
  3f3688: ec41 0b16    	vmov	d6, r0, r1
  3f368c: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  3f3690: ee26 6b07    	vmul.f64	d6, d6, d7
  3f3694: ed1f 7b72    	vldr	d7, [pc, #-456]         @ 0x3f34d0 <SoldierView::updateStep(float)+0x950>
  3f3698: ee36 7b07    	vadd.f64	d7, d6, d7
  3f369c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f36a0: 4628         	mov	r0, r5
  3f36a2: ee17 1a90    	vmov	r1, s15
  3f36a6: 47a0         	blx	r4
  3f36a8: 9b05         	ldr	r3, [sp, #0x14]
  3f36aa: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f36ae: 681b         	ldr	r3, [r3]
  3f36b0: 3398         	adds	r3, #0x98
  3f36b2: 681c         	ldr	r4, [r3]
  3f36b4: 9b05         	ldr	r3, [sp, #0x14]
  3f36b6: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f36ba: 9b05         	ldr	r3, [sp, #0x14]
  3f36bc: edd3 7a71    	vldr	s15, [r3, #452]
  3f36c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f36c4: ec51 0b17    	vmov	r0, r1, d7
  3f36c8: f6e2 ec24    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d7b8
  3f36cc: ec41 0b16    	vmov	d6, r0, r1
  3f36d0: eeb1 7b04    	vmov.f64	d7, #5.000000e+00
  3f36d4: ee26 6b07    	vmul.f64	d6, d6, d7
  3f36d8: ed1f 7b83    	vldr	d7, [pc, #-524]         @ 0x3f34d0 <SoldierView::updateStep(float)+0x950>
  3f36dc: ee36 7b07    	vadd.f64	d7, d6, d7
  3f36e0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f36e4: 4628         	mov	r0, r5
  3f36e6: ee17 1a90    	vmov	r1, s15
  3f36ea: 47a0         	blx	r4
  3f36ec: e065         	b	0x3f37ba <SoldierView::updateStep(float)+0xc3a> @ imm = #0xca
  3f36ee: 9b05         	ldr	r3, [sp, #0x14]
  3f36f0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f36f4: 681b         	ldr	r3, [r3]
  3f36f6: 334c         	adds	r3, #0x4c
  3f36f8: 681c         	ldr	r4, [r3]
  3f36fa: 9b05         	ldr	r3, [sp, #0x14]
  3f36fc: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3f3700: 9b05         	ldr	r3, [sp, #0x14]
  3f3702: f8d3 6130    	ldr.w	r6, [r3, #0x130]
  3f3706: 9b05         	ldr	r3, [sp, #0x14]
  3f3708: edd3 7a4d    	vldr	s15, [r3, #308]
  3f370c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f3710: 9b05         	ldr	r3, [sp, #0x14]
  3f3712: edd3 7a71    	vldr	s15, [r3, #452]
  3f3716: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f371a: ed1f 7b91    	vldr	d7, [pc, #-580]         @ 0x3f34d8 <SoldierView::updateStep(float)+0x958>
  3f371e: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3722: ec51 0b17    	vmov	r0, r1, d7
  3f3726: f6e2 ebf6    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d814
  3f372a: ec41 0b16    	vmov	d6, r0, r1
  3f372e: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  3f3732: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3736: ee38 7b07    	vadd.f64	d7, d8, d7
  3f373a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f373e: ab2a         	add	r3, sp, #0xa8
  3f3740: 4618         	mov	r0, r3
  3f3742: 4631         	mov	r1, r6
  3f3744: ee17 2a90    	vmov	r2, s15
  3f3748: f19f fad2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f5a4
  3f374c: ab2a         	add	r3, sp, #0xa8
  3f374e: 4628         	mov	r0, r5
  3f3750: 4619         	mov	r1, r3
  3f3752: 47a0         	blx	r4
  3f3754: 9b05         	ldr	r3, [sp, #0x14]
  3f3756: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f375a: 681b         	ldr	r3, [r3]
  3f375c: 334c         	adds	r3, #0x4c
  3f375e: 681c         	ldr	r4, [r3]
  3f3760: 9b05         	ldr	r3, [sp, #0x14]
  3f3762: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  3f3766: 9b05         	ldr	r3, [sp, #0x14]
  3f3768: f8d3 6128    	ldr.w	r6, [r3, #0x128]
  3f376c: 9b05         	ldr	r3, [sp, #0x14]
  3f376e: edd3 7a4b    	vldr	s15, [r3, #300]
  3f3772: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f3776: 9b05         	ldr	r3, [sp, #0x14]
  3f3778: edd3 7a71    	vldr	s15, [r3, #452]
  3f377c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3780: ed1f 7bab    	vldr	d7, [pc, #-684]         @ 0x3f34d8 <SoldierView::updateStep(float)+0x958>
  3f3784: ee36 7b47    	vsub.f64	d7, d6, d7
  3f3788: ec51 0b17    	vmov	r0, r1, d7
  3f378c: f6e2 ebc2    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d87c
  3f3790: ec41 0b16    	vmov	d6, r0, r1
  3f3794: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  3f3798: ee26 7b07    	vmul.f64	d7, d6, d7
  3f379c: ee38 7b07    	vadd.f64	d7, d8, d7
  3f37a0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f37a4: ab2a         	add	r3, sp, #0xa8
  3f37a6: 4618         	mov	r0, r3
  3f37a8: 4631         	mov	r1, r6
  3f37aa: ee17 2a90    	vmov	r2, s15
  3f37ae: f19f fa9f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f53e
  3f37b2: ab2a         	add	r3, sp, #0xa8
  3f37b4: 4628         	mov	r0, r5
  3f37b6: 4619         	mov	r1, r3
  3f37b8: 47a0         	blx	r4
  3f37ba: 9b05         	ldr	r3, [sp, #0x14]
  3f37bc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f37c0: 681b         	ldr	r3, [r3]
  3f37c2: 334c         	adds	r3, #0x4c
  3f37c4: 681c         	ldr	r4, [r3]
  3f37c6: 9b05         	ldr	r3, [sp, #0x14]
  3f37c8: f8d3 5120    	ldr.w	r5, [r3, #0x120]
  3f37cc: 9b05         	ldr	r3, [sp, #0x14]
  3f37ce: edd3 7a69    	vldr	s15, [r3, #420]
  3f37d2: eef5 7a40    	vcmp.f32	s15, #0
  3f37d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f37da: d008         	beq	0x3f37ee <SoldierView::updateStep(float)+0xc6e> @ imm = #0x10
  3f37dc: 9b05         	ldr	r3, [sp, #0x14]
  3f37de: f503 73bc    	add.w	r3, r3, #0x178
  3f37e2: aa2a         	add	r2, sp, #0xa8
  3f37e4: 4610         	mov	r0, r2
  3f37e6: 4619         	mov	r1, r3
  3f37e8: f19f fa90    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x19f520
  3f37ec: e01d         	b	0x3f382a <SoldierView::updateStep(float)+0xcaa> @ imm = #0x3a
  3f37ee: 9b05         	ldr	r3, [sp, #0x14]
  3f37f0: f8d3 6178    	ldr.w	r6, [r3, #0x178]
  3f37f4: 9b05         	ldr	r3, [sp, #0x14]
  3f37f6: edd3 7a5f    	vldr	s15, [r3, #380]
  3f37fa: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f37fe: 9b05         	ldr	r3, [sp, #0x14]
  3f3800: edd3 7a71    	vldr	s15, [r3, #452]
  3f3804: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f3808: ec51 0b17    	vmov	r0, r1, d7
  3f380c: f6e2 eb82    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d8fc
  3f3810: ec41 0b17    	vmov	d7, r0, r1
  3f3814: ee38 7b07    	vadd.f64	d7, d8, d7
  3f3818: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f381c: ab2a         	add	r3, sp, #0xa8
  3f381e: 4618         	mov	r0, r3
  3f3820: 4631         	mov	r1, r6
  3f3822: ee17 2a90    	vmov	r2, s15
  3f3826: f19f fa63    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f4c6
  3f382a: ab2a         	add	r3, sp, #0xa8
  3f382c: 4628         	mov	r0, r5
  3f382e: 4619         	mov	r1, r3
  3f3830: 47a0         	blx	r4
  3f3832: 9b05         	ldr	r3, [sp, #0x14]
  3f3834: f893 31e3    	ldrb.w	r3, [r3, #0x1e3]
  3f3838: f083 0301    	eor	r3, r3, #0x1
  3f383c: b2db         	uxtb	r3, r3
  3f383e: 2b00         	cmp	r3, #0x0
  3f3840: d047         	beq	0x3f38d2 <SoldierView::updateStep(float)+0xd52> @ imm = #0x8e
  3f3842: 9b05         	ldr	r3, [sp, #0x14]
  3f3844: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3848: 681b         	ldr	r3, [r3]
  3f384a: 3398         	adds	r3, #0x98
  3f384c: 681c         	ldr	r4, [r3]
  3f384e: 9b05         	ldr	r3, [sp, #0x14]
  3f3850: f8d3 5114    	ldr.w	r5, [r3, #0x114]
  3f3854: 9b05         	ldr	r3, [sp, #0x14]
  3f3856: edd3 7a71    	vldr	s15, [r3, #452]
  3f385a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f385e: ed9f 7bc0    	vldr	d7, [pc, #768]          @ 0x3f3b60 <SoldierView::updateStep(float)+0xfe0>
  3f3862: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3866: ec51 0b17    	vmov	r0, r1, d7
  3f386a: f6e2 eb54    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d958
  3f386e: ec41 0b16    	vmov	d6, r0, r1
  3f3872: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3f3876: ee26 6b07    	vmul.f64	d6, d6, d7
  3f387a: ed9f 7bbb    	vldr	d7, [pc, #748]          @ 0x3f3b68 <SoldierView::updateStep(float)+0xfe8>
  3f387e: ee36 7b07    	vadd.f64	d7, d6, d7
  3f3882: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3886: 4628         	mov	r0, r5
  3f3888: ee17 1a90    	vmov	r1, s15
  3f388c: 47a0         	blx	r4
  3f388e: 9b05         	ldr	r3, [sp, #0x14]
  3f3890: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f3894: 681b         	ldr	r3, [r3]
  3f3896: 3398         	adds	r3, #0x98
  3f3898: 681c         	ldr	r4, [r3]
  3f389a: 9b05         	ldr	r3, [sp, #0x14]
  3f389c: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3f38a0: 9b05         	ldr	r3, [sp, #0x14]
  3f38a2: edd3 7a71    	vldr	s15, [r3, #452]
  3f38a6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f38aa: ec51 0b17    	vmov	r0, r1, d7
  3f38ae: f6e2 eb32    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11d99c
  3f38b2: ec41 0b16    	vmov	d6, r0, r1
  3f38b6: eeb3 7b04    	vmov.f64	d7, #2.000000e+01
  3f38ba: ee26 6b07    	vmul.f64	d6, d6, d7
  3f38be: ed9f 7baa    	vldr	d7, [pc, #680]          @ 0x3f3b68 <SoldierView::updateStep(float)+0xfe8>
  3f38c2: ee36 7b07    	vadd.f64	d7, d6, d7
  3f38c6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f38ca: 4628         	mov	r0, r5
  3f38cc: ee17 1a90    	vmov	r1, s15
  3f38d0: 47a0         	blx	r4
  3f38d2: 9b05         	ldr	r3, [sp, #0x14]
  3f38d4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f38d8: 681b         	ldr	r3, [r3]
  3f38da: 334c         	adds	r3, #0x4c
  3f38dc: 681b         	ldr	r3, [r3]
  3f38de: 9a05         	ldr	r2, [sp, #0x14]
  3f38e0: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f38e4: 9a05         	ldr	r2, [sp, #0x14]
  3f38e6: f502 72c0    	add.w	r2, r2, #0x180
  3f38ea: 4608         	mov	r0, r1
  3f38ec: 4611         	mov	r1, r2
  3f38ee: 4798         	blx	r3
  3f38f0: 9b05         	ldr	r3, [sp, #0x14]
  3f38f2: f893 31d5    	ldrb.w	r3, [r3, #0x1d5]
  3f38f6: f083 0301    	eor	r3, r3, #0x1
  3f38fa: b2db         	uxtb	r3, r3
  3f38fc: 2b00         	cmp	r3, #0x0
  3f38fe: d01e         	beq	0x3f393e <SoldierView::updateStep(float)+0xdbe> @ imm = #0x3c
  3f3900: 9b05         	ldr	r3, [sp, #0x14]
  3f3902: edd3 7a6f    	vldr	s15, [r3, #444]
  3f3906: eef0 7ae7    	vabs.f32	s15, s15
  3f390a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f390e: ed9f 7b98    	vldr	d7, [pc, #608]          @ 0x3f3b70 <SoldierView::updateStep(float)+0xff0>
  3f3912: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f3916: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f391a: dd0b         	ble	0x3f3934 <SoldierView::updateStep(float)+0xdb4> @ imm = #0x16
  3f391c: 9b05         	ldr	r3, [sp, #0x14]
  3f391e: edd3 7a6f    	vldr	s15, [r3, #444]
  3f3922: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3926: ed9f 7b94    	vldr	d7, [pc, #592]          @ 0x3f3b78 <SoldierView::updateStep(float)+0xff8>
  3f392a: ee26 7b07    	vmul.f64	d7, d6, d7
  3f392e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3932: e001         	b	0x3f3938 <SoldierView::updateStep(float)+0xdb8> @ imm = #0x2
  3f3934: eddf 7a94    	vldr	s15, [pc, #592]         @ 0x3f3b88 <SoldierView::updateStep(float)+0x1008>
  3f3938: 9b05         	ldr	r3, [sp, #0x14]
  3f393a: edc3 7a6f    	vstr	s15, [r3, #444]
  3f393e: 9b05         	ldr	r3, [sp, #0x14]
  3f3940: edd3 7a6a    	vldr	s15, [r3, #424]
  3f3944: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3948: ed9f 7b89    	vldr	d7, [pc, #548]          @ 0x3f3b70 <SoldierView::updateStep(float)+0xff0>
  3f394c: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f3950: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f3954: dd0b         	ble	0x3f396e <SoldierView::updateStep(float)+0xdee> @ imm = #0x16
  3f3956: 9b05         	ldr	r3, [sp, #0x14]
  3f3958: edd3 7a6a    	vldr	s15, [r3, #424]
  3f395c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3960: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3f3964: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3968: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f396c: e001         	b	0x3f3972 <SoldierView::updateStep(float)+0xdf2> @ imm = #0x2
  3f396e: eddf 7a86    	vldr	s15, [pc, #536]         @ 0x3f3b88 <SoldierView::updateStep(float)+0x1008>
  3f3972: 9b05         	ldr	r3, [sp, #0x14]
  3f3974: edc3 7a6a    	vstr	s15, [r3, #424]
  3f3978: 9b05         	ldr	r3, [sp, #0x14]
  3f397a: edd3 7a6b    	vldr	s15, [r3, #428]
  3f397e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3982: ed9f 7b7b    	vldr	d7, [pc, #492]          @ 0x3f3b70 <SoldierView::updateStep(float)+0xff0>
  3f3986: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f398a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f398e: dd0b         	ble	0x3f39a8 <SoldierView::updateStep(float)+0xe28> @ imm = #0x16
  3f3990: 9b05         	ldr	r3, [sp, #0x14]
  3f3992: edd3 7a6b    	vldr	s15, [r3, #428]
  3f3996: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f399a: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3f399e: ee26 7b07    	vmul.f64	d7, d6, d7
  3f39a2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f39a6: e001         	b	0x3f39ac <SoldierView::updateStep(float)+0xe2c> @ imm = #0x2
  3f39a8: eddf 7a77    	vldr	s15, [pc, #476]         @ 0x3f3b88 <SoldierView::updateStep(float)+0x1008>
  3f39ac: 9b05         	ldr	r3, [sp, #0x14]
  3f39ae: edc3 7a6b    	vstr	s15, [r3, #428]
  3f39b2: 9b05         	ldr	r3, [sp, #0x14]
  3f39b4: edd3 7a6c    	vldr	s15, [r3, #432]
  3f39b8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f39bc: ed9f 7b6c    	vldr	d7, [pc, #432]          @ 0x3f3b70 <SoldierView::updateStep(float)+0xff0>
  3f39c0: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f39c4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f39c8: dd0b         	ble	0x3f39e2 <SoldierView::updateStep(float)+0xe62> @ imm = #0x16
  3f39ca: 9b05         	ldr	r3, [sp, #0x14]
  3f39cc: edd3 7a6c    	vldr	s15, [r3, #432]
  3f39d0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f39d4: ed9f 7b6a    	vldr	d7, [pc, #424]          @ 0x3f3b80 <SoldierView::updateStep(float)+0x1000>
  3f39d8: ee26 7b07    	vmul.f64	d7, d6, d7
  3f39dc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f39e0: e001         	b	0x3f39e6 <SoldierView::updateStep(float)+0xe66> @ imm = #0x2
  3f39e2: eddf 7a69    	vldr	s15, [pc, #420]         @ 0x3f3b88 <SoldierView::updateStep(float)+0x1008>
  3f39e6: 9b05         	ldr	r3, [sp, #0x14]
  3f39e8: edc3 7a6c    	vstr	s15, [r3, #432]
  3f39ec: 9b05         	ldr	r3, [sp, #0x14]
  3f39ee: edd3 7a6d    	vldr	s15, [r3, #436]
  3f39f2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f39f6: ed9f 7b5e    	vldr	d7, [pc, #376]          @ 0x3f3b70 <SoldierView::updateStep(float)+0xff0>
  3f39fa: eeb4 6bc7    	vcmpe.f64	d6, d7
  3f39fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f3a02: dd0b         	ble	0x3f3a1c <SoldierView::updateStep(float)+0xe9c> @ imm = #0x16
  3f3a04: 9b05         	ldr	r3, [sp, #0x14]
  3f3a06: edd3 7a6d    	vldr	s15, [r3, #436]
  3f3a0a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3a0e: ed9f 7b5c    	vldr	d7, [pc, #368]          @ 0x3f3b80 <SoldierView::updateStep(float)+0x1000>
  3f3a12: ee26 7b07    	vmul.f64	d7, d6, d7
  3f3a16: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3a1a: e001         	b	0x3f3a20 <SoldierView::updateStep(float)+0xea0> @ imm = #0x2
  3f3a1c: eddf 7a5a    	vldr	s15, [pc, #360]         @ 0x3f3b88 <SoldierView::updateStep(float)+0x1008>
  3f3a20: 9b05         	ldr	r3, [sp, #0x14]
  3f3a22: edc3 7a6d    	vstr	s15, [r3, #436]
  3f3a26: 9b05         	ldr	r3, [sp, #0x14]
  3f3a28: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3f3a2c: 9b05         	ldr	r3, [sp, #0x14]
  3f3a2e: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  3f3a32: 9b05         	ldr	r3, [sp, #0x14]
  3f3a34: edd3 7a64    	vldr	s15, [r3, #400]
  3f3a38: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3a3c: 9b05         	ldr	r3, [sp, #0x14]
  3f3a3e: edd3 7a65    	vldr	s15, [r3, #404]
  3f3a42: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f3a46: ab22         	add	r3, sp, #0x88
  3f3a48: 4618         	mov	r0, r3
  3f3a4a: eeb0 0b46    	vmov.f64	d0, d6
  3f3a4e: eeb0 1b47    	vmov.f64	d1, d7
  3f3a52: f7fd f92b    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x2daa
  3f3a56: 466c         	mov	r4, sp
  3f3a58: ab22         	add	r3, sp, #0x88
  3f3a5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f3a5c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f3a60: 4630         	mov	r0, r6
  3f3a62: 9904         	ldr	r1, [sp, #0x10]
  3f3a64: 462a         	mov	r2, r5
  3f3a66: f70a fafb    	bl	0x2fe060 <Boostie::updateStep(float, float, cpVect)> @ imm = #-0xf5a0a
  3f3a6a: 9b05         	ldr	r3, [sp, #0x14]
  3f3a6c: f8d3 60ec    	ldr.w	r6, [r3, #0xec]
  3f3a70: 9b05         	ldr	r3, [sp, #0x14]
  3f3a72: f8d3 51a4    	ldr.w	r5, [r3, #0x1a4]
  3f3a76: 9b05         	ldr	r3, [sp, #0x14]
  3f3a78: edd3 7a64    	vldr	s15, [r3, #400]
  3f3a7c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f3a80: 9b05         	ldr	r3, [sp, #0x14]
  3f3a82: edd3 7a65    	vldr	s15, [r3, #404]
  3f3a86: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f3a8a: ab26         	add	r3, sp, #0x98
  3f3a8c: 4618         	mov	r0, r3
  3f3a8e: eeb0 0b46    	vmov.f64	d0, d6
  3f3a92: eeb0 1b47    	vmov.f64	d1, d7
  3f3a96: f7fd f909    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x2dee
  3f3a9a: 466c         	mov	r4, sp
  3f3a9c: ab26         	add	r3, sp, #0x98
  3f3a9e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f3aa0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f3aa4: 4630         	mov	r0, r6
  3f3aa6: 9904         	ldr	r1, [sp, #0x10]
  3f3aa8: 462a         	mov	r2, r5
  3f3aaa: f70a fad9    	bl	0x2fe060 <Boostie::updateStep(float, float, cpVect)> @ imm = #-0xf5a4e
  3f3aae: 9b05         	ldr	r3, [sp, #0x14]
  3f3ab0: ed93 7a77    	vldr	s14, [r3, #476]
  3f3ab4: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3f3ab8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3f3abc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f3ac0: dd0c         	ble	0x3f3adc <SoldierView::updateStep(float)+0xf5c> @ imm = #0x18
  3f3ac2: 9805         	ldr	r0, [sp, #0x14]
  3f3ac4: f000 fa3a    	bl	0x3f3f3c <SoldierView::getPlayerLabelOpacity()> @ imm = #0x474
  3f3ac8: 4603         	mov	r3, r0
  3f3aca: 9309         	str	r3, [sp, #0x24]
  3f3acc: 9b09         	ldr	r3, [sp, #0x24]
  3f3ace: 3b02         	subs	r3, #0x2
  3f3ad0: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3f3ad4: 9805         	ldr	r0, [sp, #0x14]
  3f3ad6: 4619         	mov	r1, r3
  3f3ad8: f000 fa02    	bl	0x3f3ee0 <SoldierView::setPlayerLabelOpacity(int)> @ imm = #0x404
  3f3adc: 9b05         	ldr	r3, [sp, #0x14]
  3f3ade: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f3ae2: 681b         	ldr	r3, [r3]
  3f3ae4: 3398         	adds	r3, #0x98
  3f3ae6: 681c         	ldr	r4, [r3]
  3f3ae8: 9b05         	ldr	r3, [sp, #0x14]
  3f3aea: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3f3aee: 9b05         	ldr	r3, [sp, #0x14]
  3f3af0: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3af4: 681b         	ldr	r3, [r3]
  3f3af6: 339c         	adds	r3, #0x9c
  3f3af8: 681b         	ldr	r3, [r3]
  3f3afa: 9a05         	ldr	r2, [sp, #0x14]
  3f3afc: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f3b00: 4610         	mov	r0, r2
  3f3b02: 4798         	blx	r3
  3f3b04: 4603         	mov	r3, r0
  3f3b06: 4628         	mov	r0, r5
  3f3b08: 4619         	mov	r1, r3
  3f3b0a: 47a0         	blx	r4
  3f3b0c: 9b05         	ldr	r3, [sp, #0x14]
  3f3b0e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f3b12: 681b         	ldr	r3, [r3]
  3f3b14: 334c         	adds	r3, #0x4c
  3f3b16: 681c         	ldr	r4, [r3]
  3f3b18: 9b05         	ldr	r3, [sp, #0x14]
  3f3b1a: f8d3 5118    	ldr.w	r5, [r3, #0x118]
  3f3b1e: 9b05         	ldr	r3, [sp, #0x14]
  3f3b20: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3b24: 681b         	ldr	r3, [r3]
  3f3b26: 3350         	adds	r3, #0x50
  3f3b28: 681b         	ldr	r3, [r3]
  3f3b2a: 9a05         	ldr	r2, [sp, #0x14]
  3f3b2c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f3b30: 4610         	mov	r0, r2
  3f3b32: 4798         	blx	r3
  3f3b34: 4603         	mov	r3, r0
  3f3b36: 4628         	mov	r0, r5
  3f3b38: 4619         	mov	r1, r3
  3f3b3a: 47a0         	blx	r4
  3f3b3c: 9b05         	ldr	r3, [sp, #0x14]
  3f3b3e: f893 31e0    	ldrb.w	r3, [r3, #0x1e0]
  3f3b42: 2b00         	cmp	r3, #0x0
  3f3b44: d022         	beq	0x3f3b8c <SoldierView::updateStep(float)+0x100c> @ imm = #0x44
  3f3b46: 9b05         	ldr	r3, [sp, #0x14]
  3f3b48: ed93 7a72    	vldr	s14, [r3, #456]
  3f3b4c: eddd 7a04    	vldr	s15, [sp, #16]
  3f3b50: ee77 7a27    	vadd.f32	s15, s14, s15
  3f3b54: 9b05         	ldr	r3, [sp, #0x14]
  3f3b56: edc3 7a72    	vstr	s15, [r3, #456]
  3f3b5a: e01c         	b	0x3f3b96 <SoldierView::updateStep(float)+0x1016> @ imm = #0x38
  3f3b5c: f3af 8000    	nop.w
  3f3b60: 851f         	strh	r7, [r3, #0x28]
  3f3b62: 51eb         	str	r3, [r5, r7]
  3f3b64: 1eb8         	subs	r0, r7, #0x2
  3f3b66: 4009         	ands	r1, r1
  3f3b68: 0000         	movs	r0, r0
  3f3b6a: 0000         	movs	r0, r0
  3f3b6c: 8000         	strh	r0, [r0]
  3f3b6e: 4051         	eors	r1, r2
  3f3b70: 999a         	ldr	r1, [sp, #0x268]
  3f3b72: 9999         	ldr	r1, [sp, #0x264]
  3f3b74: 9999         	ldr	r1, [sp, #0x264]
  3f3b76: 3fb9         	subs	r7, #0xb9
  3f3b78: 6666         	str	r6, [r4, #0x64]
  3f3b7a: 6666         	str	r6, [r4, #0x64]
  3f3b7c: 6666         	str	r6, [r4, #0x64]
  3f3b7e: 3fee         	subs	r7, #0xee
  3f3b80: 999a         	ldr	r1, [sp, #0x268]
  3f3b82: 9999         	ldr	r1, [sp, #0x264]
  3f3b84: 9999         	ldr	r1, [sp, #0x264]
  3f3b86: 3fe9         	subs	r7, #0xe9
  3f3b88: 0000         	movs	r0, r0
  3f3b8a: 0000         	movs	r0, r0
  3f3b8c: 9b05         	ldr	r3, [sp, #0x14]
  3f3b8e: f04f 0200    	mov.w	r2, #0x0
  3f3b92: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  3f3b96: 9b05         	ldr	r3, [sp, #0x14]
  3f3b98: 681b         	ldr	r3, [r3]
  3f3b9a: 3350         	adds	r3, #0x50
  3f3b9c: 681b         	ldr	r3, [r3]
  3f3b9e: 9a05         	ldr	r2, [sp, #0x14]
  3f3ba0: 4610         	mov	r0, r2
  3f3ba2: 4798         	blx	r3
  3f3ba4: 4603         	mov	r3, r0
  3f3ba6: edd3 7a00    	vldr	s15, [r3]
  3f3baa: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3f3bae: 9b05         	ldr	r3, [sp, #0x14]
  3f3bb0: 681b         	ldr	r3, [r3]
  3f3bb2: 3350         	adds	r3, #0x50
  3f3bb4: 681b         	ldr	r3, [r3]
  3f3bb6: 9a05         	ldr	r2, [sp, #0x14]
  3f3bb8: 4610         	mov	r0, r2
  3f3bba: 4798         	blx	r3
  3f3bbc: 4603         	mov	r3, r0
  3f3bbe: edd3 7a01    	vldr	s15, [r3, #4]
  3f3bc2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f3bc6: ab1a         	add	r3, sp, #0x68
  3f3bc8: 4618         	mov	r0, r3
  3f3bca: eeb0 0b48    	vmov.f64	d0, d8
  3f3bce: eeb0 1b47    	vmov.f64	d1, d7
  3f3bd2: f7fd f86b    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x2f2a
  3f3bd6: 9b05         	ldr	r3, [sp, #0x14]
  3f3bd8: f893 31e0    	ldrb.w	r3, [r3, #0x1e0]
  3f3bdc: 2b00         	cmp	r3, #0x0
  3f3bde: d024         	beq	0x3f3c2a <SoldierView::updateStep(float)+0x10aa> @ imm = #0x48
  3f3be0: 9b05         	ldr	r3, [sp, #0x14]
  3f3be2: f893 31e1    	ldrb.w	r3, [r3, #0x1e1]
  3f3be6: 2b00         	cmp	r3, #0x0
  3f3be8: d11d         	bne	0x3f3c26 <SoldierView::updateStep(float)+0x10a6> @ imm = #0x3a
  3f3bea: ab2a         	add	r3, sp, #0xa8
  3f3bec: 4618         	mov	r0, r3
  3f3bee: ed9f 0b16    	vldr	d0, [pc, #88]           @ 0x3f3c48 <SoldierView::updateStep(float)+0x10c8>
  3f3bf2: ed9f 1b15    	vldr	d1, [pc, #84]           @ 0x3f3c48 <SoldierView::updateStep(float)+0x10c8>
  3f3bf6: f7fd f859    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x2f4e
  3f3bfa: 466c         	mov	r4, sp
  3f3bfc: ab2a         	add	r3, sp, #0xa8
  3f3bfe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f3c00: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f3c04: ab1a         	add	r3, sp, #0x68
  3f3c06: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f3c08: f7fd fa02    	bl	0x3f1010 <SoldierRemoteController::setTeamId(int)+0x61c> @ imm = #-0x2bfc
  3f3c0c: 4603         	mov	r3, r0
  3f3c0e: 2b00         	cmp	r3, #0x0
  3f3c10: d00b         	beq	0x3f3c2a <SoldierView::updateStep(float)+0x10aa> @ imm = #0x16
  3f3c12: 9b05         	ldr	r3, [sp, #0x14]
  3f3c14: ed93 7a72    	vldr	s14, [r3, #456]
  3f3c18: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3f3c1c: eeb4 7ae7    	vcmpe.f32	s14, s15
  3f3c20: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f3c24: dd01         	ble	0x3f3c2a <SoldierView::updateStep(float)+0x10aa> @ imm = #0x2
  3f3c26: 2301         	movs	r3, #0x1
  3f3c28: e000         	b	0x3f3c2c <SoldierView::updateStep(float)+0x10ac> @ imm = #0x0
  3f3c2a: 2300         	movs	r3, #0x0
  3f3c2c: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3f3c30: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3f3c34: 9805         	ldr	r0, [sp, #0x14]
  3f3c36: 4619         	mov	r1, r3
  3f3c38: f7fe fdd4    	bl	0x3f27e4 <SoldierView::updateVisible(bool)> @ imm = #-0x1458
  3f3c3c: b02e         	add	sp, #0xb8
  3f3c3e: ecbd 8b02    	vpop	{d8}
  3f3c42: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3f3c43); words below are literal-pool data ---
  3f3c44: f3af 8000    	nop.w
  3f3c48: 0000         	movs	r0, r0
  3f3c4a: 0000         	movs	r0, r0
  3f3c4c: c000         	<unknown>
  3f3c4e: 4062         	eors	r2, r4

// ==== SoldierView::setVelocity
//      file offset 0x3f3c50 (= ELF address; Ghidra 0x403c50), 72 bytes, Thumb-2
  3f3c50: b082         	sub	sp, #0x8
  3f3c52: b510         	push	{r4, lr}
  3f3c54: b084         	sub	sp, #0x10
  3f3c56: 9001         	str	r0, [sp, #0x4]
  3f3c58: a906         	add	r1, sp, #0x18
  3f3c5a: e881 000c    	stm.w	r1, {r2, r3}
  3f3c5e: 9b01         	ldr	r3, [sp, #0x4]
  3f3c60: f503 74c8    	add.w	r4, r3, #0x190
  3f3c64: ed9d 7b06    	vldr	d7, [sp, #24]
  3f3c68: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f3c6c: ed9d 7b08    	vldr	d7, [sp, #32]
  3f3c70: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3c74: ab02         	add	r3, sp, #0x8
  3f3c76: 4618         	mov	r0, r3
  3f3c78: ee16 1a90    	vmov	r1, s13
  3f3c7c: ee17 2a90    	vmov	r2, s15
  3f3c80: f19f f836    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19f06c
  3f3c84: ab02         	add	r3, sp, #0x8
  3f3c86: 4620         	mov	r0, r4
  3f3c88: 4619         	mov	r1, r3
  3f3c8a: f19f f85f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19f0be
  3f3c8e: b004         	add	sp, #0x10
  3f3c90: e8bd 4010    	pop.w	{r4, lr}
  3f3c94: b002         	add	sp, #0x8
  3f3c96: 4770         	bx	lr

// ==== SoldierView::setRotationAngle
//      file offset 0x3f3c98 (= ELF address; Ghidra 0x403c98), 38 bytes, Thumb-2
  3f3c98: b500         	push	{lr}
  3f3c9a: b083         	sub	sp, #0xc
  3f3c9c: 9001         	str	r0, [sp, #0x4]
  3f3c9e: 9100         	str	r1, [sp]
  3f3ca0: 9b01         	ldr	r3, [sp, #0x4]
  3f3ca2: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  3f3ca6: 681b         	ldr	r3, [r3]
  3f3ca8: 3398         	adds	r3, #0x98
  3f3caa: 681b         	ldr	r3, [r3]
  3f3cac: 9a01         	ldr	r2, [sp, #0x4]
  3f3cae: f8d2 2124    	ldr.w	r2, [r2, #0x124]
  3f3cb2: 4610         	mov	r0, r2
  3f3cb4: 9900         	ldr	r1, [sp]
  3f3cb6: 4798         	blx	r3
  3f3cb8: b003         	add	sp, #0xc
  3f3cba: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setFiringAngle
//      file offset 0x3f3cc0 (= ELF address; Ghidra 0x403cc0), 18 bytes, Thumb-2
  3f3cc0: b082         	sub	sp, #0x8
  3f3cc2: 9001         	str	r0, [sp, #0x4]
  3f3cc4: 9100         	str	r1, [sp]
  3f3cc6: 9b01         	ldr	r3, [sp, #0x4]
  3f3cc8: 9a00         	ldr	r2, [sp]
  3f3cca: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3f3cce: b002         	add	sp, #0x8
  3f3cd0: 4770         	bx	lr

// ==== SoldierView::setFiringAngleOffset
//      file offset 0x3f3cd4 (= ELF address; Ghidra 0x403cd4), 18 bytes, Thumb-2
  3f3cd4: b082         	sub	sp, #0x8
  3f3cd6: 9001         	str	r0, [sp, #0x4]
  3f3cd8: 9100         	str	r1, [sp]
  3f3cda: 9b01         	ldr	r3, [sp, #0x4]
  3f3cdc: 9a00         	ldr	r2, [sp]
  3f3cde: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3f3ce2: b002         	add	sp, #0x8
  3f3ce4: 4770         	bx	lr

// ==== SoldierView::getFiringAngleOffset
//      file offset 0x3f3ce8 (= ELF address; Ghidra 0x403ce8), 16 bytes, Thumb-2
  3f3ce8: b082         	sub	sp, #0x8
  3f3cea: 9001         	str	r0, [sp, #0x4]
  3f3cec: 9b01         	ldr	r3, [sp, #0x4]
  3f3cee: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3f3cf2: 4618         	mov	r0, r3
  3f3cf4: b002         	add	sp, #0x8
  3f3cf6: 4770         	bx	lr

// ==== SoldierView::setFixFiringAngleOffset
//      file offset 0x3f3cf8 (= ELF address; Ghidra 0x403cf8), 24 bytes, Thumb-2
  3f3cf8: b082         	sub	sp, #0x8
  3f3cfa: 9001         	str	r0, [sp, #0x4]
  3f3cfc: 460b         	mov	r3, r1
  3f3cfe: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f3d02: 9b01         	ldr	r3, [sp, #0x4]
  3f3d04: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f3d08: f883 21d5    	strb.w	r2, [r3, #0x1d5]
  3f3d0c: b002         	add	sp, #0x8
  3f3d0e: 4770         	bx	lr

// ==== SoldierView::setWeaponAngleOffset
//      file offset 0x3f3d10 (= ELF address; Ghidra 0x403d10), 18 bytes, Thumb-2
  3f3d10: b082         	sub	sp, #0x8
  3f3d12: 9001         	str	r0, [sp, #0x4]
  3f3d14: 9100         	str	r1, [sp]
  3f3d16: 9b01         	ldr	r3, [sp, #0x4]
  3f3d18: 9a00         	ldr	r2, [sp]
  3f3d1a: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3f3d1e: b002         	add	sp, #0x8
  3f3d20: 4770         	bx	lr

// ==== SoldierView::setJoyOffset
//      file offset 0x3f3d24 (= ELF address; Ghidra 0x403d24), 72 bytes, Thumb-2
  3f3d24: b082         	sub	sp, #0x8
  3f3d26: b510         	push	{r4, lr}
  3f3d28: b084         	sub	sp, #0x10
  3f3d2a: 9001         	str	r0, [sp, #0x4]
  3f3d2c: a906         	add	r1, sp, #0x18
  3f3d2e: e881 000c    	stm.w	r1, {r2, r3}
  3f3d32: 9b01         	ldr	r3, [sp, #0x4]
  3f3d34: f503 74cc    	add.w	r4, r3, #0x198
  3f3d38: ed9d 7b06    	vldr	d7, [sp, #24]
  3f3d3c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f3d40: ed9d 7b08    	vldr	d7, [sp, #32]
  3f3d44: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3d48: ab02         	add	r3, sp, #0x8
  3f3d4a: 4618         	mov	r0, r3
  3f3d4c: ee16 1a90    	vmov	r1, s13
  3f3d50: ee17 2a90    	vmov	r2, s15
  3f3d54: f19e ffcc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19ef98
  3f3d58: ab02         	add	r3, sp, #0x8
  3f3d5a: 4620         	mov	r0, r4
  3f3d5c: 4619         	mov	r1, r3
  3f3d5e: f19e fff5    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19efea
  3f3d62: b004         	add	sp, #0x10
  3f3d64: e8bd 4010    	pop.w	{r4, lr}
  3f3d68: b002         	add	sp, #0x8
  3f3d6a: 4770         	bx	lr

// ==== SoldierView::setThrustFactor
//      file offset 0x3f3d6c (= ELF address; Ghidra 0x403d6c), 26 bytes, Thumb-2
  3f3d6c: b084         	sub	sp, #0x10
  3f3d6e: 9003         	str	r0, [sp, #0xc]
  3f3d70: e9cd 2300    	strd	r2, r3, [sp]
  3f3d74: ed9d 7b00    	vldr	d7, [sp]
  3f3d78: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3d7c: 9b03         	ldr	r3, [sp, #0xc]
  3f3d7e: edc3 7a69    	vstr	s15, [r3, #420]
  3f3d82: b004         	add	sp, #0x10
  3f3d84: 4770         	bx	lr

// ==== SoldierView::getDualFiringAngle
//      file offset 0x3f3d88 (= ELF address; Ghidra 0x403d88), 64 bytes, Thumb-2
  3f3d88: b500         	push	{lr}
  3f3d8a: b083         	sub	sp, #0xc
  3f3d8c: 9001         	str	r0, [sp, #0x4]
  3f3d8e: 9801         	ldr	r0, [sp, #0x4]
  3f3d90: f000 f916    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x22c
  3f3d94: 4603         	mov	r3, r0
  3f3d96: 2b00         	cmp	r3, #0x0
  3f3d98: d008         	beq	0x3f3dac <SoldierView::getDualFiringAngle()+0x24> @ imm = #0x10
  3f3d9a: 9b01         	ldr	r3, [sp, #0x4]
  3f3d9c: ed93 7a6e    	vldr	s14, [r3, #440]
  3f3da0: 9b01         	ldr	r3, [sp, #0x4]
  3f3da2: edd3 7a6d    	vldr	s15, [r3, #436]
  3f3da6: ee77 7a67    	vsub.f32	s15, s14, s15
  3f3daa: e007         	b	0x3f3dbc <SoldierView::getDualFiringAngle()+0x34> @ imm = #0xe
  3f3dac: 9b01         	ldr	r3, [sp, #0x4]
  3f3dae: ed93 7a6e    	vldr	s14, [r3, #440]
  3f3db2: 9b01         	ldr	r3, [sp, #0x4]
  3f3db4: edd3 7a6d    	vldr	s15, [r3, #436]
  3f3db8: ee77 7a27    	vadd.f32	s15, s14, s15
  3f3dbc: ee17 3a90    	vmov	r3, s15
  3f3dc0: 4618         	mov	r0, r3
  3f3dc2: b003         	add	sp, #0xc
  3f3dc4: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::getFiringAngle
//      file offset 0x3f3dc8 (= ELF address; Ghidra 0x403dc8), 84 bytes, Thumb-2
  3f3dc8: b500         	push	{lr}
  3f3dca: b083         	sub	sp, #0xc
  3f3dcc: 9001         	str	r0, [sp, #0x4]
  3f3dce: 9801         	ldr	r0, [sp, #0x4]
  3f3dd0: f000 f8f6    	bl	0x3f3fc0 <SoldierView::isRight()> @ imm = #0x1ec
  3f3dd4: 4603         	mov	r3, r0
  3f3dd6: 2b00         	cmp	r3, #0x0
  3f3dd8: d00d         	beq	0x3f3df6 <SoldierView::getFiringAngle()+0x2e> @ imm = #0x1a
  3f3dda: 9b01         	ldr	r3, [sp, #0x4]
  3f3ddc: ed93 7a6e    	vldr	s14, [r3, #440]
  3f3de0: 9b01         	ldr	r3, [sp, #0x4]
  3f3de2: edd3 7a6f    	vldr	s15, [r3, #444]
  3f3de6: ee37 7a67    	vsub.f32	s14, s14, s15
  3f3dea: 9b01         	ldr	r3, [sp, #0x4]
  3f3dec: edd3 7a6c    	vldr	s15, [r3, #432]
  3f3df0: ee77 7a67    	vsub.f32	s15, s14, s15
  3f3df4: e00c         	b	0x3f3e10 <SoldierView::getFiringAngle()+0x48> @ imm = #0x18
  3f3df6: 9b01         	ldr	r3, [sp, #0x4]
  3f3df8: ed93 7a6e    	vldr	s14, [r3, #440]
  3f3dfc: 9b01         	ldr	r3, [sp, #0x4]
  3f3dfe: edd3 7a6f    	vldr	s15, [r3, #444]
  3f3e02: ee37 7a27    	vadd.f32	s14, s14, s15
  3f3e06: 9b01         	ldr	r3, [sp, #0x4]
  3f3e08: edd3 7a6c    	vldr	s15, [r3, #432]
  3f3e0c: ee77 7a27    	vadd.f32	s15, s14, s15
  3f3e10: ee17 3a90    	vmov	r3, s15
  3f3e14: 4618         	mov	r0, r3
  3f3e16: b003         	add	sp, #0xc
  3f3e18: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::getBodyRotation
//      file offset 0x3f3e1c (= ELF address; Ghidra 0x403e1c), 16 bytes, Thumb-2
  3f3e1c: b082         	sub	sp, #0x8
  3f3e1e: 9001         	str	r0, [sp, #0x4]
  3f3e20: 9b01         	ldr	r3, [sp, #0x4]
  3f3e22: f8d3 31a0    	ldr.w	r3, [r3, #0x1a0]
  3f3e26: 4618         	mov	r0, r3
  3f3e28: b002         	add	sp, #0x8
  3f3e2a: 4770         	bx	lr

// ==== SoldierView::setPrimaryRecoilRotation
//      file offset 0x3f3e2c (= ELF address; Ghidra 0x403e2c), 26 bytes, Thumb-2
  3f3e2c: b084         	sub	sp, #0x10
  3f3e2e: 9003         	str	r0, [sp, #0xc]
  3f3e30: e9cd 2300    	strd	r2, r3, [sp]
  3f3e34: ed9d 7b00    	vldr	d7, [sp]
  3f3e38: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3e3c: 9b03         	ldr	r3, [sp, #0xc]
  3f3e3e: edc3 7a6a    	vstr	s15, [r3, #424]
  3f3e42: b004         	add	sp, #0x10
  3f3e44: 4770         	bx	lr

// ==== SoldierView::setDualRecoilRotation
//      file offset 0x3f3e48 (= ELF address; Ghidra 0x403e48), 26 bytes, Thumb-2
  3f3e48: b084         	sub	sp, #0x10
  3f3e4a: 9003         	str	r0, [sp, #0xc]
  3f3e4c: e9cd 2300    	strd	r2, r3, [sp]
  3f3e50: ed9d 7b00    	vldr	d7, [sp]
  3f3e54: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3e58: 9b03         	ldr	r3, [sp, #0xc]
  3f3e5a: edc3 7a6b    	vstr	s15, [r3, #428]
  3f3e5e: b004         	add	sp, #0x10
  3f3e60: 4770         	bx	lr

// ==== SoldierView::setPrimaryMoveRotation
//      file offset 0x3f3e64 (= ELF address; Ghidra 0x403e64), 26 bytes, Thumb-2
  3f3e64: b084         	sub	sp, #0x10
  3f3e66: 9003         	str	r0, [sp, #0xc]
  3f3e68: e9cd 2300    	strd	r2, r3, [sp]
  3f3e6c: ed9d 7b00    	vldr	d7, [sp]
  3f3e70: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3e74: 9b03         	ldr	r3, [sp, #0xc]
  3f3e76: edc3 7a6c    	vstr	s15, [r3, #432]
  3f3e7a: b004         	add	sp, #0x10
  3f3e7c: 4770         	bx	lr

// ==== SoldierView::setDualMoveRotation
//      file offset 0x3f3e80 (= ELF address; Ghidra 0x403e80), 26 bytes, Thumb-2
  3f3e80: b084         	sub	sp, #0x10
  3f3e82: 9003         	str	r0, [sp, #0xc]
  3f3e84: e9cd 2300    	strd	r2, r3, [sp]
  3f3e88: ed9d 7b00    	vldr	d7, [sp]
  3f3e8c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f3e90: 9b03         	ldr	r3, [sp, #0xc]
  3f3e92: edc3 7a6d    	vstr	s15, [r3, #436]
  3f3e96: b004         	add	sp, #0x10
  3f3e98: 4770         	bx	lr

// ==== SoldierView::setUUID
//      file offset 0x3f3e9c (= ELF address; Ghidra 0x403e9c), 10 bytes, Thumb-2
  3f3e9c: b082         	sub	sp, #0x8
  3f3e9e: 9001         	str	r0, [sp, #0x4]
  3f3ea0: 9100         	str	r1, [sp]
  3f3ea2: b002         	add	sp, #0x8
  3f3ea4: 4770         	bx	lr

// ==== SoldierView::hidePlayerLabel
//      file offset 0x3f3ea8 (= ELF address; Ghidra 0x403ea8), 54 bytes, Thumb-2
  3f3ea8: b500         	push	{lr}
  3f3eaa: b083         	sub	sp, #0xc
  3f3eac: 9001         	str	r0, [sp, #0x4]
  3f3eae: 460b         	mov	r3, r1
  3f3eb0: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f3eb4: 9b01         	ldr	r3, [sp, #0x4]
  3f3eb6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f3eba: 681b         	ldr	r3, [r3]
  3f3ebc: 3390         	adds	r3, #0x90
  3f3ebe: 681b         	ldr	r3, [r3]
  3f3ec0: 9a01         	ldr	r2, [sp, #0x4]
  3f3ec2: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f3ec6: 4611         	mov	r1, r2
  3f3ec8: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f3ecc: f082 0201    	eor	r2, r2, #0x1
  3f3ed0: b2d2         	uxtb	r2, r2
  3f3ed2: 4608         	mov	r0, r1
  3f3ed4: 4611         	mov	r1, r2
  3f3ed6: 4798         	blx	r3
  3f3ed8: b003         	add	sp, #0xc
  3f3eda: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setPlayerLabelOpacity
//      file offset 0x3f3ee0 (= ELF address; Ghidra 0x403ee0), 46 bytes, Thumb-2
  3f3ee0: b500         	push	{lr}
  3f3ee2: b083         	sub	sp, #0xc
  3f3ee4: 9001         	str	r0, [sp, #0x4]
  3f3ee6: 9100         	str	r1, [sp]
  3f3ee8: 9b01         	ldr	r3, [sp, #0x4]
  3f3eea: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f3eee: 681b         	ldr	r3, [r3]
  3f3ef0: f503 73d2    	add.w	r3, r3, #0x1a4
  3f3ef4: 681b         	ldr	r3, [r3]
  3f3ef6: 9a01         	ldr	r2, [sp, #0x4]
  3f3ef8: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f3efc: 4611         	mov	r1, r2
  3f3efe: 9a00         	ldr	r2, [sp]
  3f3f00: b2d2         	uxtb	r2, r2
  3f3f02: 4608         	mov	r0, r1
  3f3f04: 4611         	mov	r1, r2
  3f3f06: 4798         	blx	r3
  3f3f08: b003         	add	sp, #0xc
  3f3f0a: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setPlayerLabelColor
//      file offset 0x3f3f10 (= ELF address; Ghidra 0x403f10), 44 bytes, Thumb-2
  3f3f10: b500         	push	{lr}
  3f3f12: b083         	sub	sp, #0xc
  3f3f14: 9001         	str	r0, [sp, #0x4]
  3f3f16: 9100         	str	r1, [sp]
  3f3f18: 9b01         	ldr	r3, [sp, #0x4]
  3f3f1a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f3f1e: 681b         	ldr	r3, [r3]
  3f3f20: f503 73de    	add.w	r3, r3, #0x1bc
  3f3f24: 681b         	ldr	r3, [r3]
  3f3f26: 9a01         	ldr	r2, [sp, #0x4]
  3f3f28: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f3f2c: 4611         	mov	r1, r2
  3f3f2e: 466a         	mov	r2, sp
  3f3f30: 4608         	mov	r0, r1
  3f3f32: 4611         	mov	r1, r2
  3f3f34: 4798         	blx	r3
  3f3f36: b003         	add	sp, #0xc
  3f3f38: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::getPlayerLabelOpacity
//      file offset 0x3f3f3c (= ELF address; Ghidra 0x403f3c), 40 bytes, Thumb-2
  3f3f3c: b500         	push	{lr}
  3f3f3e: b083         	sub	sp, #0xc
  3f3f40: 9001         	str	r0, [sp, #0x4]
  3f3f42: 9b01         	ldr	r3, [sp, #0x4]
  3f3f44: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f3f48: 681b         	ldr	r3, [r3]
  3f3f4a: f503 73ce    	add.w	r3, r3, #0x19c
  3f3f4e: 681b         	ldr	r3, [r3]
  3f3f50: 9a01         	ldr	r2, [sp, #0x4]
  3f3f52: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f3f56: 4610         	mov	r0, r2
  3f3f58: 4798         	blx	r3
  3f3f5a: 4603         	mov	r3, r0
  3f3f5c: 4618         	mov	r0, r3
  3f3f5e: b003         	add	sp, #0xc
  3f3f60: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setPlayerName
//      file offset 0x3f3f64 (= ELF address; Ghidra 0x403f64), 60 bytes, Thumb-2
  3f3f64: b530         	push	{r4, r5, lr}
  3f3f66: b083         	sub	sp, #0xc
  3f3f68: 9001         	str	r0, [sp, #0x4]
  3f3f6a: 9100         	str	r1, [sp]
  3f3f6c: 9b01         	ldr	r3, [sp, #0x4]
  3f3f6e: f503 73f2    	add.w	r3, r3, #0x1e4
  3f3f72: 4618         	mov	r0, r3
  3f3f74: 9900         	ldr	r1, [sp]
  3f3f76: f3c2 fb1d    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3c263a
  3f3f7a: 9b01         	ldr	r3, [sp, #0x4]
  3f3f7c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f3f80: 681b         	ldr	r3, [r3]
  3f3f82: f503 730f    	add.w	r3, r3, #0x23c
  3f3f86: 681c         	ldr	r4, [r3]
  3f3f88: 9b01         	ldr	r3, [sp, #0x4]
  3f3f8a: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3f3f8e: 9800         	ldr	r0, [sp]
  3f3f90: f3c1 f9b6    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3c136c
  3f3f94: 4603         	mov	r3, r0
  3f3f96: 4628         	mov	r0, r5
  3f3f98: 4619         	mov	r1, r3
  3f3f9a: 47a0         	blx	r4
  3f3f9c: b003         	add	sp, #0xc
  3f3f9e: bd30         	pop	{r4, r5, pc}

// ==== SoldierView::getPlayerName
//      file offset 0x3f3fa0 (= ELF address; Ghidra 0x403fa0), 30 bytes, Thumb-2
  3f3fa0: b500         	push	{lr}
  3f3fa2: b083         	sub	sp, #0xc
  3f3fa4: 9001         	str	r0, [sp, #0x4]
  3f3fa6: 9100         	str	r1, [sp]
  3f3fa8: 9b00         	ldr	r3, [sp]
  3f3faa: f503 73f2    	add.w	r3, r3, #0x1e4
  3f3fae: 9801         	ldr	r0, [sp, #0x4]
  3f3fb0: 4619         	mov	r1, r3
  3f3fb2: f3c2 fa99    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3c2532
  3f3fb6: 9801         	ldr	r0, [sp, #0x4]
  3f3fb8: b003         	add	sp, #0xc
  3f3fba: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::isRight
//      file offset 0x3f3fc0 (= ELF address; Ghidra 0x403fc0), 16 bytes, Thumb-2
  3f3fc0: b082         	sub	sp, #0x8
  3f3fc2: 9001         	str	r0, [sp, #0x4]
  3f3fc4: 9b01         	ldr	r3, [sp, #0x4]
  3f3fc6: f893 31cc    	ldrb.w	r3, [r3, #0x1cc]
  3f3fca: 4618         	mov	r0, r3
  3f3fcc: b002         	add	sp, #0x8
  3f3fce: 4770         	bx	lr

// ==== SoldierView::getDualArmPoint
//      file offset 0x3f3fd0 (= ELF address; Ghidra 0x403fd0), 180 bytes, Thumb-2
  3f3fd0: b530         	push	{r4, r5, lr}
  3f3fd2: b08d         	sub	sp, #0x34
  3f3fd4: 9001         	str	r0, [sp, #0x4]
  3f3fd6: 9100         	str	r1, [sp]
  3f3fd8: 4c28         	ldr	r4, [pc, #0xa0]         @ 0x3f407c <SoldierView::getDualArmPoint()+0xac>
  3f3fda: 447c         	add	r4, pc
  3f3fdc: 9b00         	ldr	r3, [sp]
  3f3fde: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3fe2: 681b         	ldr	r3, [r3]
  3f3fe4: 3350         	adds	r3, #0x50
  3f3fe6: 681b         	ldr	r3, [r3]
  3f3fe8: 9a00         	ldr	r2, [sp]
  3f3fea: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f3fee: 4610         	mov	r0, r2
  3f3ff0: 4798         	blx	r3
  3f3ff2: 4605         	mov	r5, r0
  3f3ff4: 9b00         	ldr	r3, [sp]
  3f3ff6: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f3ffa: 681b         	ldr	r3, [r3]
  3f3ffc: f503 73c2    	add.w	r3, r3, #0x184
  3f4000: 681b         	ldr	r3, [r3]
  3f4002: 9a00         	ldr	r2, [sp]
  3f4004: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  3f4008: a906         	add	r1, sp, #0x18
  3f400a: 4608         	mov	r0, r1
  3f400c: 4611         	mov	r1, r2
  3f400e: 4798         	blx	r3
  3f4010: aa02         	add	r2, sp, #0x8
  3f4012: ab06         	add	r3, sp, #0x18
  3f4014: 4610         	mov	r0, r2
  3f4016: 4629         	mov	r1, r5
  3f4018: 461a         	mov	r2, r3
  3f401a: f19e f983    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x19e306
  3f401e: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3f4080 <SoldierView::getDualArmPoint()+0xb0>
  3f4020: 58e3         	ldr	r3, [r4, r3]
  3f4022: 681b         	ldr	r3, [r3]
  3f4024: 681b         	ldr	r3, [r3]
  3f4026: f503 73c4    	add.w	r3, r3, #0x188
  3f402a: 681b         	ldr	r3, [r3]
  3f402c: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3f4080 <SoldierView::getDualArmPoint()+0xb0>
  3f402e: 58a2         	ldr	r2, [r4, r2]
  3f4030: 6812         	ldr	r2, [r2]
  3f4032: a906         	add	r1, sp, #0x18
  3f4034: 4608         	mov	r0, r1
  3f4036: 4611         	mov	r1, r2
  3f4038: 4798         	blx	r3
  3f403a: a904         	add	r1, sp, #0x10
  3f403c: aa02         	add	r2, sp, #0x8
  3f403e: ab06         	add	r3, sp, #0x18
  3f4040: 4608         	mov	r0, r1
  3f4042: 4611         	mov	r1, r2
  3f4044: 461a         	mov	r2, r3
  3f4046: f19e f96d    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x19e2da
  3f404a: aa02         	add	r2, sp, #0x8
  3f404c: ab04         	add	r3, sp, #0x10
  3f404e: 4610         	mov	r0, r2
  3f4050: 4619         	mov	r1, r3
  3f4052: f19e fe7b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x19ecf6
  3f4056: eddd 7a02    	vldr	s15, [sp, #8]
  3f405a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f405e: eddd 7a03    	vldr	s15, [sp, #12]
  3f4062: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f4066: 9b01         	ldr	r3, [sp, #0x4]
  3f4068: 4618         	mov	r0, r3
  3f406a: eeb0 0b46    	vmov.f64	d0, d6
  3f406e: eeb0 1b47    	vmov.f64	d1, d7
  3f4072: f7fc fe1b    	bl	0x3f0cac <SoldierRemoteController::setTeamId(int)+0x2b8> @ imm = #-0x33ca
  3f4076: 9801         	ldr	r0, [sp, #0x4]
  3f4078: b00d         	add	sp, #0x34
  3f407a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f407b); words below are literal-pool data ---
  3f407c: ea2e 0053    	bic.w	r0, lr, r3, lsr #1
  3f4080: d744         	bvc	0x3f410c <SoldierView::setBoostColor(cocos2d::_ccColor4B)+0x10> @ imm = #0x88
  3f4082: ffff b500    	<unknown>

// ==== SoldierView::setPlayerSkin
//      file offset 0x3f4084 (= ELF address; Ghidra 0x404084), 58 bytes, Thumb-2
  3f4084: b500         	push	{lr}
  3f4086: b085         	sub	sp, #0x14
  3f4088: 9003         	str	r0, [sp, #0xc]
  3f408a: 9102         	str	r1, [sp, #0x8]
  3f408c: 9201         	str	r2, [sp, #0x4]
  3f408e: 9300         	str	r3, [sp]
  3f4090: 9b03         	ldr	r3, [sp, #0xc]
  3f4092: 9a02         	ldr	r2, [sp, #0x8]
  3f4094: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  3f4098: 9803         	ldr	r0, [sp, #0xc]
  3f409a: 9901         	ldr	r1, [sp, #0x4]
  3f409c: f000 f90e    	bl	0x3f42bc <SoldierView::setHeadTexture(cocos2d::CCTexture2D*)> @ imm = #0x21c
  3f40a0: 9803         	ldr	r0, [sp, #0xc]
  3f40a2: 9900         	ldr	r1, [sp]
  3f40a4: f000 f96e    	bl	0x3f4384 <SoldierView::setBodyTexture(cocos2d::CCTexture2D*)> @ imm = #0x2dc
  3f40a8: 9803         	ldr	r0, [sp, #0xc]
  3f40aa: 9906         	ldr	r1, [sp, #0x18]
  3f40ac: f000 f9ce    	bl	0x3f444c <SoldierView::setArmTexture(cocos2d::CCTexture2D*)> @ imm = #0x39c
  3f40b0: 9803         	ldr	r0, [sp, #0xc]
  3f40b2: 9907         	ldr	r1, [sp, #0x1c]
  3f40b4: f000 fa92    	bl	0x3f45dc <SoldierView::setLegTexture(cocos2d::CCTexture2D*)> @ imm = #0x524
  3f40b8: b005         	add	sp, #0x14
  3f40ba: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setIsVisible
//      file offset 0x3f40c0 (= ELF address; Ghidra 0x4040c0), 58 bytes, Thumb-2
  3f40c0: b500         	push	{lr}
  3f40c2: b083         	sub	sp, #0xc
  3f40c4: 9001         	str	r0, [sp, #0x4]
  3f40c6: 460b         	mov	r3, r1
  3f40c8: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f40cc: 9b01         	ldr	r3, [sp, #0x4]
  3f40ce: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f40d2: f883 21e0    	strb.w	r2, [r3, #0x1e0]
  3f40d6: 9b01         	ldr	r3, [sp, #0x4]
  3f40d8: f893 31e0    	ldrb.w	r3, [r3, #0x1e0]
  3f40dc: f083 0301    	eor	r3, r3, #0x1
  3f40e0: b2db         	uxtb	r3, r3
  3f40e2: 2b00         	cmp	r3, #0x0
  3f40e4: d006         	beq	0x3f40f4 <SoldierView::setIsVisible(bool)+0x34> @ imm = #0xc
  3f40e6: 9b01         	ldr	r3, [sp, #0x4]
  3f40e8: f893 31e0    	ldrb.w	r3, [r3, #0x1e0]
  3f40ec: 9801         	ldr	r0, [sp, #0x4]
  3f40ee: 4619         	mov	r1, r3
  3f40f0: f7fe fb78    	bl	0x3f27e4 <SoldierView::updateVisible(bool)> @ imm = #-0x1910
  3f40f4: b003         	add	sp, #0xc
  3f40f6: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setBoostColor
//      file offset 0x3f40fc (= ELF address; Ghidra 0x4040fc), 322 bytes, Thumb-2
  3f40fc: b530         	push	{r4, r5, lr}
  3f40fe: b089         	sub	sp, #0x24
  3f4100: 9001         	str	r0, [sp, #0x4]
  3f4102: 9100         	str	r1, [sp]
  3f4104: 9b01         	ldr	r3, [sp, #0x4]
  3f4106: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3f410a: f89d 1000    	ldrb.w	r1, [sp]
  3f410e: f89d 2001    	ldrb.w	r2, [sp, #0x1]
  3f4112: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  3f4116: 4608         	mov	r0, r1
  3f4118: 4611         	mov	r1, r2
  3f411a: 461a         	mov	r2, r3
  3f411c: f7fc fd5a    	bl	0x3f0bd4 <SoldierRemoteController::setTeamId(int)+0x1e0> @ imm = #-0x354c
  3f4120: 4603         	mov	r3, r0
  3f4122: 461a         	mov	r2, r3
  3f4124: f88d 2008    	strb.w	r2, [sp, #0x8]
  3f4128: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3f412c: f88d 2009    	strb.w	r2, [sp, #0x9]
  3f4130: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3f4134: f88d 300a    	strb.w	r3, [sp, #0xa]
  3f4138: 4620         	mov	r0, r4
  3f413a: 9902         	ldr	r1, [sp, #0x8]
  3f413c: f709 ff6a    	bl	0x2fe014 <Boostie::setStreakColor(cocos2d::_ccColor3B)> @ imm = #-0xf612c
  3f4140: 9b01         	ldr	r3, [sp, #0x4]
  3f4142: f8d3 40ec    	ldr.w	r4, [r3, #0xec]
  3f4146: f89d 1000    	ldrb.w	r1, [sp]
  3f414a: f89d 2001    	ldrb.w	r2, [sp, #0x1]
  3f414e: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  3f4152: 4608         	mov	r0, r1
  3f4154: 4611         	mov	r1, r2
  3f4156: 461a         	mov	r2, r3
  3f4158: f7fc fd3c    	bl	0x3f0bd4 <SoldierRemoteController::setTeamId(int)+0x1e0> @ imm = #-0x3588
  3f415c: 4603         	mov	r3, r0
  3f415e: 461a         	mov	r2, r3
  3f4160: f88d 200c    	strb.w	r2, [sp, #0xc]
  3f4164: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3f4168: f88d 200d    	strb.w	r2, [sp, #0xd]
  3f416c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3f4170: f88d 300e    	strb.w	r3, [sp, #0xe]
  3f4174: 4620         	mov	r0, r4
  3f4176: 9903         	ldr	r1, [sp, #0xc]
  3f4178: f709 ff4c    	bl	0x2fe014 <Boostie::setStreakColor(cocos2d::_ccColor3B)> @ imm = #-0xf6168
  3f417c: 9b01         	ldr	r3, [sp, #0x4]
  3f417e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f4182: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f4186: 681b         	ldr	r3, [r3]
  3f4188: f503 7322    	add.w	r3, r3, #0x288
  3f418c: 681c         	ldr	r4, [r3]
  3f418e: 9b01         	ldr	r3, [sp, #0x4]
  3f4190: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f4194: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3f4198: ab04         	add	r3, sp, #0x10
  3f419a: 4618         	mov	r0, r3
  3f419c: 9900         	ldr	r1, [sp]
  3f419e: f7fc fd47    	bl	0x3f0c30 <SoldierRemoteController::setTeamId(int)+0x23c> @ imm = #-0x3572
  3f41a2: ab04         	add	r3, sp, #0x10
  3f41a4: 4628         	mov	r0, r5
  3f41a6: 4619         	mov	r1, r3
  3f41a8: 47a0         	blx	r4
  3f41aa: 9b01         	ldr	r3, [sp, #0x4]
  3f41ac: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f41b0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f41b4: 681b         	ldr	r3, [r3]
  3f41b6: f503 7322    	add.w	r3, r3, #0x288
  3f41ba: 681c         	ldr	r4, [r3]
  3f41bc: 9b01         	ldr	r3, [sp, #0x4]
  3f41be: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f41c2: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3f41c6: ab04         	add	r3, sp, #0x10
  3f41c8: 4618         	mov	r0, r3
  3f41ca: 9900         	ldr	r1, [sp]
  3f41cc: f7fc fd30    	bl	0x3f0c30 <SoldierRemoteController::setTeamId(int)+0x23c> @ imm = #-0x35a0
  3f41d0: ab04         	add	r3, sp, #0x10
  3f41d2: 4628         	mov	r0, r5
  3f41d4: 4619         	mov	r1, r3
  3f41d6: 47a0         	blx	r4
  3f41d8: 2300         	movs	r3, #0x0
  3f41da: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f41de: 9b01         	ldr	r3, [sp, #0x4]
  3f41e0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f41e4: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f41e8: 681b         	ldr	r3, [r3]
  3f41ea: f503 7326    	add.w	r3, r3, #0x298
  3f41ee: 681c         	ldr	r4, [r3]
  3f41f0: 9b01         	ldr	r3, [sp, #0x4]
  3f41f2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f41f6: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3f41fa: ab04         	add	r3, sp, #0x10
  3f41fc: 4618         	mov	r0, r3
  3f41fe: 9900         	ldr	r1, [sp]
  3f4200: f7fc fd16    	bl	0x3f0c30 <SoldierRemoteController::setTeamId(int)+0x23c> @ imm = #-0x35d4
  3f4204: ab04         	add	r3, sp, #0x10
  3f4206: 4628         	mov	r0, r5
  3f4208: 4619         	mov	r1, r3
  3f420a: 47a0         	blx	r4
  3f420c: 9b01         	ldr	r3, [sp, #0x4]
  3f420e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f4212: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f4216: 681b         	ldr	r3, [r3]
  3f4218: f503 7326    	add.w	r3, r3, #0x298
  3f421c: 681c         	ldr	r4, [r3]
  3f421e: 9b01         	ldr	r3, [sp, #0x4]
  3f4220: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f4224: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3f4228: ab04         	add	r3, sp, #0x10
  3f422a: 4618         	mov	r0, r3
  3f422c: 9900         	ldr	r1, [sp]
  3f422e: f7fc fcff    	bl	0x3f0c30 <SoldierRemoteController::setTeamId(int)+0x23c> @ imm = #-0x3602
  3f4232: ab04         	add	r3, sp, #0x10
  3f4234: 4628         	mov	r0, r5
  3f4236: 4619         	mov	r1, r3
  3f4238: 47a0         	blx	r4
  3f423a: b009         	add	sp, #0x24
  3f423c: bd30         	pop	{r4, r5, pc}

// ==== SoldierView::setDualWieldConfiguration
//      file offset 0x3f4240 (= ELF address; Ghidra 0x404240), 24 bytes, Thumb-2
  3f4240: b082         	sub	sp, #0x8
  3f4242: 9001         	str	r0, [sp, #0x4]
  3f4244: 460b         	mov	r3, r1
  3f4246: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f424a: 9b01         	ldr	r3, [sp, #0x4]
  3f424c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f4250: f883 21d4    	strb.w	r2, [r3, #0x1d4]
  3f4254: b002         	add	sp, #0x8
  3f4256: 4770         	bx	lr

// ==== SoldierView::showSight
//      file offset 0x3f4258 (= ELF address; Ghidra 0x404258), 8 bytes, Thumb-2
  3f4258: b082         	sub	sp, #0x8
  3f425a: 9001         	str	r0, [sp, #0x4]
  3f425c: b002         	add	sp, #0x8
  3f425e: 4770         	bx	lr

// ==== SoldierView::hideSight
//      file offset 0x3f4260 (= ELF address; Ghidra 0x404260), 8 bytes, Thumb-2
  3f4260: b082         	sub	sp, #0x8
  3f4262: 9001         	str	r0, [sp, #0x4]
  3f4264: b002         	add	sp, #0x8
  3f4266: 4770         	bx	lr

// ==== SoldierView::resetStreak
//      file offset 0x3f4268 (= ELF address; Ghidra 0x404268), 36 bytes, Thumb-2
  3f4268: b500         	push	{lr}
  3f426a: b083         	sub	sp, #0xc
  3f426c: 9001         	str	r0, [sp, #0x4]
  3f426e: 9b01         	ldr	r3, [sp, #0x4]
  3f4270: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3f4274: 4618         	mov	r0, r3
  3f4276: f709 fe51    	bl	0x2fdf1c <Boostie::reset()> @ imm = #-0xf635e
  3f427a: 9b01         	ldr	r3, [sp, #0x4]
  3f427c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3f4280: 4618         	mov	r0, r3
  3f4282: f709 fe4b    	bl	0x2fdf1c <Boostie::reset()> @ imm = #-0xf636a
  3f4286: b003         	add	sp, #0xc
  3f4288: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::showLabel
//      file offset 0x3f428c (= ELF address; Ghidra 0x40428c), 48 bytes, Thumb-2
  3f428c: b500         	push	{lr}
  3f428e: b083         	sub	sp, #0xc
  3f4290: 9001         	str	r0, [sp, #0x4]
  3f4292: 9b01         	ldr	r3, [sp, #0x4]
  3f4294: f04f 0200    	mov.w	r2, #0x0
  3f4298: f8c3 21dc    	str.w	r2, [r3, #0x1dc]
  3f429c: 9b01         	ldr	r3, [sp, #0x4]
  3f429e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3f42a2: 681b         	ldr	r3, [r3]
  3f42a4: f503 73d2    	add.w	r3, r3, #0x1a4
  3f42a8: 681b         	ldr	r3, [r3]
  3f42aa: 9a01         	ldr	r2, [sp, #0x4]
  3f42ac: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3f42b0: 4610         	mov	r0, r2
  3f42b2: 21ff         	movs	r1, #0xff
  3f42b4: 4798         	blx	r3
  3f42b6: b003         	add	sp, #0xc
  3f42b8: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierView::setHeadTexture
//      file offset 0x3f42bc (= ELF address; Ghidra 0x4042bc), 200 bytes, Thumb-2
  3f42bc: b530         	push	{r4, r5, lr}
  3f42be: b085         	sub	sp, #0x14
  3f42c0: 9001         	str	r0, [sp, #0x4]
  3f42c2: 9100         	str	r1, [sp]
  3f42c4: 9b01         	ldr	r3, [sp, #0x4]
  3f42c6: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f42ca: 2b00         	cmp	r3, #0x0
  3f42cc: d015         	beq	0x3f42fa <SoldierView::setHeadTexture(cocos2d::CCTexture2D*)+0x3e> @ imm = #0x2a
  3f42ce: 9b01         	ldr	r3, [sp, #0x4]
  3f42d0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f42d4: 681b         	ldr	r3, [r3]
  3f42d6: 33f4         	adds	r3, #0xf4
  3f42d8: 681b         	ldr	r3, [r3]
  3f42da: 9a01         	ldr	r2, [sp, #0x4]
  3f42dc: f8d2 1120    	ldr.w	r1, [r2, #0x120]
  3f42e0: 9a01         	ldr	r2, [sp, #0x4]
  3f42e2: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3f42e6: 4608         	mov	r0, r1
  3f42e8: 4611         	mov	r1, r2
  3f42ea: 2200         	movs	r2, #0x0
  3f42ec: 4798         	blx	r3
  3f42ee: 9b01         	ldr	r3, [sp, #0x4]
  3f42f0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f42f4: 4618         	mov	r0, r3
  3f42f6: f1a3 fddf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a3bbe
  3f42fa: 9800         	ldr	r0, [sp]
  3f42fc: f1e3 fec4    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e3d88
  3f4300: 4602         	mov	r2, r0
  3f4302: 9b01         	ldr	r3, [sp, #0x4]
  3f4304: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3f4308: 9b01         	ldr	r3, [sp, #0x4]
  3f430a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f430e: 681b         	ldr	r3, [r3]
  3f4310: f503 73fa    	add.w	r3, r3, #0x1f4
  3f4314: 681b         	ldr	r3, [r3]
  3f4316: 9a01         	ldr	r2, [sp, #0x4]
  3f4318: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3f431c: 4610         	mov	r0, r2
  3f431e: 4798         	blx	r3
  3f4320: 4603         	mov	r3, r0
  3f4322: 4618         	mov	r0, r3
  3f4324: f1fd fe2e    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fdc5c
  3f4328: 9b01         	ldr	r3, [sp, #0x4]
  3f432a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f432e: 4618         	mov	r0, r3
  3f4330: f1a3 fdda    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3bb4
  3f4334: 9b01         	ldr	r3, [sp, #0x4]
  3f4336: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  3f433a: 681b         	ldr	r3, [r3]
  3f433c: 337c         	adds	r3, #0x7c
  3f433e: 681c         	ldr	r4, [r3]
  3f4340: 9b01         	ldr	r3, [sp, #0x4]
  3f4342: f8d3 50f0    	ldr.w	r5, [r3, #0xf0]
  3f4346: ab02         	add	r3, sp, #0x8
  3f4348: 4618         	mov	r0, r3
  3f434a: f04f 517c    	mov.w	r1, #0x3f000000
  3f434e: f64c 42cd    	movw	r2, #0xcccd
  3f4352: f6c3 624c    	movt	r2, #0x3e4c
  3f4356: f19e fccb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e996
  3f435a: ab02         	add	r3, sp, #0x8
  3f435c: 4628         	mov	r0, r5
  3f435e: 4619         	mov	r1, r3
  3f4360: 47a0         	blx	r4
  3f4362: 9b01         	ldr	r3, [sp, #0x4]
  3f4364: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  3f4368: 681b         	ldr	r3, [r3]
  3f436a: 33c8         	adds	r3, #0xc8
  3f436c: 681b         	ldr	r3, [r3]
  3f436e: 9a01         	ldr	r2, [sp, #0x4]
  3f4370: f8d2 1120    	ldr.w	r1, [r2, #0x120]
  3f4374: 9a01         	ldr	r2, [sp, #0x4]
  3f4376: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  3f437a: 4608         	mov	r0, r1
  3f437c: 4611         	mov	r1, r2
  3f437e: 4798         	blx	r3
  3f4380: b005         	add	sp, #0x14
  3f4382: bd30         	pop	{r4, r5, pc}

// ==== SoldierView::setBodyTexture
//      file offset 0x3f4384 (= ELF address; Ghidra 0x404384), 198 bytes, Thumb-2
  3f4384: b530         	push	{r4, r5, lr}
  3f4386: b085         	sub	sp, #0x14
  3f4388: 9001         	str	r0, [sp, #0x4]
  3f438a: 9100         	str	r1, [sp]
  3f438c: 9b01         	ldr	r3, [sp, #0x4]
  3f438e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f4392: 2b00         	cmp	r3, #0x0
  3f4394: d015         	beq	0x3f43c2 <SoldierView::setBodyTexture(cocos2d::CCTexture2D*)+0x3e> @ imm = #0x2a
  3f4396: 9b01         	ldr	r3, [sp, #0x4]
  3f4398: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f439c: 681b         	ldr	r3, [r3]
  3f439e: 33f4         	adds	r3, #0xf4
  3f43a0: 681b         	ldr	r3, [r3]
  3f43a2: 9a01         	ldr	r2, [sp, #0x4]
  3f43a4: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f43a8: 9a01         	ldr	r2, [sp, #0x4]
  3f43aa: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3f43ae: 4608         	mov	r0, r1
  3f43b0: 4611         	mov	r1, r2
  3f43b2: 2200         	movs	r2, #0x0
  3f43b4: 4798         	blx	r3
  3f43b6: 9b01         	ldr	r3, [sp, #0x4]
  3f43b8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f43bc: 4618         	mov	r0, r3
  3f43be: f1a3 fd7b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a3af6
  3f43c2: 9800         	ldr	r0, [sp]
  3f43c4: f1e3 fe60    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e3cc0
  3f43c8: 4602         	mov	r2, r0
  3f43ca: 9b01         	ldr	r3, [sp, #0x4]
  3f43cc: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  3f43d0: 9b01         	ldr	r3, [sp, #0x4]
  3f43d2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f43d6: 681b         	ldr	r3, [r3]
  3f43d8: f503 73fa    	add.w	r3, r3, #0x1f4
  3f43dc: 681b         	ldr	r3, [r3]
  3f43de: 9a01         	ldr	r2, [sp, #0x4]
  3f43e0: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3f43e4: 4610         	mov	r0, r2
  3f43e6: 4798         	blx	r3
  3f43e8: 4603         	mov	r3, r0
  3f43ea: 4618         	mov	r0, r3
  3f43ec: f1fd fdca    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fdb94
  3f43f0: 9b01         	ldr	r3, [sp, #0x4]
  3f43f2: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f43f6: 4618         	mov	r0, r3
  3f43f8: f1a3 fd76    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3aec
  3f43fc: 9b01         	ldr	r3, [sp, #0x4]
  3f43fe: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3f4402: 681b         	ldr	r3, [r3]
  3f4404: 337c         	adds	r3, #0x7c
  3f4406: 681c         	ldr	r4, [r3]
  3f4408: 9b01         	ldr	r3, [sp, #0x4]
  3f440a: f8d3 50f4    	ldr.w	r5, [r3, #0xf4]
  3f440e: ab02         	add	r3, sp, #0x8
  3f4410: 4618         	mov	r0, r3
  3f4412: f04f 517c    	mov.w	r1, #0x3f000000
  3f4416: f04f 527c    	mov.w	r2, #0x3f000000
  3f441a: f19e fc69    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e8d2
  3f441e: ab02         	add	r3, sp, #0x8
  3f4420: 4628         	mov	r0, r5
  3f4422: 4619         	mov	r1, r3
  3f4424: 47a0         	blx	r4
  3f4426: 9b01         	ldr	r3, [sp, #0x4]
  3f4428: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f442c: 681b         	ldr	r3, [r3]
  3f442e: 33cc         	adds	r3, #0xcc
  3f4430: 681b         	ldr	r3, [r3]
  3f4432: 9a01         	ldr	r2, [sp, #0x4]
  3f4434: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f4438: 9a01         	ldr	r2, [sp, #0x4]
  3f443a: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  3f443e: 4608         	mov	r0, r1
  3f4440: 4611         	mov	r1, r2
  3f4442: 2202         	movs	r2, #0x2
  3f4444: 4798         	blx	r3
  3f4446: b005         	add	sp, #0x14
  3f4448: bd30         	pop	{r4, r5, pc}

// ==== SoldierView::setArmTexture
//      file offset 0x3f444c (= ELF address; Ghidra 0x40444c), 400 bytes, Thumb-2
  3f444c: b530         	push	{r4, r5, lr}
  3f444e: b085         	sub	sp, #0x14
  3f4450: 9001         	str	r0, [sp, #0x4]
  3f4452: 9100         	str	r1, [sp]
  3f4454: 9b01         	ldr	r3, [sp, #0x4]
  3f4456: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f445a: 2b00         	cmp	r3, #0x0
  3f445c: d015         	beq	0x3f448a <SoldierView::setArmTexture(cocos2d::CCTexture2D*)+0x3e> @ imm = #0x2a
  3f445e: 9b01         	ldr	r3, [sp, #0x4]
  3f4460: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f4464: 681b         	ldr	r3, [r3]
  3f4466: 33f4         	adds	r3, #0xf4
  3f4468: 681b         	ldr	r3, [r3]
  3f446a: 9a01         	ldr	r2, [sp, #0x4]
  3f446c: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f4470: 9a01         	ldr	r2, [sp, #0x4]
  3f4472: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f4476: 4608         	mov	r0, r1
  3f4478: 4611         	mov	r1, r2
  3f447a: 2200         	movs	r2, #0x0
  3f447c: 4798         	blx	r3
  3f447e: 9b01         	ldr	r3, [sp, #0x4]
  3f4480: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f4484: 4618         	mov	r0, r3
  3f4486: f1a3 fd17    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a3a2e
  3f448a: 9800         	ldr	r0, [sp]
  3f448c: f1e3 fdfc    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e3bf8
  3f4490: 4602         	mov	r2, r0
  3f4492: 9b01         	ldr	r3, [sp, #0x4]
  3f4494: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3f4498: 9b01         	ldr	r3, [sp, #0x4]
  3f449a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f449e: 681b         	ldr	r3, [r3]
  3f44a0: f503 73fa    	add.w	r3, r3, #0x1f4
  3f44a4: 681b         	ldr	r3, [r3]
  3f44a6: 9a01         	ldr	r2, [sp, #0x4]
  3f44a8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f44ac: 4610         	mov	r0, r2
  3f44ae: 4798         	blx	r3
  3f44b0: 4603         	mov	r3, r0
  3f44b2: 4618         	mov	r0, r3
  3f44b4: f1fd fd66    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fdacc
  3f44b8: 9b01         	ldr	r3, [sp, #0x4]
  3f44ba: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f44be: 4618         	mov	r0, r3
  3f44c0: f1a3 fd12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3a24
  3f44c4: 9b01         	ldr	r3, [sp, #0x4]
  3f44c6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f44ca: 681b         	ldr	r3, [r3]
  3f44cc: 337c         	adds	r3, #0x7c
  3f44ce: 681c         	ldr	r4, [r3]
  3f44d0: 9b01         	ldr	r3, [sp, #0x4]
  3f44d2: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3f44d6: ab02         	add	r3, sp, #0x8
  3f44d8: 4618         	mov	r0, r3
  3f44da: f64c 41cd    	movw	r1, #0xcccd
  3f44de: f6c3 51cc    	movt	r1, #0x3dcc
  3f44e2: f649 129a    	movw	r2, #0x999a
  3f44e6: f6c3 7219    	movt	r2, #0x3f19
  3f44ea: f19e fc01    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e802
  3f44ee: ab02         	add	r3, sp, #0x8
  3f44f0: 4628         	mov	r0, r5
  3f44f2: 4619         	mov	r1, r3
  3f44f4: 47a0         	blx	r4
  3f44f6: 9b01         	ldr	r3, [sp, #0x4]
  3f44f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f44fc: 681b         	ldr	r3, [r3]
  3f44fe: 33cc         	adds	r3, #0xcc
  3f4500: 681b         	ldr	r3, [r3]
  3f4502: 9a01         	ldr	r2, [sp, #0x4]
  3f4504: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f4508: 9a01         	ldr	r2, [sp, #0x4]
  3f450a: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f450e: 4608         	mov	r0, r1
  3f4510: 4611         	mov	r1, r2
  3f4512: 2201         	movs	r2, #0x1
  3f4514: 4798         	blx	r3
  3f4516: 9b01         	ldr	r3, [sp, #0x4]
  3f4518: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f451c: 2b00         	cmp	r3, #0x0
  3f451e: d015         	beq	0x3f454c <SoldierView::setArmTexture(cocos2d::CCTexture2D*)+0x100> @ imm = #0x2a
  3f4520: 9b01         	ldr	r3, [sp, #0x4]
  3f4522: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f4526: 681b         	ldr	r3, [r3]
  3f4528: 33f4         	adds	r3, #0xf4
  3f452a: 681b         	ldr	r3, [r3]
  3f452c: 9a01         	ldr	r2, [sp, #0x4]
  3f452e: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f4532: 9a01         	ldr	r2, [sp, #0x4]
  3f4534: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3f4538: 4608         	mov	r0, r1
  3f453a: 4611         	mov	r1, r2
  3f453c: 2200         	movs	r2, #0x0
  3f453e: 4798         	blx	r3
  3f4540: 9b01         	ldr	r3, [sp, #0x4]
  3f4542: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f4546: 4618         	mov	r0, r3
  3f4548: f1a3 fcb6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a396c
  3f454c: 9800         	ldr	r0, [sp]
  3f454e: f1e3 fd9b    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e3b36
  3f4552: 4602         	mov	r2, r0
  3f4554: 9b01         	ldr	r3, [sp, #0x4]
  3f4556: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3f455a: 9b01         	ldr	r3, [sp, #0x4]
  3f455c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f4560: 681b         	ldr	r3, [r3]
  3f4562: f503 73fa    	add.w	r3, r3, #0x1f4
  3f4566: 681b         	ldr	r3, [r3]
  3f4568: 9a01         	ldr	r2, [sp, #0x4]
  3f456a: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3f456e: 4610         	mov	r0, r2
  3f4570: 4798         	blx	r3
  3f4572: 4603         	mov	r3, r0
  3f4574: 4618         	mov	r0, r3
  3f4576: f1fd fd05    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fda0a
  3f457a: 9b01         	ldr	r3, [sp, #0x4]
  3f457c: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f4580: 4618         	mov	r0, r3
  3f4582: f1a3 fcb1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3962
  3f4586: 9b01         	ldr	r3, [sp, #0x4]
  3f4588: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  3f458c: 681b         	ldr	r3, [r3]
  3f458e: 337c         	adds	r3, #0x7c
  3f4590: 681c         	ldr	r4, [r3]
  3f4592: 9b01         	ldr	r3, [sp, #0x4]
  3f4594: f8d3 50f8    	ldr.w	r5, [r3, #0xf8]
  3f4598: ab02         	add	r3, sp, #0x8
  3f459a: 4618         	mov	r0, r3
  3f459c: f64c 41cd    	movw	r1, #0xcccd
  3f45a0: f6c3 51cc    	movt	r1, #0x3dcc
  3f45a4: f649 129a    	movw	r2, #0x999a
  3f45a8: f6c3 7219    	movt	r2, #0x3f19
  3f45ac: f19e fba0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e740
  3f45b0: ab02         	add	r3, sp, #0x8
  3f45b2: 4628         	mov	r0, r5
  3f45b4: 4619         	mov	r1, r3
  3f45b6: 47a0         	blx	r4
  3f45b8: 9b01         	ldr	r3, [sp, #0x4]
  3f45ba: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f45be: 681b         	ldr	r3, [r3]
  3f45c0: 33cc         	adds	r3, #0xcc
  3f45c2: 681b         	ldr	r3, [r3]
  3f45c4: 9a01         	ldr	r2, [sp, #0x4]
  3f45c6: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f45ca: 9a01         	ldr	r2, [sp, #0x4]
  3f45cc: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  3f45d0: 4608         	mov	r0, r1
  3f45d2: 4611         	mov	r1, r2
  3f45d4: 2201         	movs	r2, #0x1
  3f45d6: 4798         	blx	r3
  3f45d8: b005         	add	sp, #0x14
  3f45da: bd30         	pop	{r4, r5, pc}

// ==== SoldierView::setLegTexture
//      file offset 0x3f45dc (= ELF address; Ghidra 0x4045dc), 388 bytes, Thumb-2
  3f45dc: b530         	push	{r4, r5, lr}
  3f45de: b085         	sub	sp, #0x14
  3f45e0: 9001         	str	r0, [sp, #0x4]
  3f45e2: 9100         	str	r1, [sp]
  3f45e4: 9b01         	ldr	r3, [sp, #0x4]
  3f45e6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f45ea: 2b00         	cmp	r3, #0x0
  3f45ec: d015         	beq	0x3f461a <SoldierView::setLegTexture(cocos2d::CCTexture2D*)+0x3e> @ imm = #0x2a
  3f45ee: 9b01         	ldr	r3, [sp, #0x4]
  3f45f0: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f45f4: 681b         	ldr	r3, [r3]
  3f45f6: 33f4         	adds	r3, #0xf4
  3f45f8: 681b         	ldr	r3, [r3]
  3f45fa: 9a01         	ldr	r2, [sp, #0x4]
  3f45fc: f8d2 1108    	ldr.w	r1, [r2, #0x108]
  3f4600: 9a01         	ldr	r2, [sp, #0x4]
  3f4602: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3f4606: 4608         	mov	r0, r1
  3f4608: 4611         	mov	r1, r2
  3f460a: 2200         	movs	r2, #0x0
  3f460c: 4798         	blx	r3
  3f460e: 9b01         	ldr	r3, [sp, #0x4]
  3f4610: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f4614: 4618         	mov	r0, r3
  3f4616: f1a3 fc4f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a389e
  3f461a: 9800         	ldr	r0, [sp]
  3f461c: f1e3 fd34    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e3a68
  3f4620: 4602         	mov	r2, r0
  3f4622: 9b01         	ldr	r3, [sp, #0x4]
  3f4624: f8c3 2104    	str.w	r2, [r3, #0x104]
  3f4628: 9b01         	ldr	r3, [sp, #0x4]
  3f462a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f462e: 681b         	ldr	r3, [r3]
  3f4630: f503 73fa    	add.w	r3, r3, #0x1f4
  3f4634: 681b         	ldr	r3, [r3]
  3f4636: 9a01         	ldr	r2, [sp, #0x4]
  3f4638: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3f463c: 4610         	mov	r0, r2
  3f463e: 4798         	blx	r3
  3f4640: 4603         	mov	r3, r0
  3f4642: 4618         	mov	r0, r3
  3f4644: f1fd fc9e    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fd93c
  3f4648: 9b01         	ldr	r3, [sp, #0x4]
  3f464a: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f464e: 4618         	mov	r0, r3
  3f4650: f1a3 fc4a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3894
  3f4654: 9b01         	ldr	r3, [sp, #0x4]
  3f4656: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  3f465a: 681b         	ldr	r3, [r3]
  3f465c: 337c         	adds	r3, #0x7c
  3f465e: 681c         	ldr	r4, [r3]
  3f4660: 9b01         	ldr	r3, [sp, #0x4]
  3f4662: f8d3 5104    	ldr.w	r5, [r3, #0x104]
  3f4666: ab02         	add	r3, sp, #0x8
  3f4668: 4618         	mov	r0, r3
  3f466a: f04f 517c    	mov.w	r1, #0x3f000000
  3f466e: f246 6266    	movw	r2, #0x6666
  3f4672: f6c3 7266    	movt	r2, #0x3f66
  3f4676: f19e fb3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e676
  3f467a: ab02         	add	r3, sp, #0x8
  3f467c: 4628         	mov	r0, r5
  3f467e: 4619         	mov	r1, r3
  3f4680: 47a0         	blx	r4
  3f4682: 9b01         	ldr	r3, [sp, #0x4]
  3f4684: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  3f4688: 681b         	ldr	r3, [r3]
  3f468a: 33c8         	adds	r3, #0xc8
  3f468c: 681b         	ldr	r3, [r3]
  3f468e: 9a01         	ldr	r2, [sp, #0x4]
  3f4690: f8d2 1108    	ldr.w	r1, [r2, #0x108]
  3f4694: 9a01         	ldr	r2, [sp, #0x4]
  3f4696: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  3f469a: 4608         	mov	r0, r1
  3f469c: 4611         	mov	r1, r2
  3f469e: 4798         	blx	r3
  3f46a0: 9b01         	ldr	r3, [sp, #0x4]
  3f46a2: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f46a6: 2b00         	cmp	r3, #0x0
  3f46a8: d015         	beq	0x3f46d6 <SoldierView::setLegTexture(cocos2d::CCTexture2D*)+0xfa> @ imm = #0x2a
  3f46aa: 9b01         	ldr	r3, [sp, #0x4]
  3f46ac: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f46b0: 681b         	ldr	r3, [r3]
  3f46b2: 33f4         	adds	r3, #0xf4
  3f46b4: 681b         	ldr	r3, [r3]
  3f46b6: 9a01         	ldr	r2, [sp, #0x4]
  3f46b8: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3f46bc: 9a01         	ldr	r2, [sp, #0x4]
  3f46be: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3f46c2: 4608         	mov	r0, r1
  3f46c4: 4611         	mov	r1, r2
  3f46c6: 2200         	movs	r2, #0x0
  3f46c8: 4798         	blx	r3
  3f46ca: 9b01         	ldr	r3, [sp, #0x4]
  3f46cc: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f46d0: 4618         	mov	r0, r3
  3f46d2: f1a3 fbf1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a37e2
  3f46d6: 9800         	ldr	r0, [sp]
  3f46d8: f1e3 fcd6    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x1e39ac
  3f46dc: 4602         	mov	r2, r0
  3f46de: 9b01         	ldr	r3, [sp, #0x4]
  3f46e0: f8c3 2100    	str.w	r2, [r3, #0x100]
  3f46e4: 9b01         	ldr	r3, [sp, #0x4]
  3f46e6: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f46ea: 681b         	ldr	r3, [r3]
  3f46ec: f503 73fa    	add.w	r3, r3, #0x1f4
  3f46f0: 681b         	ldr	r3, [r3]
  3f46f2: 9a01         	ldr	r2, [sp, #0x4]
  3f46f4: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3f46f8: 4610         	mov	r0, r2
  3f46fa: 4798         	blx	r3
  3f46fc: 4603         	mov	r3, r0
  3f46fe: 4618         	mov	r0, r3
  3f4700: f1fd fc40    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x1fd880
  3f4704: 9b01         	ldr	r3, [sp, #0x4]
  3f4706: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f470a: 4618         	mov	r0, r3
  3f470c: f1a3 fbec    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a37d8
  3f4710: 9b01         	ldr	r3, [sp, #0x4]
  3f4712: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  3f4716: 681b         	ldr	r3, [r3]
  3f4718: 337c         	adds	r3, #0x7c
  3f471a: 681c         	ldr	r4, [r3]
  3f471c: 9b01         	ldr	r3, [sp, #0x4]
  3f471e: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  3f4722: ab02         	add	r3, sp, #0x8
  3f4724: 4618         	mov	r0, r3
  3f4726: f04f 517c    	mov.w	r1, #0x3f000000
  3f472a: f246 6266    	movw	r2, #0x6666
  3f472e: f6c3 7266    	movt	r2, #0x3f66
  3f4732: f19e fadd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x19e5ba
  3f4736: ab02         	add	r3, sp, #0x8
  3f4738: 4628         	mov	r0, r5
  3f473a: 4619         	mov	r1, r3
  3f473c: 47a0         	blx	r4
  3f473e: 9b01         	ldr	r3, [sp, #0x4]
  3f4740: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3f4744: 681b         	ldr	r3, [r3]
  3f4746: 33c8         	adds	r3, #0xc8
  3f4748: 681b         	ldr	r3, [r3]
  3f474a: 9a01         	ldr	r2, [sp, #0x4]
  3f474c: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  3f4750: 9a01         	ldr	r2, [sp, #0x4]
  3f4752: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  3f4756: 4608         	mov	r0, r1
  3f4758: 4611         	mov	r1, r2
  3f475a: 4798         	blx	r3
  3f475c: b005         	add	sp, #0x14
  3f475e: bd30         	pop	{r4, r5, pc}
