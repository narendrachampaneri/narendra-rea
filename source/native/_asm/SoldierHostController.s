// SoldierHostController: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 61 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierHostController.cpp

// ==== SoldierHostController::SoldierHostController
//      file offset 0x3e5f50 (= ELF address; Ghidra 0x3f5f50), 60 bytes, Thumb-2
  3e5f50: b510         	push	{r4, lr}
  3e5f52: b082         	sub	sp, #0x8
  3e5f54: 9001         	str	r0, [sp, #0x4]
  3e5f56: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x3e5f84 <SoldierHostController::SoldierHostController()+0x34>
  3e5f58: 447c         	add	r4, pc
  3e5f5a: 9b01         	ldr	r3, [sp, #0x4]
  3e5f5c: 4618         	mov	r0, r3
  3e5f5e: f7fd ff5d    	bl	0x3e3e1c <SoldierController::SoldierController()> @ imm = #-0x2146
  3e5f62: 9b01         	ldr	r3, [sp, #0x4]
  3e5f64: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3e5f88 <SoldierHostController::SoldierHostController()+0x38>
  3e5f66: 58a2         	ldr	r2, [r4, r2]
  3e5f68: 3208         	adds	r2, #0x8
  3e5f6a: 601a         	str	r2, [r3]
  3e5f6c: 9b01         	ldr	r3, [sp, #0x4]
  3e5f6e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3e5f88 <SoldierHostController::SoldierHostController()+0x38>
  3e5f70: 58a2         	ldr	r2, [r4, r2]
  3e5f72: f502 724f    	add.w	r2, r2, #0x33c
  3e5f76: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3e5f7a: 9b01         	ldr	r3, [sp, #0x4]
  3e5f7c: 4618         	mov	r0, r3
  3e5f7e: b002         	add	sp, #0x8
  3e5f80: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e5f81); words below are literal-pool data ---
  3e5f82: bf00         	nop
  3e5f84: cab0         	ldm	r2!, {r4, r5, r7}
  3e5f86: 0054         	lsls	r4, r2, #0x1
  3e5f88: df10         	svc	#0x10
  3e5f8a: ffff 0000    	<unknown>

// ==== SoldierHostController::init
//      file offset 0x3e5f90 (= ELF address; Ghidra 0x3f5f90), 632 bytes, Thumb-2
  3e5f90: b510         	push	{r4, lr}
  3e5f92: b08a         	sub	sp, #0x28
  3e5f94: 9005         	str	r0, [sp, #0x14]
  3e5f96: 9b05         	ldr	r3, [sp, #0x14]
  3e5f98: 4618         	mov	r0, r3
  3e5f9a: f7fd ff8b    	bl	0x3e3eb4 <SoldierController::init()> @ imm = #-0x20ea
  3e5f9e: 4603         	mov	r3, r0
  3e5fa0: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3e5fa4: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3e5fa8: f083 0301    	eor	r3, r3, #0x1
  3e5fac: b2db         	uxtb	r3, r3
  3e5fae: 2b00         	cmp	r3, #0x0
  3e5fb0: d001         	beq	0x3e5fb6 <SoldierHostController::init()+0x26> @ imm = #0x2
  3e5fb2: 2300         	movs	r3, #0x0
  3e5fb4: e11d         	b	0x3e61f2 <SoldierHostController::init()+0x262> @ imm = #0x23a
  3e5fb6: 9b05         	ldr	r3, [sp, #0x14]
  3e5fb8: f04f 0200    	mov.w	r2, #0x0
  3e5fbc: f8c3 21e4    	str.w	r2, [r3, #0x1e4]
  3e5fc0: 9b05         	ldr	r3, [sp, #0x14]
  3e5fc2: f04f 0200    	mov.w	r2, #0x0
  3e5fc6: f8c3 2184    	str.w	r2, [r3, #0x184]
  3e5fca: 9b05         	ldr	r3, [sp, #0x14]
  3e5fcc: f04f 0200    	mov.w	r2, #0x0
  3e5fd0: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3e5fd4: 9b05         	ldr	r3, [sp, #0x14]
  3e5fd6: f04f 0200    	mov.w	r2, #0x0
  3e5fda: f8c3 2190    	str.w	r2, [r3, #0x190]
  3e5fde: 9b05         	ldr	r3, [sp, #0x14]
  3e5fe0: f04f 0200    	mov.w	r2, #0x0
  3e5fe4: f8c3 2188    	str.w	r2, [r3, #0x188]
  3e5fe8: 9b05         	ldr	r3, [sp, #0x14]
  3e5fea: f04f 0200    	mov.w	r2, #0x0
  3e5fee: f8c3 2194    	str.w	r2, [r3, #0x194]
  3e5ff2: 9b05         	ldr	r3, [sp, #0x14]
  3e5ff4: f04f 527d    	mov.w	r2, #0x3f400000
  3e5ff8: f8c3 2108    	str.w	r2, [r3, #0x108]
  3e5ffc: 9b05         	ldr	r3, [sp, #0x14]
  3e5ffe: 2200         	movs	r2, #0x0
  3e6000: f883 2104    	strb.w	r2, [r3, #0x104]
  3e6004: 9b05         	ldr	r3, [sp, #0x14]
  3e6006: 2200         	movs	r2, #0x0
  3e6008: f883 211c    	strb.w	r2, [r3, #0x11c]
  3e600c: 9b05         	ldr	r3, [sp, #0x14]
  3e600e: 2264         	movs	r2, #0x64
  3e6010: f8c3 2180    	str.w	r2, [r3, #0x180]
  3e6014: 9b05         	ldr	r3, [sp, #0x14]
  3e6016: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  3e601a: ee07 3a10    	vmov	s14, r3
  3e601e: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e6022: 9b05         	ldr	r3, [sp, #0x14]
  3e6024: edc3 7a66    	vstr	s15, [r3, #408]
  3e6028: 9b05         	ldr	r3, [sp, #0x14]
  3e602a: 2200         	movs	r2, #0x0
  3e602c: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3e6030: 9b05         	ldr	r3, [sp, #0x14]
  3e6032: 2200         	movs	r2, #0x0
  3e6034: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3e6038: 9b05         	ldr	r3, [sp, #0x14]
  3e603a: f04f 0200    	mov.w	r2, #0x0
  3e603e: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3e6042: 9b05         	ldr	r3, [sp, #0x14]
  3e6044: f44f 4200    	mov.w	r2, #0x8000
  3e6048: f2c4 32a2    	movt	r2, #0x43a2
  3e604c: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3e6050: 9b05         	ldr	r3, [sp, #0x14]
  3e6052: f04f 0200    	mov.w	r2, #0x0
  3e6056: f2c4 323e    	movt	r2, #0x433e
  3e605a: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3e605e: 9b05         	ldr	r3, [sp, #0x14]
  3e6060: f04f 527c    	mov.w	r2, #0x3f000000
  3e6064: f8c3 2120    	str.w	r2, [r3, #0x120]
  3e6068: 9c05         	ldr	r4, [sp, #0x14]
  3e606a: 466b         	mov	r3, sp
  3e606c: 4618         	mov	r0, r3
  3e606e: ed9f 0b62    	vldr	d0, [pc, #392]          @ 0x3e61f8 <SoldierHostController::init()+0x268>
  3e6072: ed9f 1b63    	vldr	d1, [pc, #396]          @ 0x3e6200 <SoldierHostController::init()+0x270>
  3e6076: f7fe fd9f    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x14c2
  3e607a: f504 7494    	add.w	r4, r4, #0x128
  3e607e: 466b         	mov	r3, sp
  3e6080: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e6082: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e6086: 9b05         	ldr	r3, [sp, #0x14]
  3e6088: f04f 0200    	mov.w	r2, #0x0
  3e608c: f8c3 2110    	str.w	r2, [r3, #0x110]
  3e6090: 9b05         	ldr	r3, [sp, #0x14]
  3e6092: f503 748a    	add.w	r4, r3, #0x114
  3e6096: ab08         	add	r3, sp, #0x20
  3e6098: 4618         	mov	r0, r3
  3e609a: f04f 0100    	mov.w	r1, #0x0
  3e609e: f04f 0200    	mov.w	r2, #0x0
  3e60a2: f1ac fe25    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1acc4a
  3e60a6: ab08         	add	r3, sp, #0x20
  3e60a8: 4620         	mov	r0, r4
  3e60aa: 4619         	mov	r1, r3
  3e60ac: f1ac fe4e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1acc9c
  3e60b0: 9b05         	ldr	r3, [sp, #0x14]
  3e60b2: f04f 0200    	mov.w	r2, #0x0
  3e60b6: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3e60ba: 9b05         	ldr	r3, [sp, #0x14]
  3e60bc: f04f 0200    	mov.w	r2, #0x0
  3e60c0: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3e60c4: 9b05         	ldr	r3, [sp, #0x14]
  3e60c6: 2204         	movs	r2, #0x4
  3e60c8: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3e60cc: 9b05         	ldr	r3, [sp, #0x14]
  3e60ce: f04f 527e    	mov.w	r2, #0x3f800000
  3e60d2: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3e60d6: 9b05         	ldr	r3, [sp, #0x14]
  3e60d8: f04f 527e    	mov.w	r2, #0x3f800000
  3e60dc: f8c3 21c4    	str.w	r2, [r3, #0x1c4]
  3e60e0: 9b05         	ldr	r3, [sp, #0x14]
  3e60e2: f04f 527e    	mov.w	r2, #0x3f800000
  3e60e6: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  3e60ea: 9b05         	ldr	r3, [sp, #0x14]
  3e60ec: f04f 527e    	mov.w	r2, #0x3f800000
  3e60f0: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  3e60f4: 9b05         	ldr	r3, [sp, #0x14]
  3e60f6: f04f 527e    	mov.w	r2, #0x3f800000
  3e60fa: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  3e60fe: 9b05         	ldr	r3, [sp, #0x14]
  3e6100: 2200         	movs	r2, #0x0
  3e6102: f883 21f0    	strb.w	r2, [r3, #0x1f0]
  3e6106: 9b05         	ldr	r3, [sp, #0x14]
  3e6108: 2200         	movs	r2, #0x0
  3e610a: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e610e: 9b05         	ldr	r3, [sp, #0x14]
  3e6110: 2200         	movs	r2, #0x0
  3e6112: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e6116: 9b05         	ldr	r3, [sp, #0x14]
  3e6118: 2200         	movs	r2, #0x0
  3e611a: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e611e: 9b05         	ldr	r3, [sp, #0x14]
  3e6120: 2200         	movs	r2, #0x0
  3e6122: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e6126: 9b05         	ldr	r3, [sp, #0x14]
  3e6128: f04f 0200    	mov.w	r2, #0x0
  3e612c: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3e6130: 9b05         	ldr	r3, [sp, #0x14]
  3e6132: f64c 42cd    	movw	r2, #0xcccd
  3e6136: f6c3 52cc    	movt	r2, #0x3dcc
  3e613a: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  3e613e: 9b05         	ldr	r3, [sp, #0x14]
  3e6140: 2200         	movs	r2, #0x0
  3e6142: f883 2166    	strb.w	r2, [r3, #0x166]
  3e6146: 9b05         	ldr	r3, [sp, #0x14]
  3e6148: f04f 0200    	mov.w	r2, #0x0
  3e614c: f8c3 2178    	str.w	r2, [r3, #0x178]
  3e6150: 9b05         	ldr	r3, [sp, #0x14]
  3e6152: f04f 0200    	mov.w	r2, #0x0
  3e6156: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3e615a: 9b05         	ldr	r3, [sp, #0x14]
  3e615c: f04f 0200    	mov.w	r2, #0x0
  3e6160: f8c3 21d4    	str.w	r2, [r3, #0x1d4]
  3e6164: 9b05         	ldr	r3, [sp, #0x14]
  3e6166: f04f 0200    	mov.w	r2, #0x0
  3e616a: f8c3 21d8    	str.w	r2, [r3, #0x1d8]
  3e616e: 9b05         	ldr	r3, [sp, #0x14]
  3e6170: f04f 0200    	mov.w	r2, #0x0
  3e6174: f8c3 21dc    	str.w	r2, [r3, #0x1dc]
  3e6178: 9b05         	ldr	r3, [sp, #0x14]
  3e617a: f04f 0200    	mov.w	r2, #0x0
  3e617e: f8c3 21e0    	str.w	r2, [r3, #0x1e0]
  3e6182: 9b05         	ldr	r3, [sp, #0x14]
  3e6184: 2203         	movs	r2, #0x3
  3e6186: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3e618a: 9b05         	ldr	r3, [sp, #0x14]
  3e618c: f04f 32ff    	mov.w	r2, #0xffffffff
  3e6190: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  3e6194: f1b3 fdce    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1b3b9c
  3e6198: 4602         	mov	r2, r0
  3e619a: 9b05         	ldr	r3, [sp, #0x14]
  3e619c: f8c3 21e8    	str.w	r2, [r3, #0x1e8]
  3e61a0: 9b05         	ldr	r3, [sp, #0x14]
  3e61a2: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e61a6: 4618         	mov	r0, r3
  3e61a8: f1b1 fe9e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b1d3c
  3e61ac: f1b3 fdc2    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1b3b84
  3e61b0: 4602         	mov	r2, r0
  3e61b2: 9b05         	ldr	r3, [sp, #0x14]
  3e61b4: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3e61b8: 9b05         	ldr	r3, [sp, #0x14]
  3e61ba: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e61be: 4618         	mov	r0, r3
  3e61c0: f1b1 fe92    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b1d24
  3e61c4: 9b05         	ldr	r3, [sp, #0x14]
  3e61c6: 681b         	ldr	r3, [r3]
  3e61c8: f503 73e6    	add.w	r3, r3, #0x1cc
  3e61cc: 681b         	ldr	r3, [r3]
  3e61ce: 9805         	ldr	r0, [sp, #0x14]
  3e61d0: 4798         	blx	r3
  3e61d2: 9b05         	ldr	r3, [sp, #0x14]
  3e61d4: 681b         	ldr	r3, [r3]
  3e61d6: f503 73e8    	add.w	r3, r3, #0x1d0
  3e61da: 681b         	ldr	r3, [r3]
  3e61dc: 9805         	ldr	r0, [sp, #0x14]
  3e61de: 4798         	blx	r3
  3e61e0: 9b05         	ldr	r3, [sp, #0x14]
  3e61e2: 681b         	ldr	r3, [r3]
  3e61e4: f503 7309    	add.w	r3, r3, #0x224
  3e61e8: 681b         	ldr	r3, [r3]
  3e61ea: 9a05         	ldr	r2, [sp, #0x14]
  3e61ec: 4610         	mov	r0, r2
  3e61ee: 4798         	blx	r3
  3e61f0: 2301         	movs	r3, #0x1
  3e61f2: 4618         	mov	r0, r3
  3e61f4: b00a         	add	sp, #0x28
  3e61f6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e61f7); words below are literal-pool data ---
  3e6204: 0000         	movs	r0, r0
  3e6206: c049         	stm	r0!, {r0, r3, r6}

// ==== SoldierHostController::~SoldierHostController
//      file offset 0x3e6208 (= ELF address; Ghidra 0x3f6208), 96 bytes, Thumb-2
  3e6208: b500         	push	{lr}
  3e620a: b083         	sub	sp, #0xc
  3e620c: 9001         	str	r0, [sp, #0x4]
  3e620e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3e6260 <SoldierHostController::~SoldierHostController()+0x58>
  3e6210: 447b         	add	r3, pc
  3e6212: 9a01         	ldr	r2, [sp, #0x4]
  3e6214: 4913         	ldr	r1, [pc, #0x4c]         @ 0x3e6264 <SoldierHostController::~SoldierHostController()+0x5c>
  3e6216: 5859         	ldr	r1, [r3, r1]
  3e6218: 3108         	adds	r1, #0x8
  3e621a: 6011         	str	r1, [r2]
  3e621c: 9a01         	ldr	r2, [sp, #0x4]
  3e621e: 4911         	ldr	r1, [pc, #0x44]         @ 0x3e6264 <SoldierHostController::~SoldierHostController()+0x5c>
  3e6220: 585b         	ldr	r3, [r3, r1]
  3e6222: f503 734f    	add.w	r3, r3, #0x33c
  3e6226: f8c2 30f8    	str.w	r3, [r2, #0xf8]
  3e622a: 9b01         	ldr	r3, [sp, #0x4]
  3e622c: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e6230: 4618         	mov	r0, r3
  3e6232: f1b1 fe41    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b1c82
  3e6236: 9b01         	ldr	r3, [sp, #0x4]
  3e6238: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e623c: 4618         	mov	r0, r3
  3e623e: f1b1 fe3b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b1c76
  3e6242: 9b01         	ldr	r3, [sp, #0x4]
  3e6244: 4618         	mov	r0, r3
  3e6246: f7fd fe9b    	bl	0x3e3f80 <SoldierController::~SoldierController()> @ imm = #-0x22ca
  3e624a: 2300         	movs	r3, #0x0
  3e624c: 2b00         	cmp	r3, #0x0
  3e624e: d002         	beq	0x3e6256 <SoldierHostController::~SoldierHostController()+0x4e> @ imm = #0x4
  3e6250: 9801         	ldr	r0, [sp, #0x4]
  3e6252: f3a1 ff27    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a1e4e
  3e6256: 9b01         	ldr	r3, [sp, #0x4]
  3e6258: 4618         	mov	r0, r3
  3e625a: b003         	add	sp, #0xc
  3e625c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e625f); words below are literal-pool data ---
  3e6260: c7f8         	stm	r7!, {r3, r4, r5, r6, r7}
  3e6262: 0054         	lsls	r4, r2, #0x1
  3e6264: df10         	svc	#0x10
  3e6266: ffff b500    	<unknown>

// ==== SoldierHostController::~SoldierHostController
//      file offset 0x3e6268 (= ELF address; Ghidra 0x3f6268), 28 bytes, Thumb-2
  3e6268: b500         	push	{lr}
  3e626a: b083         	sub	sp, #0xc
  3e626c: 9001         	str	r0, [sp, #0x4]
  3e626e: 9801         	ldr	r0, [sp, #0x4]
  3e6270: f7ff ffca    	bl	0x3e6208 <SoldierHostController::~SoldierHostController()> @ imm = #-0x6c
  3e6274: 9801         	ldr	r0, [sp, #0x4]
  3e6276: f3a1 ff15    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a1e2a
  3e627a: 9b01         	ldr	r3, [sp, #0x4]
  3e627c: 4618         	mov	r0, r3
  3e627e: b003         	add	sp, #0xc
  3e6280: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::initBody
//      file offset 0x3e6284 (= ELF address; Ghidra 0x3f6284), 116 bytes, Thumb-2
  3e6284: b500         	push	{lr}
  3e6286: b083         	sub	sp, #0xc
  3e6288: 9001         	str	r0, [sp, #0x4]
  3e628a: 9b01         	ldr	r3, [sp, #0x4]
  3e628c: edd3 7a6c    	vldr	s15, [r3, #432]
  3e6290: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e6294: 9b01         	ldr	r3, [sp, #0x4]
  3e6296: ed93 7a6c    	vldr	s14, [r3, #432]
  3e629a: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x3e62f0 <SoldierHostController::initBody()+0x6c>
  3e629e: ee67 7a27    	vmul.f32	s15, s14, s15
  3e62a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e62a6: ec51 0b16    	vmov	r0, r1, d6
  3e62aa: ec53 2b17    	vmov	r2, r3, d7
  3e62ae: f2ec ffcd    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2ecf9a
  3e62b2: 4602         	mov	r2, r0
  3e62b4: 9b01         	ldr	r3, [sp, #0x4]
  3e62b6: f8c3 2138    	str.w	r2, [r3, #0x138]
  3e62ba: 9b01         	ldr	r3, [sp, #0x4]
  3e62bc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e62c0: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3e62f4 <SoldierHostController::initBody()+0x70>
  3e62c2: 447a         	add	r2, pc
  3e62c4: 601a         	str	r2, [r3]
  3e62c6: 9b01         	ldr	r3, [sp, #0x4]
  3e62c8: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e62cc: f04f 0200    	mov.w	r2, #0x0
  3e62d0: f04f 0300    	mov.w	r3, #0x0
  3e62d4: f2c4 032c    	movt	r3, #0x402c
  3e62d8: e9c1 2322    	strd	r2, r3, [r1, #136]
  3e62dc: 9b01         	ldr	r3, [sp, #0x4]
  3e62de: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e62e2: 9a01         	ldr	r2, [sp, #0x4]
  3e62e4: f8c3 2090    	str.w	r2, [r3, #0x90]
  3e62e8: b003         	add	sp, #0xc
  3e62ea: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e62ed); words below are literal-pool data ---
  3e62ee: bf00         	nop
  3e62f0: 0000         	movs	r0, r0
  3e62f2: 4348         	muls	r0, r1, r0
  3e62f4: f9c3 ffff    	<unknown>

// ==== SoldierHostController::initShape
//      file offset 0x3e62f8 (= ELF address; Ghidra 0x3f62f8), 520 bytes, Thumb-2
  3e62f8: b570         	push	{r4, r5, r6, lr}
  3e62fa: ed2d 8b02    	vpush	{d8}
  3e62fe: b09e         	sub	sp, #0x78
  3e6300: 9005         	str	r0, [sp, #0x14]
  3e6302: 4a7c         	ldr	r2, [pc, #0x1f0]        @ 0x3e64f4 <SoldierHostController::initShape()+0x1fc>
  3e6304: 447a         	add	r2, pc
  3e6306: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3e64f8 <SoldierHostController::initShape()+0x200>
  3e6308: 58d3         	ldr	r3, [r2, r3]
  3e630a: 681b         	ldr	r3, [r3]
  3e630c: 9306         	str	r3, [sp, #0x18]
  3e630e: ed9d 7a06    	vldr	s14, [sp, #24]
  3e6312: eddf 7a77    	vldr	s15, [pc, #476]         @ 0x3e64f0 <SoldierHostController::initShape()+0x1f8>
  3e6316: ee67 7a27    	vmul.f32	s15, s14, s15
  3e631a: edcd 7a07    	vstr	s15, [sp, #28]
  3e631e: ed9d 7a06    	vldr	s14, [sp, #24]
  3e6322: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e6326: ee67 7a27    	vmul.f32	s15, s14, s15
  3e632a: edcd 7a08    	vstr	s15, [sp, #32]
  3e632e: ed9d 7a06    	vldr	s14, [sp, #24]
  3e6332: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3e6336: ee67 7a27    	vmul.f32	s15, s14, s15
  3e633a: edcd 7a09    	vstr	s15, [sp, #36]
  3e633e: eddd 7a09    	vldr	s15, [sp, #36]
  3e6342: eef1 7a67    	vneg.f32	s15, s15
  3e6346: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e634a: eddd 7a08    	vldr	s15, [sp, #32]
  3e634e: eeb1 7a67    	vneg.f32	s14, s15
  3e6352: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e6356: ee77 7a67    	vsub.f32	s15, s14, s15
  3e635a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e635e: ab0e         	add	r3, sp, #0x38
  3e6360: 4618         	mov	r0, r3
  3e6362: eeb0 0b46    	vmov.f64	d0, d6
  3e6366: eeb0 1b47    	vmov.f64	d1, d7
  3e636a: f7fe fc25    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x17b6
  3e636e: eddd 7a09    	vldr	s15, [sp, #36]
  3e6372: eef1 7a67    	vneg.f32	s15, s15
  3e6376: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e637a: ed9d 7a08    	vldr	s14, [sp, #32]
  3e637e: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e6382: ee77 7a67    	vsub.f32	s15, s14, s15
  3e6386: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e638a: ab12         	add	r3, sp, #0x48
  3e638c: 4618         	mov	r0, r3
  3e638e: eeb0 0b46    	vmov.f64	d0, d6
  3e6392: eeb0 1b47    	vmov.f64	d1, d7
  3e6396: f7fe fc0f    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x17e2
  3e639a: eddd 7a09    	vldr	s15, [sp, #36]
  3e639e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e63a2: ed9d 7a08    	vldr	s14, [sp, #32]
  3e63a6: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e63aa: ee77 7a67    	vsub.f32	s15, s14, s15
  3e63ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e63b2: ab16         	add	r3, sp, #0x58
  3e63b4: 4618         	mov	r0, r3
  3e63b6: eeb0 0b46    	vmov.f64	d0, d6
  3e63ba: eeb0 1b47    	vmov.f64	d1, d7
  3e63be: f7fe fbfb    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x180a
  3e63c2: eddd 7a09    	vldr	s15, [sp, #36]
  3e63c6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e63ca: eddd 7a08    	vldr	s15, [sp, #32]
  3e63ce: eeb1 7a67    	vneg.f32	s14, s15
  3e63d2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e63d6: ee77 7a67    	vsub.f32	s15, s14, s15
  3e63da: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e63de: ab1a         	add	r3, sp, #0x68
  3e63e0: 4618         	mov	r0, r3
  3e63e2: eeb0 0b46    	vmov.f64	d0, d6
  3e63e6: eeb0 1b47    	vmov.f64	d1, d7
  3e63ea: f7fe fbe5    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x1836
  3e63ee: 9b05         	ldr	r3, [sp, #0x14]
  3e63f0: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  3e63f4: ad0e         	add	r5, sp, #0x38
  3e63f6: 4b41         	ldr	r3, [pc, #0x104]        @ 0x3e64fc <SoldierHostController::initShape()+0x204>
  3e63f8: 447b         	add	r3, pc
  3e63fa: 466c         	mov	r4, sp
  3e63fc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e63fe: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e6402: 4630         	mov	r0, r6
  3e6404: 2104         	movs	r1, #0x4
  3e6406: 462a         	mov	r2, r5
  3e6408: f2ee faa0    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x2ee540
  3e640c: 4602         	mov	r2, r0
  3e640e: 9b05         	ldr	r3, [sp, #0x14]
  3e6410: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3e6414: 9b05         	ldr	r3, [sp, #0x14]
  3e6416: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e641a: a32f         	adr	r3, #188 <SoldierHostController::initShape()+0x155>
  3e641c: e9d3 2300    	ldrd	r2, r3, [r3]
  3e6420: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e6424: 9b05         	ldr	r3, [sp, #0x14]
  3e6426: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e642a: a32d         	adr	r3, #180 <SoldierHostController::initShape()+0x163>
  3e642c: e9d3 2300    	ldrd	r2, r3, [r3]
  3e6430: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e6434: 9b05         	ldr	r3, [sp, #0x14]
  3e6436: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e643a: 9a05         	ldr	r2, [sp, #0x14]
  3e643c: 651a         	str	r2, [r3, #0x50]
  3e643e: 9b05         	ldr	r3, [sp, #0x14]
  3e6440: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3e6444: eddd 7a07    	vldr	s15, [sp, #28]
  3e6448: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e644c: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3e6450: ee26 8b07    	vmul.f64	d8, d6, d7
  3e6454: ed9d 7a06    	vldr	s14, [sp, #24]
  3e6458: eddf 7a25    	vldr	s15, [pc, #148]         @ 0x3e64f0 <SoldierHostController::initShape()+0x1f8>
  3e645c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e6460: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e6464: ab0a         	add	r3, sp, #0x28
  3e6466: 4618         	mov	r0, r3
  3e6468: ed9f 0b1f    	vldr	d0, [pc, #124]          @ 0x3e64e8 <SoldierHostController::initShape()+0x1f0>
  3e646c: eeb0 1b47    	vmov.f64	d1, d7
  3e6470: f7fe fba2    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x18bc
  3e6474: 466c         	mov	r4, sp
  3e6476: ab0a         	add	r3, sp, #0x28
  3e6478: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e647a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e647e: 4628         	mov	r0, r5
  3e6480: ec53 2b18    	vmov	r2, r3, d8
  3e6484: f2ee fe6c    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x2eecd8
  3e6488: 4602         	mov	r2, r0
  3e648a: 9b05         	ldr	r3, [sp, #0x14]
  3e648c: f8c3 2140    	str.w	r2, [r3, #0x140]
  3e6490: 9b05         	ldr	r3, [sp, #0x14]
  3e6492: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3e6496: f04f 0200    	mov.w	r2, #0x0
  3e649a: f04f 0300    	mov.w	r3, #0x0
  3e649e: f6c3 73e0    	movt	r3, #0x3fe0
  3e64a2: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e64a6: 9b05         	ldr	r3, [sp, #0x14]
  3e64a8: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3e64ac: a30c         	adr	r3, #48 <SoldierHostController::initShape()+0x1c4>
  3e64ae: e9d3 2300    	ldrd	r2, r3, [r3]
  3e64b2: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e64b6: 9b05         	ldr	r3, [sp, #0x14]
  3e64b8: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e64bc: 9a05         	ldr	r2, [sp, #0x14]
  3e64be: 651a         	str	r2, [r3, #0x50]
  3e64c0: 9b05         	ldr	r3, [sp, #0x14]
  3e64c2: 681b         	ldr	r3, [r3]
  3e64c4: f503 7339    	add.w	r3, r3, #0x2e4
  3e64c8: 681b         	ldr	r3, [r3]
  3e64ca: 9805         	ldr	r0, [sp, #0x14]
  3e64cc: 2115         	movs	r1, #0x15
  3e64ce: 4798         	blx	r3
  3e64d0: b01e         	add	sp, #0x78
  3e64d2: ecbd 8b02    	vpop	{d8}
  3e64d6: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e64d7); words below are literal-pool data ---
  3e64d8: 0000         	movs	r0, r0
  3e64da: a000         	adr	r0, #0 <SoldierHostController::initShape()+0x1e6>
  3e64dc: 9999         	ldr	r1, [sp, #0x264]
  3e64de: 3fe9         	subs	r7, #0xe9
  3e64e0: 0000         	movs	r0, r0
  3e64e2: a000         	adr	r0, #0 <SoldierHostController::initShape()+0x1ee>
  3e64e4: 9999         	ldr	r1, [sp, #0x264]
  3e64e6: 3fb9         	subs	r7, #0xb9
  3e64f0: 0000         	movs	r0, r0
  3e64f2: 420c         	tst	r4, r1
  3e64f4: c704         	stm	r7!, {r2}
  3e64f6: 0054         	lsls	r4, r2, #0x1
  3e64f8: d748         	bvc	0x3e658c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8c> @ imm = #0x90
  3e64fa: ffff 20ac    	<unknown>
  3e64fe: 003f         	movs	r7, r7

// ==== SoldierHostController::updateStep
//      file offset 0x3e6500 (= ELF address; Ghidra 0x3f6500), 5460 bytes, Thumb-2
  3e6500: b082         	sub	sp, #0x8
  3e6502: b5f0         	push	{r4, r5, r6, r7, lr}
  3e6504: ed2d 8b02    	vpush	{d8}
  3e6508: b0ef         	sub	sp, #0x1bc
  3e650a: ac09         	add	r4, sp, #0x24
  3e650c: 6020         	str	r0, [r4]
  3e650e: a808         	add	r0, sp, #0x20
  3e6510: 6001         	str	r1, [r0]
  3e6512: a976         	add	r1, sp, #0x1d8
  3e6514: e881 000c    	stm.w	r1, {r2, r3}
  3e6518: 4c85         	ldr	r4, [pc, #0x214]        @ 0x3e6730 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x230>
  3e651a: 447c         	add	r4, pc
  3e651c: ab09         	add	r3, sp, #0x24
  3e651e: 681b         	ldr	r3, [r3]
  3e6520: ed93 7a61    	vldr	s14, [r3, #388]
  3e6524: ab08         	add	r3, sp, #0x20
  3e6526: edd3 7a00    	vldr	s15, [r3]
  3e652a: ee77 7a27    	vadd.f32	s15, s14, s15
  3e652e: ab09         	add	r3, sp, #0x24
  3e6530: 681b         	ldr	r3, [r3]
  3e6532: edc3 7a61    	vstr	s15, [r3, #388]
  3e6536: ab09         	add	r3, sp, #0x24
  3e6538: 681b         	ldr	r3, [r3]
  3e653a: ed93 7a42    	vldr	s14, [r3, #264]
  3e653e: ab08         	add	r3, sp, #0x20
  3e6540: edd3 7a00    	vldr	s15, [r3]
  3e6544: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6548: ab09         	add	r3, sp, #0x24
  3e654a: 681b         	ldr	r3, [r3]
  3e654c: edc3 7a42    	vstr	s15, [r3, #264]
  3e6550: ab09         	add	r3, sp, #0x24
  3e6552: 681b         	ldr	r3, [r3]
  3e6554: ed93 7a6b    	vldr	s14, [r3, #428]
  3e6558: ab08         	add	r3, sp, #0x20
  3e655a: edd3 7a00    	vldr	s15, [r3]
  3e655e: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6562: ab09         	add	r3, sp, #0x24
  3e6564: 681b         	ldr	r3, [r3]
  3e6566: edc3 7a6b    	vstr	s15, [r3, #428]
  3e656a: ab09         	add	r3, sp, #0x24
  3e656c: 681b         	ldr	r3, [r3]
  3e656e: ed93 7a65    	vldr	s14, [r3, #404]
  3e6572: ab08         	add	r3, sp, #0x20
  3e6574: edd3 7a00    	vldr	s15, [r3]
  3e6578: ee77 7a27    	vadd.f32	s15, s14, s15
  3e657c: ab09         	add	r3, sp, #0x24
  3e657e: 681b         	ldr	r3, [r3]
  3e6580: edc3 7a65    	vstr	s15, [r3, #404]
  3e6584: ab09         	add	r3, sp, #0x24
  3e6586: 681b         	ldr	r3, [r3]
  3e6588: ed93 7a62    	vldr	s14, [r3, #392]
  3e658c: ab08         	add	r3, sp, #0x20
  3e658e: edd3 7a00    	vldr	s15, [r3]
  3e6592: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6596: ab09         	add	r3, sp, #0x24
  3e6598: 681b         	ldr	r3, [r3]
  3e659a: edc3 7a62    	vstr	s15, [r3, #392]
  3e659e: ab09         	add	r3, sp, #0x24
  3e65a0: 681b         	ldr	r3, [r3]
  3e65a2: ed93 7a6f    	vldr	s14, [r3, #444]
  3e65a6: ab08         	add	r3, sp, #0x20
  3e65a8: edd3 7a00    	vldr	s15, [r3]
  3e65ac: ee77 7a27    	vadd.f32	s15, s14, s15
  3e65b0: ab09         	add	r3, sp, #0x24
  3e65b2: 681b         	ldr	r3, [r3]
  3e65b4: edc3 7a6f    	vstr	s15, [r3, #444]
  3e65b8: ab09         	add	r3, sp, #0x24
  3e65ba: 681b         	ldr	r3, [r3]
  3e65bc: f893 3166    	ldrb.w	r3, [r3, #0x166]
  3e65c0: 2b00         	cmp	r3, #0x0
  3e65c2: d016         	beq	0x3e65f2 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf2> @ imm = #0x2c
  3e65c4: ab09         	add	r3, sp, #0x24
  3e65c6: 681b         	ldr	r3, [r3]
  3e65c8: ed93 7a5e    	vldr	s14, [r3, #376]
  3e65cc: ab08         	add	r3, sp, #0x20
  3e65ce: edd3 7a00    	vldr	s15, [r3]
  3e65d2: ee77 7a27    	vadd.f32	s15, s14, s15
  3e65d6: ab09         	add	r3, sp, #0x24
  3e65d8: 681b         	ldr	r3, [r3]
  3e65da: edc3 7a5e    	vstr	s15, [r3, #376]
  3e65de: ab09         	add	r3, sp, #0x24
  3e65e0: 681b         	ldr	r3, [r3]
  3e65e2: 681b         	ldr	r3, [r3]
  3e65e4: f503 7338    	add.w	r3, r3, #0x2e0
  3e65e8: 681b         	ldr	r3, [r3]
  3e65ea: aa09         	add	r2, sp, #0x24
  3e65ec: 6810         	ldr	r0, [r2]
  3e65ee: 4798         	blx	r3
  3e65f0: e01a         	b	0x3e6628 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x128> @ imm = #0x34
  3e65f2: ab09         	add	r3, sp, #0x24
  3e65f4: 681b         	ldr	r3, [r3]
  3e65f6: ed93 7a79    	vldr	s14, [r3, #484]
  3e65fa: eddf 7a4b    	vldr	s15, [pc, #300]         @ 0x3e6728 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x228>
  3e65fe: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6602: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6606: d50f         	bpl	0x3e6628 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x128> @ imm = #0x1e
  3e6608: ab09         	add	r3, sp, #0x24
  3e660a: 681b         	ldr	r3, [r3]
  3e660c: edd3 7a79    	vldr	s15, [r3, #484]
  3e6610: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e6614: ed9f 7b40    	vldr	d7, [pc, #256]          @ 0x3e6718 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x218>
  3e6618: ee36 7b07    	vadd.f64	d7, d6, d7
  3e661c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e6620: ab09         	add	r3, sp, #0x24
  3e6622: 681b         	ldr	r3, [r3]
  3e6624: edc3 7a79    	vstr	s15, [r3, #484]
  3e6628: ab09         	add	r3, sp, #0x24
  3e662a: 681b         	ldr	r3, [r3]
  3e662c: edd3 7a5e    	vldr	s15, [r3, #376]
  3e6630: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e6634: ed9f 7b3a    	vldr	d7, [pc, #232]          @ 0x3e6720 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x220>
  3e6638: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e663c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6640: dd28         	ble	0x3e6694 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x194> @ imm = #0x50
  3e6642: ab09         	add	r3, sp, #0x24
  3e6644: 681b         	ldr	r3, [r3]
  3e6646: 681b         	ldr	r3, [r3]
  3e6648: f503 7337    	add.w	r3, r3, #0x2dc
  3e664c: 681d         	ldr	r5, [r3]
  3e664e: ab66         	add	r3, sp, #0x198
  3e6650: 4618         	mov	r0, r3
  3e6652: f3a3 fecf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a3d9e
  3e6656: aa6a         	add	r2, sp, #0x1a8
  3e6658: ab66         	add	r3, sp, #0x198
  3e665a: 4610         	mov	r0, r2
  3e665c: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x3e6734 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x234>
  3e665e: 447a         	add	r2, pc
  3e6660: 4611         	mov	r1, r2
  3e6662: 461a         	mov	r2, r3
  3e6664: f3d0 f9fc    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d03f8
  3e6668: af09         	add	r7, sp, #0x24
  3e666a: ae6a         	add	r6, sp, #0x1a8
  3e666c: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3e6738 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x238>
  3e666e: 447b         	add	r3, pc
  3e6670: 466a         	mov	r2, sp
  3e6672: f103 0108    	add.w	r1, r3, #0x8
  3e6676: c903         	ldm	r1, {r0, r1}
  3e6678: e882 0003    	stm.w	r2, {r0, r1}
  3e667c: cb0c         	ldm	r3, {r2, r3}
  3e667e: 6838         	ldr	r0, [r7]
  3e6680: 4631         	mov	r1, r6
  3e6682: 47a8         	blx	r5
  3e6684: ab6a         	add	r3, sp, #0x1a8
  3e6686: 4618         	mov	r0, r3
  3e6688: f3cf f944    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cf288
  3e668c: ab66         	add	r3, sp, #0x198
  3e668e: 4618         	mov	r0, r3
  3e6690: f3a3 feb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a3d68
  3e6694: ab09         	add	r3, sp, #0x24
  3e6696: 681b         	ldr	r3, [r3]
  3e6698: 681b         	ldr	r3, [r3]
  3e669a: f503 7331    	add.w	r3, r3, #0x2c4
  3e669e: 681b         	ldr	r3, [r3]
  3e66a0: aa09         	add	r2, sp, #0x24
  3e66a2: 6810         	ldr	r0, [r2]
  3e66a4: 4798         	blx	r3
  3e66a6: 4603         	mov	r3, r0
  3e66a8: 2b00         	cmp	r3, #0x0
  3e66aa: d049         	beq	0x3e6740 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x240> @ imm = #0x92
  3e66ac: ab09         	add	r3, sp, #0x24
  3e66ae: 681b         	ldr	r3, [r3]
  3e66b0: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e66b4: 2b00         	cmp	r3, #0x0
  3e66b6: d043         	beq	0x3e6740 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x240> @ imm = #0x86
  3e66b8: ab09         	add	r3, sp, #0x24
  3e66ba: 681b         	ldr	r3, [r3]
  3e66bc: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e66c0: 2b00         	cmp	r3, #0x0
  3e66c2: d03d         	beq	0x3e6740 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x240> @ imm = #0x7a
  3e66c4: ab09         	add	r3, sp, #0x24
  3e66c6: 681b         	ldr	r3, [r3]
  3e66c8: edd3 7a46    	vldr	s15, [r3, #280]
  3e66cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e66d0: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e66d4: ee26 6b07    	vmul.f64	d6, d6, d7
  3e66d8: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e66dc: ee36 7b07    	vadd.f64	d7, d6, d7
  3e66e0: eeb5 7bc0    	vcmpe.f64	d7, #0
  3e66e4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e66e8: dd10         	ble	0x3e670c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x20c> @ imm = #0x20
  3e66ea: ab09         	add	r3, sp, #0x24
  3e66ec: 681b         	ldr	r3, [r3]
  3e66ee: edd3 7a46    	vldr	s15, [r3, #280]
  3e66f2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e66f6: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e66fa: ee26 6b07    	vmul.f64	d6, d6, d7
  3e66fe: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3e6702: ee36 7b07    	vadd.f64	d7, d6, d7
  3e6706: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e670a: e001         	b	0x3e6710 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x210> @ imm = #0x2
  3e670c: eddf 7a07    	vldr	s15, [pc, #28]          @ 0x3e672c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x22c>
  3e6710: ee17 3a90    	vmov	r3, s15
  3e6714: e016         	b	0x3e6744 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x244> @ imm = #0x2c
  3e6716: bf00         	nop
  3e6718: 3333         	adds	r3, #0x33
  3e671a: 3333         	adds	r3, #0x33
  3e671c: 3333         	adds	r3, #0x33
  3e671e: 3fe3         	subs	r7, #0xe3
  3e6720: 6666         	str	r6, [r4, #0x64]
  3e6722: 6666         	str	r6, [r4, #0x64]
  3e6724: 6666         	str	r6, [r4, #0x64]
  3e6726: 3fd6         	subs	r7, #0xd6
  3e6728: 0000         	movs	r0, r0
  3e672a: 42fa         	cmn	r2, r7
  3e672c: 0000         	movs	r0, r0
  3e672e: 0000         	movs	r0, r0
  3e6730: c4ee         	stm	r4!, {r1, r2, r3, r5, r6, r7}
  3e6732: 0054         	lsls	r4, r2, #0x1
  3e6734: 1d6e         	adds	r6, r5, #0x5
  3e6736: 003f         	movs	r7, r7
  3e6738: 1e36         	subs	r6, r6, #0x0
  3e673a: 003f         	movs	r7, r7
  3e673c: fa35 3c8e    	<unknown>
  3e6740: f04f 0300    	mov.w	r3, #0x0
  3e6744: aa09         	add	r2, sp, #0x24
  3e6746: 6812         	ldr	r2, [r2]
  3e6748: f8c2 310c    	str.w	r3, [r2, #0x10c]
  3e674c: ab09         	add	r3, sp, #0x24
  3e674e: 681b         	ldr	r3, [r3]
  3e6750: 681b         	ldr	r3, [r3]
  3e6752: f503 733c    	add.w	r3, r3, #0x2f0
  3e6756: 681b         	ldr	r3, [r3]
  3e6758: a909         	add	r1, sp, #0x24
  3e675a: aa08         	add	r2, sp, #0x20
  3e675c: 6808         	ldr	r0, [r1]
  3e675e: 6811         	ldr	r1, [r2]
  3e6760: 4798         	blx	r3
  3e6762: ab09         	add	r3, sp, #0x24
  3e6764: 681b         	ldr	r3, [r3]
  3e6766: 681b         	ldr	r3, [r3]
  3e6768: 339c         	adds	r3, #0x9c
  3e676a: 681b         	ldr	r3, [r3]
  3e676c: aa09         	add	r2, sp, #0x24
  3e676e: 6812         	ldr	r2, [r2]
  3e6770: 4610         	mov	r0, r2
  3e6772: 4798         	blx	r3
  3e6774: ee07 0a10    	vmov	s14, r0
  3e6778: ed5f 7a10    	vldr	s15, [pc, #-64]         @ 0x3e673c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x23c>
  3e677c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e6780: ab10         	add	r3, sp, #0x40
  3e6782: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e6786: ed83 7b00    	vstr	d7, [r3]
  3e678a: ab10         	add	r3, sp, #0x40
  3e678c: e9d3 0100    	ldrd	r0, r1, [r3]
  3e6790: f6ef ebba    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11088c
  3e6794: 4606         	mov	r6, r0
  3e6796: 460f         	mov	r7, r1
  3e6798: ab10         	add	r3, sp, #0x40
  3e679a: e9d3 0100    	ldrd	r0, r1, [r3]
  3e679e: f6ef ebba    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x11088c
  3e67a2: 4602         	mov	r2, r0
  3e67a4: 460b         	mov	r3, r1
  3e67a6: a91e         	add	r1, sp, #0x78
  3e67a8: 4608         	mov	r0, r1
  3e67aa: ec47 6b10    	vmov	d0, r6, r7
  3e67ae: ec43 2b11    	vmov	d1, r2, r3
  3e67b2: f7fe fa01    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x1bfe
  3e67b6: a922         	add	r1, sp, #0x88
  3e67b8: f04f 0200    	mov.w	r2, #0x0
  3e67bc: f04f 0300    	mov.w	r3, #0x0
  3e67c0: e9c1 2300    	strd	r2, r3, [r1]
  3e67c4: a922         	add	r1, sp, #0x88
  3e67c6: f04f 0200    	mov.w	r2, #0x0
  3e67ca: f04f 0300    	mov.w	r3, #0x0
  3e67ce: e9c1 2302    	strd	r2, r3, [r1, #8]
  3e67d2: ab09         	add	r3, sp, #0x24
  3e67d4: 681b         	ldr	r3, [r3]
  3e67d6: edd3 7a45    	vldr	s15, [r3, #276]
  3e67da: eef1 7a67    	vneg.f32	s15, s15
  3e67de: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e67e2: ab09         	add	r3, sp, #0x24
  3e67e4: 681b         	ldr	r3, [r3]
  3e67e6: edd3 7a46    	vldr	s15, [r3, #280]
  3e67ea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e67ee: ab32         	add	r3, sp, #0xc8
  3e67f0: 4618         	mov	r0, r3
  3e67f2: eeb0 0b46    	vmov.f64	d0, d6
  3e67f6: eeb0 1b47    	vmov.f64	d1, d7
  3e67fa: f7fe f9dd    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x1c46
  3e67fe: ab09         	add	r3, sp, #0x24
  3e6800: 681b         	ldr	r3, [r3]
  3e6802: edd3 7a43    	vldr	s15, [r3, #268]
  3e6806: ee77 7aa7    	vadd.f32	s15, s15, s15
  3e680a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e680e: ab36         	add	r3, sp, #0xd8
  3e6810: ed9d 5b32    	vldr	d5, [sp, #200]
  3e6814: ed9d 6b34    	vldr	d6, [sp, #208]
  3e6818: 4618         	mov	r0, r3
  3e681a: eeb0 0b45    	vmov.f64	d0, d5
  3e681e: eeb0 1b46    	vmov.f64	d1, d6
  3e6822: eeb0 2b47    	vmov.f64	d2, d7
  3e6826: f7fe fa33    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x1b9a
  3e682a: ad26         	add	r5, sp, #0x98
  3e682c: f640 73db    	movw	r3, #0xfdb
  3e6830: f6cb 73c9    	movt	r3, #0xbfc9
  3e6834: 9302         	str	r3, [sp, #0x8]
  3e6836: 466b         	mov	r3, sp
  3e6838: aa38         	add	r2, sp, #0xe0
  3e683a: e892 0003    	ldm.w	r2, {r0, r1}
  3e683e: e883 0003    	stm.w	r3, {r0, r1}
  3e6842: ab36         	add	r3, sp, #0xd8
  3e6844: cb0c         	ldm	r3, {r2, r3}
  3e6846: 4628         	mov	r0, r5
  3e6848: f7fe fc62    	bl	0x3e5110 <SoldierController::setAlive(bool)+0x788> @ imm = #-0x173c
  3e684c: ab09         	add	r3, sp, #0x24
  3e684e: 681b         	ldr	r3, [r3]
  3e6850: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e6854: 2b00         	cmp	r3, #0x0
  3e6856: d065         	beq	0x3e6924 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x424> @ imm = #0xca
  3e6858: ab3a         	add	r3, sp, #0xe8
  3e685a: 4618         	mov	r0, r3
  3e685c: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
  3e6860: ed9f 1b9b    	vldr	d1, [pc, #620]          @ 0x3e6ad0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5d0>
  3e6864: f7fe f9a8    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x1cb0
  3e6868: aa3e         	add	r2, sp, #0xf8
  3e686a: ab26         	add	r3, sp, #0x98
  3e686c: ed93 4b00    	vldr	d4, [r3]
  3e6870: ed93 5b02    	vldr	d5, [r3, #8]
  3e6874: ed9d 6b3a    	vldr	d6, [sp, #232]
  3e6878: ed9d 7b3c    	vldr	d7, [sp, #240]
  3e687c: 4610         	mov	r0, r2
  3e687e: eeb0 0b44    	vmov.f64	d0, d4
  3e6882: eeb0 1b45    	vmov.f64	d1, d5
  3e6886: eeb0 2b46    	vmov.f64	d2, d6
  3e688a: eeb0 3b47    	vmov.f64	d3, d7
  3e688e: f7fe f9a7    	bl	0x3e4be0 <SoldierController::setAlive(bool)+0x258> @ imm = #-0x1cb2
  3e6892: ad26         	add	r5, sp, #0x98
  3e6894: ab04         	add	r3, sp, #0x10
  3e6896: ed9d 6b3e    	vldr	d6, [sp, #248]
  3e689a: ed9d 7b40    	vldr	d7, [sp, #256]
  3e689e: 4618         	mov	r0, r3
  3e68a0: eeb0 0b46    	vmov.f64	d0, d6
  3e68a4: eeb0 1b47    	vmov.f64	d1, d7
  3e68a8: f7fe fa60    	bl	0x3e4d6c <SoldierController::setAlive(bool)+0x3e4> @ imm = #-0x1b40
  3e68ac: ab04         	add	r3, sp, #0x10
  3e68ae: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e68b0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e68b4: aa42         	add	r2, sp, #0x108
  3e68b6: ab1e         	add	r3, sp, #0x78
  3e68b8: ed93 6b00    	vldr	d6, [r3]
  3e68bc: ed93 7b02    	vldr	d7, [r3, #8]
  3e68c0: 4610         	mov	r0, r2
  3e68c2: eeb0 0b46    	vmov.f64	d0, d6
  3e68c6: eeb0 1b47    	vmov.f64	d1, d7
  3e68ca: ed9f 2b83    	vldr	d2, [pc, #524]          @ 0x3e6ad8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5d8>
  3e68ce: f7fe f9df    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x1c42
  3e68d2: aa46         	add	r2, sp, #0x118
  3e68d4: ab26         	add	r3, sp, #0x98
  3e68d6: ed93 6b00    	vldr	d6, [r3]
  3e68da: ed93 7b02    	vldr	d7, [r3, #8]
  3e68de: 4610         	mov	r0, r2
  3e68e0: eeb0 0b46    	vmov.f64	d0, d6
  3e68e4: eeb0 1b47    	vmov.f64	d1, d7
  3e68e8: ed9f 2b7d    	vldr	d2, [pc, #500]          @ 0x3e6ae0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5e0>
  3e68ec: f7fe f9d0    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x1c60
  3e68f0: ad22         	add	r5, sp, #0x88
  3e68f2: ab04         	add	r3, sp, #0x10
  3e68f4: ed9d 4b42    	vldr	d4, [sp, #264]
  3e68f8: ed9d 5b44    	vldr	d5, [sp, #272]
  3e68fc: ed9d 6b46    	vldr	d6, [sp, #280]
  3e6900: ed9d 7b48    	vldr	d7, [sp, #288]
  3e6904: 4618         	mov	r0, r3
  3e6906: eeb0 0b44    	vmov.f64	d0, d4
  3e690a: eeb0 1b45    	vmov.f64	d1, d5
  3e690e: eeb0 2b46    	vmov.f64	d2, d6
  3e6912: eeb0 3b47    	vmov.f64	d3, d7
  3e6916: f7fe f963    	bl	0x3e4be0 <SoldierController::setAlive(bool)+0x258> @ imm = #-0x1d3a
  3e691a: ab04         	add	r3, sp, #0x10
  3e691c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e691e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e6922: e043         	b	0x3e69ac <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x4ac> @ imm = #0x86
  3e6924: ad26         	add	r5, sp, #0x98
  3e6926: ab04         	add	r3, sp, #0x10
  3e6928: 4618         	mov	r0, r3
  3e692a: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
  3e692e: ed9f 1b68    	vldr	d1, [pc, #416]          @ 0x3e6ad0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5d0>
  3e6932: f7fe f941    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x1d7e
  3e6936: ab04         	add	r3, sp, #0x10
  3e6938: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e693a: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e693e: aa4a         	add	r2, sp, #0x128
  3e6940: ab1e         	add	r3, sp, #0x78
  3e6942: ed93 6b00    	vldr	d6, [r3]
  3e6946: ed93 7b02    	vldr	d7, [r3, #8]
  3e694a: 4610         	mov	r0, r2
  3e694c: eeb0 0b46    	vmov.f64	d0, d6
  3e6950: eeb0 1b47    	vmov.f64	d1, d7
  3e6954: ed9f 2b64    	vldr	d2, [pc, #400]          @ 0x3e6ae8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5e8>
  3e6958: f7fe f99a    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x1ccc
  3e695c: aa4e         	add	r2, sp, #0x138
  3e695e: ab26         	add	r3, sp, #0x98
  3e6960: ed93 6b00    	vldr	d6, [r3]
  3e6964: ed93 7b02    	vldr	d7, [r3, #8]
  3e6968: 4610         	mov	r0, r2
  3e696a: eeb0 0b46    	vmov.f64	d0, d6
  3e696e: eeb0 1b47    	vmov.f64	d1, d7
  3e6972: ed9f 2b5f    	vldr	d2, [pc, #380]          @ 0x3e6af0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5f0>
  3e6976: f7fe f98b    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x1cea
  3e697a: ad22         	add	r5, sp, #0x88
  3e697c: ab04         	add	r3, sp, #0x10
  3e697e: ed9d 4b4a    	vldr	d4, [sp, #296]
  3e6982: ed9d 5b4c    	vldr	d5, [sp, #304]
  3e6986: ed9d 6b4e    	vldr	d6, [sp, #312]
  3e698a: ed9d 7b50    	vldr	d7, [sp, #320]
  3e698e: 4618         	mov	r0, r3
  3e6990: eeb0 0b44    	vmov.f64	d0, d4
  3e6994: eeb0 1b45    	vmov.f64	d1, d5
  3e6998: eeb0 2b46    	vmov.f64	d2, d6
  3e699c: eeb0 3b47    	vmov.f64	d3, d7
  3e69a0: f7fe f91e    	bl	0x3e4be0 <SoldierController::setAlive(bool)+0x258> @ imm = #-0x1dc4
  3e69a4: ab04         	add	r3, sp, #0x10
  3e69a6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e69a8: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e69ac: ab22         	add	r3, sp, #0x88
  3e69ae: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e69b0: f7fe faee    	bl	0x3e4f90 <SoldierController::setAlive(bool)+0x608> @ imm = #-0x1a24
  3e69b4: ee07 0a10    	vmov	s14, r0
  3e69b8: eddf 7a51    	vldr	s15, [pc, #324]         @ 0x3e6b00 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x600>
  3e69bc: ee67 7a27    	vmul.f32	s15, s14, s15
  3e69c0: ab12         	add	r3, sp, #0x48
  3e69c2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e69c6: ed83 7b00    	vstr	d7, [r3]
  3e69ca: ab09         	add	r3, sp, #0x24
  3e69cc: 681b         	ldr	r3, [r3]
  3e69ce: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  3e69d2: ab12         	add	r3, sp, #0x48
  3e69d4: 4610         	mov	r0, r2
  3e69d6: e9d3 2300    	ldrd	r2, r3, [r3]
  3e69da: f2ec fbda    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2ec7b4
  3e69de: ab09         	add	r3, sp, #0x24
  3e69e0: 681b         	ldr	r3, [r3]
  3e69e2: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e69e6: f083 0301    	eor	r3, r3, #0x1
  3e69ea: b2db         	uxtb	r3, r3
  3e69ec: 2b00         	cmp	r3, #0x0
  3e69ee: d03d         	beq	0x3e6a6c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x56c> @ imm = #0x7a
  3e69f0: ab09         	add	r3, sp, #0x24
  3e69f2: 681b         	ldr	r3, [r3]
  3e69f4: ed93 7a64    	vldr	s14, [r3, #400]
  3e69f8: ab08         	add	r3, sp, #0x20
  3e69fa: edd3 7a00    	vldr	s15, [r3]
  3e69fe: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6a02: ab09         	add	r3, sp, #0x24
  3e6a04: 681b         	ldr	r3, [r3]
  3e6a06: edc3 7a64    	vstr	s15, [r3, #400]
  3e6a0a: ab09         	add	r3, sp, #0x24
  3e6a0c: 681b         	ldr	r3, [r3]
  3e6a0e: f503 738a    	add.w	r3, r3, #0x114
  3e6a12: 4618         	mov	r0, r3
  3e6a14: f1fa fe8c    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x1fad18
  3e6a18: ee07 0a10    	vmov	s14, r0
  3e6a1c: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3e6a20: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6a24: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6a28: dd17         	ble	0x3e6a5a <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x55a> @ imm = #0x2e
  3e6a2a: ab09         	add	r3, sp, #0x24
  3e6a2c: 681b         	ldr	r3, [r3]
  3e6a2e: ed93 7a46    	vldr	s14, [r3, #280]
  3e6a32: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3e6a36: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6a3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6a3e: dd0c         	ble	0x3e6a5a <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x55a> @ imm = #0x18
  3e6a40: ab09         	add	r3, sp, #0x24
  3e6a42: 681b         	ldr	r3, [r3]
  3e6a44: ed93 7a64    	vldr	s14, [r3, #400]
  3e6a48: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3e6a4c: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6a50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6a54: dd01         	ble	0x3e6a5a <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x55a> @ imm = #0x2
  3e6a56: 2301         	movs	r3, #0x1
  3e6a58: e000         	b	0x3e6a5c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x55c> @ imm = #0x0
  3e6a5a: 2300         	movs	r3, #0x0
  3e6a5c: 2b00         	cmp	r3, #0x0
  3e6a5e: d00b         	beq	0x3e6a78 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x578> @ imm = #0x16
  3e6a60: ab09         	add	r3, sp, #0x24
  3e6a62: 681b         	ldr	r3, [r3]
  3e6a64: 2201         	movs	r2, #0x1
  3e6a66: f883 2104    	strb.w	r2, [r3, #0x104]
  3e6a6a: e005         	b	0x3e6a78 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x578> @ imm = #0xa
  3e6a6c: ab09         	add	r3, sp, #0x24
  3e6a6e: 681b         	ldr	r3, [r3]
  3e6a70: f04f 0200    	mov.w	r2, #0x0
  3e6a74: f8c3 2190    	str.w	r2, [r3, #0x190]
  3e6a78: ab09         	add	r3, sp, #0x24
  3e6a7a: 681b         	ldr	r3, [r3]
  3e6a7c: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e6a80: 2b00         	cmp	r3, #0x0
  3e6a82: d03f         	beq	0x3e6b04 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x604> @ imm = #0x7e
  3e6a84: ab09         	add	r3, sp, #0x24
  3e6a86: 681b         	ldr	r3, [r3]
  3e6a88: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e6a8c: f083 0301    	eor	r3, r3, #0x1
  3e6a90: b2db         	uxtb	r3, r3
  3e6a92: 2b00         	cmp	r3, #0x0
  3e6a94: d119         	bne	0x3e6aca <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5ca> @ imm = #0x32
  3e6a96: ab09         	add	r3, sp, #0x24
  3e6a98: 681b         	ldr	r3, [r3]
  3e6a9a: edd3 7a46    	vldr	s15, [r3, #280]
  3e6a9e: eef5 7ac0    	vcmpe.f32	s15, #0
  3e6aa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6aa6: d52d         	bpl	0x3e6b04 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x604> @ imm = #0x5a
  3e6aa8: ab09         	add	r3, sp, #0x24
  3e6aaa: 681b         	ldr	r3, [r3]
  3e6aac: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e6ab0: 3338         	adds	r3, #0x38
  3e6ab2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e6ab4: f2f0 fb00    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f0600
  3e6ab8: ec41 0b16    	vmov	d6, r0, r1
  3e6abc: ed9f 7b0e    	vldr	d7, [pc, #56]           @ 0x3e6af8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x5f8>
  3e6ac0: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6ac4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6ac8: d51c         	bpl	0x3e6b04 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x604> @ imm = #0x38
  3e6aca: 2301         	movs	r3, #0x1
  3e6acc: e01b         	b	0x3e6b06 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x606> @ imm = #0x36
  3e6ace: bf00         	nop
  3e6ad8: f5c3 5c28    	rsb.w	r12, r3, #0x2a00
  3e6adc: c28f         	stm	r2!, {r0, r1, r2, r3, r7}
  3e6ade: 3fed         	subs	r7, #0xed
  3e6ae0: 51ec         	str	r4, [r5, r7]
  3e6ae2: 1eb8         	subs	r0, r7, #0x2
  3e6ae4: eb85 3fb1    	<unknown>
  3e6ae8: 3333         	adds	r3, #0x33
  3e6aea: 3333         	adds	r3, #0x33
  3e6aec: 3333         	adds	r3, #0x33
  3e6aee: 3fe3         	subs	r7, #0xe3
  3e6af0: 999a         	ldr	r1, [sp, #0x268]
  3e6af2: 9999         	ldr	r1, [sp, #0x264]
  3e6af4: 9999         	ldr	r1, [sp, #0x264]
  3e6af6: 3fd9         	subs	r7, #0xd9
  3e6af8: 0000         	movs	r0, r0
  3e6afa: 0000         	movs	r0, r0
  3e6afc: c000         	<unknown>
  3e6afe: 4052         	eors	r2, r2
  3e6b00: fa35 3c8e    	<unknown>
  3e6b04: 2300         	movs	r3, #0x0
  3e6b06: 2b00         	cmp	r3, #0x0
  3e6b08: d004         	beq	0x3e6b14 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x614> @ imm = #0x8
  3e6b0a: ab09         	add	r3, sp, #0x24
  3e6b0c: 681b         	ldr	r3, [r3]
  3e6b0e: 2200         	movs	r2, #0x0
  3e6b10: f883 2104    	strb.w	r2, [r3, #0x104]
  3e6b14: ab09         	add	r3, sp, #0x24
  3e6b16: 681b         	ldr	r3, [r3]
  3e6b18: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e6b1c: ed93 6b0c    	vldr	d6, [r3, #48]
  3e6b20: ed9f 7bab    	vldr	d7, [pc, #684]          @ 0x3e6dd0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8d0>
  3e6b24: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6b28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6b2c: d426         	bmi	0x3e6b7c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x67c> @ imm = #0x4c
  3e6b2e: ab09         	add	r3, sp, #0x24
  3e6b30: 681b         	ldr	r3, [r3]
  3e6b32: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e6b36: ed93 6b0c    	vldr	d6, [r3, #48]
  3e6b3a: ed9f 7ba7    	vldr	d7, [pc, #668]          @ 0x3e6dd8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8d8>
  3e6b3e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6b42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6b46: dc19         	bgt	0x3e6b7c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x67c> @ imm = #0x32
  3e6b48: ab09         	add	r3, sp, #0x24
  3e6b4a: 681b         	ldr	r3, [r3]
  3e6b4c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e6b50: ed93 6b0a    	vldr	d6, [r3, #40]
  3e6b54: ed9f 7ba2    	vldr	d7, [pc, #648]          @ 0x3e6de0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8e0>
  3e6b58: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6b5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6b60: dc0c         	bgt	0x3e6b7c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x67c> @ imm = #0x18
  3e6b62: ab09         	add	r3, sp, #0x24
  3e6b64: 681b         	ldr	r3, [r3]
  3e6b66: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e6b6a: ed93 6b0a    	vldr	d6, [r3, #40]
  3e6b6e: ed9f 7b9e    	vldr	d7, [pc, #632]          @ 0x3e6de8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8e8>
  3e6b72: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6b76: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6b7a: d50b         	bpl	0x3e6b94 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x694> @ imm = #0x16
  3e6b7c: ab09         	add	r3, sp, #0x24
  3e6b7e: 681b         	ldr	r3, [r3]
  3e6b80: ed93 7a51    	vldr	s14, [r3, #324]
  3e6b84: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e6b88: ee77 7a67    	vsub.f32	s15, s14, s15
  3e6b8c: ab09         	add	r3, sp, #0x24
  3e6b8e: 681b         	ldr	r3, [r3]
  3e6b90: edc3 7a51    	vstr	s15, [r3, #324]
  3e6b94: ab09         	add	r3, sp, #0x24
  3e6b96: 681b         	ldr	r3, [r3]
  3e6b98: edd3 7a51    	vldr	s15, [r3, #324]
  3e6b9c: eef5 7ac0    	vcmpe.f32	s15, #0
  3e6ba0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6ba4: d858         	bhi	0x3e6c58 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x758> @ imm = #0xb0
  3e6ba6: ab09         	add	r3, sp, #0x24
  3e6ba8: 681b         	ldr	r3, [r3]
  3e6baa: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3e6bae: f083 0301    	eor	r3, r3, #0x1
  3e6bb2: b2db         	uxtb	r3, r3
  3e6bb4: 2b00         	cmp	r3, #0x0
  3e6bb6: d03f         	beq	0x3e6c38 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x738> @ imm = #0x7e
  3e6bb8: ab09         	add	r3, sp, #0x24
  3e6bba: 681b         	ldr	r3, [r3]
  3e6bbc: 681b         	ldr	r3, [r3]
  3e6bbe: f503 7337    	add.w	r3, r3, #0x2dc
  3e6bc2: 681d         	ldr	r5, [r3]
  3e6bc4: ab66         	add	r3, sp, #0x198
  3e6bc6: 4618         	mov	r0, r3
  3e6bc8: f3a3 fc14    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a3828
  3e6bcc: aa6a         	add	r2, sp, #0x1a8
  3e6bce: ab66         	add	r3, sp, #0x198
  3e6bd0: 4610         	mov	r0, r2
  3e6bd2: 4a88         	ldr	r2, [pc, #0x220]        @ 0x3e6df4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8f4>
  3e6bd4: 447a         	add	r2, pc
  3e6bd6: 4611         	mov	r1, r2
  3e6bd8: 461a         	mov	r2, r3
  3e6bda: f3cf ff41    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3cfe82
  3e6bde: af09         	add	r7, sp, #0x24
  3e6be0: ae6a         	add	r6, sp, #0x1a8
  3e6be2: 4b85         	ldr	r3, [pc, #0x214]        @ 0x3e6df8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8f8>
  3e6be4: 447b         	add	r3, pc
  3e6be6: 466a         	mov	r2, sp
  3e6be8: f103 0108    	add.w	r1, r3, #0x8
  3e6bec: c903         	ldm	r1, {r0, r1}
  3e6bee: e882 0003    	stm.w	r2, {r0, r1}
  3e6bf2: cb0c         	ldm	r3, {r2, r3}
  3e6bf4: 6838         	ldr	r0, [r7]
  3e6bf6: 4631         	mov	r1, r6
  3e6bf8: 47a8         	blx	r5
  3e6bfa: ab6a         	add	r3, sp, #0x1a8
  3e6bfc: 4618         	mov	r0, r3
  3e6bfe: f3ce fe89    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ced12
  3e6c02: ab66         	add	r3, sp, #0x198
  3e6c04: 4618         	mov	r0, r3
  3e6c06: f3a3 fbf9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a37f2
  3e6c0a: ab09         	add	r3, sp, #0x24
  3e6c0c: 681b         	ldr	r3, [r3]
  3e6c0e: 681b         	ldr	r3, [r3]
  3e6c10: f503 732f    	add.w	r3, r3, #0x2bc
  3e6c14: 681b         	ldr	r3, [r3]
  3e6c16: aa09         	add	r2, sp, #0x24
  3e6c18: 6810         	ldr	r0, [r2]
  3e6c1a: 4798         	blx	r3
  3e6c1c: ab09         	add	r3, sp, #0x24
  3e6c1e: 681b         	ldr	r3, [r3]
  3e6c20: 2201         	movs	r2, #0x1
  3e6c22: f883 2159    	strb.w	r2, [r3, #0x159]
  3e6c26: ab09         	add	r3, sp, #0x24
  3e6c28: 681b         	ldr	r3, [r3]
  3e6c2a: 681b         	ldr	r3, [r3]
  3e6c2c: f503 733d    	add.w	r3, r3, #0x2f4
  3e6c30: 681b         	ldr	r3, [r3]
  3e6c32: aa09         	add	r2, sp, #0x24
  3e6c34: 6810         	ldr	r0, [r2]
  3e6c36: 4798         	blx	r3
  3e6c38: ab09         	add	r3, sp, #0x24
  3e6c3a: 681b         	ldr	r3, [r3]
  3e6c3c: 2200         	movs	r2, #0x0
  3e6c3e: f883 211c    	strb.w	r2, [r3, #0x11c]
  3e6c42: ab09         	add	r3, sp, #0x24
  3e6c44: 681b         	ldr	r3, [r3]
  3e6c46: 2200         	movs	r2, #0x0
  3e6c48: f883 2104    	strb.w	r2, [r3, #0x104]
  3e6c4c: ab09         	add	r3, sp, #0x24
  3e6c4e: 681b         	ldr	r3, [r3]
  3e6c50: f04f 0200    	mov.w	r2, #0x0
  3e6c54: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3e6c58: ab09         	add	r3, sp, #0x24
  3e6c5a: 681b         	ldr	r3, [r3]
  3e6c5c: ed93 7a62    	vldr	s14, [r3, #392]
  3e6c60: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e6c64: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6c68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6c6c: dd30         	ble	0x3e6cd0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x7d0> @ imm = #0x60
  3e6c6e: ab09         	add	r3, sp, #0x24
  3e6c70: 681b         	ldr	r3, [r3]
  3e6c72: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3e6c76: f083 0301    	eor	r3, r3, #0x1
  3e6c7a: b2db         	uxtb	r3, r3
  3e6c7c: 2b00         	cmp	r3, #0x0
  3e6c7e: d027         	beq	0x3e6cd0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x7d0> @ imm = #0x4e
  3e6c80: ab09         	add	r3, sp, #0x24
  3e6c82: 681b         	ldr	r3, [r3]
  3e6c84: f04f 0200    	mov.w	r2, #0x0
  3e6c88: f8c3 2188    	str.w	r2, [r3, #0x188]
  3e6c8c: ab09         	add	r3, sp, #0x24
  3e6c8e: 681b         	ldr	r3, [r3]
  3e6c90: ed93 7a51    	vldr	s14, [r3, #324]
  3e6c94: ab09         	add	r3, sp, #0x24
  3e6c96: 681b         	ldr	r3, [r3]
  3e6c98: edd3 7a71    	vldr	s15, [r3, #452]
  3e6c9c: ee37 7a27    	vadd.f32	s14, s14, s15
  3e6ca0: eddf 7a53    	vldr	s15, [pc, #332]         @ 0x3e6df0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8f0>
  3e6ca4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6ca8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6cac: d50a         	bpl	0x3e6cc4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x7c4> @ imm = #0x14
  3e6cae: ab09         	add	r3, sp, #0x24
  3e6cb0: 681b         	ldr	r3, [r3]
  3e6cb2: ed93 7a51    	vldr	s14, [r3, #324]
  3e6cb6: ab09         	add	r3, sp, #0x24
  3e6cb8: 681b         	ldr	r3, [r3]
  3e6cba: edd3 7a71    	vldr	s15, [r3, #452]
  3e6cbe: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6cc2: e001         	b	0x3e6cc8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x7c8> @ imm = #0x2
  3e6cc4: eddf 7a4a    	vldr	s15, [pc, #296]         @ 0x3e6df0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8f0>
  3e6cc8: ab09         	add	r3, sp, #0x24
  3e6cca: 681b         	ldr	r3, [r3]
  3e6ccc: edc3 7a51    	vstr	s15, [r3, #324]
  3e6cd0: ab09         	add	r3, sp, #0x24
  3e6cd2: 681b         	ldr	r3, [r3]
  3e6cd4: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e6cd8: f083 0301    	eor	r3, r3, #0x1
  3e6cdc: b2db         	uxtb	r3, r3
  3e6cde: 2b00         	cmp	r3, #0x0
  3e6ce0: d110         	bne	0x3e6d04 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x804> @ imm = #0x20
  3e6ce2: ab09         	add	r3, sp, #0x24
  3e6ce4: 681b         	ldr	r3, [r3]
  3e6ce6: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e6cea: 2b00         	cmp	r3, #0x0
  3e6cec: f000 8092    	beq.w	0x3e6e14 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x914> @ imm = #0x124
  3e6cf0: ab09         	add	r3, sp, #0x24
  3e6cf2: 681b         	ldr	r3, [r3]
  3e6cf4: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e6cf8: f083 0301    	eor	r3, r3, #0x1
  3e6cfc: b2db         	uxtb	r3, r3
  3e6cfe: 2b00         	cmp	r3, #0x0
  3e6d00: f000 8088    	beq.w	0x3e6e14 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x914> @ imm = #0x110
  3e6d04: ab09         	add	r3, sp, #0x24
  3e6d06: 681b         	ldr	r3, [r3]
  3e6d08: edd3 7a61    	vldr	s15, [r3, #388]
  3e6d0c: eef5 7ac0    	vcmpe.f32	s15, #0
  3e6d10: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6d14: dd7e         	ble	0x3e6e14 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x914> @ imm = #0xfc
  3e6d16: ab09         	add	r3, sp, #0x24
  3e6d18: 681b         	ldr	r3, [r3]
  3e6d1a: ed93 7a61    	vldr	s14, [r3, #388]
  3e6d1e: ab09         	add	r3, sp, #0x24
  3e6d20: 681b         	ldr	r3, [r3]
  3e6d22: edd3 7a61    	vldr	s15, [r3, #388]
  3e6d26: ee27 7a27    	vmul.f32	s14, s14, s15
  3e6d2a: eef2 7a02    	vmov.f32	s15, #9.000000e+00
  3e6d2e: ee37 7a67    	vsub.f32	s14, s14, s15
  3e6d32: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3e6d36: eec7 7a27    	vdiv.f32	s15, s14, s15
  3e6d3a: ee17 0a90    	vmov	r0, s15
  3e6d3e: f04f 0100    	mov.w	r1, #0x0
  3e6d42: f04f 0200    	mov.w	r2, #0x0
  3e6d46: f2c4 1260    	movt	r2, #0x4160
  3e6d4a: f1fa fd4b    	bl	0x5e17e4 <cocos2d::clampf(float, float, float)> @ imm = #0x1faa96
  3e6d4e: 4602         	mov	r2, r0
  3e6d50: ab0b         	add	r3, sp, #0x2c
  3e6d52: 601a         	str	r2, [r3]
  3e6d54: ab09         	add	r3, sp, #0x24
  3e6d56: 681b         	ldr	r3, [r3]
  3e6d58: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  3e6d5c: ee07 3a90    	vmov	s15, r3
  3e6d60: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e6d64: ab09         	add	r3, sp, #0x24
  3e6d66: 681b         	ldr	r3, [r3]
  3e6d68: edd3 6a66    	vldr	s13, [r3, #408]
  3e6d6c: ab09         	add	r3, sp, #0x24
  3e6d6e: 681b         	ldr	r3, [r3]
  3e6d70: ed93 6a72    	vldr	s12, [r3, #456]
  3e6d74: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  3e6d78: ee26 6a27    	vmul.f32	s12, s12, s15
  3e6d7c: ab0b         	add	r3, sp, #0x2c
  3e6d7e: edd3 7a00    	vldr	s15, [r3]
  3e6d82: ee36 6a27    	vadd.f32	s12, s12, s15
  3e6d86: ab08         	add	r3, sp, #0x20
  3e6d88: edd3 7a00    	vldr	s15, [r3]
  3e6d8c: ee66 7a27    	vmul.f32	s15, s12, s15
  3e6d90: ee76 7aa7    	vadd.f32	s15, s13, s15
  3e6d94: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e6d98: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6d9c: dd2e         	ble	0x3e6dfc <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x8fc> @ imm = #0x5c
  3e6d9e: ab09         	add	r3, sp, #0x24
  3e6da0: 681b         	ldr	r3, [r3]
  3e6da2: ed93 7a66    	vldr	s14, [r3, #408]
  3e6da6: ab09         	add	r3, sp, #0x24
  3e6da8: 681b         	ldr	r3, [r3]
  3e6daa: edd3 6a72    	vldr	s13, [r3, #456]
  3e6dae: eef1 7a0c    	vmov.f32	s15, #7.000000e+00
  3e6db2: ee66 6aa7    	vmul.f32	s13, s13, s15
  3e6db6: ab0b         	add	r3, sp, #0x2c
  3e6db8: edd3 7a00    	vldr	s15, [r3]
  3e6dbc: ee76 6aa7    	vadd.f32	s13, s13, s15
  3e6dc0: ab08         	add	r3, sp, #0x20
  3e6dc2: edd3 7a00    	vldr	s15, [r3]
  3e6dc6: ee66 7aa7    	vmul.f32	s15, s13, s15
  3e6dca: ee77 7a27    	vadd.f32	s15, s14, s15
  3e6dce: e01d         	b	0x3e6e0c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x90c> @ imm = #0x3a
  3e6dd0: 0000         	movs	r0, r0
  3e6dd2: 0000         	movs	r0, r0
  3e6dd4: 4000         	ands	r0, r0
  3e6dd6: c08f         	stm	r0!, {r0, r1, r2, r3, r7}
  3e6dd8: 0000         	movs	r0, r0
  3e6dda: 0000         	movs	r0, r0
  3e6ddc: 8800         	ldrh	r0, [r0]
  3e6dde: 40b3         	lsls	r3, r6
  3e6de0: 0000         	movs	r0, r0
  3e6de2: 0000         	movs	r0, r0
  3e6de4: 7000         	strb	r0, [r0]
  3e6de6: 40b7         	lsls	r7, r6
  3e6de8: 0000         	movs	r0, r0
  3e6dea: 0000         	movs	r0, r0
  3e6dec: 4000         	ands	r0, r0
  3e6dee: c09f         	stm	r0!, {r0, r1, r2, r3, r4, r7}
  3e6df0: 0000         	movs	r0, r0
  3e6df2: 42c8         	cmn	r0, r1
  3e6df4: 17f8         	asrs	r0, r7, #0x1f
  3e6df6: 003f         	movs	r7, r7
  3e6df8: 18c0         	adds	r0, r0, r3
  3e6dfa: 003f         	movs	r7, r7
  3e6dfc: ab09         	add	r3, sp, #0x24
  3e6dfe: 681b         	ldr	r3, [r3]
  3e6e00: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  3e6e04: ee07 3a10    	vmov	s14, r3
  3e6e08: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e6e0c: ab09         	add	r3, sp, #0x24
  3e6e0e: 681b         	ldr	r3, [r3]
  3e6e10: edc3 7a66    	vstr	s15, [r3, #408]
  3e6e14: ab09         	add	r3, sp, #0x24
  3e6e16: 681b         	ldr	r3, [r3]
  3e6e18: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e6e1c: 2b00         	cmp	r3, #0x0
  3e6e1e: d00d         	beq	0x3e6e3c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x93c> @ imm = #0x1a
  3e6e20: ab09         	add	r3, sp, #0x24
  3e6e22: 681b         	ldr	r3, [r3]
  3e6e24: 681b         	ldr	r3, [r3]
  3e6e26: f503 7331    	add.w	r3, r3, #0x2c4
  3e6e2a: 681b         	ldr	r3, [r3]
  3e6e2c: aa09         	add	r2, sp, #0x24
  3e6e2e: 6810         	ldr	r0, [r2]
  3e6e30: 4798         	blx	r3
  3e6e32: 4603         	mov	r3, r0
  3e6e34: 2b00         	cmp	r3, #0x0
  3e6e36: d001         	beq	0x3e6e3c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x93c> @ imm = #0x2
  3e6e38: 2301         	movs	r3, #0x1
  3e6e3a: e000         	b	0x3e6e3e <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x93e> @ imm = #0x0
  3e6e3c: 2300         	movs	r3, #0x0
  3e6e3e: 2b00         	cmp	r3, #0x0
  3e6e40: d034         	beq	0x3e6eac <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x9ac> @ imm = #0x68
  3e6e42: ab09         	add	r3, sp, #0x24
  3e6e44: 681b         	ldr	r3, [r3]
  3e6e46: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e6e4a: 2b00         	cmp	r3, #0x0
  3e6e4c: d039         	beq	0x3e6ec2 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x9c2> @ imm = #0x72
  3e6e4e: ab09         	add	r3, sp, #0x24
  3e6e50: 681b         	ldr	r3, [r3]
  3e6e52: f04f 0200    	mov.w	r2, #0x0
  3e6e56: f6cb 7280    	movt	r2, #0xbf80
  3e6e5a: f8c3 2184    	str.w	r2, [r3, #0x184]
  3e6e5e: ab09         	add	r3, sp, #0x24
  3e6e60: 681b         	ldr	r3, [r3]
  3e6e62: edd3 7a42    	vldr	s15, [r3, #264]
  3e6e66: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e6e6a: ed9f 7b99    	vldr	d7, [pc, #612]          @ 0x3e70d0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbd0>
  3e6e6e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e6e72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6e76: dd24         	ble	0x3e6ec2 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x9c2> @ imm = #0x48
  3e6e78: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x3e70f8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbf8>
  3e6e7a: 58e3         	ldr	r3, [r4, r3]
  3e6e7c: 681b         	ldr	r3, [r3]
  3e6e7e: aa09         	add	r2, sp, #0x24
  3e6e80: 6812         	ldr	r2, [r2]
  3e6e82: ed92 7a43    	vldr	s14, [r2, #268]
  3e6e86: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3e6e8a: ee67 7a27    	vmul.f32	s15, s14, s15
  3e6e8e: 4618         	mov	r0, r3
  3e6e90: 2108         	movs	r1, #0x8
  3e6e92: ee17 2a90    	vmov	r2, s15
  3e6e96: f04f 537e    	mov.w	r3, #0x3f800000
  3e6e9a: f010 fff1    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #0x10fe2
  3e6e9e: ab09         	add	r3, sp, #0x24
  3e6ea0: 681b         	ldr	r3, [r3]
  3e6ea2: f04f 0200    	mov.w	r2, #0x0
  3e6ea6: f8c3 2108    	str.w	r2, [r3, #0x108]
  3e6eaa: e00a         	b	0x3e6ec2 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x9c2> @ imm = #0x14
  3e6eac: ab09         	add	r3, sp, #0x24
  3e6eae: 681b         	ldr	r3, [r3]
  3e6eb0: 2200         	movs	r2, #0x0
  3e6eb2: f883 2104    	strb.w	r2, [r3, #0x104]
  3e6eb6: ab09         	add	r3, sp, #0x24
  3e6eb8: 681b         	ldr	r3, [r3]
  3e6eba: f04f 527d    	mov.w	r2, #0x3f400000
  3e6ebe: f8c3 2108    	str.w	r2, [r3, #0x108]
  3e6ec2: ab09         	add	r3, sp, #0x24
  3e6ec4: 681b         	ldr	r3, [r3]
  3e6ec6: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e6eca: 2b00         	cmp	r3, #0x0
  3e6ecc: f000 8426    	beq.w	0x3e771c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x121c> @ imm = #0x84c
  3e6ed0: a92a         	add	r1, sp, #0xa8
  3e6ed2: f04f 0200    	mov.w	r2, #0x0
  3e6ed6: f04f 0300    	mov.w	r3, #0x0
  3e6eda: e9c1 2300    	strd	r2, r3, [r1]
  3e6ede: a92a         	add	r1, sp, #0xa8
  3e6ee0: f04f 0200    	mov.w	r2, #0x0
  3e6ee4: f04f 0300    	mov.w	r3, #0x0
  3e6ee8: e9c1 2302    	strd	r2, r3, [r1, #8]
  3e6eec: a914         	add	r1, sp, #0x50
  3e6eee: f04f 0200    	mov.w	r2, #0x0
  3e6ef2: f04f 0300    	mov.w	r3, #0x0
  3e6ef6: e9c1 2300    	strd	r2, r3, [r1]
  3e6efa: a92e         	add	r1, sp, #0xb8
  3e6efc: f04f 0200    	mov.w	r2, #0x0
  3e6f00: f04f 0300    	mov.w	r3, #0x0
  3e6f04: e9c1 2300    	strd	r2, r3, [r1]
  3e6f08: a92e         	add	r1, sp, #0xb8
  3e6f0a: f04f 0200    	mov.w	r2, #0x0
  3e6f0e: f04f 0300    	mov.w	r3, #0x0
  3e6f12: e9c1 2302    	strd	r2, r3, [r1, #8]
  3e6f16: ab09         	add	r3, sp, #0x24
  3e6f18: 681b         	ldr	r3, [r3]
  3e6f1a: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e6f1e: 2b00         	cmp	r3, #0x0
  3e6f20: d00d         	beq	0x3e6f3e <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xa3e> @ imm = #0x1a
  3e6f22: ab09         	add	r3, sp, #0x24
  3e6f24: 681b         	ldr	r3, [r3]
  3e6f26: 681b         	ldr	r3, [r3]
  3e6f28: f503 7331    	add.w	r3, r3, #0x2c4
  3e6f2c: 681b         	ldr	r3, [r3]
  3e6f2e: aa09         	add	r2, sp, #0x24
  3e6f30: 6810         	ldr	r0, [r2]
  3e6f32: 4798         	blx	r3
  3e6f34: 4603         	mov	r3, r0
  3e6f36: 2b00         	cmp	r3, #0x0
  3e6f38: d001         	beq	0x3e6f3e <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xa3e> @ imm = #0x2
  3e6f3a: 2301         	movs	r3, #0x1
  3e6f3c: e000         	b	0x3e6f40 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xa40> @ imm = #0x0
  3e6f3e: 2300         	movs	r3, #0x0
  3e6f40: 2b00         	cmp	r3, #0x0
  3e6f42: f000 819c    	beq.w	0x3e727e <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xd7e> @ imm = #0x338
  3e6f46: ab52         	add	r3, sp, #0x148
  3e6f48: 4618         	mov	r0, r3
  3e6f4a: ed9f 0b63    	vldr	d0, [pc, #396]          @ 0x3e70d8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbd8>
  3e6f4e: ed9f 1b64    	vldr	d1, [pc, #400]          @ 0x3e70e0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbe0>
  3e6f52: f7fd fe31    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x239e
  3e6f56: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3e70fc <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbfc>
  3e6f58: 58e3         	ldr	r3, [r4, r3]
  3e6f5a: edd3 7a00    	vldr	s15, [r3]
  3e6f5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e6f62: ab09         	add	r3, sp, #0x24
  3e6f64: 681c         	ldr	r4, [r3]
  3e6f66: ab04         	add	r3, sp, #0x10
  3e6f68: ed9d 5b52    	vldr	d5, [sp, #328]
  3e6f6c: ed9d 6b54    	vldr	d6, [sp, #336]
  3e6f70: 4618         	mov	r0, r3
  3e6f72: eeb0 0b45    	vmov.f64	d0, d5
  3e6f76: eeb0 1b46    	vmov.f64	d1, d6
  3e6f7a: eeb0 2b47    	vmov.f64	d2, d7
  3e6f7e: f7fd fe87    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x22f2
  3e6f82: ab04         	add	r3, sp, #0x10
  3e6f84: f504 7494    	add.w	r4, r4, #0x128
  3e6f88: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e6f8a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e6f8e: ab09         	add	r3, sp, #0x24
  3e6f90: 681b         	ldr	r3, [r3]
  3e6f92: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e6f96: f04f 0200    	mov.w	r2, #0x0
  3e6f9a: f04f 0300    	mov.w	r3, #0x0
  3e6f9e: f6c3 73e0    	movt	r3, #0x3fe0
  3e6fa2: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e6fa6: ab09         	add	r3, sp, #0x24
  3e6fa8: 681b         	ldr	r3, [r3]
  3e6faa: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e6fae: a350         	adr	r3, #320 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xb02>
  3e6fb0: e9d3 2300    	ldrd	r2, r3, [r3]
  3e6fb4: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e6fb8: ac66         	add	r4, sp, #0x198
  3e6fba: ab76         	add	r3, sp, #0x1d8
  3e6fbc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e6fbe: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e6fc2: ab66         	add	r3, sp, #0x198
  3e6fc4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e6fc6: f2f0 f877    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f00ee
  3e6fca: ec41 0b17    	vmov	d7, r0, r1
  3e6fce: eeb5 7b40    	vcmp.f64	d7, #0
  3e6fd2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e6fd6: bf0c         	ite	eq
  3e6fd8: 2300         	moveq	r3, #0x0
  3e6fda: 2301         	movne	r3, #0x1
  3e6fdc: b2db         	uxtb	r3, r3
  3e6fde: 2b00         	cmp	r3, #0x0
  3e6fe0: d010         	beq	0x3e7004 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xb04> @ imm = #0x20
  3e6fe2: ac2e         	add	r4, sp, #0xb8
  3e6fe4: ab04         	add	r3, sp, #0x10
  3e6fe6: ed9d 6b66    	vldr	d6, [sp, #408]
  3e6fea: ed9d 7b68    	vldr	d7, [sp, #416]
  3e6fee: 4618         	mov	r0, r3
  3e6ff0: eeb0 0b46    	vmov.f64	d0, d6
  3e6ff4: eeb0 1b47    	vmov.f64	d1, d7
  3e6ff8: f7fd feb8    	bl	0x3e4d6c <SoldierController::setAlive(bool)+0x3e4> @ imm = #-0x2290
  3e6ffc: ab04         	add	r3, sp, #0x10
  3e6ffe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e7000: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e7004: ab09         	add	r3, sp, #0x24
  3e7006: 681b         	ldr	r3, [r3]
  3e7008: ed93 8a67    	vldr	s16, [r3, #412]
  3e700c: ab09         	add	r3, sp, #0x24
  3e700e: 681b         	ldr	r3, [r3]
  3e7010: 681b         	ldr	r3, [r3]
  3e7012: f503 733f    	add.w	r3, r3, #0x2fc
  3e7016: 681b         	ldr	r3, [r3]
  3e7018: aa09         	add	r2, sp, #0x24
  3e701a: 6810         	ldr	r0, [r2]
  3e701c: 4798         	blx	r3
  3e701e: ee07 0a90    	vmov	s15, r0
  3e7022: ee68 7a27    	vmul.f32	s15, s16, s15
  3e7026: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e702a: ac2a         	add	r4, sp, #0xa8
  3e702c: aa04         	add	r2, sp, #0x10
  3e702e: ab2e         	add	r3, sp, #0xb8
  3e7030: ed93 5b00    	vldr	d5, [r3]
  3e7034: ed93 6b02    	vldr	d6, [r3, #8]
  3e7038: 4610         	mov	r0, r2
  3e703a: eeb0 0b45    	vmov.f64	d0, d5
  3e703e: eeb0 1b46    	vmov.f64	d1, d6
  3e7042: eeb0 2b47    	vmov.f64	d2, d7
  3e7046: f7fd fe23    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x23ba
  3e704a: ab04         	add	r3, sp, #0x10
  3e704c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e704e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e7052: ab09         	add	r3, sp, #0x24
  3e7054: 681b         	ldr	r3, [r3]
  3e7056: edd3 7a66    	vldr	s15, [r3, #408]
  3e705a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e705e: ab09         	add	r3, sp, #0x24
  3e7060: 681b         	ldr	r3, [r3]
  3e7062: edd3 7a43    	vldr	s15, [r3, #268]
  3e7066: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3e706a: ed9f 7b1f    	vldr	d7, [pc, #124]          @ 0x3e70e8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbe8>
  3e706e: ee25 5b07    	vmul.f64	d5, d5, d7
  3e7072: ab09         	add	r3, sp, #0x24
  3e7074: 681b         	ldr	r3, [r3]
  3e7076: edd3 7a74    	vldr	s15, [r3, #464]
  3e707a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e707e: ee25 7b07    	vmul.f64	d7, d5, d7
  3e7082: ee36 7b47    	vsub.f64	d7, d6, d7
  3e7086: eeb5 7bc0    	vcmpe.f64	d7, #0
  3e708a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e708e: dd39         	ble	0x3e7104 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xc04> @ imm = #0x72
  3e7090: ab09         	add	r3, sp, #0x24
  3e7092: 681b         	ldr	r3, [r3]
  3e7094: edd3 7a66    	vldr	s15, [r3, #408]
  3e7098: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e709c: ab09         	add	r3, sp, #0x24
  3e709e: 681b         	ldr	r3, [r3]
  3e70a0: edd3 7a43    	vldr	s15, [r3, #268]
  3e70a4: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3e70a8: ed9f 7b0f    	vldr	d7, [pc, #60]           @ 0x3e70e8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbe8>
  3e70ac: ee25 5b07    	vmul.f64	d5, d5, d7
  3e70b0: ab09         	add	r3, sp, #0x24
  3e70b2: 681b         	ldr	r3, [r3]
  3e70b4: edd3 7a74    	vldr	s15, [r3, #464]
  3e70b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e70bc: ee25 7b07    	vmul.f64	d7, d5, d7
  3e70c0: ee36 7b47    	vsub.f64	d7, d6, d7
  3e70c4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e70c8: e01e         	b	0x3e7108 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xc08> @ imm = #0x3c
  3e70ca: bf00         	nop
  3e70cc: f3af 8000    	nop.w
  3e70d0: 3333         	adds	r3, #0x33
  3e70d2: 3333         	adds	r3, #0x33
  3e70d4: 3333         	adds	r3, #0x33
  3e70d6: 3fe3         	subs	r7, #0xe3
  3e70e4: 0000         	movs	r0, r0
  3e70e6: c049         	stm	r0!, {r0, r3, r6}
  3e70e8: 6666         	str	r6, [r4, #0x64]
  3e70ea: 6666         	str	r6, [r4, #0x64]
  3e70ec: 6666         	str	r6, [r4, #0x64]
  3e70ee: 3fd6         	subs	r7, #0xd6
  3e70f0: 0000         	movs	r0, r0
  3e70f2: a000         	adr	r0, #0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xbf6>
  3e70f4: 9999         	ldr	r1, [sp, #0x264]
  3e70f6: 3fb9         	subs	r7, #0xb9
  3e70f8: d730         	bvc	0x3e715c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xc5c> @ imm = #0x60
  3e70fa: ffff da30    	<unknown>
  3e70fe: ffff 0000    	<unknown>
  3e7102: 0000         	movs	r0, r0
  3e7104: ed5f 7a02    	vldr	s15, [pc, #-8]          @ 0x3e7100 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xc00>
  3e7108: ab09         	add	r3, sp, #0x24
  3e710a: 681b         	ldr	r3, [r3]
  3e710c: edc3 7a66    	vstr	s15, [r3, #408]
  3e7110: ab09         	add	r3, sp, #0x24
  3e7112: 681b         	ldr	r3, [r3]
  3e7114: 2201         	movs	r2, #0x1
  3e7116: f883 211d    	strb.w	r2, [r3, #0x11d]
  3e711a: ab2a         	add	r3, sp, #0xa8
  3e711c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e711e: f2ef ffcb    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2eff96
  3e7122: 4602         	mov	r2, r0
  3e7124: 460b         	mov	r3, r1
  3e7126: a914         	add	r1, sp, #0x50
  3e7128: e9c1 2300    	strd	r2, r3, [r1]
  3e712c: ab14         	add	r3, sp, #0x50
  3e712e: ed93 7b00    	vldr	d7, [r3]
  3e7132: eeb5 7b40    	vcmp.f64	d7, #0
  3e7136: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e713a: f000 809f    	beq.w	0x3e727c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xd7c> @ imm = #0x13e
  3e713e: ab09         	add	r3, sp, #0x24
  3e7140: 681b         	ldr	r3, [r3]
  3e7142: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7146: ac6a         	add	r4, sp, #0x1a8
  3e7148: 3338         	adds	r3, #0x38
  3e714a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e714c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e7150: ac16         	add	r4, sp, #0x58
  3e7152: ed9d 4b6a    	vldr	d4, [sp, #424]
  3e7156: ed9d 5b6c    	vldr	d5, [sp, #432]
  3e715a: ab2e         	add	r3, sp, #0xb8
  3e715c: ed93 6b00    	vldr	d6, [r3]
  3e7160: ed93 7b02    	vldr	d7, [r3, #8]
  3e7164: eeb0 0b44    	vmov.f64	d0, d4
  3e7168: eeb0 1b45    	vmov.f64	d1, d5
  3e716c: eeb0 2b46    	vmov.f64	d2, d6
  3e7170: eeb0 3b47    	vmov.f64	d3, d7
  3e7174: f7fd fdb2    	bl	0x3e4cdc <SoldierController::setAlive(bool)+0x354> @ imm = #-0x249c
  3e7178: ed84 0b00    	vstr	d0, [r4]
  3e717c: ab09         	add	r3, sp, #0x24
  3e717e: 681b         	ldr	r3, [r3]
  3e7180: 681b         	ldr	r3, [r3]
  3e7182: f503 733f    	add.w	r3, r3, #0x2fc
  3e7186: 681b         	ldr	r3, [r3]
  3e7188: aa09         	add	r2, sp, #0x24
  3e718a: 6810         	ldr	r0, [r2]
  3e718c: 4798         	blx	r3
  3e718e: ee07 0a10    	vmov	s14, r0
  3e7192: ab0c         	add	r3, sp, #0x30
  3e7194: eef7 7a08    	vmov.f32	s15, #1.500000e+00
  3e7198: ee67 7a27    	vmul.f32	s15, s14, s15
  3e719c: edc3 7a00    	vstr	s15, [r3]
  3e71a0: ab7a         	add	r3, sp, #0x1e8
  3e71a2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e71a4: f2ef ff88    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2eff10
  3e71a8: ec41 0b16    	vmov	d6, r0, r1
  3e71ac: ab0c         	add	r3, sp, #0x30
  3e71ae: edd3 7a00    	vldr	s15, [r3]
  3e71b2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e71b6: ee27 7b06    	vmul.f64	d7, d7, d6
  3e71ba: ab0c         	add	r3, sp, #0x30
  3e71bc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e71c0: edc3 7a00    	vstr	s15, [r3]
  3e71c4: aa14         	add	r2, sp, #0x50
  3e71c6: ab16         	add	r3, sp, #0x58
  3e71c8: ed92 6b00    	vldr	d6, [r2]
  3e71cc: ed93 7b00    	vldr	d7, [r3]
  3e71d0: ee36 6b47    	vsub.f64	d6, d6, d7
  3e71d4: ed9f 7b98    	vldr	d7, [pc, #608]          @ 0x3e7438 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf38>
  3e71d8: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e71dc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e71e0: d502         	bpl	0x3e71e8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xce8> @ imm = #0x4
  3e71e2: eddf 7a9f    	vldr	s15, [pc, #636]         @ 0x3e7460 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf60>
  3e71e6: e009         	b	0x3e71fc <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xcfc> @ imm = #0x12
  3e71e8: aa14         	add	r2, sp, #0x50
  3e71ea: ab16         	add	r3, sp, #0x58
  3e71ec: ed92 6b00    	vldr	d6, [r2]
  3e71f0: ed93 7b00    	vldr	d7, [r3]
  3e71f4: ee36 7b47    	vsub.f64	d7, d6, d7
  3e71f8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e71fc: ab0d         	add	r3, sp, #0x34
  3e71fe: edc3 7a00    	vstr	s15, [r3]
  3e7202: ab09         	add	r3, sp, #0x24
  3e7204: 681b         	ldr	r3, [r3]
  3e7206: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e720a: aa0c         	add	r2, sp, #0x30
  3e720c: ab08         	add	r3, sp, #0x20
  3e720e: ed92 7a00    	vldr	s14, [r2]
  3e7212: edd3 7a00    	vldr	s15, [r3]
  3e7216: ee27 7a27    	vmul.f32	s14, s14, s15
  3e721a: ab0d         	add	r3, sp, #0x34
  3e721c: edd3 7a00    	vldr	s15, [r3]
  3e7220: ee27 7a27    	vmul.f32	s14, s14, s15
  3e7224: ab09         	add	r3, sp, #0x24
  3e7226: 681b         	ldr	r3, [r3]
  3e7228: edd3 7a6c    	vldr	s15, [r3, #432]
  3e722c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7230: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e7234: aa56         	add	r2, sp, #0x158
  3e7236: ab2e         	add	r3, sp, #0xb8
  3e7238: ed93 5b00    	vldr	d5, [r3]
  3e723c: ed93 6b02    	vldr	d6, [r3, #8]
  3e7240: 4610         	mov	r0, r2
  3e7242: eeb0 0b45    	vmov.f64	d0, d5
  3e7246: eeb0 1b46    	vmov.f64	d1, d6
  3e724a: eeb0 2b47    	vmov.f64	d2, d7
  3e724e: f7fd fd1f    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x25c2
  3e7252: ed9d 4b56    	vldr	d4, [sp, #344]
  3e7256: ed9d 5b58    	vldr	d5, [sp, #352]
  3e725a: 4b82         	ldr	r3, [pc, #0x208]        @ 0x3e7464 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf64>
  3e725c: 447b         	add	r3, pc
  3e725e: ed93 6b00    	vldr	d6, [r3]
  3e7262: ed93 7b02    	vldr	d7, [r3, #8]
  3e7266: 4620         	mov	r0, r4
  3e7268: eeb0 0b44    	vmov.f64	d0, d4
  3e726c: eeb0 1b45    	vmov.f64	d1, d5
  3e7270: eeb0 2b46    	vmov.f64	d2, d6
  3e7274: eeb0 3b47    	vmov.f64	d3, d7
  3e7278: f7fd fdf2    	bl	0x3e4e60 <SoldierController::setAlive(bool)+0x4d8> @ imm = #-0x241c
  3e727c: e236         	b	0x3e76ec <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11ec> @ imm = #0x46c
  3e727e: ab5a         	add	r3, sp, #0x168
  3e7280: 4618         	mov	r0, r3
  3e7282: ed9f 0b6f    	vldr	d0, [pc, #444]          @ 0x3e7440 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf40>
  3e7286: ed9f 1b70    	vldr	d1, [pc, #448]          @ 0x3e7448 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf48>
  3e728a: f7fd fc95    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x26d6
  3e728e: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3e7468 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf68>
  3e7290: 58e3         	ldr	r3, [r4, r3]
  3e7292: edd3 7a00    	vldr	s15, [r3]
  3e7296: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e729a: ab09         	add	r3, sp, #0x24
  3e729c: 681d         	ldr	r5, [r3]
  3e729e: ab04         	add	r3, sp, #0x10
  3e72a0: ed9d 5b5a    	vldr	d5, [sp, #360]
  3e72a4: ed9d 6b5c    	vldr	d6, [sp, #368]
  3e72a8: 4618         	mov	r0, r3
  3e72aa: eeb0 0b45    	vmov.f64	d0, d5
  3e72ae: eeb0 1b46    	vmov.f64	d1, d6
  3e72b2: eeb0 2b47    	vmov.f64	d2, d7
  3e72b6: f7fd fceb    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x262a
  3e72ba: ab04         	add	r3, sp, #0x10
  3e72bc: f505 7594    	add.w	r5, r5, #0x128
  3e72c0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e72c2: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e72c6: ab09         	add	r3, sp, #0x24
  3e72c8: 681b         	ldr	r3, [r3]
  3e72ca: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e72ce: a360         	adr	r3, #384 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xe32>
  3e72d0: e9d3 2300    	ldrd	r2, r3, [r3]
  3e72d4: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e72d8: ab09         	add	r3, sp, #0x24
  3e72da: 681b         	ldr	r3, [r3]
  3e72dc: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e72e0: a35d         	adr	r3, #372 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xe41>
  3e72e2: e9d3 2300    	ldrd	r2, r3, [r3]
  3e72e6: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e72ea: ab18         	add	r3, sp, #0x60
  3e72ec: eddd 7a7e    	vldr	s15, [sp, #504]
  3e72f0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e72f4: ed83 7b00    	vstr	d7, [r3]
  3e72f8: ab18         	add	r3, sp, #0x60
  3e72fa: ed93 7b00    	vldr	d7, [r3]
  3e72fe: eeb5 7b40    	vcmp.f64	d7, #0
  3e7302: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e7306: d019         	beq	0x3e733c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xe3c> @ imm = #0x32
  3e7308: aa5e         	add	r2, sp, #0x178
  3e730a: ab18         	add	r3, sp, #0x60
  3e730c: 4610         	mov	r0, r2
  3e730e: ed93 0b00    	vldr	d0, [r3]
  3e7312: ed9f 1b4b    	vldr	d1, [pc, #300]          @ 0x3e7440 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf40>
  3e7316: f7fd fc4f    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x2762
  3e731a: ad2e         	add	r5, sp, #0xb8
  3e731c: ab04         	add	r3, sp, #0x10
  3e731e: ed9d 6b5e    	vldr	d6, [sp, #376]
  3e7322: ed9d 7b60    	vldr	d7, [sp, #384]
  3e7326: 4618         	mov	r0, r3
  3e7328: eeb0 0b46    	vmov.f64	d0, d6
  3e732c: eeb0 1b47    	vmov.f64	d1, d7
  3e7330: f7fd fd1c    	bl	0x3e4d6c <SoldierController::setAlive(bool)+0x3e4> @ imm = #-0x25c8
  3e7334: ab04         	add	r3, sp, #0x10
  3e7336: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e7338: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e733c: ab09         	add	r3, sp, #0x24
  3e733e: 681b         	ldr	r3, [r3]
  3e7340: edd3 7a68    	vldr	s15, [r3, #416]
  3e7344: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e7348: ab18         	add	r3, sp, #0x60
  3e734a: ed93 7b00    	vldr	d7, [r3]
  3e734e: ee26 8b07    	vmul.f64	d8, d6, d7
  3e7352: ab09         	add	r3, sp, #0x24
  3e7354: 681b         	ldr	r3, [r3]
  3e7356: 681b         	ldr	r3, [r3]
  3e7358: f503 733f    	add.w	r3, r3, #0x2fc
  3e735c: 681b         	ldr	r3, [r3]
  3e735e: aa09         	add	r2, sp, #0x24
  3e7360: 6810         	ldr	r0, [r2]
  3e7362: 4798         	blx	r3
  3e7364: ee07 0a90    	vmov	s15, r0
  3e7368: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e736c: ee28 7b07    	vmul.f64	d7, d8, d7
  3e7370: ad2a         	add	r5, sp, #0xa8
  3e7372: ab04         	add	r3, sp, #0x10
  3e7374: 4618         	mov	r0, r3
  3e7376: eeb0 0b47    	vmov.f64	d0, d7
  3e737a: ed9f 1b31    	vldr	d1, [pc, #196]          @ 0x3e7440 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf40>
  3e737e: f7fd fc1b    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x27ca
  3e7382: ab04         	add	r3, sp, #0x10
  3e7384: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e7386: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e738a: ab2a         	add	r3, sp, #0xa8
  3e738c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e738e: f2ef fe93    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2efd26
  3e7392: 4602         	mov	r2, r0
  3e7394: 460b         	mov	r3, r1
  3e7396: a914         	add	r1, sp, #0x50
  3e7398: e9c1 2300    	strd	r2, r3, [r1]
  3e739c: ab14         	add	r3, sp, #0x50
  3e739e: ed93 7b00    	vldr	d7, [r3]
  3e73a2: eeb5 7b40    	vcmp.f64	d7, #0
  3e73a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e73aa: f000 8100    	beq.w	0x3e75ae <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x10ae> @ imm = #0x200
  3e73ae: ab09         	add	r3, sp, #0x24
  3e73b0: 681b         	ldr	r3, [r3]
  3e73b2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e73b6: ad6a         	add	r5, sp, #0x1a8
  3e73b8: 3338         	adds	r3, #0x38
  3e73ba: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e73bc: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e73c0: ad1a         	add	r5, sp, #0x68
  3e73c2: ed9d 4b6a    	vldr	d4, [sp, #424]
  3e73c6: ed9d 5b6c    	vldr	d5, [sp, #432]
  3e73ca: ab2e         	add	r3, sp, #0xb8
  3e73cc: ed93 6b00    	vldr	d6, [r3]
  3e73d0: ed93 7b02    	vldr	d7, [r3, #8]
  3e73d4: eeb0 0b44    	vmov.f64	d0, d4
  3e73d8: eeb0 1b45    	vmov.f64	d1, d5
  3e73dc: eeb0 2b46    	vmov.f64	d2, d6
  3e73e0: eeb0 3b47    	vmov.f64	d3, d7
  3e73e4: f7fd fc7a    	bl	0x3e4cdc <SoldierController::setAlive(bool)+0x354> @ imm = #-0x270c
  3e73e8: ed85 0b00    	vstr	d0, [r5]
  3e73ec: ab09         	add	r3, sp, #0x24
  3e73ee: 681b         	ldr	r3, [r3]
  3e73f0: 681b         	ldr	r3, [r3]
  3e73f2: f503 733f    	add.w	r3, r3, #0x2fc
  3e73f6: 681b         	ldr	r3, [r3]
  3e73f8: aa09         	add	r2, sp, #0x24
  3e73fa: 6810         	ldr	r0, [r2]
  3e73fc: 4798         	blx	r3
  3e73fe: ee07 0a10    	vmov	s14, r0
  3e7402: ab0e         	add	r3, sp, #0x38
  3e7404: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  3e7408: ee67 7a27    	vmul.f32	s15, s14, s15
  3e740c: edc3 7a00    	vstr	s15, [r3]
  3e7410: aa14         	add	r2, sp, #0x50
  3e7412: ab1a         	add	r3, sp, #0x68
  3e7414: ed92 6b00    	vldr	d6, [r2]
  3e7418: ed93 7b00    	vldr	d7, [r3]
  3e741c: ee36 6b47    	vsub.f64	d6, d6, d7
  3e7420: ed9f 7b05    	vldr	d7, [pc, #20]           @ 0x3e7438 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf38>
  3e7424: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e7428: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e742c: d51e         	bpl	0x3e746c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf6c> @ imm = #0x3c
  3e742e: eddf 7a0c    	vldr	s15, [pc, #48]          @ 0x3e7460 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf60>
  3e7432: e025         	b	0x3e7480 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf80> @ imm = #0x4a
  3e7434: f3af 8000    	nop.w
  3e7438: 432d         	orrs	r5, r5
  3e743a: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
  3e743e: 3f1a         	subs	r7, #0x1a
  3e744c: c000         	<unknown>
  3e744e: c072         	stm	r0!, {r1, r4, r5, r6}
  3e7450: 0000         	movs	r0, r0
  3e7452: a000         	adr	r0, #0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xf56>
  3e7454: 9999         	ldr	r1, [sp, #0x264]
  3e7456: 3fc9         	subs	r7, #0xc9
  3e7458: 0000         	movs	r0, r0
  3e745a: 8000         	strh	r0, [r0]
  3e745c: ae14         	add	r6, sp, #0x50
  3e745e: 3fef         	subs	r7, #0xef
  3e7460: b717         	<unknown>
  3e7462: 38d1         	subs	r0, #0xd1
  3e7464: 1248         	asrs	r0, r1, #0x9
  3e7466: 003f         	movs	r7, r7
  3e7468: da30         	bge	0x3e74cc <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0xfcc> @ imm = #0x60
  3e746a: ffff aa14    	vshll.u32	q13, d4, #0x1f
  3e746e: ab1a         	add	r3, sp, #0x68
  3e7470: ed92 6b00    	vldr	d6, [r2]
  3e7474: ed93 7b00    	vldr	d7, [r3]
  3e7478: ee36 7b47    	vsub.f64	d7, d6, d7
  3e747c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e7480: ab0f         	add	r3, sp, #0x3c
  3e7482: edc3 7a00    	vstr	s15, [r3]
  3e7486: ab09         	add	r3, sp, #0x24
  3e7488: 681b         	ldr	r3, [r3]
  3e748a: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3e748e: aa0e         	add	r2, sp, #0x38
  3e7490: ab08         	add	r3, sp, #0x20
  3e7492: ed92 7a00    	vldr	s14, [r2]
  3e7496: edd3 7a00    	vldr	s15, [r3]
  3e749a: ee27 7a27    	vmul.f32	s14, s14, s15
  3e749e: ab0f         	add	r3, sp, #0x3c
  3e74a0: edd3 7a00    	vldr	s15, [r3]
  3e74a4: ee27 7a27    	vmul.f32	s14, s14, s15
  3e74a8: ab09         	add	r3, sp, #0x24
  3e74aa: 681b         	ldr	r3, [r3]
  3e74ac: edd3 7a6c    	vldr	s15, [r3, #432]
  3e74b0: ee67 7a27    	vmul.f32	s15, s14, s15
  3e74b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e74b8: aa62         	add	r2, sp, #0x188
  3e74ba: ab2e         	add	r3, sp, #0xb8
  3e74bc: ed93 5b00    	vldr	d5, [r3]
  3e74c0: ed93 6b02    	vldr	d6, [r3, #8]
  3e74c4: 4610         	mov	r0, r2
  3e74c6: eeb0 0b45    	vmov.f64	d0, d5
  3e74ca: eeb0 1b46    	vmov.f64	d1, d6
  3e74ce: eeb0 2b47    	vmov.f64	d2, d7
  3e74d2: f7fd fbdd    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x2846
  3e74d6: ed9d 4b62    	vldr	d4, [sp, #392]
  3e74da: ed9d 5b64    	vldr	d5, [sp, #400]
  3e74de: 4b8c         	ldr	r3, [pc, #0x230]        @ 0x3e7710 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1210>
  3e74e0: 447b         	add	r3, pc
  3e74e2: ed93 6b00    	vldr	d6, [r3]
  3e74e6: ed93 7b02    	vldr	d7, [r3, #8]
  3e74ea: 4628         	mov	r0, r5
  3e74ec: eeb0 0b44    	vmov.f64	d0, d4
  3e74f0: eeb0 1b45    	vmov.f64	d1, d5
  3e74f4: eeb0 2b46    	vmov.f64	d2, d6
  3e74f8: eeb0 3b47    	vmov.f64	d3, d7
  3e74fc: f7fd fcb0    	bl	0x3e4e60 <SoldierController::setAlive(bool)+0x4d8> @ imm = #-0x26a0
  3e7500: ab09         	add	r3, sp, #0x24
  3e7502: 681b         	ldr	r3, [r3]
  3e7504: edd3 7a6f    	vldr	s15, [r3, #444]
  3e7508: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e750c: ab14         	add	r3, sp, #0x50
  3e750e: ed9f 5b78    	vldr	d5, [pc, #480]          @ 0x3e76f0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11f0>
  3e7512: ed93 7b00    	vldr	d7, [r3]
  3e7516: ee85 7b07    	vdiv.f64	d7, d5, d7
  3e751a: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e751e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e7522: dc00         	bgt	0x3e7526 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1026> @ imm = #0x0
  3e7524: e043         	b	0x3e75ae <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x10ae> @ imm = #0x86
  3e7526: ab09         	add	r3, sp, #0x24
  3e7528: 681b         	ldr	r3, [r3]
  3e752a: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e752e: 2b00         	cmp	r3, #0x0
  3e7530: d03d         	beq	0x3e75ae <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x10ae> @ imm = #0x7a
  3e7532: ab09         	add	r3, sp, #0x24
  3e7534: 681b         	ldr	r3, [r3]
  3e7536: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3e753a: f083 0301    	eor	r3, r3, #0x1
  3e753e: b2db         	uxtb	r3, r3
  3e7540: 2b00         	cmp	r3, #0x0
  3e7542: d034         	beq	0x3e75ae <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x10ae> @ imm = #0x68
  3e7544: ab09         	add	r3, sp, #0x24
  3e7546: 681b         	ldr	r3, [r3]
  3e7548: f04f 0200    	mov.w	r2, #0x0
  3e754c: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3e7550: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x3e7714 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1214>
  3e7552: 58e3         	ldr	r3, [r4, r3]
  3e7554: 681d         	ldr	r5, [r3]
  3e7556: ab14         	add	r3, sp, #0x50
  3e7558: ed93 6b00    	vldr	d6, [r3]
  3e755c: ed9f 7b66    	vldr	d7, [pc, #408]          @ 0x3e76f8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11f8>
  3e7560: ee86 7b07    	vdiv.f64	d7, d6, d7
  3e7564: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3e7568: f7fd faa0    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x2ac0
  3e756c: 4603         	mov	r3, r0
  3e756e: ee07 3a90    	vmov	s15, r3
  3e7572: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e7576: eddf 7a64    	vldr	s15, [pc, #400]         @ 0x3e7708 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1208>
  3e757a: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e757e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e7582: ee77 7a67    	vsub.f32	s15, s14, s15
  3e7586: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e758a: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e758e: ee26 6b07    	vmul.f64	d6, d6, d7
  3e7592: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3e7596: ee36 7b07    	vadd.f64	d7, d6, d7
  3e759a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e759e: 4628         	mov	r0, r5
  3e75a0: 210a         	movs	r1, #0xa
  3e75a2: ee18 2a10    	vmov	r2, s16
  3e75a6: ee17 3a90    	vmov	r3, s15
  3e75aa: f010 fc69    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #0x108d2
  3e75ae: ab09         	add	r3, sp, #0x24
  3e75b0: 681b         	ldr	r3, [r3]
  3e75b2: ed93 7a46    	vldr	s14, [r3, #280]
  3e75b6: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3e75ba: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e75be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e75c2: dd55         	ble	0x3e7670 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1170> @ imm = #0xaa
  3e75c4: ab09         	add	r3, sp, #0x24
  3e75c6: 681b         	ldr	r3, [r3]
  3e75c8: f893 311d    	ldrb.w	r3, [r3, #0x11d]
  3e75cc: f083 0301    	eor	r3, r3, #0x1
  3e75d0: b2db         	uxtb	r3, r3
  3e75d2: 2b00         	cmp	r3, #0x0
  3e75d4: d04c         	beq	0x3e7670 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1170> @ imm = #0x98
  3e75d6: ab09         	add	r3, sp, #0x24
  3e75d8: 681b         	ldr	r3, [r3]
  3e75da: 2201         	movs	r2, #0x1
  3e75dc: f883 211d    	strb.w	r2, [r3, #0x11d]
  3e75e0: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x3e7714 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1214>
  3e75e2: 58e3         	ldr	r3, [r4, r3]
  3e75e4: 681b         	ldr	r3, [r3]
  3e75e6: 4618         	mov	r0, r3
  3e75e8: 210b         	movs	r1, #0xb
  3e75ea: f04f 527f    	mov.w	r2, #0x3fc00000
  3e75ee: f04f 537e    	mov.w	r3, #0x3f800000
  3e75f2: f010 fc45    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #0x1088a
  3e75f6: ab09         	add	r3, sp, #0x24
  3e75f8: 681b         	ldr	r3, [r3]
  3e75fa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e75fe: 4618         	mov	r0, r3
  3e7600: f04f 0200    	mov.w	r2, #0x0
  3e7604: f04f 0300    	mov.w	r3, #0x0
  3e7608: f2eb fdc3    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2ebb86
  3e760c: ab09         	add	r3, sp, #0x24
  3e760e: 681b         	ldr	r3, [r3]
  3e7610: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e7614: ab09         	add	r3, sp, #0x24
  3e7616: 681b         	ldr	r3, [r3]
  3e7618: ed93 7a6c    	vldr	s14, [r3, #432]
  3e761c: eddf 7a3b    	vldr	s15, [pc, #236]         @ 0x3e770c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x120c>
  3e7620: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7624: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e7628: ab66         	add	r3, sp, #0x198
  3e762a: 4618         	mov	r0, r3
  3e762c: ed9f 0b34    	vldr	d0, [pc, #208]          @ 0x3e7700 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1200>
  3e7630: eeb0 1b47    	vmov.f64	d1, d7
  3e7634: f7fd fac0    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x2a80
  3e7638: ed9d 4b66    	vldr	d4, [sp, #408]
  3e763c: ed9d 5b68    	vldr	d5, [sp, #416]
  3e7640: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x3e7718 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1218>
  3e7642: 447b         	add	r3, pc
  3e7644: ed93 6b00    	vldr	d6, [r3]
  3e7648: ed93 7b02    	vldr	d7, [r3, #8]
  3e764c: 4620         	mov	r0, r4
  3e764e: eeb0 0b44    	vmov.f64	d0, d4
  3e7652: eeb0 1b45    	vmov.f64	d1, d5
  3e7656: eeb0 2b46    	vmov.f64	d2, d6
  3e765a: eeb0 3b47    	vmov.f64	d3, d7
  3e765e: f7fd fbff    	bl	0x3e4e60 <SoldierController::setAlive(bool)+0x4d8> @ imm = #-0x2802
  3e7662: ab09         	add	r3, sp, #0x24
  3e7664: 681b         	ldr	r3, [r3]
  3e7666: f04f 527e    	mov.w	r2, #0x3f800000
  3e766a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3e766e: e03d         	b	0x3e76ec <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11ec> @ imm = #0x7a
  3e7670: ab09         	add	r3, sp, #0x24
  3e7672: 681b         	ldr	r3, [r3]
  3e7674: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3e7678: f083 0301    	eor	r3, r3, #0x1
  3e767c: b2db         	uxtb	r3, r3
  3e767e: 2b00         	cmp	r3, #0x0
  3e7680: d010         	beq	0x3e76a4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11a4> @ imm = #0x20
  3e7682: ab09         	add	r3, sp, #0x24
  3e7684: 681b         	ldr	r3, [r3]
  3e7686: ed93 7a46    	vldr	s14, [r3, #280]
  3e768a: eefe 7a08    	vmov.f32	s15, #-7.500000e-01
  3e768e: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e7692: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e7696: d505         	bpl	0x3e76a4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11a4> @ imm = #0xa
  3e7698: ab09         	add	r3, sp, #0x24
  3e769a: 681b         	ldr	r3, [r3]
  3e769c: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e76a0: 2b00         	cmp	r3, #0x0
  3e76a2: d117         	bne	0x3e76d4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11d4> @ imm = #0x2e
  3e76a4: ab09         	add	r3, sp, #0x24
  3e76a6: 681b         	ldr	r3, [r3]
  3e76a8: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3e76ac: 2b00         	cmp	r3, #0x0
  3e76ae: d01d         	beq	0x3e76ec <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11ec> @ imm = #0x3a
  3e76b0: ab09         	add	r3, sp, #0x24
  3e76b2: 681b         	ldr	r3, [r3]
  3e76b4: ed93 7a46    	vldr	s14, [r3, #280]
  3e76b8: eefe 7a00    	vmov.f32	s15, #-5.000000e-01
  3e76bc: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e76c0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e76c4: d400         	bmi	0x3e76c8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11c8> @ imm = #0x0
  3e76c6: e05f         	b	0x3e7788 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1288> @ imm = #0xbe
  3e76c8: ab09         	add	r3, sp, #0x24
  3e76ca: 681b         	ldr	r3, [r3]
  3e76cc: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e76d0: 2b00         	cmp	r3, #0x0
  3e76d2: d00b         	beq	0x3e76ec <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x11ec> @ imm = #0x16
  3e76d4: ab09         	add	r3, sp, #0x24
  3e76d6: 681b         	ldr	r3, [r3]
  3e76d8: 2201         	movs	r2, #0x1
  3e76da: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e76de: ab09         	add	r3, sp, #0x24
  3e76e0: 681b         	ldr	r3, [r3]
  3e76e2: f04f 0200    	mov.w	r2, #0x0
  3e76e6: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3e76ea: e04d         	b	0x3e7788 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1288> @ imm = #0x9a
  3e76ec: e04c         	b	0x3e7788 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1288> @ imm = #0x98
  3e76ee: bf00         	nop
  3e76f0: 0000         	movs	r0, r0
  3e76f2: 0000         	movs	r0, r0
  3e76f4: 0000         	movs	r0, r0
  3e76f6: 4049         	eors	r1, r1
  3e76f8: 0000         	movs	r0, r0
  3e76fa: 0000         	movs	r0, r0
  3e76fc: 0000         	movs	r0, r0
  3e76fe: 4069         	eors	r1, r5
  3e7708: 0000         	movs	r0, r0
  3e770a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e790c <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x140c>
  3e770c: 0000         	movs	r0, r0
  3e770e: 435c         	muls	r4, r3, r4
  3e7710: 0fc4         	lsrs	r4, r0, #0x1f
  3e7712: 003f         	movs	r7, r7
  3e7714: d730         	bvc	0x3e7778 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1278> @ imm = #0x60
  3e7716: ffff 0e62    	<unknown>
  3e771a: 003f         	movs	r7, r7
  3e771c: ab6a         	add	r3, sp, #0x1a8
  3e771e: 4618         	mov	r0, r3
  3e7720: ed9f 0ba1    	vldr	d0, [pc, #644]          @ 0x3e79a8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14a8>
  3e7724: ed9f 1ba2    	vldr	d1, [pc, #648]          @ 0x3e79b0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14b0>
  3e7728: f7fd fa46    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x2b74
  3e772c: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x3e79d0 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14d0>
  3e772e: 58e3         	ldr	r3, [r4, r3]
  3e7730: edd3 7a00    	vldr	s15, [r3]
  3e7734: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e7738: ab09         	add	r3, sp, #0x24
  3e773a: 681c         	ldr	r4, [r3]
  3e773c: ab04         	add	r3, sp, #0x10
  3e773e: ed9d 5b6a    	vldr	d5, [sp, #424]
  3e7742: ed9d 6b6c    	vldr	d6, [sp, #432]
  3e7746: 4618         	mov	r0, r3
  3e7748: eeb0 0b45    	vmov.f64	d0, d5
  3e774c: eeb0 1b46    	vmov.f64	d1, d6
  3e7750: eeb0 2b47    	vmov.f64	d2, d7
  3e7754: f7fd fa9c    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x2ac8
  3e7758: ab04         	add	r3, sp, #0x10
  3e775a: f504 7494    	add.w	r4, r4, #0x128
  3e775e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e7760: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e7764: ab09         	add	r3, sp, #0x24
  3e7766: 681b         	ldr	r3, [r3]
  3e7768: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e776c: a394         	adr	r3, #592 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1304>
  3e776e: e9d3 2300    	ldrd	r2, r3, [r3]
  3e7772: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e7776: ab09         	add	r3, sp, #0x24
  3e7778: 681b         	ldr	r3, [r3]
  3e777a: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e777e: a392         	adr	r3, #584 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1314>
  3e7780: e9d3 2300    	ldrd	r2, r3, [r3]
  3e7784: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e7788: ab09         	add	r3, sp, #0x24
  3e778a: 681b         	ldr	r3, [r3]
  3e778c: ed93 7a57    	vldr	s14, [r3, #348]
  3e7790: ab08         	add	r3, sp, #0x20
  3e7792: edd3 7a00    	vldr	s15, [r3]
  3e7796: ee77 7a27    	vadd.f32	s15, s14, s15
  3e779a: ab09         	add	r3, sp, #0x24
  3e779c: 681b         	ldr	r3, [r3]
  3e779e: edc3 7a57    	vstr	s15, [r3, #348]
  3e77a2: ab09         	add	r3, sp, #0x24
  3e77a4: 681b         	ldr	r3, [r3]
  3e77a6: edd3 7a57    	vldr	s15, [r3, #348]
  3e77aa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e77ae: ed9f 7b82    	vldr	d7, [pc, #520]          @ 0x3e79b8 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14b8>
  3e77b2: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e77b6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e77ba: dd0a         	ble	0x3e77d2 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x12d2> @ imm = #0x14
  3e77bc: ab09         	add	r3, sp, #0x24
  3e77be: 681b         	ldr	r3, [r3]
  3e77c0: 2200         	movs	r2, #0x0
  3e77c2: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e77c6: ab09         	add	r3, sp, #0x24
  3e77c8: 681b         	ldr	r3, [r3]
  3e77ca: f04f 0200    	mov.w	r2, #0x0
  3e77ce: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3e77d2: ab09         	add	r3, sp, #0x24
  3e77d4: 681b         	ldr	r3, [r3]
  3e77d6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e77da: f04f 4280    	mov.w	r2, #0x40000000
  3e77de: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  3e77e2: ab09         	add	r3, sp, #0x24
  3e77e4: 681b         	ldr	r3, [r3]
  3e77e6: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3e77ea: ab09         	add	r3, sp, #0x24
  3e77ec: 681b         	ldr	r3, [r3]
  3e77ee: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e77f2: 2b00         	cmp	r3, #0x0
  3e77f4: bf0c         	ite	eq
  3e77f6: 2300         	moveq	r3, #0x0
  3e77f8: 2301         	movne	r3, #0x1
  3e77fa: b2db         	uxtb	r3, r3
  3e77fc: 4610         	mov	r0, r2
  3e77fe: 4619         	mov	r1, r3
  3e7800: f7f7 f9ac    	bl	0x3deb5c <SoldierView::setHasWeapon(bool)> @ imm = #-0x8ca8
  3e7804: ab09         	add	r3, sp, #0x24
  3e7806: 681b         	ldr	r3, [r3]
  3e7808: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e780c: ab09         	add	r3, sp, #0x24
  3e780e: 681b         	ldr	r3, [r3]
  3e7810: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7814: ed93 7b0a    	vldr	d7, [r3, #40]
  3e7818: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3e781c: ab09         	add	r3, sp, #0x24
  3e781e: 681b         	ldr	r3, [r3]
  3e7820: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7824: ed93 7b0c    	vldr	d7, [r3, #48]
  3e7828: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e782c: ab1c         	add	r3, sp, #0x70
  3e782e: 4618         	mov	r0, r3
  3e7830: ee16 1a90    	vmov	r1, s13
  3e7834: ee17 2a90    	vmov	r2, s15
  3e7838: f1ab fa5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ab4b4
  3e783c: ab09         	add	r3, sp, #0x24
  3e783e: 681b         	ldr	r3, [r3]
  3e7840: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7844: ed93 7b0e    	vldr	d7, [r3, #56]
  3e7848: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3e784c: ab09         	add	r3, sp, #0x24
  3e784e: 681b         	ldr	r3, [r3]
  3e7850: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7854: ed93 7b10    	vldr	d7, [r3, #64]
  3e7858: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e785c: ab2a         	add	r3, sp, #0xa8
  3e785e: 4618         	mov	r0, r3
  3e7860: ee16 1a90    	vmov	r1, s13
  3e7864: ee17 2a90    	vmov	r2, s15
  3e7868: f1ab fa42    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ab484
  3e786c: ab09         	add	r3, sp, #0x24
  3e786e: 681b         	ldr	r3, [r3]
  3e7870: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e7874: ed93 7b16    	vldr	d7, [r3, #88]
  3e7878: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3e787c: ab09         	add	r3, sp, #0x24
  3e787e: 681b         	ldr	r3, [r3]
  3e7880: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3e7884: ab09         	add	r3, sp, #0x24
  3e7886: 681b         	ldr	r3, [r3]
  3e7888: f503 738a    	add.w	r3, r3, #0x114
  3e788c: aa2e         	add	r2, sp, #0xb8
  3e788e: 4610         	mov	r0, r2
  3e7890: 4619         	mov	r1, r3
  3e7892: f1ab fa3b    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x1ab476
  3e7896: ab09         	add	r3, sp, #0x24
  3e7898: 681b         	ldr	r3, [r3]
  3e789a: f8d3 010c    	ldr.w	r0, [r3, #0x10c]
  3e789e: ab09         	add	r3, sp, #0x24
  3e78a0: 681b         	ldr	r3, [r3]
  3e78a2: f893 115a    	ldrb.w	r1, [r3, #0x15a]
  3e78a6: aa1c         	add	r2, sp, #0x70
  3e78a8: ab2a         	add	r3, sp, #0xa8
  3e78aa: 9500         	str	r5, [sp]
  3e78ac: ad2e         	add	r5, sp, #0xb8
  3e78ae: 9501         	str	r5, [sp, #0x4]
  3e78b0: 9002         	str	r0, [sp, #0x8]
  3e78b2: 9103         	str	r1, [sp, #0xc]
  3e78b4: 4620         	mov	r0, r4
  3e78b6: 4611         	mov	r1, r2
  3e78b8: 461a         	mov	r2, r3
  3e78ba: ee18 3a10    	vmov	r3, s16
  3e78be: f00b f823    	bl	0x3f2908 <SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint, float, bool)> @ imm = #0xb046
  3e78c2: ab09         	add	r3, sp, #0x24
  3e78c4: 681b         	ldr	r3, [r3]
  3e78c6: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3e78ca: ab08         	add	r3, sp, #0x20
  3e78cc: 4610         	mov	r0, r2
  3e78ce: 6819         	ldr	r1, [r3]
  3e78d0: f00b f956    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0xb2ac
  3e78d4: ab09         	add	r3, sp, #0x24
  3e78d6: 681b         	ldr	r3, [r3]
  3e78d8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e78dc: 2b00         	cmp	r3, #0x0
  3e78de: d029         	beq	0x3e7934 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1434> @ imm = #0x52
  3e78e0: ab09         	add	r3, sp, #0x24
  3e78e2: 681b         	ldr	r3, [r3]
  3e78e4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e78e8: 681b         	ldr	r3, [r3]
  3e78ea: f503 7341    	add.w	r3, r3, #0x304
  3e78ee: 681c         	ldr	r4, [r3]
  3e78f0: ab09         	add	r3, sp, #0x24
  3e78f2: 681b         	ldr	r3, [r3]
  3e78f4: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3e78f8: ab09         	add	r3, sp, #0x24
  3e78fa: 681b         	ldr	r3, [r3]
  3e78fc: 681b         	ldr	r3, [r3]
  3e78fe: f503 730f    	add.w	r3, r3, #0x23c
  3e7902: 681b         	ldr	r3, [r3]
  3e7904: aa09         	add	r2, sp, #0x24
  3e7906: 6810         	ldr	r0, [r2]
  3e7908: 4798         	blx	r3
  3e790a: 4603         	mov	r3, r0
  3e790c: 4628         	mov	r0, r5
  3e790e: 4619         	mov	r1, r3
  3e7910: 47a0         	blx	r4
  3e7912: ab09         	add	r3, sp, #0x24
  3e7914: 681b         	ldr	r3, [r3]
  3e7916: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e791a: 681b         	ldr	r3, [r3]
  3e791c: f503 73da    	add.w	r3, r3, #0x1b4
  3e7920: 681b         	ldr	r3, [r3]
  3e7922: aa09         	add	r2, sp, #0x24
  3e7924: 6812         	ldr	r2, [r2]
  3e7926: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e792a: 4611         	mov	r1, r2
  3e792c: aa08         	add	r2, sp, #0x20
  3e792e: 4608         	mov	r0, r1
  3e7930: 6811         	ldr	r1, [r2]
  3e7932: 4798         	blx	r3
  3e7934: ab09         	add	r3, sp, #0x24
  3e7936: 681b         	ldr	r3, [r3]
  3e7938: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e793c: 2b00         	cmp	r3, #0x0
  3e793e: d049         	beq	0x3e79d4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14d4> @ imm = #0x92
  3e7940: ab09         	add	r3, sp, #0x24
  3e7942: 681b         	ldr	r3, [r3]
  3e7944: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e7948: 681b         	ldr	r3, [r3]
  3e794a: f503 7341    	add.w	r3, r3, #0x304
  3e794e: 681c         	ldr	r4, [r3]
  3e7950: ab09         	add	r3, sp, #0x24
  3e7952: 681b         	ldr	r3, [r3]
  3e7954: f8d3 5150    	ldr.w	r5, [r3, #0x150]
  3e7958: ab09         	add	r3, sp, #0x24
  3e795a: 681b         	ldr	r3, [r3]
  3e795c: 681b         	ldr	r3, [r3]
  3e795e: f503 7321    	add.w	r3, r3, #0x284
  3e7962: 681b         	ldr	r3, [r3]
  3e7964: aa09         	add	r2, sp, #0x24
  3e7966: 6810         	ldr	r0, [r2]
  3e7968: 4798         	blx	r3
  3e796a: 4603         	mov	r3, r0
  3e796c: 4628         	mov	r0, r5
  3e796e: 4619         	mov	r1, r3
  3e7970: 47a0         	blx	r4
  3e7972: ab09         	add	r3, sp, #0x24
  3e7974: 681b         	ldr	r3, [r3]
  3e7976: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e797a: 681b         	ldr	r3, [r3]
  3e797c: f503 73da    	add.w	r3, r3, #0x1b4
  3e7980: 681b         	ldr	r3, [r3]
  3e7982: aa09         	add	r2, sp, #0x24
  3e7984: 6812         	ldr	r2, [r2]
  3e7986: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e798a: 4611         	mov	r1, r2
  3e798c: aa08         	add	r2, sp, #0x20
  3e798e: 4608         	mov	r0, r1
  3e7990: 6811         	ldr	r1, [r2]
  3e7992: 4798         	blx	r3
  3e7994: ab09         	add	r3, sp, #0x24
  3e7996: 681b         	ldr	r3, [r3]
  3e7998: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e799c: 4618         	mov	r0, r3
  3e799e: 2101         	movs	r1, #0x1
  3e79a0: f00c fc4e    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0xc89c
  3e79a4: e01e         	b	0x3e79e4 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x14e4> @ imm = #0x3c
  3e79a6: bf00         	nop
  3e79b4: c000         	<unknown>
  3e79b6: c072         	stm	r0!, {r1, r4, r5, r6}
  3e79b8: 999a         	ldr	r1, [sp, #0x268]
  3e79ba: 9999         	ldr	r1, [sp, #0x264]
  3e79bc: 9999         	ldr	r1, [sp, #0x264]
  3e79be: 3fc9         	subs	r7, #0xc9
  3e79c0: 3333         	adds	r3, #0x33
  3e79c2: 3333         	adds	r3, #0x33
  3e79c4: 3333         	adds	r3, #0x33
  3e79c6: 3fd3         	subs	r7, #0xd3
  3e79c8: 0000         	movs	r0, r0
  3e79ca: 8000         	strh	r0, [r0]
  3e79cc: ae14         	add	r6, sp, #0x50
  3e79ce: 3fef         	subs	r7, #0xef
  3e79d0: da30         	bge	0x3e7a34 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1534> @ imm = #0x60
  3e79d2: ffff ab09    	vtbl.8	d26, {d15, d16, d17, d18}, d9
  3e79d6: 681b         	ldr	r3, [r3]
  3e79d8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e79dc: 4618         	mov	r0, r3
  3e79de: 2100         	movs	r1, #0x0
  3e79e0: f00c fc2e    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0xc85c
  3e79e4: ab09         	add	r3, sp, #0x24
  3e79e6: 681b         	ldr	r3, [r3]
  3e79e8: f893 20e6    	ldrb.w	r2, [r3, #0xe6]
  3e79ec: ab09         	add	r3, sp, #0x24
  3e79ee: 681b         	ldr	r3, [r3]
  3e79f0: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3e79f4: ab09         	add	r3, sp, #0x24
  3e79f6: 681b         	ldr	r3, [r3]
  3e79f8: 2200         	movs	r2, #0x0
  3e79fa: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3e79fe: ab09         	add	r3, sp, #0x24
  3e7a00: 681b         	ldr	r3, [r3]
  3e7a02: f893 20e7    	ldrb.w	r2, [r3, #0xe7]
  3e7a06: ab09         	add	r3, sp, #0x24
  3e7a08: 681b         	ldr	r3, [r3]
  3e7a0a: f883 20e9    	strb.w	r2, [r3, #0xe9]
  3e7a0e: ab09         	add	r3, sp, #0x24
  3e7a10: 681b         	ldr	r3, [r3]
  3e7a12: 2200         	movs	r2, #0x0
  3e7a14: f883 20e7    	strb.w	r2, [r3, #0xe7]
  3e7a18: e015         	b	0x3e7a46 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1546> @ imm = #0x2a
  3e7a1a: ab6a         	add	r3, sp, #0x1a8
  3e7a1c: 4618         	mov	r0, r3
  3e7a1e: f3cd ff79    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cdef2
  3e7a22: e7ff         	b	0x3e7a24 <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x1524> @ imm = #-0x2
  3e7a24: ab66         	add	r3, sp, #0x198
  3e7a26: 4618         	mov	r0, r3
  3e7a28: f3a2 fce8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a29d0
  3e7a2c: f3a0 fb3e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a067c
  3e7a30: ab6a         	add	r3, sp, #0x1a8
  3e7a32: 4618         	mov	r0, r3
  3e7a34: f3cd ff6e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cdedc
  3e7a38: e7ff         	b	0x3e7a3a <SoldierHostController::updateStep(float, cpVect, cpVect, float)+0x153a> @ imm = #-0x2
  3e7a3a: ab66         	add	r3, sp, #0x198
  3e7a3c: 4618         	mov	r0, r3
  3e7a3e: f3a2 fcdd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a29ba
  3e7a42: f3a0 fb33    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a0666
  3e7a46: b06f         	add	sp, #0x1bc
  3e7a48: ecbd 8b02    	vpop	{d8}
  3e7a4c: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
  3e7a50: b002         	add	sp, #0x8
  3e7a52: 4770         	bx	lr

// ==== SoldierHostController::setFireAngle
//      file offset 0x3e7a58 (= ELF address; Ghidra 0x3f7a58), 18 bytes, Thumb-2
  3e7a58: b082         	sub	sp, #0x8
  3e7a5a: 9001         	str	r0, [sp, #0x4]
  3e7a5c: 9100         	str	r1, [sp]
  3e7a5e: 9b01         	ldr	r3, [sp, #0x4]
  3e7a60: 9a00         	ldr	r2, [sp]
  3e7a62: f8c3 2110    	str.w	r2, [r3, #0x110]
  3e7a66: b002         	add	sp, #0x8
  3e7a68: 4770         	bx	lr

// ==== SoldierHostController::getDualFireAngle
//      file offset 0x3e7a6c (= ELF address; Ghidra 0x3f7a6c), 28 bytes, Thumb-2
  3e7a6c: b500         	push	{lr}
  3e7a6e: b083         	sub	sp, #0xc
  3e7a70: 9001         	str	r0, [sp, #0x4]
  3e7a72: 9b01         	ldr	r3, [sp, #0x4]
  3e7a74: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e7a78: 4618         	mov	r0, r3
  3e7a7a: f00c f985    	bl	0x3f3d88 <SoldierView::getDualFiringAngle()> @ imm = #0xc30a
  3e7a7e: 4603         	mov	r3, r0
  3e7a80: 4618         	mov	r0, r3
  3e7a82: b003         	add	sp, #0xc
  3e7a84: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::getFireAngle
//      file offset 0x3e7a88 (= ELF address; Ghidra 0x3f7a88), 28 bytes, Thumb-2
  3e7a88: b500         	push	{lr}
  3e7a8a: b083         	sub	sp, #0xc
  3e7a8c: 9001         	str	r0, [sp, #0x4]
  3e7a8e: 9b01         	ldr	r3, [sp, #0x4]
  3e7a90: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e7a94: 4618         	mov	r0, r3
  3e7a96: f00c f997    	bl	0x3f3dc8 <SoldierView::getFiringAngle()> @ imm = #0xc32e
  3e7a9a: 4603         	mov	r3, r0
  3e7a9c: 4618         	mov	r0, r3
  3e7a9e: b003         	add	sp, #0xc
  3e7aa0: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::setThrust
//      file offset 0x3e7aa4 (= ELF address; Ghidra 0x3f7aa4), 24 bytes, Thumb-2
  3e7aa4: b082         	sub	sp, #0x8
  3e7aa6: 9001         	str	r0, [sp, #0x4]
  3e7aa8: 460b         	mov	r3, r1
  3e7aaa: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e7aae: 9b01         	ldr	r3, [sp, #0x4]
  3e7ab0: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e7ab4: f883 2104    	strb.w	r2, [r3, #0x104]
  3e7ab8: b002         	add	sp, #0x8
  3e7aba: 4770         	bx	lr

// ==== SoldierHostController::getThrustFactor
//      file offset 0x3e7abc (= ELF address; Ghidra 0x3f7abc), 26 bytes, Thumb-2
  3e7abc: b082         	sub	sp, #0x8
  3e7abe: 9001         	str	r0, [sp, #0x4]
  3e7ac0: 9b01         	ldr	r3, [sp, #0x4]
  3e7ac2: edd3 7a43    	vldr	s15, [r3, #268]
  3e7ac6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e7aca: ec53 2b17    	vmov	r2, r3, d7
  3e7ace: 4610         	mov	r0, r2
  3e7ad0: 4619         	mov	r1, r3
  3e7ad2: b002         	add	sp, #0x8
  3e7ad4: 4770         	bx	lr

// ==== SoldierHostController::setPower
//      file offset 0x3e7ad8 (= ELF address; Ghidra 0x3f7ad8), 18 bytes, Thumb-2
  3e7ad8: b082         	sub	sp, #0x8
  3e7ada: 9001         	str	r0, [sp, #0x4]
  3e7adc: 9100         	str	r1, [sp]
  3e7ade: 9b01         	ldr	r3, [sp, #0x4]
  3e7ae0: 9a00         	ldr	r2, [sp]
  3e7ae2: f8c3 2198    	str.w	r2, [r3, #0x198]
  3e7ae6: b002         	add	sp, #0x8
  3e7ae8: 4770         	bx	lr

// ==== SoldierHostController::getPower
//      file offset 0x3e7aec (= ELF address; Ghidra 0x3f7aec), 16 bytes, Thumb-2
  3e7aec: b082         	sub	sp, #0x8
  3e7aee: 9001         	str	r0, [sp, #0x4]
  3e7af0: 9b01         	ldr	r3, [sp, #0x4]
  3e7af2: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3e7af6: 4618         	mov	r0, r3
  3e7af8: b002         	add	sp, #0x8
  3e7afa: 4770         	bx	lr

// ==== SoldierHostController::setSoldierView
//      file offset 0x3e7afc (= ELF address; Ghidra 0x3f7afc), 18 bytes, Thumb-2
  3e7afc: b082         	sub	sp, #0x8
  3e7afe: 9001         	str	r0, [sp, #0x4]
  3e7b00: 9100         	str	r1, [sp]
  3e7b02: 9b01         	ldr	r3, [sp, #0x4]
  3e7b04: 9a00         	ldr	r2, [sp]
  3e7b06: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3e7b0a: b002         	add	sp, #0x8
  3e7b0c: 4770         	bx	lr

// ==== SoldierHostController::getSoldierView
//      file offset 0x3e7b10 (= ELF address; Ghidra 0x3f7b10), 16 bytes, Thumb-2
  3e7b10: b082         	sub	sp, #0x8
  3e7b12: 9001         	str	r0, [sp, #0x4]
  3e7b14: 9b01         	ldr	r3, [sp, #0x4]
  3e7b16: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e7b1a: 4618         	mov	r0, r3
  3e7b1c: b002         	add	sp, #0x8
  3e7b1e: 4770         	bx	lr

// ==== SoldierHostController::addWeapon
//      file offset 0x3e7b20 (= ELF address; Ghidra 0x3f7b20), 1092 bytes, Thumb-2
  3e7b20: b530         	push	{r4, r5, lr}
  3e7b22: b087         	sub	sp, #0x1c
  3e7b24: 9001         	str	r0, [sp, #0x4]
  3e7b26: 9100         	str	r1, [sp]
  3e7b28: f8df 4430    	ldr.w	r4, [pc, #0x430]        @ 0x3e7f5c <SoldierHostController::addWeapon(Weapon*)+0x43c>
  3e7b2c: 447c         	add	r4, pc
  3e7b2e: 9b00         	ldr	r3, [sp]
  3e7b30: 2b00         	cmp	r3, #0x0
  3e7b32: d100         	bne	0x3e7b36 <SoldierHostController::addWeapon(Weapon*)+0x16> @ imm = #0x0
  3e7b34: e210         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0x420
  3e7b36: 9b00         	ldr	r3, [sp]
  3e7b38: 681b         	ldr	r3, [r3]
  3e7b3a: 33e4         	adds	r3, #0xe4
  3e7b3c: 681b         	ldr	r3, [r3]
  3e7b3e: 9a00         	ldr	r2, [sp]
  3e7b40: 4610         	mov	r0, r2
  3e7b42: 4798         	blx	r3
  3e7b44: 4603         	mov	r3, r0
  3e7b46: 2b00         	cmp	r3, #0x0
  3e7b48: bf0c         	ite	eq
  3e7b4a: 2300         	moveq	r3, #0x0
  3e7b4c: 2301         	movne	r3, #0x1
  3e7b4e: b2db         	uxtb	r3, r3
  3e7b50: 2b00         	cmp	r3, #0x0
  3e7b52: d00e         	beq	0x3e7b72 <SoldierHostController::addWeapon(Weapon*)+0x52> @ imm = #0x1c
  3e7b54: 9b00         	ldr	r3, [sp]
  3e7b56: 681b         	ldr	r3, [r3]
  3e7b58: 33e4         	adds	r3, #0xe4
  3e7b5a: 681b         	ldr	r3, [r3]
  3e7b5c: 9a00         	ldr	r2, [sp]
  3e7b5e: 4610         	mov	r0, r2
  3e7b60: 4798         	blx	r3
  3e7b62: 4603         	mov	r3, r0
  3e7b64: 681a         	ldr	r2, [r3]
  3e7b66: 32f4         	adds	r2, #0xf4
  3e7b68: 6815         	ldr	r5, [r2]
  3e7b6a: 4618         	mov	r0, r3
  3e7b6c: 9900         	ldr	r1, [sp]
  3e7b6e: 2200         	movs	r2, #0x0
  3e7b70: 47a8         	blx	r5
  3e7b72: 9b00         	ldr	r3, [sp]
  3e7b74: 681b         	ldr	r3, [r3]
  3e7b76: f503 7347    	add.w	r3, r3, #0x31c
  3e7b7a: 681b         	ldr	r3, [r3]
  3e7b7c: 9a01         	ldr	r2, [sp, #0x4]
  3e7b7e: f8d2 21c0    	ldr.w	r2, [r2, #0x1c0]
  3e7b82: 9800         	ldr	r0, [sp]
  3e7b84: 4611         	mov	r1, r2
  3e7b86: 4798         	blx	r3
  3e7b88: f02f fefc    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2fdf8
  3e7b8c: 4605         	mov	r5, r0
  3e7b8e: 9b00         	ldr	r3, [sp]
  3e7b90: 681b         	ldr	r3, [r3]
  3e7b92: f503 731a    	add.w	r3, r3, #0x268
  3e7b96: 681b         	ldr	r3, [r3]
  3e7b98: 9800         	ldr	r0, [sp]
  3e7b9a: 4798         	blx	r3
  3e7b9c: 4603         	mov	r3, r0
  3e7b9e: 4628         	mov	r0, r5
  3e7ba0: 4619         	mov	r1, r3
  3e7ba2: f030 fe75    	bl	0x418890 <WeaponFactory::isClipHandgun(ItemType)> @ imm = #0x30cea
  3e7ba6: 4603         	mov	r3, r0
  3e7ba8: 2b00         	cmp	r3, #0x0
  3e7baa: d01b         	beq	0x3e7be4 <SoldierHostController::addWeapon(Weapon*)+0xc4> @ imm = #0x36
  3e7bac: 9b00         	ldr	r3, [sp]
  3e7bae: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  3e7bb2: ee07 3a10    	vmov	s14, r3
  3e7bb6: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e7bba: edcd 7a02    	vstr	s15, [sp, #8]
  3e7bbe: 9b00         	ldr	r3, [sp]
  3e7bc0: 681b         	ldr	r3, [r3]
  3e7bc2: f503 732f    	add.w	r3, r3, #0x2bc
  3e7bc6: 681b         	ldr	r3, [r3]
  3e7bc8: 9a01         	ldr	r2, [sp, #0x4]
  3e7bca: ed92 7a75    	vldr	s14, [r2, #468]
  3e7bce: eddd 7a02    	vldr	s15, [sp, #8]
  3e7bd2: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7bd6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3e7bda: ee17 2a90    	vmov	r2, s15
  3e7bde: 9800         	ldr	r0, [sp]
  3e7be0: 4611         	mov	r1, r2
  3e7be2: 4798         	blx	r3
  3e7be4: f02f fece    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2fd9c
  3e7be8: 4605         	mov	r5, r0
  3e7bea: 9b00         	ldr	r3, [sp]
  3e7bec: 681b         	ldr	r3, [r3]
  3e7bee: f503 731a    	add.w	r3, r3, #0x268
  3e7bf2: 681b         	ldr	r3, [r3]
  3e7bf4: 9800         	ldr	r0, [sp]
  3e7bf6: 4798         	blx	r3
  3e7bf8: 4603         	mov	r3, r0
  3e7bfa: 4628         	mov	r0, r5
  3e7bfc: 4619         	mov	r1, r3
  3e7bfe: f030 fe5f    	bl	0x4188c0 <WeaponFactory::isReloadHandgun(ItemType)> @ imm = #0x30cbe
  3e7c02: 4603         	mov	r3, r0
  3e7c04: 2b00         	cmp	r3, #0x0
  3e7c06: d013         	beq	0x3e7c30 <SoldierHostController::addWeapon(Weapon*)+0x110> @ imm = #0x26
  3e7c08: 9b00         	ldr	r3, [sp]
  3e7c0a: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e7c0e: 9303         	str	r3, [sp, #0xc]
  3e7c10: 9b00         	ldr	r3, [sp]
  3e7c12: 681b         	ldr	r3, [r3]
  3e7c14: f503 7330    	add.w	r3, r3, #0x2c0
  3e7c18: 681b         	ldr	r3, [r3]
  3e7c1a: 9a01         	ldr	r2, [sp, #0x4]
  3e7c1c: ed92 7a77    	vldr	s14, [r2, #476]
  3e7c20: eddd 7a03    	vldr	s15, [sp, #12]
  3e7c24: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7c28: 9800         	ldr	r0, [sp]
  3e7c2a: ee17 1a90    	vmov	r1, s15
  3e7c2e: 4798         	blx	r3
  3e7c30: f02f fea8    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x2fd50
  3e7c34: 4605         	mov	r5, r0
  3e7c36: 9b00         	ldr	r3, [sp]
  3e7c38: 681b         	ldr	r3, [r3]
  3e7c3a: f503 731a    	add.w	r3, r3, #0x268
  3e7c3e: 681b         	ldr	r3, [r3]
  3e7c40: 9800         	ldr	r0, [sp]
  3e7c42: 4798         	blx	r3
  3e7c44: 4603         	mov	r3, r0
  3e7c46: 4628         	mov	r0, r5
  3e7c48: 4619         	mov	r1, r3
  3e7c4a: f030 fe51    	bl	0x4188f0 <WeaponFactory::isClipRifle(ItemType)> @ imm = #0x30ca2
  3e7c4e: 4603         	mov	r3, r0
  3e7c50: 2b00         	cmp	r3, #0x0
  3e7c52: d02f         	beq	0x3e7cb4 <SoldierHostController::addWeapon(Weapon*)+0x194> @ imm = #0x5e
  3e7c54: 9b00         	ldr	r3, [sp]
  3e7c56: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  3e7c5a: ee07 3a10    	vmov	s14, r3
  3e7c5e: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e7c62: edcd 7a04    	vstr	s15, [sp, #16]
  3e7c66: 9b00         	ldr	r3, [sp]
  3e7c68: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e7c6c: 9305         	str	r3, [sp, #0x14]
  3e7c6e: 9b00         	ldr	r3, [sp]
  3e7c70: 681b         	ldr	r3, [r3]
  3e7c72: f503 732f    	add.w	r3, r3, #0x2bc
  3e7c76: 681b         	ldr	r3, [r3]
  3e7c78: 9a01         	ldr	r2, [sp, #0x4]
  3e7c7a: ed92 7a76    	vldr	s14, [r2, #472]
  3e7c7e: eddd 7a04    	vldr	s15, [sp, #16]
  3e7c82: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7c86: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3e7c8a: ee17 2a90    	vmov	r2, s15
  3e7c8e: 9800         	ldr	r0, [sp]
  3e7c90: 4611         	mov	r1, r2
  3e7c92: 4798         	blx	r3
  3e7c94: 9b00         	ldr	r3, [sp]
  3e7c96: 681b         	ldr	r3, [r3]
  3e7c98: f503 7330    	add.w	r3, r3, #0x2c0
  3e7c9c: 681b         	ldr	r3, [r3]
  3e7c9e: 9a01         	ldr	r2, [sp, #0x4]
  3e7ca0: ed92 7a78    	vldr	s14, [r2, #480]
  3e7ca4: eddd 7a05    	vldr	s15, [sp, #20]
  3e7ca8: ee67 7a27    	vmul.f32	s15, s14, s15
  3e7cac: 9800         	ldr	r0, [sp]
  3e7cae: ee17 1a90    	vmov	r1, s15
  3e7cb2: 4798         	blx	r3
  3e7cb4: 9b00         	ldr	r3, [sp]
  3e7cb6: 681b         	ldr	r3, [r3]
  3e7cb8: f503 733f    	add.w	r3, r3, #0x2fc
  3e7cbc: 681b         	ldr	r3, [r3]
  3e7cbe: 9800         	ldr	r0, [sp]
  3e7cc0: 4798         	blx	r3
  3e7cc2: 4603         	mov	r3, r0
  3e7cc4: 2b00         	cmp	r3, #0x0
  3e7cc6: d00b         	beq	0x3e7ce0 <SoldierHostController::addWeapon(Weapon*)+0x1c0> @ imm = #0x16
  3e7cc8: 9b00         	ldr	r3, [sp]
  3e7cca: 681b         	ldr	r3, [r3]
  3e7ccc: f503 733b    	add.w	r3, r3, #0x2ec
  3e7cd0: 681b         	ldr	r3, [r3]
  3e7cd2: 9800         	ldr	r0, [sp]
  3e7cd4: 4798         	blx	r3
  3e7cd6: 4603         	mov	r3, r0
  3e7cd8: 2b00         	cmp	r3, #0x0
  3e7cda: d001         	beq	0x3e7ce0 <SoldierHostController::addWeapon(Weapon*)+0x1c0> @ imm = #0x2
  3e7cdc: 2301         	movs	r3, #0x1
  3e7cde: e000         	b	0x3e7ce2 <SoldierHostController::addWeapon(Weapon*)+0x1c2> @ imm = #0x0
  3e7ce0: 2300         	movs	r3, #0x0
  3e7ce2: 2b00         	cmp	r3, #0x0
  3e7ce4: f000 80e7    	beq.w	0x3e7eb6 <SoldierHostController::addWeapon(Weapon*)+0x396> @ imm = #0x1ce
  3e7ce8: 9b00         	ldr	r3, [sp]
  3e7cea: 681b         	ldr	r3, [r3]
  3e7cec: f503 733d    	add.w	r3, r3, #0x2f4
  3e7cf0: 681b         	ldr	r3, [r3]
  3e7cf2: 9800         	ldr	r0, [sp]
  3e7cf4: 4798         	blx	r3
  3e7cf6: 4603         	mov	r3, r0
  3e7cf8: 2b00         	cmp	r3, #0x0
  3e7cfa: f000 8085    	beq.w	0x3e7e08 <SoldierHostController::addWeapon(Weapon*)+0x2e8> @ imm = #0x10a
  3e7cfe: 9b01         	ldr	r3, [sp, #0x4]
  3e7d00: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e7d04: 2b00         	cmp	r3, #0x0
  3e7d06: d00f         	beq	0x3e7d28 <SoldierHostController::addWeapon(Weapon*)+0x208> @ imm = #0x1e
  3e7d08: 9b01         	ldr	r3, [sp, #0x4]
  3e7d0a: 681b         	ldr	r3, [r3]
  3e7d0c: f503 7302    	add.w	r3, r3, #0x208
  3e7d10: 681b         	ldr	r3, [r3]
  3e7d12: 9801         	ldr	r0, [sp, #0x4]
  3e7d14: 4798         	blx	r3
  3e7d16: 9b01         	ldr	r3, [sp, #0x4]
  3e7d18: 681b         	ldr	r3, [r3]
  3e7d1a: f503 7305    	add.w	r3, r3, #0x214
  3e7d1e: 681b         	ldr	r3, [r3]
  3e7d20: 9801         	ldr	r0, [sp, #0x4]
  3e7d22: 9900         	ldr	r1, [sp]
  3e7d24: 4798         	blx	r3
  3e7d26: e067         	b	0x3e7df8 <SoldierHostController::addWeapon(Weapon*)+0x2d8> @ imm = #0xce
  3e7d28: 9b01         	ldr	r3, [sp, #0x4]
  3e7d2a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7d2e: 2b00         	cmp	r3, #0x0
  3e7d30: d010         	beq	0x3e7d54 <SoldierHostController::addWeapon(Weapon*)+0x234> @ imm = #0x20
  3e7d32: 9b01         	ldr	r3, [sp, #0x4]
  3e7d34: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7d38: 681b         	ldr	r3, [r3]
  3e7d3a: f503 733b    	add.w	r3, r3, #0x2ec
  3e7d3e: 681b         	ldr	r3, [r3]
  3e7d40: 9a01         	ldr	r2, [sp, #0x4]
  3e7d42: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e7d46: 4610         	mov	r0, r2
  3e7d48: 4798         	blx	r3
  3e7d4a: 4603         	mov	r3, r0
  3e7d4c: 2b00         	cmp	r3, #0x0
  3e7d4e: d001         	beq	0x3e7d54 <SoldierHostController::addWeapon(Weapon*)+0x234> @ imm = #0x2
  3e7d50: 2301         	movs	r3, #0x1
  3e7d52: e000         	b	0x3e7d56 <SoldierHostController::addWeapon(Weapon*)+0x236> @ imm = #0x0
  3e7d54: 2300         	movs	r3, #0x0
  3e7d56: 2b00         	cmp	r3, #0x0
  3e7d58: d00f         	beq	0x3e7d7a <SoldierHostController::addWeapon(Weapon*)+0x25a> @ imm = #0x1e
  3e7d5a: 9b01         	ldr	r3, [sp, #0x4]
  3e7d5c: 681b         	ldr	r3, [r3]
  3e7d5e: f503 7341    	add.w	r3, r3, #0x304
  3e7d62: 681b         	ldr	r3, [r3]
  3e7d64: 9801         	ldr	r0, [sp, #0x4]
  3e7d66: 4798         	blx	r3
  3e7d68: 9b01         	ldr	r3, [sp, #0x4]
  3e7d6a: 681b         	ldr	r3, [r3]
  3e7d6c: f503 7305    	add.w	r3, r3, #0x214
  3e7d70: 681b         	ldr	r3, [r3]
  3e7d72: 9801         	ldr	r0, [sp, #0x4]
  3e7d74: 9900         	ldr	r1, [sp]
  3e7d76: 4798         	blx	r3
  3e7d78: e03e         	b	0x3e7df8 <SoldierHostController::addWeapon(Weapon*)+0x2d8> @ imm = #0x7c
  3e7d7a: 9b01         	ldr	r3, [sp, #0x4]
  3e7d7c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e7d80: 2b00         	cmp	r3, #0x0
  3e7d82: d010         	beq	0x3e7da6 <SoldierHostController::addWeapon(Weapon*)+0x286> @ imm = #0x20
  3e7d84: 9b01         	ldr	r3, [sp, #0x4]
  3e7d86: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e7d8a: 681b         	ldr	r3, [r3]
  3e7d8c: f503 733b    	add.w	r3, r3, #0x2ec
  3e7d90: 681b         	ldr	r3, [r3]
  3e7d92: 9a01         	ldr	r2, [sp, #0x4]
  3e7d94: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e7d98: 4610         	mov	r0, r2
  3e7d9a: 4798         	blx	r3
  3e7d9c: 4603         	mov	r3, r0
  3e7d9e: 2b00         	cmp	r3, #0x0
  3e7da0: d001         	beq	0x3e7da6 <SoldierHostController::addWeapon(Weapon*)+0x286> @ imm = #0x2
  3e7da2: 2301         	movs	r3, #0x1
  3e7da4: e000         	b	0x3e7da8 <SoldierHostController::addWeapon(Weapon*)+0x288> @ imm = #0x0
  3e7da6: 2300         	movs	r3, #0x0
  3e7da8: 2b00         	cmp	r3, #0x0
  3e7daa: d016         	beq	0x3e7dda <SoldierHostController::addWeapon(Weapon*)+0x2ba> @ imm = #0x2c
  3e7dac: 9b01         	ldr	r3, [sp, #0x4]
  3e7dae: 681b         	ldr	r3, [r3]
  3e7db0: f503 7342    	add.w	r3, r3, #0x308
  3e7db4: 681b         	ldr	r3, [r3]
  3e7db6: 9801         	ldr	r0, [sp, #0x4]
  3e7db8: 4798         	blx	r3
  3e7dba: 9b01         	ldr	r3, [sp, #0x4]
  3e7dbc: 681b         	ldr	r3, [r3]
  3e7dbe: f503 7302    	add.w	r3, r3, #0x208
  3e7dc2: 681b         	ldr	r3, [r3]
  3e7dc4: 9801         	ldr	r0, [sp, #0x4]
  3e7dc6: 4798         	blx	r3
  3e7dc8: 9b01         	ldr	r3, [sp, #0x4]
  3e7dca: 681b         	ldr	r3, [r3]
  3e7dcc: f503 7305    	add.w	r3, r3, #0x214
  3e7dd0: 681b         	ldr	r3, [r3]
  3e7dd2: 9801         	ldr	r0, [sp, #0x4]
  3e7dd4: 9900         	ldr	r1, [sp]
  3e7dd6: 4798         	blx	r3
  3e7dd8: e00e         	b	0x3e7df8 <SoldierHostController::addWeapon(Weapon*)+0x2d8> @ imm = #0x1c
  3e7dda: 9b01         	ldr	r3, [sp, #0x4]
  3e7ddc: 681b         	ldr	r3, [r3]
  3e7dde: f503 7302    	add.w	r3, r3, #0x208
  3e7de2: 681b         	ldr	r3, [r3]
  3e7de4: 9801         	ldr	r0, [sp, #0x4]
  3e7de6: 4798         	blx	r3
  3e7de8: 9b01         	ldr	r3, [sp, #0x4]
  3e7dea: 681b         	ldr	r3, [r3]
  3e7dec: f503 7305    	add.w	r3, r3, #0x214
  3e7df0: 681b         	ldr	r3, [r3]
  3e7df2: 9801         	ldr	r0, [sp, #0x4]
  3e7df4: 9900         	ldr	r1, [sp]
  3e7df6: 4798         	blx	r3
  3e7df8: 4b59         	ldr	r3, [pc, #0x164]        @ 0x3e7f60 <SoldierHostController::addWeapon(Weapon*)+0x440>
  3e7dfa: 58e3         	ldr	r3, [r4, r3]
  3e7dfc: 681b         	ldr	r3, [r3]
  3e7dfe: 4618         	mov	r0, r3
  3e7e00: 2104         	movs	r1, #0x4
  3e7e02: f00f ffdd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xffba
  3e7e06: e0a7         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0x14e
  3e7e08: 9b01         	ldr	r3, [sp, #0x4]
  3e7e0a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7e0e: 2b00         	cmp	r3, #0x0
  3e7e10: d010         	beq	0x3e7e34 <SoldierHostController::addWeapon(Weapon*)+0x314> @ imm = #0x20
  3e7e12: 9b01         	ldr	r3, [sp, #0x4]
  3e7e14: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7e18: 681b         	ldr	r3, [r3]
  3e7e1a: f503 733b    	add.w	r3, r3, #0x2ec
  3e7e1e: 681b         	ldr	r3, [r3]
  3e7e20: 9a01         	ldr	r2, [sp, #0x4]
  3e7e22: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e7e26: 4610         	mov	r0, r2
  3e7e28: 4798         	blx	r3
  3e7e2a: 4603         	mov	r3, r0
  3e7e2c: 2b00         	cmp	r3, #0x0
  3e7e2e: d001         	beq	0x3e7e34 <SoldierHostController::addWeapon(Weapon*)+0x314> @ imm = #0x2
  3e7e30: 2301         	movs	r3, #0x1
  3e7e32: e000         	b	0x3e7e36 <SoldierHostController::addWeapon(Weapon*)+0x316> @ imm = #0x0
  3e7e34: 2300         	movs	r3, #0x0
  3e7e36: 2b00         	cmp	r3, #0x0
  3e7e38: d014         	beq	0x3e7e64 <SoldierHostController::addWeapon(Weapon*)+0x344> @ imm = #0x28
  3e7e3a: 9b01         	ldr	r3, [sp, #0x4]
  3e7e3c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e7e40: 2b00         	cmp	r3, #0x0
  3e7e42: d006         	beq	0x3e7e52 <SoldierHostController::addWeapon(Weapon*)+0x332> @ imm = #0xc
  3e7e44: 9b01         	ldr	r3, [sp, #0x4]
  3e7e46: 681b         	ldr	r3, [r3]
  3e7e48: f503 7303    	add.w	r3, r3, #0x20c
  3e7e4c: 681b         	ldr	r3, [r3]
  3e7e4e: 9801         	ldr	r0, [sp, #0x4]
  3e7e50: 4798         	blx	r3
  3e7e52: 9b01         	ldr	r3, [sp, #0x4]
  3e7e54: 681b         	ldr	r3, [r3]
  3e7e56: f503 7307    	add.w	r3, r3, #0x21c
  3e7e5a: 681b         	ldr	r3, [r3]
  3e7e5c: 9801         	ldr	r0, [sp, #0x4]
  3e7e5e: 9900         	ldr	r1, [sp]
  3e7e60: 4798         	blx	r3
  3e7e62: e079         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0xf2
  3e7e64: 9b01         	ldr	r3, [sp, #0x4]
  3e7e66: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e7e6a: 2b00         	cmp	r3, #0x0
  3e7e6c: d010         	beq	0x3e7e90 <SoldierHostController::addWeapon(Weapon*)+0x370> @ imm = #0x20
  3e7e6e: 9b01         	ldr	r3, [sp, #0x4]
  3e7e70: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e7e74: 681b         	ldr	r3, [r3]
  3e7e76: f503 733b    	add.w	r3, r3, #0x2ec
  3e7e7a: 681b         	ldr	r3, [r3]
  3e7e7c: 9a01         	ldr	r2, [sp, #0x4]
  3e7e7e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e7e82: 4610         	mov	r0, r2
  3e7e84: 4798         	blx	r3
  3e7e86: 4603         	mov	r3, r0
  3e7e88: 2b00         	cmp	r3, #0x0
  3e7e8a: d001         	beq	0x3e7e90 <SoldierHostController::addWeapon(Weapon*)+0x370> @ imm = #0x2
  3e7e8c: 2301         	movs	r3, #0x1
  3e7e8e: e000         	b	0x3e7e92 <SoldierHostController::addWeapon(Weapon*)+0x372> @ imm = #0x0
  3e7e90: 2300         	movs	r3, #0x0
  3e7e92: 2b00         	cmp	r3, #0x0
  3e7e94: d00f         	beq	0x3e7eb6 <SoldierHostController::addWeapon(Weapon*)+0x396> @ imm = #0x1e
  3e7e96: 9b01         	ldr	r3, [sp, #0x4]
  3e7e98: 681b         	ldr	r3, [r3]
  3e7e9a: f503 732b    	add.w	r3, r3, #0x2ac
  3e7e9e: 681b         	ldr	r3, [r3]
  3e7ea0: 9801         	ldr	r0, [sp, #0x4]
  3e7ea2: 4798         	blx	r3
  3e7ea4: 9b01         	ldr	r3, [sp, #0x4]
  3e7ea6: 681b         	ldr	r3, [r3]
  3e7ea8: f503 7307    	add.w	r3, r3, #0x21c
  3e7eac: 681b         	ldr	r3, [r3]
  3e7eae: 9801         	ldr	r0, [sp, #0x4]
  3e7eb0: 9900         	ldr	r1, [sp]
  3e7eb2: 4798         	blx	r3
  3e7eb4: e050         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0xa0
  3e7eb6: 9b01         	ldr	r3, [sp, #0x4]
  3e7eb8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7ebc: 2b00         	cmp	r3, #0x0
  3e7ebe: d10f         	bne	0x3e7ee0 <SoldierHostController::addWeapon(Weapon*)+0x3c0> @ imm = #0x1e
  3e7ec0: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3e7f60 <SoldierHostController::addWeapon(Weapon*)+0x440>
  3e7ec2: 58e3         	ldr	r3, [r4, r3]
  3e7ec4: 681b         	ldr	r3, [r3]
  3e7ec6: 4618         	mov	r0, r3
  3e7ec8: 2104         	movs	r1, #0x4
  3e7eca: f00f ff79    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xfef2
  3e7ece: 9b01         	ldr	r3, [sp, #0x4]
  3e7ed0: 681b         	ldr	r3, [r3]
  3e7ed2: f503 7343    	add.w	r3, r3, #0x30c
  3e7ed6: 681b         	ldr	r3, [r3]
  3e7ed8: 9801         	ldr	r0, [sp, #0x4]
  3e7eda: 9900         	ldr	r1, [sp]
  3e7edc: 4798         	blx	r3
  3e7ede: e03b         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0x76
  3e7ee0: 9b01         	ldr	r3, [sp, #0x4]
  3e7ee2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7ee6: 2b00         	cmp	r3, #0x0
  3e7ee8: d01b         	beq	0x3e7f22 <SoldierHostController::addWeapon(Weapon*)+0x402> @ imm = #0x36
  3e7eea: 9b01         	ldr	r3, [sp, #0x4]
  3e7eec: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e7ef0: 2b00         	cmp	r3, #0x0
  3e7ef2: d116         	bne	0x3e7f22 <SoldierHostController::addWeapon(Weapon*)+0x402> @ imm = #0x2c
  3e7ef4: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x3e7f60 <SoldierHostController::addWeapon(Weapon*)+0x440>
  3e7ef6: 58e3         	ldr	r3, [r4, r3]
  3e7ef8: 681b         	ldr	r3, [r3]
  3e7efa: 4618         	mov	r0, r3
  3e7efc: 2104         	movs	r1, #0x4
  3e7efe: f00f ff5f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xfebe
  3e7f02: 9b01         	ldr	r3, [sp, #0x4]
  3e7f04: 681b         	ldr	r3, [r3]
  3e7f06: f503 7306    	add.w	r3, r3, #0x218
  3e7f0a: 681b         	ldr	r3, [r3]
  3e7f0c: 9801         	ldr	r0, [sp, #0x4]
  3e7f0e: 9900         	ldr	r1, [sp]
  3e7f10: 4798         	blx	r3
  3e7f12: 9b01         	ldr	r3, [sp, #0x4]
  3e7f14: 681b         	ldr	r3, [r3]
  3e7f16: f503 732b    	add.w	r3, r3, #0x2ac
  3e7f1a: 681b         	ldr	r3, [r3]
  3e7f1c: 9801         	ldr	r0, [sp, #0x4]
  3e7f1e: 4798         	blx	r3
  3e7f20: e01a         	b	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0x34
  3e7f22: 9b01         	ldr	r3, [sp, #0x4]
  3e7f24: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7f28: 2b00         	cmp	r3, #0x0
  3e7f2a: d015         	beq	0x3e7f58 <SoldierHostController::addWeapon(Weapon*)+0x438> @ imm = #0x2a
  3e7f2c: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3e7f60 <SoldierHostController::addWeapon(Weapon*)+0x440>
  3e7f2e: 58e3         	ldr	r3, [r4, r3]
  3e7f30: 681b         	ldr	r3, [r3]
  3e7f32: 4618         	mov	r0, r3
  3e7f34: 2104         	movs	r1, #0x4
  3e7f36: f00f ff43    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xfe86
  3e7f3a: 9b01         	ldr	r3, [sp, #0x4]
  3e7f3c: 681b         	ldr	r3, [r3]
  3e7f3e: f503 7302    	add.w	r3, r3, #0x208
  3e7f42: 681b         	ldr	r3, [r3]
  3e7f44: 9801         	ldr	r0, [sp, #0x4]
  3e7f46: 4798         	blx	r3
  3e7f48: 9b01         	ldr	r3, [sp, #0x4]
  3e7f4a: 681b         	ldr	r3, [r3]
  3e7f4c: f503 7343    	add.w	r3, r3, #0x30c
  3e7f50: 681b         	ldr	r3, [r3]
  3e7f52: 9801         	ldr	r0, [sp, #0x4]
  3e7f54: 9900         	ldr	r1, [sp]
  3e7f56: 4798         	blx	r3
  3e7f58: b007         	add	sp, #0x1c
  3e7f5a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e7f5b); words below are literal-pool data ---
  3e7f5c: aedc         	add	r6, sp, #0x370
  3e7f5e: 0054         	lsls	r4, r2, #0x1
  3e7f60: d730         	bvc	0x3e7fc4 <SoldierHostController::addPrimaryWeapon(Weapon*)+0x2c> @ imm = #0x60
  3e7f62: ffff b500    	<unknown>

// ==== SoldierHostController::addPrimaryWeaponRemoveDual
//      file offset 0x3e7f64 (= ELF address; Ghidra 0x3f7f64), 50 bytes, Thumb-2
  3e7f64: b500         	push	{lr}
  3e7f66: b083         	sub	sp, #0xc
  3e7f68: 9001         	str	r0, [sp, #0x4]
  3e7f6a: 9100         	str	r1, [sp]
  3e7f6c: 9b00         	ldr	r3, [sp]
  3e7f6e: 2b00         	cmp	r3, #0x0
  3e7f70: d00e         	beq	0x3e7f90 <SoldierHostController::addPrimaryWeaponRemoveDual(Weapon*)+0x2c> @ imm = #0x1c
  3e7f72: 9b01         	ldr	r3, [sp, #0x4]
  3e7f74: 681b         	ldr	r3, [r3]
  3e7f76: f503 7303    	add.w	r3, r3, #0x20c
  3e7f7a: 681b         	ldr	r3, [r3]
  3e7f7c: 9801         	ldr	r0, [sp, #0x4]
  3e7f7e: 4798         	blx	r3
  3e7f80: 9b01         	ldr	r3, [sp, #0x4]
  3e7f82: 681b         	ldr	r3, [r3]
  3e7f84: f503 7305    	add.w	r3, r3, #0x214
  3e7f88: 681b         	ldr	r3, [r3]
  3e7f8a: 9801         	ldr	r0, [sp, #0x4]
  3e7f8c: 9900         	ldr	r1, [sp]
  3e7f8e: 4798         	blx	r3
  3e7f90: b003         	add	sp, #0xc
  3e7f92: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::addPrimaryWeapon
//      file offset 0x3e7f98 (= ELF address; Ghidra 0x3f7f98), 320 bytes, Thumb-2
  3e7f98: b530         	push	{r4, r5, lr}
  3e7f9a: b085         	sub	sp, #0x14
  3e7f9c: 9001         	str	r0, [sp, #0x4]
  3e7f9e: 9100         	str	r1, [sp]
  3e7fa0: 9b00         	ldr	r3, [sp]
  3e7fa2: 2b00         	cmp	r3, #0x0
  3e7fa4: f000 8092    	beq.w	0x3e80cc <SoldierHostController::addPrimaryWeapon(Weapon*)+0x134> @ imm = #0x124
  3e7fa8: 9b01         	ldr	r3, [sp, #0x4]
  3e7faa: 9a00         	ldr	r2, [sp]
  3e7fac: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e7fb0: 9b01         	ldr	r3, [sp, #0x4]
  3e7fb2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7fb6: 4618         	mov	r0, r3
  3e7fb8: f1af ff96    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1aff2c
  3e7fbc: 9b01         	ldr	r3, [sp, #0x4]
  3e7fbe: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7fc2: 681b         	ldr	r3, [r3]
  3e7fc4: f503 73f8    	add.w	r3, r3, #0x1f0
  3e7fc8: 681c         	ldr	r4, [r3]
  3e7fca: 9b01         	ldr	r3, [sp, #0x4]
  3e7fcc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7fd0: 461d         	mov	r5, r3
  3e7fd2: 9b01         	ldr	r3, [sp, #0x4]
  3e7fd4: 681b         	ldr	r3, [r3]
  3e7fd6: f503 73e0    	add.w	r3, r3, #0x1c0
  3e7fda: 681b         	ldr	r3, [r3]
  3e7fdc: 9a01         	ldr	r2, [sp, #0x4]
  3e7fde: a903         	add	r1, sp, #0xc
  3e7fe0: 4608         	mov	r0, r1
  3e7fe2: 4611         	mov	r1, r2
  3e7fe4: 4798         	blx	r3
  3e7fe6: ab03         	add	r3, sp, #0xc
  3e7fe8: 4628         	mov	r0, r5
  3e7fea: 4619         	mov	r1, r3
  3e7fec: 47a0         	blx	r4
  3e7fee: ab03         	add	r3, sp, #0xc
  3e7ff0: 4618         	mov	r0, r3
  3e7ff2: f3cd fc8f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd91e
  3e7ff6: 9b01         	ldr	r3, [sp, #0x4]
  3e7ff8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e7ffc: 681b         	ldr	r3, [r3]
  3e7ffe: f503 730f    	add.w	r3, r3, #0x23c
  3e8002: 681b         	ldr	r3, [r3]
  3e8004: 9a01         	ldr	r2, [sp, #0x4]
  3e8006: f8d2 1148    	ldr.w	r1, [r2, #0x148]
  3e800a: 9a01         	ldr	r2, [sp, #0x4]
  3e800c: 32f8         	adds	r2, #0xf8
  3e800e: 4608         	mov	r0, r1
  3e8010: 4611         	mov	r1, r2
  3e8012: 4798         	blx	r3
  3e8014: f1f8 fb4c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f8698
  3e8018: 4602         	mov	r2, r0
  3e801a: 9b01         	ldr	r3, [sp, #0x4]
  3e801c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8020: 4610         	mov	r0, r2
  3e8022: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x3e80d0 <SoldierHostController::addPrimaryWeapon(Weapon*)+0x138>
  3e8024: 447a         	add	r2, pc
  3e8026: 4611         	mov	r1, r2
  3e8028: 461a         	mov	r2, r3
  3e802a: f1f8 fd7f    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f8afe
  3e802e: 9b01         	ldr	r3, [sp, #0x4]
  3e8030: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e8034: 9b00         	ldr	r3, [sp]
  3e8036: 681b         	ldr	r3, [r3]
  3e8038: f503 7339    	add.w	r3, r3, #0x2e4
  3e803c: 681b         	ldr	r3, [r3]
  3e803e: 9800         	ldr	r0, [sp]
  3e8040: 4798         	blx	r3
  3e8042: 4603         	mov	r3, r0
  3e8044: 4620         	mov	r0, r4
  3e8046: 4619         	mov	r1, r3
  3e8048: f00b fe62    	bl	0x3f3d10 <SoldierView::setWeaponAngleOffset(float)> @ imm = #0xbcc4
  3e804c: 9b01         	ldr	r3, [sp, #0x4]
  3e804e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8052: 681b         	ldr	r3, [r3]
  3e8054: f503 73ea    	add.w	r3, r3, #0x1d4
  3e8058: 681b         	ldr	r3, [r3]
  3e805a: 9a01         	ldr	r2, [sp, #0x4]
  3e805c: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e8060: 4610         	mov	r0, r2
  3e8062: 4798         	blx	r3
  3e8064: 9b01         	ldr	r3, [sp, #0x4]
  3e8066: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e806a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e806e: 681b         	ldr	r3, [r3]
  3e8070: 33cc         	adds	r3, #0xcc
  3e8072: 681b         	ldr	r3, [r3]
  3e8074: 9a01         	ldr	r2, [sp, #0x4]
  3e8076: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e807a: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e807e: 9a01         	ldr	r2, [sp, #0x4]
  3e8080: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e8084: 4608         	mov	r0, r1
  3e8086: 4611         	mov	r1, r2
  3e8088: 2200         	movs	r2, #0x0
  3e808a: 4798         	blx	r3
  3e808c: f1f8 fb10    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f8620
  3e8090: 4602         	mov	r2, r0
  3e8092: 9b01         	ldr	r3, [sp, #0x4]
  3e8094: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8098: 4610         	mov	r0, r2
  3e809a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3e80d4 <SoldierHostController::addPrimaryWeapon(Weapon*)+0x13c>
  3e809c: 447a         	add	r2, pc
  3e809e: 4611         	mov	r1, r2
  3e80a0: 461a         	mov	r2, r3
  3e80a2: f1f8 fd43    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f8a86
  3e80a6: 9b01         	ldr	r3, [sp, #0x4]
  3e80a8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e80ac: 4618         	mov	r0, r3
  3e80ae: f04f 0200    	mov.w	r2, #0x0
  3e80b2: f44f 4300    	mov.w	r3, #0x8000
  3e80b6: f2c4 0356    	movt	r3, #0x4056
  3e80ba: f00b fed3    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0xbda6
  3e80be: e005         	b	0x3e80cc <SoldierHostController::addPrimaryWeapon(Weapon*)+0x134> @ imm = #0xa
  3e80c0: ab03         	add	r3, sp, #0xc
  3e80c2: 4618         	mov	r0, r3
  3e80c4: f3cd fc26    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd84c
  3e80c8: f39f fff0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39ffe0
  3e80cc: b005         	add	sp, #0x14
  3e80ce: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e80cf); words below are literal-pool data ---
  3e80d0: 03ac         	lsls	r4, r5, #0xe
  3e80d2: 003f         	movs	r7, r7
  3e80d4: 0344         	lsls	r4, r0, #0xd
  3e80d6: 003f         	movs	r7, r7

// ==== SoldierHostController::addSecondaryWeapon
//      file offset 0x3e80d8 (= ELF address; Ghidra 0x3f80d8), 236 bytes, Thumb-2
  3e80d8: b530         	push	{r4, r5, lr}
  3e80da: b085         	sub	sp, #0x14
  3e80dc: 9001         	str	r0, [sp, #0x4]
  3e80de: 9100         	str	r1, [sp]
  3e80e0: 9b00         	ldr	r3, [sp]
  3e80e2: 2b00         	cmp	r3, #0x0
  3e80e4: d069         	beq	0x3e81ba <SoldierHostController::addSecondaryWeapon(Weapon*)+0xe2> @ imm = #0xd2
  3e80e6: 9b01         	ldr	r3, [sp, #0x4]
  3e80e8: 9a00         	ldr	r2, [sp]
  3e80ea: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e80ee: 9b01         	ldr	r3, [sp, #0x4]
  3e80f0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e80f4: 4618         	mov	r0, r3
  3e80f6: f1af fef7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1afdee
  3e80fa: 9b01         	ldr	r3, [sp, #0x4]
  3e80fc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8100: 681b         	ldr	r3, [r3]
  3e8102: f503 73f8    	add.w	r3, r3, #0x1f0
  3e8106: 681c         	ldr	r4, [r3]
  3e8108: 9b01         	ldr	r3, [sp, #0x4]
  3e810a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e810e: 461d         	mov	r5, r3
  3e8110: 9b01         	ldr	r3, [sp, #0x4]
  3e8112: 681b         	ldr	r3, [r3]
  3e8114: f503 73e0    	add.w	r3, r3, #0x1c0
  3e8118: 681b         	ldr	r3, [r3]
  3e811a: 9a01         	ldr	r2, [sp, #0x4]
  3e811c: a903         	add	r1, sp, #0xc
  3e811e: 4608         	mov	r0, r1
  3e8120: 4611         	mov	r1, r2
  3e8122: 4798         	blx	r3
  3e8124: ab03         	add	r3, sp, #0xc
  3e8126: 4628         	mov	r0, r5
  3e8128: 4619         	mov	r1, r3
  3e812a: 47a0         	blx	r4
  3e812c: ab03         	add	r3, sp, #0xc
  3e812e: 4618         	mov	r0, r3
  3e8130: f3cd fbf0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd7e0
  3e8134: 9b01         	ldr	r3, [sp, #0x4]
  3e8136: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e813a: 681b         	ldr	r3, [r3]
  3e813c: f503 730f    	add.w	r3, r3, #0x23c
  3e8140: 681b         	ldr	r3, [r3]
  3e8142: 9a01         	ldr	r2, [sp, #0x4]
  3e8144: f8d2 114c    	ldr.w	r1, [r2, #0x14c]
  3e8148: 9a01         	ldr	r2, [sp, #0x4]
  3e814a: 32f8         	adds	r2, #0xf8
  3e814c: 4608         	mov	r0, r1
  3e814e: 4611         	mov	r1, r2
  3e8150: 4798         	blx	r3
  3e8152: f1f8 faad    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f855a
  3e8156: 4602         	mov	r2, r0
  3e8158: 9b01         	ldr	r3, [sp, #0x4]
  3e815a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e815e: 4610         	mov	r0, r2
  3e8160: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3e81c0 <SoldierHostController::addSecondaryWeapon(Weapon*)+0xe8>
  3e8162: 447a         	add	r2, pc
  3e8164: 4611         	mov	r1, r2
  3e8166: 461a         	mov	r2, r3
  3e8168: f1f8 fce0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f89c0
  3e816c: 9b01         	ldr	r3, [sp, #0x4]
  3e816e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8172: 681b         	ldr	r3, [r3]
  3e8174: f503 73ec    	add.w	r3, r3, #0x1d8
  3e8178: 681b         	ldr	r3, [r3]
  3e817a: 9a01         	ldr	r2, [sp, #0x4]
  3e817c: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e8180: 4610         	mov	r0, r2
  3e8182: 4798         	blx	r3
  3e8184: 9b01         	ldr	r3, [sp, #0x4]
  3e8186: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e818a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e818e: 681b         	ldr	r3, [r3]
  3e8190: 33cc         	adds	r3, #0xcc
  3e8192: 681b         	ldr	r3, [r3]
  3e8194: 9a01         	ldr	r2, [sp, #0x4]
  3e8196: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e819a: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e819e: 9a01         	ldr	r2, [sp, #0x4]
  3e81a0: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e81a4: 4608         	mov	r0, r1
  3e81a6: 4611         	mov	r1, r2
  3e81a8: 2200         	movs	r2, #0x0
  3e81aa: 4798         	blx	r3
  3e81ac: e005         	b	0x3e81ba <SoldierHostController::addSecondaryWeapon(Weapon*)+0xe2> @ imm = #0xa
  3e81ae: ab03         	add	r3, sp, #0xc
  3e81b0: 4618         	mov	r0, r3
  3e81b2: f3cd fbaf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd75e
  3e81b6: f39f ff79    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39fef2
  3e81ba: b005         	add	sp, #0x14
  3e81bc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e81bd); words below are literal-pool data ---
  3e81be: bf00         	nop
  3e81c0: 026e         	lsls	r6, r5, #0x9
  3e81c2: 003f         	movs	r7, r7

// ==== SoldierHostController::addDualWeapon
//      file offset 0x3e81c4 (= ELF address; Ghidra 0x3f81c4), 372 bytes, Thumb-2
  3e81c4: b570         	push	{r4, r5, r6, lr}
  3e81c6: b084         	sub	sp, #0x10
  3e81c8: 9001         	str	r0, [sp, #0x4]
  3e81ca: 9100         	str	r1, [sp]
  3e81cc: 4c56         	ldr	r4, [pc, #0x158]        @ 0x3e8328 <SoldierHostController::addDualWeapon(Weapon*)+0x164>
  3e81ce: 447c         	add	r4, pc
  3e81d0: 9b00         	ldr	r3, [sp]
  3e81d2: 2b00         	cmp	r3, #0x0
  3e81d4: f000 80a6    	beq.w	0x3e8324 <SoldierHostController::addDualWeapon(Weapon*)+0x160> @ imm = #0x14c
  3e81d8: 9b01         	ldr	r3, [sp, #0x4]
  3e81da: 9a00         	ldr	r2, [sp]
  3e81dc: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e81e0: 9b01         	ldr	r3, [sp, #0x4]
  3e81e2: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e81e6: 4618         	mov	r0, r3
  3e81e8: f1af fe7e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1afcfc
  3e81ec: 9b01         	ldr	r3, [sp, #0x4]
  3e81ee: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e81f2: 681b         	ldr	r3, [r3]
  3e81f4: f503 73f8    	add.w	r3, r3, #0x1f0
  3e81f8: 681d         	ldr	r5, [r3]
  3e81fa: 9b01         	ldr	r3, [sp, #0x4]
  3e81fc: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8200: 461e         	mov	r6, r3
  3e8202: 9b01         	ldr	r3, [sp, #0x4]
  3e8204: 681b         	ldr	r3, [r3]
  3e8206: f503 73e0    	add.w	r3, r3, #0x1c0
  3e820a: 681b         	ldr	r3, [r3]
  3e820c: 9a01         	ldr	r2, [sp, #0x4]
  3e820e: a903         	add	r1, sp, #0xc
  3e8210: 4608         	mov	r0, r1
  3e8212: 4611         	mov	r1, r2
  3e8214: 4798         	blx	r3
  3e8216: ab03         	add	r3, sp, #0xc
  3e8218: 4630         	mov	r0, r6
  3e821a: 4619         	mov	r1, r3
  3e821c: 47a8         	blx	r5
  3e821e: ab03         	add	r3, sp, #0xc
  3e8220: 4618         	mov	r0, r3
  3e8222: f3cd fb77    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd6ee
  3e8226: 9b01         	ldr	r3, [sp, #0x4]
  3e8228: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e822c: 681b         	ldr	r3, [r3]
  3e822e: f503 730f    	add.w	r3, r3, #0x23c
  3e8232: 681b         	ldr	r3, [r3]
  3e8234: 9a01         	ldr	r2, [sp, #0x4]
  3e8236: f8d2 1150    	ldr.w	r1, [r2, #0x150]
  3e823a: 9a01         	ldr	r2, [sp, #0x4]
  3e823c: 32f8         	adds	r2, #0xf8
  3e823e: 4608         	mov	r0, r1
  3e8240: 4611         	mov	r1, r2
  3e8242: 4798         	blx	r3
  3e8244: f1f8 fa34    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f8468
  3e8248: 4602         	mov	r2, r0
  3e824a: 9b01         	ldr	r3, [sp, #0x4]
  3e824c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8250: 4610         	mov	r0, r2
  3e8252: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x3e832c <SoldierHostController::addDualWeapon(Weapon*)+0x168>
  3e8254: 447a         	add	r2, pc
  3e8256: 4611         	mov	r1, r2
  3e8258: 461a         	mov	r2, r3
  3e825a: f1f8 fc67    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f88ce
  3e825e: 9b01         	ldr	r3, [sp, #0x4]
  3e8260: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8264: 681b         	ldr	r3, [r3]
  3e8266: f503 73e8    	add.w	r3, r3, #0x1d0
  3e826a: 681b         	ldr	r3, [r3]
  3e826c: 9a01         	ldr	r2, [sp, #0x4]
  3e826e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e8272: 4610         	mov	r0, r2
  3e8274: 4798         	blx	r3
  3e8276: 9b01         	ldr	r3, [sp, #0x4]
  3e8278: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e827c: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e8280: 2b00         	cmp	r3, #0x0
  3e8282: d014         	beq	0x3e82ae <SoldierHostController::addDualWeapon(Weapon*)+0xea> @ imm = #0x28
  3e8284: 9b01         	ldr	r3, [sp, #0x4]
  3e8286: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e828a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e828e: 681b         	ldr	r3, [r3]
  3e8290: 33cc         	adds	r3, #0xcc
  3e8292: 681b         	ldr	r3, [r3]
  3e8294: 9a01         	ldr	r2, [sp, #0x4]
  3e8296: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e829a: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e829e: 9a01         	ldr	r2, [sp, #0x4]
  3e82a0: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e82a4: 4608         	mov	r0, r1
  3e82a6: 4611         	mov	r1, r2
  3e82a8: 2201         	movs	r2, #0x1
  3e82aa: 4798         	blx	r3
  3e82ac: e013         	b	0x3e82d6 <SoldierHostController::addDualWeapon(Weapon*)+0x112> @ imm = #0x26
  3e82ae: 9b01         	ldr	r3, [sp, #0x4]
  3e82b0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e82b4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e82b8: 681b         	ldr	r3, [r3]
  3e82ba: 33cc         	adds	r3, #0xcc
  3e82bc: 681b         	ldr	r3, [r3]
  3e82be: 9a01         	ldr	r2, [sp, #0x4]
  3e82c0: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e82c4: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e82c8: 9a01         	ldr	r2, [sp, #0x4]
  3e82ca: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e82ce: 4608         	mov	r0, r1
  3e82d0: 4611         	mov	r1, r2
  3e82d2: 2201         	movs	r2, #0x1
  3e82d4: 4798         	blx	r3
  3e82d6: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3e8330 <SoldierHostController::addDualWeapon(Weapon*)+0x16c>
  3e82d8: 58e3         	ldr	r3, [r4, r3]
  3e82da: 681b         	ldr	r3, [r3]
  3e82dc: 4618         	mov	r0, r3
  3e82de: 2104         	movs	r1, #0x4
  3e82e0: f00f fd6e    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xfadc
  3e82e4: f1f8 f9e4    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f83c8
  3e82e8: 4602         	mov	r2, r0
  3e82ea: 9b01         	ldr	r3, [sp, #0x4]
  3e82ec: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e82f0: 4610         	mov	r0, r2
  3e82f2: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3e8334 <SoldierHostController::addDualWeapon(Weapon*)+0x170>
  3e82f4: 447a         	add	r2, pc
  3e82f6: 4611         	mov	r1, r2
  3e82f8: 461a         	mov	r2, r3
  3e82fa: f1f8 fc17    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f882e
  3e82fe: 9b01         	ldr	r3, [sp, #0x4]
  3e8300: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8304: 4618         	mov	r0, r3
  3e8306: f04f 0200    	mov.w	r2, #0x0
  3e830a: f44f 4300    	mov.w	r3, #0x8000
  3e830e: f2c4 0356    	movt	r3, #0x4056
  3e8312: f00b fdb5    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0xbb6a
  3e8316: e005         	b	0x3e8324 <SoldierHostController::addDualWeapon(Weapon*)+0x160> @ imm = #0xa
  3e8318: ab03         	add	r3, sp, #0xc
  3e831a: 4618         	mov	r0, r3
  3e831c: f3cd fafa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd5f4
  3e8320: f39f fec4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39fd88
  3e8324: b004         	add	sp, #0x10
  3e8326: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e8327); words below are literal-pool data ---
  3e8328: a83a         	add	r0, sp, #0xe8
  3e832a: 0054         	lsls	r4, r2, #0x1
  3e832c: 017c         	lsls	r4, r7, #0x5
  3e832e: 003f         	movs	r7, r7
  3e8330: d730         	bvc	0x3e8394 <SoldierHostController::applySideWeapon(Weapon*)+0x5c> @ imm = #0x60
  3e8332: ffff 00ec    	<unknown>
  3e8336: 003f         	movs	r7, r7

// ==== SoldierHostController::applySideWeapon
//      file offset 0x3e8338 (= ELF address; Ghidra 0x3f8338), 128 bytes, Thumb-2
  3e8338: b500         	push	{lr}
  3e833a: b083         	sub	sp, #0xc
  3e833c: 9001         	str	r0, [sp, #0x4]
  3e833e: 9100         	str	r1, [sp]
  3e8340: 9b01         	ldr	r3, [sp, #0x4]
  3e8342: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8346: 2b00         	cmp	r3, #0x0
  3e8348: d130         	bne	0x3e83ac <SoldierHostController::applySideWeapon(Weapon*)+0x74> @ imm = #0x60
  3e834a: 9b01         	ldr	r3, [sp, #0x4]
  3e834c: 9a00         	ldr	r2, [sp]
  3e834e: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e8352: 9b01         	ldr	r3, [sp, #0x4]
  3e8354: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8358: 681b         	ldr	r3, [r3]
  3e835a: f503 73ea    	add.w	r3, r3, #0x1d4
  3e835e: 681b         	ldr	r3, [r3]
  3e8360: 9a01         	ldr	r2, [sp, #0x4]
  3e8362: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e8366: 4610         	mov	r0, r2
  3e8368: 4798         	blx	r3
  3e836a: 9b01         	ldr	r3, [sp, #0x4]
  3e836c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8370: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e8374: 681b         	ldr	r3, [r3]
  3e8376: 33cc         	adds	r3, #0xcc
  3e8378: 681b         	ldr	r3, [r3]
  3e837a: 9a01         	ldr	r2, [sp, #0x4]
  3e837c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e8380: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e8384: 9a01         	ldr	r2, [sp, #0x4]
  3e8386: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e838a: 4608         	mov	r0, r1
  3e838c: 4611         	mov	r1, r2
  3e838e: 2203         	movs	r2, #0x3
  3e8390: 4798         	blx	r3
  3e8392: f1f8 f98d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f831a
  3e8396: 4602         	mov	r2, r0
  3e8398: 9b01         	ldr	r3, [sp, #0x4]
  3e839a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e839e: 4610         	mov	r0, r2
  3e83a0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3e83b4 <SoldierHostController::applySideWeapon(Weapon*)+0x7c>
  3e83a2: 447a         	add	r2, pc
  3e83a4: 4611         	mov	r1, r2
  3e83a6: 461a         	mov	r2, r3
  3e83a8: f1f8 fbc0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f8780
  3e83ac: b003         	add	sp, #0xc
  3e83ae: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e83b1); words below are literal-pool data ---
  3e83b2: bf00         	nop
  3e83b4: 003e         	movs	r6, r7
  3e83b6: 003f         	movs	r7, r7

// ==== SoldierHostController::grenadeChanged
//      file offset 0x3e83b8 (= ELF address; Ghidra 0x3f83b8), 44 bytes, Thumb-2
  3e83b8: b500         	push	{lr}
  3e83ba: b083         	sub	sp, #0xc
  3e83bc: 9001         	str	r0, [sp, #0x4]
  3e83be: f1f8 f977    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f82ee
  3e83c2: 4602         	mov	r2, r0
  3e83c4: 9b01         	ldr	r3, [sp, #0x4]
  3e83c6: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e83ca: 4610         	mov	r0, r2
  3e83cc: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3e83e0 <SoldierHostController::grenadeChanged()+0x28>
  3e83ce: 447a         	add	r2, pc
  3e83d0: 4611         	mov	r1, r2
  3e83d2: 461a         	mov	r2, r3
  3e83d4: f1f8 fbaa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f8754
  3e83d8: b003         	add	sp, #0xc
  3e83da: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e83dd); words below are literal-pool data ---
  3e83de: bf00         	nop
  3e83e0: 0022         	movs	r2, r4
  3e83e2: 003f         	movs	r7, r7

// ==== SoldierHostController::addGrenade
//      file offset 0x3e83e4 (= ELF address; Ghidra 0x3f83e4), 174 bytes, Thumb-2
  3e83e4: b510         	push	{r4, lr}
  3e83e6: b084         	sub	sp, #0x10
  3e83e8: 9001         	str	r0, [sp, #0x4]
  3e83ea: 9100         	str	r1, [sp]
  3e83ec: 2300         	movs	r3, #0x0
  3e83ee: 9302         	str	r3, [sp, #0x8]
  3e83f0: e037         	b	0x3e8462 <SoldierHostController::addGrenade(Weapon*)+0x7e> @ imm = #0x6e
  3e83f2: 9b01         	ldr	r3, [sp, #0x4]
  3e83f4: f8d3 21ec    	ldr.w	r2, [r3, #0x1ec]
  3e83f8: 9b02         	ldr	r3, [sp, #0x8]
  3e83fa: 4610         	mov	r0, r2
  3e83fc: 4619         	mov	r1, r3
  3e83fe: f1b1 fe8f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1b1d1e
  3e8402: 4603         	mov	r3, r0
  3e8404: 9303         	str	r3, [sp, #0xc]
  3e8406: 9b03         	ldr	r3, [sp, #0xc]
  3e8408: 681b         	ldr	r3, [r3]
  3e840a: f503 731f    	add.w	r3, r3, #0x27c
  3e840e: 681b         	ldr	r3, [r3]
  3e8410: 9803         	ldr	r0, [sp, #0xc]
  3e8412: 4798         	blx	r3
  3e8414: 4604         	mov	r4, r0
  3e8416: 9b00         	ldr	r3, [sp]
  3e8418: 681b         	ldr	r3, [r3]
  3e841a: f503 731f    	add.w	r3, r3, #0x27c
  3e841e: 681b         	ldr	r3, [r3]
  3e8420: 9800         	ldr	r0, [sp]
  3e8422: 4798         	blx	r3
  3e8424: 4603         	mov	r3, r0
  3e8426: 429c         	cmp	r4, r3
  3e8428: bf14         	ite	ne
  3e842a: 2300         	movne	r3, #0x0
  3e842c: 2301         	moveq	r3, #0x1
  3e842e: b2db         	uxtb	r3, r3
  3e8430: 2b00         	cmp	r3, #0x0
  3e8432: d013         	beq	0x3e845c <SoldierHostController::addGrenade(Weapon*)+0x78> @ imm = #0x26
  3e8434: 9b03         	ldr	r3, [sp, #0xc]
  3e8436: 681b         	ldr	r3, [r3]
  3e8438: f503 731e    	add.w	r3, r3, #0x278
  3e843c: 681c         	ldr	r4, [r3]
  3e843e: 9b03         	ldr	r3, [sp, #0xc]
  3e8440: 681b         	ldr	r3, [r3]
  3e8442: f503 731d    	add.w	r3, r3, #0x274
  3e8446: 681b         	ldr	r3, [r3]
  3e8448: 9803         	ldr	r0, [sp, #0xc]
  3e844a: 4798         	blx	r3
  3e844c: 4603         	mov	r3, r0
  3e844e: b29b         	uxth	r3, r3
  3e8450: b21b         	sxth	r3, r3
  3e8452: 3301         	adds	r3, #0x1
  3e8454: 9803         	ldr	r0, [sp, #0xc]
  3e8456: 4619         	mov	r1, r3
  3e8458: 47a0         	blx	r4
  3e845a: e018         	b	0x3e848e <SoldierHostController::addGrenade(Weapon*)+0xaa> @ imm = #0x30
  3e845c: 9b02         	ldr	r3, [sp, #0x8]
  3e845e: 3301         	adds	r3, #0x1
  3e8460: 9302         	str	r3, [sp, #0x8]
  3e8462: 9c02         	ldr	r4, [sp, #0x8]
  3e8464: 9b01         	ldr	r3, [sp, #0x4]
  3e8466: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e846a: 4618         	mov	r0, r3
  3e846c: f1b1 fe38    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1b1c70
  3e8470: 4603         	mov	r3, r0
  3e8472: 429c         	cmp	r4, r3
  3e8474: bf2c         	ite	hs
  3e8476: 2300         	movhs	r3, #0x0
  3e8478: 2301         	movlo	r3, #0x1
  3e847a: b2db         	uxtb	r3, r3
  3e847c: 2b00         	cmp	r3, #0x0
  3e847e: d1b8         	bne	0x3e83f2 <SoldierHostController::addGrenade(Weapon*)+0xe> @ imm = #-0x90
  3e8480: 9b01         	ldr	r3, [sp, #0x4]
  3e8482: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e8486: 4618         	mov	r0, r3
  3e8488: 9900         	ldr	r1, [sp]
  3e848a: f1b1 feef    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1b1dde
  3e848e: b004         	add	sp, #0x10
  3e8490: bd10         	pop	{r4, pc}

// ==== SoldierHostController::addSideWeapon
//      file offset 0x3e8494 (= ELF address; Ghidra 0x3f8494), 340 bytes, Thumb-2
  3e8494: b5f0         	push	{r4, r5, r6, r7, lr}
  3e8496: b085         	sub	sp, #0x14
  3e8498: 9001         	str	r0, [sp, #0x4]
  3e849a: 9100         	str	r1, [sp]
  3e849c: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x3e85dc <SoldierHostController::addSideWeapon(Weapon*)+0x148>
  3e849e: 447c         	add	r4, pc
  3e84a0: 9b00         	ldr	r3, [sp]
  3e84a2: 2b00         	cmp	r3, #0x0
  3e84a4: d00e         	beq	0x3e84c4 <SoldierHostController::addSideWeapon(Weapon*)+0x30> @ imm = #0x1c
  3e84a6: 9b01         	ldr	r3, [sp, #0x4]
  3e84a8: 681b         	ldr	r3, [r3]
  3e84aa: f503 7336    	add.w	r3, r3, #0x2d8
  3e84ae: 681b         	ldr	r3, [r3]
  3e84b0: 9801         	ldr	r0, [sp, #0x4]
  3e84b2: 4798         	blx	r3
  3e84b4: 4602         	mov	r2, r0
  3e84b6: 9b01         	ldr	r3, [sp, #0x4]
  3e84b8: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  3e84bc: 429a         	cmp	r2, r3
  3e84be: da01         	bge	0x3e84c4 <SoldierHostController::addSideWeapon(Weapon*)+0x30> @ imm = #0x2
  3e84c0: 2301         	movs	r3, #0x1
  3e84c2: e000         	b	0x3e84c6 <SoldierHostController::addSideWeapon(Weapon*)+0x32> @ imm = #0x0
  3e84c4: 2300         	movs	r3, #0x0
  3e84c6: 2b00         	cmp	r3, #0x0
  3e84c8: f000 8086    	beq.w	0x3e85d8 <SoldierHostController::addSideWeapon(Weapon*)+0x144> @ imm = #0x10c
  3e84cc: 9b00         	ldr	r3, [sp]
  3e84ce: 681b         	ldr	r3, [r3]
  3e84d0: f503 731e    	add.w	r3, r3, #0x278
  3e84d4: 681d         	ldr	r5, [r3]
  3e84d6: 9b00         	ldr	r3, [sp]
  3e84d8: 681b         	ldr	r3, [r3]
  3e84da: f503 731d    	add.w	r3, r3, #0x274
  3e84de: 681b         	ldr	r3, [r3]
  3e84e0: 9800         	ldr	r0, [sp]
  3e84e2: 4798         	blx	r3
  3e84e4: 4603         	mov	r3, r0
  3e84e6: b29b         	uxth	r3, r3
  3e84e8: b21e         	sxth	r6, r3
  3e84ea: 9b01         	ldr	r3, [sp, #0x4]
  3e84ec: f8d3 71b8    	ldr.w	r7, [r3, #0x1b8]
  3e84f0: 9b01         	ldr	r3, [sp, #0x4]
  3e84f2: 681b         	ldr	r3, [r3]
  3e84f4: f503 7336    	add.w	r3, r3, #0x2d8
  3e84f8: 681b         	ldr	r3, [r3]
  3e84fa: 9801         	ldr	r0, [sp, #0x4]
  3e84fc: 4798         	blx	r3
  3e84fe: 4603         	mov	r3, r0
  3e8500: 1afb         	subs	r3, r7, r3
  3e8502: 429e         	cmp	r6, r3
  3e8504: dd0c         	ble	0x3e8520 <SoldierHostController::addSideWeapon(Weapon*)+0x8c> @ imm = #0x18
  3e8506: 9b01         	ldr	r3, [sp, #0x4]
  3e8508: f8d3 61b8    	ldr.w	r6, [r3, #0x1b8]
  3e850c: 9b01         	ldr	r3, [sp, #0x4]
  3e850e: 681b         	ldr	r3, [r3]
  3e8510: f503 7336    	add.w	r3, r3, #0x2d8
  3e8514: 681b         	ldr	r3, [r3]
  3e8516: 9801         	ldr	r0, [sp, #0x4]
  3e8518: 4798         	blx	r3
  3e851a: 4603         	mov	r3, r0
  3e851c: 1af3         	subs	r3, r6, r3
  3e851e: e009         	b	0x3e8534 <SoldierHostController::addSideWeapon(Weapon*)+0xa0> @ imm = #0x12
  3e8520: 9b00         	ldr	r3, [sp]
  3e8522: 681b         	ldr	r3, [r3]
  3e8524: f503 731d    	add.w	r3, r3, #0x274
  3e8528: 681b         	ldr	r3, [r3]
  3e852a: 9800         	ldr	r0, [sp]
  3e852c: 4798         	blx	r3
  3e852e: 4603         	mov	r3, r0
  3e8530: b29b         	uxth	r3, r3
  3e8532: b21b         	sxth	r3, r3
  3e8534: 9800         	ldr	r0, [sp]
  3e8536: 4619         	mov	r1, r3
  3e8538: 47a8         	blx	r5
  3e853a: 9b01         	ldr	r3, [sp, #0x4]
  3e853c: 681b         	ldr	r3, [r3]
  3e853e: f503 734a    	add.w	r3, r3, #0x328
  3e8542: 681b         	ldr	r3, [r3]
  3e8544: 9801         	ldr	r0, [sp, #0x4]
  3e8546: 9900         	ldr	r1, [sp]
  3e8548: 4798         	blx	r3
  3e854a: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3e85e0 <SoldierHostController::addSideWeapon(Weapon*)+0x14c>
  3e854c: 58e3         	ldr	r3, [r4, r3]
  3e854e: 681b         	ldr	r3, [r3]
  3e8550: 4618         	mov	r0, r3
  3e8552: 2111         	movs	r1, #0x11
  3e8554: f00f fc34    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xf868
  3e8558: 9b00         	ldr	r3, [sp]
  3e855a: 681b         	ldr	r3, [r3]
  3e855c: f503 73f8    	add.w	r3, r3, #0x1f0
  3e8560: 681c         	ldr	r4, [r3]
  3e8562: 9d00         	ldr	r5, [sp]
  3e8564: 9b01         	ldr	r3, [sp, #0x4]
  3e8566: 681b         	ldr	r3, [r3]
  3e8568: f503 73e0    	add.w	r3, r3, #0x1c0
  3e856c: 681b         	ldr	r3, [r3]
  3e856e: 9a01         	ldr	r2, [sp, #0x4]
  3e8570: a903         	add	r1, sp, #0xc
  3e8572: 4608         	mov	r0, r1
  3e8574: 4611         	mov	r1, r2
  3e8576: 4798         	blx	r3
  3e8578: ab03         	add	r3, sp, #0xc
  3e857a: 4628         	mov	r0, r5
  3e857c: 4619         	mov	r1, r3
  3e857e: 47a0         	blx	r4
  3e8580: ab03         	add	r3, sp, #0xc
  3e8582: 4618         	mov	r0, r3
  3e8584: f3cd f9c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd38c
  3e8588: f1f8 f892    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f8124
  3e858c: 4603         	mov	r3, r0
  3e858e: 4618         	mov	r0, r3
  3e8590: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3e85e4 <SoldierHostController::addSideWeapon(Weapon*)+0x150>
  3e8592: 447b         	add	r3, pc
  3e8594: 4619         	mov	r1, r3
  3e8596: 9a00         	ldr	r2, [sp]
  3e8598: f1f8 fac8    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f8590
  3e859c: 9b01         	ldr	r3, [sp, #0x4]
  3e859e: 681b         	ldr	r3, [r3]
  3e85a0: f503 7348    	add.w	r3, r3, #0x320
  3e85a4: 681c         	ldr	r4, [r3]
  3e85a6: 9b01         	ldr	r3, [sp, #0x4]
  3e85a8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e85ac: 4618         	mov	r0, r3
  3e85ae: 2100         	movs	r1, #0x0
  3e85b0: f1b1 fdb6    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1b1b6c
  3e85b4: 4603         	mov	r3, r0
  3e85b6: 9801         	ldr	r0, [sp, #0x4]
  3e85b8: 4619         	mov	r1, r3
  3e85ba: 47a0         	blx	r4
  3e85bc: 9b01         	ldr	r3, [sp, #0x4]
  3e85be: 681b         	ldr	r3, [r3]
  3e85c0: f503 7349    	add.w	r3, r3, #0x324
  3e85c4: 681b         	ldr	r3, [r3]
  3e85c6: 9801         	ldr	r0, [sp, #0x4]
  3e85c8: 4798         	blx	r3
  3e85ca: e005         	b	0x3e85d8 <SoldierHostController::addSideWeapon(Weapon*)+0x144> @ imm = #0xa
  3e85cc: ab03         	add	r3, sp, #0xc
  3e85ce: 4618         	mov	r0, r3
  3e85d0: f3cd f9a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd340
  3e85d4: f39f fd6a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39fad4
  3e85d8: b005         	add	sp, #0x14
  3e85da: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e85db); words below are literal-pool data ---
  3e85dc: a56a         	adr	r5, #424 <SoldierHostController::updateModifiers(float)+0x1e>
  3e85de: 0054         	lsls	r4, r2, #0x1
  3e85e0: d730         	bvc	0x3e8644 <SoldierHostController::updateModifiers(float)+0x18> @ imm = #0x60
  3e85e2: ffff fe3e    	vcvt.f32.u32	d31, d30, #0x1
  3e85e6: 003e         	movs	r6, r7

// ==== SoldierHostController::addModifier
//      file offset 0x3e85e8 (= ELF address; Ghidra 0x3f85e8), 68 bytes, Thumb-2
  3e85e8: b500         	push	{lr}
  3e85ea: b083         	sub	sp, #0xc
  3e85ec: 9001         	str	r0, [sp, #0x4]
  3e85ee: 9100         	str	r1, [sp]
  3e85f0: 9b01         	ldr	r3, [sp, #0x4]
  3e85f2: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e85f6: 4618         	mov	r0, r3
  3e85f8: 9900         	ldr	r1, [sp]
  3e85fa: f1b1 fe37    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1b1c6e
  3e85fe: 9b00         	ldr	r3, [sp]
  3e8600: 681b         	ldr	r3, [r3]
  3e8602: f503 730c    	add.w	r3, r3, #0x230
  3e8606: 681b         	ldr	r3, [r3]
  3e8608: 9800         	ldr	r0, [sp]
  3e860a: 4798         	blx	r3
  3e860c: f1f8 f850    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f80a0
  3e8610: 4603         	mov	r3, r0
  3e8612: 4618         	mov	r0, r3
  3e8614: 4b04         	ldr	r3, [pc, #0x10]         @ 0x3e8628 <SoldierHostController::addModifier(Item*)+0x40>
  3e8616: 447b         	add	r3, pc
  3e8618: 4619         	mov	r1, r3
  3e861a: 9a00         	ldr	r2, [sp]
  3e861c: f1f8 fa86    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f850c
  3e8620: b003         	add	sp, #0xc
  3e8622: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e8625); words below are literal-pool data ---
  3e8626: bf00         	nop
  3e8628: fdba 003e    	ldc2	p0, c0, [r10, #248]!

// ==== SoldierHostController::updateModifiers
//      file offset 0x3e862c (= ELF address; Ghidra 0x3f862c), 140 bytes, Thumb-2
  3e862c: b510         	push	{r4, lr}
  3e862e: b084         	sub	sp, #0x10
  3e8630: 9001         	str	r0, [sp, #0x4]
  3e8632: 9100         	str	r1, [sp]
  3e8634: 2300         	movs	r3, #0x0
  3e8636: 9302         	str	r3, [sp, #0x8]
  3e8638: e02d         	b	0x3e8696 <SoldierHostController::updateModifiers(float)+0x6a> @ imm = #0x5a
  3e863a: 9b01         	ldr	r3, [sp, #0x4]
  3e863c: f8d3 21e8    	ldr.w	r2, [r3, #0x1e8]
  3e8640: 9b02         	ldr	r3, [sp, #0x8]
  3e8642: 4610         	mov	r0, r2
  3e8644: 4619         	mov	r1, r3
  3e8646: f1b1 fd6b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1b1ad6
  3e864a: 4603         	mov	r3, r0
  3e864c: 9303         	str	r3, [sp, #0xc]
  3e864e: 9b03         	ldr	r3, [sp, #0xc]
  3e8650: 681b         	ldr	r3, [r3]
  3e8652: f503 730e    	add.w	r3, r3, #0x238
  3e8656: 681b         	ldr	r3, [r3]
  3e8658: 9803         	ldr	r0, [sp, #0xc]
  3e865a: 9900         	ldr	r1, [sp]
  3e865c: 4798         	blx	r3
  3e865e: 4603         	mov	r3, r0
  3e8660: f083 0301    	eor	r3, r3, #0x1
  3e8664: b2db         	uxtb	r3, r3
  3e8666: 2b00         	cmp	r3, #0x0
  3e8668: d012         	beq	0x3e8690 <SoldierHostController::updateModifiers(float)+0x64> @ imm = #0x24
  3e866a: 9b03         	ldr	r3, [sp, #0xc]
  3e866c: 681b         	ldr	r3, [r3]
  3e866e: f503 730d    	add.w	r3, r3, #0x234
  3e8672: 681b         	ldr	r3, [r3]
  3e8674: 9803         	ldr	r0, [sp, #0xc]
  3e8676: 4798         	blx	r3
  3e8678: 9b01         	ldr	r3, [sp, #0x4]
  3e867a: f8d3 21e8    	ldr.w	r2, [r3, #0x1e8]
  3e867e: 9b02         	ldr	r3, [sp, #0x8]
  3e8680: 4610         	mov	r0, r2
  3e8682: 4619         	mov	r1, r3
  3e8684: 2201         	movs	r2, #0x1
  3e8686: f1b1 fe49    	bl	0x59a31c <cocos2d::CCArray::removeObjectAtIndex(unsigned int, bool)> @ imm = #0x1b1c92
  3e868a: 9b02         	ldr	r3, [sp, #0x8]
  3e868c: 3b01         	subs	r3, #0x1
  3e868e: 9302         	str	r3, [sp, #0x8]
  3e8690: 9b02         	ldr	r3, [sp, #0x8]
  3e8692: 3301         	adds	r3, #0x1
  3e8694: 9302         	str	r3, [sp, #0x8]
  3e8696: 9c02         	ldr	r4, [sp, #0x8]
  3e8698: 9b01         	ldr	r3, [sp, #0x4]
  3e869a: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e869e: 4618         	mov	r0, r3
  3e86a0: f1b1 fd1e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1b1a3c
  3e86a4: 4603         	mov	r3, r0
  3e86a6: 429c         	cmp	r4, r3
  3e86a8: bf2c         	ite	hs
  3e86aa: 2300         	movhs	r3, #0x0
  3e86ac: 2301         	movlo	r3, #0x1
  3e86ae: b2db         	uxtb	r3, r3
  3e86b0: 2b00         	cmp	r3, #0x0
  3e86b2: d1c2         	bne	0x3e863a <SoldierHostController::updateModifiers(float)+0xe> @ imm = #-0x7c
  3e86b4: b004         	add	sp, #0x10
  3e86b6: bd10         	pop	{r4, pc}

// ==== SoldierHostController::removeModifier
//      file offset 0x3e86b8 (= ELF address; Ghidra 0x3f86b8), 44 bytes, Thumb-2
  3e86b8: b500         	push	{lr}
  3e86ba: b083         	sub	sp, #0xc
  3e86bc: 9001         	str	r0, [sp, #0x4]
  3e86be: 9100         	str	r1, [sp]
  3e86c0: 9b00         	ldr	r3, [sp]
  3e86c2: 681b         	ldr	r3, [r3]
  3e86c4: f503 730d    	add.w	r3, r3, #0x234
  3e86c8: 681b         	ldr	r3, [r3]
  3e86ca: 9800         	ldr	r0, [sp]
  3e86cc: 4798         	blx	r3
  3e86ce: 9b01         	ldr	r3, [sp, #0x4]
  3e86d0: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e86d4: 4618         	mov	r0, r3
  3e86d6: 9900         	ldr	r1, [sp]
  3e86d8: 2201         	movs	r2, #0x1
  3e86da: f1b1 fe0b    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x1b1c16
  3e86de: b003         	add	sp, #0xc
  3e86e0: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::removeAllModifiers
//      file offset 0x3e86e4 (= ELF address; Ghidra 0x3f86e4), 98 bytes, Thumb-2
  3e86e4: b510         	push	{r4, lr}
  3e86e6: b084         	sub	sp, #0x10
  3e86e8: 9001         	str	r0, [sp, #0x4]
  3e86ea: 2300         	movs	r3, #0x0
  3e86ec: 9302         	str	r3, [sp, #0x8]
  3e86ee: e013         	b	0x3e8718 <SoldierHostController::removeAllModifiers()+0x34> @ imm = #0x26
  3e86f0: 9b01         	ldr	r3, [sp, #0x4]
  3e86f2: f8d3 21e8    	ldr.w	r2, [r3, #0x1e8]
  3e86f6: 9b02         	ldr	r3, [sp, #0x8]
  3e86f8: 4610         	mov	r0, r2
  3e86fa: 4619         	mov	r1, r3
  3e86fc: f1b1 fd10    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1b1a20
  3e8700: 4603         	mov	r3, r0
  3e8702: 9303         	str	r3, [sp, #0xc]
  3e8704: 9b03         	ldr	r3, [sp, #0xc]
  3e8706: 681b         	ldr	r3, [r3]
  3e8708: f503 730d    	add.w	r3, r3, #0x234
  3e870c: 681b         	ldr	r3, [r3]
  3e870e: 9803         	ldr	r0, [sp, #0xc]
  3e8710: 4798         	blx	r3
  3e8712: 9b02         	ldr	r3, [sp, #0x8]
  3e8714: 3301         	adds	r3, #0x1
  3e8716: 9302         	str	r3, [sp, #0x8]
  3e8718: 9c02         	ldr	r4, [sp, #0x8]
  3e871a: 9b01         	ldr	r3, [sp, #0x4]
  3e871c: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e8720: 4618         	mov	r0, r3
  3e8722: f1b1 fcdd    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1b19ba
  3e8726: 4603         	mov	r3, r0
  3e8728: 429c         	cmp	r4, r3
  3e872a: bf2c         	ite	hs
  3e872c: 2300         	movhs	r3, #0x0
  3e872e: 2301         	movlo	r3, #0x1
  3e8730: b2db         	uxtb	r3, r3
  3e8732: 2b00         	cmp	r3, #0x0
  3e8734: d1dc         	bne	0x3e86f0 <SoldierHostController::removeAllModifiers()+0xc> @ imm = #-0x48
  3e8736: 9b01         	ldr	r3, [sp, #0x4]
  3e8738: f8d3 31e8    	ldr.w	r3, [r3, #0x1e8]
  3e873c: 4618         	mov	r0, r3
  3e873e: f1b1 fe11    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x1b1c22
  3e8742: b004         	add	sp, #0x10
  3e8744: bd10         	pop	{r4, pc}

// ==== SoldierHostController::removePrimaryWeapon
//      file offset 0x3e8748 (= ELF address; Ghidra 0x3f8748), 668 bytes, Thumb-2
  3e8748: b530         	push	{r4, r5, lr}
  3e874a: ed2d 8b04    	vpush	{d8, d9}
  3e874e: b089         	sub	sp, #0x24
  3e8750: 9005         	str	r0, [sp, #0x14]
  3e8752: 9b05         	ldr	r3, [sp, #0x14]
  3e8754: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8758: 2b00         	cmp	r3, #0x0
  3e875a: f000 8136    	beq.w	0x3e89ca <SoldierHostController::removePrimaryWeapon()+0x282> @ imm = #0x26c
  3e875e: 9b05         	ldr	r3, [sp, #0x14]
  3e8760: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8764: 681b         	ldr	r3, [r3]
  3e8766: f503 73f8    	add.w	r3, r3, #0x1f0
  3e876a: 681c         	ldr	r4, [r3]
  3e876c: 9b05         	ldr	r3, [sp, #0x14]
  3e876e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8772: 461d         	mov	r5, r3
  3e8774: ab06         	add	r3, sp, #0x18
  3e8776: 4618         	mov	r0, r3
  3e8778: f3a1 fe3c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a1c78
  3e877c: aa07         	add	r2, sp, #0x1c
  3e877e: ab06         	add	r3, sp, #0x18
  3e8780: 4610         	mov	r0, r2
  3e8782: 4a96         	ldr	r2, [pc, #0x258]        @ 0x3e89dc <SoldierHostController::removePrimaryWeapon()+0x294>
  3e8784: 447a         	add	r2, pc
  3e8786: 4611         	mov	r1, r2
  3e8788: 461a         	mov	r2, r3
  3e878a: f3ce f969    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ce2d2
  3e878e: ab07         	add	r3, sp, #0x1c
  3e8790: 4628         	mov	r0, r5
  3e8792: 4619         	mov	r1, r3
  3e8794: 47a0         	blx	r4
  3e8796: ab07         	add	r3, sp, #0x1c
  3e8798: 4618         	mov	r0, r3
  3e879a: f3cd f8bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd176
  3e879e: ab06         	add	r3, sp, #0x18
  3e87a0: 4618         	mov	r0, r3
  3e87a2: f3a1 fe2b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a1c56
  3e87a6: 9b05         	ldr	r3, [sp, #0x14]
  3e87a8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e87ac: 681b         	ldr	r3, [r3]
  3e87ae: f503 730f    	add.w	r3, r3, #0x23c
  3e87b2: 681b         	ldr	r3, [r3]
  3e87b4: 9a05         	ldr	r2, [sp, #0x14]
  3e87b6: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e87ba: 4610         	mov	r0, r2
  3e87bc: 2100         	movs	r1, #0x0
  3e87be: 4798         	blx	r3
  3e87c0: 9b05         	ldr	r3, [sp, #0x14]
  3e87c2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e87c6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e87ca: 681b         	ldr	r3, [r3]
  3e87cc: 33f4         	adds	r3, #0xf4
  3e87ce: 681b         	ldr	r3, [r3]
  3e87d0: 9a05         	ldr	r2, [sp, #0x14]
  3e87d2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e87d6: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e87da: 9a05         	ldr	r2, [sp, #0x14]
  3e87dc: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e87e0: 4608         	mov	r0, r1
  3e87e2: 4611         	mov	r1, r2
  3e87e4: 2200         	movs	r2, #0x0
  3e87e6: 4798         	blx	r3
  3e87e8: 9b05         	ldr	r3, [sp, #0x14]
  3e87ea: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e87ee: 681b         	ldr	r3, [r3]
  3e87f0: f503 7300    	add.w	r3, r3, #0x200
  3e87f4: 681c         	ldr	r4, [r3]
  3e87f6: 9b05         	ldr	r3, [sp, #0x14]
  3e87f8: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3e87fc: 9b05         	ldr	r3, [sp, #0x14]
  3e87fe: 681b         	ldr	r3, [r3]
  3e8800: f503 73e0    	add.w	r3, r3, #0x1c0
  3e8804: 681b         	ldr	r3, [r3]
  3e8806: 9a05         	ldr	r2, [sp, #0x14]
  3e8808: a907         	add	r1, sp, #0x1c
  3e880a: 4608         	mov	r0, r1
  3e880c: 4611         	mov	r1, r2
  3e880e: 4798         	blx	r3
  3e8810: ab07         	add	r3, sp, #0x1c
  3e8812: 4628         	mov	r0, r5
  3e8814: 4619         	mov	r1, r3
  3e8816: 47a0         	blx	r4
  3e8818: ab07         	add	r3, sp, #0x1c
  3e881a: 4618         	mov	r0, r3
  3e881c: f3cd f87a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cd0f4
  3e8820: 9b05         	ldr	r3, [sp, #0x14]
  3e8822: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8826: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e882a: 9b05         	ldr	r3, [sp, #0x14]
  3e882c: 681b         	ldr	r3, [r3]
  3e882e: 3350         	adds	r3, #0x50
  3e8830: 681b         	ldr	r3, [r3]
  3e8832: 9a05         	ldr	r2, [sp, #0x14]
  3e8834: 4610         	mov	r0, r2
  3e8836: 4798         	blx	r3
  3e8838: 4603         	mov	r3, r0
  3e883a: edd3 7a00    	vldr	s15, [r3]
  3e883e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e8842: 9b05         	ldr	r3, [sp, #0x14]
  3e8844: 681b         	ldr	r3, [r3]
  3e8846: 3350         	adds	r3, #0x50
  3e8848: 681b         	ldr	r3, [r3]
  3e884a: 9a05         	ldr	r2, [sp, #0x14]
  3e884c: 4610         	mov	r0, r2
  3e884e: 4798         	blx	r3
  3e8850: 4603         	mov	r3, r0
  3e8852: edd3 7a01    	vldr	s15, [r3, #4]
  3e8856: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e885a: 466b         	mov	r3, sp
  3e885c: 4618         	mov	r0, r3
  3e885e: eeb0 0b48    	vmov.f64	d0, d8
  3e8862: eeb0 1b47    	vmov.f64	d1, d7
  3e8866: f7fc f9a7    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x3cb2
  3e886a: 3428         	adds	r4, #0x28
  3e886c: 466b         	mov	r3, sp
  3e886e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e8870: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8874: 9b05         	ldr	r3, [sp, #0x14]
  3e8876: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e887a: 681b         	ldr	r3, [r3]
  3e887c: 334c         	adds	r3, #0x4c
  3e887e: 681c         	ldr	r4, [r3]
  3e8880: 9b05         	ldr	r3, [sp, #0x14]
  3e8882: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8886: 461d         	mov	r5, r3
  3e8888: 9b05         	ldr	r3, [sp, #0x14]
  3e888a: 681b         	ldr	r3, [r3]
  3e888c: 3350         	adds	r3, #0x50
  3e888e: 681b         	ldr	r3, [r3]
  3e8890: 9a05         	ldr	r2, [sp, #0x14]
  3e8892: 4610         	mov	r0, r2
  3e8894: 4798         	blx	r3
  3e8896: 4603         	mov	r3, r0
  3e8898: 4628         	mov	r0, r5
  3e889a: 4619         	mov	r1, r3
  3e889c: 47a0         	blx	r4
  3e889e: 9b05         	ldr	r3, [sp, #0x14]
  3e88a0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e88a4: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e88a8: 9b05         	ldr	r3, [sp, #0x14]
  3e88aa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e88ae: ed93 8b0e    	vldr	d8, [r3, #56]
  3e88b2: f7fc f8fb    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x3e0a
  3e88b6: 4603         	mov	r3, r0
  3e88b8: ee07 3a90    	vmov	s15, r3
  3e88bc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e88c0: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e89d4 <SoldierHostController::removePrimaryWeapon()+0x28c>
  3e88c4: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e88c8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e88cc: ee37 7a67    	vsub.f32	s14, s14, s15
  3e88d0: eddf 7a41    	vldr	s15, [pc, #260]         @ 0x3e89d8 <SoldierHostController::removePrimaryWeapon()+0x290>
  3e88d4: ee67 7a27    	vmul.f32	s15, s14, s15
  3e88d8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e88dc: ee38 8b07    	vadd.f64	d8, d8, d7
  3e88e0: 9b05         	ldr	r3, [sp, #0x14]
  3e88e2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e88e6: ed93 9b10    	vldr	d9, [r3, #64]
  3e88ea: f7fc f8df    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x3e42
  3e88ee: 4603         	mov	r3, r0
  3e88f0: ee07 3a90    	vmov	s15, r3
  3e88f4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e88f8: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e89d4 <SoldierHostController::removePrimaryWeapon()+0x28c>
  3e88fc: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8900: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8904: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8908: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x3e89d8 <SoldierHostController::removePrimaryWeapon()+0x290>
  3e890c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8910: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8914: ee39 7b07    	vadd.f64	d7, d9, d7
  3e8918: 466b         	mov	r3, sp
  3e891a: 4618         	mov	r0, r3
  3e891c: eeb0 0b48    	vmov.f64	d0, d8
  3e8920: eeb0 1b47    	vmov.f64	d1, d7
  3e8924: f7fc f948    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x3d70
  3e8928: 3438         	adds	r4, #0x38
  3e892a: 466b         	mov	r3, sp
  3e892c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e892e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8932: 9b05         	ldr	r3, [sp, #0x14]
  3e8934: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8938: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e893c: 9b05         	ldr	r3, [sp, #0x14]
  3e893e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8942: ed93 8b18    	vldr	d8, [r3, #96]
  3e8946: f7fc f8b1    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x3e9e
  3e894a: 4603         	mov	r3, r0
  3e894c: ee07 3a90    	vmov	s15, r3
  3e8950: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8954: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e89d4 <SoldierHostController::removePrimaryWeapon()+0x28c>
  3e8958: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e895c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8960: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8964: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3e8968: ee67 7a27    	vmul.f32	s15, s14, s15
  3e896c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8970: ee38 7b07    	vadd.f64	d7, d8, d7
  3e8974: ed84 7b18    	vstr	d7, [r4, #96]
  3e8978: f1f7 fe9a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f7d34
  3e897c: 4602         	mov	r2, r0
  3e897e: 9b05         	ldr	r3, [sp, #0x14]
  3e8980: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8984: 4610         	mov	r0, r2
  3e8986: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3e89e0 <SoldierHostController::removePrimaryWeapon()+0x298>
  3e8988: 447a         	add	r2, pc
  3e898a: 4611         	mov	r1, r2
  3e898c: 461a         	mov	r2, r3
  3e898e: f1f8 f8cd    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f819a
  3e8992: 9b05         	ldr	r3, [sp, #0x14]
  3e8994: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e8998: 4618         	mov	r0, r3
  3e899a: f1af fa8d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1af51a
  3e899e: 9b05         	ldr	r3, [sp, #0x14]
  3e89a0: 2200         	movs	r2, #0x0
  3e89a2: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e89a6: e010         	b	0x3e89ca <SoldierHostController::removePrimaryWeapon()+0x282> @ imm = #0x20
  3e89a8: ab07         	add	r3, sp, #0x1c
  3e89aa: 4618         	mov	r0, r3
  3e89ac: f3cc ffb2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ccf64
  3e89b0: e7ff         	b	0x3e89b2 <SoldierHostController::removePrimaryWeapon()+0x26a> @ imm = #-0x2
  3e89b2: ab06         	add	r3, sp, #0x18
  3e89b4: 4618         	mov	r0, r3
  3e89b6: f3a1 fd21    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a1a42
  3e89ba: f39f fb77    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f6ee
  3e89be: ab07         	add	r3, sp, #0x1c
  3e89c0: 4618         	mov	r0, r3
  3e89c2: f3cc ffa7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ccf4e
  3e89c6: f39f fb71    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f6e2
  3e89ca: b009         	add	sp, #0x24
  3e89cc: ecbd 8b04    	vpop	{d8, d9}
  3e89d0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e89d1); words below are literal-pool data ---
  3e89d2: bf00         	nop
  3e89d4: 0000         	movs	r0, r0
  3e89d6: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e8bd8 <SoldierHostController::removeSecondaryWeapon()+0x1f4>
  3e89d8: 0000         	movs	r0, r0
  3e89da: 4248         	rsbs	r0, r1, #0
  3e89dc: fc48 003e    	mcrr2	p0, #0x3, r0, r8, c14
  3e89e0: fa78 003e    	<unknown>

// ==== SoldierHostController::removeSecondaryWeapon
//      file offset 0x3e89e4 (= ELF address; Ghidra 0x3f89e4), 664 bytes, Thumb-2
  3e89e4: b530         	push	{r4, r5, lr}
  3e89e6: ed2d 8b04    	vpush	{d8, d9}
  3e89ea: b089         	sub	sp, #0x24
  3e89ec: 9005         	str	r0, [sp, #0x14]
  3e89ee: 9b05         	ldr	r3, [sp, #0x14]
  3e89f0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e89f4: 2b00         	cmp	r3, #0x0
  3e89f6: f000 8136    	beq.w	0x3e8c66 <SoldierHostController::removeSecondaryWeapon()+0x282> @ imm = #0x26c
  3e89fa: 9b05         	ldr	r3, [sp, #0x14]
  3e89fc: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8a00: 681b         	ldr	r3, [r3]
  3e8a02: f503 73f8    	add.w	r3, r3, #0x1f0
  3e8a06: 681c         	ldr	r4, [r3]
  3e8a08: 9b05         	ldr	r3, [sp, #0x14]
  3e8a0a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8a0e: 461d         	mov	r5, r3
  3e8a10: ab06         	add	r3, sp, #0x18
  3e8a12: 4618         	mov	r0, r3
  3e8a14: f3a1 fcee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a19dc
  3e8a18: aa07         	add	r2, sp, #0x1c
  3e8a1a: ab06         	add	r3, sp, #0x18
  3e8a1c: 4610         	mov	r0, r2
  3e8a1e: 4a95         	ldr	r2, [pc, #0x254]        @ 0x3e8c74 <SoldierHostController::removeSecondaryWeapon()+0x290>
  3e8a20: 447a         	add	r2, pc
  3e8a22: 4611         	mov	r1, r2
  3e8a24: 461a         	mov	r2, r3
  3e8a26: f3ce f81b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ce036
  3e8a2a: ab07         	add	r3, sp, #0x1c
  3e8a2c: 4628         	mov	r0, r5
  3e8a2e: 4619         	mov	r1, r3
  3e8a30: 47a0         	blx	r4
  3e8a32: ab07         	add	r3, sp, #0x1c
  3e8a34: 4618         	mov	r0, r3
  3e8a36: f3cc ff6d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cceda
  3e8a3a: ab06         	add	r3, sp, #0x18
  3e8a3c: 4618         	mov	r0, r3
  3e8a3e: f3a1 fcdd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a19ba
  3e8a42: 9b05         	ldr	r3, [sp, #0x14]
  3e8a44: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8a48: 681b         	ldr	r3, [r3]
  3e8a4a: f503 730f    	add.w	r3, r3, #0x23c
  3e8a4e: 681b         	ldr	r3, [r3]
  3e8a50: 9a05         	ldr	r2, [sp, #0x14]
  3e8a52: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e8a56: 4610         	mov	r0, r2
  3e8a58: 2100         	movs	r1, #0x0
  3e8a5a: 4798         	blx	r3
  3e8a5c: 9b05         	ldr	r3, [sp, #0x14]
  3e8a5e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8a62: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e8a66: 681b         	ldr	r3, [r3]
  3e8a68: 33f4         	adds	r3, #0xf4
  3e8a6a: 681b         	ldr	r3, [r3]
  3e8a6c: 9a05         	ldr	r2, [sp, #0x14]
  3e8a6e: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e8a72: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e8a76: 9a05         	ldr	r2, [sp, #0x14]
  3e8a78: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e8a7c: 4608         	mov	r0, r1
  3e8a7e: 4611         	mov	r1, r2
  3e8a80: 2200         	movs	r2, #0x0
  3e8a82: 4798         	blx	r3
  3e8a84: 9b05         	ldr	r3, [sp, #0x14]
  3e8a86: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8a8a: 681b         	ldr	r3, [r3]
  3e8a8c: f503 7300    	add.w	r3, r3, #0x200
  3e8a90: 681c         	ldr	r4, [r3]
  3e8a92: 9b05         	ldr	r3, [sp, #0x14]
  3e8a94: f8d3 514c    	ldr.w	r5, [r3, #0x14c]
  3e8a98: 9b05         	ldr	r3, [sp, #0x14]
  3e8a9a: 681b         	ldr	r3, [r3]
  3e8a9c: f503 73e0    	add.w	r3, r3, #0x1c0
  3e8aa0: 681b         	ldr	r3, [r3]
  3e8aa2: 9a05         	ldr	r2, [sp, #0x14]
  3e8aa4: a907         	add	r1, sp, #0x1c
  3e8aa6: 4608         	mov	r0, r1
  3e8aa8: 4611         	mov	r1, r2
  3e8aaa: 4798         	blx	r3
  3e8aac: ab07         	add	r3, sp, #0x1c
  3e8aae: 4628         	mov	r0, r5
  3e8ab0: 4619         	mov	r1, r3
  3e8ab2: 47a0         	blx	r4
  3e8ab4: ab07         	add	r3, sp, #0x1c
  3e8ab6: 4618         	mov	r0, r3
  3e8ab8: f3cc ff2c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cce58
  3e8abc: 9b05         	ldr	r3, [sp, #0x14]
  3e8abe: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8ac2: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8ac6: 9b05         	ldr	r3, [sp, #0x14]
  3e8ac8: 681b         	ldr	r3, [r3]
  3e8aca: 3350         	adds	r3, #0x50
  3e8acc: 681b         	ldr	r3, [r3]
  3e8ace: 9a05         	ldr	r2, [sp, #0x14]
  3e8ad0: 4610         	mov	r0, r2
  3e8ad2: 4798         	blx	r3
  3e8ad4: 4603         	mov	r3, r0
  3e8ad6: edd3 7a00    	vldr	s15, [r3]
  3e8ada: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e8ade: 9b05         	ldr	r3, [sp, #0x14]
  3e8ae0: 681b         	ldr	r3, [r3]
  3e8ae2: 3350         	adds	r3, #0x50
  3e8ae4: 681b         	ldr	r3, [r3]
  3e8ae6: 9a05         	ldr	r2, [sp, #0x14]
  3e8ae8: 4610         	mov	r0, r2
  3e8aea: 4798         	blx	r3
  3e8aec: 4603         	mov	r3, r0
  3e8aee: edd3 7a01    	vldr	s15, [r3, #4]
  3e8af2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8af6: 466b         	mov	r3, sp
  3e8af8: 4618         	mov	r0, r3
  3e8afa: eeb0 0b48    	vmov.f64	d0, d8
  3e8afe: eeb0 1b47    	vmov.f64	d1, d7
  3e8b02: f7fc f859    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x3f4e
  3e8b06: 3428         	adds	r4, #0x28
  3e8b08: 466b         	mov	r3, sp
  3e8b0a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e8b0c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8b10: 9b05         	ldr	r3, [sp, #0x14]
  3e8b12: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8b16: 681b         	ldr	r3, [r3]
  3e8b18: 334c         	adds	r3, #0x4c
  3e8b1a: 681c         	ldr	r4, [r3]
  3e8b1c: 9b05         	ldr	r3, [sp, #0x14]
  3e8b1e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8b22: 461d         	mov	r5, r3
  3e8b24: 9b05         	ldr	r3, [sp, #0x14]
  3e8b26: 681b         	ldr	r3, [r3]
  3e8b28: 3350         	adds	r3, #0x50
  3e8b2a: 681b         	ldr	r3, [r3]
  3e8b2c: 9a05         	ldr	r2, [sp, #0x14]
  3e8b2e: 4610         	mov	r0, r2
  3e8b30: 4798         	blx	r3
  3e8b32: 4603         	mov	r3, r0
  3e8b34: 4628         	mov	r0, r5
  3e8b36: 4619         	mov	r1, r3
  3e8b38: 47a0         	blx	r4
  3e8b3a: 9b05         	ldr	r3, [sp, #0x14]
  3e8b3c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8b40: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8b44: 9b05         	ldr	r3, [sp, #0x14]
  3e8b46: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8b4a: ed93 8b0e    	vldr	d8, [r3, #56]
  3e8b4e: f7fb ffad    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x40a6
  3e8b52: 4603         	mov	r3, r0
  3e8b54: ee07 3a90    	vmov	s15, r3
  3e8b58: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8b5c: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e8c70 <SoldierHostController::removeSecondaryWeapon()+0x28c>
  3e8b60: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8b64: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8b68: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8b6c: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e8b70: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8b74: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8b78: ee38 8b07    	vadd.f64	d8, d8, d7
  3e8b7c: 9b05         	ldr	r3, [sp, #0x14]
  3e8b7e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8b82: ed93 9b10    	vldr	d9, [r3, #64]
  3e8b86: f7fb ff91    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x40de
  3e8b8a: 4603         	mov	r3, r0
  3e8b8c: ee07 3a90    	vmov	s15, r3
  3e8b90: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8b94: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e8c70 <SoldierHostController::removeSecondaryWeapon()+0x28c>
  3e8b98: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8b9c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8ba0: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8ba4: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e8ba8: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8bac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8bb0: ee39 7b07    	vadd.f64	d7, d9, d7
  3e8bb4: 466b         	mov	r3, sp
  3e8bb6: 4618         	mov	r0, r3
  3e8bb8: eeb0 0b48    	vmov.f64	d0, d8
  3e8bbc: eeb0 1b47    	vmov.f64	d1, d7
  3e8bc0: f7fb fffa    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x400c
  3e8bc4: 3438         	adds	r4, #0x38
  3e8bc6: 466b         	mov	r3, sp
  3e8bc8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e8bca: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8bce: 9b05         	ldr	r3, [sp, #0x14]
  3e8bd0: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8bd4: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8bd8: 9b05         	ldr	r3, [sp, #0x14]
  3e8bda: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8bde: ed93 8b18    	vldr	d8, [r3, #96]
  3e8be2: f7fb ff63    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x413a
  3e8be6: 4603         	mov	r3, r0
  3e8be8: ee07 3a90    	vmov	s15, r3
  3e8bec: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8bf0: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e8c70 <SoldierHostController::removeSecondaryWeapon()+0x28c>
  3e8bf4: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8bf8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8bfc: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8c00: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e8c04: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8c08: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8c0c: ee38 7b07    	vadd.f64	d7, d8, d7
  3e8c10: ed84 7b18    	vstr	d7, [r4, #96]
  3e8c14: f1f7 fd4c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f7a98
  3e8c18: 4602         	mov	r2, r0
  3e8c1a: 9b05         	ldr	r3, [sp, #0x14]
  3e8c1c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8c20: 4610         	mov	r0, r2
  3e8c22: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3e8c78 <SoldierHostController::removeSecondaryWeapon()+0x294>
  3e8c24: 447a         	add	r2, pc
  3e8c26: 4611         	mov	r1, r2
  3e8c28: 461a         	mov	r2, r3
  3e8c2a: f1f7 ff7f    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f7efe
  3e8c2e: 9b05         	ldr	r3, [sp, #0x14]
  3e8c30: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e8c34: 4618         	mov	r0, r3
  3e8c36: f1af f93f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1af27e
  3e8c3a: 9b05         	ldr	r3, [sp, #0x14]
  3e8c3c: 2200         	movs	r2, #0x0
  3e8c3e: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e8c42: e010         	b	0x3e8c66 <SoldierHostController::removeSecondaryWeapon()+0x282> @ imm = #0x20
  3e8c44: ab07         	add	r3, sp, #0x1c
  3e8c46: 4618         	mov	r0, r3
  3e8c48: f3cc fe64    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cccc8
  3e8c4c: e7ff         	b	0x3e8c4e <SoldierHostController::removeSecondaryWeapon()+0x26a> @ imm = #-0x2
  3e8c4e: ab06         	add	r3, sp, #0x18
  3e8c50: 4618         	mov	r0, r3
  3e8c52: f3a1 fbd3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a17a6
  3e8c56: f39f fa29    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f452
  3e8c5a: ab07         	add	r3, sp, #0x1c
  3e8c5c: 4618         	mov	r0, r3
  3e8c5e: f3cc fe59    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cccb2
  3e8c62: f39f fa23    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f446
  3e8c66: b009         	add	sp, #0x24
  3e8c68: ecbd 8b04    	vpop	{d8, d9}
  3e8c6c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e8c6d); words below are literal-pool data ---
  3e8c6e: bf00         	nop
  3e8c70: 0000         	movs	r0, r0
  3e8c72: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e8e74 <SoldierHostController::removeDualWeapon()+0x1f8>
  3e8c74: f9ac 003e    	<unknown>
  3e8c78: f7dc 003e    	<unknown>

// ==== SoldierHostController::removeDualWeapon
//      file offset 0x3e8c7c (= ELF address; Ghidra 0x3f8c7c), 724 bytes, Thumb-2
  3e8c7c: b530         	push	{r4, r5, lr}
  3e8c7e: ed2d 8b04    	vpush	{d8, d9}
  3e8c82: b089         	sub	sp, #0x24
  3e8c84: 9005         	str	r0, [sp, #0x14]
  3e8c86: 9b05         	ldr	r3, [sp, #0x14]
  3e8c88: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8c8c: 2b00         	cmp	r3, #0x0
  3e8c8e: f000 8152    	beq.w	0x3e8f36 <SoldierHostController::removeDualWeapon()+0x2ba> @ imm = #0x2a4
  3e8c92: 9b05         	ldr	r3, [sp, #0x14]
  3e8c94: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8c98: 681b         	ldr	r3, [r3]
  3e8c9a: f503 73f8    	add.w	r3, r3, #0x1f0
  3e8c9e: 681c         	ldr	r4, [r3]
  3e8ca0: 9b05         	ldr	r3, [sp, #0x14]
  3e8ca2: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8ca6: 461d         	mov	r5, r3
  3e8ca8: ab06         	add	r3, sp, #0x18
  3e8caa: 4618         	mov	r0, r3
  3e8cac: f3a1 fba2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a1744
  3e8cb0: aa07         	add	r2, sp, #0x1c
  3e8cb2: ab06         	add	r3, sp, #0x18
  3e8cb4: 4610         	mov	r0, r2
  3e8cb6: 4aa4         	ldr	r2, [pc, #0x290]        @ 0x3e8f48 <SoldierHostController::removeDualWeapon()+0x2cc>
  3e8cb8: 447a         	add	r2, pc
  3e8cba: 4611         	mov	r1, r2
  3e8cbc: 461a         	mov	r2, r3
  3e8cbe: f3cd fecf    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3cdd9e
  3e8cc2: ab07         	add	r3, sp, #0x1c
  3e8cc4: 4628         	mov	r0, r5
  3e8cc6: 4619         	mov	r1, r3
  3e8cc8: 47a0         	blx	r4
  3e8cca: ab07         	add	r3, sp, #0x1c
  3e8ccc: 4618         	mov	r0, r3
  3e8cce: f3cc fe21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ccc42
  3e8cd2: ab06         	add	r3, sp, #0x18
  3e8cd4: 4618         	mov	r0, r3
  3e8cd6: f3a1 fb91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a1722
  3e8cda: 9b05         	ldr	r3, [sp, #0x14]
  3e8cdc: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8ce0: 681b         	ldr	r3, [r3]
  3e8ce2: f503 730f    	add.w	r3, r3, #0x23c
  3e8ce6: 681b         	ldr	r3, [r3]
  3e8ce8: 9a05         	ldr	r2, [sp, #0x14]
  3e8cea: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e8cee: 4610         	mov	r0, r2
  3e8cf0: 2100         	movs	r1, #0x0
  3e8cf2: 4798         	blx	r3
  3e8cf4: 9b05         	ldr	r3, [sp, #0x14]
  3e8cf6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8cfa: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e8cfe: 2b00         	cmp	r3, #0x0
  3e8d00: d014         	beq	0x3e8d2c <SoldierHostController::removeDualWeapon()+0xb0> @ imm = #0x28
  3e8d02: 9b05         	ldr	r3, [sp, #0x14]
  3e8d04: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8d08: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e8d0c: 681b         	ldr	r3, [r3]
  3e8d0e: 33f4         	adds	r3, #0xf4
  3e8d10: 681b         	ldr	r3, [r3]
  3e8d12: 9a05         	ldr	r2, [sp, #0x14]
  3e8d14: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e8d18: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e8d1c: 9a05         	ldr	r2, [sp, #0x14]
  3e8d1e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e8d22: 4608         	mov	r0, r1
  3e8d24: 4611         	mov	r1, r2
  3e8d26: 2200         	movs	r2, #0x0
  3e8d28: 4798         	blx	r3
  3e8d2a: e013         	b	0x3e8d54 <SoldierHostController::removeDualWeapon()+0xd8> @ imm = #0x26
  3e8d2c: 9b05         	ldr	r3, [sp, #0x14]
  3e8d2e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8d32: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e8d36: 681b         	ldr	r3, [r3]
  3e8d38: 33f4         	adds	r3, #0xf4
  3e8d3a: 681b         	ldr	r3, [r3]
  3e8d3c: 9a05         	ldr	r2, [sp, #0x14]
  3e8d3e: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e8d42: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e8d46: 9a05         	ldr	r2, [sp, #0x14]
  3e8d48: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e8d4c: 4608         	mov	r0, r1
  3e8d4e: 4611         	mov	r1, r2
  3e8d50: 2200         	movs	r2, #0x0
  3e8d52: 4798         	blx	r3
  3e8d54: 9b05         	ldr	r3, [sp, #0x14]
  3e8d56: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8d5a: 681b         	ldr	r3, [r3]
  3e8d5c: f503 7300    	add.w	r3, r3, #0x200
  3e8d60: 681c         	ldr	r4, [r3]
  3e8d62: 9b05         	ldr	r3, [sp, #0x14]
  3e8d64: f8d3 5150    	ldr.w	r5, [r3, #0x150]
  3e8d68: 9b05         	ldr	r3, [sp, #0x14]
  3e8d6a: 681b         	ldr	r3, [r3]
  3e8d6c: f503 73e0    	add.w	r3, r3, #0x1c0
  3e8d70: 681b         	ldr	r3, [r3]
  3e8d72: 9a05         	ldr	r2, [sp, #0x14]
  3e8d74: a907         	add	r1, sp, #0x1c
  3e8d76: 4608         	mov	r0, r1
  3e8d78: 4611         	mov	r1, r2
  3e8d7a: 4798         	blx	r3
  3e8d7c: ab07         	add	r3, sp, #0x1c
  3e8d7e: 4628         	mov	r0, r5
  3e8d80: 4619         	mov	r1, r3
  3e8d82: 47a0         	blx	r4
  3e8d84: ab07         	add	r3, sp, #0x1c
  3e8d86: 4618         	mov	r0, r3
  3e8d88: f3cc fdc4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ccb88
  3e8d8c: 9b05         	ldr	r3, [sp, #0x14]
  3e8d8e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8d92: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8d96: 9b05         	ldr	r3, [sp, #0x14]
  3e8d98: 681b         	ldr	r3, [r3]
  3e8d9a: 3350         	adds	r3, #0x50
  3e8d9c: 681b         	ldr	r3, [r3]
  3e8d9e: 9a05         	ldr	r2, [sp, #0x14]
  3e8da0: 4610         	mov	r0, r2
  3e8da2: 4798         	blx	r3
  3e8da4: 4603         	mov	r3, r0
  3e8da6: edd3 7a00    	vldr	s15, [r3]
  3e8daa: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e8dae: 9b05         	ldr	r3, [sp, #0x14]
  3e8db0: 681b         	ldr	r3, [r3]
  3e8db2: 3350         	adds	r3, #0x50
  3e8db4: 681b         	ldr	r3, [r3]
  3e8db6: 9a05         	ldr	r2, [sp, #0x14]
  3e8db8: 4610         	mov	r0, r2
  3e8dba: 4798         	blx	r3
  3e8dbc: 4603         	mov	r3, r0
  3e8dbe: edd3 7a01    	vldr	s15, [r3, #4]
  3e8dc2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8dc6: 466b         	mov	r3, sp
  3e8dc8: 4618         	mov	r0, r3
  3e8dca: eeb0 0b48    	vmov.f64	d0, d8
  3e8dce: eeb0 1b47    	vmov.f64	d1, d7
  3e8dd2: f7fb fef1    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x421e
  3e8dd6: 3428         	adds	r4, #0x28
  3e8dd8: 466b         	mov	r3, sp
  3e8dda: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e8ddc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8de0: 9b05         	ldr	r3, [sp, #0x14]
  3e8de2: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8de6: 681b         	ldr	r3, [r3]
  3e8de8: 334c         	adds	r3, #0x4c
  3e8dea: 681c         	ldr	r4, [r3]
  3e8dec: 9b05         	ldr	r3, [sp, #0x14]
  3e8dee: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8df2: 461d         	mov	r5, r3
  3e8df4: 9b05         	ldr	r3, [sp, #0x14]
  3e8df6: 681b         	ldr	r3, [r3]
  3e8df8: 3350         	adds	r3, #0x50
  3e8dfa: 681b         	ldr	r3, [r3]
  3e8dfc: 9a05         	ldr	r2, [sp, #0x14]
  3e8dfe: 4610         	mov	r0, r2
  3e8e00: 4798         	blx	r3
  3e8e02: 4603         	mov	r3, r0
  3e8e04: 4628         	mov	r0, r5
  3e8e06: 4619         	mov	r1, r3
  3e8e08: 47a0         	blx	r4
  3e8e0a: 9b05         	ldr	r3, [sp, #0x14]
  3e8e0c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8e10: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8e14: 9b05         	ldr	r3, [sp, #0x14]
  3e8e16: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8e1a: ed93 8b0e    	vldr	d8, [r3, #56]
  3e8e1e: f7fb fe45    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x4376
  3e8e22: 4603         	mov	r3, r0
  3e8e24: ee07 3a90    	vmov	s15, r3
  3e8e28: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8e2c: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e8f40 <SoldierHostController::removeDualWeapon()+0x2c4>
  3e8e30: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8e34: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8e38: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8e3c: eddf 7a41    	vldr	s15, [pc, #260]         @ 0x3e8f44 <SoldierHostController::removeDualWeapon()+0x2c8>
  3e8e40: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8e44: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8e48: ee38 8b07    	vadd.f64	d8, d8, d7
  3e8e4c: 9b05         	ldr	r3, [sp, #0x14]
  3e8e4e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8e52: ed93 9b10    	vldr	d9, [r3, #64]
  3e8e56: f7fb fe29    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x43ae
  3e8e5a: 4603         	mov	r3, r0
  3e8e5c: ee07 3a90    	vmov	s15, r3
  3e8e60: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8e64: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e8f40 <SoldierHostController::removeDualWeapon()+0x2c4>
  3e8e68: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8e6c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8e70: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8e74: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x3e8f44 <SoldierHostController::removeDualWeapon()+0x2c8>
  3e8e78: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8e7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8e80: ee39 7b07    	vadd.f64	d7, d9, d7
  3e8e84: 466b         	mov	r3, sp
  3e8e86: 4618         	mov	r0, r3
  3e8e88: eeb0 0b48    	vmov.f64	d0, d8
  3e8e8c: eeb0 1b47    	vmov.f64	d1, d7
  3e8e90: f7fb fe92    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x42dc
  3e8e94: 3438         	adds	r4, #0x38
  3e8e96: 466b         	mov	r3, sp
  3e8e98: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e8e9a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e8e9e: 9b05         	ldr	r3, [sp, #0x14]
  3e8ea0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8ea4: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e8ea8: 9b05         	ldr	r3, [sp, #0x14]
  3e8eaa: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e8eae: ed93 8b18    	vldr	d8, [r3, #96]
  3e8eb2: f7fb fdfb    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x440a
  3e8eb6: 4603         	mov	r3, r0
  3e8eb8: ee07 3a90    	vmov	s15, r3
  3e8ebc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e8ec0: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e8f40 <SoldierHostController::removeDualWeapon()+0x2c4>
  3e8ec4: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e8ec8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e8ecc: ee37 7a67    	vsub.f32	s14, s14, s15
  3e8ed0: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3e8ed4: ee67 7a27    	vmul.f32	s15, s14, s15
  3e8ed8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e8edc: ee38 7b07    	vadd.f64	d7, d8, d7
  3e8ee0: ed84 7b18    	vstr	d7, [r4, #96]
  3e8ee4: f1f7 fbe4    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f77c8
  3e8ee8: 4602         	mov	r2, r0
  3e8eea: 9b05         	ldr	r3, [sp, #0x14]
  3e8eec: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8ef0: 4610         	mov	r0, r2
  3e8ef2: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3e8f4c <SoldierHostController::removeDualWeapon()+0x2d0>
  3e8ef4: 447a         	add	r2, pc
  3e8ef6: 4611         	mov	r1, r2
  3e8ef8: 461a         	mov	r2, r3
  3e8efa: f1f7 fe17    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f7c2e
  3e8efe: 9b05         	ldr	r3, [sp, #0x14]
  3e8f00: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e8f04: 4618         	mov	r0, r3
  3e8f06: f1ae ffd7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1aefae
  3e8f0a: 9b05         	ldr	r3, [sp, #0x14]
  3e8f0c: 2200         	movs	r2, #0x0
  3e8f0e: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e8f12: e010         	b	0x3e8f36 <SoldierHostController::removeDualWeapon()+0x2ba> @ imm = #0x20
  3e8f14: ab07         	add	r3, sp, #0x1c
  3e8f16: 4618         	mov	r0, r3
  3e8f18: f3cc fcfc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc9f8
  3e8f1c: e7ff         	b	0x3e8f1e <SoldierHostController::removeDualWeapon()+0x2a2> @ imm = #-0x2
  3e8f1e: ab06         	add	r3, sp, #0x18
  3e8f20: 4618         	mov	r0, r3
  3e8f22: f3a1 fa6b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a14d6
  3e8f26: f39f f8c1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f182
  3e8f2a: ab07         	add	r3, sp, #0x1c
  3e8f2c: 4618         	mov	r0, r3
  3e8f2e: f3cc fcf1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc9e2
  3e8f32: f39f f8bb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39f176
  3e8f36: b009         	add	sp, #0x24
  3e8f38: ecbd 8b04    	vpop	{d8, d9}
  3e8f3c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e8f3d); words below are literal-pool data ---
  3e8f3e: bf00         	nop
  3e8f40: 0000         	movs	r0, r0
  3e8f42: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e9144 <SoldierHostController::removeSideWeapon()+0x1f4>
  3e8f44: 0000         	movs	r0, r0
  3e8f46: 4248         	rsbs	r0, r1, #0
  3e8f48: f714 003e    	<unknown>
  3e8f4c: f50c 003e    	add.w	r0, r12, #0xbe0000

// ==== SoldierHostController::removeSideWeapon
//      file offset 0x3e8f50 (= ELF address; Ghidra 0x3f8f50), 652 bytes, Thumb-2
  3e8f50: b530         	push	{r4, r5, lr}
  3e8f52: ed2d 8b04    	vpush	{d8, d9}
  3e8f56: b089         	sub	sp, #0x24
  3e8f58: 9005         	str	r0, [sp, #0x14]
  3e8f5a: 9b05         	ldr	r3, [sp, #0x14]
  3e8f5c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8f60: 2b00         	cmp	r3, #0x0
  3e8f62: f000 8130    	beq.w	0x3e91c6 <SoldierHostController::removeSideWeapon()+0x276> @ imm = #0x260
  3e8f66: 9b05         	ldr	r3, [sp, #0x14]
  3e8f68: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8f6c: 681b         	ldr	r3, [r3]
  3e8f6e: f503 73f8    	add.w	r3, r3, #0x1f0
  3e8f72: 681c         	ldr	r4, [r3]
  3e8f74: 9b05         	ldr	r3, [sp, #0x14]
  3e8f76: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8f7a: 461d         	mov	r5, r3
  3e8f7c: ab06         	add	r3, sp, #0x18
  3e8f7e: 4618         	mov	r0, r3
  3e8f80: f3a1 fa38    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a1470
  3e8f84: aa07         	add	r2, sp, #0x1c
  3e8f86: ab06         	add	r3, sp, #0x18
  3e8f88: 4610         	mov	r0, r2
  3e8f8a: 4a92         	ldr	r2, [pc, #0x248]        @ 0x3e91d4 <SoldierHostController::removeSideWeapon()+0x284>
  3e8f8c: 447a         	add	r2, pc
  3e8f8e: 4611         	mov	r1, r2
  3e8f90: 461a         	mov	r2, r3
  3e8f92: f3cd fd65    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3cdaca
  3e8f96: ab07         	add	r3, sp, #0x1c
  3e8f98: 4628         	mov	r0, r5
  3e8f9a: 4619         	mov	r1, r3
  3e8f9c: 47a0         	blx	r4
  3e8f9e: ab07         	add	r3, sp, #0x1c
  3e8fa0: 4618         	mov	r0, r3
  3e8fa2: f3cc fcb7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc96e
  3e8fa6: ab06         	add	r3, sp, #0x18
  3e8fa8: 4618         	mov	r0, r3
  3e8faa: f3a1 fa27    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a144e
  3e8fae: 9b05         	ldr	r3, [sp, #0x14]
  3e8fb0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e8fb4: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e8fb8: 681b         	ldr	r3, [r3]
  3e8fba: 33f4         	adds	r3, #0xf4
  3e8fbc: 681b         	ldr	r3, [r3]
  3e8fbe: 9a05         	ldr	r2, [sp, #0x14]
  3e8fc0: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e8fc4: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e8fc8: 9a05         	ldr	r2, [sp, #0x14]
  3e8fca: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e8fce: 4608         	mov	r0, r1
  3e8fd0: 4611         	mov	r1, r2
  3e8fd2: 2200         	movs	r2, #0x0
  3e8fd4: 4798         	blx	r3
  3e8fd6: 9b05         	ldr	r3, [sp, #0x14]
  3e8fd8: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e8fdc: 681b         	ldr	r3, [r3]
  3e8fde: f503 7300    	add.w	r3, r3, #0x200
  3e8fe2: 681c         	ldr	r4, [r3]
  3e8fe4: 9b05         	ldr	r3, [sp, #0x14]
  3e8fe6: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  3e8fea: 9b05         	ldr	r3, [sp, #0x14]
  3e8fec: 681b         	ldr	r3, [r3]
  3e8fee: f503 73e0    	add.w	r3, r3, #0x1c0
  3e8ff2: 681b         	ldr	r3, [r3]
  3e8ff4: 9a05         	ldr	r2, [sp, #0x14]
  3e8ff6: a907         	add	r1, sp, #0x1c
  3e8ff8: 4608         	mov	r0, r1
  3e8ffa: 4611         	mov	r1, r2
  3e8ffc: 4798         	blx	r3
  3e8ffe: ab07         	add	r3, sp, #0x1c
  3e9000: 4628         	mov	r0, r5
  3e9002: 4619         	mov	r1, r3
  3e9004: 47a0         	blx	r4
  3e9006: ab07         	add	r3, sp, #0x1c
  3e9008: 4618         	mov	r0, r3
  3e900a: f3cc fc83    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc906
  3e900e: 9b05         	ldr	r3, [sp, #0x14]
  3e9010: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9014: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e9018: 9b05         	ldr	r3, [sp, #0x14]
  3e901a: 681b         	ldr	r3, [r3]
  3e901c: 3350         	adds	r3, #0x50
  3e901e: 681b         	ldr	r3, [r3]
  3e9020: 9a05         	ldr	r2, [sp, #0x14]
  3e9022: 4610         	mov	r0, r2
  3e9024: 4798         	blx	r3
  3e9026: 4603         	mov	r3, r0
  3e9028: edd3 7a00    	vldr	s15, [r3]
  3e902c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e9030: 9b05         	ldr	r3, [sp, #0x14]
  3e9032: 681b         	ldr	r3, [r3]
  3e9034: 3350         	adds	r3, #0x50
  3e9036: 681b         	ldr	r3, [r3]
  3e9038: 9a05         	ldr	r2, [sp, #0x14]
  3e903a: 4610         	mov	r0, r2
  3e903c: 4798         	blx	r3
  3e903e: 4603         	mov	r3, r0
  3e9040: edd3 7a01    	vldr	s15, [r3, #4]
  3e9044: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9048: 466b         	mov	r3, sp
  3e904a: 4618         	mov	r0, r3
  3e904c: eeb0 0b48    	vmov.f64	d0, d8
  3e9050: eeb0 1b47    	vmov.f64	d1, d7
  3e9054: f7fb fdb0    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x44a0
  3e9058: 3428         	adds	r4, #0x28
  3e905a: 466b         	mov	r3, sp
  3e905c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e905e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9062: 9b05         	ldr	r3, [sp, #0x14]
  3e9064: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9068: 681b         	ldr	r3, [r3]
  3e906a: 334c         	adds	r3, #0x4c
  3e906c: 681c         	ldr	r4, [r3]
  3e906e: 9b05         	ldr	r3, [sp, #0x14]
  3e9070: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9074: 461d         	mov	r5, r3
  3e9076: 9b05         	ldr	r3, [sp, #0x14]
  3e9078: 681b         	ldr	r3, [r3]
  3e907a: 3350         	adds	r3, #0x50
  3e907c: 681b         	ldr	r3, [r3]
  3e907e: 9a05         	ldr	r2, [sp, #0x14]
  3e9080: 4610         	mov	r0, r2
  3e9082: 4798         	blx	r3
  3e9084: 4603         	mov	r3, r0
  3e9086: 4628         	mov	r0, r5
  3e9088: 4619         	mov	r1, r3
  3e908a: 47a0         	blx	r4
  3e908c: 9b05         	ldr	r3, [sp, #0x14]
  3e908e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9092: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e9096: 9b05         	ldr	r3, [sp, #0x14]
  3e9098: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e909c: ed93 8b0e    	vldr	d8, [r3, #56]
  3e90a0: f7fb fd04    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x45f8
  3e90a4: 4603         	mov	r3, r0
  3e90a6: ee07 3a90    	vmov	s15, r3
  3e90aa: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e90ae: eddf 7a48    	vldr	s15, [pc, #288]         @ 0x3e91d0 <SoldierHostController::removeSideWeapon()+0x280>
  3e90b2: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e90b6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e90ba: ee37 7a67    	vsub.f32	s14, s14, s15
  3e90be: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e90c2: ee67 7a27    	vmul.f32	s15, s14, s15
  3e90c6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e90ca: ee38 8b07    	vadd.f64	d8, d8, d7
  3e90ce: 9b05         	ldr	r3, [sp, #0x14]
  3e90d0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e90d4: ed93 9b10    	vldr	d9, [r3, #64]
  3e90d8: f7fb fce8    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x4630
  3e90dc: 4603         	mov	r3, r0
  3e90de: ee07 3a90    	vmov	s15, r3
  3e90e2: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e90e6: eddf 7a3a    	vldr	s15, [pc, #232]         @ 0x3e91d0 <SoldierHostController::removeSideWeapon()+0x280>
  3e90ea: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e90ee: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e90f2: ee37 7a67    	vsub.f32	s14, s14, s15
  3e90f6: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e90fa: ee67 7a27    	vmul.f32	s15, s14, s15
  3e90fe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9102: ee39 7b07    	vadd.f64	d7, d9, d7
  3e9106: 466b         	mov	r3, sp
  3e9108: 4618         	mov	r0, r3
  3e910a: eeb0 0b48    	vmov.f64	d0, d8
  3e910e: eeb0 1b47    	vmov.f64	d1, d7
  3e9112: f7fb fd51    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x455e
  3e9116: 3438         	adds	r4, #0x38
  3e9118: 466b         	mov	r3, sp
  3e911a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e911c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9120: 9b05         	ldr	r3, [sp, #0x14]
  3e9122: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9126: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e912a: 9b05         	ldr	r3, [sp, #0x14]
  3e912c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e9130: ed93 8b18    	vldr	d8, [r3, #96]
  3e9134: f7fb fcba    	bl	0x3e4aac <SoldierController::setAlive(bool)+0x124> @ imm = #-0x468c
  3e9138: 4603         	mov	r3, r0
  3e913a: ee07 3a90    	vmov	s15, r3
  3e913e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e9142: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x3e91d0 <SoldierHostController::removeSideWeapon()+0x280>
  3e9146: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e914a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e914e: ee37 7a67    	vsub.f32	s14, s14, s15
  3e9152: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e9156: ee67 7a27    	vmul.f32	s15, s14, s15
  3e915a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e915e: ee38 7b07    	vadd.f64	d7, d8, d7
  3e9162: ed84 7b18    	vstr	d7, [r4, #96]
  3e9166: f1f7 faa3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f7546
  3e916a: 4602         	mov	r2, r0
  3e916c: 9b05         	ldr	r3, [sp, #0x14]
  3e916e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e9172: 4610         	mov	r0, r2
  3e9174: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3e91d8 <SoldierHostController::removeSideWeapon()+0x288>
  3e9176: 447a         	add	r2, pc
  3e9178: 4611         	mov	r1, r2
  3e917a: 461a         	mov	r2, r3
  3e917c: f1f7 fcd6    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f79ac
  3e9180: 9b05         	ldr	r3, [sp, #0x14]
  3e9182: 2200         	movs	r2, #0x0
  3e9184: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e9188: 9b05         	ldr	r3, [sp, #0x14]
  3e918a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3e918e: 4618         	mov	r0, r3
  3e9190: f1b1 f8e8    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x1b11d0
  3e9194: 9b05         	ldr	r3, [sp, #0x14]
  3e9196: 681b         	ldr	r3, [r3]
  3e9198: f503 7349    	add.w	r3, r3, #0x324
  3e919c: 681b         	ldr	r3, [r3]
  3e919e: 9805         	ldr	r0, [sp, #0x14]
  3e91a0: 4798         	blx	r3
  3e91a2: e010         	b	0x3e91c6 <SoldierHostController::removeSideWeapon()+0x276> @ imm = #0x20
  3e91a4: ab07         	add	r3, sp, #0x1c
  3e91a6: 4618         	mov	r0, r3
  3e91a8: f3cc fbb4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc768
  3e91ac: e7ff         	b	0x3e91ae <SoldierHostController::removeSideWeapon()+0x25e> @ imm = #-0x2
  3e91ae: ab06         	add	r3, sp, #0x18
  3e91b0: 4618         	mov	r0, r3
  3e91b2: f3a1 f923    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a1246
  3e91b6: f39e ff79    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39eef2
  3e91ba: ab07         	add	r3, sp, #0x1c
  3e91bc: 4618         	mov	r0, r3
  3e91be: f3cc fba9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cc752
  3e91c2: f39e ff73    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39eee6
  3e91c6: b009         	add	sp, #0x24
  3e91c8: ecbd 8b04    	vpop	{d8, d9}
  3e91cc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e91cd); words below are literal-pool data ---
  3e91ce: bf00         	nop
  3e91d0: 0000         	movs	r0, r0
  3e91d2: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e93d4 <SoldierHostController::switchPrimaryToDual()+0x78>
  3e91d4: f440 003e    	orr	r0, r0, #0xbe0000
  3e91d8: f28a 003e    	<unknown>

// ==== SoldierHostController::switchWeapons
//      file offset 0x3e91dc (= ELF address; Ghidra 0x3f91dc), 384 bytes, Thumb-2
  3e91dc: b510         	push	{r4, lr}
  3e91de: b084         	sub	sp, #0x10
  3e91e0: 9001         	str	r0, [sp, #0x4]
  3e91e2: 2300         	movs	r3, #0x0
  3e91e4: 9303         	str	r3, [sp, #0xc]
  3e91e6: 9b01         	ldr	r3, [sp, #0x4]
  3e91e8: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e91ec: 2b00         	cmp	r3, #0x0
  3e91ee: f000 80b0    	beq.w	0x3e9352 <SoldierHostController::switchWeapons()+0x176> @ imm = #0x160
  3e91f2: 9b01         	ldr	r3, [sp, #0x4]
  3e91f4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e91f8: 2b00         	cmp	r3, #0x0
  3e91fa: f000 80aa    	beq.w	0x3e9352 <SoldierHostController::switchWeapons()+0x176> @ imm = #0x154
  3e91fe: 9b01         	ldr	r3, [sp, #0x4]
  3e9200: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9204: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e9208: 681b         	ldr	r3, [r3]
  3e920a: 33f4         	adds	r3, #0xf4
  3e920c: 681b         	ldr	r3, [r3]
  3e920e: 9a01         	ldr	r2, [sp, #0x4]
  3e9210: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e9214: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e9218: 9a01         	ldr	r2, [sp, #0x4]
  3e921a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e921e: 4608         	mov	r0, r1
  3e9220: 4611         	mov	r1, r2
  3e9222: 2200         	movs	r2, #0x0
  3e9224: 4798         	blx	r3
  3e9226: 9b01         	ldr	r3, [sp, #0x4]
  3e9228: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e922c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e9230: 681b         	ldr	r3, [r3]
  3e9232: 33f4         	adds	r3, #0xf4
  3e9234: 681b         	ldr	r3, [r3]
  3e9236: 9a01         	ldr	r2, [sp, #0x4]
  3e9238: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e923c: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e9240: 9a01         	ldr	r2, [sp, #0x4]
  3e9242: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e9246: 4608         	mov	r0, r1
  3e9248: 4611         	mov	r1, r2
  3e924a: 2200         	movs	r2, #0x0
  3e924c: 4798         	blx	r3
  3e924e: 9b01         	ldr	r3, [sp, #0x4]
  3e9250: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9254: 9303         	str	r3, [sp, #0xc]
  3e9256: 9b01         	ldr	r3, [sp, #0x4]
  3e9258: f8d3 214c    	ldr.w	r2, [r3, #0x14c]
  3e925c: 9b01         	ldr	r3, [sp, #0x4]
  3e925e: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e9262: 9b01         	ldr	r3, [sp, #0x4]
  3e9264: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e9268: 9b01         	ldr	r3, [sp, #0x4]
  3e926a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e926e: 681b         	ldr	r3, [r3]
  3e9270: f503 7339    	add.w	r3, r3, #0x2e4
  3e9274: 681b         	ldr	r3, [r3]
  3e9276: 9a01         	ldr	r2, [sp, #0x4]
  3e9278: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e927c: 4610         	mov	r0, r2
  3e927e: 4798         	blx	r3
  3e9280: 4603         	mov	r3, r0
  3e9282: 4620         	mov	r0, r4
  3e9284: 4619         	mov	r1, r3
  3e9286: f00a fd43    	bl	0x3f3d10 <SoldierView::setWeaponAngleOffset(float)> @ imm = #0xaa86
  3e928a: 9b01         	ldr	r3, [sp, #0x4]
  3e928c: 9a03         	ldr	r2, [sp, #0xc]
  3e928e: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e9292: 9b01         	ldr	r3, [sp, #0x4]
  3e9294: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9298: 681b         	ldr	r3, [r3]
  3e929a: f503 73ea    	add.w	r3, r3, #0x1d4
  3e929e: 681b         	ldr	r3, [r3]
  3e92a0: 9a01         	ldr	r2, [sp, #0x4]
  3e92a2: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e92a6: 4610         	mov	r0, r2
  3e92a8: 4798         	blx	r3
  3e92aa: 9b01         	ldr	r3, [sp, #0x4]
  3e92ac: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e92b0: 681b         	ldr	r3, [r3]
  3e92b2: f503 73ec    	add.w	r3, r3, #0x1d8
  3e92b6: 681b         	ldr	r3, [r3]
  3e92b8: 9a01         	ldr	r2, [sp, #0x4]
  3e92ba: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e92be: 4610         	mov	r0, r2
  3e92c0: 4798         	blx	r3
  3e92c2: 9b01         	ldr	r3, [sp, #0x4]
  3e92c4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e92c8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e92cc: 681b         	ldr	r3, [r3]
  3e92ce: 33cc         	adds	r3, #0xcc
  3e92d0: 681b         	ldr	r3, [r3]
  3e92d2: 9a01         	ldr	r2, [sp, #0x4]
  3e92d4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e92d8: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e92dc: 9a01         	ldr	r2, [sp, #0x4]
  3e92de: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e92e2: 4608         	mov	r0, r1
  3e92e4: 4611         	mov	r1, r2
  3e92e6: 2200         	movs	r2, #0x0
  3e92e8: 4798         	blx	r3
  3e92ea: 9b01         	ldr	r3, [sp, #0x4]
  3e92ec: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e92f0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e92f4: 681b         	ldr	r3, [r3]
  3e92f6: 33cc         	adds	r3, #0xcc
  3e92f8: 681b         	ldr	r3, [r3]
  3e92fa: 9a01         	ldr	r2, [sp, #0x4]
  3e92fc: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e9300: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e9304: 9a01         	ldr	r2, [sp, #0x4]
  3e9306: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e930a: 4608         	mov	r0, r1
  3e930c: 4611         	mov	r1, r2
  3e930e: 2200         	movs	r2, #0x0
  3e9310: 4798         	blx	r3
  3e9312: 9b01         	ldr	r3, [sp, #0x4]
  3e9314: 681b         	ldr	r3, [r3]
  3e9316: f503 7303    	add.w	r3, r3, #0x20c
  3e931a: 681b         	ldr	r3, [r3]
  3e931c: 9801         	ldr	r0, [sp, #0x4]
  3e931e: 4798         	blx	r3
  3e9320: f1f7 f9c6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f738c
  3e9324: 4602         	mov	r2, r0
  3e9326: 9b01         	ldr	r3, [sp, #0x4]
  3e9328: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e932c: 4610         	mov	r0, r2
  3e932e: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3e9358 <SoldierHostController::switchWeapons()+0x17c>
  3e9330: 447a         	add	r2, pc
  3e9332: 4611         	mov	r1, r2
  3e9334: 461a         	mov	r2, r3
  3e9336: f1f7 fbf9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f77f2
  3e933a: 9b01         	ldr	r3, [sp, #0x4]
  3e933c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9340: 4618         	mov	r0, r3
  3e9342: f04f 0200    	mov.w	r2, #0x0
  3e9346: f44f 4300    	mov.w	r3, #0x8000
  3e934a: f2c4 0356    	movt	r3, #0x4056
  3e934e: f00a fd89    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0xab12
  3e9352: b004         	add	sp, #0x10
  3e9354: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e9355); words below are literal-pool data ---
  3e9356: bf00         	nop
  3e9358: f0b0 003e    	<unknown>

// ==== SoldierHostController::switchPrimaryToDual
//      file offset 0x3e935c (= ELF address; Ghidra 0x3f935c), 268 bytes, Thumb-2
  3e935c: b500         	push	{lr}
  3e935e: b083         	sub	sp, #0xc
  3e9360: 9001         	str	r0, [sp, #0x4]
  3e9362: 9b01         	ldr	r3, [sp, #0x4]
  3e9364: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9368: 2b00         	cmp	r3, #0x0
  3e936a: d077         	beq	0x3e945c <SoldierHostController::switchPrimaryToDual()+0x100> @ imm = #0xee
  3e936c: 9b01         	ldr	r3, [sp, #0x4]
  3e936e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9372: 2b00         	cmp	r3, #0x0
  3e9374: d172         	bne	0x3e945c <SoldierHostController::switchPrimaryToDual()+0x100> @ imm = #0xe4
  3e9376: 9b01         	ldr	r3, [sp, #0x4]
  3e9378: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e937c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e9380: 681b         	ldr	r3, [r3]
  3e9382: 33f4         	adds	r3, #0xf4
  3e9384: 681b         	ldr	r3, [r3]
  3e9386: 9a01         	ldr	r2, [sp, #0x4]
  3e9388: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e938c: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e9390: 9a01         	ldr	r2, [sp, #0x4]
  3e9392: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9396: 4608         	mov	r0, r1
  3e9398: 4611         	mov	r1, r2
  3e939a: 2200         	movs	r2, #0x0
  3e939c: 4798         	blx	r3
  3e939e: 9b01         	ldr	r3, [sp, #0x4]
  3e93a0: f8d3 2148    	ldr.w	r2, [r3, #0x148]
  3e93a4: 9b01         	ldr	r3, [sp, #0x4]
  3e93a6: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e93aa: 9b01         	ldr	r3, [sp, #0x4]
  3e93ac: 2200         	movs	r2, #0x0
  3e93ae: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e93b2: 9b01         	ldr	r3, [sp, #0x4]
  3e93b4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e93b8: 681b         	ldr	r3, [r3]
  3e93ba: f503 73e8    	add.w	r3, r3, #0x1d0
  3e93be: 681b         	ldr	r3, [r3]
  3e93c0: 9a01         	ldr	r2, [sp, #0x4]
  3e93c2: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e93c6: 4610         	mov	r0, r2
  3e93c8: 4798         	blx	r3
  3e93ca: 9b01         	ldr	r3, [sp, #0x4]
  3e93cc: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e93d0: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e93d4: 2b00         	cmp	r3, #0x0
  3e93d6: d014         	beq	0x3e9402 <SoldierHostController::switchPrimaryToDual()+0xa6> @ imm = #0x28
  3e93d8: 9b01         	ldr	r3, [sp, #0x4]
  3e93da: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e93de: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e93e2: 681b         	ldr	r3, [r3]
  3e93e4: 33cc         	adds	r3, #0xcc
  3e93e6: 681b         	ldr	r3, [r3]
  3e93e8: 9a01         	ldr	r2, [sp, #0x4]
  3e93ea: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e93ee: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e93f2: 9a01         	ldr	r2, [sp, #0x4]
  3e93f4: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e93f8: 4608         	mov	r0, r1
  3e93fa: 4611         	mov	r1, r2
  3e93fc: 2201         	movs	r2, #0x1
  3e93fe: 4798         	blx	r3
  3e9400: e013         	b	0x3e942a <SoldierHostController::switchPrimaryToDual()+0xce> @ imm = #0x26
  3e9402: 9b01         	ldr	r3, [sp, #0x4]
  3e9404: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9408: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e940c: 681b         	ldr	r3, [r3]
  3e940e: 33cc         	adds	r3, #0xcc
  3e9410: 681b         	ldr	r3, [r3]
  3e9412: 9a01         	ldr	r2, [sp, #0x4]
  3e9414: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e9418: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e941c: 9a01         	ldr	r2, [sp, #0x4]
  3e941e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9422: 4608         	mov	r0, r1
  3e9424: 4611         	mov	r1, r2
  3e9426: 2201         	movs	r2, #0x1
  3e9428: 4798         	blx	r3
  3e942a: f1f7 f941    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f7282
  3e942e: 4602         	mov	r2, r0
  3e9430: 9b01         	ldr	r3, [sp, #0x4]
  3e9432: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9436: 4610         	mov	r0, r2
  3e9438: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3e9464 <SoldierHostController::switchPrimaryToDual()+0x108>
  3e943a: 447a         	add	r2, pc
  3e943c: 4611         	mov	r1, r2
  3e943e: 461a         	mov	r2, r3
  3e9440: f1f7 fb74    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f76e8
  3e9444: 9b01         	ldr	r3, [sp, #0x4]
  3e9446: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e944a: 4618         	mov	r0, r3
  3e944c: f04f 0200    	mov.w	r2, #0x0
  3e9450: f44f 4300    	mov.w	r3, #0x8000
  3e9454: f2c4 0356    	movt	r3, #0x4056
  3e9458: f00a fd12    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0xaa24
  3e945c: b003         	add	sp, #0xc
  3e945e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e9461); words below are literal-pool data ---
  3e9462: bf00         	nop
  3e9464: efa6 003e    	vshr.s32	d0, d30, #0x1a

// ==== SoldierHostController::switchSecondaryToDual
//      file offset 0x3e9468 (= ELF address; Ghidra 0x3f9468), 400 bytes, Thumb-2
  3e9468: b500         	push	{lr}
  3e946a: b085         	sub	sp, #0x14
  3e946c: 9001         	str	r0, [sp, #0x4]
  3e946e: 2300         	movs	r3, #0x0
  3e9470: 9303         	str	r3, [sp, #0xc]
  3e9472: 9b01         	ldr	r3, [sp, #0x4]
  3e9474: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e9478: 2b00         	cmp	r3, #0x0
  3e947a: f000 80b7    	beq.w	0x3e95ec <SoldierHostController::switchSecondaryToDual()+0x184> @ imm = #0x16e
  3e947e: 9b01         	ldr	r3, [sp, #0x4]
  3e9480: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9484: 2b00         	cmp	r3, #0x0
  3e9486: f000 80b1    	beq.w	0x3e95ec <SoldierHostController::switchSecondaryToDual()+0x184> @ imm = #0x162
  3e948a: 9b01         	ldr	r3, [sp, #0x4]
  3e948c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9490: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e9494: 681b         	ldr	r3, [r3]
  3e9496: 33f4         	adds	r3, #0xf4
  3e9498: 681b         	ldr	r3, [r3]
  3e949a: 9a01         	ldr	r2, [sp, #0x4]
  3e949c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e94a0: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e94a4: 9a01         	ldr	r2, [sp, #0x4]
  3e94a6: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e94aa: 4608         	mov	r0, r1
  3e94ac: 4611         	mov	r1, r2
  3e94ae: 2200         	movs	r2, #0x0
  3e94b0: 4798         	blx	r3
  3e94b2: 9b01         	ldr	r3, [sp, #0x4]
  3e94b4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e94b8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e94bc: 681b         	ldr	r3, [r3]
  3e94be: 33f4         	adds	r3, #0xf4
  3e94c0: 681b         	ldr	r3, [r3]
  3e94c2: 9a01         	ldr	r2, [sp, #0x4]
  3e94c4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e94c8: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e94cc: 9a01         	ldr	r2, [sp, #0x4]
  3e94ce: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e94d2: 4608         	mov	r0, r1
  3e94d4: 4611         	mov	r1, r2
  3e94d6: 2200         	movs	r2, #0x0
  3e94d8: 4798         	blx	r3
  3e94da: 9b01         	ldr	r3, [sp, #0x4]
  3e94dc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e94e0: 9303         	str	r3, [sp, #0xc]
  3e94e2: 9b01         	ldr	r3, [sp, #0x4]
  3e94e4: f8d3 214c    	ldr.w	r2, [r3, #0x14c]
  3e94e8: 9b01         	ldr	r3, [sp, #0x4]
  3e94ea: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e94ee: 9b01         	ldr	r3, [sp, #0x4]
  3e94f0: f8d3 2148    	ldr.w	r2, [r3, #0x148]
  3e94f4: 9b01         	ldr	r3, [sp, #0x4]
  3e94f6: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e94fa: 9b01         	ldr	r3, [sp, #0x4]
  3e94fc: 2200         	movs	r2, #0x0
  3e94fe: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e9502: 9b01         	ldr	r3, [sp, #0x4]
  3e9504: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9508: 681b         	ldr	r3, [r3]
  3e950a: f503 73e8    	add.w	r3, r3, #0x1d0
  3e950e: 681b         	ldr	r3, [r3]
  3e9510: 9a01         	ldr	r2, [sp, #0x4]
  3e9512: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9516: 4610         	mov	r0, r2
  3e9518: 4798         	blx	r3
  3e951a: 9b01         	ldr	r3, [sp, #0x4]
  3e951c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e9520: 681b         	ldr	r3, [r3]
  3e9522: f503 73ec    	add.w	r3, r3, #0x1d8
  3e9526: 681b         	ldr	r3, [r3]
  3e9528: 9a01         	ldr	r2, [sp, #0x4]
  3e952a: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e952e: 4610         	mov	r0, r2
  3e9530: 4798         	blx	r3
  3e9532: 9b01         	ldr	r3, [sp, #0x4]
  3e9534: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9538: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e953c: 2b00         	cmp	r3, #0x0
  3e953e: d014         	beq	0x3e956a <SoldierHostController::switchSecondaryToDual()+0x102> @ imm = #0x28
  3e9540: 9b01         	ldr	r3, [sp, #0x4]
  3e9542: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9546: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e954a: 681b         	ldr	r3, [r3]
  3e954c: 33cc         	adds	r3, #0xcc
  3e954e: 681b         	ldr	r3, [r3]
  3e9550: 9a01         	ldr	r2, [sp, #0x4]
  3e9552: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e9556: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e955a: 9a01         	ldr	r2, [sp, #0x4]
  3e955c: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9560: 4608         	mov	r0, r1
  3e9562: 4611         	mov	r1, r2
  3e9564: 2201         	movs	r2, #0x1
  3e9566: 4798         	blx	r3
  3e9568: e013         	b	0x3e9592 <SoldierHostController::switchSecondaryToDual()+0x12a> @ imm = #0x26
  3e956a: 9b01         	ldr	r3, [sp, #0x4]
  3e956c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9570: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e9574: 681b         	ldr	r3, [r3]
  3e9576: 33cc         	adds	r3, #0xcc
  3e9578: 681b         	ldr	r3, [r3]
  3e957a: 9a01         	ldr	r2, [sp, #0x4]
  3e957c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e9580: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e9584: 9a01         	ldr	r2, [sp, #0x4]
  3e9586: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e958a: 4608         	mov	r0, r1
  3e958c: 4611         	mov	r1, r2
  3e958e: 2201         	movs	r2, #0x1
  3e9590: 4798         	blx	r3
  3e9592: 9b01         	ldr	r3, [sp, #0x4]
  3e9594: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9598: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e959c: 681b         	ldr	r3, [r3]
  3e959e: 33cc         	adds	r3, #0xcc
  3e95a0: 681b         	ldr	r3, [r3]
  3e95a2: 9a01         	ldr	r2, [sp, #0x4]
  3e95a4: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e95a8: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e95ac: 9a01         	ldr	r2, [sp, #0x4]
  3e95ae: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e95b2: 4608         	mov	r0, r1
  3e95b4: 4611         	mov	r1, r2
  3e95b6: 2200         	movs	r2, #0x0
  3e95b8: 4798         	blx	r3
  3e95ba: f1f7 f879    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f70f2
  3e95be: 4602         	mov	r2, r0
  3e95c0: 9b01         	ldr	r3, [sp, #0x4]
  3e95c2: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e95c6: 4610         	mov	r0, r2
  3e95c8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3e95f4 <SoldierHostController::switchSecondaryToDual()+0x18c>
  3e95ca: 447a         	add	r2, pc
  3e95cc: 4611         	mov	r1, r2
  3e95ce: 461a         	mov	r2, r3
  3e95d0: f1f7 faac    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f7558
  3e95d4: 9b01         	ldr	r3, [sp, #0x4]
  3e95d6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e95da: 4618         	mov	r0, r3
  3e95dc: f04f 0200    	mov.w	r2, #0x0
  3e95e0: f44f 4300    	mov.w	r3, #0x8000
  3e95e4: f2c4 0356    	movt	r3, #0x4056
  3e95e8: f00a fc4a    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0xa894
  3e95ec: b005         	add	sp, #0x14
  3e95ee: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e95f1); words below are literal-pool data ---
  3e95f2: bf00         	nop
  3e95f4: ee16 003e    	mrc	p0, #0x0, r0, c6, c14, #0x1

// ==== SoldierHostController::fire
//      file offset 0x3e95f8 (= ELF address; Ghidra 0x3f95f8), 412 bytes, Thumb-2
  3e95f8: b570         	push	{r4, r5, r6, lr}
  3e95fa: b082         	sub	sp, #0x8
  3e95fc: 9001         	str	r0, [sp, #0x4]
  3e95fe: 9100         	str	r1, [sp]
  3e9600: 9b01         	ldr	r3, [sp, #0x4]
  3e9602: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9606: 2b00         	cmp	r3, #0x0
  3e9608: d00c         	beq	0x3e9624 <SoldierHostController::fire(float)+0x2c> @ imm = #0x18
  3e960a: 9b01         	ldr	r3, [sp, #0x4]
  3e960c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9610: 681b         	ldr	r3, [r3]
  3e9612: f503 7317    	add.w	r3, r3, #0x25c
  3e9616: 681b         	ldr	r3, [r3]
  3e9618: 9a01         	ldr	r2, [sp, #0x4]
  3e961a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e961e: 4610         	mov	r0, r2
  3e9620: 9900         	ldr	r1, [sp]
  3e9622: 4798         	blx	r3
  3e9624: 9b01         	ldr	r3, [sp, #0x4]
  3e9626: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e962a: 2b00         	cmp	r3, #0x0
  3e962c: f000 80b0    	beq.w	0x3e9790 <SoldierHostController::fire(float)+0x198> @ imm = #0x160
  3e9630: 9b01         	ldr	r3, [sp, #0x4]
  3e9632: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9636: 681b         	ldr	r3, [r3]
  3e9638: f503 731d    	add.w	r3, r3, #0x274
  3e963c: 681b         	ldr	r3, [r3]
  3e963e: 9a01         	ldr	r2, [sp, #0x4]
  3e9640: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9644: 4610         	mov	r0, r2
  3e9646: 4798         	blx	r3
  3e9648: 4603         	mov	r3, r0
  3e964a: b29b         	uxth	r3, r3
  3e964c: 2b00         	cmp	r3, #0x0
  3e964e: d14b         	bne	0x3e96e8 <SoldierHostController::fire(float)+0xf0> @ imm = #0x96
  3e9650: 9b01         	ldr	r3, [sp, #0x4]
  3e9652: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9656: 681b         	ldr	r3, [r3]
  3e9658: f503 7321    	add.w	r3, r3, #0x284
  3e965c: 681b         	ldr	r3, [r3]
  3e965e: 9a01         	ldr	r2, [sp, #0x4]
  3e9660: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9664: 4610         	mov	r0, r2
  3e9666: 4798         	blx	r3
  3e9668: 4603         	mov	r3, r0
  3e966a: b29b         	uxth	r3, r3
  3e966c: 2b00         	cmp	r3, #0x0
  3e966e: d13b         	bne	0x3e96e8 <SoldierHostController::fire(float)+0xf0> @ imm = #0x76
  3e9670: 9b01         	ldr	r3, [sp, #0x4]
  3e9672: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9676: 681b         	ldr	r3, [r3]
  3e9678: f503 731a    	add.w	r3, r3, #0x268
  3e967c: 681b         	ldr	r3, [r3]
  3e967e: 9a01         	ldr	r2, [sp, #0x4]
  3e9680: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9684: 4610         	mov	r0, r2
  3e9686: 4798         	blx	r3
  3e9688: 4604         	mov	r4, r0
  3e968a: 9b01         	ldr	r3, [sp, #0x4]
  3e968c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9690: 681b         	ldr	r3, [r3]
  3e9692: f503 731a    	add.w	r3, r3, #0x268
  3e9696: 681b         	ldr	r3, [r3]
  3e9698: 9a01         	ldr	r2, [sp, #0x4]
  3e969a: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e969e: 4610         	mov	r0, r2
  3e96a0: 4798         	blx	r3
  3e96a2: 4603         	mov	r3, r0
  3e96a4: 429c         	cmp	r4, r3
  3e96a6: d11f         	bne	0x3e96e8 <SoldierHostController::fire(float)+0xf0> @ imm = #0x3e
  3e96a8: 9b01         	ldr	r3, [sp, #0x4]
  3e96aa: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e96ae: 681b         	ldr	r3, [r3]
  3e96b0: f503 731d    	add.w	r3, r3, #0x274
  3e96b4: 681b         	ldr	r3, [r3]
  3e96b6: 9a01         	ldr	r2, [sp, #0x4]
  3e96b8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e96bc: 4610         	mov	r0, r2
  3e96be: 4798         	blx	r3
  3e96c0: 4603         	mov	r3, r0
  3e96c2: b29b         	uxth	r3, r3
  3e96c4: b21c         	sxth	r4, r3
  3e96c6: 9b01         	ldr	r3, [sp, #0x4]
  3e96c8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e96cc: 681b         	ldr	r3, [r3]
  3e96ce: f503 732d    	add.w	r3, r3, #0x2b4
  3e96d2: 681b         	ldr	r3, [r3]
  3e96d4: 9a01         	ldr	r2, [sp, #0x4]
  3e96d6: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e96da: 4610         	mov	r0, r2
  3e96dc: 4798         	blx	r3
  3e96de: 4603         	mov	r3, r0
  3e96e0: 429c         	cmp	r4, r3
  3e96e2: dd01         	ble	0x3e96e8 <SoldierHostController::fire(float)+0xf0> @ imm = #0x2
  3e96e4: 2301         	movs	r3, #0x1
  3e96e6: e000         	b	0x3e96ea <SoldierHostController::fire(float)+0xf2> @ imm = #0x0
  3e96e8: 2300         	movs	r3, #0x0
  3e96ea: 2b00         	cmp	r3, #0x0
  3e96ec: d043         	beq	0x3e9776 <SoldierHostController::fire(float)+0x17e> @ imm = #0x86
  3e96ee: 9b01         	ldr	r3, [sp, #0x4]
  3e96f0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e96f4: 681b         	ldr	r3, [r3]
  3e96f6: f503 731e    	add.w	r3, r3, #0x278
  3e96fa: 681c         	ldr	r4, [r3]
  3e96fc: 9b01         	ldr	r3, [sp, #0x4]
  3e96fe: f8d3 5150    	ldr.w	r5, [r3, #0x150]
  3e9702: 9b01         	ldr	r3, [sp, #0x4]
  3e9704: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e9708: 681b         	ldr	r3, [r3]
  3e970a: f503 732d    	add.w	r3, r3, #0x2b4
  3e970e: 681b         	ldr	r3, [r3]
  3e9710: 9a01         	ldr	r2, [sp, #0x4]
  3e9712: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e9716: 4610         	mov	r0, r2
  3e9718: 4798         	blx	r3
  3e971a: 4603         	mov	r3, r0
  3e971c: 4628         	mov	r0, r5
  3e971e: 4619         	mov	r1, r3
  3e9720: 47a0         	blx	r4
  3e9722: 9b01         	ldr	r3, [sp, #0x4]
  3e9724: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9728: 681b         	ldr	r3, [r3]
  3e972a: f503 731e    	add.w	r3, r3, #0x278
  3e972e: 681c         	ldr	r4, [r3]
  3e9730: 9b01         	ldr	r3, [sp, #0x4]
  3e9732: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3e9736: 9b01         	ldr	r3, [sp, #0x4]
  3e9738: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e973c: 681b         	ldr	r3, [r3]
  3e973e: f503 731d    	add.w	r3, r3, #0x274
  3e9742: 681b         	ldr	r3, [r3]
  3e9744: 9a01         	ldr	r2, [sp, #0x4]
  3e9746: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e974a: 4610         	mov	r0, r2
  3e974c: 4798         	blx	r3
  3e974e: 4603         	mov	r3, r0
  3e9750: b29b         	uxth	r3, r3
  3e9752: b21e         	sxth	r6, r3
  3e9754: 9b01         	ldr	r3, [sp, #0x4]
  3e9756: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e975a: 681b         	ldr	r3, [r3]
  3e975c: f503 732d    	add.w	r3, r3, #0x2b4
  3e9760: 681b         	ldr	r3, [r3]
  3e9762: 9a01         	ldr	r2, [sp, #0x4]
  3e9764: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9768: 4610         	mov	r0, r2
  3e976a: 4798         	blx	r3
  3e976c: 4603         	mov	r3, r0
  3e976e: 1af3         	subs	r3, r6, r3
  3e9770: 4628         	mov	r0, r5
  3e9772: 4619         	mov	r1, r3
  3e9774: 47a0         	blx	r4
  3e9776: 9b01         	ldr	r3, [sp, #0x4]
  3e9778: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e977c: 681b         	ldr	r3, [r3]
  3e977e: f503 7317    	add.w	r3, r3, #0x25c
  3e9782: 681b         	ldr	r3, [r3]
  3e9784: 9a01         	ldr	r2, [sp, #0x4]
  3e9786: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e978a: 4610         	mov	r0, r2
  3e978c: 9900         	ldr	r1, [sp]
  3e978e: 4798         	blx	r3
  3e9790: b002         	add	sp, #0x8
  3e9792: bd70         	pop	{r4, r5, r6, pc}

// ==== SoldierHostController::setViewOffset
//      file offset 0x3e9794 (= ELF address; Ghidra 0x3f9794), 18 bytes, Thumb-2
  3e9794: b082         	sub	sp, #0x8
  3e9796: 9001         	str	r0, [sp, #0x4]
  3e9798: 9100         	str	r1, [sp]
  3e979a: 9b01         	ldr	r3, [sp, #0x4]
  3e979c: 9a00         	ldr	r2, [sp]
  3e979e: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3e97a2: b002         	add	sp, #0x8
  3e97a4: 4770         	bx	lr

// ==== SoldierHostController::getViewOffset
//      file offset 0x3e97a8 (= ELF address; Ghidra 0x3f97a8), 190 bytes, Thumb-2
  3e97a8: b500         	push	{lr}
  3e97aa: ed2d 8b02    	vpush	{d8}
  3e97ae: b085         	sub	sp, #0x14
  3e97b0: 9001         	str	r0, [sp, #0x4]
  3e97b2: 9b01         	ldr	r3, [sp, #0x4]
  3e97b4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e97b8: 2b00         	cmp	r3, #0x0
  3e97ba: d04b         	beq	0x3e9854 <SoldierHostController::getViewOffset()+0xac> @ imm = #0x96
  3e97bc: 9b01         	ldr	r3, [sp, #0x4]
  3e97be: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e97c2: 681b         	ldr	r3, [r3]
  3e97c4: f503 7324    	add.w	r3, r3, #0x290
  3e97c8: 681b         	ldr	r3, [r3]
  3e97ca: 9a01         	ldr	r2, [sp, #0x4]
  3e97cc: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e97d0: 4610         	mov	r0, r2
  3e97d2: 4798         	blx	r3
  3e97d4: 4603         	mov	r3, r0
  3e97d6: ee07 3a90    	vmov	s15, r3
  3e97da: eeb8 8ae7    	vcvt.f32.s32	s16, s15
  3e97de: 9b01         	ldr	r3, [sp, #0x4]
  3e97e0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e97e4: 681b         	ldr	r3, [r3]
  3e97e6: f503 7334    	add.w	r3, r3, #0x2d0
  3e97ea: 681b         	ldr	r3, [r3]
  3e97ec: 9a01         	ldr	r2, [sp, #0x4]
  3e97ee: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e97f2: 4610         	mov	r0, r2
  3e97f4: 4798         	blx	r3
  3e97f6: ee07 0a10    	vmov	s14, r0
  3e97fa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3e97fe: ee77 7ac7    	vsub.f32	s15, s15, s14
  3e9802: ee68 7a27    	vmul.f32	s15, s16, s15
  3e9806: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3e980a: ee17 3a90    	vmov	r3, s15
  3e980e: 9303         	str	r3, [sp, #0xc]
  3e9810: 9b01         	ldr	r3, [sp, #0x4]
  3e9812: f8d3 21a4    	ldr.w	r2, [r3, #0x1a4]
  3e9816: 9b03         	ldr	r3, [sp, #0xc]
  3e9818: 1ad3         	subs	r3, r2, r3
  3e981a: f1b3 3fff    	cmp.w	r3, #0xffffffff
  3e981e: da07         	bge	0x3e9830 <SoldierHostController::getViewOffset()+0x88> @ imm = #0xe
  3e9820: 9b01         	ldr	r3, [sp, #0x4]
  3e9822: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  3e9826: 1c5a         	adds	r2, r3, #0x1
  3e9828: 9b01         	ldr	r3, [sp, #0x4]
  3e982a: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3e982e: e00d         	b	0x3e984c <SoldierHostController::getViewOffset()+0xa4> @ imm = #0x1a
  3e9830: 9b01         	ldr	r3, [sp, #0x4]
  3e9832: f8d3 21a4    	ldr.w	r2, [r3, #0x1a4]
  3e9836: 9b03         	ldr	r3, [sp, #0xc]
  3e9838: 1ad3         	subs	r3, r2, r3
  3e983a: 2b01         	cmp	r3, #0x1
  3e983c: dd06         	ble	0x3e984c <SoldierHostController::getViewOffset()+0xa4> @ imm = #0xc
  3e983e: 9b01         	ldr	r3, [sp, #0x4]
  3e9840: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  3e9844: 1e5a         	subs	r2, r3, #0x1
  3e9846: 9b01         	ldr	r3, [sp, #0x4]
  3e9848: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3e984c: 9b01         	ldr	r3, [sp, #0x4]
  3e984e: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  3e9852: e002         	b	0x3e985a <SoldierHostController::getViewOffset()+0xb2> @ imm = #0x4
  3e9854: 9b01         	ldr	r3, [sp, #0x4]
  3e9856: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  3e985a: 4618         	mov	r0, r3
  3e985c: b005         	add	sp, #0x14
  3e985e: ecbd 8b02    	vpop	{d8}
  3e9862: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::getViewScale
//      file offset 0x3e9868 (= ELF address; Ghidra 0x3f9868), 200 bytes, Thumb-2
  3e9868: b500         	push	{lr}
  3e986a: ed2d 8b02    	vpush	{d8}
  3e986e: b085         	sub	sp, #0x14
  3e9870: 9001         	str	r0, [sp, #0x4]
  3e9872: 9b01         	ldr	r3, [sp, #0x4]
  3e9874: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9878: 2b00         	cmp	r3, #0x0
  3e987a: d026         	beq	0x3e98ca <SoldierHostController::getViewScale()+0x62> @ imm = #0x4c
  3e987c: 9b01         	ldr	r3, [sp, #0x4]
  3e987e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9882: 681b         	ldr	r3, [r3]
  3e9884: f503 7334    	add.w	r3, r3, #0x2d0
  3e9888: 681b         	ldr	r3, [r3]
  3e988a: 9a01         	ldr	r2, [sp, #0x4]
  3e988c: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9890: 4610         	mov	r0, r2
  3e9892: 4798         	blx	r3
  3e9894: 4603         	mov	r3, r0
  3e9896: 9302         	str	r3, [sp, #0x8]
  3e9898: eddd 7a02    	vldr	s15, [sp, #8]
  3e989c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e98a0: ed9f 7b1f    	vldr	d7, [pc, #124]          @ 0x3e9920 <SoldierHostController::getViewScale()+0xb8>
  3e98a4: ee26 6b07    	vmul.f64	d6, d6, d7
  3e98a8: 9b01         	ldr	r3, [sp, #0x4]
  3e98aa: edd3 7a6a    	vldr	s15, [r3, #424]
  3e98ae: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3e98b2: ed9f 7b1d    	vldr	d7, [pc, #116]          @ 0x3e9928 <SoldierHostController::getViewScale()+0xc0>
  3e98b6: ee25 7b07    	vmul.f64	d7, d5, d7
  3e98ba: ee36 7b07    	vadd.f64	d7, d6, d7
  3e98be: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e98c2: 9b01         	ldr	r3, [sp, #0x4]
  3e98c4: edc3 7a6a    	vstr	s15, [r3, #424]
  3e98c8: e011         	b	0x3e98ee <SoldierHostController::getViewScale()+0x86> @ imm = #0x22
  3e98ca: 9b01         	ldr	r3, [sp, #0x4]
  3e98cc: edd3 7a6a    	vldr	s15, [r3, #424]
  3e98d0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e98d4: ed9f 7b14    	vldr	d7, [pc, #80]           @ 0x3e9928 <SoldierHostController::getViewScale()+0xc0>
  3e98d8: ee26 6b07    	vmul.f64	d6, d6, d7
  3e98dc: ed9f 7b10    	vldr	d7, [pc, #64]           @ 0x3e9920 <SoldierHostController::getViewScale()+0xb8>
  3e98e0: ee36 7b07    	vadd.f64	d7, d6, d7
  3e98e4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e98e8: 9b01         	ldr	r3, [sp, #0x4]
  3e98ea: edc3 7a6a    	vstr	s15, [r3, #424]
  3e98ee: 9b01         	ldr	r3, [sp, #0x4]
  3e98f0: ed93 8a6a    	vldr	s16, [r3, #424]
  3e98f4: f038 fdf4    	bl	0x4224e0 <ApplicationInterface::aspectCorrection()> @ imm = #0x38be8
  3e98f8: ee07 0a90    	vmov	s15, r0
  3e98fc: ee28 8a27    	vmul.f32	s16, s16, s15
  3e9900: f038 fe16    	bl	0x422530 <ApplicationInterface::viewFactor()> @ imm = #0x38c2c
  3e9904: ee07 0a90    	vmov	s15, r0
  3e9908: ee68 7a27    	vmul.f32	s15, s16, s15
  3e990c: edcd 7a03    	vstr	s15, [sp, #12]
  3e9910: 9b03         	ldr	r3, [sp, #0xc]
  3e9912: 4618         	mov	r0, r3
  3e9914: b005         	add	sp, #0x14
  3e9916: ecbd 8b02    	vpop	{d8}
  3e991a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e991d); words below are literal-pool data ---
  3e991e: bf00         	nop
  3e9920: 3333         	adds	r3, #0x33
  3e9922: 3333         	adds	r3, #0x33
  3e9924: 3333         	adds	r3, #0x33
  3e9926: 3fd3         	subs	r7, #0xd3
  3e9928: 6666         	str	r6, [r4, #0x64]
  3e992a: 6666         	str	r6, [r4, #0x64]
  3e992c: 6666         	str	r6, [r4, #0x64]
  3e992e: 3fe6         	subs	r7, #0xe6

// ==== SoldierHostController::hasPower
//      file offset 0x3e9930 (= ELF address; Ghidra 0x3f9930), 32 bytes, Thumb-2
  3e9930: b082         	sub	sp, #0x8
  3e9932: 9001         	str	r0, [sp, #0x4]
  3e9934: 9b01         	ldr	r3, [sp, #0x4]
  3e9936: edd3 7a66    	vldr	s15, [r3, #408]
  3e993a: eef5 7ac0    	vcmpe.f32	s15, #0
  3e993e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9942: bfd4         	ite	le
  3e9944: 2300         	movle	r3, #0x0
  3e9946: 2301         	movgt	r3, #0x1
  3e9948: b2db         	uxtb	r3, r3
  3e994a: 2001         	movs	r0, #0x1
  3e994c: b002         	add	sp, #0x8
  3e994e: 4770         	bx	lr

// ==== SoldierHostController::activatePlayer
//      file offset 0x3e9950 (= ELF address; Ghidra 0x3f9950), 76 bytes, Thumb-2
  3e9950: b500         	push	{lr}
  3e9952: b083         	sub	sp, #0xc
  3e9954: 9001         	str	r0, [sp, #0x4]
  3e9956: 9b01         	ldr	r3, [sp, #0x4]
  3e9958: f04f 0200    	mov.w	r2, #0x0
  3e995c: f2c4 22c8    	movt	r2, #0x42c8
  3e9960: f8c3 2144    	str.w	r2, [r3, #0x144]
  3e9964: 9b01         	ldr	r3, [sp, #0x4]
  3e9966: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e996a: 4618         	mov	r0, r3
  3e996c: 2101         	movs	r1, #0x1
  3e996e: f00a fba7    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0xa74e
  3e9972: 9b01         	ldr	r3, [sp, #0x4]
  3e9974: 2200         	movs	r2, #0x0
  3e9976: f883 2159    	strb.w	r2, [r3, #0x159]
  3e997a: 9b01         	ldr	r3, [sp, #0x4]
  3e997c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e9980: 4618         	mov	r0, r3
  3e9982: f2e9 fcc6    	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2e998c
  3e9986: 9b01         	ldr	r3, [sp, #0x4]
  3e9988: 681b         	ldr	r3, [r3]
  3e998a: f503 7339    	add.w	r3, r3, #0x2e4
  3e998e: 681b         	ldr	r3, [r3]
  3e9990: 9801         	ldr	r0, [sp, #0x4]
  3e9992: 2115         	movs	r1, #0x15
  3e9994: 4798         	blx	r3
  3e9996: b003         	add	sp, #0xc
  3e9998: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::killPlayer
//      file offset 0x3e999c (= ELF address; Ghidra 0x3f999c), 100 bytes, Thumb-2
  3e999c: b500         	push	{lr}
  3e999e: b083         	sub	sp, #0xc
  3e99a0: 9001         	str	r0, [sp, #0x4]
  3e99a2: 9b01         	ldr	r3, [sp, #0x4]
  3e99a4: 681b         	ldr	r3, [r3]
  3e99a6: f503 7324    	add.w	r3, r3, #0x290
  3e99aa: 681b         	ldr	r3, [r3]
  3e99ac: 9a01         	ldr	r2, [sp, #0x4]
  3e99ae: 4610         	mov	r0, r2
  3e99b0: 4798         	blx	r3
  3e99b2: 9b01         	ldr	r3, [sp, #0x4]
  3e99b4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e99b8: 4618         	mov	r0, r3
  3e99ba: 2100         	movs	r1, #0x0
  3e99bc: f00a fb80    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0xa700
  3e99c0: 9b01         	ldr	r3, [sp, #0x4]
  3e99c2: 681b         	ldr	r3, [r3]
  3e99c4: f503 7339    	add.w	r3, r3, #0x2e4
  3e99c8: 681b         	ldr	r3, [r3]
  3e99ca: 9801         	ldr	r0, [sp, #0x4]
  3e99cc: 2101         	movs	r1, #0x1
  3e99ce: 4798         	blx	r3
  3e99d0: 9b01         	ldr	r3, [sp, #0x4]
  3e99d2: f893 31f0    	ldrb.w	r3, [r3, #0x1f0]
  3e99d6: f083 0301    	eor	r3, r3, #0x1
  3e99da: b2db         	uxtb	r3, r3
  3e99dc: 2b00         	cmp	r3, #0x0
  3e99de: d00a         	beq	0x3e99f6 <SoldierHostController::killPlayer()+0x5a> @ imm = #0x14
  3e99e0: f1f6 fe66    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f6ccc
  3e99e4: 4602         	mov	r2, r0
  3e99e6: 9b01         	ldr	r3, [sp, #0x4]
  3e99e8: 4610         	mov	r0, r2
  3e99ea: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3e99fc <SoldierHostController::killPlayer()+0x60>
  3e99ec: 447a         	add	r2, pc
  3e99ee: 4611         	mov	r1, r2
  3e99f0: 461a         	mov	r2, r3
  3e99f2: f1f7 f89b    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f7136
  3e99f6: b003         	add	sp, #0xc
  3e99f8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3e99fb); words below are literal-pool data ---
  3e99fc: ea24 003e    	bic.w	r0, r4, lr, rrx

// ==== SoldierHostController::setCollision
//      file offset 0x3e9a00 (= ELF address; Ghidra 0x3f9a00), 70 bytes, Thumb-2
  3e9a00: b082         	sub	sp, #0x8
  3e9a02: 9001         	str	r0, [sp, #0x4]
  3e9a04: 9100         	str	r1, [sp]
  3e9a06: 9b01         	ldr	r3, [sp, #0x4]
  3e9a08: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e9a0c: 9a00         	ldr	r2, [sp]
  3e9a0e: 655a         	str	r2, [r3, #0x54]
  3e9a10: 9b01         	ldr	r3, [sp, #0x4]
  3e9a12: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e9a16: 9a00         	ldr	r2, [sp]
  3e9a18: 65da         	str	r2, [r3, #0x5c]
  3e9a1a: 9b01         	ldr	r3, [sp, #0x4]
  3e9a1c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e9a20: 9a00         	ldr	r2, [sp]
  3e9a22: 659a         	str	r2, [r3, #0x58]
  3e9a24: 9b01         	ldr	r3, [sp, #0x4]
  3e9a26: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e9a2a: 9a00         	ldr	r2, [sp]
  3e9a2c: 655a         	str	r2, [r3, #0x54]
  3e9a2e: 9b01         	ldr	r3, [sp, #0x4]
  3e9a30: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e9a34: 9a00         	ldr	r2, [sp]
  3e9a36: 65da         	str	r2, [r3, #0x5c]
  3e9a38: 9b01         	ldr	r3, [sp, #0x4]
  3e9a3a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3e9a3e: 9a00         	ldr	r2, [sp]
  3e9a40: 659a         	str	r2, [r3, #0x58]
  3e9a42: b002         	add	sp, #0x8
  3e9a44: 4770         	bx	lr

// ==== SoldierHostController::setAccelerometerY
//      file offset 0x3e9a48 (= ELF address; Ghidra 0x3f9a48), 142 bytes, Thumb-2
  3e9a48: b082         	sub	sp, #0x8
  3e9a4a: 9001         	str	r0, [sp, #0x4]
  3e9a4c: 9100         	str	r1, [sp]
  3e9a4e: 9b01         	ldr	r3, [sp, #0x4]
  3e9a50: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e9a54: 2b00         	cmp	r3, #0x0
  3e9a56: d03c         	beq	0x3e9ad2 <SoldierHostController::setAccelerometerY(float)+0x8a> @ imm = #0x78
  3e9a58: 9b01         	ldr	r3, [sp, #0x4]
  3e9a5a: ed93 7a65    	vldr	s14, [r3, #404]
  3e9a5e: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3e9a62: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e9a66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9a6a: dd32         	ble	0x3e9ad2 <SoldierHostController::setAccelerometerY(float)+0x8a> @ imm = #0x64
  3e9a6c: ed9d 7a00    	vldr	s14, [sp]
  3e9a70: eefe 7a00    	vmov.f32	s15, #-5.000000e-01
  3e9a74: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e9a78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9a7c: d510         	bpl	0x3e9aa0 <SoldierHostController::setAccelerometerY(float)+0x58> @ imm = #0x20
  3e9a7e: 9b01         	ldr	r3, [sp, #0x4]
  3e9a80: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e9a84: f04f 0200    	mov.w	r2, #0x0
  3e9a88: f04f 0300    	mov.w	r3, #0x0
  3e9a8c: f2c4 032a    	movt	r3, #0x402a
  3e9a90: e9c1 2318    	strd	r2, r3, [r1, #96]
  3e9a94: 9b01         	ldr	r3, [sp, #0x4]
  3e9a96: f04f 0200    	mov.w	r2, #0x0
  3e9a9a: f8c3 2194    	str.w	r2, [r3, #0x194]
  3e9a9e: e018         	b	0x3e9ad2 <SoldierHostController::setAccelerometerY(float)+0x8a> @ imm = #0x30
  3e9aa0: ed9d 7a00    	vldr	s14, [sp]
  3e9aa4: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3e9aa8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e9aac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9ab0: dd0f         	ble	0x3e9ad2 <SoldierHostController::setAccelerometerY(float)+0x8a> @ imm = #0x1e
  3e9ab2: 9b01         	ldr	r3, [sp, #0x4]
  3e9ab4: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e9ab8: f04f 0200    	mov.w	r2, #0x0
  3e9abc: f04f 0300    	mov.w	r3, #0x0
  3e9ac0: f2cc 032a    	movt	r3, #0xc02a
  3e9ac4: e9c1 2318    	strd	r2, r3, [r1, #96]
  3e9ac8: 9b01         	ldr	r3, [sp, #0x4]
  3e9aca: f04f 0200    	mov.w	r2, #0x0
  3e9ace: f8c3 2194    	str.w	r2, [r3, #0x194]
  3e9ad2: b002         	add	sp, #0x8
  3e9ad4: 4770         	bx	lr

// ==== SoldierHostController::checkMeleeCollision
//      file offset 0x3e9ad8 (= ELF address; Ghidra 0x3f9ad8), 888 bytes, Thumb-2
  3e9ad8: b5f0         	push	{r4, r5, r6, r7, lr}
  3e9ada: b0bd         	sub	sp, #0xf4
  3e9adc: 900f         	str	r0, [sp, #0x3c]
  3e9ade: 4dd9         	ldr	r5, [pc, #0x364]        @ 0x3e9e44 <SoldierHostController::checkMeleeCollision()+0x36c>
  3e9ae0: 447d         	add	r5, pc
  3e9ae2: f44f 7320    	mov.w	r3, #0x280
  3e9ae6: 9314         	str	r3, [sp, #0x50]
  3e9ae8: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9aea: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9aee: 681b         	ldr	r3, [r3]
  3e9af0: f503 7348    	add.w	r3, r3, #0x320
  3e9af4: 681b         	ldr	r3, [r3]
  3e9af6: 9a0f         	ldr	r2, [sp, #0x3c]
  3e9af8: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9afc: a920         	add	r1, sp, #0x80
  3e9afe: 4608         	mov	r0, r1
  3e9b00: 4611         	mov	r1, r2
  3e9b02: 4798         	blx	r3
  3e9b04: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9b06: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e9b0a: aa18         	add	r2, sp, #0x60
  3e9b0c: ed9d 4b20    	vldr	d4, [sp, #128]
  3e9b10: ed9d 5b22    	vldr	d5, [sp, #136]
  3e9b14: ed93 6b0a    	vldr	d6, [r3, #40]
  3e9b18: ed93 7b0c    	vldr	d7, [r3, #48]
  3e9b1c: 4610         	mov	r0, r2
  3e9b1e: eeb0 0b44    	vmov.f64	d0, d4
  3e9b22: eeb0 1b45    	vmov.f64	d1, d5
  3e9b26: eeb0 2b46    	vmov.f64	d2, d6
  3e9b2a: eeb0 3b47    	vmov.f64	d3, d7
  3e9b2e: f7fb f883    	bl	0x3e4c38 <SoldierController::setAlive(bool)+0x2b0> @ imm = #-0x4efa
  3e9b32: f04f 0200    	mov.w	r2, #0x0
  3e9b36: f04f 0300    	mov.w	r3, #0x0
  3e9b3a: e9cd 231c    	strd	r2, r3, [sp, #112]
  3e9b3e: f04f 0200    	mov.w	r2, #0x0
  3e9b42: f04f 0300    	mov.w	r3, #0x0
  3e9b46: e9cd 231e    	strd	r2, r3, [sp, #120]
  3e9b4a: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9b4c: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e9b50: ab24         	add	r3, sp, #0x90
  3e9b52: ed9d 6b18    	vldr	d6, [sp, #96]
  3e9b56: ed9d 7b1a    	vldr	d7, [sp, #104]
  3e9b5a: 4618         	mov	r0, r3
  3e9b5c: eeb0 0b46    	vmov.f64	d0, d6
  3e9b60: eeb0 1b47    	vmov.f64	d1, d7
  3e9b64: f7fb f902    	bl	0x3e4d6c <SoldierController::setAlive(bool)+0x3e4> @ imm = #-0x4dfc
  3e9b68: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9b6a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9b6e: 681b         	ldr	r3, [r3]
  3e9b70: f503 7328    	add.w	r3, r3, #0x2a0
  3e9b74: 681b         	ldr	r3, [r3]
  3e9b76: 9a0f         	ldr	r2, [sp, #0x3c]
  3e9b78: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9b7c: 4610         	mov	r0, r2
  3e9b7e: 4798         	blx	r3
  3e9b80: 4603         	mov	r3, r0
  3e9b82: ee07 3a90    	vmov	s15, r3
  3e9b86: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e9b8a: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9b8c: edd3 6a5e    	vldr	s13, [r3, #376]
  3e9b90: eddf 7aab    	vldr	s15, [pc, #684]         @ 0x3e9e40 <SoldierHostController::checkMeleeCollision()+0x368>
  3e9b94: ee66 6aa7    	vmul.f32	s13, s13, s15
  3e9b98: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e9b9c: ee76 7aa7    	vadd.f32	s15, s13, s15
  3e9ba0: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e9ba4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9ba8: dd0b         	ble	0x3e9bc2 <SoldierHostController::checkMeleeCollision()+0xea> @ imm = #0x16
  3e9baa: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9bac: ed93 7a5e    	vldr	s14, [r3, #376]
  3e9bb0: eddf 7aa3    	vldr	s15, [pc, #652]         @ 0x3e9e40 <SoldierHostController::checkMeleeCollision()+0x368>
  3e9bb4: ee27 7a27    	vmul.f32	s14, s14, s15
  3e9bb8: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e9bbc: ee77 7a27    	vadd.f32	s15, s14, s15
  3e9bc0: e010         	b	0x3e9be4 <SoldierHostController::checkMeleeCollision()+0x10c> @ imm = #0x20
  3e9bc2: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9bc4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e9bc8: 681b         	ldr	r3, [r3]
  3e9bca: f503 7328    	add.w	r3, r3, #0x2a0
  3e9bce: 681b         	ldr	r3, [r3]
  3e9bd0: 9a0f         	ldr	r2, [sp, #0x3c]
  3e9bd2: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e9bd6: 4610         	mov	r0, r2
  3e9bd8: 4798         	blx	r3
  3e9bda: 4603         	mov	r3, r0
  3e9bdc: ee07 3a10    	vmov	s14, r3
  3e9be0: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e9be4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9be8: ab28         	add	r3, sp, #0xa0
  3e9bea: ed9d 5b24    	vldr	d5, [sp, #144]
  3e9bee: ed9d 6b26    	vldr	d6, [sp, #152]
  3e9bf2: 4618         	mov	r0, r3
  3e9bf4: eeb0 0b45    	vmov.f64	d0, d5
  3e9bf8: eeb0 1b46    	vmov.f64	d1, d6
  3e9bfc: eeb0 2b47    	vmov.f64	d2, d7
  3e9c00: f7fb f846    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x4f74
  3e9c04: 9e0f         	ldr	r6, [sp, #0x3c]
  3e9c06: ab0a         	add	r3, sp, #0x28
  3e9c08: ed94 4b0a    	vldr	d4, [r4, #40]
  3e9c0c: ed94 5b0c    	vldr	d5, [r4, #48]
  3e9c10: ed9d 6b28    	vldr	d6, [sp, #160]
  3e9c14: ed9d 7b2a    	vldr	d7, [sp, #168]
  3e9c18: 4618         	mov	r0, r3
  3e9c1a: eeb0 0b44    	vmov.f64	d0, d4
  3e9c1e: eeb0 1b45    	vmov.f64	d1, d5
  3e9c22: eeb0 2b46    	vmov.f64	d2, d6
  3e9c26: eeb0 3b47    	vmov.f64	d3, d7
  3e9c2a: f7fa ffd9    	bl	0x3e4be0 <SoldierController::setAlive(bool)+0x258> @ imm = #-0x504e
  3e9c2e: f506 74b4    	add.w	r4, r6, #0x168
  3e9c32: ab0a         	add	r3, sp, #0x28
  3e9c34: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e9c36: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9c3a: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x3e9e48 <SoldierHostController::checkMeleeCollision()+0x370>
  3e9c3c: 58eb         	ldr	r3, [r5, r3]
  3e9c3e: 681e         	ldr	r6, [r3]
  3e9c40: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9c42: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e9c46: 9f14         	ldr	r7, [sp, #0x50]
  3e9c48: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9c4a: ad02         	add	r5, sp, #0x8
  3e9c4c: f503 73b4    	add.w	r3, r3, #0x168
  3e9c50: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e9c52: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e9c56: 9706         	str	r7, [sp, #0x18]
  3e9c58: 2300         	movs	r3, #0x0
  3e9c5a: 9307         	str	r3, [sp, #0x1c]
  3e9c5c: ab34         	add	r3, sp, #0xd0
  3e9c5e: 9308         	str	r3, [sp, #0x20]
  3e9c60: 466b         	mov	r3, sp
  3e9c62: f104 0230    	add.w	r2, r4, #0x30
  3e9c66: e892 0003    	ldm.w	r2, {r0, r1}
  3e9c6a: e883 0003    	stm.w	r3, {r0, r1}
  3e9c6e: f104 0328    	add.w	r3, r4, #0x28
  3e9c72: cb0c         	ldm	r3, {r2, r3}
  3e9c74: 4630         	mov	r0, r6
  3e9c76: f2ec f96f    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2ec2de
  3e9c7a: 4603         	mov	r3, r0
  3e9c7c: 9315         	str	r3, [sp, #0x54]
  3e9c7e: 2300         	movs	r3, #0x0
  3e9c80: 9316         	str	r3, [sp, #0x58]
  3e9c82: 2300         	movs	r3, #0x0
  3e9c84: 9317         	str	r3, [sp, #0x5c]
  3e9c86: ab30         	add	r3, sp, #0xc0
  3e9c88: 4618         	mov	r0, r3
  3e9c8a: f3a0 fbb3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a0766
  3e9c8e: aa10         	add	r2, sp, #0x40
  3e9c90: ab30         	add	r3, sp, #0xc0
  3e9c92: 4610         	mov	r0, r2
  3e9c94: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x3e9e4c <SoldierHostController::checkMeleeCollision()+0x374>
  3e9c96: 447a         	add	r2, pc
  3e9c98: 4611         	mov	r1, r2
  3e9c9a: 461a         	mov	r2, r3
  3e9c9c: f3cc fee0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3ccdc0
  3e9ca0: ab30         	add	r3, sp, #0xc0
  3e9ca2: 4618         	mov	r0, r3
  3e9ca4: f3a0 fbaa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a0754
  3e9ca8: 9b15         	ldr	r3, [sp, #0x54]
  3e9caa: 2b00         	cmp	r3, #0x0
  3e9cac: f000 80a6    	beq.w	0x3e9dfc <SoldierHostController::checkMeleeCollision()+0x324> @ imm = #0x14c
  3e9cb0: 9b15         	ldr	r3, [sp, #0x54]
  3e9cb2: 6ddb         	ldr	r3, [r3, #0x5c]
  3e9cb4: 2b84         	cmp	r3, #0x84
  3e9cb6: d05a         	beq	0x3e9d6e <SoldierHostController::checkMeleeCollision()+0x296> @ imm = #0xb4
  3e9cb8: f240 2241    	movw	r2, #0x241
  3e9cbc: 4293         	cmp	r3, r2
  3e9cbe: d000         	beq	0x3e9cc2 <SoldierHostController::checkMeleeCollision()+0x1ea> @ imm = #0x0
  3e9cc0: e09c         	b	0x3e9dfc <SoldierHostController::checkMeleeCollision()+0x324> @ imm = #0x138
  3e9cc2: 9b15         	ldr	r3, [sp, #0x54]
  3e9cc4: 6d1b         	ldr	r3, [r3, #0x50]
  3e9cc6: 9316         	str	r3, [sp, #0x58]
  3e9cc8: 9b16         	ldr	r3, [sp, #0x58]
  3e9cca: 681b         	ldr	r3, [r3]
  3e9ccc: f503 73e0    	add.w	r3, r3, #0x1c0
  3e9cd0: 681b         	ldr	r3, [r3]
  3e9cd2: 9a16         	ldr	r2, [sp, #0x58]
  3e9cd4: a911         	add	r1, sp, #0x44
  3e9cd6: 4608         	mov	r0, r1
  3e9cd8: 4611         	mov	r1, r2
  3e9cda: 4798         	blx	r3
  3e9cdc: aa10         	add	r2, sp, #0x40
  3e9cde: ab11         	add	r3, sp, #0x44
  3e9ce0: 4610         	mov	r0, r2
  3e9ce2: 4619         	mov	r1, r3
  3e9ce4: f3cb fb00    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x3cb600
  3e9ce8: ab11         	add	r3, sp, #0x44
  3e9cea: 4618         	mov	r0, r3
  3e9cec: f3cb fe12    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbc24
  3e9cf0: 9b16         	ldr	r3, [sp, #0x58]
  3e9cf2: 681b         	ldr	r3, [r3]
  3e9cf4: f503 73d6    	add.w	r3, r3, #0x1ac
  3e9cf8: 681b         	ldr	r3, [r3]
  3e9cfa: aa2c         	add	r2, sp, #0xb0
  3e9cfc: 4610         	mov	r0, r2
  3e9cfe: 9916         	ldr	r1, [sp, #0x58]
  3e9d00: 4798         	blx	r3
  3e9d02: aa0a         	add	r2, sp, #0x28
  3e9d04: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9d06: ed93 4b5a    	vldr	d4, [r3, #360]
  3e9d0a: ed93 5b5c    	vldr	d5, [r3, #368]
  3e9d0e: ed9d 6b2c    	vldr	d6, [sp, #176]
  3e9d12: ed9d 7b2e    	vldr	d7, [sp, #184]
  3e9d16: 4610         	mov	r0, r2
  3e9d18: eeb0 0b44    	vmov.f64	d0, d4
  3e9d1c: eeb0 1b45    	vmov.f64	d1, d5
  3e9d20: eeb0 2b46    	vmov.f64	d2, d6
  3e9d24: eeb0 3b47    	vmov.f64	d3, d7
  3e9d28: f7fa ff86    	bl	0x3e4c38 <SoldierController::setAlive(bool)+0x2b0> @ imm = #-0x50f4
  3e9d2c: ac1c         	add	r4, sp, #0x70
  3e9d2e: ab0a         	add	r3, sp, #0x28
  3e9d30: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e9d32: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9d36: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9d38: 681b         	ldr	r3, [r3]
  3e9d3a: f503 7337    	add.w	r3, r3, #0x2dc
  3e9d3e: 681c         	ldr	r4, [r3]
  3e9d40: aa12         	add	r2, sp, #0x48
  3e9d42: ab10         	add	r3, sp, #0x40
  3e9d44: 4610         	mov	r0, r2
  3e9d46: 4619         	mov	r1, r3
  3e9d48: f3cc fbce    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3cc79c
  3e9d4c: ad12         	add	r5, sp, #0x48
  3e9d4e: 466b         	mov	r3, sp
  3e9d50: aa1e         	add	r2, sp, #0x78
  3e9d52: e892 0003    	ldm.w	r2, {r0, r1}
  3e9d56: e883 0003    	stm.w	r3, {r0, r1}
  3e9d5a: ab1c         	add	r3, sp, #0x70
  3e9d5c: cb0c         	ldm	r3, {r2, r3}
  3e9d5e: 980f         	ldr	r0, [sp, #0x3c]
  3e9d60: 4629         	mov	r1, r5
  3e9d62: 47a0         	blx	r4
  3e9d64: ab12         	add	r3, sp, #0x48
  3e9d66: 4618         	mov	r0, r3
  3e9d68: f3cb fdd4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbba8
  3e9d6c: e046         	b	0x3e9dfc <SoldierHostController::checkMeleeCollision()+0x324> @ imm = #0x8c
  3e9d6e: 9b15         	ldr	r3, [sp, #0x54]
  3e9d70: 6d1b         	ldr	r3, [r3, #0x50]
  3e9d72: 9317         	str	r3, [sp, #0x5c]
  3e9d74: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9d76: 681b         	ldr	r3, [r3]
  3e9d78: f503 73d6    	add.w	r3, r3, #0x1ac
  3e9d7c: 681b         	ldr	r3, [r3]
  3e9d7e: 9a0f         	ldr	r2, [sp, #0x3c]
  3e9d80: a930         	add	r1, sp, #0xc0
  3e9d82: 4608         	mov	r0, r1
  3e9d84: 4611         	mov	r1, r2
  3e9d86: 4798         	blx	r3
  3e9d88: aa0a         	add	r2, sp, #0x28
  3e9d8a: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9d8c: ed93 4b5a    	vldr	d4, [r3, #360]
  3e9d90: ed93 5b5c    	vldr	d5, [r3, #368]
  3e9d94: ed9d 6b30    	vldr	d6, [sp, #192]
  3e9d98: ed9d 7b32    	vldr	d7, [sp, #200]
  3e9d9c: 4610         	mov	r0, r2
  3e9d9e: eeb0 0b44    	vmov.f64	d0, d4
  3e9da2: eeb0 1b45    	vmov.f64	d1, d5
  3e9da6: eeb0 2b46    	vmov.f64	d2, d6
  3e9daa: eeb0 3b47    	vmov.f64	d3, d7
  3e9dae: f7fa ff43    	bl	0x3e4c38 <SoldierController::setAlive(bool)+0x2b0> @ imm = #-0x517a
  3e9db2: ac1c         	add	r4, sp, #0x70
  3e9db4: ab0a         	add	r3, sp, #0x28
  3e9db6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e9db8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9dbc: 9b0f         	ldr	r3, [sp, #0x3c]
  3e9dbe: 681b         	ldr	r3, [r3]
  3e9dc0: f503 7337    	add.w	r3, r3, #0x2dc
  3e9dc4: 681c         	ldr	r4, [r3]
  3e9dc6: 9b17         	ldr	r3, [sp, #0x5c]
  3e9dc8: 681b         	ldr	r3, [r3]
  3e9dca: f503 73e0    	add.w	r3, r3, #0x1c0
  3e9dce: 681b         	ldr	r3, [r3]
  3e9dd0: 9a17         	ldr	r2, [sp, #0x5c]
  3e9dd2: a913         	add	r1, sp, #0x4c
  3e9dd4: 4608         	mov	r0, r1
  3e9dd6: 4611         	mov	r1, r2
  3e9dd8: 4798         	blx	r3
  3e9dda: ad13         	add	r5, sp, #0x4c
  3e9ddc: 466b         	mov	r3, sp
  3e9dde: aa1e         	add	r2, sp, #0x78
  3e9de0: e892 0003    	ldm.w	r2, {r0, r1}
  3e9de4: e883 0003    	stm.w	r3, {r0, r1}
  3e9de8: ab1c         	add	r3, sp, #0x70
  3e9dea: cb0c         	ldm	r3, {r2, r3}
  3e9dec: 980f         	ldr	r0, [sp, #0x3c]
  3e9dee: 4629         	mov	r1, r5
  3e9df0: 47a0         	blx	r4
  3e9df2: ab13         	add	r3, sp, #0x4c
  3e9df4: 4618         	mov	r0, r3
  3e9df6: f3cb fd8d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbb1a
  3e9dfa: bf00         	nop
  3e9dfc: ab10         	add	r3, sp, #0x40
  3e9dfe: 4618         	mov	r0, r3
  3e9e00: f3cb fd88    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbb10
  3e9e04: e01a         	b	0x3e9e3c <SoldierHostController::checkMeleeCollision()+0x364> @ imm = #0x34
  3e9e06: ab30         	add	r3, sp, #0xc0
  3e9e08: 4618         	mov	r0, r3
  3e9e0a: f3a0 faf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a05ee
  3e9e0e: f39e f94d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39e29a
  3e9e12: ab11         	add	r3, sp, #0x44
  3e9e14: 4618         	mov	r0, r3
  3e9e16: f3cb fd7d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbafa
  3e9e1a: e009         	b	0x3e9e30 <SoldierHostController::checkMeleeCollision()+0x358> @ imm = #0x12
  3e9e1c: ab12         	add	r3, sp, #0x48
  3e9e1e: 4618         	mov	r0, r3
  3e9e20: f3cb fd78    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbaf0
  3e9e24: e004         	b	0x3e9e30 <SoldierHostController::checkMeleeCollision()+0x358> @ imm = #0x8
  3e9e26: ab13         	add	r3, sp, #0x4c
  3e9e28: 4618         	mov	r0, r3
  3e9e2a: f3cb fd73    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbae6
  3e9e2e: e7ff         	b	0x3e9e30 <SoldierHostController::checkMeleeCollision()+0x358> @ imm = #-0x2
  3e9e30: ab10         	add	r3, sp, #0x40
  3e9e32: 4618         	mov	r0, r3
  3e9e34: f3cb fd6e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cbadc
  3e9e38: f39e f938    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39e270
  3e9e3c: b03d         	add	sp, #0xf4
  3e9e3e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e9e3f); words below are literal-pool data ---
  3e9e40: 0000         	movs	r0, r0
  3e9e42: 4296         	cmp	r6, r2
  3e9e44: 8f28         	ldrh	r0, [r5, #0x38]
  3e9e46: 0054         	lsls	r4, r2, #0x1
  3e9e48: da00         	bge	0x3e9e4c <SoldierHostController::checkMeleeCollision()+0x374> @ imm = #0x0
  3e9e4a: ffff e736    	vqshl.u32	d30, d22, #0x1f
  3e9e4e: 003e         	movs	r6, r7

// ==== SoldierHostController::meleeAttack
//      file offset 0x3e9e50 (= ELF address; Ghidra 0x3f9e50), 396 bytes, Thumb-2
  3e9e50: b570         	push	{r4, r5, r6, lr}
  3e9e52: b090         	sub	sp, #0x40
  3e9e54: 9001         	str	r0, [sp, #0x4]
  3e9e56: 4e5d         	ldr	r6, [pc, #0x174]        @ 0x3e9fcc <SoldierHostController::meleeAttack()+0x17c>
  3e9e58: 447e         	add	r6, pc
  3e9e5a: 9b01         	ldr	r3, [sp, #0x4]
  3e9e5c: ed93 7a44    	vldr	s14, [r3, #272]
  3e9e60: eddf 7a57    	vldr	s15, [pc, #348]         @ 0x3e9fc0 <SoldierHostController::meleeAttack()+0x170>
  3e9e64: ee67 7a27    	vmul.f32	s15, s14, s15
  3e9e68: eef1 7a67    	vneg.f32	s15, s15
  3e9e6c: edcd 7a03    	vstr	s15, [sp, #12]
  3e9e70: eddd 7a03    	vldr	s15, [sp, #12]
  3e9e74: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9e78: ec51 0b17    	vmov	r0, r1, d7
  3e9e7c: f6ec e844    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x113f78
  3e9e80: 4604         	mov	r4, r0
  3e9e82: 460d         	mov	r5, r1
  3e9e84: eddd 7a03    	vldr	s15, [sp, #12]
  3e9e88: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9e8c: ec51 0b17    	vmov	r0, r1, d7
  3e9e90: f6ec e840    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x113f80
  3e9e94: 4602         	mov	r2, r0
  3e9e96: 460b         	mov	r3, r1
  3e9e98: a908         	add	r1, sp, #0x20
  3e9e9a: 4608         	mov	r0, r1
  3e9e9c: ec45 4b10    	vmov	d0, r4, r5
  3e9ea0: ec43 2b11    	vmov	d1, r2, r3
  3e9ea4: f7fa fe88    	bl	0x3e4bb8 <SoldierController::setAlive(bool)+0x230> @ imm = #-0x52f0
  3e9ea8: ab04         	add	r3, sp, #0x10
  3e9eaa: ed9d 6b08    	vldr	d6, [sp, #32]
  3e9eae: ed9d 7b0a    	vldr	d7, [sp, #40]
  3e9eb2: 4618         	mov	r0, r3
  3e9eb4: eeb0 0b46    	vmov.f64	d0, d6
  3e9eb8: eeb0 1b47    	vmov.f64	d1, d7
  3e9ebc: f7fa ff56    	bl	0x3e4d6c <SoldierController::setAlive(bool)+0x3e4> @ imm = #-0x5154
  3e9ec0: 9b01         	ldr	r3, [sp, #0x4]
  3e9ec2: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e9ec6: 9b01         	ldr	r3, [sp, #0x4]
  3e9ec8: ed93 7a79    	vldr	s14, [r3, #484]
  3e9ecc: 9b01         	ldr	r3, [sp, #0x4]
  3e9ece: edd3 7a6c    	vldr	s15, [r3, #432]
  3e9ed2: ee67 7a27    	vmul.f32	s15, s14, s15
  3e9ed6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e9eda: ab0c         	add	r3, sp, #0x30
  3e9edc: ed9d 5b04    	vldr	d5, [sp, #16]
  3e9ee0: ed9d 6b06    	vldr	d6, [sp, #24]
  3e9ee4: 4618         	mov	r0, r3
  3e9ee6: eeb0 0b45    	vmov.f64	d0, d5
  3e9eea: eeb0 1b46    	vmov.f64	d1, d6
  3e9eee: eeb0 2b47    	vmov.f64	d2, d7
  3e9ef2: f7fa fecd    	bl	0x3e4c90 <SoldierController::setAlive(bool)+0x308> @ imm = #-0x5266
  3e9ef6: ed9d 4b0c    	vldr	d4, [sp, #48]
  3e9efa: ed9d 5b0e    	vldr	d5, [sp, #56]
  3e9efe: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3e9fd0 <SoldierHostController::meleeAttack()+0x180>
  3e9f00: 447b         	add	r3, pc
  3e9f02: ed93 6b00    	vldr	d6, [r3]
  3e9f06: ed93 7b02    	vldr	d7, [r3, #8]
  3e9f0a: 4620         	mov	r0, r4
  3e9f0c: eeb0 0b44    	vmov.f64	d0, d4
  3e9f10: eeb0 1b45    	vmov.f64	d1, d5
  3e9f14: eeb0 2b46    	vmov.f64	d2, d6
  3e9f18: eeb0 3b47    	vmov.f64	d3, d7
  3e9f1c: f7fa ffa0    	bl	0x3e4e60 <SoldierController::setAlive(bool)+0x4d8> @ imm = #-0x50c0
  3e9f20: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3e9fd4 <SoldierHostController::meleeAttack()+0x184>
  3e9f22: 58f3         	ldr	r3, [r6, r3]
  3e9f24: 681b         	ldr	r3, [r3]
  3e9f26: 4618         	mov	r0, r3
  3e9f28: 2102         	movs	r1, #0x2
  3e9f2a: f00d ff49    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xde92
  3e9f2e: 9b01         	ldr	r3, [sp, #0x4]
  3e9f30: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9f34: 4618         	mov	r0, r3
  3e9f36: f04f 0200    	mov.w	r2, #0x0
  3e9f3a: f04f 0300    	mov.w	r3, #0x0
  3e9f3e: f2c4 0369    	movt	r3, #0x4069
  3e9f42: f009 ff8f    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0x9f1e
  3e9f46: 9b01         	ldr	r3, [sp, #0x4]
  3e9f48: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e9f4c: 4618         	mov	r0, r3
  3e9f4e: f04f 0100    	mov.w	r1, #0x0
  3e9f52: f2cc 21b4    	movt	r1, #0xc2b4
  3e9f56: f009 febd    	bl	0x3f3cd4 <SoldierView::setFiringAngleOffset(float)> @ imm = #0x9d7a
  3e9f5a: 9b01         	ldr	r3, [sp, #0x4]
  3e9f5c: 2201         	movs	r2, #0x1
  3e9f5e: f883 2166    	strb.w	r2, [r3, #0x166]
  3e9f62: 9b01         	ldr	r3, [sp, #0x4]
  3e9f64: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e9f68: 9a01         	ldr	r2, [sp, #0x4]
  3e9f6a: f502 74b4    	add.w	r4, r2, #0x168
  3e9f6e: 3328         	adds	r3, #0x28
  3e9f70: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e9f72: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e9f76: 9b01         	ldr	r3, [sp, #0x4]
  3e9f78: ed93 7a79    	vldr	s14, [r3, #484]
  3e9f7c: eddf 7a11    	vldr	s15, [pc, #68]          @ 0x3e9fc4 <SoldierHostController::meleeAttack()+0x174>
  3e9f80: ee77 7a67    	vsub.f32	s15, s14, s15
  3e9f84: eef5 7ac0    	vcmpe.f32	s15, #0
  3e9f88: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e9f8c: dd07         	ble	0x3e9f9e <SoldierHostController::meleeAttack()+0x14e> @ imm = #0xe
  3e9f8e: 9b01         	ldr	r3, [sp, #0x4]
  3e9f90: ed93 7a79    	vldr	s14, [r3, #484]
  3e9f94: eddf 7a0b    	vldr	s15, [pc, #44]          @ 0x3e9fc4 <SoldierHostController::meleeAttack()+0x174>
  3e9f98: ee77 7a67    	vsub.f32	s15, s14, s15
  3e9f9c: e001         	b	0x3e9fa2 <SoldierHostController::meleeAttack()+0x152> @ imm = #0x2
  3e9f9e: eddf 7a0a    	vldr	s15, [pc, #40]          @ 0x3e9fc8 <SoldierHostController::meleeAttack()+0x178>
  3e9fa2: 9b01         	ldr	r3, [sp, #0x4]
  3e9fa4: edc3 7a79    	vstr	s15, [r3, #484]
  3e9fa8: f1f6 fb82    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f6704
  3e9fac: 4603         	mov	r3, r0
  3e9fae: 4618         	mov	r0, r3
  3e9fb0: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3e9fd8 <SoldierHostController::meleeAttack()+0x188>
  3e9fb2: 447b         	add	r3, pc
  3e9fb4: 4619         	mov	r1, r3
  3e9fb6: 2200         	movs	r2, #0x0
  3e9fb8: f1f6 fdb8    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f6b70
  3e9fbc: b010         	add	sp, #0x40
  3e9fbe: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e9fbf); words below are literal-pool data ---
  3e9fc0: fa35 3c8e    	<unknown>
  3e9fc4: 0000         	movs	r0, r0
  3e9fc6: 420c         	tst	r4, r1
  3e9fc8: 0000         	movs	r0, r0
  3e9fca: 0000         	movs	r0, r0
  3e9fcc: 8bb0         	ldrh	r0, [r6, #0x1c]
  3e9fce: 0054         	lsls	r4, r2, #0x1
  3e9fd0: e5a4         	b	0x3e9b1c <SoldierHostController::checkMeleeCollision()+0x44> @ imm = #-0x4b8
  3e9fd2: 003e         	movs	r6, r7
  3e9fd4: d730         	bvc	0x3ea038 <SoldierHostController::endMeleeAttack(std::string, cpVect)+0x5c> @ imm = #0x60
  3e9fd6: ffff e46a    	<unknown>
  3e9fda: 003e         	movs	r6, r7

// ==== SoldierHostController::endMeleeAttack
//      file offset 0x3e9fdc (= ELF address; Ghidra 0x3f9fdc), 432 bytes, Thumb-2
  3e9fdc: b082         	sub	sp, #0x8
  3e9fde: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3e9fe2: b091         	sub	sp, #0x44
  3e9fe4: 900b         	str	r0, [sp, #0x2c]
  3e9fe6: 910a         	str	r1, [sp, #0x28]
  3e9fe8: a91a         	add	r1, sp, #0x68
  3e9fea: e881 000c    	stm.w	r1, {r2, r3}
  3e9fee: 9b0b         	ldr	r3, [sp, #0x2c]
  3e9ff0: f04f 0200    	mov.w	r2, #0x0
  3e9ff4: f8c3 2178    	str.w	r2, [r3, #0x178]
  3e9ff8: 9b0b         	ldr	r3, [sp, #0x2c]
  3e9ffa: 2200         	movs	r2, #0x0
  3e9ffc: f883 2166    	strb.w	r2, [r3, #0x166]
  3ea000: 980a         	ldr	r0, [sp, #0x28]
  3ea002: f3cb f82b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3cb056
  3ea006: 4603         	mov	r3, r0
  3ea008: 2b00         	cmp	r3, #0x0
  3ea00a: bf0c         	ite	eq
  3ea00c: 2300         	moveq	r3, #0x0
  3ea00e: 2301         	movne	r3, #0x1
  3ea010: b2db         	uxtb	r3, r3
  3ea012: 2b00         	cmp	r3, #0x0
  3ea014: f000 80b0    	beq.w	0x3ea178 <SoldierHostController::endMeleeAttack(std::string, cpVect)+0x19c> @ imm = #0x160
  3ea018: 9b0b         	ldr	r3, [sp, #0x2c]
  3ea01a: 681b         	ldr	r3, [r3]
  3ea01c: f503 730f    	add.w	r3, r3, #0x23c
  3ea020: 681b         	ldr	r3, [r3]
  3ea022: 980b         	ldr	r0, [sp, #0x2c]
  3ea024: 4798         	blx	r3
  3ea026: ee07 0a10    	vmov	s14, r0
  3ea02a: eddf 7a56    	vldr	s15, [pc, #344]         @ 0x3ea184 <SoldierHostController::endMeleeAttack(std::string, cpVect)+0x1a8>
  3ea02e: ee67 7a27    	vmul.f32	s15, s14, s15
  3ea032: eef1 7a67    	vneg.f32	s15, s15
  3ea036: edcd 7a0d    	vstr	s15, [sp, #52]
  3ea03a: 9b0b         	ldr	r3, [sp, #0x2c]
  3ea03c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ea040: 681b         	ldr	r3, [r3]
  3ea042: f503 7327    	add.w	r3, r3, #0x29c
  3ea046: 681b         	ldr	r3, [r3]
  3ea048: 9a0b         	ldr	r2, [sp, #0x2c]
  3ea04a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ea04e: 4610         	mov	r0, r2
  3ea050: 4798         	blx	r3
  3ea052: 4603         	mov	r3, r0
  3ea054: ee07 3a90    	vmov	s15, r3
  3ea058: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3ea05c: 9b0b         	ldr	r3, [sp, #0x2c]
  3ea05e: edd3 7a73    	vldr	s15, [r3, #460]
  3ea062: ee67 7a27    	vmul.f32	s15, s14, s15
  3ea066: edcd 7a0e    	vstr	s15, [sp, #56]
  3ea06a: ed9d 7b1a    	vldr	d7, [sp, #104]
  3ea06e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea072: ee17 0a90    	vmov	r0, s15
  3ea076: f6f2 fe05    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d3f6
  3ea07a: 4607         	mov	r7, r0
  3ea07c: ed9d 7b1c    	vldr	d7, [sp, #112]
  3ea080: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea084: ee17 0a90    	vmov	r0, s15
  3ea088: f6f2 fdfc    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d408
  3ea08c: 4606         	mov	r6, r0
  3ea08e: eddd 7a0d    	vldr	s15, [sp, #52]
  3ea092: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ea096: ec51 0b17    	vmov	r0, r1, d7
  3ea09a: f6eb ef36    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x114194
  3ea09e: ec41 0b17    	vmov	d7, r0, r1
  3ea0a2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea0a6: ee17 0a90    	vmov	r0, s15
  3ea0aa: f6f2 fdeb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d42a
  3ea0ae: 4605         	mov	r5, r0
  3ea0b0: eddd 7a0d    	vldr	s15, [sp, #52]
  3ea0b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ea0b8: ec51 0b17    	vmov	r0, r1, d7
  3ea0bc: f6eb ef2a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1141ac
  3ea0c0: ec41 0b17    	vmov	d7, r0, r1
  3ea0c4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea0c8: ee17 0a90    	vmov	r0, s15
  3ea0cc: f6f2 fdda    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d44c
  3ea0d0: 4604         	mov	r4, r0
  3ea0d2: 2000         	movs	r0, #0x0
  3ea0d4: f6fa fe18    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1053d0
  3ea0d8: 9009         	str	r0, [sp, #0x24]
  3ea0da: eddd 7a0e    	vldr	s15, [sp, #56]
  3ea0de: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3ea0e2: ee17 3a90    	vmov	r3, s15
  3ea0e6: 4618         	mov	r0, r3
  3ea0e8: f6fa fe0e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1053e4
  3ea0ec: 4683         	mov	r11, r0
  3ea0ee: 2000         	movs	r0, #0x0
  3ea0f0: f6fa fe0a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1053ec
  3ea0f4: 4682         	mov	r10, r0
  3ea0f6: 2000         	movs	r0, #0x0
  3ea0f8: f6fa fe06    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x1053f4
  3ea0fc: 4681         	mov	r9, r0
  3ea0fe: 980a         	ldr	r0, [sp, #0x28]
  3ea100: f1af fc9c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1af938
  3ea104: 4680         	mov	r8, r0
  3ea106: 9b0b         	ldr	r3, [sp, #0x2c]
  3ea108: 681b         	ldr	r3, [r3]
  3ea10a: f503 73e0    	add.w	r3, r3, #0x1c0
  3ea10e: 681b         	ldr	r3, [r3]
  3ea110: 9a0b         	ldr	r2, [sp, #0x2c]
  3ea112: a90c         	add	r1, sp, #0x30
  3ea114: 4608         	mov	r0, r1
  3ea116: 4611         	mov	r1, r2
  3ea118: 4798         	blx	r3
  3ea11a: ab0c         	add	r3, sp, #0x30
  3ea11c: 4618         	mov	r0, r3
  3ea11e: f1af fc8d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1af91a
  3ea122: 4603         	mov	r3, r0
  3ea124: 9909         	ldr	r1, [sp, #0x24]
  3ea126: 9100         	str	r1, [sp]
  3ea128: f8cd b004    	str.w	r11, [sp, #0x4]
  3ea12c: f8cd a008    	str.w	r10, [sp, #0x8]
  3ea130: f8cd 900c    	str.w	r9, [sp, #0xc]
  3ea134: f8cd 8010    	str.w	r8, [sp, #0x10]
  3ea138: 9305         	str	r3, [sp, #0x14]
  3ea13a: 2300         	movs	r3, #0x0
  3ea13c: 9306         	str	r3, [sp, #0x18]
  3ea13e: 4638         	mov	r0, r7
  3ea140: 4631         	mov	r1, r6
  3ea142: 462a         	mov	r2, r5
  3ea144: 4623         	mov	r3, r4
  3ea146: f1af fe63    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1afcc6
  3ea14a: 4603         	mov	r3, r0
  3ea14c: 930f         	str	r3, [sp, #0x3c]
  3ea14e: ab0c         	add	r3, sp, #0x30
  3ea150: 4618         	mov	r0, r3
  3ea152: f3cb fbdf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb7be
  3ea156: f1f6 faab    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f6556
  3ea15a: 4603         	mov	r3, r0
  3ea15c: 4618         	mov	r0, r3
  3ea15e: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3ea188 <SoldierHostController::endMeleeAttack(std::string, cpVect)+0x1ac>
  3ea160: 447b         	add	r3, pc
  3ea162: 4619         	mov	r1, r3
  3ea164: 9a0f         	ldr	r2, [sp, #0x3c]
  3ea166: f1f6 fce1    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f69c2
  3ea16a: e005         	b	0x3ea178 <SoldierHostController::endMeleeAttack(std::string, cpVect)+0x19c> @ imm = #0xa
  3ea16c: ab0c         	add	r3, sp, #0x30
  3ea16e: 4618         	mov	r0, r3
  3ea170: f3cb fbd0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb7a0
  3ea174: f39d ff9a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39df34
  3ea178: b011         	add	sp, #0x44
  3ea17a: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3ea17e: b002         	add	sp, #0x8
  3ea180: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3ea181); words below are literal-pool data ---
  3ea182: bf00         	nop
  3ea184: fa35 3c8e    	<unknown>
  3ea188: e2c8         	b	0x3ea71c <SoldierHostController::getWeaponWeightFactor()+0x44> @ imm = #0x590
  3ea18a: 003e         	movs	r6, r7

// ==== SoldierHostController::switchGrenades
//      file offset 0x3ea18c (= ELF address; Ghidra 0x3fa18c), 190 bytes, Thumb-2
  3ea18c: b510         	push	{r4, lr}
  3ea18e: b084         	sub	sp, #0x10
  3ea190: 9001         	str	r0, [sp, #0x4]
  3ea192: 9b01         	ldr	r3, [sp, #0x4]
  3ea194: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea198: 4618         	mov	r0, r3
  3ea19a: f1af ffa1    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1aff42
  3ea19e: 4603         	mov	r3, r0
  3ea1a0: 2b01         	cmp	r3, #0x1
  3ea1a2: bf94         	ite	ls
  3ea1a4: 2300         	movls	r3, #0x0
  3ea1a6: 2301         	movhi	r3, #0x1
  3ea1a8: b2db         	uxtb	r3, r3
  3ea1aa: 2b00         	cmp	r3, #0x0
  3ea1ac: d044         	beq	0x3ea238 <SoldierHostController::switchGrenades()+0xac> @ imm = #0x88
  3ea1ae: 9b01         	ldr	r3, [sp, #0x4]
  3ea1b0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea1b4: 4618         	mov	r0, r3
  3ea1b6: 2100         	movs	r1, #0x0
  3ea1b8: f1af ffb2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1aff64
  3ea1bc: 4603         	mov	r3, r0
  3ea1be: 9303         	str	r3, [sp, #0xc]
  3ea1c0: 9b01         	ldr	r3, [sp, #0x4]
  3ea1c2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea1c6: 4618         	mov	r0, r3
  3ea1c8: 2100         	movs	r1, #0x0
  3ea1ca: 2201         	movs	r2, #0x1
  3ea1cc: f1b0 f8a6    	bl	0x59a31c <cocos2d::CCArray::removeObjectAtIndex(unsigned int, bool)> @ imm = #0x1b014c
  3ea1d0: 9b01         	ldr	r3, [sp, #0x4]
  3ea1d2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea1d6: 4618         	mov	r0, r3
  3ea1d8: 9903         	ldr	r1, [sp, #0xc]
  3ea1da: f1b0 f847    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1b008e
  3ea1de: 9b01         	ldr	r3, [sp, #0x4]
  3ea1e0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ea1e4: 2b00         	cmp	r3, #0x0
  3ea1e6: d017         	beq	0x3ea218 <SoldierHostController::switchGrenades()+0x8c> @ imm = #0x2e
  3ea1e8: 9b01         	ldr	r3, [sp, #0x4]
  3ea1ea: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ea1ee: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3ea1f2: 681b         	ldr	r3, [r3]
  3ea1f4: 33f4         	adds	r3, #0xf4
  3ea1f6: 681b         	ldr	r3, [r3]
  3ea1f8: 9a01         	ldr	r2, [sp, #0x4]
  3ea1fa: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3ea1fe: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3ea202: 9a01         	ldr	r2, [sp, #0x4]
  3ea204: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ea208: 4608         	mov	r0, r1
  3ea20a: 4611         	mov	r1, r2
  3ea20c: 2200         	movs	r2, #0x0
  3ea20e: 4798         	blx	r3
  3ea210: 9b01         	ldr	r3, [sp, #0x4]
  3ea212: 2200         	movs	r2, #0x0
  3ea214: f8c3 2154    	str.w	r2, [r3, #0x154]
  3ea218: 9b01         	ldr	r3, [sp, #0x4]
  3ea21a: 681b         	ldr	r3, [r3]
  3ea21c: f503 7348    	add.w	r3, r3, #0x320
  3ea220: 681c         	ldr	r4, [r3]
  3ea222: 9b01         	ldr	r3, [sp, #0x4]
  3ea224: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea228: 4618         	mov	r0, r3
  3ea22a: 2100         	movs	r1, #0x0
  3ea22c: f1af ff78    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1afef0
  3ea230: 4603         	mov	r3, r0
  3ea232: 9801         	ldr	r0, [sp, #0x4]
  3ea234: 4619         	mov	r1, r3
  3ea236: 47a0         	blx	r4
  3ea238: 9b01         	ldr	r3, [sp, #0x4]
  3ea23a: 681b         	ldr	r3, [r3]
  3ea23c: f503 7349    	add.w	r3, r3, #0x324
  3ea240: 681b         	ldr	r3, [r3]
  3ea242: 9801         	ldr	r0, [sp, #0x4]
  3ea244: 4798         	blx	r3
  3ea246: b004         	add	sp, #0x10
  3ea248: bd10         	pop	{r4, pc}

// ==== SoldierHostController::getGrenadeCount
//      file offset 0x3ea24c (= ELF address; Ghidra 0x3fa24c), 106 bytes, Thumb-2
  3ea24c: b510         	push	{r4, lr}
  3ea24e: b086         	sub	sp, #0x18
  3ea250: 9001         	str	r0, [sp, #0x4]
  3ea252: 2300         	movs	r3, #0x0
  3ea254: 9303         	str	r3, [sp, #0xc]
  3ea256: 2300         	movs	r3, #0x0
  3ea258: 9304         	str	r3, [sp, #0x10]
  3ea25a: e019         	b	0x3ea290 <SoldierHostController::getGrenadeCount()+0x44> @ imm = #0x32
  3ea25c: 9b01         	ldr	r3, [sp, #0x4]
  3ea25e: f8d3 21ec    	ldr.w	r2, [r3, #0x1ec]
  3ea262: 9b04         	ldr	r3, [sp, #0x10]
  3ea264: 4610         	mov	r0, r2
  3ea266: 4619         	mov	r1, r3
  3ea268: f1af ff5a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1afeb4
  3ea26c: 4603         	mov	r3, r0
  3ea26e: 9305         	str	r3, [sp, #0x14]
  3ea270: 9b05         	ldr	r3, [sp, #0x14]
  3ea272: 681b         	ldr	r3, [r3]
  3ea274: f503 731d    	add.w	r3, r3, #0x274
  3ea278: 681b         	ldr	r3, [r3]
  3ea27a: 9805         	ldr	r0, [sp, #0x14]
  3ea27c: 4798         	blx	r3
  3ea27e: 4603         	mov	r3, r0
  3ea280: b29b         	uxth	r3, r3
  3ea282: b21b         	sxth	r3, r3
  3ea284: 9a03         	ldr	r2, [sp, #0xc]
  3ea286: 4413         	add	r3, r2
  3ea288: 9303         	str	r3, [sp, #0xc]
  3ea28a: 9b04         	ldr	r3, [sp, #0x10]
  3ea28c: 3301         	adds	r3, #0x1
  3ea28e: 9304         	str	r3, [sp, #0x10]
  3ea290: 9c04         	ldr	r4, [sp, #0x10]
  3ea292: 9b01         	ldr	r3, [sp, #0x4]
  3ea294: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea298: 4618         	mov	r0, r3
  3ea29a: f1af ff21    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1afe42
  3ea29e: 4603         	mov	r3, r0
  3ea2a0: 429c         	cmp	r4, r3
  3ea2a2: bf2c         	ite	hs
  3ea2a4: 2300         	movhs	r3, #0x0
  3ea2a6: 2301         	movlo	r3, #0x1
  3ea2a8: b2db         	uxtb	r3, r3
  3ea2aa: 2b00         	cmp	r3, #0x0
  3ea2ac: d1d6         	bne	0x3ea25c <SoldierHostController::getGrenadeCount()+0x10> @ imm = #-0x54
  3ea2ae: 9b03         	ldr	r3, [sp, #0xc]
  3ea2b0: 4618         	mov	r0, r3
  3ea2b2: b006         	add	sp, #0x18
  3ea2b4: bd10         	pop	{r4, pc}

// ==== SoldierHostController::throwDual
//      file offset 0x3ea2b8 (= ELF address; Ghidra 0x3fa2b8), 700 bytes, Thumb-2
  3ea2b8: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
  3ea2bc: b08f         	sub	sp, #0x3c
  3ea2be: 9005         	str	r0, [sp, #0x14]
  3ea2c0: 4ca6         	ldr	r4, [pc, #0x298]        @ 0x3ea55c <SoldierHostController::throwDual()+0x2a4>
  3ea2c2: 447c         	add	r4, pc
  3ea2c4: 9b05         	ldr	r3, [sp, #0x14]
  3ea2c6: 681b         	ldr	r3, [r3]
  3ea2c8: f503 7336    	add.w	r3, r3, #0x2d8
  3ea2cc: 681b         	ldr	r3, [r3]
  3ea2ce: 9805         	ldr	r0, [sp, #0x14]
  3ea2d0: 4798         	blx	r3
  3ea2d2: 4603         	mov	r3, r0
  3ea2d4: 2b00         	cmp	r3, #0x0
  3ea2d6: bfd4         	ite	le
  3ea2d8: 2300         	movle	r3, #0x0
  3ea2da: 2301         	movgt	r3, #0x1
  3ea2dc: b2db         	uxtb	r3, r3
  3ea2de: 2b00         	cmp	r3, #0x0
  3ea2e0: f000 8138    	beq.w	0x3ea554 <SoldierHostController::throwDual()+0x29c> @ imm = #0x270
  3ea2e4: 9b05         	ldr	r3, [sp, #0x14]
  3ea2e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea2ea: 4618         	mov	r0, r3
  3ea2ec: 2100         	movs	r1, #0x0
  3ea2ee: f1af ff17    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1afe2e
  3ea2f2: 4603         	mov	r3, r0
  3ea2f4: 9308         	str	r3, [sp, #0x20]
  3ea2f6: 9b08         	ldr	r3, [sp, #0x20]
  3ea2f8: 681b         	ldr	r3, [r3]
  3ea2fa: f503 731e    	add.w	r3, r3, #0x278
  3ea2fe: 681d         	ldr	r5, [r3]
  3ea300: 9b08         	ldr	r3, [sp, #0x20]
  3ea302: 681b         	ldr	r3, [r3]
  3ea304: f503 731d    	add.w	r3, r3, #0x274
  3ea308: 681b         	ldr	r3, [r3]
  3ea30a: 9808         	ldr	r0, [sp, #0x20]
  3ea30c: 4798         	blx	r3
  3ea30e: 4603         	mov	r3, r0
  3ea310: b29b         	uxth	r3, r3
  3ea312: b21b         	sxth	r3, r3
  3ea314: 3b01         	subs	r3, #0x1
  3ea316: 9808         	ldr	r0, [sp, #0x20]
  3ea318: 4619         	mov	r1, r3
  3ea31a: 47a8         	blx	r5
  3ea31c: 4b90         	ldr	r3, [pc, #0x240]        @ 0x3ea560 <SoldierHostController::throwDual()+0x2a8>
  3ea31e: 58e3         	ldr	r3, [r4, r3]
  3ea320: 681b         	ldr	r3, [r3]
  3ea322: 4618         	mov	r0, r3
  3ea324: 2103         	movs	r1, #0x3
  3ea326: f00d fd4b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0xda96
  3ea32a: 9b05         	ldr	r3, [sp, #0x14]
  3ea32c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ea330: 4618         	mov	r0, r3
  3ea332: f04f 0200    	mov.w	r2, #0x0
  3ea336: f04f 0300    	mov.w	r3, #0x0
  3ea33a: f2c4 0359    	movt	r3, #0x4059
  3ea33e: f009 fd9f    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0x9b3e
  3ea342: 9b05         	ldr	r3, [sp, #0x14]
  3ea344: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ea348: 2b00         	cmp	r3, #0x0
  3ea34a: d013         	beq	0x3ea374 <SoldierHostController::throwDual()+0xbc> @ imm = #0x26
  3ea34c: 9b05         	ldr	r3, [sp, #0x14]
  3ea34e: 681b         	ldr	r3, [r3]
  3ea350: f503 7303    	add.w	r3, r3, #0x20c
  3ea354: 681b         	ldr	r3, [r3]
  3ea356: 9805         	ldr	r0, [sp, #0x14]
  3ea358: 4798         	blx	r3
  3ea35a: f1f6 f9a9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f6352
  3ea35e: 4602         	mov	r2, r0
  3ea360: 9b05         	ldr	r3, [sp, #0x14]
  3ea362: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ea366: 4610         	mov	r0, r2
  3ea368: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x3ea564 <SoldierHostController::throwDual()+0x2ac>
  3ea36a: 447a         	add	r2, pc
  3ea36c: 4611         	mov	r1, r2
  3ea36e: 461a         	mov	r2, r3
  3ea370: f1f6 fbdc    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f67b8
  3ea374: f1f6 f99c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f6338
  3ea378: 4603         	mov	r3, r0
  3ea37a: 4618         	mov	r0, r3
  3ea37c: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x3ea568 <SoldierHostController::throwDual()+0x2b0>
  3ea37e: 447b         	add	r3, pc
  3ea380: 4619         	mov	r1, r3
  3ea382: 2200         	movs	r2, #0x0
  3ea384: f1f6 fbd2    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f67a4
  3ea388: 9b05         	ldr	r3, [sp, #0x14]
  3ea38a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ea38e: aa0a         	add	r2, sp, #0x28
  3ea390: 4610         	mov	r0, r2
  3ea392: 4619         	mov	r1, r3
  3ea394: f009 fe1c    	bl	0x3f3fd0 <SoldierView::getDualArmPoint()> @ imm = #0x9c38
  3ea398: ed9d 7b0a    	vldr	d7, [sp, #40]
  3ea39c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea3a0: ee17 0a90    	vmov	r0, s15
  3ea3a4: f6f2 fc6e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d724
  3ea3a8: 4607         	mov	r7, r0
  3ea3aa: ed9d 7b0c    	vldr	d7, [sp, #48]
  3ea3ae: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea3b2: ee17 0a90    	vmov	r0, s15
  3ea3b6: f6f2 fc65    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d736
  3ea3ba: 4606         	mov	r6, r0
  3ea3bc: 9b05         	ldr	r3, [sp, #0x14]
  3ea3be: 681b         	ldr	r3, [r3]
  3ea3c0: f503 730f    	add.w	r3, r3, #0x23c
  3ea3c4: 681b         	ldr	r3, [r3]
  3ea3c6: 9805         	ldr	r0, [sp, #0x14]
  3ea3c8: 4798         	blx	r3
  3ea3ca: 4603         	mov	r3, r0
  3ea3cc: 4618         	mov	r0, r3
  3ea3ce: f6f2 fc59    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d74e
  3ea3d2: 4605         	mov	r5, r0
  3ea3d4: 9b05         	ldr	r3, [sp, #0x14]
  3ea3d6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ea3da: ed93 7b0e    	vldr	d7, [r3, #56]
  3ea3de: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea3e2: ee17 0a90    	vmov	r0, s15
  3ea3e6: f6f2 fc4d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d766
  3ea3ea: 4604         	mov	r4, r0
  3ea3ec: 9b05         	ldr	r3, [sp, #0x14]
  3ea3ee: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ea3f2: ed93 7b10    	vldr	d7, [r3, #64]
  3ea3f6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ea3fa: ee17 0a90    	vmov	r0, s15
  3ea3fe: f6f2 fc41    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x10d77e
  3ea402: 4681         	mov	r9, r0
  3ea404: 9b05         	ldr	r3, [sp, #0x14]
  3ea406: 681b         	ldr	r3, [r3]
  3ea408: f503 73e0    	add.w	r3, r3, #0x1c0
  3ea40c: 681b         	ldr	r3, [r3]
  3ea40e: 9a05         	ldr	r2, [sp, #0x14]
  3ea410: a907         	add	r1, sp, #0x1c
  3ea412: 4608         	mov	r0, r1
  3ea414: 4611         	mov	r1, r2
  3ea416: 4798         	blx	r3
  3ea418: ab07         	add	r3, sp, #0x1c
  3ea41a: 4618         	mov	r0, r3
  3ea41c: f1af fb0e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1af61c
  3ea420: 4680         	mov	r8, r0
  3ea422: 9b08         	ldr	r3, [sp, #0x20]
  3ea424: 681b         	ldr	r3, [r3]
  3ea426: f503 731f    	add.w	r3, r3, #0x27c
  3ea42a: 681b         	ldr	r3, [r3]
  3ea42c: 9808         	ldr	r0, [sp, #0x20]
  3ea42e: 4798         	blx	r3
  3ea430: 4603         	mov	r3, r0
  3ea432: 4618         	mov	r0, r3
  3ea434: f6fa fc68    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x105730
  3ea438: 4603         	mov	r3, r0
  3ea43a: f8cd 9000    	str.w	r9, [sp]
  3ea43e: f8cd 8004    	str.w	r8, [sp, #0x4]
  3ea442: 9302         	str	r3, [sp, #0x8]
  3ea444: 2300         	movs	r3, #0x0
  3ea446: 9303         	str	r3, [sp, #0xc]
  3ea448: 4638         	mov	r0, r7
  3ea44a: 4631         	mov	r1, r6
  3ea44c: 462a         	mov	r2, r5
  3ea44e: 4623         	mov	r3, r4
  3ea450: f1af fcde    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1af9bc
  3ea454: 4603         	mov	r3, r0
  3ea456: 9309         	str	r3, [sp, #0x24]
  3ea458: ab07         	add	r3, sp, #0x1c
  3ea45a: 4618         	mov	r0, r3
  3ea45c: f3cb fa5a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb4b4
  3ea460: f1f6 f926    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f624c
  3ea464: 4603         	mov	r3, r0
  3ea466: 4618         	mov	r0, r3
  3ea468: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3ea56c <SoldierHostController::throwDual()+0x2b4>
  3ea46a: 447b         	add	r3, pc
  3ea46c: 4619         	mov	r1, r3
  3ea46e: 9a09         	ldr	r2, [sp, #0x24]
  3ea470: f1f6 fb5c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f66b8
  3ea474: 9b08         	ldr	r3, [sp, #0x20]
  3ea476: 681b         	ldr	r3, [r3]
  3ea478: f503 731d    	add.w	r3, r3, #0x274
  3ea47c: 681b         	ldr	r3, [r3]
  3ea47e: 9808         	ldr	r0, [sp, #0x20]
  3ea480: 4798         	blx	r3
  3ea482: 4603         	mov	r3, r0
  3ea484: b29b         	uxth	r3, r3
  3ea486: b21b         	sxth	r3, r3
  3ea488: 2b00         	cmp	r3, #0x0
  3ea48a: bf14         	ite	ne
  3ea48c: 2300         	movne	r3, #0x0
  3ea48e: 2301         	moveq	r3, #0x1
  3ea490: b2db         	uxtb	r3, r3
  3ea492: 2b00         	cmp	r3, #0x0
  3ea494: d050         	beq	0x3ea538 <SoldierHostController::throwDual()+0x280> @ imm = #0xa0
  3ea496: 9b05         	ldr	r3, [sp, #0x14]
  3ea498: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea49c: 4618         	mov	r0, r3
  3ea49e: 2100         	movs	r1, #0x0
  3ea4a0: 2201         	movs	r2, #0x1
  3ea4a2: f1af ff3b    	bl	0x59a31c <cocos2d::CCArray::removeObjectAtIndex(unsigned int, bool)> @ imm = #0x1afe76
  3ea4a6: 9b05         	ldr	r3, [sp, #0x14]
  3ea4a8: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3ea4ac: 2b00         	cmp	r3, #0x0
  3ea4ae: d017         	beq	0x3ea4e0 <SoldierHostController::throwDual()+0x228> @ imm = #0x2e
  3ea4b0: 9b05         	ldr	r3, [sp, #0x14]
  3ea4b2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ea4b6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3ea4ba: 681b         	ldr	r3, [r3]
  3ea4bc: 33f4         	adds	r3, #0xf4
  3ea4be: 681b         	ldr	r3, [r3]
  3ea4c0: 9a05         	ldr	r2, [sp, #0x14]
  3ea4c2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3ea4c6: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3ea4ca: 9a05         	ldr	r2, [sp, #0x14]
  3ea4cc: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3ea4d0: 4608         	mov	r0, r1
  3ea4d2: 4611         	mov	r1, r2
  3ea4d4: 2200         	movs	r2, #0x0
  3ea4d6: 4798         	blx	r3
  3ea4d8: 9b05         	ldr	r3, [sp, #0x14]
  3ea4da: 2200         	movs	r2, #0x0
  3ea4dc: f8c3 2154    	str.w	r2, [r3, #0x154]
  3ea4e0: 9b05         	ldr	r3, [sp, #0x14]
  3ea4e2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea4e6: 4618         	mov	r0, r3
  3ea4e8: f1af fdfa    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1afbf4
  3ea4ec: 4603         	mov	r3, r0
  3ea4ee: 2b00         	cmp	r3, #0x0
  3ea4f0: bf0c         	ite	eq
  3ea4f2: 2300         	moveq	r3, #0x0
  3ea4f4: 2301         	movne	r3, #0x1
  3ea4f6: b2db         	uxtb	r3, r3
  3ea4f8: 2b00         	cmp	r3, #0x0
  3ea4fa: d010         	beq	0x3ea51e <SoldierHostController::throwDual()+0x266> @ imm = #0x20
  3ea4fc: 9b05         	ldr	r3, [sp, #0x14]
  3ea4fe: 681b         	ldr	r3, [r3]
  3ea500: f503 7348    	add.w	r3, r3, #0x320
  3ea504: 681c         	ldr	r4, [r3]
  3ea506: 9b05         	ldr	r3, [sp, #0x14]
  3ea508: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3ea50c: 4618         	mov	r0, r3
  3ea50e: 2100         	movs	r1, #0x0
  3ea510: f1af fe06    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1afc0c
  3ea514: 4603         	mov	r3, r0
  3ea516: 9805         	ldr	r0, [sp, #0x14]
  3ea518: 4619         	mov	r1, r3
  3ea51a: 47a0         	blx	r4
  3ea51c: e00c         	b	0x3ea538 <SoldierHostController::throwDual()+0x280> @ imm = #0x18
  3ea51e: f1f6 f8c7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1f618e
  3ea522: 4602         	mov	r2, r0
  3ea524: 9b05         	ldr	r3, [sp, #0x14]
  3ea526: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ea52a: 4610         	mov	r0, r2
  3ea52c: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3ea570 <SoldierHostController::throwDual()+0x2b8>
  3ea52e: 447a         	add	r2, pc
  3ea530: 4611         	mov	r1, r2
  3ea532: 461a         	mov	r2, r3
  3ea534: f1f6 fafa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f65f4
  3ea538: 9b05         	ldr	r3, [sp, #0x14]
  3ea53a: 681b         	ldr	r3, [r3]
  3ea53c: f503 7349    	add.w	r3, r3, #0x324
  3ea540: 681b         	ldr	r3, [r3]
  3ea542: 9805         	ldr	r0, [sp, #0x14]
  3ea544: 4798         	blx	r3
  3ea546: e005         	b	0x3ea554 <SoldierHostController::throwDual()+0x29c> @ imm = #0xa
  3ea548: ab07         	add	r3, sp, #0x1c
  3ea54a: 4618         	mov	r0, r3
  3ea54c: f3cb f9e2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb3c4
  3ea550: f39d fdac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39db58
  3ea554: b00f         	add	sp, #0x3c
  3ea556: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
  ; --- end of code (Ghidra body ends at 0x3ea559); words below are literal-pool data ---
  3ea55a: bf00         	nop
  3ea55c: 8746         	strh	r6, [r0, #0x3a]
  3ea55e: 0054         	lsls	r4, r2, #0x1
  3ea560: d730         	bvc	0x3ea5c4 <SoldierHostController::weaponDidFire(Item*)+0x40> @ imm = #0x60
  3ea562: ffff e076    	vshr.u32	q15, q11, #0x1
  3ea566: 003e         	movs	r6, r7
  3ea568: e0ba         	b	0x3ea6e0 <SoldierHostController::getWeaponWeightFactor()+0x8> @ imm = #0x174
  3ea56a: 003e         	movs	r6, r7
  3ea56c: dfda         	svc	#0xda
  3ea56e: 003e         	movs	r6, r7
  3ea570: deb2         	udf	#0xb2
  3ea572: 003e         	movs	r6, r7

// ==== SoldierHostController::getMassFactor
//      file offset 0x3ea574 (= ELF address; Ghidra 0x3fa574), 16 bytes, Thumb-2
  3ea574: b082         	sub	sp, #0x8
  3ea576: 9001         	str	r0, [sp, #0x4]
  3ea578: 9b01         	ldr	r3, [sp, #0x4]
  3ea57a: f8d3 31b0    	ldr.w	r3, [r3, #0x1b0]
  3ea57e: 4618         	mov	r0, r3
  3ea580: b002         	add	sp, #0x8
  3ea582: 4770         	bx	lr

// ==== SoldierHostController::weaponDidFire
//      file offset 0x3ea584 (= ELF address; Ghidra 0x3fa584), 330 bytes, Thumb-2
  3ea584: b5f0         	push	{r4, r5, r6, r7, lr}
  3ea586: b08f         	sub	sp, #0x3c
  3ea588: 9009         	str	r0, [sp, #0x24]
  3ea58a: 9108         	str	r1, [sp, #0x20]
  3ea58c: 9b08         	ldr	r3, [sp, #0x20]
  3ea58e: 2b00         	cmp	r3, #0x0
  3ea590: d100         	bne	0x3ea594 <SoldierHostController::weaponDidFire(Item*)+0x10> @ imm = #0x0
  3ea592: e09a         	b	0x3ea6ca <SoldierHostController::weaponDidFire(Item*)+0x146> @ imm = #0x134
  3ea594: 9b08         	ldr	r3, [sp, #0x20]
  3ea596: 930d         	str	r3, [sp, #0x34]
  3ea598: f04f 0300    	mov.w	r3, #0x0
  3ea59c: 930c         	str	r3, [sp, #0x30]
  3ea59e: 9b09         	ldr	r3, [sp, #0x24]
  3ea5a0: 681b         	ldr	r3, [r3]
  3ea5a2: f503 73fe    	add.w	r3, r3, #0x1fc
  3ea5a6: 681b         	ldr	r3, [r3]
  3ea5a8: 9a09         	ldr	r2, [sp, #0x24]
  3ea5aa: 4610         	mov	r0, r2
  3ea5ac: 4798         	blx	r3
  3ea5ae: 4603         	mov	r3, r0
  3ea5b0: 2b00         	cmp	r3, #0x0
  3ea5b2: d00d         	beq	0x3ea5d0 <SoldierHostController::weaponDidFire(Item*)+0x4c> @ imm = #0x1a
  3ea5b4: 9b09         	ldr	r3, [sp, #0x24]
  3ea5b6: 681b         	ldr	r3, [r3]
  3ea5b8: f503 73fe    	add.w	r3, r3, #0x1fc
  3ea5bc: 681b         	ldr	r3, [r3]
  3ea5be: 9a09         	ldr	r2, [sp, #0x24]
  3ea5c0: 4610         	mov	r0, r2
  3ea5c2: 4798         	blx	r3
  3ea5c4: 4602         	mov	r2, r0
  3ea5c6: 9b0d         	ldr	r3, [sp, #0x34]
  3ea5c8: 429a         	cmp	r2, r3
  3ea5ca: d101         	bne	0x3ea5d0 <SoldierHostController::weaponDidFire(Item*)+0x4c> @ imm = #0x2
  3ea5cc: 2301         	movs	r3, #0x1
  3ea5ce: e000         	b	0x3ea5d2 <SoldierHostController::weaponDidFire(Item*)+0x4e> @ imm = #0x0
  3ea5d0: 2300         	movs	r3, #0x0
  3ea5d2: 2b00         	cmp	r3, #0x0
  3ea5d4: d01b         	beq	0x3ea60e <SoldierHostController::weaponDidFire(Item*)+0x8a> @ imm = #0x36
  3ea5d6: 9b09         	ldr	r3, [sp, #0x24]
  3ea5d8: 681b         	ldr	r3, [r3]
  3ea5da: f503 73ec    	add.w	r3, r3, #0x1d8
  3ea5de: 681b         	ldr	r3, [r3]
  3ea5e0: 9809         	ldr	r0, [sp, #0x24]
  3ea5e2: 4798         	blx	r3
  3ea5e4: 4603         	mov	r3, r0
  3ea5e6: 9a0d         	ldr	r2, [sp, #0x34]
  3ea5e8: edd2 7a5b    	vldr	s15, [r2, #364]
  3ea5ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ea5f0: 4618         	mov	r0, r3
  3ea5f2: ec53 2b17    	vmov	r2, r3, d7
  3ea5f6: f009 fc27    	bl	0x3f3e48 <SoldierView::setDualRecoilRotation(double)> @ imm = #0x984e
  3ea5fa: 9b09         	ldr	r3, [sp, #0x24]
  3ea5fc: 681b         	ldr	r3, [r3]
  3ea5fe: f503 7321    	add.w	r3, r3, #0x284
  3ea602: 681b         	ldr	r3, [r3]
  3ea604: 9809         	ldr	r0, [sp, #0x24]
  3ea606: 4798         	blx	r3
  3ea608: 4603         	mov	r3, r0
  3ea60a: 930c         	str	r3, [sp, #0x30]
  3ea60c: e01a         	b	0x3ea644 <SoldierHostController::weaponDidFire(Item*)+0xc0> @ imm = #0x34
  3ea60e: 9b09         	ldr	r3, [sp, #0x24]
  3ea610: 681b         	ldr	r3, [r3]
  3ea612: f503 73ec    	add.w	r3, r3, #0x1d8
  3ea616: 681b         	ldr	r3, [r3]
  3ea618: 9809         	ldr	r0, [sp, #0x24]
  3ea61a: 4798         	blx	r3
  3ea61c: 4603         	mov	r3, r0
  3ea61e: 9a0d         	ldr	r2, [sp, #0x34]
  3ea620: edd2 7a5b    	vldr	s15, [r2, #364]
  3ea624: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ea628: 4618         	mov	r0, r3
  3ea62a: ec53 2b17    	vmov	r2, r3, d7
  3ea62e: f009 fbfd    	bl	0x3f3e2c <SoldierView::setPrimaryRecoilRotation(double)> @ imm = #0x97fa
  3ea632: 9b09         	ldr	r3, [sp, #0x24]
  3ea634: 681b         	ldr	r3, [r3]
  3ea636: f503 730f    	add.w	r3, r3, #0x23c
  3ea63a: 681b         	ldr	r3, [r3]
  3ea63c: 9809         	ldr	r0, [sp, #0x24]
  3ea63e: 4798         	blx	r3
  3ea640: 4603         	mov	r3, r0
  3ea642: 930c         	str	r3, [sp, #0x30]
  3ea644: 9b0d         	ldr	r3, [sp, #0x34]
  3ea646: 681b         	ldr	r3, [r3]
  3ea648: f503 7344    	add.w	r3, r3, #0x310
  3ea64c: 681e         	ldr	r6, [r3]
  3ea64e: 9b09         	ldr	r3, [sp, #0x24]
  3ea650: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3ea654: 9b09         	ldr	r3, [sp, #0x24]
  3ea656: f8d3 7138    	ldr.w	r7, [r3, #0x138]
  3ea65a: 9b09         	ldr	r3, [sp, #0x24]
  3ea65c: 681b         	ldr	r3, [r3]
  3ea65e: f503 73e0    	add.w	r3, r3, #0x1c0
  3ea662: 681b         	ldr	r3, [r3]
  3ea664: 9a09         	ldr	r2, [sp, #0x24]
  3ea666: a90b         	add	r1, sp, #0x2c
  3ea668: 4608         	mov	r0, r1
  3ea66a: 4611         	mov	r1, r2
  3ea66c: 4798         	blx	r3
  3ea66e: ad02         	add	r5, sp, #0x8
  3ea670: f107 0338    	add.w	r3, r7, #0x38
  3ea674: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ea676: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3ea67a: f44f 6380    	mov.w	r3, #0x400
  3ea67e: 9306         	str	r3, [sp, #0x18]
  3ea680: ab0b         	add	r3, sp, #0x2c
  3ea682: 9307         	str	r3, [sp, #0x1c]
  3ea684: 466b         	mov	r3, sp
  3ea686: f104 0230    	add.w	r2, r4, #0x30
  3ea68a: e892 0003    	ldm.w	r2, {r0, r1}
  3ea68e: e883 0003    	stm.w	r3, {r0, r1}
  3ea692: f104 0328    	add.w	r3, r4, #0x28
  3ea696: cb0c         	ldm	r3, {r2, r3}
  3ea698: 980d         	ldr	r0, [sp, #0x34]
  3ea69a: 990c         	ldr	r1, [sp, #0x30]
  3ea69c: 47b0         	blx	r6
  3ea69e: ab0b         	add	r3, sp, #0x2c
  3ea6a0: 4618         	mov	r0, r3
  3ea6a2: f3cb f937    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb26e
  3ea6a6: 9b09         	ldr	r3, [sp, #0x24]
  3ea6a8: 681b         	ldr	r3, [r3]
  3ea6aa: f503 73ec    	add.w	r3, r3, #0x1d8
  3ea6ae: 681b         	ldr	r3, [r3]
  3ea6b0: 9809         	ldr	r0, [sp, #0x24]
  3ea6b2: 4798         	blx	r3
  3ea6b4: 4603         	mov	r3, r0
  3ea6b6: 4618         	mov	r0, r3
  3ea6b8: f009 fde8    	bl	0x3f428c <SoldierView::showLabel()> @ imm = #0x9bd0
  3ea6bc: e005         	b	0x3ea6ca <SoldierHostController::weaponDidFire(Item*)+0x146> @ imm = #0xa
  3ea6be: ab0b         	add	r3, sp, #0x2c
  3ea6c0: 4618         	mov	r0, r3
  3ea6c2: f3cb f927    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb24e
  3ea6c6: f39d fcf1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39d9e2
  3ea6ca: b00f         	add	sp, #0x3c
  3ea6cc: bdf0         	pop	{r4, r5, r6, r7, pc}

// ==== SoldierHostController::weaponDidFire
//      file offset 0x3ea6d0 (= ELF address; Ghidra 0x3fa6d0), 8 bytes, Thumb-2
  3ea6d0: f1a0 00f8    	sub.w	r0, r0, #0xf8
  3ea6d4: f7ff bf56    	b.w	0x3ea584 <SoldierHostController::weaponDidFire(Item*)> @ imm = #-0x154

// ==== SoldierHostController::getWeaponWeightFactor
//      file offset 0x3ea6d8 (= ELF address; Ghidra 0x3fa6d8), 188 bytes, Thumb-2
  3ea6d8: b500         	push	{lr}
  3ea6da: b085         	sub	sp, #0x14
  3ea6dc: 9001         	str	r0, [sp, #0x4]
  3ea6de: f04f 537e    	mov.w	r3, #0x3f800000
  3ea6e2: 9303         	str	r3, [sp, #0xc]
  3ea6e4: 9b01         	ldr	r3, [sp, #0x4]
  3ea6e6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ea6ea: 2b00         	cmp	r3, #0x0
  3ea6ec: d013         	beq	0x3ea716 <SoldierHostController::getWeaponWeightFactor()+0x3e> @ imm = #0x26
  3ea6ee: 9b01         	ldr	r3, [sp, #0x4]
  3ea6f0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ea6f4: 681b         	ldr	r3, [r3]
  3ea6f6: f503 7346    	add.w	r3, r3, #0x318
  3ea6fa: 681b         	ldr	r3, [r3]
  3ea6fc: 9a01         	ldr	r2, [sp, #0x4]
  3ea6fe: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3ea702: 4610         	mov	r0, r2
  3ea704: 4798         	blx	r3
  3ea706: ee07 0a10    	vmov	s14, r0
  3ea70a: eddd 7a03    	vldr	s15, [sp, #12]
  3ea70e: ee67 7a87    	vmul.f32	s15, s15, s14
  3ea712: edcd 7a03    	vstr	s15, [sp, #12]
  3ea716: 9b01         	ldr	r3, [sp, #0x4]
  3ea718: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ea71c: 2b00         	cmp	r3, #0x0
  3ea71e: d01b         	beq	0x3ea758 <SoldierHostController::getWeaponWeightFactor()+0x80> @ imm = #0x36
  3ea720: 9b01         	ldr	r3, [sp, #0x4]
  3ea722: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3ea726: 681b         	ldr	r3, [r3]
  3ea728: f503 7346    	add.w	r3, r3, #0x318
  3ea72c: 681b         	ldr	r3, [r3]
  3ea72e: 9a01         	ldr	r2, [sp, #0x4]
  3ea730: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3ea734: 4610         	mov	r0, r2
  3ea736: 4798         	blx	r3
  3ea738: ee07 0a10    	vmov	s14, r0
  3ea73c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3ea740: ee37 7a27    	vadd.f32	s14, s14, s15
  3ea744: eddd 7a03    	vldr	s15, [sp, #12]
  3ea748: ee27 7a27    	vmul.f32	s14, s14, s15
  3ea74c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3ea750: eec7 7a27    	vdiv.f32	s15, s14, s15
  3ea754: edcd 7a03    	vstr	s15, [sp, #12]
  3ea758: 9b01         	ldr	r3, [sp, #0x4]
  3ea75a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ea75e: 2b00         	cmp	r3, #0x0
  3ea760: d013         	beq	0x3ea78a <SoldierHostController::getWeaponWeightFactor()+0xb2> @ imm = #0x26
  3ea762: 9b01         	ldr	r3, [sp, #0x4]
  3ea764: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3ea768: 681b         	ldr	r3, [r3]
  3ea76a: f503 7346    	add.w	r3, r3, #0x318
  3ea76e: 681b         	ldr	r3, [r3]
  3ea770: 9a01         	ldr	r2, [sp, #0x4]
  3ea772: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3ea776: 4610         	mov	r0, r2
  3ea778: 4798         	blx	r3
  3ea77a: ee07 0a10    	vmov	s14, r0
  3ea77e: eddd 7a03    	vldr	s15, [sp, #12]
  3ea782: ee67 7a87    	vmul.f32	s15, s15, s14
  3ea786: edcd 7a03    	vstr	s15, [sp, #12]
  3ea78a: 9b03         	ldr	r3, [sp, #0xc]
  3ea78c: 4618         	mov	r0, r3
  3ea78e: b005         	add	sp, #0x14
  3ea790: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::isSameTeam
//      file offset 0x3ea794 (= ELF address; Ghidra 0x3fa794), 62 bytes, Thumb-2
  3ea794: b500         	push	{lr}
  3ea796: b083         	sub	sp, #0xc
  3ea798: 9001         	str	r0, [sp, #0x4]
  3ea79a: 9100         	str	r1, [sp]
  3ea79c: 9b00         	ldr	r3, [sp]
  3ea79e: 2b00         	cmp	r3, #0x0
  3ea7a0: d00d         	beq	0x3ea7be <SoldierHostController::isSameTeam(int)+0x2a> @ imm = #0x1a
  3ea7a2: 9b01         	ldr	r3, [sp, #0x4]
  3ea7a4: 681b         	ldr	r3, [r3]
  3ea7a6: f503 73e2    	add.w	r3, r3, #0x1c4
  3ea7aa: 681b         	ldr	r3, [r3]
  3ea7ac: 9a01         	ldr	r2, [sp, #0x4]
  3ea7ae: 4610         	mov	r0, r2
  3ea7b0: 4798         	blx	r3
  3ea7b2: 4602         	mov	r2, r0
  3ea7b4: 9b00         	ldr	r3, [sp]
  3ea7b6: 429a         	cmp	r2, r3
  3ea7b8: d101         	bne	0x3ea7be <SoldierHostController::isSameTeam(int)+0x2a> @ imm = #0x2
  3ea7ba: 2301         	movs	r3, #0x1
  3ea7bc: e000         	b	0x3ea7c0 <SoldierHostController::isSameTeam(int)+0x2c> @ imm = #0x0
  3ea7be: 2300         	movs	r3, #0x0
  3ea7c0: 2b00         	cmp	r3, #0x0
  3ea7c2: d001         	beq	0x3ea7c8 <SoldierHostController::isSameTeam(int)+0x34> @ imm = #0x2
  3ea7c4: 2301         	movs	r3, #0x1
  3ea7c6: e000         	b	0x3ea7ca <SoldierHostController::isSameTeam(int)+0x36> @ imm = #0x0
  3ea7c8: 2300         	movs	r3, #0x0
  3ea7ca: 4618         	mov	r0, r3
  3ea7cc: b003         	add	sp, #0xc
  3ea7ce: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierHostController::wasLastKillValid
//      file offset 0x3ea7d4 (= ELF address; Ghidra 0x3fa7d4), 260 bytes, Thumb-2
  3ea7d4: b510         	push	{r4, lr}
  3ea7d6: b086         	sub	sp, #0x18
  3ea7d8: 9001         	str	r0, [sp, #0x4]
  3ea7da: 4c3d         	ldr	r4, [pc, #0xf4]         @ 0x3ea8d0 <SoldierHostController::wasLastKillValid()+0xfc>
  3ea7dc: 447c         	add	r4, pc
  3ea7de: 9b01         	ldr	r3, [sp, #0x4]
  3ea7e0: 681b         	ldr	r3, [r3]
  3ea7e2: f503 73dc    	add.w	r3, r3, #0x1b8
  3ea7e6: 681b         	ldr	r3, [r3]
  3ea7e8: 9a01         	ldr	r2, [sp, #0x4]
  3ea7ea: a902         	add	r1, sp, #0x8
  3ea7ec: 4608         	mov	r0, r1
  3ea7ee: 4611         	mov	r1, r2
  3ea7f0: 4798         	blx	r3
  3ea7f2: 9b01         	ldr	r3, [sp, #0x4]
  3ea7f4: 681b         	ldr	r3, [r3]
  3ea7f6: f503 73e0    	add.w	r3, r3, #0x1c0
  3ea7fa: 681b         	ldr	r3, [r3]
  3ea7fc: 9a01         	ldr	r2, [sp, #0x4]
  3ea7fe: a903         	add	r1, sp, #0xc
  3ea800: 4608         	mov	r0, r1
  3ea802: 4611         	mov	r1, r2
  3ea804: 4798         	blx	r3
  3ea806: aa02         	add	r2, sp, #0x8
  3ea808: ab03         	add	r3, sp, #0xc
  3ea80a: 4610         	mov	r0, r2
  3ea80c: 4619         	mov	r1, r3
  3ea80e: f3ca ff35    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3cae6a
  3ea812: 4603         	mov	r3, r0
  3ea814: 2b00         	cmp	r3, #0x0
  3ea816: bf14         	ite	ne
  3ea818: 2300         	movne	r3, #0x0
  3ea81a: 2301         	moveq	r3, #0x1
  3ea81c: b2db         	uxtb	r3, r3
  3ea81e: 2b00         	cmp	r3, #0x0
  3ea820: d001         	beq	0x3ea826 <SoldierHostController::wasLastKillValid()+0x52> @ imm = #0x2
  3ea822: 2400         	movs	r4, #0x0
  3ea824: e036         	b	0x3ea894 <SoldierHostController::wasLastKillValid()+0xc0> @ imm = #0x6c
  3ea826: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3ea8d4 <SoldierHostController::wasLastKillValid()+0x100>
  3ea828: 58e3         	ldr	r3, [r4, r3]
  3ea82a: 681c         	ldr	r4, [r3]
  3ea82c: 9b01         	ldr	r3, [sp, #0x4]
  3ea82e: 681b         	ldr	r3, [r3]
  3ea830: f503 73dc    	add.w	r3, r3, #0x1b8
  3ea834: 681b         	ldr	r3, [r3]
  3ea836: 9a01         	ldr	r2, [sp, #0x4]
  3ea838: a904         	add	r1, sp, #0x10
  3ea83a: 4608         	mov	r0, r1
  3ea83c: 4611         	mov	r1, r2
  3ea83e: 4798         	blx	r3
  3ea840: ab04         	add	r3, sp, #0x10
  3ea842: 4620         	mov	r0, r4
  3ea844: 4619         	mov	r1, r3
  3ea846: f1a9 fb53    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1a96a6
  3ea84a: 4603         	mov	r3, r0
  3ea84c: 9305         	str	r3, [sp, #0x14]
  3ea84e: ab04         	add	r3, sp, #0x10
  3ea850: 4618         	mov	r0, r3
  3ea852: f3cb f85f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb0be
  3ea856: 9b05         	ldr	r3, [sp, #0x14]
  3ea858: 2b00         	cmp	r3, #0x0
  3ea85a: d015         	beq	0x3ea888 <SoldierHostController::wasLastKillValid()+0xb4> @ imm = #0x2a
  3ea85c: 9b01         	ldr	r3, [sp, #0x4]
  3ea85e: 681b         	ldr	r3, [r3]
  3ea860: f503 7340    	add.w	r3, r3, #0x300
  3ea864: 681c         	ldr	r4, [r3]
  3ea866: 9b05         	ldr	r3, [sp, #0x14]
  3ea868: 681b         	ldr	r3, [r3]
  3ea86a: f503 73e2    	add.w	r3, r3, #0x1c4
  3ea86e: 681b         	ldr	r3, [r3]
  3ea870: 9a05         	ldr	r2, [sp, #0x14]
  3ea872: 4610         	mov	r0, r2
  3ea874: 4798         	blx	r3
  3ea876: 4603         	mov	r3, r0
  3ea878: 9801         	ldr	r0, [sp, #0x4]
  3ea87a: 4619         	mov	r1, r3
  3ea87c: 47a0         	blx	r4
  3ea87e: 4603         	mov	r3, r0
  3ea880: 2b00         	cmp	r3, #0x0
  3ea882: d001         	beq	0x3ea888 <SoldierHostController::wasLastKillValid()+0xb4> @ imm = #0x2
  3ea884: 2301         	movs	r3, #0x1
  3ea886: e000         	b	0x3ea88a <SoldierHostController::wasLastKillValid()+0xb6> @ imm = #0x0
  3ea888: 2300         	movs	r3, #0x0
  3ea88a: 2b00         	cmp	r3, #0x0
  3ea88c: d001         	beq	0x3ea892 <SoldierHostController::wasLastKillValid()+0xbe> @ imm = #0x2
  3ea88e: 2400         	movs	r4, #0x0
  3ea890: e000         	b	0x3ea894 <SoldierHostController::wasLastKillValid()+0xc0> @ imm = #0x0
  3ea892: 2401         	movs	r4, #0x1
  3ea894: ab03         	add	r3, sp, #0xc
  3ea896: 4618         	mov	r0, r3
  3ea898: f3cb f83c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb078
  3ea89c: ab02         	add	r3, sp, #0x8
  3ea89e: 4618         	mov	r0, r3
  3ea8a0: f3cb f838    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb070
  3ea8a4: 4623         	mov	r3, r4
  3ea8a6: e00f         	b	0x3ea8c8 <SoldierHostController::wasLastKillValid()+0xf4> @ imm = #0x1e
  3ea8a8: ab04         	add	r3, sp, #0x10
  3ea8aa: 4618         	mov	r0, r3
  3ea8ac: f3cb f832    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb064
  3ea8b0: e7ff         	b	0x3ea8b2 <SoldierHostController::wasLastKillValid()+0xde> @ imm = #-0x2
  3ea8b2: ab03         	add	r3, sp, #0xc
  3ea8b4: 4618         	mov	r0, r3
  3ea8b6: f3cb f82d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb05a
  3ea8ba: e7ff         	b	0x3ea8bc <SoldierHostController::wasLastKillValid()+0xe8> @ imm = #-0x2
  3ea8bc: ab02         	add	r3, sp, #0x8
  3ea8be: 4618         	mov	r0, r3
  3ea8c0: f3cb f828    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3cb050
  3ea8c4: f39d fbf2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39d7e4
  3ea8c8: 4618         	mov	r0, r3
  3ea8ca: b006         	add	sp, #0x18
  3ea8cc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ea8cd); words below are literal-pool data ---
  3ea8ce: bf00         	nop
  3ea8d0: 822c         	strh	r4, [r5, #0x10]
  3ea8d2: 0054         	lsls	r4, r2, #0x1
  3ea8d4: d920         	bls	0x3ea918 <SoldierHostController::getBackupNadeWeapon()+0x1c> @ imm = #0x40
  3ea8d6: ffff b082    	<unknown>

// ==== SoldierHostController::setBackupStarterWeapon
//      file offset 0x3ea8d8 (= ELF address; Ghidra 0x3fa8d8), 18 bytes, Thumb-2
  3ea8d8: b082         	sub	sp, #0x8
  3ea8da: 9001         	str	r0, [sp, #0x4]
  3ea8dc: 9100         	str	r1, [sp]
  3ea8de: 9b01         	ldr	r3, [sp, #0x4]
  3ea8e0: 9a00         	ldr	r2, [sp]
  3ea8e2: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3ea8e6: b002         	add	sp, #0x8
  3ea8e8: 4770         	bx	lr

// ==== SoldierHostController::getBackupStarterWeapon
//      file offset 0x3ea8ec (= ELF address; Ghidra 0x3fa8ec), 16 bytes, Thumb-2
  3ea8ec: b082         	sub	sp, #0x8
  3ea8ee: 9001         	str	r0, [sp, #0x4]
  3ea8f0: 9b01         	ldr	r3, [sp, #0x4]
  3ea8f2: f8d3 31f4    	ldr.w	r3, [r3, #0x1f4]
  3ea8f6: 4618         	mov	r0, r3
  3ea8f8: b002         	add	sp, #0x8
  3ea8fa: 4770         	bx	lr

// ==== SoldierHostController::getBackupNadeWeapon
//      file offset 0x3ea8fc (= ELF address; Ghidra 0x3fa8fc), 16 bytes, Thumb-2
  3ea8fc: b082         	sub	sp, #0x8
  3ea8fe: 9001         	str	r0, [sp, #0x4]
  3ea900: 9b01         	ldr	r3, [sp, #0x4]
  3ea902: f8d3 31f8    	ldr.w	r3, [r3, #0x1f8]
  3ea906: 4618         	mov	r0, r3
  3ea908: b002         	add	sp, #0x8
  3ea90a: 4770         	bx	lr

// ==== SoldierHostController::create
//      file offset 0x3eb8c4 (= ELF address; Ghidra 0x3fb8c4), 112 bytes, Thumb-2
  3eb8c4: b510         	push	{r4, lr}
  3eb8c6: b082         	sub	sp, #0x8
  3eb8c8: f44f 7000    	mov.w	r0, #0x200
  3eb8cc: f39c f84a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x39c094
  3eb8d0: 4603         	mov	r3, r0
  3eb8d2: 461c         	mov	r4, r3
  3eb8d4: 4620         	mov	r0, r4
  3eb8d6: f7fa fb3b    	bl	0x3e5f50 <SoldierHostController::SoldierHostController()> @ imm = #-0x598a
  3eb8da: 9401         	str	r4, [sp, #0x4]
  3eb8dc: 9b01         	ldr	r3, [sp, #0x4]
  3eb8de: 2b00         	cmp	r3, #0x0
  3eb8e0: d00a         	beq	0x3eb8f8 <SoldierHostController::create()+0x34> @ imm = #0x14
  3eb8e2: 9b01         	ldr	r3, [sp, #0x4]
  3eb8e4: 681b         	ldr	r3, [r3]
  3eb8e6: 3318         	adds	r3, #0x18
  3eb8e8: 681b         	ldr	r3, [r3]
  3eb8ea: 9801         	ldr	r0, [sp, #0x4]
  3eb8ec: 4798         	blx	r3
  3eb8ee: 4603         	mov	r3, r0
  3eb8f0: 2b00         	cmp	r3, #0x0
  3eb8f2: d001         	beq	0x3eb8f8 <SoldierHostController::create()+0x34> @ imm = #0x2
  3eb8f4: 2301         	movs	r3, #0x1
  3eb8f6: e000         	b	0x3eb8fa <SoldierHostController::create()+0x36> @ imm = #0x0
  3eb8f8: 2300         	movs	r3, #0x0
  3eb8fa: 2b00         	cmp	r3, #0x0
  3eb8fc: d005         	beq	0x3eb90a <SoldierHostController::create()+0x46> @ imm = #0xa
  3eb8fe: 9b01         	ldr	r3, [sp, #0x4]
  3eb900: 4618         	mov	r0, r3
  3eb902: f1ac fafb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1ac5f6
  3eb906: 9b01         	ldr	r3, [sp, #0x4]
  3eb908: e011         	b	0x3eb92e <SoldierHostController::create()+0x6a> @ imm = #0x22
  3eb90a: 9b01         	ldr	r3, [sp, #0x4]
  3eb90c: 2b00         	cmp	r3, #0x0
  3eb90e: d005         	beq	0x3eb91c <SoldierHostController::create()+0x58> @ imm = #0xa
  3eb910: 9b01         	ldr	r3, [sp, #0x4]
  3eb912: 681b         	ldr	r3, [r3]
  3eb914: 3308         	adds	r3, #0x8
  3eb916: 681b         	ldr	r3, [r3]
  3eb918: 9801         	ldr	r0, [sp, #0x4]
  3eb91a: 4798         	blx	r3
  3eb91c: 2300         	movs	r3, #0x0
  3eb91e: 9301         	str	r3, [sp, #0x4]
  3eb920: 2300         	movs	r3, #0x0
  3eb922: e004         	b	0x3eb92e <SoldierHostController::create()+0x6a> @ imm = #0x8
  3eb924: 4620         	mov	r0, r4
  3eb926: f39c fbbd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c77a
  3eb92a: f39c fbbf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c77e
  3eb92e: 4618         	mov	r0, r3
  3eb930: b002         	add	sp, #0x8
  3eb932: bd10         	pop	{r4, pc}
