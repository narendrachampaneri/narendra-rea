// ZYWebView: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 8 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ZYWebView.cpp

// ==== ZYWebView::ZYWebView
//      file offset 0x428c94 (= ELF address; Ghidra 0x438c94), 44 bytes, Thumb-2
  428c94: b510         	push	{r4, lr}
  428c96: b082         	sub	sp, #0x8
  428c98: 9001         	str	r0, [sp, #0x4]
  428c9a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x428cb8 <ZYWebView::ZYWebView()+0x24>
  428c9c: 447c         	add	r4, pc
  428c9e: 9b01         	ldr	r3, [sp, #0x4]
  428ca0: 4618         	mov	r0, r3
  428ca2: f16f f863    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x16f0c6
  428ca6: 9b01         	ldr	r3, [sp, #0x4]
  428ca8: 4a04         	ldr	r2, [pc, #0x10]         @ 0x428cbc <ZYWebView::ZYWebView()+0x28>
  428caa: 58a2         	ldr	r2, [r4, r2]
  428cac: 3208         	adds	r2, #0x8
  428cae: 601a         	str	r2, [r3]
  428cb0: 9b01         	ldr	r3, [sp, #0x4]
  428cb2: 4618         	mov	r0, r3
  428cb4: b002         	add	sp, #0x8
  428cb6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x428cb7); words below are literal-pool data ---
  428cb8: 9d6c         	ldr	r5, [sp, #0x1b0]
  428cba: 0050         	lsls	r0, r2, #0x1
  428cbc: e02c         	b	0x428d18 <ZYWebView::showWebView(char const*, float, float, float, float)+0x4c> @ imm = #0x58
  428cbe: ffff b082    	<unknown>

// ==== ZYWebView::init
//      file offset 0x428cc0 (= ELF address; Ghidra 0x438cc0), 12 bytes, Thumb-2
  428cc0: b082         	sub	sp, #0x8
  428cc2: 9001         	str	r0, [sp, #0x4]
  428cc4: 2301         	movs	r3, #0x1
  428cc6: 4618         	mov	r0, r3
  428cc8: b002         	add	sp, #0x8
  428cca: 4770         	bx	lr

// ==== ZYWebView::showWebView
//      file offset 0x428ccc (= ELF address; Ghidra 0x438ccc), 334 bytes, Thumb-2
  428ccc: b500         	push	{lr}
  428cce: b093         	sub	sp, #0x4c
  428cd0: 9005         	str	r0, [sp, #0x14]
  428cd2: 9104         	str	r1, [sp, #0x10]
  428cd4: 9203         	str	r2, [sp, #0xc]
  428cd6: 9302         	str	r3, [sp, #0x8]
  428cd8: f1a4 fd5a    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1a4ab4
  428cdc: 4603         	mov	r3, r0
  428cde: 681a         	ldr	r2, [r3]
  428ce0: 322c         	adds	r2, #0x2c
  428ce2: 6812         	ldr	r2, [r2]
  428ce4: 4618         	mov	r0, r3
  428ce6: 4790         	blx	r2
  428ce8: 4603         	mov	r3, r0
  428cea: aa0a         	add	r2, sp, #0x28
  428cec: 4610         	mov	r0, r2
  428cee: 4619         	mov	r1, r3
  428cf0: f16a f9de    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x16a3bc
  428cf4: f1a4 fd4c    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1a4a98
  428cf8: 4603         	mov	r3, r0
  428cfa: 681a         	ldr	r2, [r3]
  428cfc: 3218         	adds	r2, #0x18
  428cfe: 6812         	ldr	r2, [r2]
  428d00: 4618         	mov	r0, r3
  428d02: 4790         	blx	r2
  428d04: 4603         	mov	r3, r0
  428d06: aa0c         	add	r2, sp, #0x30
  428d08: 4610         	mov	r0, r2
  428d0a: 4619         	mov	r1, r3
  428d0c: f16a f9d0    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x16a3a0
  428d10: f1a4 fd3e    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1a4a7c
  428d14: 4603         	mov	r3, r0
  428d16: 4618         	mov	r0, r3
  428d18: f1a4 fc1a    	bl	0x5cd550 <cocos2d::CCEGLViewProtocol::getScaleX() const> @ imm = #0x1a4834
  428d1c: 4603         	mov	r3, r0
  428d1e: 9307         	str	r3, [sp, #0x1c]
  428d20: f1a4 fd36    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x1a4a6c
  428d24: 4603         	mov	r3, r0
  428d26: 4618         	mov	r0, r3
  428d28: f1a4 fc1a    	bl	0x5cd560 <cocos2d::CCEGLViewProtocol::getScaleY() const> @ imm = #0x1a4834
  428d2c: 4603         	mov	r3, r0
  428d2e: 9308         	str	r3, [sp, #0x20]
  428d30: ed9d 7a0c    	vldr	s14, [sp, #48]
  428d34: eddd 7a07    	vldr	s15, [sp, #28]
  428d38: eec7 6a27    	vdiv.f32	s13, s14, s15
  428d3c: ed9d 7a0d    	vldr	s14, [sp, #52]
  428d40: eddd 7a08    	vldr	s15, [sp, #32]
  428d44: eec7 7a27    	vdiv.f32	s15, s14, s15
  428d48: ab0e         	add	r3, sp, #0x38
  428d4a: 4618         	mov	r0, r3
  428d4c: ee16 1a90    	vmov	r1, s13
  428d50: ee17 2a90    	vmov	r2, s15
  428d54: f16a f99e    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x16a33c
  428d58: ed9d 7a0b    	vldr	s14, [sp, #44]
  428d5c: eddd 7a0d    	vldr	s15, [sp, #52]
  428d60: eec7 7a27    	vdiv.f32	s15, s14, s15
  428d64: edcd 7a09    	vstr	s15, [sp, #36]
  428d68: ed9d 7a0e    	vldr	s14, [sp, #56]
  428d6c: eddd 7a0a    	vldr	s15, [sp, #40]
  428d70: ee37 7a67    	vsub.f32	s14, s14, s15
  428d74: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  428d78: eec7 6a27    	vdiv.f32	s13, s14, s15
  428d7c: ed9d 7a0f    	vldr	s14, [sp, #60]
  428d80: eddd 7a0b    	vldr	s15, [sp, #44]
  428d84: ee37 7a67    	vsub.f32	s14, s14, s15
  428d88: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  428d8c: eec7 7a27    	vdiv.f32	s15, s14, s15
  428d90: ab10         	add	r3, sp, #0x40
  428d92: 4618         	mov	r0, r3
  428d94: ee16 1a90    	vmov	r1, s13
  428d98: ee17 2a90    	vmov	r2, s15
  428d9c: f169 ffa8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x169f50
  428da0: ed9d 7a03    	vldr	s14, [sp, #12]
  428da4: eddd 7a09    	vldr	s15, [sp, #36]
  428da8: ee87 7a27    	vdiv.f32	s14, s14, s15
  428dac: eddd 6a10    	vldr	s13, [sp, #64]
  428db0: eddd 7a09    	vldr	s15, [sp, #36]
  428db4: eec6 7aa7    	vdiv.f32	s15, s13, s15
  428db8: ee77 7a27    	vadd.f32	s15, s14, s15
  428dbc: edcd 7a03    	vstr	s15, [sp, #12]
  428dc0: ed9d 7a02    	vldr	s14, [sp, #8]
  428dc4: eddd 7a09    	vldr	s15, [sp, #36]
  428dc8: ee87 7a27    	vdiv.f32	s14, s14, s15
  428dcc: eddd 6a11    	vldr	s13, [sp, #68]
  428dd0: eddd 7a09    	vldr	s15, [sp, #36]
  428dd4: eec6 7aa7    	vdiv.f32	s15, s13, s15
  428dd8: ee77 7a27    	vadd.f32	s15, s14, s15
  428ddc: edcd 7a02    	vstr	s15, [sp, #8]
  428de0: ed9d 7a14    	vldr	s14, [sp, #80]
  428de4: eddd 7a09    	vldr	s15, [sp, #36]
  428de8: eec7 7a27    	vdiv.f32	s15, s14, s15
  428dec: edcd 7a14    	vstr	s15, [sp, #80]
  428df0: ed9d 7a15    	vldr	s14, [sp, #84]
  428df4: eddd 7a09    	vldr	s15, [sp, #36]
  428df8: eec7 7a27    	vdiv.f32	s15, s14, s15
  428dfc: edcd 7a15    	vstr	s15, [sp, #84]
  428e00: 9b14         	ldr	r3, [sp, #0x50]
  428e02: 9300         	str	r3, [sp]
  428e04: 9b15         	ldr	r3, [sp, #0x54]
  428e06: 9301         	str	r3, [sp, #0x4]
  428e08: 9805         	ldr	r0, [sp, #0x14]
  428e0a: 9904         	ldr	r1, [sp, #0x10]
  428e0c: 9a03         	ldr	r2, [sp, #0xc]
  428e0e: 9b02         	ldr	r3, [sp, #0x8]
  428e10: f00b f88c    	bl	0x433f2c <ZYWebView::_privateShowWebView(char const*, float, float, float, float)> @ imm = #0xb118
  428e14: b013         	add	sp, #0x4c
  428e16: f85d fb04    	ldr	pc, [sp], #4

// ==== ZYWebView::~ZYWebView
//      file offset 0x433e68 (= ELF address; Ghidra 0x443e68), 64 bytes, Thumb-2
  433e68: b500         	push	{lr}
  433e6a: b083         	sub	sp, #0xc
  433e6c: 9001         	str	r0, [sp, #0x4]
  433e6e: 490c         	ldr	r1, [pc, #0x30]         @ 0x433ea0 <ZYWebView::~ZYWebView()+0x38>
  433e70: 4479         	add	r1, pc
  433e72: 9b01         	ldr	r3, [sp, #0x4]
  433e74: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x433ea4 <ZYWebView::~ZYWebView()+0x3c>
  433e76: 588a         	ldr	r2, [r1, r2]
  433e78: 3208         	adds	r2, #0x8
  433e7a: 601a         	str	r2, [r3]
  433e7c: 9801         	ldr	r0, [sp, #0x4]
  433e7e: f000 f91d    	bl	0x4340bc <ZYWebView::removeWebView()> @ imm = #0x23a
  433e82: 9b01         	ldr	r3, [sp, #0x4]
  433e84: 4618         	mov	r0, r3
  433e86: f163 ffa3    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x163f46
  433e8a: 2300         	movs	r3, #0x0
  433e8c: 2b00         	cmp	r3, #0x0
  433e8e: d002         	beq	0x433e96 <ZYWebView::~ZYWebView()+0x2e> @ imm = #0x4
  433e90: 9801         	ldr	r0, [sp, #0x4]
  433e92: f354 f907    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35420e
  433e96: 9b01         	ldr	r3, [sp, #0x4]
  433e98: 4618         	mov	r0, r3
  433e9a: b003         	add	sp, #0xc
  433e9c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x433e9f); words below are literal-pool data ---
  433ea0: eb98 004f    	<unknown>
  433ea4: e02c         	b	0x433f00 <getZYWebView()+0x3c> @ imm = #0x58
  433ea6: ffff b500    	<unknown>

// ==== ZYWebView::~ZYWebView
//      file offset 0x433ea8 (= ELF address; Ghidra 0x443ea8), 28 bytes, Thumb-2
  433ea8: b500         	push	{lr}
  433eaa: b083         	sub	sp, #0xc
  433eac: 9001         	str	r0, [sp, #0x4]
  433eae: 9801         	ldr	r0, [sp, #0x4]
  433eb0: f7ff ffda    	bl	0x433e68 <ZYWebView::~ZYWebView()> @ imm = #-0x4c
  433eb4: 9801         	ldr	r0, [sp, #0x4]
  433eb6: f354 f8f5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3541ea
  433eba: 9b01         	ldr	r3, [sp, #0x4]
  433ebc: 4618         	mov	r0, r3
  433ebe: b003         	add	sp, #0xc
  433ec0: f85d fb04    	ldr	pc, [sp], #4

// ==== ZYWebView::_privateShowWebView
//      file offset 0x433f2c (= ELF address; Ghidra 0x443f2c), 276 bytes, Thumb-2
  433f2c: b510         	push	{r4, lr}
  433f2e: b092         	sub	sp, #0x48
  433f30: 9007         	str	r0, [sp, #0x1c]
  433f32: 9106         	str	r1, [sp, #0x18]
  433f34: 9205         	str	r2, [sp, #0x14]
  433f36: 9304         	str	r3, [sp, #0x10]
  433f38: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x434028 <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0xfc>
  433f3a: 447c         	add	r4, pc
  433f3c: f7ff ffc2    	bl	0x433ec4 <getZYWebView()> @ imm = #-0x7c
  433f40: 4603         	mov	r3, r0
  433f42: 9309         	str	r3, [sp, #0x24]
  433f44: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x43402c <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x100>
  433f46: 58e3         	ldr	r3, [r4, r3]
  433f48: 681b         	ldr	r3, [r3]
  433f4a: aa0f         	add	r2, sp, #0x3c
  433f4c: 4610         	mov	r0, r2
  433f4e: 4619         	mov	r1, r3
  433f50: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x434030 <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x104>
  433f52: 447b         	add	r3, pc
  433f54: 461a         	mov	r2, r3
  433f56: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x434034 <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x108>
  433f58: 447b         	add	r3, pc
  433f5a: f19e f8f3    	bl	0x5d2144 <cocos2d::JniHelper::getMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e1e6
  433f5e: 4603         	mov	r3, r0
  433f60: f88d 3023    	strb.w	r3, [sp, #0x23]
  433f64: f89d 3023    	ldrb.w	r3, [sp, #0x23]
  433f68: f083 0301    	eor	r3, r3, #0x1
  433f6c: b2db         	uxtb	r3, r3
  433f6e: 2b00         	cmp	r3, #0x0
  433f70: d12d         	bne	0x433fce <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0xa2> @ imm = #0x5a
  433f72: eddd 7a05    	vldr	s15, [sp, #20]
  433f76: eefd 7ae7    	vcvt.s32.f32	s15, s15
  433f7a: ee17 3a90    	vmov	r3, s15
  433f7e: 930a         	str	r3, [sp, #0x28]
  433f80: eddd 7a04    	vldr	s15, [sp, #16]
  433f84: eefd 7ae7    	vcvt.s32.f32	s15, s15
  433f88: ee17 3a90    	vmov	r3, s15
  433f8c: 930b         	str	r3, [sp, #0x2c]
  433f8e: eddd 7a14    	vldr	s15, [sp, #80]
  433f92: eefd 7ae7    	vcvt.s32.f32	s15, s15
  433f96: ee17 3a90    	vmov	r3, s15
  433f9a: 930c         	str	r3, [sp, #0x30]
  433f9c: eddd 7a15    	vldr	s15, [sp, #84]
  433fa0: eefd 7ae7    	vcvt.s32.f32	s15, s15
  433fa4: ee17 3a90    	vmov	r3, s15
  433fa8: 930d         	str	r3, [sp, #0x34]
  433faa: 9a0f         	ldr	r2, [sp, #0x3c]
  433fac: 9b11         	ldr	r3, [sp, #0x44]
  433fae: 990b         	ldr	r1, [sp, #0x2c]
  433fb0: 9100         	str	r1, [sp]
  433fb2: 990c         	ldr	r1, [sp, #0x30]
  433fb4: 9101         	str	r1, [sp, #0x4]
  433fb6: 990d         	ldr	r1, [sp, #0x34]
  433fb8: 9102         	str	r1, [sp, #0x8]
  433fba: 4610         	mov	r0, r2
  433fbc: 9909         	ldr	r1, [sp, #0x24]
  433fbe: 461a         	mov	r2, r3
  433fc0: 9b0a         	ldr	r3, [sp, #0x28]
  433fc2: f7ff ff3b    	bl	0x433e3c <_JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...)> @ imm = #-0x18a
  433fc6: 9b0f         	ldr	r3, [sp, #0x3c]
  433fc8: 4618         	mov	r0, r3
  433fca: f19e f96d    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e2da
  433fce: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x43402c <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x100>
  433fd0: 58e3         	ldr	r3, [r4, r3]
  433fd2: 681b         	ldr	r3, [r3]
  433fd4: aa0f         	add	r2, sp, #0x3c
  433fd6: 4610         	mov	r0, r2
  433fd8: 4619         	mov	r1, r3
  433fda: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x434038 <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x10c>
  433fdc: 447b         	add	r3, pc
  433fde: 461a         	mov	r2, r3
  433fe0: 4b16         	ldr	r3, [pc, #0x58]         @ 0x43403c <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0x110>
  433fe2: 447b         	add	r3, pc
  433fe4: f19e f8ae    	bl	0x5d2144 <cocos2d::JniHelper::getMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e15c
  433fe8: 4603         	mov	r3, r0
  433fea: f88d 3023    	strb.w	r3, [sp, #0x23]
  433fee: f89d 3023    	ldrb.w	r3, [sp, #0x23]
  433ff2: f083 0301    	eor	r3, r3, #0x1
  433ff6: b2db         	uxtb	r3, r3
  433ff8: 2b00         	cmp	r3, #0x0
  433ffa: d112         	bne	0x434022 <ZYWebView::_privateShowWebView(char const*, float, float, float, float)+0xf6> @ imm = #0x24
  433ffc: 9b0f         	ldr	r3, [sp, #0x3c]
  433ffe: 4618         	mov	r0, r3
  434000: 9906         	ldr	r1, [sp, #0x18]
  434002: f6a7 fa97    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x158ad2
  434006: 4603         	mov	r3, r0
  434008: 930e         	str	r3, [sp, #0x38]
  43400a: 9a0f         	ldr	r2, [sp, #0x3c]
  43400c: 9b11         	ldr	r3, [sp, #0x44]
  43400e: 4610         	mov	r0, r2
  434010: 9909         	ldr	r1, [sp, #0x24]
  434012: 461a         	mov	r2, r3
  434014: 9b0e         	ldr	r3, [sp, #0x38]
  434016: f7ff ff11    	bl	0x433e3c <_JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...)> @ imm = #-0x1de
  43401a: 9b0f         	ldr	r3, [sp, #0x3c]
  43401c: 4618         	mov	r0, r3
  43401e: f19e f943    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e286
  434022: b012         	add	sp, #0x48
  434024: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x434025); words below are literal-pool data ---
  434026: bf00         	nop
  434028: eace 004f    	pkhbt	r0, lr, pc, lsl #1
  43402c: e06c         	b	0x434108 <ZYWebView::removeWebView()+0x4c> @ imm = #0xd8
  43402e: ffff ac76    	<unknown>
  434032: 003a         	movs	r2, r7
  434034: ac80         	add	r4, sp, #0x200
  434036: 003a         	movs	r2, r7
  434038: ac04         	add	r4, sp, #0x10
  43403a: 003a         	movs	r2, r7
  43403c: ac0a         	add	r4, sp, #0x28
  43403e: 003a         	movs	r2, r7

// ==== ZYWebView::updateURL
//      file offset 0x434040 (= ELF address; Ghidra 0x444040), 124 bytes, Thumb-2
  434040: b510         	push	{r4, lr}
  434042: b088         	sub	sp, #0x20
  434044: 9001         	str	r0, [sp, #0x4]
  434046: 9100         	str	r1, [sp]
  434048: 4c18         	ldr	r4, [pc, #0x60]         @ 0x4340ac <ZYWebView::updateURL(char const*)+0x6c>
  43404a: 447c         	add	r4, pc
  43404c: f7ff ff3a    	bl	0x433ec4 <getZYWebView()> @ imm = #-0x18c
  434050: 4603         	mov	r3, r0
  434052: 9303         	str	r3, [sp, #0xc]
  434054: 4b16         	ldr	r3, [pc, #0x58]         @ 0x4340b0 <ZYWebView::updateURL(char const*)+0x70>
  434056: 58e3         	ldr	r3, [r4, r3]
  434058: 681b         	ldr	r3, [r3]
  43405a: aa05         	add	r2, sp, #0x14
  43405c: 4610         	mov	r0, r2
  43405e: 4619         	mov	r1, r3
  434060: 4b14         	ldr	r3, [pc, #0x50]         @ 0x4340b4 <ZYWebView::updateURL(char const*)+0x74>
  434062: 447b         	add	r3, pc
  434064: 461a         	mov	r2, r3
  434066: 4b14         	ldr	r3, [pc, #0x50]         @ 0x4340b8 <ZYWebView::updateURL(char const*)+0x78>
  434068: 447b         	add	r3, pc
  43406a: f19e f86b    	bl	0x5d2144 <cocos2d::JniHelper::getMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e0d6
  43406e: 4603         	mov	r3, r0
  434070: f88d 300b    	strb.w	r3, [sp, #0xb]
  434074: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  434078: f083 0301    	eor	r3, r3, #0x1
  43407c: b2db         	uxtb	r3, r3
  43407e: 2b00         	cmp	r3, #0x0
  434080: d112         	bne	0x4340a8 <ZYWebView::updateURL(char const*)+0x68> @ imm = #0x24
  434082: 9b05         	ldr	r3, [sp, #0x14]
  434084: 4618         	mov	r0, r3
  434086: 9900         	ldr	r1, [sp]
  434088: f6a7 fa54    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x158b58
  43408c: 4603         	mov	r3, r0
  43408e: 9304         	str	r3, [sp, #0x10]
  434090: 9a05         	ldr	r2, [sp, #0x14]
  434092: 9b07         	ldr	r3, [sp, #0x1c]
  434094: 4610         	mov	r0, r2
  434096: 9903         	ldr	r1, [sp, #0xc]
  434098: 461a         	mov	r2, r3
  43409a: 9b04         	ldr	r3, [sp, #0x10]
  43409c: f7ff fece    	bl	0x433e3c <_JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...)> @ imm = #-0x264
  4340a0: 9b05         	ldr	r3, [sp, #0x14]
  4340a2: 4618         	mov	r0, r3
  4340a4: f19e f900    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e200
  4340a8: b008         	add	sp, #0x20
  4340aa: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4340ab); words below are literal-pool data ---
  4340ac: e9be 004f    	<unknown>
  4340b0: e06c         	b	0x43418c <ZYWebView::removeWebView()+0xd0> @ imm = #0xd8
  4340b2: ffff ab7e    	<unknown>
  4340b6: 003a         	movs	r2, r7
  4340b8: ab84         	add	r3, sp, #0x210
  4340ba: 003a         	movs	r2, r7

// ==== ZYWebView::removeWebView
//      file offset 0x4340bc (= ELF address; Ghidra 0x4440bc), 112 bytes, Thumb-2
  4340bc: b510         	push	{r4, lr}
  4340be: b088         	sub	sp, #0x20
  4340c0: 9001         	str	r0, [sp, #0x4]
  4340c2: 4c16         	ldr	r4, [pc, #0x58]         @ 0x43411c <ZYWebView::removeWebView()+0x60>
  4340c4: 447c         	add	r4, pc
  4340c6: f7ff fefd    	bl	0x433ec4 <getZYWebView()> @ imm = #-0x206
  4340ca: 4603         	mov	r3, r0
  4340cc: 9304         	str	r3, [sp, #0x10]
  4340ce: 9b04         	ldr	r3, [sp, #0x10]
  4340d0: 2b00         	cmp	r3, #0x0
  4340d2: d021         	beq	0x434118 <ZYWebView::removeWebView()+0x5c> @ imm = #0x42
  4340d4: 4b12         	ldr	r3, [pc, #0x48]         @ 0x434120 <ZYWebView::removeWebView()+0x64>
  4340d6: 58e3         	ldr	r3, [r4, r3]
  4340d8: 681b         	ldr	r3, [r3]
  4340da: aa05         	add	r2, sp, #0x14
  4340dc: 4610         	mov	r0, r2
  4340de: 4619         	mov	r1, r3
  4340e0: 4b10         	ldr	r3, [pc, #0x40]         @ 0x434124 <ZYWebView::removeWebView()+0x68>
  4340e2: 447b         	add	r3, pc
  4340e4: 461a         	mov	r2, r3
  4340e6: 4b10         	ldr	r3, [pc, #0x40]         @ 0x434128 <ZYWebView::removeWebView()+0x6c>
  4340e8: 447b         	add	r3, pc
  4340ea: f19e f82b    	bl	0x5d2144 <cocos2d::JniHelper::getMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e056
  4340ee: 4603         	mov	r3, r0
  4340f0: f88d 300f    	strb.w	r3, [sp, #0xf]
  4340f4: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  4340f8: f083 0301    	eor	r3, r3, #0x1
  4340fc: b2db         	uxtb	r3, r3
  4340fe: 2b00         	cmp	r3, #0x0
  434100: d10a         	bne	0x434118 <ZYWebView::removeWebView()+0x5c> @ imm = #0x14
  434102: 9a05         	ldr	r2, [sp, #0x14]
  434104: 9b07         	ldr	r3, [sp, #0x1c]
  434106: 4610         	mov	r0, r2
  434108: 9904         	ldr	r1, [sp, #0x10]
  43410a: 461a         	mov	r2, r3
  43410c: f7ff fe96    	bl	0x433e3c <_JNIEnv::CallVoidMethod(_jobject*, _jmethodID*, ...)> @ imm = #-0x2d4
  434110: 9b05         	ldr	r3, [sp, #0x14]
  434112: 4618         	mov	r0, r3
  434114: f19e f8c8    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e190
  434118: b008         	add	sp, #0x20
  43411a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x43411b); words below are literal-pool data ---
  43411c: e944 004f    	strd	r0, r0, [r4, #-316]
  434120: e06c         	b	0x4341fc <cocos2d::extension::AssetsManager::AssetsManager(char const*, char const*, char const*)+0x8> @ imm = #0xd8
  434122: ffff ab22    	vtbl.8	d26, {d15, d16, d17, d18}, d18
  434126: 003a         	movs	r2, r7
  434128: ab2c         	add	r3, sp, #0xb0
  43412a: 003a         	movs	r2, r7
