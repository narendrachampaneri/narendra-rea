// AppDelegate: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 24 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AppDelegate.cpp

// ==== AppDelegate::AppDelegate
//      file offset 0x2e5adc (= ELF address; Ghidra 0x2f5adc), 112 bytes, Thumb-2
  2e5adc: b510         	push	{r4, lr}
  2e5ade: b082         	sub	sp, #0x8
  2e5ae0: 9001         	str	r0, [sp, #0x4]
  2e5ae2: 4c18         	ldr	r4, [pc, #0x60]         @ 0x2e5b44 <AppDelegate::AppDelegate()+0x68>
  2e5ae4: 447c         	add	r4, pc
  2e5ae6: 9b01         	ldr	r3, [sp, #0x4]
  2e5ae8: 4618         	mov	r0, r3
  2e5aea: f2e7 ffb3    	bl	0x5cda54 <cocos2d::CCApplication::CCApplication()> @ imm = #0x2e7f66
  2e5aee: 9b01         	ldr	r3, [sp, #0x4]
  2e5af0: 3304         	adds	r3, #0x4
  2e5af2: 4618         	mov	r0, r3
  2e5af4: f2a9 fda0    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x2a9b40
  2e5af8: 9b01         	ldr	r3, [sp, #0x4]
  2e5afa: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2e5b48 <AppDelegate::AppDelegate()+0x6c>
  2e5afc: 58a2         	ldr	r2, [r4, r2]
  2e5afe: 3208         	adds	r2, #0x8
  2e5b00: 601a         	str	r2, [r3]
  2e5b02: 9b01         	ldr	r3, [sp, #0x4]
  2e5b04: 4a10         	ldr	r2, [pc, #0x40]         @ 0x2e5b48 <AppDelegate::AppDelegate()+0x6c>
  2e5b06: 58a2         	ldr	r2, [r4, r2]
  2e5b08: 324c         	adds	r2, #0x4c
  2e5b0a: 605a         	str	r2, [r3, #0x4]
  2e5b0c: 9b01         	ldr	r3, [sp, #0x4]
  2e5b0e: 2200         	movs	r2, #0x0
  2e5b10: f883 20eb    	strb.w	r2, [r3, #0xeb]
  2e5b14: 9b01         	ldr	r3, [sp, #0x4]
  2e5b16: 2200         	movs	r2, #0x0
  2e5b18: f883 20e9    	strb.w	r2, [r3, #0xe9]
  2e5b1c: 9b01         	ldr	r3, [sp, #0x4]
  2e5b1e: 2200         	movs	r2, #0x0
  2e5b20: f883 20ea    	strb.w	r2, [r3, #0xea]
  2e5b24: 9b01         	ldr	r3, [sp, #0x4]
  2e5b26: 2200         	movs	r2, #0x0
  2e5b28: f883 20e8    	strb.w	r2, [r3, #0xe8]
  2e5b2c: 9b01         	ldr	r3, [sp, #0x4]
  2e5b2e: e005         	b	0x2e5b3c <AppDelegate::AppDelegate()+0x60> @ imm = #0xa
  2e5b30: 9b01         	ldr	r3, [sp, #0x4]
  2e5b32: 4618         	mov	r0, r3
  2e5b34: f2e7 ffaa    	bl	0x5cda8c <cocos2d::CCApplication::~CCApplication()> @ imm = #0x2e7f54
  2e5b38: f0a2 f2b8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a2570
  2e5b3c: 4618         	mov	r0, r3
  2e5b3e: b002         	add	sp, #0x8
  2e5b40: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e5b41); words below are literal-pool data ---
  2e5b42: bf00         	nop
  2e5b44: cf24         	ldm	r7!, {r2, r5}
  2e5b46: 0064         	lsls	r4, r4, #0x1
  2e5b48: d78c         	bvc	0x2e5a64 <cocos2d::CCInteger::acceptVisitor(cocos2d::CCDataVisitor&)+0xd24> @ imm = #-0xe8
  2e5b4a: ffff b500    	<unknown>

// ==== AppDelegate::~AppDelegate
//      file offset 0x2e5b4c (= ELF address; Ghidra 0x2f5b4c), 80 bytes, Thumb-2
  2e5b4c: b500         	push	{lr}
  2e5b4e: b083         	sub	sp, #0xc
  2e5b50: 9001         	str	r0, [sp, #0x4]
  2e5b52: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2e5b94 <AppDelegate::~AppDelegate()+0x48>
  2e5b54: 447b         	add	r3, pc
  2e5b56: 9a01         	ldr	r2, [sp, #0x4]
  2e5b58: 490f         	ldr	r1, [pc, #0x3c]         @ 0x2e5b98 <AppDelegate::~AppDelegate()+0x4c>
  2e5b5a: 5859         	ldr	r1, [r3, r1]
  2e5b5c: 3108         	adds	r1, #0x8
  2e5b5e: 6011         	str	r1, [r2]
  2e5b60: 9a01         	ldr	r2, [sp, #0x4]
  2e5b62: 490d         	ldr	r1, [pc, #0x34]         @ 0x2e5b98 <AppDelegate::~AppDelegate()+0x4c>
  2e5b64: 585b         	ldr	r3, [r3, r1]
  2e5b66: 334c         	adds	r3, #0x4c
  2e5b68: 6053         	str	r3, [r2, #0x4]
  2e5b6a: 9b01         	ldr	r3, [sp, #0x4]
  2e5b6c: 3304         	adds	r3, #0x4
  2e5b6e: 4618         	mov	r0, r3
  2e5b70: f2a9 fe68    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x2a9cd0
  2e5b74: 9b01         	ldr	r3, [sp, #0x4]
  2e5b76: 4618         	mov	r0, r3
  2e5b78: f2e7 ff88    	bl	0x5cda8c <cocos2d::CCApplication::~CCApplication()> @ imm = #0x2e7f10
  2e5b7c: 2300         	movs	r3, #0x0
  2e5b7e: 2b00         	cmp	r3, #0x0
  2e5b80: d002         	beq	0x2e5b88 <AppDelegate::~AppDelegate()+0x3c> @ imm = #0x4
  2e5b82: 9801         	ldr	r0, [sp, #0x4]
  2e5b84: f0a2 f28e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a251c
  2e5b88: 9b01         	ldr	r3, [sp, #0x4]
  2e5b8a: 4618         	mov	r0, r3
  2e5b8c: b003         	add	sp, #0xc
  2e5b8e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e5b91); words below are literal-pool data ---
  2e5b92: bf00         	nop
  2e5b94: ceb4         	ldm	r6!, {r2, r4, r5, r7}
  2e5b96: 0064         	lsls	r4, r4, #0x1
  2e5b98: d78c         	bvc	0x2e5ab4 <cocos2d::CCInteger::acceptVisitor(cocos2d::CCDataVisitor&)+0xd74> @ imm = #-0xe8
  2e5b9a: ffff f1a0    	<unknown>

// ==== AppDelegate::~AppDelegate
//      file offset 0x2e5b9c (= ELF address; Ghidra 0x2f5b9c), 8 bytes, Thumb-2
  2e5b9c: f1a0 0004    	sub.w	r0, r0, #0x4
  2e5ba0: f7ff bfd4    	b.w	0x2e5b4c <AppDelegate::~AppDelegate()> @ imm = #-0x58

// ==== AppDelegate::~AppDelegate
//      file offset 0x2e5ba4 (= ELF address; Ghidra 0x2f5ba4), 28 bytes, Thumb-2
  2e5ba4: b500         	push	{lr}
  2e5ba6: b083         	sub	sp, #0xc
  2e5ba8: 9001         	str	r0, [sp, #0x4]
  2e5baa: 9801         	ldr	r0, [sp, #0x4]
  2e5bac: f7ff ffce    	bl	0x2e5b4c <AppDelegate::~AppDelegate()> @ imm = #-0x64
  2e5bb0: 9801         	ldr	r0, [sp, #0x4]
  2e5bb2: f0a2 f277    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a24ee
  2e5bb6: 9b01         	ldr	r3, [sp, #0x4]
  2e5bb8: 4618         	mov	r0, r3
  2e5bba: b003         	add	sp, #0xc
  2e5bbc: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::~AppDelegate
//      file offset 0x2e5bc0 (= ELF address; Ghidra 0x2f5bc0), 8 bytes, Thumb-2
  2e5bc0: f1a0 0004    	sub.w	r0, r0, #0x4
  2e5bc4: f7ff bfee    	b.w	0x2e5ba4 <AppDelegate::~AppDelegate()> @ imm = #-0x24

// ==== AppDelegate::applicationDidFinishLaunching
//      file offset 0x2e5bc8 (= ELF address; Ghidra 0x2f5bc8), 10346 bytes, Thumb-2
  2e5bc8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  2e5bcc: b0d3         	sub	sp, #0x14c
  2e5bce: ab0f         	add	r3, sp, #0x3c
  2e5bd0: 6018         	str	r0, [r3]
  2e5bd2: 4cc3         	ldr	r4, [pc, #0x30c]        @ 0x2e5ee0 <AppDelegate::applicationDidFinishLaunching()+0x318>
  2e5bd4: 447c         	add	r4, pc
  2e5bd6: ab0f         	add	r3, sp, #0x3c
  2e5bd8: 681b         	ldr	r3, [r3]
  2e5bda: 2200         	movs	r2, #0x0
  2e5bdc: f883 20eb    	strb.w	r2, [r3, #0xeb]
  2e5be0: ab0f         	add	r3, sp, #0x3c
  2e5be2: 681b         	ldr	r3, [r3]
  2e5be4: 2200         	movs	r2, #0x0
  2e5be6: f883 20e9    	strb.w	r2, [r3, #0xe9]
  2e5bea: ab0f         	add	r3, sp, #0x3c
  2e5bec: 681b         	ldr	r3, [r3]
  2e5bee: 2200         	movs	r2, #0x0
  2e5bf0: f883 20ea    	strb.w	r2, [r3, #0xea]
  2e5bf4: f2b5 fcbe    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b597c
  2e5bf8: 4603         	mov	r3, r0
  2e5bfa: 9340         	str	r3, [sp, #0x100]
  2e5bfc: f2e7 fdc8    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x2e7b90
  2e5c00: 4603         	mov	r3, r0
  2e5c02: 9341         	str	r3, [sp, #0x104]
  2e5c04: f2e8 f96e    	bl	0x5cdee4 <cocos2d::CCFileUtils::sharedFileUtils()> @ imm = #0x2e82dc
  2e5c08: 4603         	mov	r3, r0
  2e5c0a: 9342         	str	r3, [sp, #0x108]
  2e5c0c: f2fc fd0e    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fca1c
  2e5c10: 4603         	mov	r3, r0
  2e5c12: 4618         	mov	r0, r3
  2e5c14: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x2e5ee4 <AppDelegate::applicationDidFinishLaunching()+0x31c>
  2e5c16: 447b         	add	r3, pc
  2e5c18: 4619         	mov	r1, r3
  2e5c1a: 2200         	movs	r2, #0x0
  2e5c1c: f2fc fb04    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2fc608
  2e5c20: 4603         	mov	r3, r0
  2e5c22: 461a         	mov	r2, r3
  2e5c24: 4bb0         	ldr	r3, [pc, #0x2c0]        @ 0x2e5ee8 <AppDelegate::applicationDidFinishLaunching()+0x320>
  2e5c26: 58e3         	ldr	r3, [r4, r3]
  2e5c28: 601a         	str	r2, [r3]
  2e5c2a: f2fc fcff    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fc9fe
  2e5c2e: 4603         	mov	r3, r0
  2e5c30: 4618         	mov	r0, r3
  2e5c32: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x2e5eec <AppDelegate::applicationDidFinishLaunching()+0x324>
  2e5c34: 447b         	add	r3, pc
  2e5c36: 4619         	mov	r1, r3
  2e5c38: 2201         	movs	r2, #0x1
  2e5c3a: f2fc fa8d    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x2fc51a
  2e5c3e: 4603         	mov	r3, r0
  2e5c40: 461a         	mov	r2, r3
  2e5c42: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x2e5ef0 <AppDelegate::applicationDidFinishLaunching()+0x328>
  2e5c44: 58e3         	ldr	r3, [r4, r3]
  2e5c46: 701a         	strb	r2, [r3]
  2e5c48: f2fc fcf0    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fc9e0
  2e5c4c: 4603         	mov	r3, r0
  2e5c4e: 4618         	mov	r0, r3
  2e5c50: 4ba8         	ldr	r3, [pc, #0x2a0]        @ 0x2e5ef4 <AppDelegate::applicationDidFinishLaunching()+0x32c>
  2e5c52: 447b         	add	r3, pc
  2e5c54: 4619         	mov	r1, r3
  2e5c56: 2200         	movs	r2, #0x0
  2e5c58: f2fc fae6    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2fc5cc
  2e5c5c: 4603         	mov	r3, r0
  2e5c5e: 461a         	mov	r2, r3
  2e5c60: 4ba5         	ldr	r3, [pc, #0x294]        @ 0x2e5ef8 <AppDelegate::applicationDidFinishLaunching()+0x330>
  2e5c62: 58e3         	ldr	r3, [r4, r3]
  2e5c64: 601a         	str	r2, [r3]
  2e5c66: f2fc fce1    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fc9c2
  2e5c6a: 4603         	mov	r3, r0
  2e5c6c: 4618         	mov	r0, r3
  2e5c6e: 4ba3         	ldr	r3, [pc, #0x28c]        @ 0x2e5efc <AppDelegate::applicationDidFinishLaunching()+0x334>
  2e5c70: 447b         	add	r3, pc
  2e5c72: 4619         	mov	r1, r3
  2e5c74: 2201         	movs	r2, #0x1
  2e5c76: f2fc fa6f    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x2fc4de
  2e5c7a: 4603         	mov	r3, r0
  2e5c7c: 461a         	mov	r2, r3
  2e5c7e: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x2e5f00 <AppDelegate::applicationDidFinishLaunching()+0x338>
  2e5c80: 58e3         	ldr	r3, [r4, r3]
  2e5c82: 701a         	strb	r2, [r3]
  2e5c84: f2fc fcd2    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fc9a4
  2e5c88: 4603         	mov	r3, r0
  2e5c8a: 4618         	mov	r0, r3
  2e5c8c: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x2e5f04 <AppDelegate::applicationDidFinishLaunching()+0x33c>
  2e5c8e: 447b         	add	r3, pc
  2e5c90: 4619         	mov	r1, r3
  2e5c92: 2200         	movs	r2, #0x0
  2e5c94: f2fc fa60    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x2fc4c0
  2e5c98: 4603         	mov	r3, r0
  2e5c9a: 461a         	mov	r2, r3
  2e5c9c: 4b9a         	ldr	r3, [pc, #0x268]        @ 0x2e5f08 <AppDelegate::applicationDidFinishLaunching()+0x340>
  2e5c9e: 58e3         	ldr	r3, [r4, r3]
  2e5ca0: 701a         	strb	r2, [r3]
  2e5ca2: f2fc fcc3    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fc986
  2e5ca6: 4603         	mov	r3, r0
  2e5ca8: 4618         	mov	r0, r3
  2e5caa: 4b98         	ldr	r3, [pc, #0x260]        @ 0x2e5f0c <AppDelegate::applicationDidFinishLaunching()+0x344>
  2e5cac: 447b         	add	r3, pc
  2e5cae: 4619         	mov	r1, r3
  2e5cb0: 2200         	movs	r2, #0x0
  2e5cb2: f2fc fa51    	bl	0x5e2158 <cocos2d::CCUserDefault::getBoolForKey(char const*, bool)> @ imm = #0x2fc4a2
  2e5cb6: 4603         	mov	r3, r0
  2e5cb8: 461a         	mov	r2, r3
  2e5cba: 4b95         	ldr	r3, [pc, #0x254]        @ 0x2e5f10 <AppDelegate::applicationDidFinishLaunching()+0x348>
  2e5cbc: 58e3         	ldr	r3, [r4, r3]
  2e5cbe: 701a         	strb	r2, [r3]
  2e5cc0: 9840         	ldr	r0, [sp, #0x100]
  2e5cc2: 9941         	ldr	r1, [sp, #0x104]
  2e5cc4: f2b6 f802    	bl	0x59bccc <cocos2d::CCDirector::setOpenGLView(cocos2d::CCEGLView*)> @ imm = #0x2b6004
  2e5cc8: f2e7 fd62    	bl	0x5cd790 <cocos2d::CCEGLView::sharedOpenGLView()> @ imm = #0x2e7ac4
  2e5ccc: 4603         	mov	r3, r0
  2e5cce: 681a         	ldr	r2, [r3]
  2e5cd0: 3218         	adds	r2, #0x18
  2e5cd2: 6812         	ldr	r2, [r2]
  2e5cd4: 4618         	mov	r0, r3
  2e5cd6: 4790         	blx	r2
  2e5cd8: 4603         	mov	r3, r0
  2e5cda: aa47         	add	r2, sp, #0x11c
  2e5cdc: 4610         	mov	r0, r2
  2e5cde: 4619         	mov	r1, r3
  2e5ce0: f2ad f9e6    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2ad3cc
  2e5ce4: 9b40         	ldr	r3, [sp, #0x100]
  2e5ce6: 681b         	ldr	r3, [r3]
  2e5ce8: 3320         	adds	r3, #0x20
  2e5cea: 6819         	ldr	r1, [r3]
  2e5cec: 9840         	ldr	r0, [sp, #0x100]
  2e5cee: f04f 3211    	mov.w	r2, #0x11111111
  2e5cf2: f241 1311    	movw	r3, #0x1111
  2e5cf6: f6c3 7391    	movt	r3, #0x3f91
  2e5cfa: 4788         	blx	r1
  2e5cfc: f13c fbc8    	bl	0x422490 <ApplicationInterface::isTabletDisplay()> @ imm = #0x13c790
  2e5d00: 4603         	mov	r3, r0
  2e5d02: 2b00         	cmp	r3, #0x0
  2e5d04: d010         	beq	0x2e5d28 <AppDelegate::applicationDidFinishLaunching()+0x160> @ imm = #0x20
  2e5d06: 9b41         	ldr	r3, [sp, #0x104]
  2e5d08: 681b         	ldr	r3, [r3]
  2e5d0a: 3328         	adds	r3, #0x28
  2e5d0c: 681d         	ldr	r5, [r3]
  2e5d0e: 9941         	ldr	r1, [sp, #0x104]
  2e5d10: 4b80         	ldr	r3, [pc, #0x200]        @ 0x2e5f14 <AppDelegate::applicationDidFinishLaunching()+0x34c>
  2e5d12: 447b         	add	r3, pc
  2e5d14: 681a         	ldr	r2, [r3]
  2e5d16: 4b80         	ldr	r3, [pc, #0x200]        @ 0x2e5f18 <AppDelegate::applicationDidFinishLaunching()+0x350>
  2e5d18: 447b         	add	r3, pc
  2e5d1a: 685b         	ldr	r3, [r3, #0x4]
  2e5d1c: 4608         	mov	r0, r1
  2e5d1e: 4611         	mov	r1, r2
  2e5d20: 461a         	mov	r2, r3
  2e5d22: 2304         	movs	r3, #0x4
  2e5d24: 47a8         	blx	r5
  2e5d26: e00f         	b	0x2e5d48 <AppDelegate::applicationDidFinishLaunching()+0x180> @ imm = #0x1e
  2e5d28: 9b41         	ldr	r3, [sp, #0x104]
  2e5d2a: 681b         	ldr	r3, [r3]
  2e5d2c: 3328         	adds	r3, #0x28
  2e5d2e: 681d         	ldr	r5, [r3]
  2e5d30: 9941         	ldr	r1, [sp, #0x104]
  2e5d32: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x2e5f1c <AppDelegate::applicationDidFinishLaunching()+0x354>
  2e5d34: 447b         	add	r3, pc
  2e5d36: 681a         	ldr	r2, [r3]
  2e5d38: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x2e5f20 <AppDelegate::applicationDidFinishLaunching()+0x358>
  2e5d3a: 447b         	add	r3, pc
  2e5d3c: 685b         	ldr	r3, [r3, #0x4]
  2e5d3e: 4608         	mov	r0, r1
  2e5d40: 4611         	mov	r1, r2
  2e5d42: 461a         	mov	r2, r3
  2e5d44: 2303         	movs	r3, #0x3
  2e5d46: 47a8         	blx	r5
  2e5d48: ab4f         	add	r3, sp, #0x13c
  2e5d4a: 4618         	mov	r0, r3
  2e5d4c: f7f6 f888    	bl	0x2dbe60 <std::vector<std::string, std::allocator<std::string>>::vector()> @ imm = #-0x9ef0
  2e5d50: aa47         	add	r2, sp, #0x11c
  2e5d52: ab47         	add	r3, sp, #0x11c
  2e5d54: 3304         	adds	r3, #0x4
  2e5d56: 4610         	mov	r0, r2
  2e5d58: 4619         	mov	r1, r3
  2e5d5a: f003 fa45    	bl	0x2e91e8 <float const& std::min<float>(float const&, float const&)> @ imm = #0x348a
  2e5d5e: 4603         	mov	r3, r0
  2e5d60: ed93 7a00    	vldr	s14, [r3]
  2e5d64: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x2e5f24 <AppDelegate::applicationDidFinishLaunching()+0x35c>
  2e5d66: 447b         	add	r3, pc
  2e5d68: edd3 7a01    	vldr	s15, [r3, #4]
  2e5d6c: eeb4 7ae7    	vcmpe.f32	s14, s15
  2e5d70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2e5d74: dd08         	ble	0x2e5d88 <AppDelegate::applicationDidFinishLaunching()+0x1c0> @ imm = #0x10
  2e5d76: ab0f         	add	r3, sp, #0x3c
  2e5d78: 6818         	ldr	r0, [r3]
  2e5d7a: f002 fb5b    	bl	0x2e8434 <AppDelegate::useRetina()> @ imm = #0x26b6
  2e5d7e: 4603         	mov	r3, r0
  2e5d80: 2b00         	cmp	r3, #0x0
  2e5d82: d001         	beq	0x2e5d88 <AppDelegate::applicationDidFinishLaunching()+0x1c0> @ imm = #0x2
  2e5d84: 2301         	movs	r3, #0x1
  2e5d86: e000         	b	0x2e5d8a <AppDelegate::applicationDidFinishLaunching()+0x1c2> @ imm = #0x0
  2e5d88: 2300         	movs	r3, #0x0
  2e5d8a: 2b00         	cmp	r3, #0x0
  2e5d8c: d02d         	beq	0x2e5dea <AppDelegate::applicationDidFinishLaunching()+0x222> @ imm = #0x5a
  2e5d8e: ab4d         	add	r3, sp, #0x134
  2e5d90: 4618         	mov	r0, r3
  2e5d92: f0a4 f32f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a465e
  2e5d96: aa10         	add	r2, sp, #0x40
  2e5d98: ab4d         	add	r3, sp, #0x134
  2e5d9a: 4610         	mov	r0, r2
  2e5d9c: 4a62         	ldr	r2, [pc, #0x188]        @ 0x2e5f28 <AppDelegate::applicationDidFinishLaunching()+0x360>
  2e5d9e: 447a         	add	r2, pc
  2e5da0: f102 0108    	add.w	r1, r2, #0x8
  2e5da4: 461a         	mov	r2, r3
  2e5da6: f0d0 f65b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d0cb6
  2e5daa: aa4f         	add	r2, sp, #0x13c
  2e5dac: ab10         	add	r3, sp, #0x40
  2e5dae: 4610         	mov	r0, r2
  2e5db0: 4619         	mov	r1, r3
  2e5db2: f7f6 f881    	bl	0x2dbeb8 <std::vector<std::string, std::allocator<std::string>>::push_back(std::string&&)> @ imm = #-0x9efe
  2e5db6: ab10         	add	r3, sp, #0x40
  2e5db8: 4618         	mov	r0, r3
  2e5dba: f0cf f5ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cfb56
  2e5dbe: ab4d         	add	r3, sp, #0x134
  2e5dc0: 4618         	mov	r0, r3
  2e5dc2: f0a4 f31b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a4636
  2e5dc6: 4b59         	ldr	r3, [pc, #0x164]        @ 0x2e5f2c <AppDelegate::applicationDidFinishLaunching()+0x364>
  2e5dc8: 447b         	add	r3, pc
  2e5dca: edd3 7a01    	vldr	s15, [r3, #4]
  2e5dce: ee37 7aa7    	vadd.f32	s14, s15, s15
  2e5dd2: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x2e5f30 <AppDelegate::applicationDidFinishLaunching()+0x368>
  2e5dd4: 447b         	add	r3, pc
  2e5dd6: edd3 7a01    	vldr	s15, [r3, #4]
  2e5dda: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e5dde: 9840         	ldr	r0, [sp, #0x100]
  2e5de0: ee17 1a90    	vmov	r1, s15
  2e5de4: f2b6 ffce    	bl	0x59cd84 <cocos2d::CCDirector::setContentScaleFactor(float)> @ imm = #0x2b6f9c
  2e5de8: e06d         	b	0x2e5ec6 <AppDelegate::applicationDidFinishLaunching()+0x2fe> @ imm = #0xda
  2e5dea: ed9d 7a48    	vldr	s14, [sp, #288]
  2e5dee: 4b51         	ldr	r3, [pc, #0x144]        @ 0x2e5f34 <AppDelegate::applicationDidFinishLaunching()+0x36c>
  2e5df0: 447b         	add	r3, pc
  2e5df2: edd3 7a01    	vldr	s15, [r3, #4]
  2e5df6: eeb4 7ae7    	vcmpe.f32	s14, s15
  2e5dfa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2e5dfe: dd08         	ble	0x2e5e12 <AppDelegate::applicationDidFinishLaunching()+0x24a> @ imm = #0x10
  2e5e00: ab0f         	add	r3, sp, #0x3c
  2e5e02: 6818         	ldr	r0, [r3]
  2e5e04: f002 fb16    	bl	0x2e8434 <AppDelegate::useRetina()> @ imm = #0x262c
  2e5e08: 4603         	mov	r3, r0
  2e5e0a: 2b00         	cmp	r3, #0x0
  2e5e0c: d001         	beq	0x2e5e12 <AppDelegate::applicationDidFinishLaunching()+0x24a> @ imm = #0x2
  2e5e0e: 2301         	movs	r3, #0x1
  2e5e10: e000         	b	0x2e5e14 <AppDelegate::applicationDidFinishLaunching()+0x24c> @ imm = #0x0
  2e5e12: 2300         	movs	r3, #0x0
  2e5e14: 2b00         	cmp	r3, #0x0
  2e5e16: d02b         	beq	0x2e5e70 <AppDelegate::applicationDidFinishLaunching()+0x2a8> @ imm = #0x56
  2e5e18: ab4d         	add	r3, sp, #0x134
  2e5e1a: 4618         	mov	r0, r3
  2e5e1c: f0a4 f2ea    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a45d4
  2e5e20: aa11         	add	r2, sp, #0x44
  2e5e22: ab4d         	add	r3, sp, #0x134
  2e5e24: 4610         	mov	r0, r2
  2e5e26: 4a44         	ldr	r2, [pc, #0x110]        @ 0x2e5f38 <AppDelegate::applicationDidFinishLaunching()+0x370>
  2e5e28: 447a         	add	r2, pc
  2e5e2a: f102 0108    	add.w	r1, r2, #0x8
  2e5e2e: 461a         	mov	r2, r3
  2e5e30: f0d0 f616    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d0c2c
  2e5e34: aa4f         	add	r2, sp, #0x13c
  2e5e36: ab11         	add	r3, sp, #0x44
  2e5e38: 4610         	mov	r0, r2
  2e5e3a: 4619         	mov	r1, r3
  2e5e3c: f7f6 f83c    	bl	0x2dbeb8 <std::vector<std::string, std::allocator<std::string>>::push_back(std::string&&)> @ imm = #-0x9f88
  2e5e40: ab11         	add	r3, sp, #0x44
  2e5e42: 4618         	mov	r0, r3
  2e5e44: f0cf f566    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cfacc
  2e5e48: ab4d         	add	r3, sp, #0x134
  2e5e4a: 4618         	mov	r0, r3
  2e5e4c: f0a4 f2d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a45ac
  2e5e50: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x2e5f3c <AppDelegate::applicationDidFinishLaunching()+0x374>
  2e5e52: 447b         	add	r3, pc
  2e5e54: ed93 7a01    	vldr	s14, [r3, #4]
  2e5e58: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x2e5f40 <AppDelegate::applicationDidFinishLaunching()+0x378>
  2e5e5a: 447b         	add	r3, pc
  2e5e5c: edd3 7a01    	vldr	s15, [r3, #4]
  2e5e60: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e5e64: 9840         	ldr	r0, [sp, #0x100]
  2e5e66: ee17 1a90    	vmov	r1, s15
  2e5e6a: f2b6 ff8b    	bl	0x59cd84 <cocos2d::CCDirector::setContentScaleFactor(float)> @ imm = #0x2b6f16
  2e5e6e: e02a         	b	0x2e5ec6 <AppDelegate::applicationDidFinishLaunching()+0x2fe> @ imm = #0x54
  2e5e70: ab4d         	add	r3, sp, #0x134
  2e5e72: 4618         	mov	r0, r3
  2e5e74: f0a4 f2be    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a457c
  2e5e78: aa12         	add	r2, sp, #0x48
  2e5e7a: ab4d         	add	r3, sp, #0x134
  2e5e7c: 4610         	mov	r0, r2
  2e5e7e: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x2e5f44 <AppDelegate::applicationDidFinishLaunching()+0x37c>
  2e5e80: 447a         	add	r2, pc
  2e5e82: f102 0108    	add.w	r1, r2, #0x8
  2e5e86: 461a         	mov	r2, r3
  2e5e88: f0d0 f5ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4d0bd4
  2e5e8c: aa4f         	add	r2, sp, #0x13c
  2e5e8e: ab12         	add	r3, sp, #0x48
  2e5e90: 4610         	mov	r0, r2
  2e5e92: 4619         	mov	r1, r3
  2e5e94: f7f6 f810    	bl	0x2dbeb8 <std::vector<std::string, std::allocator<std::string>>::push_back(std::string&&)> @ imm = #-0x9fe0
  2e5e98: ab12         	add	r3, sp, #0x48
  2e5e9a: 4618         	mov	r0, r3
  2e5e9c: f0cf f53a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cfa74
  2e5ea0: ab4d         	add	r3, sp, #0x134
  2e5ea2: 4618         	mov	r0, r3
  2e5ea4: f0a4 f2aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a4554
  2e5ea8: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x2e5f48 <AppDelegate::applicationDidFinishLaunching()+0x380>
  2e5eaa: 447b         	add	r3, pc
  2e5eac: ed93 7a01    	vldr	s14, [r3, #4]
  2e5eb0: 4b26         	ldr	r3, [pc, #0x98]         @ 0x2e5f4c <AppDelegate::applicationDidFinishLaunching()+0x384>
  2e5eb2: 447b         	add	r3, pc
  2e5eb4: edd3 7a01    	vldr	s15, [r3, #4]
  2e5eb8: eec7 7a27    	vdiv.f32	s15, s14, s15
  2e5ebc: 9840         	ldr	r0, [sp, #0x100]
  2e5ebe: ee17 1a90    	vmov	r1, s15
  2e5ec2: f2b6 ff5f    	bl	0x59cd84 <cocos2d::CCDirector::setContentScaleFactor(float)> @ imm = #0x2b6ebe
  2e5ec6: ab4f         	add	r3, sp, #0x13c
  2e5ec8: 9343         	str	r3, [sp, #0x10c]
  2e5eca: 9843         	ldr	r0, [sp, #0x10c]
  2e5ecc: f003 f9a0    	bl	0x2e9210 <std::vector<std::string, std::allocator<std::string>>::begin()> @ imm = #0x3340
  2e5ed0: 4603         	mov	r3, r0
  2e5ed2: 934b         	str	r3, [sp, #0x12c]
  2e5ed4: 9843         	ldr	r0, [sp, #0x10c]
  2e5ed6: f003 f9a9    	bl	0x2e922c <std::vector<std::string, std::allocator<std::string>>::end()> @ imm = #0x3352
  2e5eda: 4603         	mov	r3, r0
  2e5edc: 934d         	str	r3, [sp, #0x134]
  2e5ede: e049         	b	0x2e5f74 <AppDelegate::applicationDidFinishLaunching()+0x3ac> @ imm = #0x92
  2e5ee0: ce34         	ldm	r6!, {r2, r4, r5}
  2e5ee2: 0064         	lsls	r4, r4, #0x1
  2e5ee4: c8ce         	ldm	r0!, {r1, r2, r3, r6, r7}
  2e5ee6: 004d         	lsls	r5, r1, #0x1
  2e5ee8: d790         	bvc	0x2e5e0c <AppDelegate::applicationDidFinishLaunching()+0x244> @ imm = #-0xe0
  2e5eea: ffff c8bc    	<unknown>
  2e5eee: 004d         	lsls	r5, r1, #0x1
  2e5ef0: d794         	bvc	0x2e5e1c <AppDelegate::applicationDidFinishLaunching()+0x254> @ imm = #-0xd8
  2e5ef2: ffff c8a6    	vtbl.8	d28, {d31}, d22
  2e5ef6: 004d         	lsls	r5, r1, #0x1
  2e5ef8: d798         	bvc	0x2e5e2c <AppDelegate::applicationDidFinishLaunching()+0x264> @ imm = #-0xd0
  2e5efa: ffff c894    	<unknown>
  2e5efe: 004d         	lsls	r5, r1, #0x1
  2e5f00: d79c         	bvc	0x2e5e3c <AppDelegate::applicationDidFinishLaunching()+0x274> @ imm = #-0xc8
  2e5f02: ffff c882    	vtbl.8	d28, {d31}, d2
  2e5f06: 004d         	lsls	r5, r1, #0x1
  2e5f08: d7a0         	bvc	0x2e5e4c <AppDelegate::applicationDidFinishLaunching()+0x284> @ imm = #-0xc0
  2e5f0a: ffff c870    	vqrshrun.s64	d28, q8, #0x1
  2e5f0e: 004d         	lsls	r5, r1, #0x1
  2e5f10: d7a4         	bvc	0x2e5e5c <AppDelegate::applicationDidFinishLaunching()+0x294> @ imm = #-0xb8
  2e5f12: ffff 9a72    	<unknown>
  2e5f16: 0065         	lsls	r5, r4, #0x1
  2e5f18: 9a6c         	ldr	r2, [sp, #0x1b0]
  2e5f1a: 0065         	lsls	r5, r4, #0x1
  2e5f1c: 9a50         	ldr	r2, [sp, #0x140]
  2e5f1e: 0065         	lsls	r5, r4, #0x1
  2e5f20: 9a4a         	ldr	r2, [sp, #0x128]
  2e5f22: 0065         	lsls	r5, r4, #0x1
  2e5f24: d3b6         	blo	0x2e5e94 <AppDelegate::applicationDidFinishLaunching()+0x2cc> @ imm = #-0x94
  2e5f26: 0064         	lsls	r4, r4, #0x1
  2e5f28: d3ea         	blo	0x2e5f00 <AppDelegate::applicationDidFinishLaunching()+0x338> @ imm = #-0x2c
  2e5f2a: 0064         	lsls	r4, r4, #0x1
  2e5f2c: d2e8         	bhs	0x2e5f00 <AppDelegate::applicationDidFinishLaunching()+0x338> @ imm = #-0x30
  2e5f2e: 0064         	lsls	r4, r4, #0x1
  2e5f30: 99b0         	ldr	r1, [sp, #0x2c0]
  2e5f32: 0065         	lsls	r5, r4, #0x1
  2e5f34: d254         	bhs	0x2e5fe0 <AppDelegate::applicationDidFinishLaunching()+0x418> @ imm = #0xa8
  2e5f36: 0064         	lsls	r4, r4, #0x1
  2e5f38: d288         	bhs	0x2e5e4c <AppDelegate::applicationDidFinishLaunching()+0x284> @ imm = #-0xf0
  2e5f3a: 0064         	lsls	r4, r4, #0x1
  2e5f3c: d25e         	bhs	0x2e5ffc <AppDelegate::applicationDidFinishLaunching()+0x434> @ imm = #0xbc
  2e5f3e: 0064         	lsls	r4, r4, #0x1
  2e5f40: 992a         	ldr	r1, [sp, #0xa8]
  2e5f42: 0065         	lsls	r5, r4, #0x1
  2e5f44: d1c4         	bne	0x2e5ed0 <AppDelegate::applicationDidFinishLaunching()+0x308> @ imm = #-0x78
  2e5f46: 0064         	lsls	r4, r4, #0x1
  2e5f48: d19a         	bne	0x2e5e80 <AppDelegate::applicationDidFinishLaunching()+0x2b8> @ imm = #-0xcc
  2e5f4a: 0064         	lsls	r4, r4, #0x1
  2e5f4c: 98d2         	ldr	r0, [sp, #0x348]
  2e5f4e: 0065         	lsls	r5, r4, #0x1
  2e5f50: ab4b         	add	r3, sp, #0x12c
  2e5f52: 4618         	mov	r0, r3
  2e5f54: f003 f99c    	bl	0x2e9290 <__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>>::operator*() const> @ imm = #0x3338
  2e5f58: 4603         	mov	r3, r0
  2e5f5a: aa49         	add	r2, sp, #0x124
  2e5f5c: 4610         	mov	r0, r2
  2e5f5e: 4619         	mov	r1, r3
  2e5f60: f0d0 f2c2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4d0584
  2e5f64: ab49         	add	r3, sp, #0x124
  2e5f66: 4618         	mov	r0, r3
  2e5f68: f0cf f4d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cf9a8
  2e5f6c: ab4b         	add	r3, sp, #0x12c
  2e5f6e: 4618         	mov	r0, r3
  2e5f70: f003 f982    	bl	0x2e9278 <__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>>::operator++()> @ imm = #0x3304
  2e5f74: aa4b         	add	r2, sp, #0x12c
  2e5f76: ab4d         	add	r3, sp, #0x134
  2e5f78: 4610         	mov	r0, r2
  2e5f7a: 4619         	mov	r1, r3
  2e5f7c: f003 f966    	bl	0x2e924c <bool __gnu_cxx::operator!=<std::string*, std::vector<std::string, std::allocator<std::string>>>(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>> const&, __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>> const&)> @ imm = #0x32cc
  2e5f80: 4603         	mov	r3, r0
  2e5f82: 2b00         	cmp	r3, #0x0
  2e5f84: d1e4         	bne	0x2e5f50 <AppDelegate::applicationDidFinishLaunching()+0x388> @ imm = #-0x38
  2e5f86: 9b42         	ldr	r3, [sp, #0x108]
  2e5f88: 681b         	ldr	r3, [r3]
  2e5f8a: 3334         	adds	r3, #0x34
  2e5f8c: 681b         	ldr	r3, [r3]
  2e5f8e: aa4f         	add	r2, sp, #0x13c
  2e5f90: 9842         	ldr	r0, [sp, #0x108]
  2e5f92: 4611         	mov	r1, r2
  2e5f94: 4798         	blx	r3
  2e5f96: 9b42         	ldr	r3, [sp, #0x108]
  2e5f98: 681b         	ldr	r3, [r3]
  2e5f9a: 3338         	adds	r3, #0x38
  2e5f9c: 681b         	ldr	r3, [r3]
  2e5f9e: 9842         	ldr	r0, [sp, #0x108]
  2e5fa0: f8df 2bc4    	ldr.w	r2, [pc, #0xbc4]        @ 0x2e6b68 <AppDelegate::applicationDidFinishLaunching()+0xfa0>
  2e5fa4: 447a         	add	r2, pc
  2e5fa6: 4611         	mov	r1, r2
  2e5fa8: 4798         	blx	r3
  2e5faa: 9b42         	ldr	r3, [sp, #0x108]
  2e5fac: 681b         	ldr	r3, [r3]
  2e5fae: 3338         	adds	r3, #0x38
  2e5fb0: 681b         	ldr	r3, [r3]
  2e5fb2: 9842         	ldr	r0, [sp, #0x108]
  2e5fb4: f8df 2bb4    	ldr.w	r2, [pc, #0xbb4]        @ 0x2e6b6c <AppDelegate::applicationDidFinishLaunching()+0xfa4>
  2e5fb8: 447a         	add	r2, pc
  2e5fba: 4611         	mov	r1, r2
  2e5fbc: 4798         	blx	r3
  2e5fbe: 9b42         	ldr	r3, [sp, #0x108]
  2e5fc0: 681b         	ldr	r3, [r3]
  2e5fc2: 3338         	adds	r3, #0x38
  2e5fc4: 681b         	ldr	r3, [r3]
  2e5fc6: 9842         	ldr	r0, [sp, #0x108]
  2e5fc8: f8df 2ba4    	ldr.w	r2, [pc, #0xba4]        @ 0x2e6b70 <AppDelegate::applicationDidFinishLaunching()+0xfa8>
  2e5fcc: 447a         	add	r2, pc
  2e5fce: 4611         	mov	r1, r2
  2e5fd0: 4798         	blx	r3
  2e5fd2: 9b42         	ldr	r3, [sp, #0x108]
  2e5fd4: 681b         	ldr	r3, [r3]
  2e5fd6: 3338         	adds	r3, #0x38
  2e5fd8: 681b         	ldr	r3, [r3]
  2e5fda: 9842         	ldr	r0, [sp, #0x108]
  2e5fdc: f8df 2b94    	ldr.w	r2, [pc, #0xb94]        @ 0x2e6b74 <AppDelegate::applicationDidFinishLaunching()+0xfac>
  2e5fe0: 447a         	add	r2, pc
  2e5fe2: 4611         	mov	r1, r2
  2e5fe4: 4798         	blx	r3
  2e5fe6: 9840         	ldr	r0, [sp, #0x100]
  2e5fe8: 2100         	movs	r1, #0x0
  2e5fea: f2b6 f83f    	bl	0x59c06c <cocos2d::CCDirector::setDepthTest(bool)> @ imm = #0x2b607e
  2e5fee: 9840         	ldr	r0, [sp, #0x100]
  2e5ff0: 2100         	movs	r1, #0x0
  2e5ff2: f2b5 fef3    	bl	0x59bddc <cocos2d::CCDirector::setProjection(cocos2d::ccDirectorProjection)> @ imm = #0x2b5de6
  2e5ff6: f2b5 fabd    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b557a
  2e5ffa: 4603         	mov	r3, r0
  2e5ffc: aa4d         	add	r2, sp, #0x134
  2e5ffe: 4610         	mov	r0, r2
  2e6000: 4619         	mov	r1, r3
  2e6002: f2b6 f92b    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x2b6256
  2e6006: ab4d         	add	r3, sp, #0x134
  2e6008: f8df 2b6c    	ldr.w	r2, [pc, #0xb6c]        @ 0x2e6b78 <AppDelegate::applicationDidFinishLaunching()+0xfb0>
  2e600c: 58a2         	ldr	r2, [r4, r2]
  2e600e: 4610         	mov	r0, r2
  2e6010: 4619         	mov	r1, r3
  2e6012: f2ad f86d    	bl	0x5930f0 <cocos2d::CCSize::operator=(cocos2d::CCSize const&)> @ imm = #0x2ad0da
  2e6016: ab0f         	add	r3, sp, #0x3c
  2e6018: 6818         	ldr	r0, [r3]
  2e601a: f002 fa25    	bl	0x2e8468 <AppDelegate::initializePlatformStartupVariables()> @ imm = #0x244a
  2e601e: f3ea f87d    	bl	0x6d011c <cpInitChipmunk> @ imm = #0x3ea0fa
  2e6022: ab0f         	add	r3, sp, #0x3c
  2e6024: 6818         	ldr	r0, [r3]
  2e6026: f002 ffef    	bl	0x2e9008 <AppDelegate::loadTextures()> @ imm = #0x2fde
  2e602a: f8df 3b50    	ldr.w	r3, [pc, #0xb50]        @ 0x2e6b7c <AppDelegate::applicationDidFinishLaunching()+0xfb4>
  2e602e: 447b         	add	r3, pc
  2e6030: 4618         	mov	r0, r3
  2e6032: f2f2 f967    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f22ce
  2e6036: 4603         	mov	r3, r0
  2e6038: 4618         	mov	r0, r3
  2e603a: f7f6 fe4f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9362
  2e603e: 4603         	mov	r3, r0
  2e6040: f8df 2b3c    	ldr.w	r2, [pc, #0xb3c]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6044: 58a2         	ldr	r2, [r4, r2]
  2e6046: 4610         	mov	r0, r2
  2e6048: 4619         	mov	r1, r3
  2e604a: f2ad f983    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad306
  2e604e: f8df 3b34    	ldr.w	r3, [pc, #0xb34]        @ 0x2e6b84 <AppDelegate::applicationDidFinishLaunching()+0xfbc>
  2e6052: 447b         	add	r3, pc
  2e6054: 4618         	mov	r0, r3
  2e6056: f2f2 f955    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f22aa
  2e605a: 4603         	mov	r3, r0
  2e605c: 4618         	mov	r0, r3
  2e605e: f7f6 fe3d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9386
  2e6062: 4603         	mov	r3, r0
  2e6064: f8df 2b18    	ldr.w	r2, [pc, #0xb18]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6068: 58a2         	ldr	r2, [r4, r2]
  2e606a: f102 0010    	add.w	r0, r2, #0x10
  2e606e: 4619         	mov	r1, r3
  2e6070: f2ad f970    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad2e0
  2e6074: f8df 3b10    	ldr.w	r3, [pc, #0xb10]        @ 0x2e6b88 <AppDelegate::applicationDidFinishLaunching()+0xfc0>
  2e6078: 447b         	add	r3, pc
  2e607a: 4618         	mov	r0, r3
  2e607c: f2f2 f942    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2284
  2e6080: 4603         	mov	r3, r0
  2e6082: 4618         	mov	r0, r3
  2e6084: f7f6 fe2a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x93ac
  2e6088: 4603         	mov	r3, r0
  2e608a: f8df 2af4    	ldr.w	r2, [pc, #0xaf4]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e608e: 58a2         	ldr	r2, [r4, r2]
  2e6090: f102 0020    	add.w	r0, r2, #0x20
  2e6094: 4619         	mov	r1, r3
  2e6096: f2ad f95d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad2ba
  2e609a: f8df 3af0    	ldr.w	r3, [pc, #0xaf0]        @ 0x2e6b8c <AppDelegate::applicationDidFinishLaunching()+0xfc4>
  2e609e: 447b         	add	r3, pc
  2e60a0: 4618         	mov	r0, r3
  2e60a2: f2f2 f92f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f225e
  2e60a6: 4603         	mov	r3, r0
  2e60a8: 4618         	mov	r0, r3
  2e60aa: f7f6 fe17    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x93d2
  2e60ae: 4603         	mov	r3, r0
  2e60b0: f8df 2acc    	ldr.w	r2, [pc, #0xacc]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e60b4: 58a2         	ldr	r2, [r4, r2]
  2e60b6: f102 0030    	add.w	r0, r2, #0x30
  2e60ba: 4619         	mov	r1, r3
  2e60bc: f2ad f94a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad294
  2e60c0: f8df 3acc    	ldr.w	r3, [pc, #0xacc]        @ 0x2e6b90 <AppDelegate::applicationDidFinishLaunching()+0xfc8>
  2e60c4: 447b         	add	r3, pc
  2e60c6: 4618         	mov	r0, r3
  2e60c8: f2f2 f91c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2238
  2e60cc: 4603         	mov	r3, r0
  2e60ce: 4618         	mov	r0, r3
  2e60d0: f7f6 fe04    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x93f8
  2e60d4: 4603         	mov	r3, r0
  2e60d6: f8df 2aa8    	ldr.w	r2, [pc, #0xaa8]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e60da: 58a2         	ldr	r2, [r4, r2]
  2e60dc: f102 0040    	add.w	r0, r2, #0x40
  2e60e0: 4619         	mov	r1, r3
  2e60e2: f2ad f937    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad26e
  2e60e6: f8df 3aac    	ldr.w	r3, [pc, #0xaac]        @ 0x2e6b94 <AppDelegate::applicationDidFinishLaunching()+0xfcc>
  2e60ea: 447b         	add	r3, pc
  2e60ec: 4618         	mov	r0, r3
  2e60ee: f2f2 f909    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2212
  2e60f2: 4603         	mov	r3, r0
  2e60f4: 4618         	mov	r0, r3
  2e60f6: f7f6 fdf1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x941e
  2e60fa: 4603         	mov	r3, r0
  2e60fc: f8df 2a80    	ldr.w	r2, [pc, #0xa80]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6100: 58a2         	ldr	r2, [r4, r2]
  2e6102: f102 0050    	add.w	r0, r2, #0x50
  2e6106: 4619         	mov	r1, r3
  2e6108: f2ad f924    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad248
  2e610c: f8df 3a88    	ldr.w	r3, [pc, #0xa88]        @ 0x2e6b98 <AppDelegate::applicationDidFinishLaunching()+0xfd0>
  2e6110: 447b         	add	r3, pc
  2e6112: 4618         	mov	r0, r3
  2e6114: f2f2 f8f6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f21ec
  2e6118: 4603         	mov	r3, r0
  2e611a: 4618         	mov	r0, r3
  2e611c: f7f6 fdde    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9444
  2e6120: 4603         	mov	r3, r0
  2e6122: f8df 2a5c    	ldr.w	r2, [pc, #0xa5c]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6126: 58a2         	ldr	r2, [r4, r2]
  2e6128: f102 0060    	add.w	r0, r2, #0x60
  2e612c: 4619         	mov	r1, r3
  2e612e: f2ad f911    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad222
  2e6132: f8df 3a68    	ldr.w	r3, [pc, #0xa68]        @ 0x2e6b9c <AppDelegate::applicationDidFinishLaunching()+0xfd4>
  2e6136: 447b         	add	r3, pc
  2e6138: 4618         	mov	r0, r3
  2e613a: f2f2 f8e3    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f21c6
  2e613e: 4603         	mov	r3, r0
  2e6140: 4618         	mov	r0, r3
  2e6142: f7f6 fdcb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x946a
  2e6146: 4603         	mov	r3, r0
  2e6148: f8df 2a34    	ldr.w	r2, [pc, #0xa34]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e614c: 58a2         	ldr	r2, [r4, r2]
  2e614e: f102 0070    	add.w	r0, r2, #0x70
  2e6152: 4619         	mov	r1, r3
  2e6154: f2ad f8fe    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad1fc
  2e6158: f8df 3a44    	ldr.w	r3, [pc, #0xa44]        @ 0x2e6ba0 <AppDelegate::applicationDidFinishLaunching()+0xfd8>
  2e615c: 447b         	add	r3, pc
  2e615e: 4618         	mov	r0, r3
  2e6160: f2f2 f8d0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f21a0
  2e6164: 4603         	mov	r3, r0
  2e6166: 4618         	mov	r0, r3
  2e6168: f7f6 fdb8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9490
  2e616c: 4603         	mov	r3, r0
  2e616e: f8df 2a10    	ldr.w	r2, [pc, #0xa10]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6172: 58a2         	ldr	r2, [r4, r2]
  2e6174: f102 0080    	add.w	r0, r2, #0x80
  2e6178: 4619         	mov	r1, r3
  2e617a: f2ad f8eb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad1d6
  2e617e: f8df 3a24    	ldr.w	r3, [pc, #0xa24]        @ 0x2e6ba4 <AppDelegate::applicationDidFinishLaunching()+0xfdc>
  2e6182: 447b         	add	r3, pc
  2e6184: 4618         	mov	r0, r3
  2e6186: f2f2 f8bd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f217a
  2e618a: 4603         	mov	r3, r0
  2e618c: 4618         	mov	r0, r3
  2e618e: f7f6 fda5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x94b6
  2e6192: 4603         	mov	r3, r0
  2e6194: f8df 29e8    	ldr.w	r2, [pc, #0x9e8]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6198: 58a2         	ldr	r2, [r4, r2]
  2e619a: f102 0090    	add.w	r0, r2, #0x90
  2e619e: 4619         	mov	r1, r3
  2e61a0: f2ad f8d8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad1b0
  2e61a4: f8df 3a00    	ldr.w	r3, [pc, #0xa00]        @ 0x2e6ba8 <AppDelegate::applicationDidFinishLaunching()+0xfe0>
  2e61a8: 447b         	add	r3, pc
  2e61aa: 4618         	mov	r0, r3
  2e61ac: f2f2 f8aa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2154
  2e61b0: 4603         	mov	r3, r0
  2e61b2: 4618         	mov	r0, r3
  2e61b4: f7f6 fd92    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x94dc
  2e61b8: 4603         	mov	r3, r0
  2e61ba: f8df 29c4    	ldr.w	r2, [pc, #0x9c4]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e61be: 58a2         	ldr	r2, [r4, r2]
  2e61c0: f102 00a0    	add.w	r0, r2, #0xa0
  2e61c4: 4619         	mov	r1, r3
  2e61c6: f2ad f8c5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad18a
  2e61ca: f8df 39e0    	ldr.w	r3, [pc, #0x9e0]        @ 0x2e6bac <AppDelegate::applicationDidFinishLaunching()+0xfe4>
  2e61ce: 447b         	add	r3, pc
  2e61d0: 4618         	mov	r0, r3
  2e61d2: f2f2 f897    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f212e
  2e61d6: 4603         	mov	r3, r0
  2e61d8: 4618         	mov	r0, r3
  2e61da: f7f6 fd7f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9502
  2e61de: 4603         	mov	r3, r0
  2e61e0: f8df 299c    	ldr.w	r2, [pc, #0x99c]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e61e4: 58a2         	ldr	r2, [r4, r2]
  2e61e6: f102 00b0    	add.w	r0, r2, #0xb0
  2e61ea: 4619         	mov	r1, r3
  2e61ec: f2ad f8b2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad164
  2e61f0: f8df 39bc    	ldr.w	r3, [pc, #0x9bc]        @ 0x2e6bb0 <AppDelegate::applicationDidFinishLaunching()+0xfe8>
  2e61f4: 447b         	add	r3, pc
  2e61f6: 4618         	mov	r0, r3
  2e61f8: f2f2 f884    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2108
  2e61fc: 4603         	mov	r3, r0
  2e61fe: 4618         	mov	r0, r3
  2e6200: f7f6 fd6c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9528
  2e6204: 4603         	mov	r3, r0
  2e6206: f8df 2978    	ldr.w	r2, [pc, #0x978]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e620a: 58a2         	ldr	r2, [r4, r2]
  2e620c: f102 00c0    	add.w	r0, r2, #0xc0
  2e6210: 4619         	mov	r1, r3
  2e6212: f2ad f89f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad13e
  2e6216: f8df 399c    	ldr.w	r3, [pc, #0x99c]        @ 0x2e6bb4 <AppDelegate::applicationDidFinishLaunching()+0xfec>
  2e621a: 447b         	add	r3, pc
  2e621c: 4618         	mov	r0, r3
  2e621e: f2f2 f871    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f20e2
  2e6222: 4603         	mov	r3, r0
  2e6224: 4618         	mov	r0, r3
  2e6226: f7f6 fd59    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x954e
  2e622a: 4603         	mov	r3, r0
  2e622c: f8df 2950    	ldr.w	r2, [pc, #0x950]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6230: 58a2         	ldr	r2, [r4, r2]
  2e6232: f102 00d0    	add.w	r0, r2, #0xd0
  2e6236: 4619         	mov	r1, r3
  2e6238: f2ad f88c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad118
  2e623c: f8df 3978    	ldr.w	r3, [pc, #0x978]        @ 0x2e6bb8 <AppDelegate::applicationDidFinishLaunching()+0xff0>
  2e6240: 447b         	add	r3, pc
  2e6242: 4618         	mov	r0, r3
  2e6244: f2f2 f85e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f20bc
  2e6248: 4603         	mov	r3, r0
  2e624a: 4618         	mov	r0, r3
  2e624c: f7f6 fd46    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9574
  2e6250: 4603         	mov	r3, r0
  2e6252: f8df 292c    	ldr.w	r2, [pc, #0x92c]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e6256: 58a2         	ldr	r2, [r4, r2]
  2e6258: f102 00e0    	add.w	r0, r2, #0xe0
  2e625c: 4619         	mov	r1, r3
  2e625e: f2ad f879    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad0f2
  2e6262: f8df 3958    	ldr.w	r3, [pc, #0x958]        @ 0x2e6bbc <AppDelegate::applicationDidFinishLaunching()+0xff4>
  2e6266: 447b         	add	r3, pc
  2e6268: 4618         	mov	r0, r3
  2e626a: f2f2 f84b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2096
  2e626e: 4603         	mov	r3, r0
  2e6270: 4618         	mov	r0, r3
  2e6272: f7f6 fd33    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x959a
  2e6276: 4603         	mov	r3, r0
  2e6278: f8df 2904    	ldr.w	r2, [pc, #0x904]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e627c: 58a2         	ldr	r2, [r4, r2]
  2e627e: f102 00f0    	add.w	r0, r2, #0xf0
  2e6282: 4619         	mov	r1, r3
  2e6284: f2ad f866    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad0cc
  2e6288: f8df 3934    	ldr.w	r3, [pc, #0x934]        @ 0x2e6bc0 <AppDelegate::applicationDidFinishLaunching()+0xff8>
  2e628c: 447b         	add	r3, pc
  2e628e: 4618         	mov	r0, r3
  2e6290: f2f2 f838    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2070
  2e6294: 4603         	mov	r3, r0
  2e6296: 4618         	mov	r0, r3
  2e6298: f7f6 fd20    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x95c0
  2e629c: 4603         	mov	r3, r0
  2e629e: f8df 28e0    	ldr.w	r2, [pc, #0x8e0]        @ 0x2e6b80 <AppDelegate::applicationDidFinishLaunching()+0xfb8>
  2e62a2: 58a2         	ldr	r2, [r4, r2]
  2e62a4: f502 7080    	add.w	r0, r2, #0x100
  2e62a8: 4619         	mov	r1, r3
  2e62aa: f2ad f853    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad0a6
  2e62ae: f8df 3914    	ldr.w	r3, [pc, #0x914]        @ 0x2e6bc4 <AppDelegate::applicationDidFinishLaunching()+0xffc>
  2e62b2: 447b         	add	r3, pc
  2e62b4: 4618         	mov	r0, r3
  2e62b6: f2f2 f825    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f204a
  2e62ba: 4603         	mov	r3, r0
  2e62bc: 4618         	mov	r0, r3
  2e62be: f7f6 fd0d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x95e6
  2e62c2: 4603         	mov	r3, r0
  2e62c4: f8df 2900    	ldr.w	r2, [pc, #0x900]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e62c8: 58a2         	ldr	r2, [r4, r2]
  2e62ca: 4610         	mov	r0, r2
  2e62cc: 4619         	mov	r1, r3
  2e62ce: f2ad f841    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad082
  2e62d2: f8df 38f8    	ldr.w	r3, [pc, #0x8f8]        @ 0x2e6bcc <AppDelegate::applicationDidFinishLaunching()+0x1004>
  2e62d6: 447b         	add	r3, pc
  2e62d8: 4618         	mov	r0, r3
  2e62da: f2f2 f813    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2026
  2e62de: 4603         	mov	r3, r0
  2e62e0: 4618         	mov	r0, r3
  2e62e2: f7f6 fcfb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x960a
  2e62e6: 4603         	mov	r3, r0
  2e62e8: f8df 28dc    	ldr.w	r2, [pc, #0x8dc]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e62ec: 58a2         	ldr	r2, [r4, r2]
  2e62ee: f102 0010    	add.w	r0, r2, #0x10
  2e62f2: 4619         	mov	r1, r3
  2e62f4: f2ad f82e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad05c
  2e62f8: f8df 38d4    	ldr.w	r3, [pc, #0x8d4]        @ 0x2e6bd0 <AppDelegate::applicationDidFinishLaunching()+0x1008>
  2e62fc: 447b         	add	r3, pc
  2e62fe: 4618         	mov	r0, r3
  2e6300: f2f2 f800    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f2000
  2e6304: 4603         	mov	r3, r0
  2e6306: 4618         	mov	r0, r3
  2e6308: f7f6 fce8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9630
  2e630c: 4603         	mov	r3, r0
  2e630e: f8df 28b8    	ldr.w	r2, [pc, #0x8b8]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6312: 58a2         	ldr	r2, [r4, r2]
  2e6314: f102 0020    	add.w	r0, r2, #0x20
  2e6318: 4619         	mov	r1, r3
  2e631a: f2ad f81b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad036
  2e631e: f8df 38b4    	ldr.w	r3, [pc, #0x8b4]        @ 0x2e6bd4 <AppDelegate::applicationDidFinishLaunching()+0x100c>
  2e6322: 447b         	add	r3, pc
  2e6324: 4618         	mov	r0, r3
  2e6326: f2f1 ffed    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1fda
  2e632a: 4603         	mov	r3, r0
  2e632c: 4618         	mov	r0, r3
  2e632e: f7f6 fcd5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9656
  2e6332: 4603         	mov	r3, r0
  2e6334: f8df 2890    	ldr.w	r2, [pc, #0x890]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6338: 58a2         	ldr	r2, [r4, r2]
  2e633a: f102 0030    	add.w	r0, r2, #0x30
  2e633e: 4619         	mov	r1, r3
  2e6340: f2ad f808    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ad010
  2e6344: f8df 3890    	ldr.w	r3, [pc, #0x890]        @ 0x2e6bd8 <AppDelegate::applicationDidFinishLaunching()+0x1010>
  2e6348: 447b         	add	r3, pc
  2e634a: 4618         	mov	r0, r3
  2e634c: f2f1 ffda    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1fb4
  2e6350: 4603         	mov	r3, r0
  2e6352: 4618         	mov	r0, r3
  2e6354: f7f6 fcc2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x967c
  2e6358: 4603         	mov	r3, r0
  2e635a: f8df 286c    	ldr.w	r2, [pc, #0x86c]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e635e: 58a2         	ldr	r2, [r4, r2]
  2e6360: f102 0040    	add.w	r0, r2, #0x40
  2e6364: 4619         	mov	r1, r3
  2e6366: f2ac fff5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acfea
  2e636a: f8df 3870    	ldr.w	r3, [pc, #0x870]        @ 0x2e6bdc <AppDelegate::applicationDidFinishLaunching()+0x1014>
  2e636e: 447b         	add	r3, pc
  2e6370: 4618         	mov	r0, r3
  2e6372: f2f1 ffc7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1f8e
  2e6376: 4603         	mov	r3, r0
  2e6378: 4618         	mov	r0, r3
  2e637a: f7f6 fcaf    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x96a2
  2e637e: 4603         	mov	r3, r0
  2e6380: f8df 2844    	ldr.w	r2, [pc, #0x844]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6384: 58a2         	ldr	r2, [r4, r2]
  2e6386: f102 0050    	add.w	r0, r2, #0x50
  2e638a: 4619         	mov	r1, r3
  2e638c: f2ac ffe2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acfc4
  2e6390: f8df 384c    	ldr.w	r3, [pc, #0x84c]        @ 0x2e6be0 <AppDelegate::applicationDidFinishLaunching()+0x1018>
  2e6394: 447b         	add	r3, pc
  2e6396: 4618         	mov	r0, r3
  2e6398: f2f1 ffb4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1f68
  2e639c: 4603         	mov	r3, r0
  2e639e: 4618         	mov	r0, r3
  2e63a0: f7f6 fc9c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x96c8
  2e63a4: 4603         	mov	r3, r0
  2e63a6: f8df 2820    	ldr.w	r2, [pc, #0x820]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e63aa: 58a2         	ldr	r2, [r4, r2]
  2e63ac: f102 0060    	add.w	r0, r2, #0x60
  2e63b0: 4619         	mov	r1, r3
  2e63b2: f2ac ffcf    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acf9e
  2e63b6: f8df 382c    	ldr.w	r3, [pc, #0x82c]        @ 0x2e6be4 <AppDelegate::applicationDidFinishLaunching()+0x101c>
  2e63ba: 447b         	add	r3, pc
  2e63bc: 4618         	mov	r0, r3
  2e63be: f2f1 ffa1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1f42
  2e63c2: 4603         	mov	r3, r0
  2e63c4: 4618         	mov	r0, r3
  2e63c6: f7f6 fc89    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x96ee
  2e63ca: 4603         	mov	r3, r0
  2e63cc: f8df 27f8    	ldr.w	r2, [pc, #0x7f8]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e63d0: 58a2         	ldr	r2, [r4, r2]
  2e63d2: f102 0070    	add.w	r0, r2, #0x70
  2e63d6: 4619         	mov	r1, r3
  2e63d8: f2ac ffbc    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acf78
  2e63dc: f8df 3808    	ldr.w	r3, [pc, #0x808]        @ 0x2e6be8 <AppDelegate::applicationDidFinishLaunching()+0x1020>
  2e63e0: 447b         	add	r3, pc
  2e63e2: 4618         	mov	r0, r3
  2e63e4: f2f1 ff8e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1f1c
  2e63e8: 4603         	mov	r3, r0
  2e63ea: 4618         	mov	r0, r3
  2e63ec: f7f6 fc76    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9714
  2e63f0: 4603         	mov	r3, r0
  2e63f2: f8df 27d4    	ldr.w	r2, [pc, #0x7d4]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e63f6: 58a2         	ldr	r2, [r4, r2]
  2e63f8: f102 0080    	add.w	r0, r2, #0x80
  2e63fc: 4619         	mov	r1, r3
  2e63fe: f2ac ffa9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acf52
  2e6402: f8df 37e8    	ldr.w	r3, [pc, #0x7e8]        @ 0x2e6bec <AppDelegate::applicationDidFinishLaunching()+0x1024>
  2e6406: 447b         	add	r3, pc
  2e6408: 4618         	mov	r0, r3
  2e640a: f2f1 ff7b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1ef6
  2e640e: 4603         	mov	r3, r0
  2e6410: 4618         	mov	r0, r3
  2e6412: f7f6 fc63    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x973a
  2e6416: 4603         	mov	r3, r0
  2e6418: f8df 27ac    	ldr.w	r2, [pc, #0x7ac]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e641c: 58a2         	ldr	r2, [r4, r2]
  2e641e: f102 0090    	add.w	r0, r2, #0x90
  2e6422: 4619         	mov	r1, r3
  2e6424: f2ac ff96    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acf2c
  2e6428: f8df 37c4    	ldr.w	r3, [pc, #0x7c4]        @ 0x2e6bf0 <AppDelegate::applicationDidFinishLaunching()+0x1028>
  2e642c: 447b         	add	r3, pc
  2e642e: 4618         	mov	r0, r3
  2e6430: f2f1 ff68    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1ed0
  2e6434: 4603         	mov	r3, r0
  2e6436: 4618         	mov	r0, r3
  2e6438: f7f6 fc50    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9760
  2e643c: 4603         	mov	r3, r0
  2e643e: f8df 2788    	ldr.w	r2, [pc, #0x788]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6442: 58a2         	ldr	r2, [r4, r2]
  2e6444: f102 00a0    	add.w	r0, r2, #0xa0
  2e6448: 4619         	mov	r1, r3
  2e644a: f2ac ff83    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acf06
  2e644e: f8df 37a4    	ldr.w	r3, [pc, #0x7a4]        @ 0x2e6bf4 <AppDelegate::applicationDidFinishLaunching()+0x102c>
  2e6452: 447b         	add	r3, pc
  2e6454: 4618         	mov	r0, r3
  2e6456: f2f1 ff55    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1eaa
  2e645a: 4603         	mov	r3, r0
  2e645c: 4618         	mov	r0, r3
  2e645e: f7f6 fc3d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9786
  2e6462: 4603         	mov	r3, r0
  2e6464: f8df 2760    	ldr.w	r2, [pc, #0x760]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6468: 58a2         	ldr	r2, [r4, r2]
  2e646a: f102 00b0    	add.w	r0, r2, #0xb0
  2e646e: 4619         	mov	r1, r3
  2e6470: f2ac ff70    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acee0
  2e6474: f8df 3780    	ldr.w	r3, [pc, #0x780]        @ 0x2e6bf8 <AppDelegate::applicationDidFinishLaunching()+0x1030>
  2e6478: 447b         	add	r3, pc
  2e647a: 4618         	mov	r0, r3
  2e647c: f2f1 ff42    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1e84
  2e6480: 4603         	mov	r3, r0
  2e6482: 4618         	mov	r0, r3
  2e6484: f7f6 fc2a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x97ac
  2e6488: 4603         	mov	r3, r0
  2e648a: f8df 273c    	ldr.w	r2, [pc, #0x73c]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e648e: 58a2         	ldr	r2, [r4, r2]
  2e6490: f102 00c0    	add.w	r0, r2, #0xc0
  2e6494: 4619         	mov	r1, r3
  2e6496: f2ac ff5d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2aceba
  2e649a: f8df 3760    	ldr.w	r3, [pc, #0x760]        @ 0x2e6bfc <AppDelegate::applicationDidFinishLaunching()+0x1034>
  2e649e: 447b         	add	r3, pc
  2e64a0: 4618         	mov	r0, r3
  2e64a2: f2f1 ff2f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1e5e
  2e64a6: 4603         	mov	r3, r0
  2e64a8: 4618         	mov	r0, r3
  2e64aa: f7f6 fc17    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x97d2
  2e64ae: 4603         	mov	r3, r0
  2e64b0: f8df 2714    	ldr.w	r2, [pc, #0x714]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e64b4: 58a2         	ldr	r2, [r4, r2]
  2e64b6: f102 00d0    	add.w	r0, r2, #0xd0
  2e64ba: 4619         	mov	r1, r3
  2e64bc: f2ac ff4a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ace94
  2e64c0: f8df 373c    	ldr.w	r3, [pc, #0x73c]        @ 0x2e6c00 <AppDelegate::applicationDidFinishLaunching()+0x1038>
  2e64c4: 447b         	add	r3, pc
  2e64c6: 4618         	mov	r0, r3
  2e64c8: f2f1 ff1c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1e38
  2e64cc: 4603         	mov	r3, r0
  2e64ce: 4618         	mov	r0, r3
  2e64d0: f7f6 fc04    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x97f8
  2e64d4: 4603         	mov	r3, r0
  2e64d6: f8df 26f0    	ldr.w	r2, [pc, #0x6f0]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e64da: 58a2         	ldr	r2, [r4, r2]
  2e64dc: f102 00e0    	add.w	r0, r2, #0xe0
  2e64e0: 4619         	mov	r1, r3
  2e64e2: f2ac ff37    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ace6e
  2e64e6: f8df 371c    	ldr.w	r3, [pc, #0x71c]        @ 0x2e6c04 <AppDelegate::applicationDidFinishLaunching()+0x103c>
  2e64ea: 447b         	add	r3, pc
  2e64ec: 4618         	mov	r0, r3
  2e64ee: f2f1 ff09    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1e12
  2e64f2: 4603         	mov	r3, r0
  2e64f4: 4618         	mov	r0, r3
  2e64f6: f7f6 fbf1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x981e
  2e64fa: 4603         	mov	r3, r0
  2e64fc: f8df 26c8    	ldr.w	r2, [pc, #0x6c8]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6500: 58a2         	ldr	r2, [r4, r2]
  2e6502: f102 00f0    	add.w	r0, r2, #0xf0
  2e6506: 4619         	mov	r1, r3
  2e6508: f2ac ff24    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ace48
  2e650c: f8df 36f8    	ldr.w	r3, [pc, #0x6f8]        @ 0x2e6c08 <AppDelegate::applicationDidFinishLaunching()+0x1040>
  2e6510: 447b         	add	r3, pc
  2e6512: 4618         	mov	r0, r3
  2e6514: f2f1 fef6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1dec
  2e6518: 4603         	mov	r3, r0
  2e651a: 4618         	mov	r0, r3
  2e651c: f7f6 fbde    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9844
  2e6520: 4603         	mov	r3, r0
  2e6522: f8df 26a4    	ldr.w	r2, [pc, #0x6a4]        @ 0x2e6bc8 <AppDelegate::applicationDidFinishLaunching()+0x1000>
  2e6526: 58a2         	ldr	r2, [r4, r2]
  2e6528: f502 7080    	add.w	r0, r2, #0x100
  2e652c: 4619         	mov	r1, r3
  2e652e: f2ac ff11    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ace22
  2e6532: f8df 36d8    	ldr.w	r3, [pc, #0x6d8]        @ 0x2e6c0c <AppDelegate::applicationDidFinishLaunching()+0x1044>
  2e6536: 447b         	add	r3, pc
  2e6538: 4618         	mov	r0, r3
  2e653a: f2f1 fee3    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1dc6
  2e653e: 4603         	mov	r3, r0
  2e6540: 4618         	mov	r0, r3
  2e6542: f7f6 fbcb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x986a
  2e6546: 4603         	mov	r3, r0
  2e6548: f8df 26c4    	ldr.w	r2, [pc, #0x6c4]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e654c: 58a2         	ldr	r2, [r4, r2]
  2e654e: 4610         	mov	r0, r2
  2e6550: 4619         	mov	r1, r3
  2e6552: f2ac feff    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acdfe
  2e6556: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x2e6c14 <AppDelegate::applicationDidFinishLaunching()+0x104c>
  2e655a: 447b         	add	r3, pc
  2e655c: 4618         	mov	r0, r3
  2e655e: f2f1 fed1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1da2
  2e6562: 4603         	mov	r3, r0
  2e6564: 4618         	mov	r0, r3
  2e6566: f7f6 fbb9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x988e
  2e656a: 4603         	mov	r3, r0
  2e656c: f8df 26a0    	ldr.w	r2, [pc, #0x6a0]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6570: 58a2         	ldr	r2, [r4, r2]
  2e6572: f102 0010    	add.w	r0, r2, #0x10
  2e6576: 4619         	mov	r1, r3
  2e6578: f2ac feec    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acdd8
  2e657c: f8df 3698    	ldr.w	r3, [pc, #0x698]        @ 0x2e6c18 <AppDelegate::applicationDidFinishLaunching()+0x1050>
  2e6580: 447b         	add	r3, pc
  2e6582: 4618         	mov	r0, r3
  2e6584: f2f1 febe    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1d7c
  2e6588: 4603         	mov	r3, r0
  2e658a: 4618         	mov	r0, r3
  2e658c: f7f6 fba6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x98b4
  2e6590: 4603         	mov	r3, r0
  2e6592: f8df 267c    	ldr.w	r2, [pc, #0x67c]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6596: 58a2         	ldr	r2, [r4, r2]
  2e6598: f102 0020    	add.w	r0, r2, #0x20
  2e659c: 4619         	mov	r1, r3
  2e659e: f2ac fed9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acdb2
  2e65a2: f8df 3678    	ldr.w	r3, [pc, #0x678]        @ 0x2e6c1c <AppDelegate::applicationDidFinishLaunching()+0x1054>
  2e65a6: 447b         	add	r3, pc
  2e65a8: 4618         	mov	r0, r3
  2e65aa: f2f1 feab    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1d56
  2e65ae: 4603         	mov	r3, r0
  2e65b0: 4618         	mov	r0, r3
  2e65b2: f7f6 fb93    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x98da
  2e65b6: 4603         	mov	r3, r0
  2e65b8: f8df 2654    	ldr.w	r2, [pc, #0x654]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e65bc: 58a2         	ldr	r2, [r4, r2]
  2e65be: f102 0030    	add.w	r0, r2, #0x30
  2e65c2: 4619         	mov	r1, r3
  2e65c4: f2ac fec6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acd8c
  2e65c8: f8df 3654    	ldr.w	r3, [pc, #0x654]        @ 0x2e6c20 <AppDelegate::applicationDidFinishLaunching()+0x1058>
  2e65cc: 447b         	add	r3, pc
  2e65ce: 4618         	mov	r0, r3
  2e65d0: f2f1 fe98    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1d30
  2e65d4: 4603         	mov	r3, r0
  2e65d6: 4618         	mov	r0, r3
  2e65d8: f7f6 fb80    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9900
  2e65dc: 4603         	mov	r3, r0
  2e65de: f8df 2630    	ldr.w	r2, [pc, #0x630]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e65e2: 58a2         	ldr	r2, [r4, r2]
  2e65e4: f102 0040    	add.w	r0, r2, #0x40
  2e65e8: 4619         	mov	r1, r3
  2e65ea: f2ac feb3    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acd66
  2e65ee: f8df 3634    	ldr.w	r3, [pc, #0x634]        @ 0x2e6c24 <AppDelegate::applicationDidFinishLaunching()+0x105c>
  2e65f2: 447b         	add	r3, pc
  2e65f4: 4618         	mov	r0, r3
  2e65f6: f2f1 fe85    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1d0a
  2e65fa: 4603         	mov	r3, r0
  2e65fc: 4618         	mov	r0, r3
  2e65fe: f7f6 fb6d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9926
  2e6602: 4603         	mov	r3, r0
  2e6604: f8df 2608    	ldr.w	r2, [pc, #0x608]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6608: 58a2         	ldr	r2, [r4, r2]
  2e660a: f102 0050    	add.w	r0, r2, #0x50
  2e660e: 4619         	mov	r1, r3
  2e6610: f2ac fea0    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acd40
  2e6614: f8df 3610    	ldr.w	r3, [pc, #0x610]        @ 0x2e6c28 <AppDelegate::applicationDidFinishLaunching()+0x1060>
  2e6618: 447b         	add	r3, pc
  2e661a: 4618         	mov	r0, r3
  2e661c: f2f1 fe72    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1ce4
  2e6620: 4603         	mov	r3, r0
  2e6622: 4618         	mov	r0, r3
  2e6624: f7f6 fb5a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x994c
  2e6628: 4603         	mov	r3, r0
  2e662a: f8df 25e4    	ldr.w	r2, [pc, #0x5e4]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e662e: 58a2         	ldr	r2, [r4, r2]
  2e6630: f102 0060    	add.w	r0, r2, #0x60
  2e6634: 4619         	mov	r1, r3
  2e6636: f2ac fe8d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acd1a
  2e663a: f8df 35f0    	ldr.w	r3, [pc, #0x5f0]        @ 0x2e6c2c <AppDelegate::applicationDidFinishLaunching()+0x1064>
  2e663e: 447b         	add	r3, pc
  2e6640: 4618         	mov	r0, r3
  2e6642: f2f1 fe5f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1cbe
  2e6646: 4603         	mov	r3, r0
  2e6648: 4618         	mov	r0, r3
  2e664a: f7f6 fb47    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9972
  2e664e: 4603         	mov	r3, r0
  2e6650: f8df 25bc    	ldr.w	r2, [pc, #0x5bc]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6654: 58a2         	ldr	r2, [r4, r2]
  2e6656: f102 0070    	add.w	r0, r2, #0x70
  2e665a: 4619         	mov	r1, r3
  2e665c: f2ac fe7a    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2accf4
  2e6660: f8df 35cc    	ldr.w	r3, [pc, #0x5cc]        @ 0x2e6c30 <AppDelegate::applicationDidFinishLaunching()+0x1068>
  2e6664: 447b         	add	r3, pc
  2e6666: 4618         	mov	r0, r3
  2e6668: f2f1 fe4c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1c98
  2e666c: 4603         	mov	r3, r0
  2e666e: 4618         	mov	r0, r3
  2e6670: f7f6 fb34    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9998
  2e6674: 4603         	mov	r3, r0
  2e6676: f8df 2598    	ldr.w	r2, [pc, #0x598]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e667a: 58a2         	ldr	r2, [r4, r2]
  2e667c: f102 0080    	add.w	r0, r2, #0x80
  2e6680: 4619         	mov	r1, r3
  2e6682: f2ac fe67    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2accce
  2e6686: f8df 35ac    	ldr.w	r3, [pc, #0x5ac]        @ 0x2e6c34 <AppDelegate::applicationDidFinishLaunching()+0x106c>
  2e668a: 447b         	add	r3, pc
  2e668c: 4618         	mov	r0, r3
  2e668e: f2f1 fe39    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1c72
  2e6692: 4603         	mov	r3, r0
  2e6694: 4618         	mov	r0, r3
  2e6696: f7f6 fb21    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x99be
  2e669a: 4603         	mov	r3, r0
  2e669c: f8df 2570    	ldr.w	r2, [pc, #0x570]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e66a0: 58a2         	ldr	r2, [r4, r2]
  2e66a2: f102 0090    	add.w	r0, r2, #0x90
  2e66a6: 4619         	mov	r1, r3
  2e66a8: f2ac fe54    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acca8
  2e66ac: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x2e6c38 <AppDelegate::applicationDidFinishLaunching()+0x1070>
  2e66b0: 447b         	add	r3, pc
  2e66b2: 4618         	mov	r0, r3
  2e66b4: f2f1 fe26    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1c4c
  2e66b8: 4603         	mov	r3, r0
  2e66ba: 4618         	mov	r0, r3
  2e66bc: f7f6 fb0e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x99e4
  2e66c0: 4603         	mov	r3, r0
  2e66c2: f8df 254c    	ldr.w	r2, [pc, #0x54c]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e66c6: 58a2         	ldr	r2, [r4, r2]
  2e66c8: f102 00a0    	add.w	r0, r2, #0xa0
  2e66cc: 4619         	mov	r1, r3
  2e66ce: f2ac fe41    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acc82
  2e66d2: f8df 3568    	ldr.w	r3, [pc, #0x568]        @ 0x2e6c3c <AppDelegate::applicationDidFinishLaunching()+0x1074>
  2e66d6: 447b         	add	r3, pc
  2e66d8: 4618         	mov	r0, r3
  2e66da: f2f1 fe13    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1c26
  2e66de: 4603         	mov	r3, r0
  2e66e0: 4618         	mov	r0, r3
  2e66e2: f7f6 fafb    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9a0a
  2e66e6: 4603         	mov	r3, r0
  2e66e8: f8df 2524    	ldr.w	r2, [pc, #0x524]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e66ec: 58a2         	ldr	r2, [r4, r2]
  2e66ee: f102 00b0    	add.w	r0, r2, #0xb0
  2e66f2: 4619         	mov	r1, r3
  2e66f4: f2ac fe2e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acc5c
  2e66f8: f8df 3544    	ldr.w	r3, [pc, #0x544]        @ 0x2e6c40 <AppDelegate::applicationDidFinishLaunching()+0x1078>
  2e66fc: 447b         	add	r3, pc
  2e66fe: 4618         	mov	r0, r3
  2e6700: f2f1 fe00    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1c00
  2e6704: 4603         	mov	r3, r0
  2e6706: 4618         	mov	r0, r3
  2e6708: f7f6 fae8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9a30
  2e670c: 4603         	mov	r3, r0
  2e670e: f8df 2500    	ldr.w	r2, [pc, #0x500]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6712: 58a2         	ldr	r2, [r4, r2]
  2e6714: f102 00c0    	add.w	r0, r2, #0xc0
  2e6718: 4619         	mov	r1, r3
  2e671a: f2ac fe1b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acc36
  2e671e: f8df 3524    	ldr.w	r3, [pc, #0x524]        @ 0x2e6c44 <AppDelegate::applicationDidFinishLaunching()+0x107c>
  2e6722: 447b         	add	r3, pc
  2e6724: 4618         	mov	r0, r3
  2e6726: f2f1 fded    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1bda
  2e672a: 4603         	mov	r3, r0
  2e672c: 4618         	mov	r0, r3
  2e672e: f7f6 fad5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9a56
  2e6732: 4603         	mov	r3, r0
  2e6734: f8df 24d8    	ldr.w	r2, [pc, #0x4d8]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6738: 58a2         	ldr	r2, [r4, r2]
  2e673a: f102 00d0    	add.w	r0, r2, #0xd0
  2e673e: 4619         	mov	r1, r3
  2e6740: f2ac fe08    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acc10
  2e6744: f8df 3500    	ldr.w	r3, [pc, #0x500]        @ 0x2e6c48 <AppDelegate::applicationDidFinishLaunching()+0x1080>
  2e6748: 447b         	add	r3, pc
  2e674a: 4618         	mov	r0, r3
  2e674c: f2f1 fdda    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1bb4
  2e6750: 4603         	mov	r3, r0
  2e6752: 4618         	mov	r0, r3
  2e6754: f7f6 fac2    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9a7c
  2e6758: 4603         	mov	r3, r0
  2e675a: f8df 24b4    	ldr.w	r2, [pc, #0x4b4]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e675e: 58a2         	ldr	r2, [r4, r2]
  2e6760: f102 00e0    	add.w	r0, r2, #0xe0
  2e6764: 4619         	mov	r1, r3
  2e6766: f2ac fdf5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acbea
  2e676a: f8df 34e0    	ldr.w	r3, [pc, #0x4e0]        @ 0x2e6c4c <AppDelegate::applicationDidFinishLaunching()+0x1084>
  2e676e: 447b         	add	r3, pc
  2e6770: 4618         	mov	r0, r3
  2e6772: f2f1 fdc7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1b8e
  2e6776: 4603         	mov	r3, r0
  2e6778: 4618         	mov	r0, r3
  2e677a: f7f6 faaf    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9aa2
  2e677e: 4603         	mov	r3, r0
  2e6780: f8df 248c    	ldr.w	r2, [pc, #0x48c]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e6784: 58a2         	ldr	r2, [r4, r2]
  2e6786: f102 00f0    	add.w	r0, r2, #0xf0
  2e678a: 4619         	mov	r1, r3
  2e678c: f2ac fde2    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acbc4
  2e6790: f8df 34bc    	ldr.w	r3, [pc, #0x4bc]        @ 0x2e6c50 <AppDelegate::applicationDidFinishLaunching()+0x1088>
  2e6794: 447b         	add	r3, pc
  2e6796: 4618         	mov	r0, r3
  2e6798: f2f1 fdb4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1b68
  2e679c: 4603         	mov	r3, r0
  2e679e: 4618         	mov	r0, r3
  2e67a0: f7f6 fa9c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9ac8
  2e67a4: 4603         	mov	r3, r0
  2e67a6: f8df 2468    	ldr.w	r2, [pc, #0x468]        @ 0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048>
  2e67aa: 58a2         	ldr	r2, [r4, r2]
  2e67ac: f502 7080    	add.w	r0, r2, #0x100
  2e67b0: 4619         	mov	r1, r3
  2e67b2: f2ac fdcf    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acb9e
  2e67b6: f8df 349c    	ldr.w	r3, [pc, #0x49c]        @ 0x2e6c54 <AppDelegate::applicationDidFinishLaunching()+0x108c>
  2e67ba: 447b         	add	r3, pc
  2e67bc: 4618         	mov	r0, r3
  2e67be: f2f1 fda1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1b42
  2e67c2: 4603         	mov	r3, r0
  2e67c4: 4618         	mov	r0, r3
  2e67c6: f7f6 fa89    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9aee
  2e67ca: 4603         	mov	r3, r0
  2e67cc: f8df 2488    	ldr.w	r2, [pc, #0x488]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e67d0: 58a2         	ldr	r2, [r4, r2]
  2e67d2: 4610         	mov	r0, r2
  2e67d4: 4619         	mov	r1, r3
  2e67d6: f2ac fdbd    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acb7a
  2e67da: f8df 3480    	ldr.w	r3, [pc, #0x480]        @ 0x2e6c5c <AppDelegate::applicationDidFinishLaunching()+0x1094>
  2e67de: 447b         	add	r3, pc
  2e67e0: 4618         	mov	r0, r3
  2e67e2: f2f1 fd8f    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1b1e
  2e67e6: 4603         	mov	r3, r0
  2e67e8: 4618         	mov	r0, r3
  2e67ea: f7f6 fa77    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9b12
  2e67ee: 4603         	mov	r3, r0
  2e67f0: f8df 2464    	ldr.w	r2, [pc, #0x464]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e67f4: 58a2         	ldr	r2, [r4, r2]
  2e67f6: f102 0010    	add.w	r0, r2, #0x10
  2e67fa: 4619         	mov	r1, r3
  2e67fc: f2ac fdaa    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acb54
  2e6800: f8df 345c    	ldr.w	r3, [pc, #0x45c]        @ 0x2e6c60 <AppDelegate::applicationDidFinishLaunching()+0x1098>
  2e6804: 447b         	add	r3, pc
  2e6806: 4618         	mov	r0, r3
  2e6808: f2f1 fd7c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1af8
  2e680c: 4603         	mov	r3, r0
  2e680e: 4618         	mov	r0, r3
  2e6810: f7f6 fa64    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9b38
  2e6814: 4603         	mov	r3, r0
  2e6816: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e681a: 58a2         	ldr	r2, [r4, r2]
  2e681c: f102 0020    	add.w	r0, r2, #0x20
  2e6820: 4619         	mov	r1, r3
  2e6822: f2ac fd97    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acb2e
  2e6826: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x2e6c64 <AppDelegate::applicationDidFinishLaunching()+0x109c>
  2e682a: 447b         	add	r3, pc
  2e682c: 4618         	mov	r0, r3
  2e682e: f2f1 fd69    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1ad2
  2e6832: 4603         	mov	r3, r0
  2e6834: 4618         	mov	r0, r3
  2e6836: f7f6 fa51    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9b5e
  2e683a: 4603         	mov	r3, r0
  2e683c: f8df 2418    	ldr.w	r2, [pc, #0x418]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6840: 58a2         	ldr	r2, [r4, r2]
  2e6842: f102 0030    	add.w	r0, r2, #0x30
  2e6846: 4619         	mov	r1, r3
  2e6848: f2ac fd84    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acb08
  2e684c: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x2e6c68 <AppDelegate::applicationDidFinishLaunching()+0x10a0>
  2e6850: 447b         	add	r3, pc
  2e6852: 4618         	mov	r0, r3
  2e6854: f2f1 fd56    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1aac
  2e6858: 4603         	mov	r3, r0
  2e685a: 4618         	mov	r0, r3
  2e685c: f7f6 fa3e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9b84
  2e6860: 4603         	mov	r3, r0
  2e6862: 4afd         	ldr	r2, [pc, #0x3f4]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6864: 58a2         	ldr	r2, [r4, r2]
  2e6866: f102 0040    	add.w	r0, r2, #0x40
  2e686a: 4619         	mov	r1, r3
  2e686c: f2ac fd72    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acae4
  2e6870: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x2e6c6c <AppDelegate::applicationDidFinishLaunching()+0x10a4>
  2e6872: 447b         	add	r3, pc
  2e6874: 4618         	mov	r0, r3
  2e6876: f2f1 fd45    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1a8a
  2e687a: 4603         	mov	r3, r0
  2e687c: 4618         	mov	r0, r3
  2e687e: f7f6 fa2d    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9ba6
  2e6882: 4603         	mov	r3, r0
  2e6884: 4af4         	ldr	r2, [pc, #0x3d0]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6886: 58a2         	ldr	r2, [r4, r2]
  2e6888: f102 0050    	add.w	r0, r2, #0x50
  2e688c: 4619         	mov	r1, r3
  2e688e: f2ac fd61    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acac2
  2e6892: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x2e6c70 <AppDelegate::applicationDidFinishLaunching()+0x10a8>
  2e6894: 447b         	add	r3, pc
  2e6896: 4618         	mov	r0, r3
  2e6898: f2f1 fd34    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1a68
  2e689c: 4603         	mov	r3, r0
  2e689e: 4618         	mov	r0, r3
  2e68a0: f7f6 fa1c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9bc8
  2e68a4: 4603         	mov	r3, r0
  2e68a6: 4aec         	ldr	r2, [pc, #0x3b0]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e68a8: 58a2         	ldr	r2, [r4, r2]
  2e68aa: f102 0060    	add.w	r0, r2, #0x60
  2e68ae: 4619         	mov	r1, r3
  2e68b0: f2ac fd50    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2acaa0
  2e68b4: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x2e6c74 <AppDelegate::applicationDidFinishLaunching()+0x10ac>
  2e68b6: 447b         	add	r3, pc
  2e68b8: 4618         	mov	r0, r3
  2e68ba: f2f1 fd23    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1a46
  2e68be: 4603         	mov	r3, r0
  2e68c0: 4618         	mov	r0, r3
  2e68c2: f7f6 fa0b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9bea
  2e68c6: 4603         	mov	r3, r0
  2e68c8: 4ae3         	ldr	r2, [pc, #0x38c]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e68ca: 58a2         	ldr	r2, [r4, r2]
  2e68cc: f102 0070    	add.w	r0, r2, #0x70
  2e68d0: 4619         	mov	r1, r3
  2e68d2: f2ac fd3f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2aca7e
  2e68d6: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x2e6c78 <AppDelegate::applicationDidFinishLaunching()+0x10b0>
  2e68d8: 447b         	add	r3, pc
  2e68da: 4618         	mov	r0, r3
  2e68dc: f2f1 fd12    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1a24
  2e68e0: 4603         	mov	r3, r0
  2e68e2: 4618         	mov	r0, r3
  2e68e4: f7f6 f9fa    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9c0c
  2e68e8: 4603         	mov	r3, r0
  2e68ea: 4adb         	ldr	r2, [pc, #0x36c]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e68ec: 58a2         	ldr	r2, [r4, r2]
  2e68ee: f102 0080    	add.w	r0, r2, #0x80
  2e68f2: 4619         	mov	r1, r3
  2e68f4: f2ac fd2e    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2aca5c
  2e68f8: 4be0         	ldr	r3, [pc, #0x380]        @ 0x2e6c7c <AppDelegate::applicationDidFinishLaunching()+0x10b4>
  2e68fa: 447b         	add	r3, pc
  2e68fc: 4618         	mov	r0, r3
  2e68fe: f2f1 fd01    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1a02
  2e6902: 4603         	mov	r3, r0
  2e6904: 4618         	mov	r0, r3
  2e6906: f7f6 f9e9    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9c2e
  2e690a: 4603         	mov	r3, r0
  2e690c: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e690e: 58a2         	ldr	r2, [r4, r2]
  2e6910: f102 0090    	add.w	r0, r2, #0x90
  2e6914: 4619         	mov	r1, r3
  2e6916: f2ac fd1d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2aca3a
  2e691a: 4bd9         	ldr	r3, [pc, #0x364]        @ 0x2e6c80 <AppDelegate::applicationDidFinishLaunching()+0x10b8>
  2e691c: 447b         	add	r3, pc
  2e691e: 4618         	mov	r0, r3
  2e6920: f2f1 fcf0    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f19e0
  2e6924: 4603         	mov	r3, r0
  2e6926: 4618         	mov	r0, r3
  2e6928: f7f6 f9d8    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9c50
  2e692c: 4603         	mov	r3, r0
  2e692e: 4aca         	ldr	r2, [pc, #0x328]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6930: 58a2         	ldr	r2, [r4, r2]
  2e6932: f102 00a0    	add.w	r0, r2, #0xa0
  2e6936: 4619         	mov	r1, r3
  2e6938: f2ac fd0c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2aca18
  2e693c: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x2e6c84 <AppDelegate::applicationDidFinishLaunching()+0x10bc>
  2e693e: 447b         	add	r3, pc
  2e6940: 4618         	mov	r0, r3
  2e6942: f2f1 fcdf    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f19be
  2e6946: 4603         	mov	r3, r0
  2e6948: 4618         	mov	r0, r3
  2e694a: f7f6 f9c7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9c72
  2e694e: 4603         	mov	r3, r0
  2e6950: 4ac1         	ldr	r2, [pc, #0x304]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6952: 58a2         	ldr	r2, [r4, r2]
  2e6954: f102 00b0    	add.w	r0, r2, #0xb0
  2e6958: 4619         	mov	r1, r3
  2e695a: f2ac fcfb    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac9f6
  2e695e: 4bca         	ldr	r3, [pc, #0x328]        @ 0x2e6c88 <AppDelegate::applicationDidFinishLaunching()+0x10c0>
  2e6960: 447b         	add	r3, pc
  2e6962: 4618         	mov	r0, r3
  2e6964: f2f1 fcce    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f199c
  2e6968: 4603         	mov	r3, r0
  2e696a: 4618         	mov	r0, r3
  2e696c: f7f6 f9b6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9c94
  2e6970: 4603         	mov	r3, r0
  2e6972: 4ab9         	ldr	r2, [pc, #0x2e4]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6974: 58a2         	ldr	r2, [r4, r2]
  2e6976: f102 00c0    	add.w	r0, r2, #0xc0
  2e697a: 4619         	mov	r1, r3
  2e697c: f2ac fcea    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac9d4
  2e6980: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x2e6c8c <AppDelegate::applicationDidFinishLaunching()+0x10c4>
  2e6982: 447b         	add	r3, pc
  2e6984: 4618         	mov	r0, r3
  2e6986: f2f1 fcbd    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f197a
  2e698a: 4603         	mov	r3, r0
  2e698c: 4618         	mov	r0, r3
  2e698e: f7f6 f9a5    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9cb6
  2e6992: 4603         	mov	r3, r0
  2e6994: 4ab0         	ldr	r2, [pc, #0x2c0]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e6996: 58a2         	ldr	r2, [r4, r2]
  2e6998: f102 00d0    	add.w	r0, r2, #0xd0
  2e699c: 4619         	mov	r1, r3
  2e699e: f2ac fcd9    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac9b2
  2e69a2: 4bbb         	ldr	r3, [pc, #0x2ec]        @ 0x2e6c90 <AppDelegate::applicationDidFinishLaunching()+0x10c8>
  2e69a4: 447b         	add	r3, pc
  2e69a6: 4618         	mov	r0, r3
  2e69a8: f2f1 fcac    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1958
  2e69ac: 4603         	mov	r3, r0
  2e69ae: 4618         	mov	r0, r3
  2e69b0: f7f6 f994    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9cd8
  2e69b4: 4603         	mov	r3, r0
  2e69b6: 4aa8         	ldr	r2, [pc, #0x2a0]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e69b8: 58a2         	ldr	r2, [r4, r2]
  2e69ba: f102 00e0    	add.w	r0, r2, #0xe0
  2e69be: 4619         	mov	r1, r3
  2e69c0: f2ac fcc8    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac990
  2e69c4: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x2e6c94 <AppDelegate::applicationDidFinishLaunching()+0x10cc>
  2e69c6: 447b         	add	r3, pc
  2e69c8: 4618         	mov	r0, r3
  2e69ca: f2f1 fc9b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1936
  2e69ce: 4603         	mov	r3, r0
  2e69d0: 4618         	mov	r0, r3
  2e69d2: f7f6 f983    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9cfa
  2e69d6: 4603         	mov	r3, r0
  2e69d8: 4a9f         	ldr	r2, [pc, #0x27c]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e69da: 58a2         	ldr	r2, [r4, r2]
  2e69dc: f102 00f0    	add.w	r0, r2, #0xf0
  2e69e0: 4619         	mov	r1, r3
  2e69e2: f2ac fcb7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac96e
  2e69e6: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x2e6c98 <AppDelegate::applicationDidFinishLaunching()+0x10d0>
  2e69e8: 447b         	add	r3, pc
  2e69ea: 4618         	mov	r0, r3
  2e69ec: f2f1 fc8a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1914
  2e69f0: 4603         	mov	r3, r0
  2e69f2: 4618         	mov	r0, r3
  2e69f4: f7f6 f972    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x9d1c
  2e69f8: 4603         	mov	r3, r0
  2e69fa: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x2e6c58 <AppDelegate::applicationDidFinishLaunching()+0x1090>
  2e69fc: 58a2         	ldr	r2, [r4, r2]
  2e69fe: f502 7080    	add.w	r0, r2, #0x100
  2e6a02: 4619         	mov	r1, r3
  2e6a04: f2ac fca6    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac94c
  2e6a08: 4ba4         	ldr	r3, [pc, #0x290]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6a0a: 58e3         	ldr	r3, [r4, r3]
  2e6a0c: 461d         	mov	r5, r3
  2e6a0e: 20ff         	movs	r0, #0xff
  2e6a10: 21ff         	movs	r1, #0xff
  2e6a12: 22ff         	movs	r2, #0xff
  2e6a14: f7fe f930    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1da0
  2e6a18: 4603         	mov	r3, r0
  2e6a1a: 461a         	mov	r2, r3
  2e6a1c: 702a         	strb	r2, [r5]
  2e6a1e: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6a22: 706a         	strb	r2, [r5, #0x1]
  2e6a24: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6a28: 70ab         	strb	r3, [r5, #0x2]
  2e6a2a: 4b9c         	ldr	r3, [pc, #0x270]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6a2c: 58e3         	ldr	r3, [r4, r3]
  2e6a2e: 461d         	mov	r5, r3
  2e6a30: 2014         	movs	r0, #0x14
  2e6a32: 2114         	movs	r1, #0x14
  2e6a34: 22f0         	movs	r2, #0xf0
  2e6a36: f7fe f91f    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1dc2
  2e6a3a: 4603         	mov	r3, r0
  2e6a3c: 461a         	mov	r2, r3
  2e6a3e: 70ea         	strb	r2, [r5, #0x3]
  2e6a40: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6a44: 712a         	strb	r2, [r5, #0x4]
  2e6a46: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6a4a: 716b         	strb	r3, [r5, #0x5]
  2e6a4c: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6a4e: 58e3         	ldr	r3, [r4, r3]
  2e6a50: 461d         	mov	r5, r3
  2e6a52: 20fa         	movs	r0, #0xfa
  2e6a54: 21dc         	movs	r1, #0xdc
  2e6a56: 2200         	movs	r2, #0x0
  2e6a58: f7fe f90e    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1de4
  2e6a5c: 4603         	mov	r3, r0
  2e6a5e: 461a         	mov	r2, r3
  2e6a60: 71aa         	strb	r2, [r5, #0x6]
  2e6a62: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6a66: 71ea         	strb	r2, [r5, #0x7]
  2e6a68: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6a6c: 722b         	strb	r3, [r5, #0x8]
  2e6a6e: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6a70: 58e3         	ldr	r3, [r4, r3]
  2e6a72: 461d         	mov	r5, r3
  2e6a74: 20ff         	movs	r0, #0xff
  2e6a76: 21a0         	movs	r1, #0xa0
  2e6a78: 2200         	movs	r2, #0x0
  2e6a7a: f7fe f8fd    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1e06
  2e6a7e: 4603         	mov	r3, r0
  2e6a80: 461a         	mov	r2, r3
  2e6a82: 726a         	strb	r2, [r5, #0x9]
  2e6a84: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6a88: 72aa         	strb	r2, [r5, #0xa]
  2e6a8a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6a8e: 72eb         	strb	r3, [r5, #0xb]
  2e6a90: 4b82         	ldr	r3, [pc, #0x208]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6a92: 58e3         	ldr	r3, [r4, r3]
  2e6a94: 461d         	mov	r5, r3
  2e6a96: 2019         	movs	r0, #0x19
  2e6a98: 21e1         	movs	r1, #0xe1
  2e6a9a: 22eb         	movs	r2, #0xeb
  2e6a9c: f7fe f8ec    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1e28
  2e6aa0: 4603         	mov	r3, r0
  2e6aa2: 461a         	mov	r2, r3
  2e6aa4: 732a         	strb	r2, [r5, #0xc]
  2e6aa6: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6aaa: 736a         	strb	r2, [r5, #0xd]
  2e6aac: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6ab0: 73ab         	strb	r3, [r5, #0xe]
  2e6ab2: 4b7a         	ldr	r3, [pc, #0x1e8]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6ab4: 58e3         	ldr	r3, [r4, r3]
  2e6ab6: 461d         	mov	r5, r3
  2e6ab8: 20ff         	movs	r0, #0xff
  2e6aba: 219b         	movs	r1, #0x9b
  2e6abc: 22ff         	movs	r2, #0xff
  2e6abe: f7fe f8db    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1e4a
  2e6ac2: 4603         	mov	r3, r0
  2e6ac4: 461a         	mov	r2, r3
  2e6ac6: 73ea         	strb	r2, [r5, #0xf]
  2e6ac8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6acc: 742a         	strb	r2, [r5, #0x10]
  2e6ace: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6ad2: 746b         	strb	r3, [r5, #0x11]
  2e6ad4: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x2e6c9c <AppDelegate::applicationDidFinishLaunching()+0x10d4>
  2e6ad6: 58e3         	ldr	r3, [r4, r3]
  2e6ad8: 461d         	mov	r5, r3
  2e6ada: 2091         	movs	r0, #0x91
  2e6adc: 2119         	movs	r1, #0x19
  2e6ade: 22cd         	movs	r2, #0xcd
  2e6ae0: f7fe f8ca    	bl	0x2e4c78 <AmmoMeter::setLength(double, double)+0x118> @ imm = #-0x1e6c
  2e6ae4: 4603         	mov	r3, r0
  2e6ae6: 461a         	mov	r2, r3
  2e6ae8: 74aa         	strb	r2, [r5, #0x12]
  2e6aea: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2e6aee: 74ea         	strb	r2, [r5, #0x13]
  2e6af0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2e6af4: 752b         	strb	r3, [r5, #0x14]
  2e6af6: ab3c         	add	r3, sp, #0xf0
  2e6af8: 4618         	mov	r0, r3
  2e6afa: f0a3 f47b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a38f6
  2e6afe: aa13         	add	r2, sp, #0x4c
  2e6b00: ab3c         	add	r3, sp, #0xf0
  2e6b02: 4610         	mov	r0, r2
  2e6b04: 4a66         	ldr	r2, [pc, #0x198]        @ 0x2e6ca0 <AppDelegate::applicationDidFinishLaunching()+0x10d8>
  2e6b06: 447a         	add	r2, pc
  2e6b08: 4611         	mov	r1, r2
  2e6b0a: 461a         	mov	r2, r3
  2e6b0c: f0cf f7a8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cff50
  2e6b10: ab13         	add	r3, sp, #0x4c
  2e6b12: 4618         	mov	r0, r3
  2e6b14: f2b2 ff92    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2f24
  2e6b18: 4680         	mov	r8, r0
  2e6b1a: ab3d         	add	r3, sp, #0xf4
  2e6b1c: 4618         	mov	r0, r3
  2e6b1e: f0a3 f469    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a38d2
  2e6b22: aa14         	add	r2, sp, #0x50
  2e6b24: ab3d         	add	r3, sp, #0xf4
  2e6b26: 4610         	mov	r0, r2
  2e6b28: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x2e6ca4 <AppDelegate::applicationDidFinishLaunching()+0x10dc>
  2e6b2a: 447a         	add	r2, pc
  2e6b2c: 4611         	mov	r1, r2
  2e6b2e: 461a         	mov	r2, r3
  2e6b30: f0cf f796    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cff2c
  2e6b34: ab14         	add	r3, sp, #0x50
  2e6b36: 4618         	mov	r0, r3
  2e6b38: f2b2 ff80    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2f00
  2e6b3c: 4607         	mov	r7, r0
  2e6b3e: ab3e         	add	r3, sp, #0xf8
  2e6b40: 4618         	mov	r0, r3
  2e6b42: f0a3 f457    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a38ae
  2e6b46: aa15         	add	r2, sp, #0x54
  2e6b48: ab3e         	add	r3, sp, #0xf8
  2e6b4a: 4610         	mov	r0, r2
  2e6b4c: 4a56         	ldr	r2, [pc, #0x158]        @ 0x2e6ca8 <AppDelegate::applicationDidFinishLaunching()+0x10e0>
  2e6b4e: 447a         	add	r2, pc
  2e6b50: 4611         	mov	r1, r2
  2e6b52: 461a         	mov	r2, r3
  2e6b54: f0cf f784    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cff08
  2e6b58: ab15         	add	r3, sp, #0x54
  2e6b5a: 4618         	mov	r0, r3
  2e6b5c: f2b2 ff6e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2edc
  2e6b60: 4606         	mov	r6, r0
  2e6b62: ab3f         	add	r3, sp, #0xfc
  2e6b64: e0a2         	b	0x2e6cac <AppDelegate::applicationDidFinishLaunching()+0x10e4> @ imm = #0x144
  2e6b66: bf00         	nop
  2e6b68: c584         	stm	r5!, {r2, r7}
  2e6b6a: 004d         	lsls	r5, r1, #0x1
  2e6b6c: c578         	stm	r5!, {r3, r4, r5, r6}
  2e6b6e: 004d         	lsls	r5, r1, #0x1
  2e6b70: c574         	stm	r5!, {r2, r4, r5, r6}
  2e6b72: 004d         	lsls	r5, r1, #0x1
  2e6b74: c570         	stm	r5!, {r4, r5, r6}
  2e6b76: 004d         	lsls	r5, r1, #0x1
  2e6b78: d724         	bvc	0x2e6bc4 <AppDelegate::applicationDidFinishLaunching()+0xffc> @ imm = #0x48
  2e6b7a: ffff c52a    	<unknown>
  2e6b7e: 004d         	lsls	r5, r1, #0x1
  2e6b80: d7a8         	bvc	0x2e6ad4 <AppDelegate::applicationDidFinishLaunching()+0xf0c> @ imm = #-0xb0
  2e6b82: ffff c506    	<unknown>
  2e6b86: 004d         	lsls	r5, r1, #0x1
  2e6b88: c4ec         	stm	r4!, {r2, r3, r5, r6, r7}
  2e6b8a: 004d         	lsls	r5, r1, #0x1
  2e6b8c: c4d2         	stm	r4!, {r1, r4, r6, r7}
  2e6b8e: 004d         	lsls	r5, r1, #0x1
  2e6b90: c4b8         	stm	r4!, {r3, r4, r5, r7}
  2e6b92: 004d         	lsls	r5, r1, #0x1
  2e6b94: c49e         	stm	r4!, {r1, r2, r3, r4, r7}
  2e6b96: 004d         	lsls	r5, r1, #0x1
  2e6b98: c484         	stm	r4!, {r2, r7}
  2e6b9a: 004d         	lsls	r5, r1, #0x1
  2e6b9c: c46a         	stm	r4!, {r1, r3, r5, r6}
  2e6b9e: 004d         	lsls	r5, r1, #0x1
  2e6ba0: c450         	stm	r4!, {r4, r6}
  2e6ba2: 004d         	lsls	r5, r1, #0x1
  2e6ba4: c436         	stm	r4!, {r1, r2, r4, r5}
  2e6ba6: 004d         	lsls	r5, r1, #0x1
  2e6ba8: c41c         	stm	r4!, {r2, r3, r4}
  2e6baa: 004d         	lsls	r5, r1, #0x1
  2e6bac: c402         	stm	r4!, {r1}
  2e6bae: 004d         	lsls	r5, r1, #0x1
  2e6bb0: c3e8         	stm	r3!, {r3, r5, r6, r7}
  2e6bb2: 004d         	lsls	r5, r1, #0x1
  2e6bb4: c3ce         	stm	r3!, {r1, r2, r3, r6, r7}
  2e6bb6: 004d         	lsls	r5, r1, #0x1
  2e6bb8: c3b4         	stm	r3!, {r2, r4, r5, r7}
  2e6bba: 004d         	lsls	r5, r1, #0x1
  2e6bbc: c39a         	stm	r3!, {r1, r3, r4, r7}
  2e6bbe: 004d         	lsls	r5, r1, #0x1
  2e6bc0: c380         	stm	r3!, {r7}
  2e6bc2: 004d         	lsls	r5, r1, #0x1
  2e6bc4: c366         	stm	r3!, {r1, r2, r5, r6}
  2e6bc6: 004d         	lsls	r5, r1, #0x1
  2e6bc8: d7ac         	bvc	0x2e6b24 <AppDelegate::applicationDidFinishLaunching()+0xf5c> @ imm = #-0xa8
  2e6bca: ffff c34e    	<unknown>
  2e6bce: 004d         	lsls	r5, r1, #0x1
  2e6bd0: c334         	stm	r3!, {r2, r4, r5}
  2e6bd2: 004d         	lsls	r5, r1, #0x1
  2e6bd4: c31a         	stm	r3!, {r1, r3, r4}
  2e6bd6: 004d         	lsls	r5, r1, #0x1
  2e6bd8: c300         	<unknown>
  2e6bda: 004d         	lsls	r5, r1, #0x1
  2e6bdc: c2e6         	stm	r2!, {r1, r2, r5, r6, r7}
  2e6bde: 004d         	lsls	r5, r1, #0x1
  2e6be0: c2cc         	stm	r2!, {r2, r3, r6, r7}
  2e6be2: 004d         	lsls	r5, r1, #0x1
  2e6be4: c2b2         	stm	r2!, {r1, r4, r5, r7}
  2e6be6: 004d         	lsls	r5, r1, #0x1
  2e6be8: c298         	stm	r2!, {r3, r4, r7}
  2e6bea: 004d         	lsls	r5, r1, #0x1
  2e6bec: c27e         	stm	r2!, {r1, r2, r3, r4, r5, r6}
  2e6bee: 004d         	lsls	r5, r1, #0x1
  2e6bf0: c264         	stm	r2!, {r2, r5, r6}
  2e6bf2: 004d         	lsls	r5, r1, #0x1
  2e6bf4: c24a         	stm	r2!, {r1, r3, r6}
  2e6bf6: 004d         	lsls	r5, r1, #0x1
  2e6bf8: c230         	stm	r2!, {r4, r5}
  2e6bfa: 004d         	lsls	r5, r1, #0x1
  2e6bfc: c216         	stm	r2!, {r1, r2, r4}
  2e6bfe: 004d         	lsls	r5, r1, #0x1
  2e6c00: c1fc         	stm	r1!, {r2, r3, r4, r5, r6, r7}
  2e6c02: 004d         	lsls	r5, r1, #0x1
  2e6c04: c1e2         	stm	r1!, {r1, r5, r6, r7}
  2e6c06: 004d         	lsls	r5, r1, #0x1
  2e6c08: c1c8         	stm	r1!, {r3, r6, r7}
  2e6c0a: 004d         	lsls	r5, r1, #0x1
  2e6c0c: c1ae         	stm	r1!, {r1, r2, r3, r5, r7}
  2e6c0e: 004d         	lsls	r5, r1, #0x1
  2e6c10: d7b0         	bvc	0x2e6b74 <AppDelegate::applicationDidFinishLaunching()+0xfac> @ imm = #-0xa0
  2e6c12: ffff c196    	vsra.u64	d28, d6, #0x1
  2e6c16: 004d         	lsls	r5, r1, #0x1
  2e6c18: c17c         	stm	r1!, {r2, r3, r4, r5, r6}
  2e6c1a: 004d         	lsls	r5, r1, #0x1
  2e6c1c: c162         	stm	r1!, {r1, r5, r6}
  2e6c1e: 004d         	lsls	r5, r1, #0x1
  2e6c20: c148         	stm	r1!, {r3, r6}
  2e6c22: 004d         	lsls	r5, r1, #0x1
  2e6c24: c12e         	stm	r1!, {r1, r2, r3, r5}
  2e6c26: 004d         	lsls	r5, r1, #0x1
  2e6c28: c114         	stm	r1!, {r2, r4}
  2e6c2a: 004d         	lsls	r5, r1, #0x1
  2e6c2c: c0fa         	stm	r0!, {r1, r3, r4, r5, r6, r7}
  2e6c2e: 004d         	lsls	r5, r1, #0x1
  2e6c30: c0e0         	stm	r0!, {r5, r6, r7}
  2e6c32: 004d         	lsls	r5, r1, #0x1
  2e6c34: c0c6         	stm	r0!, {r1, r2, r6, r7}
  2e6c36: 004d         	lsls	r5, r1, #0x1
  2e6c38: c0ac         	stm	r0!, {r2, r3, r5, r7}
  2e6c3a: 004d         	lsls	r5, r1, #0x1
  2e6c3c: c092         	stm	r0!, {r1, r4, r7}
  2e6c3e: 004d         	lsls	r5, r1, #0x1
  2e6c40: c078         	stm	r0!, {r3, r4, r5, r6}
  2e6c42: 004d         	lsls	r5, r1, #0x1
  2e6c44: c05e         	stm	r0!, {r1, r2, r3, r4, r6}
  2e6c46: 004d         	lsls	r5, r1, #0x1
  2e6c48: c044         	stm	r0!, {r2, r6}
  2e6c4a: 004d         	lsls	r5, r1, #0x1
  2e6c4c: c02a         	stm	r0!, {r1, r3, r5}
  2e6c4e: 004d         	lsls	r5, r1, #0x1
  2e6c50: c010         	stm	r0!, {r4}
  2e6c52: 004d         	lsls	r5, r1, #0x1
  2e6c54: bff6         	itte	al                      @ unpredictable IT predicate sequence
  2e6c56: 004d         	lsl	r5, r1, #0x1
  2e6c58: d7b4         	b	0x2e6bc4 <AppDelegate::applicationDidFinishLaunching()+0xffc> @ imm = #-0x98
  2e6c5a: ffff bfde    	<unknown>
  2e6c5e: 004d         	lsl<und>	r5, r1, #0x1
  2e6c60: bfc4         	itt	gt
  2e6c62: 004d         	lslgt	r5, r1, #0x1
  2e6c64: bf86         	itte	hi
  2e6c66: 004d         	lslhi	r5, r1, #0x1
  2e6c68: bf84         	itt	hi
  2e6c6a: 004d         	lslhi	r5, r1, #0x1
  2e6c6c: bf6e         	itee	vs
  2e6c6e: 004d         	lslvs	r5, r1, #0x1
  2e6c70: bf58         	it	pl
  2e6c72: 004d         	lslpl	r5, r1, #0x1
  2e6c74: bf42         	ittt	mi
  2e6c76: 004d         	lslmi	r5, r1, #0x1
  2e6c78: bf2c         	ite	hs
  2e6c7a: 004d         	lslhs	r5, r1, #0x1
  2e6c7c: bf16         	itet	ne
  2e6c7e: 004d         	lslne	r5, r1, #0x1
  2e6c80: bf00         	nopeq
  2e6c82: 004d         	lslne	r5, r1, #0x1
  2e6c84: beea         	bkpt	#0xea
  2e6c86: 004d         	lslls	r5, r1, #0x1
  2e6c88: bed4         	bkpt	#0xd4
  2e6c8a: 004d         	lsls	r5, r1, #0x1
  2e6c8c: bebe         	bkpt	#0xbe
  2e6c8e: 004d         	lsls	r5, r1, #0x1
  2e6c90: bea8         	bkpt	#0xa8
  2e6c92: 004d         	lsls	r5, r1, #0x1
  2e6c94: be92         	bkpt	#0x92
  2e6c96: 004d         	lsls	r5, r1, #0x1
  2e6c98: be7c         	bkpt	#0x7c
  2e6c9a: 004d         	lsls	r5, r1, #0x1
  2e6c9c: d7b8         	bvc	0x2e6c10 <AppDelegate::applicationDidFinishLaunching()+0x1048> @ imm = #-0x90
  2e6c9e: ffff bd6a    	<unknown>
  2e6ca2: 004d         	lsls	r5, r1, #0x1
  2e6ca4: bd4a         	pop	{r1, r3, r6, pc}
  2e6ca6: 004d         	lsls	r5, r1, #0x1
  2e6ca8: bd2e         	pop	{r1, r2, r3, r5, pc}
  2e6caa: 004d         	lsls	r5, r1, #0x1
  2e6cac: 4618         	mov	r0, r3
  2e6cae: f0a3 f3a1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3742
  2e6cb2: aa16         	add	r2, sp, #0x58
  2e6cb4: ab3f         	add	r3, sp, #0xfc
  2e6cb6: 4610         	mov	r0, r2
  2e6cb8: f8df 2ad8    	ldr.w	r2, [pc, #0xad8]        @ 0x2e7794 <AppDelegate::applicationDidFinishLaunching()+0x1bcc>
  2e6cbc: 447a         	add	r2, pc
  2e6cbe: 4611         	mov	r1, r2
  2e6cc0: 461a         	mov	r2, r3
  2e6cc2: f0cf f6cd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cfd9a
  2e6cc6: ab16         	add	r3, sp, #0x58
  2e6cc8: 4618         	mov	r0, r3
  2e6cca: f2b2 feb7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2d6e
  2e6cce: 4605         	mov	r5, r0
  2e6cd0: ab49         	add	r3, sp, #0x124
  2e6cd2: 4618         	mov	r0, r3
  2e6cd4: f0a3 f38e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a371c
  2e6cd8: aa17         	add	r2, sp, #0x5c
  2e6cda: ab49         	add	r3, sp, #0x124
  2e6cdc: 4610         	mov	r0, r2
  2e6cde: f8df 2ab8    	ldr.w	r2, [pc, #0xab8]        @ 0x2e7798 <AppDelegate::applicationDidFinishLaunching()+0x1bd0>
  2e6ce2: 447a         	add	r2, pc
  2e6ce4: 4611         	mov	r1, r2
  2e6ce6: 461a         	mov	r2, r3
  2e6ce8: f0cf f6ba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cfd74
  2e6cec: ab17         	add	r3, sp, #0x5c
  2e6cee: 4618         	mov	r0, r3
  2e6cf0: f2b2 fea4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2d48
  2e6cf4: 4682         	mov	r10, r0
  2e6cf6: ab4b         	add	r3, sp, #0x12c
  2e6cf8: 4618         	mov	r0, r3
  2e6cfa: f0a3 f37b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a36f6
  2e6cfe: aa18         	add	r2, sp, #0x60
  2e6d00: ab4b         	add	r3, sp, #0x12c
  2e6d02: 4610         	mov	r0, r2
  2e6d04: f8df 2a94    	ldr.w	r2, [pc, #0xa94]        @ 0x2e779c <AppDelegate::applicationDidFinishLaunching()+0x1bd4>
  2e6d08: 447a         	add	r2, pc
  2e6d0a: 4611         	mov	r1, r2
  2e6d0c: 461a         	mov	r2, r3
  2e6d0e: f0cf f6a7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cfd4e
  2e6d12: ab18         	add	r3, sp, #0x60
  2e6d14: 4618         	mov	r0, r3
  2e6d16: f2b2 fe91    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2d22
  2e6d1a: 4681         	mov	r9, r0
  2e6d1c: ab4d         	add	r3, sp, #0x134
  2e6d1e: 4618         	mov	r0, r3
  2e6d20: f0a3 f368    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a36d0
  2e6d24: aa19         	add	r2, sp, #0x64
  2e6d26: ab4d         	add	r3, sp, #0x134
  2e6d28: 4610         	mov	r0, r2
  2e6d2a: f8df 2a74    	ldr.w	r2, [pc, #0xa74]        @ 0x2e77a0 <AppDelegate::applicationDidFinishLaunching()+0x1bd8>
  2e6d2e: 447a         	add	r2, pc
  2e6d30: 4611         	mov	r1, r2
  2e6d32: 461a         	mov	r2, r3
  2e6d34: f0cf f694    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cfd28
  2e6d38: ab19         	add	r3, sp, #0x64
  2e6d3a: 4618         	mov	r0, r3
  2e6d3c: f2b2 fe7e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2cfc
  2e6d40: 4603         	mov	r3, r0
  2e6d42: f8cd a000    	str.w	r10, [sp]
  2e6d46: f8cd 9004    	str.w	r9, [sp, #0x4]
  2e6d4a: 9302         	str	r3, [sp, #0x8]
  2e6d4c: 2300         	movs	r3, #0x0
  2e6d4e: 9303         	str	r3, [sp, #0xc]
  2e6d50: 4640         	mov	r0, r8
  2e6d52: 4639         	mov	r1, r7
  2e6d54: 4632         	mov	r2, r6
  2e6d56: 462b         	mov	r3, r5
  2e6d58: f2b3 f85a    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b30b4
  2e6d5c: 4603         	mov	r3, r0
  2e6d5e: 461a         	mov	r2, r3
  2e6d60: f8df 3a40    	ldr.w	r3, [pc, #0xa40]        @ 0x2e77a4 <AppDelegate::applicationDidFinishLaunching()+0x1bdc>
  2e6d64: 58e3         	ldr	r3, [r4, r3]
  2e6d66: 601a         	str	r2, [r3]
  2e6d68: ab19         	add	r3, sp, #0x64
  2e6d6a: 4618         	mov	r0, r3
  2e6d6c: f0ce f5d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceba4
  2e6d70: ab4d         	add	r3, sp, #0x134
  2e6d72: 4618         	mov	r0, r3
  2e6d74: f0a3 f342    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3684
  2e6d78: ab18         	add	r3, sp, #0x60
  2e6d7a: 4618         	mov	r0, r3
  2e6d7c: f0ce f5ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb94
  2e6d80: ab4b         	add	r3, sp, #0x12c
  2e6d82: 4618         	mov	r0, r3
  2e6d84: f0a3 f33a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3674
  2e6d88: ab17         	add	r3, sp, #0x5c
  2e6d8a: 4618         	mov	r0, r3
  2e6d8c: f0ce f5c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb84
  2e6d90: ab49         	add	r3, sp, #0x124
  2e6d92: 4618         	mov	r0, r3
  2e6d94: f0a3 f332    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3664
  2e6d98: ab16         	add	r3, sp, #0x58
  2e6d9a: 4618         	mov	r0, r3
  2e6d9c: f0ce f5ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb74
  2e6da0: ab3f         	add	r3, sp, #0xfc
  2e6da2: 4618         	mov	r0, r3
  2e6da4: f0a3 f32a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3654
  2e6da8: ab15         	add	r3, sp, #0x54
  2e6daa: 4618         	mov	r0, r3
  2e6dac: f0ce f5b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb64
  2e6db0: ab3e         	add	r3, sp, #0xf8
  2e6db2: 4618         	mov	r0, r3
  2e6db4: f0a3 f322    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3644
  2e6db8: ab14         	add	r3, sp, #0x50
  2e6dba: 4618         	mov	r0, r3
  2e6dbc: f0ce f5aa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb54
  2e6dc0: ab3d         	add	r3, sp, #0xf4
  2e6dc2: 4618         	mov	r0, r3
  2e6dc4: f0a3 f31a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3634
  2e6dc8: ab13         	add	r3, sp, #0x4c
  2e6dca: 4618         	mov	r0, r3
  2e6dcc: f0ce f5a2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ceb44
  2e6dd0: ab3c         	add	r3, sp, #0xf0
  2e6dd2: 4618         	mov	r0, r3
  2e6dd4: f0a3 f312    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3624
  2e6dd8: f8df 39c8    	ldr.w	r3, [pc, #0x9c8]        @ 0x2e77a4 <AppDelegate::applicationDidFinishLaunching()+0x1bdc>
  2e6ddc: 58e3         	ldr	r3, [r4, r3]
  2e6dde: 681b         	ldr	r3, [r3]
  2e6de0: 4618         	mov	r0, r3
  2e6de2: f2b1 f881    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b1102
  2e6de6: f8df 39c0    	ldr.w	r3, [pc, #0x9c0]        @ 0x2e77a8 <AppDelegate::applicationDidFinishLaunching()+0x1be0>
  2e6dea: 447b         	add	r3, pc
  2e6dec: 4618         	mov	r0, r3
  2e6dee: f2f1 fa89    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1512
  2e6df2: 4603         	mov	r3, r0
  2e6df4: 4618         	mov	r0, r3
  2e6df6: f7f5 ff71    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa11e
  2e6dfa: 4603         	mov	r3, r0
  2e6dfc: f8df 29ac    	ldr.w	r2, [pc, #0x9ac]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6e00: 58a2         	ldr	r2, [r4, r2]
  2e6e02: 4610         	mov	r0, r2
  2e6e04: 4619         	mov	r1, r3
  2e6e06: f2ac faa5    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac54a
  2e6e0a: f8df 39a4    	ldr.w	r3, [pc, #0x9a4]        @ 0x2e77b0 <AppDelegate::applicationDidFinishLaunching()+0x1be8>
  2e6e0e: 447b         	add	r3, pc
  2e6e10: 4618         	mov	r0, r3
  2e6e12: f2f1 fa77    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f14ee
  2e6e16: 4603         	mov	r3, r0
  2e6e18: 4618         	mov	r0, r3
  2e6e1a: f7f5 ff5f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa142
  2e6e1e: 4603         	mov	r3, r0
  2e6e20: f8df 2988    	ldr.w	r2, [pc, #0x988]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6e24: 58a2         	ldr	r2, [r4, r2]
  2e6e26: f102 0010    	add.w	r0, r2, #0x10
  2e6e2a: 4619         	mov	r1, r3
  2e6e2c: f2ac fa92    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac524
  2e6e30: f8df 3980    	ldr.w	r3, [pc, #0x980]        @ 0x2e77b4 <AppDelegate::applicationDidFinishLaunching()+0x1bec>
  2e6e34: 447b         	add	r3, pc
  2e6e36: 4618         	mov	r0, r3
  2e6e38: f2f1 fa64    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f14c8
  2e6e3c: 4603         	mov	r3, r0
  2e6e3e: 4618         	mov	r0, r3
  2e6e40: f7f5 ff4c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa168
  2e6e44: 4603         	mov	r3, r0
  2e6e46: f8df 2964    	ldr.w	r2, [pc, #0x964]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6e4a: 58a2         	ldr	r2, [r4, r2]
  2e6e4c: f102 0020    	add.w	r0, r2, #0x20
  2e6e50: 4619         	mov	r1, r3
  2e6e52: f2ac fa7f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac4fe
  2e6e56: f8df 3960    	ldr.w	r3, [pc, #0x960]        @ 0x2e77b8 <AppDelegate::applicationDidFinishLaunching()+0x1bf0>
  2e6e5a: 447b         	add	r3, pc
  2e6e5c: 4618         	mov	r0, r3
  2e6e5e: f2f1 fa51    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f14a2
  2e6e62: 4603         	mov	r3, r0
  2e6e64: 4618         	mov	r0, r3
  2e6e66: f7f5 ff39    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa18e
  2e6e6a: 4603         	mov	r3, r0
  2e6e6c: f8df 293c    	ldr.w	r2, [pc, #0x93c]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6e70: 58a2         	ldr	r2, [r4, r2]
  2e6e72: f102 0030    	add.w	r0, r2, #0x30
  2e6e76: 4619         	mov	r1, r3
  2e6e78: f2ac fa6c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac4d8
  2e6e7c: f8df 393c    	ldr.w	r3, [pc, #0x93c]        @ 0x2e77bc <AppDelegate::applicationDidFinishLaunching()+0x1bf4>
  2e6e80: 447b         	add	r3, pc
  2e6e82: 4618         	mov	r0, r3
  2e6e84: f2f1 fa3e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f147c
  2e6e88: 4603         	mov	r3, r0
  2e6e8a: 4618         	mov	r0, r3
  2e6e8c: f7f5 ff26    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa1b4
  2e6e90: 4603         	mov	r3, r0
  2e6e92: f8df 2918    	ldr.w	r2, [pc, #0x918]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6e96: 58a2         	ldr	r2, [r4, r2]
  2e6e98: f102 0040    	add.w	r0, r2, #0x40
  2e6e9c: 4619         	mov	r1, r3
  2e6e9e: f2ac fa59    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac4b2
  2e6ea2: f8df 391c    	ldr.w	r3, [pc, #0x91c]        @ 0x2e77c0 <AppDelegate::applicationDidFinishLaunching()+0x1bf8>
  2e6ea6: 447b         	add	r3, pc
  2e6ea8: 4618         	mov	r0, r3
  2e6eaa: f2f1 fa2b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1456
  2e6eae: 4603         	mov	r3, r0
  2e6eb0: 4618         	mov	r0, r3
  2e6eb2: f7f5 ff13    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa1da
  2e6eb6: 4603         	mov	r3, r0
  2e6eb8: f8df 28f0    	ldr.w	r2, [pc, #0x8f0]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6ebc: 58a2         	ldr	r2, [r4, r2]
  2e6ebe: f102 0050    	add.w	r0, r2, #0x50
  2e6ec2: 4619         	mov	r1, r3
  2e6ec4: f2ac fa46    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac48c
  2e6ec8: f8df 38f8    	ldr.w	r3, [pc, #0x8f8]        @ 0x2e77c4 <AppDelegate::applicationDidFinishLaunching()+0x1bfc>
  2e6ecc: 447b         	add	r3, pc
  2e6ece: 4618         	mov	r0, r3
  2e6ed0: f2f1 fa18    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1430
  2e6ed4: 4603         	mov	r3, r0
  2e6ed6: 4618         	mov	r0, r3
  2e6ed8: f7f5 ff00    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa200
  2e6edc: 4603         	mov	r3, r0
  2e6ede: f8df 28cc    	ldr.w	r2, [pc, #0x8cc]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6ee2: 58a2         	ldr	r2, [r4, r2]
  2e6ee4: f102 0060    	add.w	r0, r2, #0x60
  2e6ee8: 4619         	mov	r1, r3
  2e6eea: f2ac fa33    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac466
  2e6eee: f8df 38d8    	ldr.w	r3, [pc, #0x8d8]        @ 0x2e77c8 <AppDelegate::applicationDidFinishLaunching()+0x1c00>
  2e6ef2: 447b         	add	r3, pc
  2e6ef4: 4618         	mov	r0, r3
  2e6ef6: f2f1 fa05    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f140a
  2e6efa: 4603         	mov	r3, r0
  2e6efc: 4618         	mov	r0, r3
  2e6efe: f7f5 feed    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa226
  2e6f02: 4603         	mov	r3, r0
  2e6f04: f8df 28a4    	ldr.w	r2, [pc, #0x8a4]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6f08: 58a2         	ldr	r2, [r4, r2]
  2e6f0a: f102 0070    	add.w	r0, r2, #0x70
  2e6f0e: 4619         	mov	r1, r3
  2e6f10: f2ac fa20    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac440
  2e6f14: f8df 38b4    	ldr.w	r3, [pc, #0x8b4]        @ 0x2e77cc <AppDelegate::applicationDidFinishLaunching()+0x1c04>
  2e6f18: 447b         	add	r3, pc
  2e6f1a: 4618         	mov	r0, r3
  2e6f1c: f2f1 f9f2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f13e4
  2e6f20: 4603         	mov	r3, r0
  2e6f22: 4618         	mov	r0, r3
  2e6f24: f7f5 feda    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa24c
  2e6f28: 4603         	mov	r3, r0
  2e6f2a: f8df 2880    	ldr.w	r2, [pc, #0x880]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6f2e: 58a2         	ldr	r2, [r4, r2]
  2e6f30: f102 0080    	add.w	r0, r2, #0x80
  2e6f34: 4619         	mov	r1, r3
  2e6f36: f2ac fa0d    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac41a
  2e6f3a: f8df 3894    	ldr.w	r3, [pc, #0x894]        @ 0x2e77d0 <AppDelegate::applicationDidFinishLaunching()+0x1c08>
  2e6f3e: 447b         	add	r3, pc
  2e6f40: 4618         	mov	r0, r3
  2e6f42: f2f1 f9df    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f13be
  2e6f46: 4603         	mov	r3, r0
  2e6f48: 4618         	mov	r0, r3
  2e6f4a: f7f5 fec7    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa272
  2e6f4e: 4603         	mov	r3, r0
  2e6f50: f8df 2858    	ldr.w	r2, [pc, #0x858]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6f54: 58a2         	ldr	r2, [r4, r2]
  2e6f56: f102 0090    	add.w	r0, r2, #0x90
  2e6f5a: 4619         	mov	r1, r3
  2e6f5c: f2ac f9fa    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac3f4
  2e6f60: f8df 3870    	ldr.w	r3, [pc, #0x870]        @ 0x2e77d4 <AppDelegate::applicationDidFinishLaunching()+0x1c0c>
  2e6f64: 447b         	add	r3, pc
  2e6f66: 4618         	mov	r0, r3
  2e6f68: f2f1 f9cc    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1398
  2e6f6c: 4603         	mov	r3, r0
  2e6f6e: 4618         	mov	r0, r3
  2e6f70: f7f5 feb4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa298
  2e6f74: 4603         	mov	r3, r0
  2e6f76: f8df 2834    	ldr.w	r2, [pc, #0x834]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6f7a: 58a2         	ldr	r2, [r4, r2]
  2e6f7c: f102 00a0    	add.w	r0, r2, #0xa0
  2e6f80: 4619         	mov	r1, r3
  2e6f82: f2ac f9e7    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac3ce
  2e6f86: f8df 3850    	ldr.w	r3, [pc, #0x850]        @ 0x2e77d8 <AppDelegate::applicationDidFinishLaunching()+0x1c10>
  2e6f8a: 447b         	add	r3, pc
  2e6f8c: 4618         	mov	r0, r3
  2e6f8e: f2f1 f9b9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1372
  2e6f92: 4603         	mov	r3, r0
  2e6f94: 4618         	mov	r0, r3
  2e6f96: f7f5 fea1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa2be
  2e6f9a: 4603         	mov	r3, r0
  2e6f9c: f8df 280c    	ldr.w	r2, [pc, #0x80c]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6fa0: 58a2         	ldr	r2, [r4, r2]
  2e6fa2: f102 00b0    	add.w	r0, r2, #0xb0
  2e6fa6: 4619         	mov	r1, r3
  2e6fa8: f2ac f9d4    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac3a8
  2e6fac: f8df 382c    	ldr.w	r3, [pc, #0x82c]        @ 0x2e77dc <AppDelegate::applicationDidFinishLaunching()+0x1c14>
  2e6fb0: 447b         	add	r3, pc
  2e6fb2: 4618         	mov	r0, r3
  2e6fb4: f2f1 f9a6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f134c
  2e6fb8: 4603         	mov	r3, r0
  2e6fba: 4618         	mov	r0, r3
  2e6fbc: f7f5 fe8e    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa2e4
  2e6fc0: 4603         	mov	r3, r0
  2e6fc2: f8df 27e8    	ldr.w	r2, [pc, #0x7e8]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6fc6: 58a2         	ldr	r2, [r4, r2]
  2e6fc8: f102 00c0    	add.w	r0, r2, #0xc0
  2e6fcc: 4619         	mov	r1, r3
  2e6fce: f2ac f9c1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac382
  2e6fd2: f8df 380c    	ldr.w	r3, [pc, #0x80c]        @ 0x2e77e0 <AppDelegate::applicationDidFinishLaunching()+0x1c18>
  2e6fd6: 447b         	add	r3, pc
  2e6fd8: 4618         	mov	r0, r3
  2e6fda: f2f1 f993    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1326
  2e6fde: 4603         	mov	r3, r0
  2e6fe0: 4618         	mov	r0, r3
  2e6fe2: f7f5 fe7b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa30a
  2e6fe6: 4603         	mov	r3, r0
  2e6fe8: f8df 27c0    	ldr.w	r2, [pc, #0x7c0]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e6fec: 58a2         	ldr	r2, [r4, r2]
  2e6fee: f102 00d0    	add.w	r0, r2, #0xd0
  2e6ff2: 4619         	mov	r1, r3
  2e6ff4: f2ac f9ae    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac35c
  2e6ff8: f8df 37e8    	ldr.w	r3, [pc, #0x7e8]        @ 0x2e77e4 <AppDelegate::applicationDidFinishLaunching()+0x1c1c>
  2e6ffc: 447b         	add	r3, pc
  2e6ffe: 4618         	mov	r0, r3
  2e7000: f2f1 f980    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1300
  2e7004: 4603         	mov	r3, r0
  2e7006: 4618         	mov	r0, r3
  2e7008: f7f5 fe68    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa330
  2e700c: 4603         	mov	r3, r0
  2e700e: f8df 279c    	ldr.w	r2, [pc, #0x79c]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e7012: 58a2         	ldr	r2, [r4, r2]
  2e7014: f102 00e0    	add.w	r0, r2, #0xe0
  2e7018: 4619         	mov	r1, r3
  2e701a: f2ac f99b    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac336
  2e701e: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x2e77e8 <AppDelegate::applicationDidFinishLaunching()+0x1c20>
  2e7022: 447b         	add	r3, pc
  2e7024: 4618         	mov	r0, r3
  2e7026: f2f1 f96d    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f12da
  2e702a: 4603         	mov	r3, r0
  2e702c: 4618         	mov	r0, r3
  2e702e: f7f5 fe55    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa356
  2e7032: 4603         	mov	r3, r0
  2e7034: f8df 2774    	ldr.w	r2, [pc, #0x774]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e7038: 58a2         	ldr	r2, [r4, r2]
  2e703a: f102 00f0    	add.w	r0, r2, #0xf0
  2e703e: 4619         	mov	r1, r3
  2e7040: f2ac f988    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac310
  2e7044: f8df 37a4    	ldr.w	r3, [pc, #0x7a4]        @ 0x2e77ec <AppDelegate::applicationDidFinishLaunching()+0x1c24>
  2e7048: 447b         	add	r3, pc
  2e704a: 4618         	mov	r0, r3
  2e704c: f2f1 f95a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f12b4
  2e7050: 4603         	mov	r3, r0
  2e7052: 4618         	mov	r0, r3
  2e7054: f7f5 fe42    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa37c
  2e7058: 4603         	mov	r3, r0
  2e705a: f8df 2750    	ldr.w	r2, [pc, #0x750]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e705e: 58a2         	ldr	r2, [r4, r2]
  2e7060: f502 7080    	add.w	r0, r2, #0x100
  2e7064: 4619         	mov	r1, r3
  2e7066: f2ac f975    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac2ea
  2e706a: f8df 3784    	ldr.w	r3, [pc, #0x784]        @ 0x2e77f0 <AppDelegate::applicationDidFinishLaunching()+0x1c28>
  2e706e: 447b         	add	r3, pc
  2e7070: 4618         	mov	r0, r3
  2e7072: f2f1 f947    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f128e
  2e7076: 4603         	mov	r3, r0
  2e7078: 4618         	mov	r0, r3
  2e707a: f7f5 fe2f    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa3a2
  2e707e: 4603         	mov	r3, r0
  2e7080: f8df 2728    	ldr.w	r2, [pc, #0x728]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e7084: 58a2         	ldr	r2, [r4, r2]
  2e7086: f502 7088    	add.w	r0, r2, #0x110
  2e708a: 4619         	mov	r1, r3
  2e708c: f2ac f962    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac2c4
  2e7090: f8df 3760    	ldr.w	r3, [pc, #0x760]        @ 0x2e77f4 <AppDelegate::applicationDidFinishLaunching()+0x1c2c>
  2e7094: 447b         	add	r3, pc
  2e7096: 4618         	mov	r0, r3
  2e7098: f2f1 f934    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1268
  2e709c: 4603         	mov	r3, r0
  2e709e: 4618         	mov	r0, r3
  2e70a0: f7f5 fe1c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa3c8
  2e70a4: 4603         	mov	r3, r0
  2e70a6: f8df 2704    	ldr.w	r2, [pc, #0x704]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e70aa: 58a2         	ldr	r2, [r4, r2]
  2e70ac: f502 7090    	add.w	r0, r2, #0x120
  2e70b0: 4619         	mov	r1, r3
  2e70b2: f2ac f94f    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac29e
  2e70b6: f8df 3740    	ldr.w	r3, [pc, #0x740]        @ 0x2e77f8 <AppDelegate::applicationDidFinishLaunching()+0x1c30>
  2e70ba: 447b         	add	r3, pc
  2e70bc: 4618         	mov	r0, r3
  2e70be: f2f1 f921    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f1242
  2e70c2: 4603         	mov	r3, r0
  2e70c4: 4618         	mov	r0, r3
  2e70c6: f7f5 fe09    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa3ee
  2e70ca: 4603         	mov	r3, r0
  2e70cc: f8df 26dc    	ldr.w	r2, [pc, #0x6dc]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e70d0: 58a2         	ldr	r2, [r4, r2]
  2e70d2: f502 7098    	add.w	r0, r2, #0x130
  2e70d6: 4619         	mov	r1, r3
  2e70d8: f2ac f93c    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac278
  2e70dc: f8df 371c    	ldr.w	r3, [pc, #0x71c]        @ 0x2e77fc <AppDelegate::applicationDidFinishLaunching()+0x1c34>
  2e70e0: 447b         	add	r3, pc
  2e70e2: 4618         	mov	r0, r3
  2e70e4: f2f1 f90e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f121c
  2e70e8: 4603         	mov	r3, r0
  2e70ea: 4618         	mov	r0, r3
  2e70ec: f7f5 fdf6    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa414
  2e70f0: 4603         	mov	r3, r0
  2e70f2: f8df 26b8    	ldr.w	r2, [pc, #0x6b8]        @ 0x2e77ac <AppDelegate::applicationDidFinishLaunching()+0x1be4>
  2e70f6: 58a2         	ldr	r2, [r4, r2]
  2e70f8: f502 70a0    	add.w	r0, r2, #0x140
  2e70fc: 4619         	mov	r1, r3
  2e70fe: f2ac f929    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac252
  2e7102: f8df 36fc    	ldr.w	r3, [pc, #0x6fc]        @ 0x2e7800 <AppDelegate::applicationDidFinishLaunching()+0x1c38>
  2e7106: 447b         	add	r3, pc
  2e7108: 4618         	mov	r0, r3
  2e710a: f2f1 f8fb    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f11f6
  2e710e: 4603         	mov	r3, r0
  2e7110: 4618         	mov	r0, r3
  2e7112: f7f5 fde3    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa43a
  2e7116: 4603         	mov	r3, r0
  2e7118: f8df 26e8    	ldr.w	r2, [pc, #0x6e8]        @ 0x2e7804 <AppDelegate::applicationDidFinishLaunching()+0x1c3c>
  2e711c: 58a2         	ldr	r2, [r4, r2]
  2e711e: 4610         	mov	r0, r2
  2e7120: 4619         	mov	r1, r3
  2e7122: f2ac f917    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac22e
  2e7126: f8df 36e0    	ldr.w	r3, [pc, #0x6e0]        @ 0x2e7808 <AppDelegate::applicationDidFinishLaunching()+0x1c40>
  2e712a: 447b         	add	r3, pc
  2e712c: 4618         	mov	r0, r3
  2e712e: f2f1 f8e9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f11d2
  2e7132: 4603         	mov	r3, r0
  2e7134: 4618         	mov	r0, r3
  2e7136: f7f5 fdd1    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa45e
  2e713a: 4603         	mov	r3, r0
  2e713c: f8df 26c4    	ldr.w	r2, [pc, #0x6c4]        @ 0x2e7804 <AppDelegate::applicationDidFinishLaunching()+0x1c3c>
  2e7140: 58a2         	ldr	r2, [r4, r2]
  2e7142: f102 0010    	add.w	r0, r2, #0x10
  2e7146: 4619         	mov	r1, r3
  2e7148: f2ac f904    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac208
  2e714c: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x2e780c <AppDelegate::applicationDidFinishLaunching()+0x1c44>
  2e7150: 447b         	add	r3, pc
  2e7152: 4618         	mov	r0, r3
  2e7154: f2f1 f8d6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2f11ac
  2e7158: 4603         	mov	r3, r0
  2e715a: 4618         	mov	r0, r3
  2e715c: f7f5 fdbe    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xa484
  2e7160: 4603         	mov	r3, r0
  2e7162: f8df 26a0    	ldr.w	r2, [pc, #0x6a0]        @ 0x2e7804 <AppDelegate::applicationDidFinishLaunching()+0x1c3c>
  2e7166: 58a2         	ldr	r2, [r4, r2]
  2e7168: f102 0020    	add.w	r0, r2, #0x20
  2e716c: 4619         	mov	r1, r3
  2e716e: f2ac f8f1    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x2ac1e2
  2e7172: ab36         	add	r3, sp, #0xd8
  2e7174: 4618         	mov	r0, r3
  2e7176: f0a3 f13d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a327a
  2e717a: aa1a         	add	r2, sp, #0x68
  2e717c: ab36         	add	r3, sp, #0xd8
  2e717e: 4610         	mov	r0, r2
  2e7180: f8df 268c    	ldr.w	r2, [pc, #0x68c]        @ 0x2e7810 <AppDelegate::applicationDidFinishLaunching()+0x1c48>
  2e7184: 447a         	add	r2, pc
  2e7186: 4611         	mov	r1, r2
  2e7188: 461a         	mov	r2, r3
  2e718a: f0cf f469    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf8d2
  2e718e: ab1a         	add	r3, sp, #0x68
  2e7190: 4618         	mov	r0, r3
  2e7192: f2b2 fc53    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b28a6
  2e7196: 4682         	mov	r10, r0
  2e7198: ab37         	add	r3, sp, #0xdc
  2e719a: 4618         	mov	r0, r3
  2e719c: f0a3 f12a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3254
  2e71a0: aa1b         	add	r2, sp, #0x6c
  2e71a2: ab37         	add	r3, sp, #0xdc
  2e71a4: 4610         	mov	r0, r2
  2e71a6: f8df 266c    	ldr.w	r2, [pc, #0x66c]        @ 0x2e7814 <AppDelegate::applicationDidFinishLaunching()+0x1c4c>
  2e71aa: 447a         	add	r2, pc
  2e71ac: 4611         	mov	r1, r2
  2e71ae: 461a         	mov	r2, r3
  2e71b0: f0cf f456    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf8ac
  2e71b4: ab1b         	add	r3, sp, #0x6c
  2e71b6: 4618         	mov	r0, r3
  2e71b8: f2b2 fc40    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2880
  2e71bc: 4681         	mov	r9, r0
  2e71be: ab38         	add	r3, sp, #0xe0
  2e71c0: 4618         	mov	r0, r3
  2e71c2: f0a3 f117    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a322e
  2e71c6: aa1c         	add	r2, sp, #0x70
  2e71c8: ab38         	add	r3, sp, #0xe0
  2e71ca: 4610         	mov	r0, r2
  2e71cc: f8df 2648    	ldr.w	r2, [pc, #0x648]        @ 0x2e7818 <AppDelegate::applicationDidFinishLaunching()+0x1c50>
  2e71d0: 447a         	add	r2, pc
  2e71d2: 4611         	mov	r1, r2
  2e71d4: 461a         	mov	r2, r3
  2e71d6: f0cf f443    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf886
  2e71da: ab1c         	add	r3, sp, #0x70
  2e71dc: 4618         	mov	r0, r3
  2e71de: f2b2 fc2d    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b285a
  2e71e2: 4680         	mov	r8, r0
  2e71e4: ab39         	add	r3, sp, #0xe4
  2e71e6: 4618         	mov	r0, r3
  2e71e8: f0a3 f104    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3208
  2e71ec: aa1d         	add	r2, sp, #0x74
  2e71ee: ab39         	add	r3, sp, #0xe4
  2e71f0: 4610         	mov	r0, r2
  2e71f2: f8df 2628    	ldr.w	r2, [pc, #0x628]        @ 0x2e781c <AppDelegate::applicationDidFinishLaunching()+0x1c54>
  2e71f6: 447a         	add	r2, pc
  2e71f8: 4611         	mov	r1, r2
  2e71fa: 461a         	mov	r2, r3
  2e71fc: f0cf f430    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf860
  2e7200: ab1d         	add	r3, sp, #0x74
  2e7202: 4618         	mov	r0, r3
  2e7204: f2b2 fc1a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2834
  2e7208: 4607         	mov	r7, r0
  2e720a: ab3a         	add	r3, sp, #0xe8
  2e720c: 4618         	mov	r0, r3
  2e720e: f0a3 f0f1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a31e2
  2e7212: aa1e         	add	r2, sp, #0x78
  2e7214: ab3a         	add	r3, sp, #0xe8
  2e7216: 4610         	mov	r0, r2
  2e7218: f8df 2604    	ldr.w	r2, [pc, #0x604]        @ 0x2e7820 <AppDelegate::applicationDidFinishLaunching()+0x1c58>
  2e721c: 447a         	add	r2, pc
  2e721e: 4611         	mov	r1, r2
  2e7220: 461a         	mov	r2, r3
  2e7222: f0cf f41d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf83a
  2e7226: ab1e         	add	r3, sp, #0x78
  2e7228: 4618         	mov	r0, r3
  2e722a: f2b2 fc07    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b280e
  2e722e: 900e         	str	r0, [sp, #0x38]
  2e7230: ab3b         	add	r3, sp, #0xec
  2e7232: 4618         	mov	r0, r3
  2e7234: f0a3 f0de    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a31bc
  2e7238: aa1f         	add	r2, sp, #0x7c
  2e723a: ab3b         	add	r3, sp, #0xec
  2e723c: 4610         	mov	r0, r2
  2e723e: f8df 25e4    	ldr.w	r2, [pc, #0x5e4]        @ 0x2e7824 <AppDelegate::applicationDidFinishLaunching()+0x1c5c>
  2e7242: 447a         	add	r2, pc
  2e7244: 4611         	mov	r1, r2
  2e7246: 461a         	mov	r2, r3
  2e7248: f0cf f40a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf814
  2e724c: ab1f         	add	r3, sp, #0x7c
  2e724e: 4618         	mov	r0, r3
  2e7250: f2b2 fbf4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b27e8
  2e7254: 900d         	str	r0, [sp, #0x34]
  2e7256: ab3c         	add	r3, sp, #0xf0
  2e7258: 4618         	mov	r0, r3
  2e725a: f0a3 f0cb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3196
  2e725e: aa20         	add	r2, sp, #0x80
  2e7260: ab3c         	add	r3, sp, #0xf0
  2e7262: 4610         	mov	r0, r2
  2e7264: f8df 25c0    	ldr.w	r2, [pc, #0x5c0]        @ 0x2e7828 <AppDelegate::applicationDidFinishLaunching()+0x1c60>
  2e7268: 447a         	add	r2, pc
  2e726a: 4611         	mov	r1, r2
  2e726c: 461a         	mov	r2, r3
  2e726e: f0cf f3f7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf7ee
  2e7272: ab20         	add	r3, sp, #0x80
  2e7274: 4618         	mov	r0, r3
  2e7276: f2b2 fbe1    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b27c2
  2e727a: 900c         	str	r0, [sp, #0x30]
  2e727c: ab3d         	add	r3, sp, #0xf4
  2e727e: 4618         	mov	r0, r3
  2e7280: f0a3 f0b8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3170
  2e7284: aa21         	add	r2, sp, #0x84
  2e7286: ab3d         	add	r3, sp, #0xf4
  2e7288: 4610         	mov	r0, r2
  2e728a: f8df 25a0    	ldr.w	r2, [pc, #0x5a0]        @ 0x2e782c <AppDelegate::applicationDidFinishLaunching()+0x1c64>
  2e728e: 447a         	add	r2, pc
  2e7290: 4611         	mov	r1, r2
  2e7292: 461a         	mov	r2, r3
  2e7294: f0cf f3e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf7c8
  2e7298: ab21         	add	r3, sp, #0x84
  2e729a: 4618         	mov	r0, r3
  2e729c: f2b2 fbce    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b279c
  2e72a0: 900b         	str	r0, [sp, #0x2c]
  2e72a2: ab3e         	add	r3, sp, #0xf8
  2e72a4: 4618         	mov	r0, r3
  2e72a6: f0a3 f0a5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a314a
  2e72aa: aa22         	add	r2, sp, #0x88
  2e72ac: ab3e         	add	r3, sp, #0xf8
  2e72ae: 4610         	mov	r0, r2
  2e72b0: f8df 257c    	ldr.w	r2, [pc, #0x57c]        @ 0x2e7830 <AppDelegate::applicationDidFinishLaunching()+0x1c68>
  2e72b4: 447a         	add	r2, pc
  2e72b6: 4611         	mov	r1, r2
  2e72b8: 461a         	mov	r2, r3
  2e72ba: f0cf f3d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf7a2
  2e72be: ab22         	add	r3, sp, #0x88
  2e72c0: 4618         	mov	r0, r3
  2e72c2: f2b2 fbbb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2776
  2e72c6: 900a         	str	r0, [sp, #0x28]
  2e72c8: ab3f         	add	r3, sp, #0xfc
  2e72ca: 4618         	mov	r0, r3
  2e72cc: f0a3 f092    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a3124
  2e72d0: aa23         	add	r2, sp, #0x8c
  2e72d2: ab3f         	add	r3, sp, #0xfc
  2e72d4: 4610         	mov	r0, r2
  2e72d6: f8df 255c    	ldr.w	r2, [pc, #0x55c]        @ 0x2e7834 <AppDelegate::applicationDidFinishLaunching()+0x1c6c>
  2e72da: 447a         	add	r2, pc
  2e72dc: 4611         	mov	r1, r2
  2e72de: 461a         	mov	r2, r3
  2e72e0: f0cf f3be    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf77c
  2e72e4: ab23         	add	r3, sp, #0x8c
  2e72e6: 4618         	mov	r0, r3
  2e72e8: f2b2 fba8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2750
  2e72ec: 4683         	mov	r11, r0
  2e72ee: ab49         	add	r3, sp, #0x124
  2e72f0: 4618         	mov	r0, r3
  2e72f2: f0a3 f07f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a30fe
  2e72f6: aa24         	add	r2, sp, #0x90
  2e72f8: ab49         	add	r3, sp, #0x124
  2e72fa: 4610         	mov	r0, r2
  2e72fc: f8df 2538    	ldr.w	r2, [pc, #0x538]        @ 0x2e7838 <AppDelegate::applicationDidFinishLaunching()+0x1c70>
  2e7300: 447a         	add	r2, pc
  2e7302: 4611         	mov	r1, r2
  2e7304: 461a         	mov	r2, r3
  2e7306: f0cf f3ab    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf756
  2e730a: ab24         	add	r3, sp, #0x90
  2e730c: 4618         	mov	r0, r3
  2e730e: f2b2 fb95    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b272a
  2e7312: 4606         	mov	r6, r0
  2e7314: ab4b         	add	r3, sp, #0x12c
  2e7316: 4618         	mov	r0, r3
  2e7318: f0a3 f06c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a30d8
  2e731c: ab25         	add	r3, sp, #0x94
  2e731e: aa4b         	add	r2, sp, #0x12c
  2e7320: 4618         	mov	r0, r3
  2e7322: f8df 3518    	ldr.w	r3, [pc, #0x518]        @ 0x2e783c <AppDelegate::applicationDidFinishLaunching()+0x1c74>
  2e7326: 447b         	add	r3, pc
  2e7328: 4619         	mov	r1, r3
  2e732a: f0cf f399    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf732
  2e732e: ab25         	add	r3, sp, #0x94
  2e7330: 4618         	mov	r0, r3
  2e7332: f2b2 fb83    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2706
  2e7336: 4605         	mov	r5, r0
  2e7338: ab4d         	add	r3, sp, #0x134
  2e733a: 4618         	mov	r0, r3
  2e733c: f0a3 f05a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a30b4
  2e7340: ab26         	add	r3, sp, #0x98
  2e7342: aa4d         	add	r2, sp, #0x134
  2e7344: 4618         	mov	r0, r3
  2e7346: f8df 34f8    	ldr.w	r3, [pc, #0x4f8]        @ 0x2e7840 <AppDelegate::applicationDidFinishLaunching()+0x1c78>
  2e734a: 447b         	add	r3, pc
  2e734c: 4619         	mov	r1, r3
  2e734e: f0cf f387    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf70e
  2e7352: ab26         	add	r3, sp, #0x98
  2e7354: 4618         	mov	r0, r3
  2e7356: f2b2 fb71    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b26e2
  2e735a: 4603         	mov	r3, r0
  2e735c: 9a0e         	ldr	r2, [sp, #0x38]
  2e735e: 9200         	str	r2, [sp]
  2e7360: 9a0d         	ldr	r2, [sp, #0x34]
  2e7362: 9201         	str	r2, [sp, #0x4]
  2e7364: 9a0c         	ldr	r2, [sp, #0x30]
  2e7366: 9202         	str	r2, [sp, #0x8]
  2e7368: 9a0b         	ldr	r2, [sp, #0x2c]
  2e736a: 9203         	str	r2, [sp, #0xc]
  2e736c: 9a0a         	ldr	r2, [sp, #0x28]
  2e736e: 9204         	str	r2, [sp, #0x10]
  2e7370: f8cd b014    	str.w	r11, [sp, #0x14]
  2e7374: 9606         	str	r6, [sp, #0x18]
  2e7376: 9507         	str	r5, [sp, #0x1c]
  2e7378: 9308         	str	r3, [sp, #0x20]
  2e737a: 2300         	movs	r3, #0x0
  2e737c: 9309         	str	r3, [sp, #0x24]
  2e737e: 4650         	mov	r0, r10
  2e7380: 4649         	mov	r1, r9
  2e7382: 4642         	mov	r2, r8
  2e7384: 463b         	mov	r3, r7
  2e7386: f2b2 fd43    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2a86
  2e738a: 4603         	mov	r3, r0
  2e738c: 461a         	mov	r2, r3
  2e738e: f8df 34b4    	ldr.w	r3, [pc, #0x4b4]        @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e7392: 58e3         	ldr	r3, [r4, r3]
  2e7394: 601a         	str	r2, [r3]
  2e7396: ab26         	add	r3, sp, #0x98
  2e7398: 4618         	mov	r0, r3
  2e739a: f0ce f2bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce576
  2e739e: ab4d         	add	r3, sp, #0x134
  2e73a0: 4618         	mov	r0, r3
  2e73a2: f0a3 f02b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3056
  2e73a6: ab25         	add	r3, sp, #0x94
  2e73a8: 4618         	mov	r0, r3
  2e73aa: f0ce f2b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce566
  2e73ae: ab4b         	add	r3, sp, #0x12c
  2e73b0: 4618         	mov	r0, r3
  2e73b2: f0a3 f023    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3046
  2e73b6: ab24         	add	r3, sp, #0x90
  2e73b8: 4618         	mov	r0, r3
  2e73ba: f0ce f2ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce556
  2e73be: ab49         	add	r3, sp, #0x124
  2e73c0: 4618         	mov	r0, r3
  2e73c2: f0a3 f01b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3036
  2e73c6: ab23         	add	r3, sp, #0x8c
  2e73c8: 4618         	mov	r0, r3
  2e73ca: f0ce f2a3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce546
  2e73ce: ab3f         	add	r3, sp, #0xfc
  2e73d0: 4618         	mov	r0, r3
  2e73d2: f0a3 f013    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3026
  2e73d6: ab22         	add	r3, sp, #0x88
  2e73d8: 4618         	mov	r0, r3
  2e73da: f0ce f29b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce536
  2e73de: ab3e         	add	r3, sp, #0xf8
  2e73e0: 4618         	mov	r0, r3
  2e73e2: f0a3 f00b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3016
  2e73e6: ab21         	add	r3, sp, #0x84
  2e73e8: 4618         	mov	r0, r3
  2e73ea: f0ce f293    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce526
  2e73ee: ab3d         	add	r3, sp, #0xf4
  2e73f0: 4618         	mov	r0, r3
  2e73f2: f0a3 f003    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a3006
  2e73f6: ab20         	add	r3, sp, #0x80
  2e73f8: 4618         	mov	r0, r3
  2e73fa: f0ce f28b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce516
  2e73fe: ab3c         	add	r3, sp, #0xf0
  2e7400: 4618         	mov	r0, r3
  2e7402: f0a2 f7fb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2ff6
  2e7406: ab1f         	add	r3, sp, #0x7c
  2e7408: 4618         	mov	r0, r3
  2e740a: f0ce f283    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce506
  2e740e: ab3b         	add	r3, sp, #0xec
  2e7410: 4618         	mov	r0, r3
  2e7412: f0a2 f7f3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2fe6
  2e7416: ab1e         	add	r3, sp, #0x78
  2e7418: 4618         	mov	r0, r3
  2e741a: f0ce f27b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce4f6
  2e741e: ab3a         	add	r3, sp, #0xe8
  2e7420: 4618         	mov	r0, r3
  2e7422: f0a2 f7eb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2fd6
  2e7426: ab1d         	add	r3, sp, #0x74
  2e7428: 4618         	mov	r0, r3
  2e742a: f0ce f273    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce4e6
  2e742e: ab39         	add	r3, sp, #0xe4
  2e7430: 4618         	mov	r0, r3
  2e7432: f0a2 f7e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2fc6
  2e7436: ab1c         	add	r3, sp, #0x70
  2e7438: 4618         	mov	r0, r3
  2e743a: f0ce f26b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce4d6
  2e743e: ab38         	add	r3, sp, #0xe0
  2e7440: 4618         	mov	r0, r3
  2e7442: f0a2 f7db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2fb6
  2e7446: ab1b         	add	r3, sp, #0x6c
  2e7448: 4618         	mov	r0, r3
  2e744a: f0ce f263    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce4c6
  2e744e: ab37         	add	r3, sp, #0xdc
  2e7450: 4618         	mov	r0, r3
  2e7452: f0a2 f7d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2fa6
  2e7456: ab1a         	add	r3, sp, #0x68
  2e7458: 4618         	mov	r0, r3
  2e745a: f0ce f25b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce4b6
  2e745e: ab36         	add	r3, sp, #0xd8
  2e7460: 4618         	mov	r0, r3
  2e7462: f0a2 f7cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2f96
  2e7466: 4bf7         	ldr	r3, [pc, #0x3dc]        @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e7468: 58e3         	ldr	r3, [r4, r3]
  2e746a: 681b         	ldr	r3, [r3]
  2e746c: 4618         	mov	r0, r3
  2e746e: f2b0 fd3b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b0a76
  2e7472: f2af ff9d    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x2aff3a
  2e7476: 4603         	mov	r3, r0
  2e7478: 461a         	mov	r2, r3
  2e747a: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x2e7848 <AppDelegate::applicationDidFinishLaunching()+0x1c80>
  2e747c: 58e3         	ldr	r3, [r4, r3]
  2e747e: 601a         	str	r2, [r3]
  2e7480: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x2e7848 <AppDelegate::applicationDidFinishLaunching()+0x1c80>
  2e7482: 58e3         	ldr	r3, [r4, r3]
  2e7484: 681b         	ldr	r3, [r3]
  2e7486: 4618         	mov	r0, r3
  2e7488: f2b0 fd2e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b0a5c
  2e748c: 2300         	movs	r3, #0x0
  2e748e: 9344         	str	r3, [sp, #0x110]
  2e7490: ab4d         	add	r3, sp, #0x134
  2e7492: 4618         	mov	r0, r3
  2e7494: f0a2 f7ae    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2f5c
  2e7498: aa27         	add	r2, sp, #0x9c
  2e749a: ab4d         	add	r3, sp, #0x134
  2e749c: 4610         	mov	r0, r2
  2e749e: 4aeb         	ldr	r2, [pc, #0x3ac]        @ 0x2e784c <AppDelegate::applicationDidFinishLaunching()+0x1c84>
  2e74a0: 447a         	add	r2, pc
  2e74a2: 4611         	mov	r1, r2
  2e74a4: 461a         	mov	r2, r3
  2e74a6: f0cf f2db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf5b6
  2e74aa: ab4d         	add	r3, sp, #0x134
  2e74ac: 4618         	mov	r0, r3
  2e74ae: f0a2 f7a5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2f4a
  2e74b2: ab4b         	add	r3, sp, #0x12c
  2e74b4: 4618         	mov	r0, r3
  2e74b6: f0a2 f79d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2f3a
  2e74ba: aa28         	add	r2, sp, #0xa0
  2e74bc: ab4b         	add	r3, sp, #0x12c
  2e74be: 4610         	mov	r0, r2
  2e74c0: 4ae3         	ldr	r2, [pc, #0x38c]        @ 0x2e7850 <AppDelegate::applicationDidFinishLaunching()+0x1c88>
  2e74c2: 447a         	add	r2, pc
  2e74c4: 4611         	mov	r1, r2
  2e74c6: 461a         	mov	r2, r3
  2e74c8: f0cf f2ca    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf594
  2e74cc: ab28         	add	r3, sp, #0xa0
  2e74ce: 4618         	mov	r0, r3
  2e74d0: f2b2 fab4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2568
  2e74d4: 4607         	mov	r7, r0
  2e74d6: ab4d         	add	r3, sp, #0x134
  2e74d8: 4618         	mov	r0, r3
  2e74da: f0a2 f78b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2f16
  2e74de: aa29         	add	r2, sp, #0xa4
  2e74e0: ab4d         	add	r3, sp, #0x134
  2e74e2: 4610         	mov	r0, r2
  2e74e4: 4adb         	ldr	r2, [pc, #0x36c]        @ 0x2e7854 <AppDelegate::applicationDidFinishLaunching()+0x1c8c>
  2e74e6: 447a         	add	r2, pc
  2e74e8: 4611         	mov	r1, r2
  2e74ea: 461a         	mov	r2, r3
  2e74ec: f0cf f2b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf570
  2e74f0: ab29         	add	r3, sp, #0xa4
  2e74f2: 4618         	mov	r0, r3
  2e74f4: f2b2 faa2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2544
  2e74f8: 4606         	mov	r6, r0
  2e74fa: f04f 507e    	mov.w	r0, #0x3f800000
  2e74fe: f7f5 fbc1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa87e
  2e7502: 4605         	mov	r5, r0
  2e7504: 2064         	movs	r0, #0x64
  2e7506: f7fd fbff    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2802
  2e750a: 4603         	mov	r3, r0
  2e750c: 2200         	movs	r2, #0x0
  2e750e: 9200         	str	r2, [sp]
  2e7510: 4638         	mov	r0, r7
  2e7512: 4631         	mov	r1, r6
  2e7514: 462a         	mov	r2, r5
  2e7516: f2b2 fc7b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b28f6
  2e751a: 4603         	mov	r3, r0
  2e751c: 9344         	str	r3, [sp, #0x110]
  2e751e: ab29         	add	r3, sp, #0xa4
  2e7520: 4618         	mov	r0, r3
  2e7522: f0ce f1f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce3ee
  2e7526: ab4d         	add	r3, sp, #0x134
  2e7528: 4618         	mov	r0, r3
  2e752a: f0a2 f767    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2ece
  2e752e: ab28         	add	r3, sp, #0xa0
  2e7530: 4618         	mov	r0, r3
  2e7532: f0ce f1ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce3de
  2e7536: ab4b         	add	r3, sp, #0x12c
  2e7538: 4618         	mov	r0, r3
  2e753a: f0a2 f75f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2ebe
  2e753e: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e7540: 58e3         	ldr	r3, [r4, r3]
  2e7542: 681b         	ldr	r3, [r3]
  2e7544: 4618         	mov	r0, r3
  2e7546: 2100         	movs	r1, #0x0
  2e7548: f2b2 fdea    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2bd4
  2e754c: 4603         	mov	r3, r0
  2e754e: 4618         	mov	r0, r3
  2e7550: f2b2 f9ea    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b23d4
  2e7554: 4603         	mov	r3, r0
  2e7556: aa27         	add	r2, sp, #0x9c
  2e7558: 4610         	mov	r0, r2
  2e755a: 4619         	mov	r1, r3
  2e755c: f0ce f488    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce910
  2e7560: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x2e7848 <AppDelegate::applicationDidFinishLaunching()+0x1c80>
  2e7562: 58e3         	ldr	r3, [r4, r3]
  2e7564: 681a         	ldr	r2, [r3]
  2e7566: ab27         	add	r3, sp, #0x9c
  2e7568: 4610         	mov	r0, r2
  2e756a: 9944         	ldr	r1, [sp, #0x110]
  2e756c: 461a         	mov	r2, r3
  2e756e: f2ad f9e3    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2ad3c6
  2e7572: ab4b         	add	r3, sp, #0x12c
  2e7574: 4618         	mov	r0, r3
  2e7576: f0a2 f73d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2e7a
  2e757a: aa2a         	add	r2, sp, #0xa8
  2e757c: ab4b         	add	r3, sp, #0x12c
  2e757e: 4610         	mov	r0, r2
  2e7580: 4ab5         	ldr	r2, [pc, #0x2d4]        @ 0x2e7858 <AppDelegate::applicationDidFinishLaunching()+0x1c90>
  2e7582: 447a         	add	r2, pc
  2e7584: 4611         	mov	r1, r2
  2e7586: 461a         	mov	r2, r3
  2e7588: f0cf f26a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf4d4
  2e758c: ab2a         	add	r3, sp, #0xa8
  2e758e: 4618         	mov	r0, r3
  2e7590: f2b2 fa54    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b24a8
  2e7594: 4607         	mov	r7, r0
  2e7596: ab4d         	add	r3, sp, #0x134
  2e7598: 4618         	mov	r0, r3
  2e759a: f0a2 f72b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2e56
  2e759e: aa2b         	add	r2, sp, #0xac
  2e75a0: ab4d         	add	r3, sp, #0x134
  2e75a2: 4610         	mov	r0, r2
  2e75a4: 4aad         	ldr	r2, [pc, #0x2b4]        @ 0x2e785c <AppDelegate::applicationDidFinishLaunching()+0x1c94>
  2e75a6: 447a         	add	r2, pc
  2e75a8: 4611         	mov	r1, r2
  2e75aa: 461a         	mov	r2, r3
  2e75ac: f0cf f258    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf4b0
  2e75b0: ab2b         	add	r3, sp, #0xac
  2e75b2: 4618         	mov	r0, r3
  2e75b4: f2b2 fa42    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2484
  2e75b8: 4606         	mov	r6, r0
  2e75ba: f04f 507e    	mov.w	r0, #0x3f800000
  2e75be: f7f5 fb61    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa93e
  2e75c2: 4605         	mov	r5, r0
  2e75c4: 2064         	movs	r0, #0x64
  2e75c6: f7fd fb9f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x28c2
  2e75ca: 4603         	mov	r3, r0
  2e75cc: 2200         	movs	r2, #0x0
  2e75ce: 9200         	str	r2, [sp]
  2e75d0: 4638         	mov	r0, r7
  2e75d2: 4631         	mov	r1, r6
  2e75d4: 462a         	mov	r2, r5
  2e75d6: f2b2 fc1b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2836
  2e75da: 4603         	mov	r3, r0
  2e75dc: 9344         	str	r3, [sp, #0x110]
  2e75de: ab2b         	add	r3, sp, #0xac
  2e75e0: 4618         	mov	r0, r3
  2e75e2: f0ce f197    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce32e
  2e75e6: ab4d         	add	r3, sp, #0x134
  2e75e8: 4618         	mov	r0, r3
  2e75ea: f0a2 f707    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2e0e
  2e75ee: ab2a         	add	r3, sp, #0xa8
  2e75f0: 4618         	mov	r0, r3
  2e75f2: f0ce f18f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce31e
  2e75f6: ab4b         	add	r3, sp, #0x12c
  2e75f8: 4618         	mov	r0, r3
  2e75fa: f0a2 f6ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2dfe
  2e75fe: 4b91         	ldr	r3, [pc, #0x244]        @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e7600: 58e3         	ldr	r3, [r4, r3]
  2e7602: 681b         	ldr	r3, [r3]
  2e7604: 4618         	mov	r0, r3
  2e7606: 2101         	movs	r1, #0x1
  2e7608: f2b2 fd8a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2b14
  2e760c: 4603         	mov	r3, r0
  2e760e: 4618         	mov	r0, r3
  2e7610: f2b2 f98a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b2314
  2e7614: 4603         	mov	r3, r0
  2e7616: aa27         	add	r2, sp, #0x9c
  2e7618: 4610         	mov	r0, r2
  2e761a: 4619         	mov	r1, r3
  2e761c: f0ce f428    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce850
  2e7620: 4b89         	ldr	r3, [pc, #0x224]        @ 0x2e7848 <AppDelegate::applicationDidFinishLaunching()+0x1c80>
  2e7622: 58e3         	ldr	r3, [r4, r3]
  2e7624: 681a         	ldr	r2, [r3]
  2e7626: ab27         	add	r3, sp, #0x9c
  2e7628: 4610         	mov	r0, r2
  2e762a: 9944         	ldr	r1, [sp, #0x110]
  2e762c: 461a         	mov	r2, r3
  2e762e: f2ad f983    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2ad306
  2e7632: ab4b         	add	r3, sp, #0x12c
  2e7634: 4618         	mov	r0, r3
  2e7636: f0a2 f6dd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2dba
  2e763a: aa2c         	add	r2, sp, #0xb0
  2e763c: ab4b         	add	r3, sp, #0x12c
  2e763e: 4610         	mov	r0, r2
  2e7640: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x2e7860 <AppDelegate::applicationDidFinishLaunching()+0x1c98>
  2e7642: 447a         	add	r2, pc
  2e7644: 4611         	mov	r1, r2
  2e7646: 461a         	mov	r2, r3
  2e7648: f0cf f20a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf414
  2e764c: ab2c         	add	r3, sp, #0xb0
  2e764e: 4618         	mov	r0, r3
  2e7650: f2b2 f9f4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b23e8
  2e7654: 4607         	mov	r7, r0
  2e7656: ab4d         	add	r3, sp, #0x134
  2e7658: 4618         	mov	r0, r3
  2e765a: f0a2 f6cb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2d96
  2e765e: aa2d         	add	r2, sp, #0xb4
  2e7660: ab4d         	add	r3, sp, #0x134
  2e7662: 4610         	mov	r0, r2
  2e7664: 4a7f         	ldr	r2, [pc, #0x1fc]        @ 0x2e7864 <AppDelegate::applicationDidFinishLaunching()+0x1c9c>
  2e7666: 447a         	add	r2, pc
  2e7668: 4611         	mov	r1, r2
  2e766a: 461a         	mov	r2, r3
  2e766c: f0cf f1f8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf3f0
  2e7670: ab2d         	add	r3, sp, #0xb4
  2e7672: 4618         	mov	r0, r3
  2e7674: f2b2 f9e2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b23c4
  2e7678: 4606         	mov	r6, r0
  2e767a: f04f 507e    	mov.w	r0, #0x3f800000
  2e767e: f7f5 fb01    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xa9fe
  2e7682: 4605         	mov	r5, r0
  2e7684: 2064         	movs	r0, #0x64
  2e7686: f7fd fb3f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2982
  2e768a: 4603         	mov	r3, r0
  2e768c: 2200         	movs	r2, #0x0
  2e768e: 9200         	str	r2, [sp]
  2e7690: 4638         	mov	r0, r7
  2e7692: 4631         	mov	r1, r6
  2e7694: 462a         	mov	r2, r5
  2e7696: f2b2 fbbb    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2776
  2e769a: 4603         	mov	r3, r0
  2e769c: 9344         	str	r3, [sp, #0x110]
  2e769e: ab2d         	add	r3, sp, #0xb4
  2e76a0: 4618         	mov	r0, r3
  2e76a2: f0ce f137    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce26e
  2e76a6: ab4d         	add	r3, sp, #0x134
  2e76a8: 4618         	mov	r0, r3
  2e76aa: f0a2 f6a7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2d4e
  2e76ae: ab2c         	add	r3, sp, #0xb0
  2e76b0: 4618         	mov	r0, r3
  2e76b2: f0ce f12f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce25e
  2e76b6: ab4b         	add	r3, sp, #0x12c
  2e76b8: 4618         	mov	r0, r3
  2e76ba: f0a2 f69f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2d3e
  2e76be: 4b61         	ldr	r3, [pc, #0x184]        @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e76c0: 58e3         	ldr	r3, [r4, r3]
  2e76c2: 681b         	ldr	r3, [r3]
  2e76c4: 4618         	mov	r0, r3
  2e76c6: 2102         	movs	r1, #0x2
  2e76c8: f2b2 fd2a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2a54
  2e76cc: 4603         	mov	r3, r0
  2e76ce: 4618         	mov	r0, r3
  2e76d0: f2b2 f92a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b2254
  2e76d4: 4603         	mov	r3, r0
  2e76d6: aa27         	add	r2, sp, #0x9c
  2e76d8: 4610         	mov	r0, r2
  2e76da: 4619         	mov	r1, r3
  2e76dc: f0ce f3c8    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce790
  2e76e0: 4b59         	ldr	r3, [pc, #0x164]        @ 0x2e7848 <AppDelegate::applicationDidFinishLaunching()+0x1c80>
  2e76e2: 58e3         	ldr	r3, [r4, r3]
  2e76e4: 681a         	ldr	r2, [r3]
  2e76e6: ab27         	add	r3, sp, #0x9c
  2e76e8: 4610         	mov	r0, r2
  2e76ea: 9944         	ldr	r1, [sp, #0x110]
  2e76ec: 461a         	mov	r2, r3
  2e76ee: f2ad f923    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2ad246
  2e76f2: ab4b         	add	r3, sp, #0x12c
  2e76f4: 4618         	mov	r0, r3
  2e76f6: f0a2 f67d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2cfa
  2e76fa: aa2e         	add	r2, sp, #0xb8
  2e76fc: ab4b         	add	r3, sp, #0x12c
  2e76fe: 4610         	mov	r0, r2
  2e7700: 4a59         	ldr	r2, [pc, #0x164]        @ 0x2e7868 <AppDelegate::applicationDidFinishLaunching()+0x1ca0>
  2e7702: 447a         	add	r2, pc
  2e7704: 4611         	mov	r1, r2
  2e7706: 461a         	mov	r2, r3
  2e7708: f0cf f1aa    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf354
  2e770c: ab2e         	add	r3, sp, #0xb8
  2e770e: 4618         	mov	r0, r3
  2e7710: f2b2 f994    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2328
  2e7714: 4607         	mov	r7, r0
  2e7716: ab4d         	add	r3, sp, #0x134
  2e7718: 4618         	mov	r0, r3
  2e771a: f0a2 f66b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2cd6
  2e771e: aa2f         	add	r2, sp, #0xbc
  2e7720: ab4d         	add	r3, sp, #0x134
  2e7722: 4610         	mov	r0, r2
  2e7724: 4a51         	ldr	r2, [pc, #0x144]        @ 0x2e786c <AppDelegate::applicationDidFinishLaunching()+0x1ca4>
  2e7726: 447a         	add	r2, pc
  2e7728: 4611         	mov	r1, r2
  2e772a: 461a         	mov	r2, r3
  2e772c: f0cf f198    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf330
  2e7730: ab2f         	add	r3, sp, #0xbc
  2e7732: 4618         	mov	r0, r3
  2e7734: f2b2 f982    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2304
  2e7738: 4606         	mov	r6, r0
  2e773a: f04f 507e    	mov.w	r0, #0x3f800000
  2e773e: f7f5 faa1    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xaabe
  2e7742: 4605         	mov	r5, r0
  2e7744: 2064         	movs	r0, #0x64
  2e7746: f7fd fadf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2a42
  2e774a: 4603         	mov	r3, r0
  2e774c: 2200         	movs	r2, #0x0
  2e774e: 9200         	str	r2, [sp]
  2e7750: 4638         	mov	r0, r7
  2e7752: 4631         	mov	r1, r6
  2e7754: 462a         	mov	r2, r5
  2e7756: f2b2 fb5b    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b26b6
  2e775a: 4603         	mov	r3, r0
  2e775c: 9344         	str	r3, [sp, #0x110]
  2e775e: ab2f         	add	r3, sp, #0xbc
  2e7760: 4618         	mov	r0, r3
  2e7762: f0ce f0d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce1ae
  2e7766: ab4d         	add	r3, sp, #0x134
  2e7768: 4618         	mov	r0, r3
  2e776a: f0a2 f647    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2c8e
  2e776e: ab2e         	add	r3, sp, #0xb8
  2e7770: 4618         	mov	r0, r3
  2e7772: f0ce f0cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce19e
  2e7776: ab4b         	add	r3, sp, #0x12c
  2e7778: 4618         	mov	r0, r3
  2e777a: f0a2 f63f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2c7e
  2e777e: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x2e7844 <AppDelegate::applicationDidFinishLaunching()+0x1c7c>
  2e7780: 58e3         	ldr	r3, [r4, r3]
  2e7782: 681b         	ldr	r3, [r3]
  2e7784: 4618         	mov	r0, r3
  2e7786: 2103         	movs	r1, #0x3
  2e7788: f2b2 fcca    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2994
  2e778c: 4603         	mov	r3, r0
  2e778e: 4618         	mov	r0, r3
  2e7790: e06e         	b	0x2e7870 <AppDelegate::applicationDidFinishLaunching()+0x1ca8> @ imm = #0xdc
  2e7792: bf00         	nop
  2e7794: bbc8         	cbnz	r0, 0x2e780a <AppDelegate::applicationDidFinishLaunching()+0x1c42> @ imm = #0x72
  2e7796: 004d         	lsls	r5, r1, #0x1
  2e7798: bbaa         	cbnz	r2, 0x2e7806 <AppDelegate::applicationDidFinishLaunching()+0x1c3e> @ imm = #0x6a
  2e779a: 004d         	lsls	r5, r1, #0x1
  2e779c: bb8c         	cbnz	r4, 0x2e7802 <AppDelegate::applicationDidFinishLaunching()+0x1c3a> @ imm = #0x62
  2e779e: 004d         	lsls	r5, r1, #0x1
  2e77a0: bb6e         	cbnz	r6, 0x2e77fe <AppDelegate::applicationDidFinishLaunching()+0x1c36> @ imm = #0x5a
  2e77a2: 004d         	lsls	r5, r1, #0x1
  2e77a4: d7bc         	bvc	0x2e7720 <AppDelegate::applicationDidFinishLaunching()+0x1b58> @ imm = #-0x88
  2e77a6: ffff baba    	<unknown>
  2e77aa: 004d         	lsls	r5, r1, #0x1
  2e77ac: d7c0         	bvc	0x2e7730 <AppDelegate::applicationDidFinishLaunching()+0x1b68> @ imm = #-0x80
  2e77ae: ffff baa2    	vtbl.8	d27, {d31, fpinst2, mvfr0}, d18
  2e77b2: 004d         	lsls	r5, r1, #0x1
  2e77b4: ba88         	<unknown>
  2e77b6: 004d         	lsls	r5, r1, #0x1
  2e77b8: ba6e         	rev16	r6, r5
  2e77ba: 004d         	lsls	r5, r1, #0x1
  2e77bc: ba54         	rev16	r4, r2
  2e77be: 004d         	lsls	r5, r1, #0x1
  2e77c0: ba3a         	rev	r2, r7
  2e77c2: 004d         	lsls	r5, r1, #0x1
  2e77c4: ba20         	rev	r0, r4
  2e77c6: 004d         	lsls	r5, r1, #0x1
  2e77c8: ba06         	rev	r6, r0
  2e77ca: 004d         	lsls	r5, r1, #0x1
  2e77cc: b9ec         	cbnz	r4, 0x2e780a <AppDelegate::applicationDidFinishLaunching()+0x1c42> @ imm = #0x3a
  2e77ce: 004d         	lsls	r5, r1, #0x1
  2e77d0: b9d2         	cbnz	r2, 0x2e7808 <AppDelegate::applicationDidFinishLaunching()+0x1c40> @ imm = #0x34
  2e77d2: 004d         	lsls	r5, r1, #0x1
  2e77d4: b9b8         	cbnz	r0, 0x2e7806 <AppDelegate::applicationDidFinishLaunching()+0x1c3e> @ imm = #0x2e
  2e77d6: 004d         	lsls	r5, r1, #0x1
  2e77d8: b99e         	cbnz	r6, 0x2e7802 <AppDelegate::applicationDidFinishLaunching()+0x1c3a> @ imm = #0x26
  2e77da: 004d         	lsls	r5, r1, #0x1
  2e77dc: b984         	cbnz	r4, 0x2e7800 <AppDelegate::applicationDidFinishLaunching()+0x1c38> @ imm = #0x20
  2e77de: 004d         	lsls	r5, r1, #0x1
  2e77e0: b96a         	cbnz	r2, 0x2e77fe <AppDelegate::applicationDidFinishLaunching()+0x1c36> @ imm = #0x1a
  2e77e2: 004d         	lsls	r5, r1, #0x1
  2e77e4: b950         	cbnz	r0, 0x2e77fc <AppDelegate::applicationDidFinishLaunching()+0x1c34> @ imm = #0x14
  2e77e6: 004d         	lsls	r5, r1, #0x1
  2e77e8: b936         	cbnz	r6, 0x2e77f8 <AppDelegate::applicationDidFinishLaunching()+0x1c30> @ imm = #0xc
  2e77ea: 004d         	lsls	r5, r1, #0x1
  2e77ec: b91c         	cbnz	r4, 0x2e77f6 <AppDelegate::applicationDidFinishLaunching()+0x1c2e> @ imm = #0x6
  2e77ee: 004d         	lsls	r5, r1, #0x1
  2e77f0: b902         	cbnz	r2, 0x2e77f4 <AppDelegate::applicationDidFinishLaunching()+0x1c2c> @ imm = #0x0
  2e77f2: 004d         	lsls	r5, r1, #0x1
  2e77f4: b8e8         	<unknown>
  2e77f6: 004d         	lsls	r5, r1, #0x1
  2e77f8: b8ce         	<unknown>
  2e77fa: 004d         	lsls	r5, r1, #0x1
  2e77fc: b8b4         	<unknown>
  2e77fe: 004d         	lsls	r5, r1, #0x1
  2e7800: b89a         	<unknown>
  2e7802: 004d         	lsls	r5, r1, #0x1
  2e7804: d7c4         	bvc	0x2e7790 <AppDelegate::applicationDidFinishLaunching()+0x1bc8> @ imm = #-0x78
  2e7806: ffff b886    	vtbl.8	d27, {d31}, d6
  2e780a: 004d         	lsls	r5, r1, #0x1
  2e780c: b870         	<unknown>
  2e780e: 004d         	lsls	r5, r1, #0x1
  2e7810: b84c         	<unknown>
  2e7812: 004d         	lsls	r5, r1, #0x1
  2e7814: b82e         	<unknown>
  2e7816: 004d         	lsls	r5, r1, #0x1
  2e7818: b814         	<unknown>
  2e781a: 004d         	lsls	r5, r1, #0x1
  2e781c: b7fa         	<unknown>
  2e781e: 004d         	lsls	r5, r1, #0x1
  2e7820: b7e0         	<unknown>
  2e7822: 004d         	lsls	r5, r1, #0x1
  2e7824: b7c6         	<unknown>
  2e7826: 004d         	lsls	r5, r1, #0x1
  2e7828: b7a8         	<unknown>
  2e782a: 004d         	lsls	r5, r1, #0x1
  2e782c: b78a         	<unknown>
  2e782e: 004d         	lsls	r5, r1, #0x1
  2e7830: b76c         	<unknown>
  2e7832: 004d         	lsls	r5, r1, #0x1
  2e7834: b752         	<unknown>
  2e7836: 004d         	lsls	r5, r1, #0x1
  2e7838: b734         	<unknown>
  2e783a: 004d         	lsls	r5, r1, #0x1
  2e783c: b71a         	<unknown>
  2e783e: 004d         	lsls	r5, r1, #0x1
  2e7840: b702         	<unknown>
  2e7842: 004d         	lsls	r5, r1, #0x1
  2e7844: d7c8         	bvc	0x2e77d8 <AppDelegate::applicationDidFinishLaunching()+0x1c10> @ imm = #-0x70
  2e7846: ffff d7cc    	<unknown>
  2e784a: ffff b3d0    	<unknown>
  2e784e: 004d         	lsls	r5, r1, #0x1
  2e7850: b592         	push	{r1, r4, r7, lr}
  2e7852: 004d         	lsls	r5, r1, #0x1
  2e7854: b582         	push	{r1, r7, lr}
  2e7856: 004d         	lsls	r5, r1, #0x1
  2e7858: b4f2         	push	{r1, r4, r5, r6, r7}
  2e785a: 004d         	lsls	r5, r1, #0x1
  2e785c: b4c2         	push	{r1, r6, r7}
  2e785e: 004d         	lsls	r5, r1, #0x1
  2e7860: b446         	push	{r1, r2, r6}
  2e7862: 004d         	lsls	r5, r1, #0x1
  2e7864: b402         	push	{r1}
  2e7866: 004d         	lsls	r5, r1, #0x1
  2e7868: b39e         	cbz	r6, 0x2e78d2 <AppDelegate::applicationDidFinishLaunching()+0x1d0a> @ imm = #0x66
  2e786a: 004d         	lsls	r5, r1, #0x1
  2e786c: b342         	cbz	r2, 0x2e78c0 <AppDelegate::applicationDidFinishLaunching()+0x1cf8> @ imm = #0x50
  2e786e: 004d         	lsls	r5, r1, #0x1
  2e7870: f2b2 f85a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b20b4
  2e7874: 4603         	mov	r3, r0
  2e7876: aa27         	add	r2, sp, #0x9c
  2e7878: 4610         	mov	r0, r2
  2e787a: 4619         	mov	r1, r3
  2e787c: f0ce f2f8    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce5f0
  2e7880: f8df 3a64    	ldr.w	r3, [pc, #0xa64]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7884: 58e3         	ldr	r3, [r4, r3]
  2e7886: 681a         	ldr	r2, [r3]
  2e7888: ab27         	add	r3, sp, #0x9c
  2e788a: 4610         	mov	r0, r2
  2e788c: 9944         	ldr	r1, [sp, #0x110]
  2e788e: 461a         	mov	r2, r3
  2e7890: f2ad f852    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2ad0a4
  2e7894: ab4b         	add	r3, sp, #0x12c
  2e7896: 4618         	mov	r0, r3
  2e7898: f0a2 f5ac    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2b58
  2e789c: aa30         	add	r2, sp, #0xc0
  2e789e: ab4b         	add	r3, sp, #0x12c
  2e78a0: 4610         	mov	r0, r2
  2e78a2: f8df 2a48    	ldr.w	r2, [pc, #0xa48]        @ 0x2e82ec <AppDelegate::applicationDidFinishLaunching()+0x2724>
  2e78a6: 447a         	add	r2, pc
  2e78a8: 4611         	mov	r1, r2
  2e78aa: 461a         	mov	r2, r3
  2e78ac: f0cf f0d8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf1b0
  2e78b0: ab30         	add	r3, sp, #0xc0
  2e78b2: 4618         	mov	r0, r3
  2e78b4: f2b2 f8c2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2184
  2e78b8: 4607         	mov	r7, r0
  2e78ba: ab4d         	add	r3, sp, #0x134
  2e78bc: 4618         	mov	r0, r3
  2e78be: f0a2 f599    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2b32
  2e78c2: aa31         	add	r2, sp, #0xc4
  2e78c4: ab4d         	add	r3, sp, #0x134
  2e78c6: 4610         	mov	r0, r2
  2e78c8: f8df 2a24    	ldr.w	r2, [pc, #0xa24]        @ 0x2e82f0 <AppDelegate::applicationDidFinishLaunching()+0x2728>
  2e78cc: 447a         	add	r2, pc
  2e78ce: 4611         	mov	r1, r2
  2e78d0: 461a         	mov	r2, r3
  2e78d2: f0cf f0c5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf18a
  2e78d6: ab31         	add	r3, sp, #0xc4
  2e78d8: 4618         	mov	r0, r3
  2e78da: f2b2 f8af    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b215e
  2e78de: 4606         	mov	r6, r0
  2e78e0: f04f 507e    	mov.w	r0, #0x3f800000
  2e78e4: f7f5 f9ce    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xac64
  2e78e8: 4605         	mov	r5, r0
  2e78ea: 2064         	movs	r0, #0x64
  2e78ec: f7fd fa0c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2be8
  2e78f0: 4603         	mov	r3, r0
  2e78f2: 2200         	movs	r2, #0x0
  2e78f4: 9200         	str	r2, [sp]
  2e78f6: 4638         	mov	r0, r7
  2e78f8: 4631         	mov	r1, r6
  2e78fa: 462a         	mov	r2, r5
  2e78fc: f2b2 fa88    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2510
  2e7900: 4603         	mov	r3, r0
  2e7902: 9344         	str	r3, [sp, #0x110]
  2e7904: ab31         	add	r3, sp, #0xc4
  2e7906: 4618         	mov	r0, r3
  2e7908: f0ce f004    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ce008
  2e790c: ab4d         	add	r3, sp, #0x134
  2e790e: 4618         	mov	r0, r3
  2e7910: f0a2 f574    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2ae8
  2e7914: ab30         	add	r3, sp, #0xc0
  2e7916: 4618         	mov	r0, r3
  2e7918: f0cd f7fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdff8
  2e791c: ab4b         	add	r3, sp, #0x12c
  2e791e: 4618         	mov	r0, r3
  2e7920: f0a2 f56c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2ad8
  2e7924: f8df 39cc    	ldr.w	r3, [pc, #0x9cc]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7928: 58e3         	ldr	r3, [r4, r3]
  2e792a: 681b         	ldr	r3, [r3]
  2e792c: 4618         	mov	r0, r3
  2e792e: 2104         	movs	r1, #0x4
  2e7930: f2b2 fbf6    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b27ec
  2e7934: 4603         	mov	r3, r0
  2e7936: 4618         	mov	r0, r3
  2e7938: f2b1 fff6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1fec
  2e793c: 4603         	mov	r3, r0
  2e793e: aa27         	add	r2, sp, #0x9c
  2e7940: 4610         	mov	r0, r2
  2e7942: 4619         	mov	r1, r3
  2e7944: f0ce f294    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce528
  2e7948: f8df 399c    	ldr.w	r3, [pc, #0x99c]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e794c: 58e3         	ldr	r3, [r4, r3]
  2e794e: 681a         	ldr	r2, [r3]
  2e7950: ab27         	add	r3, sp, #0x9c
  2e7952: 4610         	mov	r0, r2
  2e7954: 9944         	ldr	r1, [sp, #0x110]
  2e7956: 461a         	mov	r2, r3
  2e7958: f2ac ffee    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2acfdc
  2e795c: ab4b         	add	r3, sp, #0x12c
  2e795e: 4618         	mov	r0, r3
  2e7960: f0a2 f548    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2a90
  2e7964: aa32         	add	r2, sp, #0xc8
  2e7966: ab4b         	add	r3, sp, #0x12c
  2e7968: 4610         	mov	r0, r2
  2e796a: f8df 298c    	ldr.w	r2, [pc, #0x98c]        @ 0x2e82f8 <AppDelegate::applicationDidFinishLaunching()+0x2730>
  2e796e: 447a         	add	r2, pc
  2e7970: 4611         	mov	r1, r2
  2e7972: 461a         	mov	r2, r3
  2e7974: f0cf f074    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf0e8
  2e7978: ab32         	add	r3, sp, #0xc8
  2e797a: 4618         	mov	r0, r3
  2e797c: f2b2 f85e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b20bc
  2e7980: 4607         	mov	r7, r0
  2e7982: ab4d         	add	r3, sp, #0x134
  2e7984: 4618         	mov	r0, r3
  2e7986: f0a2 f535    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2a6a
  2e798a: aa33         	add	r2, sp, #0xcc
  2e798c: ab4d         	add	r3, sp, #0x134
  2e798e: 4610         	mov	r0, r2
  2e7990: f8df 2968    	ldr.w	r2, [pc, #0x968]        @ 0x2e82fc <AppDelegate::applicationDidFinishLaunching()+0x2734>
  2e7994: 447a         	add	r2, pc
  2e7996: 4611         	mov	r1, r2
  2e7998: 461a         	mov	r2, r3
  2e799a: f0cf f061    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf0c2
  2e799e: ab33         	add	r3, sp, #0xcc
  2e79a0: 4618         	mov	r0, r3
  2e79a2: f2b2 f84b    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b2096
  2e79a6: 4606         	mov	r6, r0
  2e79a8: f04f 507e    	mov.w	r0, #0x3f800000
  2e79ac: f7f5 f96a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xad2c
  2e79b0: 4605         	mov	r5, r0
  2e79b2: 2064         	movs	r0, #0x64
  2e79b4: f7fd f9a8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2cb0
  2e79b8: 4603         	mov	r3, r0
  2e79ba: 2200         	movs	r2, #0x0
  2e79bc: 9200         	str	r2, [sp]
  2e79be: 4638         	mov	r0, r7
  2e79c0: 4631         	mov	r1, r6
  2e79c2: 462a         	mov	r2, r5
  2e79c4: f2b2 fa24    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2448
  2e79c8: 4603         	mov	r3, r0
  2e79ca: 9344         	str	r3, [sp, #0x110]
  2e79cc: ab33         	add	r3, sp, #0xcc
  2e79ce: 4618         	mov	r0, r3
  2e79d0: f0cd f7a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdf40
  2e79d4: ab4d         	add	r3, sp, #0x134
  2e79d6: 4618         	mov	r0, r3
  2e79d8: f0a2 f510    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2a20
  2e79dc: ab32         	add	r3, sp, #0xc8
  2e79de: 4618         	mov	r0, r3
  2e79e0: f0cd f798    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdf30
  2e79e4: ab4b         	add	r3, sp, #0x12c
  2e79e6: 4618         	mov	r0, r3
  2e79e8: f0a2 f508    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2a10
  2e79ec: f8df 3904    	ldr.w	r3, [pc, #0x904]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e79f0: 58e3         	ldr	r3, [r4, r3]
  2e79f2: 681b         	ldr	r3, [r3]
  2e79f4: 4618         	mov	r0, r3
  2e79f6: 2105         	movs	r1, #0x5
  2e79f8: f2b2 fb92    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2724
  2e79fc: 4603         	mov	r3, r0
  2e79fe: 4618         	mov	r0, r3
  2e7a00: f2b1 ff92    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1f24
  2e7a04: 4603         	mov	r3, r0
  2e7a06: aa27         	add	r2, sp, #0x9c
  2e7a08: 4610         	mov	r0, r2
  2e7a0a: 4619         	mov	r1, r3
  2e7a0c: f0ce f230    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce460
  2e7a10: f8df 38d4    	ldr.w	r3, [pc, #0x8d4]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7a14: 58e3         	ldr	r3, [r4, r3]
  2e7a16: 681a         	ldr	r2, [r3]
  2e7a18: ab27         	add	r3, sp, #0x9c
  2e7a1a: 4610         	mov	r0, r2
  2e7a1c: 9944         	ldr	r1, [sp, #0x110]
  2e7a1e: 461a         	mov	r2, r3
  2e7a20: f2ac ff8a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2acf14
  2e7a24: ab4b         	add	r3, sp, #0x12c
  2e7a26: 4618         	mov	r0, r3
  2e7a28: f0a2 f4e4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a29c8
  2e7a2c: aa34         	add	r2, sp, #0xd0
  2e7a2e: ab4b         	add	r3, sp, #0x12c
  2e7a30: 4610         	mov	r0, r2
  2e7a32: f8df 28cc    	ldr.w	r2, [pc, #0x8cc]        @ 0x2e8300 <AppDelegate::applicationDidFinishLaunching()+0x2738>
  2e7a36: 447a         	add	r2, pc
  2e7a38: 4611         	mov	r1, r2
  2e7a3a: 461a         	mov	r2, r3
  2e7a3c: f0cf f010    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cf020
  2e7a40: ab34         	add	r3, sp, #0xd0
  2e7a42: 4618         	mov	r0, r3
  2e7a44: f2b1 fffa    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1ff4
  2e7a48: 4607         	mov	r7, r0
  2e7a4a: ab4d         	add	r3, sp, #0x134
  2e7a4c: 4618         	mov	r0, r3
  2e7a4e: f0a2 f4d1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a29a2
  2e7a52: aa35         	add	r2, sp, #0xd4
  2e7a54: ab4d         	add	r3, sp, #0x134
  2e7a56: 4610         	mov	r0, r2
  2e7a58: f8df 28a8    	ldr.w	r2, [pc, #0x8a8]        @ 0x2e8304 <AppDelegate::applicationDidFinishLaunching()+0x273c>
  2e7a5c: 447a         	add	r2, pc
  2e7a5e: 4611         	mov	r1, r2
  2e7a60: 461a         	mov	r2, r3
  2e7a62: f0ce f7fd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ceffa
  2e7a66: ab35         	add	r3, sp, #0xd4
  2e7a68: 4618         	mov	r0, r3
  2e7a6a: f2b1 ffe7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1fce
  2e7a6e: 4606         	mov	r6, r0
  2e7a70: f04f 0000    	mov.w	r0, #0x0
  2e7a74: f7f5 f906    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xadf4
  2e7a78: 4605         	mov	r5, r0
  2e7a7a: 2064         	movs	r0, #0x64
  2e7a7c: f7fd f944    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2d78
  2e7a80: 4603         	mov	r3, r0
  2e7a82: 2200         	movs	r2, #0x0
  2e7a84: 9200         	str	r2, [sp]
  2e7a86: 4638         	mov	r0, r7
  2e7a88: 4631         	mov	r1, r6
  2e7a8a: 462a         	mov	r2, r5
  2e7a8c: f2b2 f9c0    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2380
  2e7a90: 4603         	mov	r3, r0
  2e7a92: 9344         	str	r3, [sp, #0x110]
  2e7a94: ab35         	add	r3, sp, #0xd4
  2e7a96: 4618         	mov	r0, r3
  2e7a98: f0cd f73c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cde78
  2e7a9c: ab4d         	add	r3, sp, #0x134
  2e7a9e: 4618         	mov	r0, r3
  2e7aa0: f0a2 f4ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2958
  2e7aa4: ab34         	add	r3, sp, #0xd0
  2e7aa6: 4618         	mov	r0, r3
  2e7aa8: f0cd f734    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cde68
  2e7aac: ab4b         	add	r3, sp, #0x12c
  2e7aae: 4618         	mov	r0, r3
  2e7ab0: f0a2 f4a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2948
  2e7ab4: f8df 383c    	ldr.w	r3, [pc, #0x83c]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7ab8: 58e3         	ldr	r3, [r4, r3]
  2e7aba: 681b         	ldr	r3, [r3]
  2e7abc: 4618         	mov	r0, r3
  2e7abe: 2106         	movs	r1, #0x6
  2e7ac0: f2b2 fb2e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b265c
  2e7ac4: 4603         	mov	r3, r0
  2e7ac6: 4618         	mov	r0, r3
  2e7ac8: f2b1 ff2e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1e5c
  2e7acc: 4603         	mov	r3, r0
  2e7ace: aa27         	add	r2, sp, #0x9c
  2e7ad0: 4610         	mov	r0, r2
  2e7ad2: 4619         	mov	r1, r3
  2e7ad4: f0ce f1cc    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce398
  2e7ad8: f8df 380c    	ldr.w	r3, [pc, #0x80c]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7adc: 58e3         	ldr	r3, [r4, r3]
  2e7ade: 681a         	ldr	r2, [r3]
  2e7ae0: ab27         	add	r3, sp, #0x9c
  2e7ae2: 4610         	mov	r0, r2
  2e7ae4: 9944         	ldr	r1, [sp, #0x110]
  2e7ae6: 461a         	mov	r2, r3
  2e7ae8: f2ac ff26    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2ace4c
  2e7aec: ab4b         	add	r3, sp, #0x12c
  2e7aee: 4618         	mov	r0, r3
  2e7af0: f0a2 f480    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2900
  2e7af4: aa36         	add	r2, sp, #0xd8
  2e7af6: ab4b         	add	r3, sp, #0x12c
  2e7af8: 4610         	mov	r0, r2
  2e7afa: f8df 280c    	ldr.w	r2, [pc, #0x80c]        @ 0x2e8308 <AppDelegate::applicationDidFinishLaunching()+0x2740>
  2e7afe: 447a         	add	r2, pc
  2e7b00: 4611         	mov	r1, r2
  2e7b02: 461a         	mov	r2, r3
  2e7b04: f0ce f7ac    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cef58
  2e7b08: ab36         	add	r3, sp, #0xd8
  2e7b0a: 4618         	mov	r0, r3
  2e7b0c: f2b1 ff96    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1f2c
  2e7b10: 4607         	mov	r7, r0
  2e7b12: ab4d         	add	r3, sp, #0x134
  2e7b14: 4618         	mov	r0, r3
  2e7b16: f0a2 f46d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a28da
  2e7b1a: aa37         	add	r2, sp, #0xdc
  2e7b1c: ab4d         	add	r3, sp, #0x134
  2e7b1e: 4610         	mov	r0, r2
  2e7b20: f8df 27e8    	ldr.w	r2, [pc, #0x7e8]        @ 0x2e830c <AppDelegate::applicationDidFinishLaunching()+0x2744>
  2e7b24: 447a         	add	r2, pc
  2e7b26: 4611         	mov	r1, r2
  2e7b28: 461a         	mov	r2, r3
  2e7b2a: f0ce f799    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cef32
  2e7b2e: ab37         	add	r3, sp, #0xdc
  2e7b30: 4618         	mov	r0, r3
  2e7b32: f2b1 ff83    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1f06
  2e7b36: 4606         	mov	r6, r0
  2e7b38: f04f 507e    	mov.w	r0, #0x3f800000
  2e7b3c: f7f5 f8a2    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xaebc
  2e7b40: 4605         	mov	r5, r0
  2e7b42: 200f         	movs	r0, #0xf
  2e7b44: f7fd f8e0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2e40
  2e7b48: 4603         	mov	r3, r0
  2e7b4a: 2200         	movs	r2, #0x0
  2e7b4c: 9200         	str	r2, [sp]
  2e7b4e: 4638         	mov	r0, r7
  2e7b50: 4631         	mov	r1, r6
  2e7b52: 462a         	mov	r2, r5
  2e7b54: f2b2 f95c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b22b8
  2e7b58: 4603         	mov	r3, r0
  2e7b5a: 9344         	str	r3, [sp, #0x110]
  2e7b5c: ab37         	add	r3, sp, #0xdc
  2e7b5e: 4618         	mov	r0, r3
  2e7b60: f0cd f6d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cddb0
  2e7b64: ab4d         	add	r3, sp, #0x134
  2e7b66: 4618         	mov	r0, r3
  2e7b68: f0a2 f448    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2890
  2e7b6c: ab36         	add	r3, sp, #0xd8
  2e7b6e: 4618         	mov	r0, r3
  2e7b70: f0cd f6d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdda0
  2e7b74: ab4b         	add	r3, sp, #0x12c
  2e7b76: 4618         	mov	r0, r3
  2e7b78: f0a2 f440    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2880
  2e7b7c: f8df 3774    	ldr.w	r3, [pc, #0x774]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7b80: 58e3         	ldr	r3, [r4, r3]
  2e7b82: 681b         	ldr	r3, [r3]
  2e7b84: 4618         	mov	r0, r3
  2e7b86: 2107         	movs	r1, #0x7
  2e7b88: f2b2 faca    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2594
  2e7b8c: 4603         	mov	r3, r0
  2e7b8e: 4618         	mov	r0, r3
  2e7b90: f2b1 feca    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1d94
  2e7b94: 4603         	mov	r3, r0
  2e7b96: aa27         	add	r2, sp, #0x9c
  2e7b98: 4610         	mov	r0, r2
  2e7b9a: 4619         	mov	r1, r3
  2e7b9c: f0ce f168    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce2d0
  2e7ba0: f8df 3744    	ldr.w	r3, [pc, #0x744]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7ba4: 58e3         	ldr	r3, [r4, r3]
  2e7ba6: 681a         	ldr	r2, [r3]
  2e7ba8: ab27         	add	r3, sp, #0x9c
  2e7baa: 4610         	mov	r0, r2
  2e7bac: 9944         	ldr	r1, [sp, #0x110]
  2e7bae: 461a         	mov	r2, r3
  2e7bb0: f2ac fec2    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2acd84
  2e7bb4: ab4b         	add	r3, sp, #0x12c
  2e7bb6: 4618         	mov	r0, r3
  2e7bb8: f0a2 f41c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2838
  2e7bbc: aa38         	add	r2, sp, #0xe0
  2e7bbe: ab4b         	add	r3, sp, #0x12c
  2e7bc0: 4610         	mov	r0, r2
  2e7bc2: f8df 274c    	ldr.w	r2, [pc, #0x74c]        @ 0x2e8310 <AppDelegate::applicationDidFinishLaunching()+0x2748>
  2e7bc6: 447a         	add	r2, pc
  2e7bc8: 4611         	mov	r1, r2
  2e7bca: 461a         	mov	r2, r3
  2e7bcc: f0ce f748    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cee90
  2e7bd0: ab38         	add	r3, sp, #0xe0
  2e7bd2: 4618         	mov	r0, r3
  2e7bd4: f2b1 ff32    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1e64
  2e7bd8: 4607         	mov	r7, r0
  2e7bda: ab4d         	add	r3, sp, #0x134
  2e7bdc: 4618         	mov	r0, r3
  2e7bde: f0a2 f409    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2812
  2e7be2: aa39         	add	r2, sp, #0xe4
  2e7be4: ab4d         	add	r3, sp, #0x134
  2e7be6: 4610         	mov	r0, r2
  2e7be8: f8df 2728    	ldr.w	r2, [pc, #0x728]        @ 0x2e8314 <AppDelegate::applicationDidFinishLaunching()+0x274c>
  2e7bec: 447a         	add	r2, pc
  2e7bee: 4611         	mov	r1, r2
  2e7bf0: 461a         	mov	r2, r3
  2e7bf2: f0ce f735    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cee6a
  2e7bf6: ab39         	add	r3, sp, #0xe4
  2e7bf8: 4618         	mov	r0, r3
  2e7bfa: f2b1 ff1f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1e3e
  2e7bfe: 4606         	mov	r6, r0
  2e7c00: f04f 507e    	mov.w	r0, #0x3f800000
  2e7c04: f7f5 f83e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xaf84
  2e7c08: 4605         	mov	r5, r0
  2e7c0a: 200f         	movs	r0, #0xf
  2e7c0c: f7fd f87c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2f08
  2e7c10: 4603         	mov	r3, r0
  2e7c12: 2200         	movs	r2, #0x0
  2e7c14: 9200         	str	r2, [sp]
  2e7c16: 4638         	mov	r0, r7
  2e7c18: 4631         	mov	r1, r6
  2e7c1a: 462a         	mov	r2, r5
  2e7c1c: f2b2 f8f8    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b21f0
  2e7c20: 4603         	mov	r3, r0
  2e7c22: 9344         	str	r3, [sp, #0x110]
  2e7c24: ab39         	add	r3, sp, #0xe4
  2e7c26: 4618         	mov	r0, r3
  2e7c28: f0cd f674    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdce8
  2e7c2c: ab4d         	add	r3, sp, #0x134
  2e7c2e: 4618         	mov	r0, r3
  2e7c30: f0a2 f3e4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a27c8
  2e7c34: ab38         	add	r3, sp, #0xe0
  2e7c36: 4618         	mov	r0, r3
  2e7c38: f0cd f66c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdcd8
  2e7c3c: ab4b         	add	r3, sp, #0x12c
  2e7c3e: 4618         	mov	r0, r3
  2e7c40: f0a2 f3dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a27b8
  2e7c44: f8df 36ac    	ldr.w	r3, [pc, #0x6ac]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7c48: 58e3         	ldr	r3, [r4, r3]
  2e7c4a: 681b         	ldr	r3, [r3]
  2e7c4c: 4618         	mov	r0, r3
  2e7c4e: 2108         	movs	r1, #0x8
  2e7c50: f2b2 fa66    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b24cc
  2e7c54: 4603         	mov	r3, r0
  2e7c56: 4618         	mov	r0, r3
  2e7c58: f2b1 fe66    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1ccc
  2e7c5c: 4603         	mov	r3, r0
  2e7c5e: aa27         	add	r2, sp, #0x9c
  2e7c60: 4610         	mov	r0, r2
  2e7c62: 4619         	mov	r1, r3
  2e7c64: f0ce f104    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce208
  2e7c68: f8df 367c    	ldr.w	r3, [pc, #0x67c]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7c6c: 58e3         	ldr	r3, [r4, r3]
  2e7c6e: 681a         	ldr	r2, [r3]
  2e7c70: ab27         	add	r3, sp, #0x9c
  2e7c72: 4610         	mov	r0, r2
  2e7c74: 9944         	ldr	r1, [sp, #0x110]
  2e7c76: 461a         	mov	r2, r3
  2e7c78: f2ac fe5e    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2accbc
  2e7c7c: ab4b         	add	r3, sp, #0x12c
  2e7c7e: 4618         	mov	r0, r3
  2e7c80: f0a2 f3b8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2770
  2e7c84: aa3a         	add	r2, sp, #0xe8
  2e7c86: ab4b         	add	r3, sp, #0x12c
  2e7c88: 4610         	mov	r0, r2
  2e7c8a: f8df 268c    	ldr.w	r2, [pc, #0x68c]        @ 0x2e8318 <AppDelegate::applicationDidFinishLaunching()+0x2750>
  2e7c8e: 447a         	add	r2, pc
  2e7c90: 4611         	mov	r1, r2
  2e7c92: 461a         	mov	r2, r3
  2e7c94: f0ce f6e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cedc8
  2e7c98: ab3a         	add	r3, sp, #0xe8
  2e7c9a: 4618         	mov	r0, r3
  2e7c9c: f2b1 fece    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1d9c
  2e7ca0: 4607         	mov	r7, r0
  2e7ca2: ab4d         	add	r3, sp, #0x134
  2e7ca4: 4618         	mov	r0, r3
  2e7ca6: f0a2 f3a5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a274a
  2e7caa: aa3b         	add	r2, sp, #0xec
  2e7cac: ab4d         	add	r3, sp, #0x134
  2e7cae: 4610         	mov	r0, r2
  2e7cb0: f8df 2668    	ldr.w	r2, [pc, #0x668]        @ 0x2e831c <AppDelegate::applicationDidFinishLaunching()+0x2754>
  2e7cb4: 447a         	add	r2, pc
  2e7cb6: 4611         	mov	r1, r2
  2e7cb8: 461a         	mov	r2, r3
  2e7cba: f0ce f6d1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ceda2
  2e7cbe: ab3b         	add	r3, sp, #0xec
  2e7cc0: 4618         	mov	r0, r3
  2e7cc2: f2b1 febb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1d76
  2e7cc6: 4606         	mov	r6, r0
  2e7cc8: f04f 507e    	mov.w	r0, #0x3f800000
  2e7ccc: f7f4 ffda    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb04c
  2e7cd0: 4605         	mov	r5, r0
  2e7cd2: 2064         	movs	r0, #0x64
  2e7cd4: f7fd f818    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x2fd0
  2e7cd8: 4603         	mov	r3, r0
  2e7cda: 2200         	movs	r2, #0x0
  2e7cdc: 9200         	str	r2, [sp]
  2e7cde: 4638         	mov	r0, r7
  2e7ce0: 4631         	mov	r1, r6
  2e7ce2: 462a         	mov	r2, r5
  2e7ce4: f2b2 f894    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2128
  2e7ce8: 4603         	mov	r3, r0
  2e7cea: 9344         	str	r3, [sp, #0x110]
  2e7cec: ab3b         	add	r3, sp, #0xec
  2e7cee: 4618         	mov	r0, r3
  2e7cf0: f0cd f610    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdc20
  2e7cf4: ab4d         	add	r3, sp, #0x134
  2e7cf6: 4618         	mov	r0, r3
  2e7cf8: f0a2 f380    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2700
  2e7cfc: ab3a         	add	r3, sp, #0xe8
  2e7cfe: 4618         	mov	r0, r3
  2e7d00: f0cd f608    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdc10
  2e7d04: ab4b         	add	r3, sp, #0x12c
  2e7d06: 4618         	mov	r0, r3
  2e7d08: f0a2 f378    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a26f0
  2e7d0c: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7d10: 58e3         	ldr	r3, [r4, r3]
  2e7d12: 681b         	ldr	r3, [r3]
  2e7d14: 4618         	mov	r0, r3
  2e7d16: 2109         	movs	r1, #0x9
  2e7d18: f2b2 fa02    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2404
  2e7d1c: 4603         	mov	r3, r0
  2e7d1e: 4618         	mov	r0, r3
  2e7d20: f2b1 fe02    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1c04
  2e7d24: 4603         	mov	r3, r0
  2e7d26: aa27         	add	r2, sp, #0x9c
  2e7d28: 4610         	mov	r0, r2
  2e7d2a: 4619         	mov	r1, r3
  2e7d2c: f0ce f0a0    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce140
  2e7d30: f8df 35b4    	ldr.w	r3, [pc, #0x5b4]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7d34: 58e3         	ldr	r3, [r4, r3]
  2e7d36: 681a         	ldr	r2, [r3]
  2e7d38: ab27         	add	r3, sp, #0x9c
  2e7d3a: 4610         	mov	r0, r2
  2e7d3c: 9944         	ldr	r1, [sp, #0x110]
  2e7d3e: 461a         	mov	r2, r3
  2e7d40: f2ac fdfa    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2acbf4
  2e7d44: ab4b         	add	r3, sp, #0x12c
  2e7d46: 4618         	mov	r0, r3
  2e7d48: f0a2 f354    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a26a8
  2e7d4c: aa3c         	add	r2, sp, #0xf0
  2e7d4e: ab4b         	add	r3, sp, #0x12c
  2e7d50: 4610         	mov	r0, r2
  2e7d52: f8df 25cc    	ldr.w	r2, [pc, #0x5cc]        @ 0x2e8320 <AppDelegate::applicationDidFinishLaunching()+0x2758>
  2e7d56: 447a         	add	r2, pc
  2e7d58: 4611         	mov	r1, r2
  2e7d5a: 461a         	mov	r2, r3
  2e7d5c: f0ce f680    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4ced00
  2e7d60: ab3c         	add	r3, sp, #0xf0
  2e7d62: 4618         	mov	r0, r3
  2e7d64: f2b1 fe6a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1cd4
  2e7d68: 4607         	mov	r7, r0
  2e7d6a: ab4d         	add	r3, sp, #0x134
  2e7d6c: 4618         	mov	r0, r3
  2e7d6e: f0a2 f341    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a2682
  2e7d72: aa3d         	add	r2, sp, #0xf4
  2e7d74: ab4d         	add	r3, sp, #0x134
  2e7d76: 4610         	mov	r0, r2
  2e7d78: f8df 25a8    	ldr.w	r2, [pc, #0x5a8]        @ 0x2e8324 <AppDelegate::applicationDidFinishLaunching()+0x275c>
  2e7d7c: 447a         	add	r2, pc
  2e7d7e: 4611         	mov	r1, r2
  2e7d80: 461a         	mov	r2, r3
  2e7d82: f0ce f66d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cecda
  2e7d86: ab3d         	add	r3, sp, #0xf4
  2e7d88: 4618         	mov	r0, r3
  2e7d8a: f2b1 fe57    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1cae
  2e7d8e: 4606         	mov	r6, r0
  2e7d90: f04f 507e    	mov.w	r0, #0x3f800000
  2e7d94: f7f4 ff76    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb114
  2e7d98: 4605         	mov	r5, r0
  2e7d9a: 2064         	movs	r0, #0x64
  2e7d9c: f7fc ffb4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3098
  2e7da0: 4603         	mov	r3, r0
  2e7da2: 2200         	movs	r2, #0x0
  2e7da4: 9200         	str	r2, [sp]
  2e7da6: 4638         	mov	r0, r7
  2e7da8: 4631         	mov	r1, r6
  2e7daa: 462a         	mov	r2, r5
  2e7dac: f2b2 f830    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b2060
  2e7db0: 4603         	mov	r3, r0
  2e7db2: 9344         	str	r3, [sp, #0x110]
  2e7db4: ab3d         	add	r3, sp, #0xf4
  2e7db6: 4618         	mov	r0, r3
  2e7db8: f0cd f5ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdb58
  2e7dbc: ab4d         	add	r3, sp, #0x134
  2e7dbe: 4618         	mov	r0, r3
  2e7dc0: f0a2 f31c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2638
  2e7dc4: ab3c         	add	r3, sp, #0xf0
  2e7dc6: 4618         	mov	r0, r3
  2e7dc8: f0cd f5a4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cdb48
  2e7dcc: ab4b         	add	r3, sp, #0x12c
  2e7dce: 4618         	mov	r0, r3
  2e7dd0: f0a2 f314    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2628
  2e7dd4: f8df 351c    	ldr.w	r3, [pc, #0x51c]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7dd8: 58e3         	ldr	r3, [r4, r3]
  2e7dda: 681b         	ldr	r3, [r3]
  2e7ddc: 4618         	mov	r0, r3
  2e7dde: 210a         	movs	r1, #0xa
  2e7de0: f2b2 f99e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b233c
  2e7de4: 4603         	mov	r3, r0
  2e7de6: 4618         	mov	r0, r3
  2e7de8: f2b1 fd9e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1b3c
  2e7dec: 4603         	mov	r3, r0
  2e7dee: aa27         	add	r2, sp, #0x9c
  2e7df0: 4610         	mov	r0, r2
  2e7df2: 4619         	mov	r1, r3
  2e7df4: f0ce f03c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4ce078
  2e7df8: f8df 34ec    	ldr.w	r3, [pc, #0x4ec]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7dfc: 58e3         	ldr	r3, [r4, r3]
  2e7dfe: 681a         	ldr	r2, [r3]
  2e7e00: ab27         	add	r3, sp, #0x9c
  2e7e02: 4610         	mov	r0, r2
  2e7e04: 9944         	ldr	r1, [sp, #0x110]
  2e7e06: 461a         	mov	r2, r3
  2e7e08: f2ac fd96    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2acb2c
  2e7e0c: ab4b         	add	r3, sp, #0x12c
  2e7e0e: 4618         	mov	r0, r3
  2e7e10: f0a2 f2f0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a25e0
  2e7e14: aa3e         	add	r2, sp, #0xf8
  2e7e16: ab4b         	add	r3, sp, #0x12c
  2e7e18: 4610         	mov	r0, r2
  2e7e1a: f8df 250c    	ldr.w	r2, [pc, #0x50c]        @ 0x2e8328 <AppDelegate::applicationDidFinishLaunching()+0x2760>
  2e7e1e: 447a         	add	r2, pc
  2e7e20: 4611         	mov	r1, r2
  2e7e22: 461a         	mov	r2, r3
  2e7e24: f0ce f61c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cec38
  2e7e28: ab3e         	add	r3, sp, #0xf8
  2e7e2a: 4618         	mov	r0, r3
  2e7e2c: f2b1 fe06    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1c0c
  2e7e30: 4607         	mov	r7, r0
  2e7e32: ab4d         	add	r3, sp, #0x134
  2e7e34: 4618         	mov	r0, r3
  2e7e36: f0a2 f2dd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a25ba
  2e7e3a: aa3f         	add	r2, sp, #0xfc
  2e7e3c: ab4d         	add	r3, sp, #0x134
  2e7e3e: 4610         	mov	r0, r2
  2e7e40: f8df 24e8    	ldr.w	r2, [pc, #0x4e8]        @ 0x2e832c <AppDelegate::applicationDidFinishLaunching()+0x2764>
  2e7e44: 447a         	add	r2, pc
  2e7e46: 4611         	mov	r1, r2
  2e7e48: 461a         	mov	r2, r3
  2e7e4a: f0ce f609    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cec12
  2e7e4e: ab3f         	add	r3, sp, #0xfc
  2e7e50: 4618         	mov	r0, r3
  2e7e52: f2b1 fdf3    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b1be6
  2e7e56: 4606         	mov	r6, r0
  2e7e58: f04f 507e    	mov.w	r0, #0x3f800000
  2e7e5c: f7f4 ff12    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb1dc
  2e7e60: 4605         	mov	r5, r0
  2e7e62: 2064         	movs	r0, #0x64
  2e7e64: f7fc ff50    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3160
  2e7e68: 4603         	mov	r3, r0
  2e7e6a: 2200         	movs	r2, #0x0
  2e7e6c: 9200         	str	r2, [sp]
  2e7e6e: 4638         	mov	r0, r7
  2e7e70: 4631         	mov	r1, r6
  2e7e72: 462a         	mov	r2, r5
  2e7e74: f2b1 ffcc    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b1f98
  2e7e78: 4603         	mov	r3, r0
  2e7e7a: 9344         	str	r3, [sp, #0x110]
  2e7e7c: ab3f         	add	r3, sp, #0xfc
  2e7e7e: 4618         	mov	r0, r3
  2e7e80: f0cd f548    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cda90
  2e7e84: ab4d         	add	r3, sp, #0x134
  2e7e86: 4618         	mov	r0, r3
  2e7e88: f0a2 f2b8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2570
  2e7e8c: ab3e         	add	r3, sp, #0xf8
  2e7e8e: 4618         	mov	r0, r3
  2e7e90: f0cd f540    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cda80
  2e7e94: ab4b         	add	r3, sp, #0x12c
  2e7e96: 4618         	mov	r0, r3
  2e7e98: f0a2 f2b0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2560
  2e7e9c: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x2e82f4 <AppDelegate::applicationDidFinishLaunching()+0x272c>
  2e7ea0: 58e3         	ldr	r3, [r4, r3]
  2e7ea2: 681b         	ldr	r3, [r3]
  2e7ea4: 4618         	mov	r0, r3
  2e7ea6: 210b         	movs	r1, #0xb
  2e7ea8: f2b2 f93a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2b2274
  2e7eac: 4603         	mov	r3, r0
  2e7eae: 4618         	mov	r0, r3
  2e7eb0: f2b1 fd3a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b1a74
  2e7eb4: 4603         	mov	r3, r0
  2e7eb6: aa27         	add	r2, sp, #0x9c
  2e7eb8: 4610         	mov	r0, r2
  2e7eba: 4619         	mov	r1, r3
  2e7ebc: f0cd f7d8    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4cdfb0
  2e7ec0: f8df 3424    	ldr.w	r3, [pc, #0x424]        @ 0x2e82e8 <AppDelegate::applicationDidFinishLaunching()+0x2720>
  2e7ec4: 58e3         	ldr	r3, [r4, r3]
  2e7ec6: 681a         	ldr	r2, [r3]
  2e7ec8: ab27         	add	r3, sp, #0x9c
  2e7eca: 4610         	mov	r0, r2
  2e7ecc: 9944         	ldr	r1, [sp, #0x110]
  2e7ece: 461a         	mov	r2, r3
  2e7ed0: f2ac fd32    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2aca64
  2e7ed4: f2f8 fbec    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f87d8
  2e7ed8: 4602         	mov	r2, r0
  2e7eda: ab0f         	add	r3, sp, #0x3c
  2e7edc: 681b         	ldr	r3, [r3]
  2e7ede: 3304         	adds	r3, #0x4
  2e7ee0: f8df 144c    	ldr.w	r1, [pc, #0x44c]        @ 0x2e8330 <AppDelegate::applicationDidFinishLaunching()+0x2768>
  2e7ee4: 4479         	add	r1, pc
  2e7ee6: ad49         	add	r5, sp, #0x124
  2e7ee8: c903         	ldm	r1, {r0, r1}
  2e7eea: e885 0003    	stm.w	r5, {r0, r1}
  2e7eee: f8df 1444    	ldr.w	r1, [pc, #0x444]        @ 0x2e8334 <AppDelegate::applicationDidFinishLaunching()+0x276c>
  2e7ef2: 4479         	add	r1, pc
  2e7ef4: 9100         	str	r1, [sp]
  2e7ef6: 2100         	movs	r1, #0x0
  2e7ef8: 9101         	str	r1, [sp, #0x4]
  2e7efa: 4610         	mov	r0, r2
  2e7efc: 4619         	mov	r1, r3
  2e7efe: ab49         	add	r3, sp, #0x124
  2e7f00: cb0c         	ldm	r3, {r2, r3}
  2e7f02: f2f8 fc71    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2f88e2
  2e7f06: f2f8 fbd3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f87a6
  2e7f0a: 4602         	mov	r2, r0
  2e7f0c: ab0f         	add	r3, sp, #0x3c
  2e7f0e: 681b         	ldr	r3, [r3]
  2e7f10: 3304         	adds	r3, #0x4
  2e7f12: f8df 1424    	ldr.w	r1, [pc, #0x424]        @ 0x2e8338 <AppDelegate::applicationDidFinishLaunching()+0x2770>
  2e7f16: 4479         	add	r1, pc
  2e7f18: ad4b         	add	r5, sp, #0x12c
  2e7f1a: c903         	ldm	r1, {r0, r1}
  2e7f1c: e885 0003    	stm.w	r5, {r0, r1}
  2e7f20: f8df 1418    	ldr.w	r1, [pc, #0x418]        @ 0x2e833c <AppDelegate::applicationDidFinishLaunching()+0x2774>
  2e7f24: 4479         	add	r1, pc
  2e7f26: 9100         	str	r1, [sp]
  2e7f28: 2100         	movs	r1, #0x0
  2e7f2a: 9101         	str	r1, [sp, #0x4]
  2e7f2c: 4610         	mov	r0, r2
  2e7f2e: 4619         	mov	r1, r3
  2e7f30: ab4b         	add	r3, sp, #0x12c
  2e7f32: cb0c         	ldm	r3, {r2, r3}
  2e7f34: f2f8 fc58    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2f88b0
  2e7f38: f2f8 fbba    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f8774
  2e7f3c: 4602         	mov	r2, r0
  2e7f3e: ab0f         	add	r3, sp, #0x3c
  2e7f40: 681b         	ldr	r3, [r3]
  2e7f42: 3304         	adds	r3, #0x4
  2e7f44: 49fe         	ldr	r1, [pc, #0x3f8]        @ 0x2e8340 <AppDelegate::applicationDidFinishLaunching()+0x2778>
  2e7f46: 4479         	add	r1, pc
  2e7f48: ad4d         	add	r5, sp, #0x134
  2e7f4a: c903         	ldm	r1, {r0, r1}
  2e7f4c: e885 0003    	stm.w	r5, {r0, r1}
  2e7f50: 49fc         	ldr	r1, [pc, #0x3f0]        @ 0x2e8344 <AppDelegate::applicationDidFinishLaunching()+0x277c>
  2e7f52: 4479         	add	r1, pc
  2e7f54: 9100         	str	r1, [sp]
  2e7f56: 2100         	movs	r1, #0x0
  2e7f58: 9101         	str	r1, [sp, #0x4]
  2e7f5a: 4610         	mov	r0, r2
  2e7f5c: 4619         	mov	r1, r3
  2e7f5e: ab4d         	add	r3, sp, #0x134
  2e7f60: cb0c         	ldm	r3, {r2, r3}
  2e7f62: f2f8 fc41    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2f8882
  2e7f66: 4bf8         	ldr	r3, [pc, #0x3e0]        @ 0x2e8348 <AppDelegate::applicationDidFinishLaunching()+0x2780>
  2e7f68: 58e3         	ldr	r3, [r4, r3]
  2e7f6a: 2200         	movs	r2, #0x0
  2e7f6c: 601a         	str	r2, [r3]
  2e7f6e: 2014         	movs	r0, #0x14
  2e7f70: f09f f4f8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x49f9f0
  2e7f74: 4603         	mov	r3, r0
  2e7f76: 461d         	mov	r5, r3
  2e7f78: 4628         	mov	r0, r5
  2e7f7a: f140 fe8b    	bl	0x428c94 <ZYWebView::ZYWebView()> @ imm = #0x140d16
  2e7f7e: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x2e834c <AppDelegate::applicationDidFinishLaunching()+0x2784>
  2e7f80: 58e3         	ldr	r3, [r4, r3]
  2e7f82: 601d         	str	r5, [r3]
  2e7f84: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x2e834c <AppDelegate::applicationDidFinishLaunching()+0x2784>
  2e7f86: 58e3         	ldr	r3, [r4, r3]
  2e7f88: 681b         	ldr	r3, [r3]
  2e7f8a: 4618         	mov	r0, r3
  2e7f8c: f140 fe98    	bl	0x428cc0 <ZYWebView::init()> @ imm = #0x140d30
  2e7f90: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x2e8350 <AppDelegate::applicationDidFinishLaunching()+0x2788>
  2e7f92: 58e3         	ldr	r3, [r4, r3]
  2e7f94: 2200         	movs	r2, #0x0
  2e7f96: 601a         	str	r2, [r3]
  2e7f98: f111 faf4    	bl	0x3f9584 <SplashLayer::scene()> @ imm = #0x1115e8
  2e7f9c: 4603         	mov	r3, r0
  2e7f9e: 9345         	str	r3, [sp, #0x114]
  2e7fa0: 9840         	ldr	r0, [sp, #0x100]
  2e7fa2: 9945         	ldr	r1, [sp, #0x114]
  2e7fa4: f2b4 f9c8    	bl	0x59c338 <cocos2d::CCDirector::runWithScene(cocos2d::CCScene*)> @ imm = #0x2b4390
  2e7fa8: f2fa fb40    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2fa680
  2e7fac: 4603         	mov	r3, r0
  2e7fae: 4618         	mov	r0, r3
  2e7fb0: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x2e8354 <AppDelegate::applicationDidFinishLaunching()+0x278c>
  2e7fb2: 447b         	add	r3, pc
  2e7fb4: 4619         	mov	r1, r3
  2e7fb6: 2200         	movs	r2, #0x0
  2e7fb8: f2fa f936    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2fa26c
  2e7fbc: 4603         	mov	r3, r0
  2e7fbe: 9346         	str	r3, [sp, #0x118]
  2e7fc0: 9b46         	ldr	r3, [sp, #0x118]
  2e7fc2: 2b00         	cmp	r3, #0x0
  2e7fc4: dd01         	ble	0x2e7fca <AppDelegate::applicationDidFinishLaunching()+0x2402> @ imm = #0x2
  2e7fc6: f144 f89d    	bl	0x42c104 <ApplicationInterface::prepareInterstitial()> @ imm = #0x14413a
  2e7fca: f144 fda3    	bl	0x42cb14 <ApplicationInterface::enableBlueToothMonitor()> @ imm = #0x144b46
  2e7fce: 2401         	movs	r4, #0x1
  2e7fd0: ab27         	add	r3, sp, #0x9c
  2e7fd2: 4618         	mov	r0, r3
  2e7fd4: f0cd f49e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd93c
  2e7fd8: ab4f         	add	r3, sp, #0x13c
  2e7fda: 4618         	mov	r0, r3
  2e7fdc: f7f3 ff4c    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0xc168
  2e7fe0: 4623         	mov	r3, r4
  2e7fe2: e222         	b	0x2e842a <AppDelegate::applicationDidFinishLaunching()+0x2862> @ imm = #0x444
  2e7fe4: ab10         	add	r3, sp, #0x40
  2e7fe6: 4618         	mov	r0, r3
  2e7fe8: f0cd f494    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd928
  2e7fec: e7ff         	b	0x2e7fee <AppDelegate::applicationDidFinishLaunching()+0x2426> @ imm = #-0x2
  2e7fee: ab4d         	add	r3, sp, #0x134
  2e7ff0: 4618         	mov	r0, r3
  2e7ff2: f0a2 f203    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2406
  2e7ff6: e212         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x424
  2e7ff8: ab11         	add	r3, sp, #0x44
  2e7ffa: 4618         	mov	r0, r3
  2e7ffc: f0cd f48a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd914
  2e8000: e7ff         	b	0x2e8002 <AppDelegate::applicationDidFinishLaunching()+0x243a> @ imm = #-0x2
  2e8002: ab4d         	add	r3, sp, #0x134
  2e8004: 4618         	mov	r0, r3
  2e8006: f0a2 f1f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a23f2
  2e800a: e208         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x410
  2e800c: ab12         	add	r3, sp, #0x48
  2e800e: 4618         	mov	r0, r3
  2e8010: f0cd f480    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd900
  2e8014: e7ff         	b	0x2e8016 <AppDelegate::applicationDidFinishLaunching()+0x244e> @ imm = #-0x2
  2e8016: ab4d         	add	r3, sp, #0x134
  2e8018: 4618         	mov	r0, r3
  2e801a: f0a2 f1ef    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a23de
  2e801e: e1fe         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x3fc
  2e8020: ab19         	add	r3, sp, #0x64
  2e8022: 4618         	mov	r0, r3
  2e8024: f0cd f476    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd8ec
  2e8028: e7ff         	b	0x2e802a <AppDelegate::applicationDidFinishLaunching()+0x2462> @ imm = #-0x2
  2e802a: ab4d         	add	r3, sp, #0x134
  2e802c: 4618         	mov	r0, r3
  2e802e: f0a2 f1e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a23ca
  2e8032: e7ff         	b	0x2e8034 <AppDelegate::applicationDidFinishLaunching()+0x246c> @ imm = #-0x2
  2e8034: ab18         	add	r3, sp, #0x60
  2e8036: 4618         	mov	r0, r3
  2e8038: f0cd f46c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd8d8
  2e803c: e7ff         	b	0x2e803e <AppDelegate::applicationDidFinishLaunching()+0x2476> @ imm = #-0x2
  2e803e: ab4b         	add	r3, sp, #0x12c
  2e8040: 4618         	mov	r0, r3
  2e8042: f0a2 f1db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a23b6
  2e8046: e7ff         	b	0x2e8048 <AppDelegate::applicationDidFinishLaunching()+0x2480> @ imm = #-0x2
  2e8048: ab17         	add	r3, sp, #0x5c
  2e804a: 4618         	mov	r0, r3
  2e804c: f0cd f462    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd8c4
  2e8050: e7ff         	b	0x2e8052 <AppDelegate::applicationDidFinishLaunching()+0x248a> @ imm = #-0x2
  2e8052: ab49         	add	r3, sp, #0x124
  2e8054: 4618         	mov	r0, r3
  2e8056: f0a2 f1d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a23a2
  2e805a: e7ff         	b	0x2e805c <AppDelegate::applicationDidFinishLaunching()+0x2494> @ imm = #-0x2
  2e805c: ab16         	add	r3, sp, #0x58
  2e805e: 4618         	mov	r0, r3
  2e8060: f0cd f458    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd8b0
  2e8064: e7ff         	b	0x2e8066 <AppDelegate::applicationDidFinishLaunching()+0x249e> @ imm = #-0x2
  2e8066: ab3f         	add	r3, sp, #0xfc
  2e8068: 4618         	mov	r0, r3
  2e806a: f0a2 f1c7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a238e
  2e806e: e7ff         	b	0x2e8070 <AppDelegate::applicationDidFinishLaunching()+0x24a8> @ imm = #-0x2
  2e8070: ab15         	add	r3, sp, #0x54
  2e8072: 4618         	mov	r0, r3
  2e8074: f0cd f44e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd89c
  2e8078: e7ff         	b	0x2e807a <AppDelegate::applicationDidFinishLaunching()+0x24b2> @ imm = #-0x2
  2e807a: ab3e         	add	r3, sp, #0xf8
  2e807c: 4618         	mov	r0, r3
  2e807e: f0a2 f1bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a237a
  2e8082: e7ff         	b	0x2e8084 <AppDelegate::applicationDidFinishLaunching()+0x24bc> @ imm = #-0x2
  2e8084: ab14         	add	r3, sp, #0x50
  2e8086: 4618         	mov	r0, r3
  2e8088: f0cd f444    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd888
  2e808c: e7ff         	b	0x2e808e <AppDelegate::applicationDidFinishLaunching()+0x24c6> @ imm = #-0x2
  2e808e: ab3d         	add	r3, sp, #0xf4
  2e8090: 4618         	mov	r0, r3
  2e8092: f0a2 f1b3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2366
  2e8096: e7ff         	b	0x2e8098 <AppDelegate::applicationDidFinishLaunching()+0x24d0> @ imm = #-0x2
  2e8098: ab13         	add	r3, sp, #0x4c
  2e809a: 4618         	mov	r0, r3
  2e809c: f0cd f43a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd874
  2e80a0: e7ff         	b	0x2e80a2 <AppDelegate::applicationDidFinishLaunching()+0x24da> @ imm = #-0x2
  2e80a2: ab3c         	add	r3, sp, #0xf0
  2e80a4: 4618         	mov	r0, r3
  2e80a6: f0a2 f1a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2352
  2e80aa: e1b8         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x370
  2e80ac: ab26         	add	r3, sp, #0x98
  2e80ae: 4618         	mov	r0, r3
  2e80b0: f0cd f430    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd860
  2e80b4: e7ff         	b	0x2e80b6 <AppDelegate::applicationDidFinishLaunching()+0x24ee> @ imm = #-0x2
  2e80b6: ab4d         	add	r3, sp, #0x134
  2e80b8: 4618         	mov	r0, r3
  2e80ba: f0a2 f19f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a233e
  2e80be: e7ff         	b	0x2e80c0 <AppDelegate::applicationDidFinishLaunching()+0x24f8> @ imm = #-0x2
  2e80c0: ab25         	add	r3, sp, #0x94
  2e80c2: 4618         	mov	r0, r3
  2e80c4: f0cd f426    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd84c
  2e80c8: e7ff         	b	0x2e80ca <AppDelegate::applicationDidFinishLaunching()+0x2502> @ imm = #-0x2
  2e80ca: ab4b         	add	r3, sp, #0x12c
  2e80cc: 4618         	mov	r0, r3
  2e80ce: f0a2 f195    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a232a
  2e80d2: e7ff         	b	0x2e80d4 <AppDelegate::applicationDidFinishLaunching()+0x250c> @ imm = #-0x2
  2e80d4: ab24         	add	r3, sp, #0x90
  2e80d6: 4618         	mov	r0, r3
  2e80d8: f0cd f41c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd838
  2e80dc: e7ff         	b	0x2e80de <AppDelegate::applicationDidFinishLaunching()+0x2516> @ imm = #-0x2
  2e80de: ab49         	add	r3, sp, #0x124
  2e80e0: 4618         	mov	r0, r3
  2e80e2: f0a2 f18b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2316
  2e80e6: e7ff         	b	0x2e80e8 <AppDelegate::applicationDidFinishLaunching()+0x2520> @ imm = #-0x2
  2e80e8: ab23         	add	r3, sp, #0x8c
  2e80ea: 4618         	mov	r0, r3
  2e80ec: f0cd f412    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd824
  2e80f0: e7ff         	b	0x2e80f2 <AppDelegate::applicationDidFinishLaunching()+0x252a> @ imm = #-0x2
  2e80f2: ab3f         	add	r3, sp, #0xfc
  2e80f4: 4618         	mov	r0, r3
  2e80f6: f0a2 f181    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2302
  2e80fa: e7ff         	b	0x2e80fc <AppDelegate::applicationDidFinishLaunching()+0x2534> @ imm = #-0x2
  2e80fc: ab22         	add	r3, sp, #0x88
  2e80fe: 4618         	mov	r0, r3
  2e8100: f0cd f408    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd810
  2e8104: e7ff         	b	0x2e8106 <AppDelegate::applicationDidFinishLaunching()+0x253e> @ imm = #-0x2
  2e8106: ab3e         	add	r3, sp, #0xf8
  2e8108: 4618         	mov	r0, r3
  2e810a: f0a2 f177    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a22ee
  2e810e: e7ff         	b	0x2e8110 <AppDelegate::applicationDidFinishLaunching()+0x2548> @ imm = #-0x2
  2e8110: ab21         	add	r3, sp, #0x84
  2e8112: 4618         	mov	r0, r3
  2e8114: f0cd f3fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd7fc
  2e8118: e7ff         	b	0x2e811a <AppDelegate::applicationDidFinishLaunching()+0x2552> @ imm = #-0x2
  2e811a: ab3d         	add	r3, sp, #0xf4
  2e811c: 4618         	mov	r0, r3
  2e811e: f0a2 f16d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a22da
  2e8122: e7ff         	b	0x2e8124 <AppDelegate::applicationDidFinishLaunching()+0x255c> @ imm = #-0x2
  2e8124: ab20         	add	r3, sp, #0x80
  2e8126: 4618         	mov	r0, r3
  2e8128: f0cd f3f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd7e8
  2e812c: e7ff         	b	0x2e812e <AppDelegate::applicationDidFinishLaunching()+0x2566> @ imm = #-0x2
  2e812e: ab3c         	add	r3, sp, #0xf0
  2e8130: 4618         	mov	r0, r3
  2e8132: f0a2 f163    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a22c6
  2e8136: e7ff         	b	0x2e8138 <AppDelegate::applicationDidFinishLaunching()+0x2570> @ imm = #-0x2
  2e8138: ab1f         	add	r3, sp, #0x7c
  2e813a: 4618         	mov	r0, r3
  2e813c: f0cd f3ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd7d4
  2e8140: e7ff         	b	0x2e8142 <AppDelegate::applicationDidFinishLaunching()+0x257a> @ imm = #-0x2
  2e8142: ab3b         	add	r3, sp, #0xec
  2e8144: 4618         	mov	r0, r3
  2e8146: f0a2 f159    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a22b2
  2e814a: e7ff         	b	0x2e814c <AppDelegate::applicationDidFinishLaunching()+0x2584> @ imm = #-0x2
  2e814c: ab1e         	add	r3, sp, #0x78
  2e814e: 4618         	mov	r0, r3
  2e8150: f0cd f3e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd7c0
  2e8154: e7ff         	b	0x2e8156 <AppDelegate::applicationDidFinishLaunching()+0x258e> @ imm = #-0x2
  2e8156: ab3a         	add	r3, sp, #0xe8
  2e8158: 4618         	mov	r0, r3
  2e815a: f0a2 f14f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a229e
  2e815e: e7ff         	b	0x2e8160 <AppDelegate::applicationDidFinishLaunching()+0x2598> @ imm = #-0x2
  2e8160: ab1d         	add	r3, sp, #0x74
  2e8162: 4618         	mov	r0, r3
  2e8164: f0cd f3d6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd7ac
  2e8168: e7ff         	b	0x2e816a <AppDelegate::applicationDidFinishLaunching()+0x25a2> @ imm = #-0x2
  2e816a: ab39         	add	r3, sp, #0xe4
  2e816c: 4618         	mov	r0, r3
  2e816e: f0a2 f145    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a228a
  2e8172: e7ff         	b	0x2e8174 <AppDelegate::applicationDidFinishLaunching()+0x25ac> @ imm = #-0x2
  2e8174: ab1c         	add	r3, sp, #0x70
  2e8176: 4618         	mov	r0, r3
  2e8178: f0cd f3cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd798
  2e817c: e7ff         	b	0x2e817e <AppDelegate::applicationDidFinishLaunching()+0x25b6> @ imm = #-0x2
  2e817e: ab38         	add	r3, sp, #0xe0
  2e8180: 4618         	mov	r0, r3
  2e8182: f0a2 f13b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2276
  2e8186: e7ff         	b	0x2e8188 <AppDelegate::applicationDidFinishLaunching()+0x25c0> @ imm = #-0x2
  2e8188: ab1b         	add	r3, sp, #0x6c
  2e818a: 4618         	mov	r0, r3
  2e818c: f0cd f3c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd784
  2e8190: e7ff         	b	0x2e8192 <AppDelegate::applicationDidFinishLaunching()+0x25ca> @ imm = #-0x2
  2e8192: ab37         	add	r3, sp, #0xdc
  2e8194: 4618         	mov	r0, r3
  2e8196: f0a2 f131    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2262
  2e819a: e7ff         	b	0x2e819c <AppDelegate::applicationDidFinishLaunching()+0x25d4> @ imm = #-0x2
  2e819c: ab1a         	add	r3, sp, #0x68
  2e819e: 4618         	mov	r0, r3
  2e81a0: f0cd f3b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd770
  2e81a4: e7ff         	b	0x2e81a6 <AppDelegate::applicationDidFinishLaunching()+0x25de> @ imm = #-0x2
  2e81a6: ab36         	add	r3, sp, #0xd8
  2e81a8: 4618         	mov	r0, r3
  2e81aa: f0a2 f127    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a224e
  2e81ae: e136         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x26c
  2e81b0: ab4d         	add	r3, sp, #0x134
  2e81b2: 4618         	mov	r0, r3
  2e81b4: f0a2 f122    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2244
  2e81b8: e131         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #0x262
  2e81ba: ab29         	add	r3, sp, #0xa4
  2e81bc: 4618         	mov	r0, r3
  2e81be: f0cd f3a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd752
  2e81c2: e7ff         	b	0x2e81c4 <AppDelegate::applicationDidFinishLaunching()+0x25fc> @ imm = #-0x2
  2e81c4: ab4d         	add	r3, sp, #0x134
  2e81c6: 4618         	mov	r0, r3
  2e81c8: f0a2 f118    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2230
  2e81cc: e7ff         	b	0x2e81ce <AppDelegate::applicationDidFinishLaunching()+0x2606> @ imm = #-0x2
  2e81ce: ab28         	add	r3, sp, #0xa0
  2e81d0: 4618         	mov	r0, r3
  2e81d2: f0cd f39f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd73e
  2e81d6: e7ff         	b	0x2e81d8 <AppDelegate::applicationDidFinishLaunching()+0x2610> @ imm = #-0x2
  2e81d8: ab4b         	add	r3, sp, #0x12c
  2e81da: 4618         	mov	r0, r3
  2e81dc: f0a2 f10e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a221c
  2e81e0: e118         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x230
  2e81e2: ab2b         	add	r3, sp, #0xac
  2e81e4: 4618         	mov	r0, r3
  2e81e6: f0cd f395    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd72a
  2e81ea: e7ff         	b	0x2e81ec <AppDelegate::applicationDidFinishLaunching()+0x2624> @ imm = #-0x2
  2e81ec: ab4d         	add	r3, sp, #0x134
  2e81ee: 4618         	mov	r0, r3
  2e81f0: f0a2 f104    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2208
  2e81f4: e7ff         	b	0x2e81f6 <AppDelegate::applicationDidFinishLaunching()+0x262e> @ imm = #-0x2
  2e81f6: ab2a         	add	r3, sp, #0xa8
  2e81f8: 4618         	mov	r0, r3
  2e81fa: f0cd f38b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd716
  2e81fe: e7ff         	b	0x2e8200 <AppDelegate::applicationDidFinishLaunching()+0x2638> @ imm = #-0x2
  2e8200: ab4b         	add	r3, sp, #0x12c
  2e8202: 4618         	mov	r0, r3
  2e8204: f0a2 f0fa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a21f4
  2e8208: e104         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x208
  2e820a: ab2d         	add	r3, sp, #0xb4
  2e820c: 4618         	mov	r0, r3
  2e820e: f0cd f381    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd702
  2e8212: e7ff         	b	0x2e8214 <AppDelegate::applicationDidFinishLaunching()+0x264c> @ imm = #-0x2
  2e8214: ab4d         	add	r3, sp, #0x134
  2e8216: 4618         	mov	r0, r3
  2e8218: f0a2 f0f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a21e0
  2e821c: e7ff         	b	0x2e821e <AppDelegate::applicationDidFinishLaunching()+0x2656> @ imm = #-0x2
  2e821e: ab2c         	add	r3, sp, #0xb0
  2e8220: 4618         	mov	r0, r3
  2e8222: f0cd f377    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd6ee
  2e8226: e7ff         	b	0x2e8228 <AppDelegate::applicationDidFinishLaunching()+0x2660> @ imm = #-0x2
  2e8228: ab4b         	add	r3, sp, #0x12c
  2e822a: 4618         	mov	r0, r3
  2e822c: f0a2 f0e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a21cc
  2e8230: e0f0         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x1e0
  2e8232: ab2f         	add	r3, sp, #0xbc
  2e8234: 4618         	mov	r0, r3
  2e8236: f0cd f36d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd6da
  2e823a: e7ff         	b	0x2e823c <AppDelegate::applicationDidFinishLaunching()+0x2674> @ imm = #-0x2
  2e823c: ab4d         	add	r3, sp, #0x134
  2e823e: 4618         	mov	r0, r3
  2e8240: f0a2 f0dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a21b8
  2e8244: e7ff         	b	0x2e8246 <AppDelegate::applicationDidFinishLaunching()+0x267e> @ imm = #-0x2
  2e8246: ab2e         	add	r3, sp, #0xb8
  2e8248: 4618         	mov	r0, r3
  2e824a: f0cd f363    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd6c6
  2e824e: e7ff         	b	0x2e8250 <AppDelegate::applicationDidFinishLaunching()+0x2688> @ imm = #-0x2
  2e8250: ab4b         	add	r3, sp, #0x12c
  2e8252: 4618         	mov	r0, r3
  2e8254: f0a2 f0d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a21a4
  2e8258: e0dc         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x1b8
  2e825a: ab31         	add	r3, sp, #0xc4
  2e825c: 4618         	mov	r0, r3
  2e825e: f0cd f359    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd6b2
  2e8262: e7ff         	b	0x2e8264 <AppDelegate::applicationDidFinishLaunching()+0x269c> @ imm = #-0x2
  2e8264: ab4d         	add	r3, sp, #0x134
  2e8266: 4618         	mov	r0, r3
  2e8268: f0a2 f0c8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2190
  2e826c: e7ff         	b	0x2e826e <AppDelegate::applicationDidFinishLaunching()+0x26a6> @ imm = #-0x2
  2e826e: ab30         	add	r3, sp, #0xc0
  2e8270: 4618         	mov	r0, r3
  2e8272: f0cd f34f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd69e
  2e8276: e7ff         	b	0x2e8278 <AppDelegate::applicationDidFinishLaunching()+0x26b0> @ imm = #-0x2
  2e8278: ab4b         	add	r3, sp, #0x12c
  2e827a: 4618         	mov	r0, r3
  2e827c: f0a2 f0be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a217c
  2e8280: e0c8         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x190
  2e8282: ab33         	add	r3, sp, #0xcc
  2e8284: 4618         	mov	r0, r3
  2e8286: f0cd f345    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd68a
  2e828a: e7ff         	b	0x2e828c <AppDelegate::applicationDidFinishLaunching()+0x26c4> @ imm = #-0x2
  2e828c: ab4d         	add	r3, sp, #0x134
  2e828e: 4618         	mov	r0, r3
  2e8290: f0a2 f0b4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2168
  2e8294: e7ff         	b	0x2e8296 <AppDelegate::applicationDidFinishLaunching()+0x26ce> @ imm = #-0x2
  2e8296: ab32         	add	r3, sp, #0xc8
  2e8298: 4618         	mov	r0, r3
  2e829a: f0cd f33b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd676
  2e829e: e7ff         	b	0x2e82a0 <AppDelegate::applicationDidFinishLaunching()+0x26d8> @ imm = #-0x2
  2e82a0: ab4b         	add	r3, sp, #0x12c
  2e82a2: 4618         	mov	r0, r3
  2e82a4: f0a2 f0aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2154
  2e82a8: e0b4         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x168
  2e82aa: ab35         	add	r3, sp, #0xd4
  2e82ac: 4618         	mov	r0, r3
  2e82ae: f0cd f331    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd662
  2e82b2: e7ff         	b	0x2e82b4 <AppDelegate::applicationDidFinishLaunching()+0x26ec> @ imm = #-0x2
  2e82b4: ab4d         	add	r3, sp, #0x134
  2e82b6: 4618         	mov	r0, r3
  2e82b8: f0a2 f0a0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2140
  2e82bc: e7ff         	b	0x2e82be <AppDelegate::applicationDidFinishLaunching()+0x26f6> @ imm = #-0x2
  2e82be: ab34         	add	r3, sp, #0xd0
  2e82c0: 4618         	mov	r0, r3
  2e82c2: f0cd f327    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd64e
  2e82c6: e7ff         	b	0x2e82c8 <AppDelegate::applicationDidFinishLaunching()+0x2700> @ imm = #-0x2
  2e82c8: ab4b         	add	r3, sp, #0x12c
  2e82ca: 4618         	mov	r0, r3
  2e82cc: f0a2 f096    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a212c
  2e82d0: e0a0         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x140
  2e82d2: ab37         	add	r3, sp, #0xdc
  2e82d4: 4618         	mov	r0, r3
  2e82d6: f0cd f31d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd63a
  2e82da: e7ff         	b	0x2e82dc <AppDelegate::applicationDidFinishLaunching()+0x2714> @ imm = #-0x2
  2e82dc: ab4d         	add	r3, sp, #0x134
  2e82de: 4618         	mov	r0, r3
  2e82e0: f0a2 f08c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2118
  2e82e4: e038         	b	0x2e8358 <AppDelegate::applicationDidFinishLaunching()+0x2790> @ imm = #0x70
  2e82e6: bf00         	nop
  2e82e8: d7cc         	bvc	0x2e8284 <AppDelegate::applicationDidFinishLaunching()+0x26bc> @ imm = #-0x68
  2e82ea: ffff b20e    	<unknown>
  2e82ee: 004d         	lsls	r5, r1, #0x1
  2e82f0: b19c         	cbz	r4, 0x2e831a <AppDelegate::applicationDidFinishLaunching()+0x2752> @ imm = #0x26
  2e82f2: 004d         	lsls	r5, r1, #0x1
  2e82f4: d7c8         	bvc	0x2e8288 <AppDelegate::applicationDidFinishLaunching()+0x26c0> @ imm = #-0x70
  2e82f6: ffff b15a    	<unknown>
  2e82fa: 004d         	lsls	r5, r1, #0x1
  2e82fc: b0d4         	sub	sp, #0x150
  2e82fe: 004d         	lsls	r5, r1, #0x1
  2e8300: b0a2         	sub	sp, #0x88
  2e8302: 004d         	lsls	r5, r1, #0x1
  2e8304: b090         	sub	sp, #0x40
  2e8306: 004d         	lsls	r5, r1, #0x1
  2e8308: affe         	add	r7, sp, #0x3f8
  2e830a: 004d         	lsls	r5, r1, #0x1
  2e830c: afe8         	add	r7, sp, #0x3a0
  2e830e: 004d         	lsls	r5, r1, #0x1
  2e8310: af56         	add	r7, sp, #0x158
  2e8312: 004d         	lsls	r5, r1, #0x1
  2e8314: af20         	add	r7, sp, #0x80
  2e8316: 004d         	lsls	r5, r1, #0x1
  2e8318: aea2         	add	r6, sp, #0x288
  2e831a: 004d         	lsls	r5, r1, #0x1
  2e831c: ae90         	add	r6, sp, #0x240
  2e831e: 004d         	lsls	r5, r1, #0x1
  2e8320: ae02         	add	r6, sp, #0x8
  2e8322: 004d         	lsls	r5, r1, #0x1
  2e8324: adc8         	add	r5, sp, #0x320
  2e8326: 004d         	lsls	r5, r1, #0x1
  2e8328: ad4e         	add	r5, sp, #0x138
  2e832a: 004d         	lsls	r5, r1, #0x1
  2e832c: ad00         	add	r5, sp, #0x0
  2e832e: 004d         	lsls	r5, r1, #0x1
  2e8330: b310         	cbz	r0, 0x2e8378 <AppDelegate::applicationDidFinishLaunching()+0x27b0> @ imm = #0x44
  2e8332: 0064         	lsls	r4, r4, #0x1
  2e8334: ac8e         	add	r4, sp, #0x238
  2e8336: 004d         	lsls	r5, r1, #0x1
  2e8338: ac9a         	add	r4, sp, #0x268
  2e833a: 004d         	lsls	r5, r1, #0x1
  2e833c: ac6c         	add	r4, sp, #0x1b0
  2e833e: 004d         	lsls	r5, r1, #0x1
  2e8340: ac72         	add	r4, sp, #0x1c8
  2e8342: 004d         	lsls	r5, r1, #0x1
  2e8344: ac4a         	add	r4, sp, #0x128
  2e8346: 004d         	lsls	r5, r1, #0x1
  2e8348: d7d0         	bvc	0x2e82ec <AppDelegate::applicationDidFinishLaunching()+0x2724> @ imm = #-0x60
  2e834a: ffff d75c    	<unknown>
  2e834e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  2e8352: ffff abf2    	<unknown>
  2e8356: 004d         	lsls	r5, r1, #0x1
  2e8358: ab36         	add	r3, sp, #0xd8
  2e835a: 4618         	mov	r0, r3
  2e835c: f0cd f2da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd5b4
  2e8360: e7ff         	b	0x2e8362 <AppDelegate::applicationDidFinishLaunching()+0x279a> @ imm = #-0x2
  2e8362: ab4b         	add	r3, sp, #0x12c
  2e8364: 4618         	mov	r0, r3
  2e8366: f0a2 f049    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2092
  2e836a: e053         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0xa6
  2e836c: ab39         	add	r3, sp, #0xe4
  2e836e: 4618         	mov	r0, r3
  2e8370: f0cd f2d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd5a0
  2e8374: e7ff         	b	0x2e8376 <AppDelegate::applicationDidFinishLaunching()+0x27ae> @ imm = #-0x2
  2e8376: ab4d         	add	r3, sp, #0x134
  2e8378: 4618         	mov	r0, r3
  2e837a: f0a2 f03f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a207e
  2e837e: e7ff         	b	0x2e8380 <AppDelegate::applicationDidFinishLaunching()+0x27b8> @ imm = #-0x2
  2e8380: ab38         	add	r3, sp, #0xe0
  2e8382: 4618         	mov	r0, r3
  2e8384: f0cd f2c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd58c
  2e8388: e7ff         	b	0x2e838a <AppDelegate::applicationDidFinishLaunching()+0x27c2> @ imm = #-0x2
  2e838a: ab4b         	add	r3, sp, #0x12c
  2e838c: 4618         	mov	r0, r3
  2e838e: f0a2 f035    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a206a
  2e8392: e03f         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x7e
  2e8394: ab3b         	add	r3, sp, #0xec
  2e8396: 4618         	mov	r0, r3
  2e8398: f0cd f2bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd578
  2e839c: e7ff         	b	0x2e839e <AppDelegate::applicationDidFinishLaunching()+0x27d6> @ imm = #-0x2
  2e839e: ab4d         	add	r3, sp, #0x134
  2e83a0: 4618         	mov	r0, r3
  2e83a2: f0a2 f02b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2056
  2e83a6: e7ff         	b	0x2e83a8 <AppDelegate::applicationDidFinishLaunching()+0x27e0> @ imm = #-0x2
  2e83a8: ab3a         	add	r3, sp, #0xe8
  2e83aa: 4618         	mov	r0, r3
  2e83ac: f0cd f2b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd564
  2e83b0: e7ff         	b	0x2e83b2 <AppDelegate::applicationDidFinishLaunching()+0x27ea> @ imm = #-0x2
  2e83b2: ab4b         	add	r3, sp, #0x12c
  2e83b4: 4618         	mov	r0, r3
  2e83b6: f0a2 f021    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2042
  2e83ba: e02b         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x56
  2e83bc: ab3d         	add	r3, sp, #0xf4
  2e83be: 4618         	mov	r0, r3
  2e83c0: f0cd f2a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd550
  2e83c4: e7ff         	b	0x2e83c6 <AppDelegate::applicationDidFinishLaunching()+0x27fe> @ imm = #-0x2
  2e83c6: ab4d         	add	r3, sp, #0x134
  2e83c8: 4618         	mov	r0, r3
  2e83ca: f0a2 f017    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a202e
  2e83ce: e7ff         	b	0x2e83d0 <AppDelegate::applicationDidFinishLaunching()+0x2808> @ imm = #-0x2
  2e83d0: ab3c         	add	r3, sp, #0xf0
  2e83d2: 4618         	mov	r0, r3
  2e83d4: f0cd f29e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd53c
  2e83d8: e7ff         	b	0x2e83da <AppDelegate::applicationDidFinishLaunching()+0x2812> @ imm = #-0x2
  2e83da: ab4b         	add	r3, sp, #0x12c
  2e83dc: 4618         	mov	r0, r3
  2e83de: f0a2 f00d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a201a
  2e83e2: e017         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x2e
  2e83e4: ab3f         	add	r3, sp, #0xfc
  2e83e6: 4618         	mov	r0, r3
  2e83e8: f0cd f294    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd528
  2e83ec: e7ff         	b	0x2e83ee <AppDelegate::applicationDidFinishLaunching()+0x2826> @ imm = #-0x2
  2e83ee: ab4d         	add	r3, sp, #0x134
  2e83f0: 4618         	mov	r0, r3
  2e83f2: f0a2 f003    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a2006
  2e83f6: e7ff         	b	0x2e83f8 <AppDelegate::applicationDidFinishLaunching()+0x2830> @ imm = #-0x2
  2e83f8: ab3e         	add	r3, sp, #0xf8
  2e83fa: 4618         	mov	r0, r3
  2e83fc: f0cd f28a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd514
  2e8400: e7ff         	b	0x2e8402 <AppDelegate::applicationDidFinishLaunching()+0x283a> @ imm = #-0x2
  2e8402: ab4b         	add	r3, sp, #0x12c
  2e8404: 4618         	mov	r0, r3
  2e8406: f0a1 f7f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a1ff2
  2e840a: e003         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #0x6
  2e840c: 4628         	mov	r0, r5
  2e840e: f09f f649    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x49fc92
  2e8412: e7ff         	b	0x2e8414 <AppDelegate::applicationDidFinishLaunching()+0x284c> @ imm = #-0x2
  2e8414: ab27         	add	r3, sp, #0x9c
  2e8416: 4618         	mov	r0, r3
  2e8418: f0cd f27c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cd4f8
  2e841c: e7ff         	b	0x2e841e <AppDelegate::applicationDidFinishLaunching()+0x2856> @ imm = #-0x2
  2e841e: ab4f         	add	r3, sp, #0x13c
  2e8420: 4618         	mov	r0, r3
  2e8422: f7f3 fd29    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0xc5ae
  2e8426: f09f f641    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49fc82
  2e842a: 4618         	mov	r0, r3
  2e842c: b053         	add	sp, #0x14c
  2e842e: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

// ==== AppDelegate::useRetina
//      file offset 0x2e8434 (= ELF address; Ghidra 0x2f8434), 52 bytes, Thumb-2
  2e8434: b082         	sub	sp, #0x8
  2e8436: 9001         	str	r0, [sp, #0x4]
  2e8438: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2e8460 <AppDelegate::useRetina()+0x2c>
  2e843a: 447a         	add	r2, pc
  2e843c: 9b01         	ldr	r3, [sp, #0x4]
  2e843e: f893 30e8    	ldrb.w	r3, [r3, #0xe8]
  2e8442: 2b00         	cmp	r3, #0x0
  2e8444: d001         	beq	0x2e844a <AppDelegate::useRetina()+0x16> @ imm = #0x2
  2e8446: 2301         	movs	r3, #0x1
  2e8448: e006         	b	0x2e8458 <AppDelegate::useRetina()+0x24> @ imm = #0xc
  2e844a: 9b01         	ldr	r3, [sp, #0x4]
  2e844c: 2101         	movs	r1, #0x1
  2e844e: f883 10e8    	strb.w	r1, [r3, #0xe8]
  2e8452: 4b04         	ldr	r3, [pc, #0x10]         @ 0x2e8464 <AppDelegate::useRetina()+0x30>
  2e8454: 58d3         	ldr	r3, [r2, r3]
  2e8456: 781b         	ldrb	r3, [r3]
  2e8458: 4618         	mov	r0, r3
  2e845a: b002         	add	sp, #0x8
  2e845c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x2e845d); words below are literal-pool data ---
  2e845e: bf00         	nop
  2e8460: a5ce         	adr	r5, #824 <AppDelegate::initializePlatformStartupVariables()+0xca>
  2e8462: 0064         	lsls	r4, r4, #0x1
  2e8464: d79c         	bvc	0x2e83a0 <AppDelegate::applicationDidFinishLaunching()+0x27d8> @ imm = #-0xc8
  2e8466: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AppDelegate::initializePlatformStartupVariables
//      file offset 0x2e8468 (= ELF address; Ghidra 0x2f8468), 1928 bytes, Thumb-2
  2e8468: b510         	push	{r4, lr}
  2e846a: b096         	sub	sp, #0x58
  2e846c: 9001         	str	r0, [sp, #0x4]
  2e846e: 4c65         	ldr	r4, [pc, #0x194]        @ 0x2e8604 <AppDelegate::initializePlatformStartupVariables()+0x19c>
  2e8470: 447c         	add	r4, pc
  2e8472: 4b65         	ldr	r3, [pc, #0x194]        @ 0x2e8608 <AppDelegate::initializePlatformStartupVariables()+0x1a0>
  2e8474: 58e3         	ldr	r3, [r4, r3]
  2e8476: f04f 527e    	mov.w	r2, #0x3f800000
  2e847a: 601a         	str	r2, [r3]
  2e847c: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x2e860c <AppDelegate::initializePlatformStartupVariables()+0x1a4>
  2e847e: 58e3         	ldr	r3, [r4, r3]
  2e8480: f04f 527e    	mov.w	r2, #0x3f800000
  2e8484: 601a         	str	r2, [r3]
  2e8486: 4b62         	ldr	r3, [pc, #0x188]        @ 0x2e8610 <AppDelegate::initializePlatformStartupVariables()+0x1a8>
  2e8488: 58e3         	ldr	r3, [r4, r3]
  2e848a: f64c 42cd    	movw	r2, #0xcccd
  2e848e: f6c3 724c    	movt	r2, #0x3f4c
  2e8492: 601a         	str	r2, [r3]
  2e8494: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x2e8614 <AppDelegate::initializePlatformStartupVariables()+0x1ac>
  2e8496: 58e3         	ldr	r3, [r4, r3]
  2e8498: f64c 42cd    	movw	r2, #0xcccd
  2e849c: f6c3 724c    	movt	r2, #0x3f4c
  2e84a0: 601a         	str	r2, [r3]
  2e84a2: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x2e8618 <AppDelegate::initializePlatformStartupVariables()+0x1b0>
  2e84a4: 58e3         	ldr	r3, [r4, r3]
  2e84a6: f64c 42cd    	movw	r2, #0xcccd
  2e84aa: f6c3 724c    	movt	r2, #0x3f4c
  2e84ae: 601a         	str	r2, [r3]
  2e84b0: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x2e861c <AppDelegate::initializePlatformStartupVariables()+0x1b4>
  2e84b2: 58e3         	ldr	r3, [r4, r3]
  2e84b4: f64c 42cd    	movw	r2, #0xcccd
  2e84b8: f6c3 724c    	movt	r2, #0x3f4c
  2e84bc: 601a         	str	r2, [r3]
  2e84be: 4b58         	ldr	r3, [pc, #0x160]        @ 0x2e8620 <AppDelegate::initializePlatformStartupVariables()+0x1b8>
  2e84c0: 58e3         	ldr	r3, [r4, r3]
  2e84c2: ed93 7a00    	vldr	s14, [r3]
  2e84c6: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x2e85f8 <AppDelegate::initializePlatformStartupVariables()+0x190>
  2e84ca: ee77 7a67    	vsub.f32	s15, s14, s15
  2e84ce: ab14         	add	r3, sp, #0x50
  2e84d0: 4618         	mov	r0, r3
  2e84d2: ee17 1a90    	vmov	r1, s15
  2e84d6: f04f 0200    	mov.w	r2, #0x0
  2e84da: f2c4 2296    	movt	r2, #0x4296
  2e84de: f2aa fc07    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa80e
  2e84e2: ab14         	add	r3, sp, #0x50
  2e84e4: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x2e8624 <AppDelegate::initializePlatformStartupVariables()+0x1bc>
  2e84e6: 58a2         	ldr	r2, [r4, r2]
  2e84e8: 4610         	mov	r0, r2
  2e84ea: 4619         	mov	r1, r3
  2e84ec: f2aa fc2e    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa85c
  2e84f0: ab14         	add	r3, sp, #0x50
  2e84f2: 4618         	mov	r0, r3
  2e84f4: f04f 0100    	mov.w	r1, #0x0
  2e84f8: f2c4 2196    	movt	r1, #0x4296
  2e84fc: f04f 0200    	mov.w	r2, #0x0
  2e8500: f2c4 2296    	movt	r2, #0x4296
  2e8504: f2aa fbf4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa7e8
  2e8508: ab14         	add	r3, sp, #0x50
  2e850a: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x2e8628 <AppDelegate::initializePlatformStartupVariables()+0x1c0>
  2e850c: 58a2         	ldr	r2, [r4, r2]
  2e850e: 4610         	mov	r0, r2
  2e8510: 4619         	mov	r1, r3
  2e8512: f2aa fc1b    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa836
  2e8516: ab14         	add	r3, sp, #0x50
  2e8518: 4618         	mov	r0, r3
  2e851a: f04f 0100    	mov.w	r1, #0x0
  2e851e: f2c4 3139    	movt	r1, #0x4339
  2e8522: f04f 0200    	mov.w	r2, #0x0
  2e8526: f2c4 220c    	movt	r2, #0x420c
  2e852a: f2aa fbe1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa7c2
  2e852e: ab14         	add	r3, sp, #0x50
  2e8530: 4a3e         	ldr	r2, [pc, #0xf8]         @ 0x2e862c <AppDelegate::initializePlatformStartupVariables()+0x1c4>
  2e8532: 58a2         	ldr	r2, [r4, r2]
  2e8534: 4610         	mov	r0, r2
  2e8536: 4619         	mov	r1, r3
  2e8538: f2aa fc08    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa810
  2e853c: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x2e8620 <AppDelegate::initializePlatformStartupVariables()+0x1b8>
  2e853e: 58e3         	ldr	r3, [r4, r3]
  2e8540: ed93 7a00    	vldr	s14, [r3]
  2e8544: eddf 7a2d    	vldr	s15, [pc, #180]         @ 0x2e85fc <AppDelegate::initializePlatformStartupVariables()+0x194>
  2e8548: ee77 7a67    	vsub.f32	s15, s14, s15
  2e854c: ab14         	add	r3, sp, #0x50
  2e854e: 4618         	mov	r0, r3
  2e8550: ee17 1a90    	vmov	r1, s15
  2e8554: f04f 0200    	mov.w	r2, #0x0
  2e8558: f2c4 220c    	movt	r2, #0x420c
  2e855c: f2aa fbc8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa790
  2e8560: ab14         	add	r3, sp, #0x50
  2e8562: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x2e8630 <AppDelegate::initializePlatformStartupVariables()+0x1c8>
  2e8564: 58a2         	ldr	r2, [r4, r2]
  2e8566: 4610         	mov	r0, r2
  2e8568: 4619         	mov	r1, r3
  2e856a: f2aa fbef    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa7de
  2e856e: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x2e8620 <AppDelegate::initializePlatformStartupVariables()+0x1b8>
  2e8570: 58e3         	ldr	r3, [r4, r3]
  2e8572: ed93 7a00    	vldr	s14, [r3]
  2e8576: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x2e8600 <AppDelegate::initializePlatformStartupVariables()+0x198>
  2e857a: ee77 6a67    	vsub.f32	s13, s14, s15
  2e857e: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x2e8620 <AppDelegate::initializePlatformStartupVariables()+0x1b8>
  2e8580: 58e3         	ldr	r3, [r4, r3]
  2e8582: ed93 7a01    	vldr	s14, [r3, #4]
  2e8586: eddf 7a1e    	vldr	s15, [pc, #120]         @ 0x2e8600 <AppDelegate::initializePlatformStartupVariables()+0x198>
  2e858a: ee77 7a67    	vsub.f32	s15, s14, s15
  2e858e: ab14         	add	r3, sp, #0x50
  2e8590: 4618         	mov	r0, r3
  2e8592: ee16 1a90    	vmov	r1, s13
  2e8596: ee17 2a90    	vmov	r2, s15
  2e859a: f2aa fba9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa752
  2e859e: ab14         	add	r3, sp, #0x50
  2e85a0: 4a24         	ldr	r2, [pc, #0x90]         @ 0x2e8634 <AppDelegate::initializePlatformStartupVariables()+0x1cc>
  2e85a2: 58a2         	ldr	r2, [r4, r2]
  2e85a4: 4610         	mov	r0, r2
  2e85a6: 4619         	mov	r1, r3
  2e85a8: f2aa fbd0    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa7a0
  2e85ac: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2e8620 <AppDelegate::initializePlatformStartupVariables()+0x1b8>
  2e85ae: 58e3         	ldr	r3, [r4, r3]
  2e85b0: ed93 7a01    	vldr	s14, [r3, #4]
  2e85b4: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x2e8600 <AppDelegate::initializePlatformStartupVariables()+0x198>
  2e85b8: ee77 7a67    	vsub.f32	s15, s14, s15
  2e85bc: ab14         	add	r3, sp, #0x50
  2e85be: 4618         	mov	r0, r3
  2e85c0: f04f 0100    	mov.w	r1, #0x0
  2e85c4: f2c4 2108    	movt	r1, #0x4208
  2e85c8: ee17 2a90    	vmov	r2, s15
  2e85cc: f2aa fb90    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa720
  2e85d0: ab14         	add	r3, sp, #0x50
  2e85d2: 4a19         	ldr	r2, [pc, #0x64]         @ 0x2e8638 <AppDelegate::initializePlatformStartupVariables()+0x1d0>
  2e85d4: 58a2         	ldr	r2, [r4, r2]
  2e85d6: 4610         	mov	r0, r2
  2e85d8: 4619         	mov	r1, r3
  2e85da: f2aa fbb7    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa76e
  2e85de: f139 ff57    	bl	0x422490 <ApplicationInterface::isTabletDisplay()> @ imm = #0x139eae
  2e85e2: 4603         	mov	r3, r0
  2e85e4: 2b00         	cmp	r3, #0x0
  2e85e6: d02b         	beq	0x2e8640 <AppDelegate::initializePlatformStartupVariables()+0x1d8> @ imm = #0x56
  2e85e8: 4b14         	ldr	r3, [pc, #0x50]         @ 0x2e863c <AppDelegate::initializePlatformStartupVariables()+0x1d4>
  2e85ea: 58e3         	ldr	r3, [r4, r3]
  2e85ec: 781b         	ldrb	r3, [r3]
  2e85ee: 2b00         	cmp	r3, #0x0
  2e85f0: d026         	beq	0x2e8640 <AppDelegate::initializePlatformStartupVariables()+0x1d8> @ imm = #0x4c
  2e85f2: 2301         	movs	r3, #0x1
  2e85f4: e025         	b	0x2e8642 <AppDelegate::initializePlatformStartupVariables()+0x1da> @ imm = #0x4a
  2e85f6: bf00         	nop
  2e85f8: 0000         	movs	r0, r0
  2e85fa: 4296         	cmp	r6, r2
  2e85fc: 0000         	movs	r0, r0
  2e85fe: 4339         	orrs	r1, r7
  2e8600: 0000         	movs	r0, r0
  2e8602: 4208         	tst	r0, r1
  2e8604: a598         	adr	r5, #608 <AppDelegate::initializePlatformStartupVariables()+0x238>
  2e8606: 0064         	lsls	r4, r4, #0x1
  2e8608: d7d4         	bvc	0x2e85b4 <AppDelegate::initializePlatformStartupVariables()+0x14c> @ imm = #-0x58
  2e860a: ffff d7d8    	<unknown>
  2e860e: ffff d7dc    	<unknown>
  2e8612: ffff d7e0    	<unknown>
  2e8616: ffff d7e4    	<unknown>
  2e861a: ffff d7e8    	<unknown>
  2e861e: ffff d724    	<unknown>
  2e8622: ffff d7ec    	<unknown>
  2e8626: ffff d7f0    	<unknown>
  2e862a: ffff d7f4    	<unknown>
  2e862e: ffff d7f8    	<unknown>
  2e8632: ffff d7fc    	<unknown>
  2e8636: ffff d800    	vtbl.8	d29, {d15}, d0
  2e863a: ffff d79c    	vqshl.u64	d29, d12, #0x3f
  2e863e: ffff 2300    	<unknown>
  2e8642: 2b00         	cmp	r3, #0x0
  2e8644: f000 80ae    	beq.w	0x2e87a4 <AppDelegate::initializePlatformStartupVariables()+0x33c> @ imm = #0x15c
  2e8648: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x2e8964 <AppDelegate::initializePlatformStartupVariables()+0x4fc>
  2e864a: 58e3         	ldr	r3, [r4, r3]
  2e864c: f243 3233    	movw	r2, #0x3333
  2e8650: f6c3 7233    	movt	r2, #0x3f33
  2e8654: 601a         	str	r2, [r3]
  2e8656: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x2e8968 <AppDelegate::initializePlatformStartupVariables()+0x500>
  2e8658: 58e3         	ldr	r3, [r4, r3]
  2e865a: f243 3233    	movw	r2, #0x3333
  2e865e: f6c3 7233    	movt	r2, #0x3f33
  2e8662: 601a         	str	r2, [r3]
  2e8664: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x2e896c <AppDelegate::initializePlatformStartupVariables()+0x504>
  2e8666: 58e3         	ldr	r3, [r4, r3]
  2e8668: f649 129a    	movw	r2, #0x999a
  2e866c: f6c3 7219    	movt	r2, #0x3f19
  2e8670: 601a         	str	r2, [r3]
  2e8672: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x2e8970 <AppDelegate::initializePlatformStartupVariables()+0x508>
  2e8674: 58e3         	ldr	r3, [r4, r3]
  2e8676: f649 129a    	movw	r2, #0x999a
  2e867a: f6c3 7219    	movt	r2, #0x3f19
  2e867e: 601a         	str	r2, [r3]
  2e8680: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x2e8974 <AppDelegate::initializePlatformStartupVariables()+0x50c>
  2e8682: 58e3         	ldr	r3, [r4, r3]
  2e8684: f649 129a    	movw	r2, #0x999a
  2e8688: f6c3 7219    	movt	r2, #0x3f19
  2e868c: 601a         	str	r2, [r3]
  2e868e: 4bba         	ldr	r3, [pc, #0x2e8]        @ 0x2e8978 <AppDelegate::initializePlatformStartupVariables()+0x510>
  2e8690: 58e3         	ldr	r3, [r4, r3]
  2e8692: f649 129a    	movw	r2, #0x999a
  2e8696: f6c3 7219    	movt	r2, #0x3f19
  2e869a: 601a         	str	r2, [r3]
  2e869c: 4bb7         	ldr	r3, [pc, #0x2dc]        @ 0x2e897c <AppDelegate::initializePlatformStartupVariables()+0x514>
  2e869e: 58e3         	ldr	r3, [r4, r3]
  2e86a0: ed93 7a00    	vldr	s14, [r3]
  2e86a4: eddf 7aad    	vldr	s15, [pc, #692]         @ 0x2e895c <AppDelegate::initializePlatformStartupVariables()+0x4f4>
  2e86a8: ee77 7a67    	vsub.f32	s15, s14, s15
  2e86ac: ab14         	add	r3, sp, #0x50
  2e86ae: 4618         	mov	r0, r3
  2e86b0: ee17 1a90    	vmov	r1, s15
  2e86b4: f04f 0200    	mov.w	r2, #0x0
  2e86b8: f2c4 2270    	movt	r2, #0x4270
  2e86bc: f2aa fb18    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa630
  2e86c0: ab14         	add	r3, sp, #0x50
  2e86c2: 4aaf         	ldr	r2, [pc, #0x2bc]        @ 0x2e8980 <AppDelegate::initializePlatformStartupVariables()+0x518>
  2e86c4: 58a2         	ldr	r2, [r4, r2]
  2e86c6: 4610         	mov	r0, r2
  2e86c8: 4619         	mov	r1, r3
  2e86ca: f2aa fb3f    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa67e
  2e86ce: ab14         	add	r3, sp, #0x50
  2e86d0: 4618         	mov	r0, r3
  2e86d2: f04f 0100    	mov.w	r1, #0x0
  2e86d6: f2c4 2170    	movt	r1, #0x4270
  2e86da: f04f 0200    	mov.w	r2, #0x0
  2e86de: f2c4 2270    	movt	r2, #0x4270
  2e86e2: f2aa fb05    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa60a
  2e86e6: ab14         	add	r3, sp, #0x50
  2e86e8: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x2e8984 <AppDelegate::initializePlatformStartupVariables()+0x51c>
  2e86ea: 58a2         	ldr	r2, [r4, r2]
  2e86ec: 4610         	mov	r0, r2
  2e86ee: 4619         	mov	r1, r3
  2e86f0: f2aa fb2c    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa658
  2e86f4: ab14         	add	r3, sp, #0x50
  2e86f6: 4618         	mov	r0, r3
  2e86f8: f04f 0100    	mov.w	r1, #0x0
  2e86fc: f2c4 21fa    	movt	r1, #0x42fa
  2e8700: f04f 0200    	mov.w	r2, #0x0
  2e8704: f2c4 12f0    	movt	r2, #0x41f0
  2e8708: f2aa faf2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa5e4
  2e870c: ab14         	add	r3, sp, #0x50
  2e870e: 4a9e         	ldr	r2, [pc, #0x278]        @ 0x2e8988 <AppDelegate::initializePlatformStartupVariables()+0x520>
  2e8710: 58a2         	ldr	r2, [r4, r2]
  2e8712: 4610         	mov	r0, r2
  2e8714: 4619         	mov	r1, r3
  2e8716: f2aa fb19    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa632
  2e871a: 4b98         	ldr	r3, [pc, #0x260]        @ 0x2e897c <AppDelegate::initializePlatformStartupVariables()+0x514>
  2e871c: 58e3         	ldr	r3, [r4, r3]
  2e871e: ed93 7a00    	vldr	s14, [r3]
  2e8722: eddf 7a8f    	vldr	s15, [pc, #572]         @ 0x2e8960 <AppDelegate::initializePlatformStartupVariables()+0x4f8>
  2e8726: ee77 7a67    	vsub.f32	s15, s14, s15
  2e872a: ab14         	add	r3, sp, #0x50
  2e872c: 4618         	mov	r0, r3
  2e872e: ee17 1a90    	vmov	r1, s15
  2e8732: f04f 0200    	mov.w	r2, #0x0
  2e8736: f2c4 12f0    	movt	r2, #0x41f0
  2e873a: f2aa fad9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa5b2
  2e873e: ab14         	add	r3, sp, #0x50
  2e8740: 4a92         	ldr	r2, [pc, #0x248]        @ 0x2e898c <AppDelegate::initializePlatformStartupVariables()+0x524>
  2e8742: 58a2         	ldr	r2, [r4, r2]
  2e8744: 4610         	mov	r0, r2
  2e8746: 4619         	mov	r1, r3
  2e8748: f2aa fb00    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa600
  2e874c: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x2e897c <AppDelegate::initializePlatformStartupVariables()+0x514>
  2e874e: 58e3         	ldr	r3, [r4, r3]
  2e8750: ed93 7a00    	vldr	s14, [r3]
  2e8754: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  2e8758: ee77 7a67    	vsub.f32	s15, s14, s15
  2e875c: ab14         	add	r3, sp, #0x50
  2e875e: 4618         	mov	r0, r3
  2e8760: ee17 1a90    	vmov	r1, s15
  2e8764: f04f 0200    	mov.w	r2, #0x0
  2e8768: f2c4 22fa    	movt	r2, #0x42fa
  2e876c: f2aa fac0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa580
  2e8770: ab14         	add	r3, sp, #0x50
  2e8772: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x2e8990 <AppDelegate::initializePlatformStartupVariables()+0x528>
  2e8774: 58a2         	ldr	r2, [r4, r2]
  2e8776: 4610         	mov	r0, r2
  2e8778: 4619         	mov	r1, r3
  2e877a: f2aa fae7    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa5ce
  2e877e: ab14         	add	r3, sp, #0x50
  2e8780: 4618         	mov	r0, r3
  2e8782: f04f 0100    	mov.w	r1, #0x0
  2e8786: f2c4 11f0    	movt	r1, #0x41f0
  2e878a: f04f 0200    	mov.w	r2, #0x0
  2e878e: f2c4 22fa    	movt	r2, #0x42fa
  2e8792: f2aa faad    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2aa55a
  2e8796: ab14         	add	r3, sp, #0x50
  2e8798: 4a7e         	ldr	r2, [pc, #0x1f8]        @ 0x2e8994 <AppDelegate::initializePlatformStartupVariables()+0x52c>
  2e879a: 58a2         	ldr	r2, [r4, r2]
  2e879c: 4610         	mov	r0, r2
  2e879e: 4619         	mov	r1, r3
  2e87a0: f2aa fad4    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x2aa5a8
  2e87a4: f2f9 ff42    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9e84
  2e87a8: 4602         	mov	r2, r0
  2e87aa: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x2e8964 <AppDelegate::initializePlatformStartupVariables()+0x4fc>
  2e87ac: 58e3         	ldr	r3, [r4, r3]
  2e87ae: 681b         	ldr	r3, [r3]
  2e87b0: 4610         	mov	r0, r2
  2e87b2: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x2e8998 <AppDelegate::initializePlatformStartupVariables()+0x530>
  2e87b4: 447a         	add	r2, pc
  2e87b6: 4611         	mov	r1, r2
  2e87b8: 461a         	mov	r2, r3
  2e87ba: f2f9 fd8d    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9b1a
  2e87be: 4603         	mov	r3, r0
  2e87c0: 9302         	str	r3, [sp, #0x8]
  2e87c2: f2f9 ff33    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9e66
  2e87c6: 4602         	mov	r2, r0
  2e87c8: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x2e8968 <AppDelegate::initializePlatformStartupVariables()+0x500>
  2e87ca: 58e3         	ldr	r3, [r4, r3]
  2e87cc: 681b         	ldr	r3, [r3]
  2e87ce: 4610         	mov	r0, r2
  2e87d0: 4a72         	ldr	r2, [pc, #0x1c8]        @ 0x2e899c <AppDelegate::initializePlatformStartupVariables()+0x534>
  2e87d2: 447a         	add	r2, pc
  2e87d4: 4611         	mov	r1, r2
  2e87d6: 461a         	mov	r2, r3
  2e87d8: f2f9 fd7e    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9afc
  2e87dc: 4603         	mov	r3, r0
  2e87de: 9303         	str	r3, [sp, #0xc]
  2e87e0: f2f9 ff24    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9e48
  2e87e4: 4602         	mov	r2, r0
  2e87e6: 4b62         	ldr	r3, [pc, #0x188]        @ 0x2e8970 <AppDelegate::initializePlatformStartupVariables()+0x508>
  2e87e8: 58e3         	ldr	r3, [r4, r3]
  2e87ea: 681b         	ldr	r3, [r3]
  2e87ec: 4610         	mov	r0, r2
  2e87ee: 4a6c         	ldr	r2, [pc, #0x1b0]        @ 0x2e89a0 <AppDelegate::initializePlatformStartupVariables()+0x538>
  2e87f0: 447a         	add	r2, pc
  2e87f2: 4611         	mov	r1, r2
  2e87f4: 461a         	mov	r2, r3
  2e87f6: f2f9 fd6f    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9ade
  2e87fa: 4603         	mov	r3, r0
  2e87fc: 9304         	str	r3, [sp, #0x10]
  2e87fe: f2f9 ff15    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9e2a
  2e8802: 4602         	mov	r2, r0
  2e8804: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x2e8974 <AppDelegate::initializePlatformStartupVariables()+0x50c>
  2e8806: 58e3         	ldr	r3, [r4, r3]
  2e8808: 681b         	ldr	r3, [r3]
  2e880a: 4610         	mov	r0, r2
  2e880c: 4a65         	ldr	r2, [pc, #0x194]        @ 0x2e89a4 <AppDelegate::initializePlatformStartupVariables()+0x53c>
  2e880e: 447a         	add	r2, pc
  2e8810: 4611         	mov	r1, r2
  2e8812: 461a         	mov	r2, r3
  2e8814: f2f9 fd60    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9ac0
  2e8818: 4603         	mov	r3, r0
  2e881a: 9305         	str	r3, [sp, #0x14]
  2e881c: f2f9 ff06    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9e0c
  2e8820: 4602         	mov	r2, r0
  2e8822: 4b52         	ldr	r3, [pc, #0x148]        @ 0x2e896c <AppDelegate::initializePlatformStartupVariables()+0x504>
  2e8824: 58e3         	ldr	r3, [r4, r3]
  2e8826: 681b         	ldr	r3, [r3]
  2e8828: 4610         	mov	r0, r2
  2e882a: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x2e89a8 <AppDelegate::initializePlatformStartupVariables()+0x540>
  2e882c: 447a         	add	r2, pc
  2e882e: 4611         	mov	r1, r2
  2e8830: 461a         	mov	r2, r3
  2e8832: f2f9 fd51    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9aa2
  2e8836: 4603         	mov	r3, r0
  2e8838: 9306         	str	r3, [sp, #0x18]
  2e883a: f2f9 fef7    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9dee
  2e883e: 4602         	mov	r2, r0
  2e8840: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x2e8978 <AppDelegate::initializePlatformStartupVariables()+0x510>
  2e8842: 58e3         	ldr	r3, [r4, r3]
  2e8844: 681b         	ldr	r3, [r3]
  2e8846: 4610         	mov	r0, r2
  2e8848: 4a58         	ldr	r2, [pc, #0x160]        @ 0x2e89ac <AppDelegate::initializePlatformStartupVariables()+0x544>
  2e884a: 447a         	add	r2, pc
  2e884c: 4611         	mov	r1, r2
  2e884e: 461a         	mov	r2, r3
  2e8850: f2f9 fd42    	bl	0x5e22d8 <cocos2d::CCUserDefault::getFloatForKey(char const*, float)> @ imm = #0x2f9a84
  2e8854: 4603         	mov	r3, r0
  2e8856: 9307         	str	r3, [sp, #0x1c]
  2e8858: f2f9 fee8    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9dd0
  2e885c: 4603         	mov	r3, r0
  2e885e: 4a49         	ldr	r2, [pc, #0x124]        @ 0x2e8984 <AppDelegate::initializePlatformStartupVariables()+0x51c>
  2e8860: 58a2         	ldr	r2, [r4, r2]
  2e8862: edd2 7a00    	vldr	s15, [r2]
  2e8866: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e886a: ee17 2a90    	vmov	r2, s15
  2e886e: 4618         	mov	r0, r3
  2e8870: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x2e89b0 <AppDelegate::initializePlatformStartupVariables()+0x548>
  2e8872: 447b         	add	r3, pc
  2e8874: 4619         	mov	r1, r3
  2e8876: f2f9 fcd7    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f99ae
  2e887a: 4603         	mov	r3, r0
  2e887c: 9308         	str	r3, [sp, #0x20]
  2e887e: f2f9 fed5    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9daa
  2e8882: 4603         	mov	r3, r0
  2e8884: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x2e8984 <AppDelegate::initializePlatformStartupVariables()+0x51c>
  2e8886: 58a2         	ldr	r2, [r4, r2]
  2e8888: edd2 7a01    	vldr	s15, [r2, #4]
  2e888c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8890: ee17 2a90    	vmov	r2, s15
  2e8894: 4618         	mov	r0, r3
  2e8896: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x2e89b4 <AppDelegate::initializePlatformStartupVariables()+0x54c>
  2e8898: 447b         	add	r3, pc
  2e889a: 4619         	mov	r1, r3
  2e889c: f2f9 fcc4    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f9988
  2e88a0: 4603         	mov	r3, r0
  2e88a2: 9309         	str	r3, [sp, #0x24]
  2e88a4: f2f9 fec2    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9d84
  2e88a8: 4603         	mov	r3, r0
  2e88aa: 4a35         	ldr	r2, [pc, #0xd4]         @ 0x2e8980 <AppDelegate::initializePlatformStartupVariables()+0x518>
  2e88ac: 58a2         	ldr	r2, [r4, r2]
  2e88ae: edd2 7a00    	vldr	s15, [r2]
  2e88b2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e88b6: ee17 2a90    	vmov	r2, s15
  2e88ba: 4618         	mov	r0, r3
  2e88bc: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x2e89b8 <AppDelegate::initializePlatformStartupVariables()+0x550>
  2e88be: 447b         	add	r3, pc
  2e88c0: 4619         	mov	r1, r3
  2e88c2: f2f9 fcb1    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f9962
  2e88c6: 4603         	mov	r3, r0
  2e88c8: 930a         	str	r3, [sp, #0x28]
  2e88ca: f2f9 feaf    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9d5e
  2e88ce: 4603         	mov	r3, r0
  2e88d0: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x2e8980 <AppDelegate::initializePlatformStartupVariables()+0x518>
  2e88d2: 58a2         	ldr	r2, [r4, r2]
  2e88d4: edd2 7a01    	vldr	s15, [r2, #4]
  2e88d8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e88dc: ee17 2a90    	vmov	r2, s15
  2e88e0: 4618         	mov	r0, r3
  2e88e2: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x2e89bc <AppDelegate::initializePlatformStartupVariables()+0x554>
  2e88e4: 447b         	add	r3, pc
  2e88e6: 4619         	mov	r1, r3
  2e88e8: f2f9 fc9e    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f993c
  2e88ec: 4603         	mov	r3, r0
  2e88ee: 930b         	str	r3, [sp, #0x2c]
  2e88f0: f2f9 fe9c    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9d38
  2e88f4: 4603         	mov	r3, r0
  2e88f6: 4a24         	ldr	r2, [pc, #0x90]         @ 0x2e8988 <AppDelegate::initializePlatformStartupVariables()+0x520>
  2e88f8: 58a2         	ldr	r2, [r4, r2]
  2e88fa: edd2 7a00    	vldr	s15, [r2]
  2e88fe: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8902: ee17 2a90    	vmov	r2, s15
  2e8906: 4618         	mov	r0, r3
  2e8908: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x2e89c0 <AppDelegate::initializePlatformStartupVariables()+0x558>
  2e890a: 447b         	add	r3, pc
  2e890c: 4619         	mov	r1, r3
  2e890e: f2f9 fc8b    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f9916
  2e8912: 4603         	mov	r3, r0
  2e8914: 930c         	str	r3, [sp, #0x30]
  2e8916: f2f9 fe89    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9d12
  2e891a: 4603         	mov	r3, r0
  2e891c: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x2e8988 <AppDelegate::initializePlatformStartupVariables()+0x520>
  2e891e: 58a2         	ldr	r2, [r4, r2]
  2e8920: edd2 7a01    	vldr	s15, [r2, #4]
  2e8924: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8928: ee17 2a90    	vmov	r2, s15
  2e892c: 4618         	mov	r0, r3
  2e892e: 4b25         	ldr	r3, [pc, #0x94]         @ 0x2e89c4 <AppDelegate::initializePlatformStartupVariables()+0x55c>
  2e8930: 447b         	add	r3, pc
  2e8932: 4619         	mov	r1, r3
  2e8934: f2f9 fc78    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f98f0
  2e8938: 4603         	mov	r3, r0
  2e893a: 930d         	str	r3, [sp, #0x34]
  2e893c: f2f9 fe76    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9cec
  2e8940: 4603         	mov	r3, r0
  2e8942: 4a12         	ldr	r2, [pc, #0x48]         @ 0x2e898c <AppDelegate::initializePlatformStartupVariables()+0x524>
  2e8944: 58a2         	ldr	r2, [r4, r2]
  2e8946: edd2 7a00    	vldr	s15, [r2]
  2e894a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e894e: ee17 2a90    	vmov	r2, s15
  2e8952: 4618         	mov	r0, r3
  2e8954: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2e89c8 <AppDelegate::initializePlatformStartupVariables()+0x560>
  2e8956: 447b         	add	r3, pc
  2e8958: 4619         	mov	r1, r3
  2e895a: e037         	b	0x2e89cc <AppDelegate::initializePlatformStartupVariables()+0x564> @ imm = #0x6e
  2e895c: 0000         	movs	r0, r0
  2e895e: 4270         	rsbs	r0, r6, #0
  2e8960: 0000         	movs	r0, r0
  2e8962: 42fa         	cmn	r2, r7
  2e8964: d7d4         	bvc	0x2e8910 <AppDelegate::initializePlatformStartupVariables()+0x4a8> @ imm = #-0x58
  2e8966: ffff d7d8    	<unknown>
  2e896a: ffff d7dc    	<unknown>
  2e896e: ffff d7e0    	<unknown>
  2e8972: ffff d7e4    	<unknown>
  2e8976: ffff d7e8    	<unknown>
  2e897a: ffff d724    	<unknown>
  2e897e: ffff d7ec    	<unknown>
  2e8982: ffff d7f0    	<unknown>
  2e8986: ffff d7f4    	<unknown>
  2e898a: ffff d7f8    	<unknown>
  2e898e: ffff d7fc    	<unknown>
  2e8992: ffff d800    	vtbl.8	d29, {d15}, d0
  2e8996: ffff a40c    	<unknown>
  2e899a: 004d         	lsls	r5, r1, #0x1
  2e899c: a3fa         	adr	r3, #1000 <AppDelegate::initializePlatformStartupVariables()+0x632>
  2e899e: 004d         	lsls	r5, r1, #0x1
  2e89a0: a3e8         	adr	r3, #928 <AppDelegate::initializePlatformStartupVariables()+0x624>
  2e89a2: 004d         	lsls	r5, r1, #0x1
  2e89a4: a3d6         	adr	r3, #856 <AppDelegate::initializePlatformStartupVariables()+0x616>
  2e89a6: 004d         	lsls	r5, r1, #0x1
  2e89a8: a3c0         	adr	r3, #768 <AppDelegate::initializePlatformStartupVariables()+0x604>
  2e89aa: 004d         	lsls	r5, r1, #0x1
  2e89ac: a3ae         	adr	r3, #696 <AppDelegate::initializePlatformStartupVariables()+0x5f6>
  2e89ae: 004d         	lsls	r5, r1, #0x1
  2e89b0: a392         	adr	r3, #584 <AppDelegate::initializePlatformStartupVariables()+0x5de>
  2e89b2: 004d         	lsls	r5, r1, #0x1
  2e89b4: a378         	adr	r3, #480 <AppDelegate::initializePlatformStartupVariables()+0x5c8>
  2e89b6: 004d         	lsls	r5, r1, #0x1
  2e89b8: a35e         	adr	r3, #376 <AppDelegate::initializePlatformStartupVariables()+0x5b2>
  2e89ba: 004d         	lsls	r5, r1, #0x1
  2e89bc: a344         	adr	r3, #272 <AppDelegate::initializePlatformStartupVariables()+0x59c>
  2e89be: 004d         	lsls	r5, r1, #0x1
  2e89c0: a32a         	adr	r3, #168 <AppDelegate::initializePlatformStartupVariables()+0x586>
  2e89c2: 004d         	lsls	r5, r1, #0x1
  2e89c4: a310         	adr	r3, #64 <AppDelegate::initializePlatformStartupVariables()+0x570>
  2e89c6: 004d         	lsls	r5, r1, #0x1
  2e89c8: a2f6         	adr	r2, #984 <AppDelegate::initializePlatformStartupVariables()+0x65a>
  2e89ca: 004d         	lsls	r5, r1, #0x1
  2e89cc: f2f9 fc2c    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f9858
  2e89d0: 4603         	mov	r3, r0
  2e89d2: 930e         	str	r3, [sp, #0x38]
  2e89d4: f2f9 fe2a    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9c54
  2e89d8: 4603         	mov	r3, r0
  2e89da: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x2e8ba0 <AppDelegate::initializePlatformStartupVariables()+0x738>
  2e89dc: 58a2         	ldr	r2, [r4, r2]
  2e89de: edd2 7a01    	vldr	s15, [r2, #4]
  2e89e2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e89e6: ee17 2a90    	vmov	r2, s15
  2e89ea: 4618         	mov	r0, r3
  2e89ec: 4b6d         	ldr	r3, [pc, #0x1b4]        @ 0x2e8ba4 <AppDelegate::initializePlatformStartupVariables()+0x73c>
  2e89ee: 447b         	add	r3, pc
  2e89f0: 4619         	mov	r1, r3
  2e89f2: f2f9 fc19    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f9832
  2e89f6: 4603         	mov	r3, r0
  2e89f8: 930f         	str	r3, [sp, #0x3c]
  2e89fa: f2f9 fe17    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9c2e
  2e89fe: 4603         	mov	r3, r0
  2e8a00: 4a69         	ldr	r2, [pc, #0x1a4]        @ 0x2e8ba8 <AppDelegate::initializePlatformStartupVariables()+0x740>
  2e8a02: 58a2         	ldr	r2, [r4, r2]
  2e8a04: edd2 7a00    	vldr	s15, [r2]
  2e8a08: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8a0c: ee17 2a90    	vmov	r2, s15
  2e8a10: 4618         	mov	r0, r3
  2e8a12: 4b66         	ldr	r3, [pc, #0x198]        @ 0x2e8bac <AppDelegate::initializePlatformStartupVariables()+0x744>
  2e8a14: 447b         	add	r3, pc
  2e8a16: 4619         	mov	r1, r3
  2e8a18: f2f9 fc06    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f980c
  2e8a1c: 4603         	mov	r3, r0
  2e8a1e: 9310         	str	r3, [sp, #0x40]
  2e8a20: f2f9 fe04    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9c08
  2e8a24: 4603         	mov	r3, r0
  2e8a26: 4a60         	ldr	r2, [pc, #0x180]        @ 0x2e8ba8 <AppDelegate::initializePlatformStartupVariables()+0x740>
  2e8a28: 58a2         	ldr	r2, [r4, r2]
  2e8a2a: edd2 7a01    	vldr	s15, [r2, #4]
  2e8a2e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8a32: ee17 2a90    	vmov	r2, s15
  2e8a36: 4618         	mov	r0, r3
  2e8a38: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x2e8bb0 <AppDelegate::initializePlatformStartupVariables()+0x748>
  2e8a3a: 447b         	add	r3, pc
  2e8a3c: 4619         	mov	r1, r3
  2e8a3e: f2f9 fbf3    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f97e6
  2e8a42: 4603         	mov	r3, r0
  2e8a44: 9311         	str	r3, [sp, #0x44]
  2e8a46: f2f9 fdf1    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9be2
  2e8a4a: 4603         	mov	r3, r0
  2e8a4c: 4a59         	ldr	r2, [pc, #0x164]        @ 0x2e8bb4 <AppDelegate::initializePlatformStartupVariables()+0x74c>
  2e8a4e: 58a2         	ldr	r2, [r4, r2]
  2e8a50: edd2 7a00    	vldr	s15, [r2]
  2e8a54: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8a58: ee17 2a90    	vmov	r2, s15
  2e8a5c: 4618         	mov	r0, r3
  2e8a5e: 4b56         	ldr	r3, [pc, #0x158]        @ 0x2e8bb8 <AppDelegate::initializePlatformStartupVariables()+0x750>
  2e8a60: 447b         	add	r3, pc
  2e8a62: 4619         	mov	r1, r3
  2e8a64: f2f9 fbe0    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f97c0
  2e8a68: 4603         	mov	r3, r0
  2e8a6a: 9312         	str	r3, [sp, #0x48]
  2e8a6c: f2f9 fdde    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2f9bbc
  2e8a70: 4603         	mov	r3, r0
  2e8a72: 4a50         	ldr	r2, [pc, #0x140]        @ 0x2e8bb4 <AppDelegate::initializePlatformStartupVariables()+0x74c>
  2e8a74: 58a2         	ldr	r2, [r4, r2]
  2e8a76: edd2 7a01    	vldr	s15, [r2, #4]
  2e8a7a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2e8a7e: ee17 2a90    	vmov	r2, s15
  2e8a82: 4618         	mov	r0, r3
  2e8a84: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x2e8bbc <AppDelegate::initializePlatformStartupVariables()+0x754>
  2e8a86: 447b         	add	r3, pc
  2e8a88: 4619         	mov	r1, r3
  2e8a8a: f2f9 fbcd    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2f979a
  2e8a8e: 4603         	mov	r3, r0
  2e8a90: 9313         	str	r3, [sp, #0x4c]
  2e8a92: 9b08         	ldr	r3, [sp, #0x20]
  2e8a94: ee07 3a10    	vmov	s14, r3
  2e8a98: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8a9c: 4b48         	ldr	r3, [pc, #0x120]        @ 0x2e8bc0 <AppDelegate::initializePlatformStartupVariables()+0x758>
  2e8a9e: 58e3         	ldr	r3, [r4, r3]
  2e8aa0: edc3 7a00    	vstr	s15, [r3]
  2e8aa4: 9b09         	ldr	r3, [sp, #0x24]
  2e8aa6: ee07 3a10    	vmov	s14, r3
  2e8aaa: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8aae: 4b44         	ldr	r3, [pc, #0x110]        @ 0x2e8bc0 <AppDelegate::initializePlatformStartupVariables()+0x758>
  2e8ab0: 58e3         	ldr	r3, [r4, r3]
  2e8ab2: edc3 7a01    	vstr	s15, [r3, #4]
  2e8ab6: 9b0a         	ldr	r3, [sp, #0x28]
  2e8ab8: ee07 3a10    	vmov	s14, r3
  2e8abc: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8ac0: 4b40         	ldr	r3, [pc, #0x100]        @ 0x2e8bc4 <AppDelegate::initializePlatformStartupVariables()+0x75c>
  2e8ac2: 58e3         	ldr	r3, [r4, r3]
  2e8ac4: edc3 7a00    	vstr	s15, [r3]
  2e8ac8: 9b0b         	ldr	r3, [sp, #0x2c]
  2e8aca: ee07 3a10    	vmov	s14, r3
  2e8ace: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8ad2: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x2e8bc4 <AppDelegate::initializePlatformStartupVariables()+0x75c>
  2e8ad4: 58e3         	ldr	r3, [r4, r3]
  2e8ad6: edc3 7a01    	vstr	s15, [r3, #4]
  2e8ada: 9b0c         	ldr	r3, [sp, #0x30]
  2e8adc: ee07 3a10    	vmov	s14, r3
  2e8ae0: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8ae4: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x2e8bc8 <AppDelegate::initializePlatformStartupVariables()+0x760>
  2e8ae6: 58e3         	ldr	r3, [r4, r3]
  2e8ae8: edc3 7a00    	vstr	s15, [r3]
  2e8aec: 9b0d         	ldr	r3, [sp, #0x34]
  2e8aee: ee07 3a10    	vmov	s14, r3
  2e8af2: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8af6: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x2e8bc8 <AppDelegate::initializePlatformStartupVariables()+0x760>
  2e8af8: 58e3         	ldr	r3, [r4, r3]
  2e8afa: edc3 7a01    	vstr	s15, [r3, #4]
  2e8afe: 9b0e         	ldr	r3, [sp, #0x38]
  2e8b00: ee07 3a10    	vmov	s14, r3
  2e8b04: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b08: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x2e8bcc <AppDelegate::initializePlatformStartupVariables()+0x764>
  2e8b0a: 58e3         	ldr	r3, [r4, r3]
  2e8b0c: edc3 7a00    	vstr	s15, [r3]
  2e8b10: 9b0f         	ldr	r3, [sp, #0x3c]
  2e8b12: ee07 3a10    	vmov	s14, r3
  2e8b16: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b1a: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x2e8bcc <AppDelegate::initializePlatformStartupVariables()+0x764>
  2e8b1c: 58e3         	ldr	r3, [r4, r3]
  2e8b1e: edc3 7a01    	vstr	s15, [r3, #4]
  2e8b22: 9b10         	ldr	r3, [sp, #0x40]
  2e8b24: ee07 3a10    	vmov	s14, r3
  2e8b28: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b2c: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x2e8bd0 <AppDelegate::initializePlatformStartupVariables()+0x768>
  2e8b2e: 58e3         	ldr	r3, [r4, r3]
  2e8b30: edc3 7a00    	vstr	s15, [r3]
  2e8b34: 9b11         	ldr	r3, [sp, #0x44]
  2e8b36: ee07 3a10    	vmov	s14, r3
  2e8b3a: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b3e: 4b24         	ldr	r3, [pc, #0x90]         @ 0x2e8bd0 <AppDelegate::initializePlatformStartupVariables()+0x768>
  2e8b40: 58e3         	ldr	r3, [r4, r3]
  2e8b42: edc3 7a01    	vstr	s15, [r3, #4]
  2e8b46: 9b12         	ldr	r3, [sp, #0x48]
  2e8b48: ee07 3a10    	vmov	s14, r3
  2e8b4c: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b50: 4b20         	ldr	r3, [pc, #0x80]         @ 0x2e8bd4 <AppDelegate::initializePlatformStartupVariables()+0x76c>
  2e8b52: 58e3         	ldr	r3, [r4, r3]
  2e8b54: edc3 7a00    	vstr	s15, [r3]
  2e8b58: 9b13         	ldr	r3, [sp, #0x4c]
  2e8b5a: ee07 3a10    	vmov	s14, r3
  2e8b5e: eef8 7ac7    	vcvt.f32.s32	s15, s14
  2e8b62: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x2e8bd4 <AppDelegate::initializePlatformStartupVariables()+0x76c>
  2e8b64: 58e3         	ldr	r3, [r4, r3]
  2e8b66: edc3 7a01    	vstr	s15, [r3, #4]
  2e8b6a: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x2e8bd8 <AppDelegate::initializePlatformStartupVariables()+0x770>
  2e8b6c: 58e3         	ldr	r3, [r4, r3]
  2e8b6e: 9a02         	ldr	r2, [sp, #0x8]
  2e8b70: 601a         	str	r2, [r3]
  2e8b72: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x2e8bdc <AppDelegate::initializePlatformStartupVariables()+0x774>
  2e8b74: 58e3         	ldr	r3, [r4, r3]
  2e8b76: 9a03         	ldr	r2, [sp, #0xc]
  2e8b78: 601a         	str	r2, [r3]
  2e8b7a: 4b19         	ldr	r3, [pc, #0x64]         @ 0x2e8be0 <AppDelegate::initializePlatformStartupVariables()+0x778>
  2e8b7c: 58e3         	ldr	r3, [r4, r3]
  2e8b7e: 9a04         	ldr	r2, [sp, #0x10]
  2e8b80: 601a         	str	r2, [r3]
  2e8b82: 4b18         	ldr	r3, [pc, #0x60]         @ 0x2e8be4 <AppDelegate::initializePlatformStartupVariables()+0x77c>
  2e8b84: 58e3         	ldr	r3, [r4, r3]
  2e8b86: 9a05         	ldr	r2, [sp, #0x14]
  2e8b88: 601a         	str	r2, [r3]
  2e8b8a: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x2e8be8 <AppDelegate::initializePlatformStartupVariables()+0x780>
  2e8b8c: 58e3         	ldr	r3, [r4, r3]
  2e8b8e: 9a06         	ldr	r2, [sp, #0x18]
  2e8b90: 601a         	str	r2, [r3]
  2e8b92: 4b16         	ldr	r3, [pc, #0x58]         @ 0x2e8bec <AppDelegate::initializePlatformStartupVariables()+0x784>
  2e8b94: 58e3         	ldr	r3, [r4, r3]
  2e8b96: 9a07         	ldr	r2, [sp, #0x1c]
  2e8b98: 601a         	str	r2, [r3]
  2e8b9a: b016         	add	sp, #0x58
  2e8b9c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e8b9d); words below are literal-pool data ---
  2e8b9e: bf00         	nop
  2e8ba0: d7f8         	bvc	0x2e8b94 <AppDelegate::initializePlatformStartupVariables()+0x72c> @ imm = #-0x10
  2e8ba2: ffff a26a    	<unknown>
  2e8ba6: 004d         	lsls	r5, r1, #0x1
  2e8ba8: d7fc         	bvc	0x2e8ba4 <AppDelegate::initializePlatformStartupVariables()+0x73c> @ imm = #-0x8
  2e8baa: ffff a250    	vrshr.u32	q13, q0, #0x1
  2e8bae: 004d         	lsls	r5, r1, #0x1
  2e8bb0: a236         	adr	r2, #216 <AppDelegate::initializePlatformStartupVariables()+0x782>
  2e8bb2: 004d         	lsls	r5, r1, #0x1
  2e8bb4: d800         	bhi	0x2e8bb8 <AppDelegate::initializePlatformStartupVariables()+0x750> @ imm = #0x0
  2e8bb6: ffff a21c    	vrshr.u32	d26, d12, #0x1
  2e8bba: 004d         	lsls	r5, r1, #0x1
  2e8bbc: a202         	adr	r2, #8 <AppDelegate::initializePlatformStartupVariables()+0x75a>
  2e8bbe: 004d         	lsls	r5, r1, #0x1
  2e8bc0: d804         	bhi	0x2e8bcc <AppDelegate::initializePlatformStartupVariables()+0x764> @ imm = #0x8
  2e8bc2: ffff d808    	vtbl.8	d29, {d15}, d8
  2e8bc6: ffff d80c    	vtbl.8	d29, {d15}, d12
  2e8bca: ffff d810    	vqshrun.s64	d29, q0, #0x1
  2e8bce: ffff d814    	vqshrun.s64	d29, q2, #0x1
  2e8bd2: ffff d818    	vqshrun.s64	d29, q4, #0x1
  2e8bd6: ffff d81c    	vqshrun.s64	d29, q6, #0x1
  2e8bda: ffff d820    	vtbl.8	d29, {d15}, d16
  2e8bde: ffff d824    	vtbl.8	d29, {d15}, d20
  2e8be2: ffff d828    	vtbl.8	d29, {d15}, d24
  2e8be6: ffff d82c    	vtbl.8	d29, {d15}, d28
  2e8bea: ffff d830    	vqshrun.s64	d29, q8, #0x1
  2e8bee: ffff b500    	<unknown>

// ==== AppDelegate::messageBoxHandler
//      file offset 0x2e8bf0 (= ELF address; Ghidra 0x2f8bf0), 120 bytes, Thumb-2
  2e8bf0: b500         	push	{lr}
  2e8bf2: b087         	sub	sp, #0x1c
  2e8bf4: 9003         	str	r0, [sp, #0xc]
  2e8bf6: 9102         	str	r1, [sp, #0x8]
  2e8bf8: 9201         	str	r2, [sp, #0x4]
  2e8bfa: 9b03         	ldr	r3, [sp, #0xc]
  2e8bfc: 2b00         	cmp	r3, #0x0
  2e8bfe: d12b         	bne	0x2e8c58 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x68> @ imm = #0x56
  2e8c00: f08e ff9e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8ef3c
  2e8c04: 4603         	mov	r3, r0
  2e8c06: 4618         	mov	r0, r3
  2e8c08: f091 f84c    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #0x91098
  2e8c0c: 9b01         	ldr	r3, [sp, #0x4]
  2e8c0e: 2b00         	cmp	r3, #0x0
  2e8c10: d002         	beq	0x2e8c18 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x28> @ imm = #0x4
  2e8c12: 9b01         	ldr	r3, [sp, #0x4]
  2e8c14: 3b04         	subs	r3, #0x4
  2e8c16: e000         	b	0x2e8c1a <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x2a> @ imm = #0x0
  2e8c18: 2300         	movs	r3, #0x0
  2e8c1a: 9305         	str	r3, [sp, #0x14]
  2e8c1c: 9b05         	ldr	r3, [sp, #0x14]
  2e8c1e: f893 30e9    	ldrb.w	r3, [r3, #0xe9]
  2e8c22: 2b00         	cmp	r3, #0x0
  2e8c24: d00e         	beq	0x2e8c44 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x54> @ imm = #0x1c
  2e8c26: 9b05         	ldr	r3, [sp, #0x14]
  2e8c28: 2200         	movs	r2, #0x0
  2e8c2a: f883 20e9    	strb.w	r2, [r3, #0xe9]
  2e8c2e: f2f7 fd3f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f7a7e
  2e8c32: 4603         	mov	r3, r0
  2e8c34: 4618         	mov	r0, r3
  2e8c36: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2e8c60 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x70>
  2e8c38: 447b         	add	r3, pc
  2e8c3a: 4619         	mov	r1, r3
  2e8c3c: 2200         	movs	r2, #0x0
  2e8c3e: f2f7 ff75    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2f7eea
  2e8c42: e009         	b	0x2e8c58 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x68> @ imm = #0x12
  2e8c44: f2f7 fd34    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2f7a68
  2e8c48: 4603         	mov	r3, r0
  2e8c4a: 4618         	mov	r0, r3
  2e8c4c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x2e8c64 <AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x74>
  2e8c4e: 447b         	add	r3, pc
  2e8c50: 4619         	mov	r1, r3
  2e8c52: 2200         	movs	r2, #0x0
  2e8c54: f2f7 ff6a    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2f7ed4
  2e8c58: b007         	add	sp, #0x1c
  2e8c5a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e8c5d); words below are literal-pool data ---
  2e8c5e: bf00         	nop
  2e8c60: a05c         	adr	r0, #368 <AppDelegate::showFailedMessage()+0x58>
  2e8c62: 004d         	lsls	r5, r1, #0x1
  2e8c64: a052         	adr	r0, #328 <AppDelegate::showFailedMessage()+0x52>
  2e8c66: 004d         	lsls	r5, r1, #0x1

// ==== AppDelegate::showFailedMessage
//      file offset 0x2e8c68 (= ELF address; Ghidra 0x2f8c68), 264 bytes, Thumb-2
  2e8c68: b530         	push	{r4, r5, lr}
  2e8c6a: b08b         	sub	sp, #0x2c
  2e8c6c: 9003         	str	r0, [sp, #0xc]
  2e8c6e: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x2e8d5c <AppDelegate::showFailedMessage()+0xf4>
  2e8c70: 447c         	add	r4, pc
  2e8c72: ab05         	add	r3, sp, #0x14
  2e8c74: 4618         	mov	r0, r3
  2e8c76: f0a1 f3bd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a177a
  2e8c7a: aa08         	add	r2, sp, #0x20
  2e8c7c: ab05         	add	r3, sp, #0x14
  2e8c7e: 4610         	mov	r0, r2
  2e8c80: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x2e8d60 <AppDelegate::showFailedMessage()+0xf8>
  2e8c82: 447a         	add	r2, pc
  2e8c84: 4611         	mov	r1, r2
  2e8c86: 461a         	mov	r2, r3
  2e8c88: f0cd f6ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cddd4
  2e8c8c: ab06         	add	r3, sp, #0x18
  2e8c8e: 4618         	mov	r0, r3
  2e8c90: f0a1 f3b0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a1760
  2e8c94: aa09         	add	r2, sp, #0x24
  2e8c96: ab06         	add	r3, sp, #0x18
  2e8c98: 4610         	mov	r0, r2
  2e8c9a: 4a32         	ldr	r2, [pc, #0xc8]         @ 0x2e8d64 <AppDelegate::showFailedMessage()+0xfc>
  2e8c9c: 447a         	add	r2, pc
  2e8c9e: 4611         	mov	r1, r2
  2e8ca0: 461a         	mov	r2, r3
  2e8ca2: f0cd f6dd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cddba
  2e8ca6: ab04         	add	r3, sp, #0x10
  2e8ca8: 4618         	mov	r0, r3
  2e8caa: f0a1 f3a3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a1746
  2e8cae: aa07         	add	r2, sp, #0x1c
  2e8cb0: ab04         	add	r3, sp, #0x10
  2e8cb2: 4610         	mov	r0, r2
  2e8cb4: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x2e8d68 <AppDelegate::showFailedMessage()+0x100>
  2e8cb6: 447a         	add	r2, pc
  2e8cb8: 4611         	mov	r1, r2
  2e8cba: 461a         	mov	r2, r3
  2e8cbc: f0cd f6d0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cdda0
  2e8cc0: ab07         	add	r3, sp, #0x1c
  2e8cc2: 4618         	mov	r0, r3
  2e8cc4: f2b0 feba    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b0d74
  2e8cc8: 4603         	mov	r3, r0
  2e8cca: 4618         	mov	r0, r3
  2e8ccc: 2100         	movs	r1, #0x0
  2e8cce: f2b1 f89f    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b113e
  2e8cd2: 4603         	mov	r3, r0
  2e8cd4: 9a03         	ldr	r2, [sp, #0xc]
  2e8cd6: 1d10         	adds	r0, r2, #0x4
  2e8cd8: a908         	add	r1, sp, #0x20
  2e8cda: aa09         	add	r2, sp, #0x24
  2e8cdc: 2500         	movs	r5, #0x0
  2e8cde: 9500         	str	r5, [sp]
  2e8ce0: 9001         	str	r0, [sp, #0x4]
  2e8ce2: 4822         	ldr	r0, [pc, #0x88]         @ 0x2e8d6c <AppDelegate::showFailedMessage()+0x104>
  2e8ce4: 5820         	ldr	r0, [r4, r0]
  2e8ce6: f7f6 fd85    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x94f6
  2e8cea: ab07         	add	r3, sp, #0x1c
  2e8cec: 4618         	mov	r0, r3
  2e8cee: f0cc f611    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccc22
  2e8cf2: ab04         	add	r3, sp, #0x10
  2e8cf4: 4618         	mov	r0, r3
  2e8cf6: f0a1 f381    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a1702
  2e8cfa: ab09         	add	r3, sp, #0x24
  2e8cfc: 4618         	mov	r0, r3
  2e8cfe: f0cc f609    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccc12
  2e8d02: ab06         	add	r3, sp, #0x18
  2e8d04: 4618         	mov	r0, r3
  2e8d06: f0a1 f379    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a16f2
  2e8d0a: ab08         	add	r3, sp, #0x20
  2e8d0c: 4618         	mov	r0, r3
  2e8d0e: f0cc f601    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccc02
  2e8d12: ab05         	add	r3, sp, #0x14
  2e8d14: 4618         	mov	r0, r3
  2e8d16: f0a1 f371    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a16e2
  2e8d1a: e01c         	b	0x2e8d56 <AppDelegate::showFailedMessage()+0xee> @ imm = #0x38
  2e8d1c: ab07         	add	r3, sp, #0x1c
  2e8d1e: 4618         	mov	r0, r3
  2e8d20: f0cc f5f8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccbf0
  2e8d24: e7ff         	b	0x2e8d26 <AppDelegate::showFailedMessage()+0xbe> @ imm = #-0x2
  2e8d26: ab04         	add	r3, sp, #0x10
  2e8d28: 4618         	mov	r0, r3
  2e8d2a: f0a1 f367    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a16ce
  2e8d2e: ab09         	add	r3, sp, #0x24
  2e8d30: 4618         	mov	r0, r3
  2e8d32: f0cc f5ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccbde
  2e8d36: e7ff         	b	0x2e8d38 <AppDelegate::showFailedMessage()+0xd0> @ imm = #-0x2
  2e8d38: ab06         	add	r3, sp, #0x18
  2e8d3a: 4618         	mov	r0, r3
  2e8d3c: f0a1 f35e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a16bc
  2e8d40: ab08         	add	r3, sp, #0x20
  2e8d42: 4618         	mov	r0, r3
  2e8d44: f0cc f5e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4ccbcc
  2e8d48: e7ff         	b	0x2e8d4a <AppDelegate::showFailedMessage()+0xe2> @ imm = #-0x2
  2e8d4a: ab05         	add	r3, sp, #0x14
  2e8d4c: 4618         	mov	r0, r3
  2e8d4e: f0a1 f355    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a16aa
  2e8d52: f09f f1ab    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49f356
  2e8d56: b00b         	add	sp, #0x2c
  2e8d58: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2e8d59); words below are literal-pool data ---
  2e8d5a: bf00         	nop
  2e8d5c: 9d98         	ldr	r5, [sp, #0x260]
  2e8d5e: 0064         	lsls	r4, r4, #0x1
  2e8d60: a02a         	adr	r0, #168 <AppDelegate::onConnectionLost(cocos2d::CCObject*)+0x1e>
  2e8d62: 004d         	lsls	r5, r1, #0x1
  2e8d64: a020         	adr	r0, #128 <AppDelegate::onConnectionLost(cocos2d::CCObject*)+0x18>
  2e8d66: 004d         	lsls	r5, r1, #0x1
  2e8d68: a03e         	adr	r0, #248 <AppDelegate::applicationWillResignActive()+0xe>
  2e8d6a: 004d         	lsls	r5, r1, #0x1
  2e8d6c: d834         	bhi	0x2e8dd8 <AppDelegate::applicationWillResignActive()+0x3c> @ imm = #0x68
  2e8d6e: ffff b500    	<unknown>

// ==== AppDelegate::onConnectionLost
//      file offset 0x2e8d70 (= ELF address; Ghidra 0x2f8d70), 44 bytes, Thumb-2
  2e8d70: b500         	push	{lr}
  2e8d72: b083         	sub	sp, #0xc
  2e8d74: 9001         	str	r0, [sp, #0x4]
  2e8d76: 9100         	str	r1, [sp]
  2e8d78: 9b01         	ldr	r3, [sp, #0x4]
  2e8d7a: 2201         	movs	r2, #0x1
  2e8d7c: f883 20e9    	strb.w	r2, [r3, #0xe9]
  2e8d80: 9b01         	ldr	r3, [sp, #0x4]
  2e8d82: f893 30ea    	ldrb.w	r3, [r3, #0xea]
  2e8d86: f083 0301    	eor	r3, r3, #0x1
  2e8d8a: b2db         	uxtb	r3, r3
  2e8d8c: 2b00         	cmp	r3, #0x0
  2e8d8e: d002         	beq	0x2e8d96 <AppDelegate::onConnectionLost(cocos2d::CCObject*)+0x26> @ imm = #0x4
  2e8d90: 9801         	ldr	r0, [sp, #0x4]
  2e8d92: f7ff ff69    	bl	0x2e8c68 <AppDelegate::showFailedMessage()> @ imm = #-0x12e
  2e8d96: b003         	add	sp, #0xc
  2e8d98: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::applicationWillResignActive
//      file offset 0x2e8d9c (= ELF address; Ghidra 0x2f8d9c), 140 bytes, Thumb-2
  2e8d9c: b500         	push	{lr}
  2e8d9e: b089         	sub	sp, #0x24
  2e8da0: 9005         	str	r0, [sp, #0x14]
  2e8da2: f08e fecd    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8ed9a
  2e8da6: 4603         	mov	r3, r0
  2e8da8: 4618         	mov	r0, r3
  2e8daa: f090 fe8d    	bl	0x379ac8 <NetworkManager::onlineMatchExists()> @ imm = #0x90d1a
  2e8dae: 4603         	mov	r3, r0
  2e8db0: 2b00         	cmp	r3, #0x0
  2e8db2: d009         	beq	0x2e8dc8 <AppDelegate::applicationWillResignActive()+0x2c> @ imm = #0x12
  2e8db4: 9b05         	ldr	r3, [sp, #0x14]
  2e8db6: f893 30ea    	ldrb.w	r3, [r3, #0xea]
  2e8dba: f083 0301    	eor	r3, r3, #0x1
  2e8dbe: b2db         	uxtb	r3, r3
  2e8dc0: 2b00         	cmp	r3, #0x0
  2e8dc2: d001         	beq	0x2e8dc8 <AppDelegate::applicationWillResignActive()+0x2c> @ imm = #0x2
  2e8dc4: 2301         	movs	r3, #0x1
  2e8dc6: e000         	b	0x2e8dca <AppDelegate::applicationWillResignActive()+0x2e> @ imm = #0x0
  2e8dc8: 2300         	movs	r3, #0x0
  2e8dca: 2b00         	cmp	r3, #0x0
  2e8dcc: d026         	beq	0x2e8e1c <AppDelegate::applicationWillResignActive()+0x80> @ imm = #0x4c
  2e8dce: f2b2 fbd1    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b27a2
  2e8dd2: 4603         	mov	r3, r0
  2e8dd4: 681a         	ldr	r2, [r3]
  2e8dd6: 3230         	adds	r2, #0x30
  2e8dd8: 6812         	ldr	r2, [r2]
  2e8dda: 4618         	mov	r0, r3
  2e8ddc: 4790         	blx	r2
  2e8dde: 4602         	mov	r2, r0
  2e8de0: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2e8e24 <AppDelegate::applicationWillResignActive()+0x88>
  2e8de2: 447b         	add	r3, pc
  2e8de4: 4619         	mov	r1, r3
  2e8de6: ab06         	add	r3, sp, #0x18
  2e8de8: c903         	ldm	r1, {r0, r1}
  2e8dea: e883 0003    	stm.w	r3, {r0, r1}
  2e8dee: 9b05         	ldr	r3, [sp, #0x14]
  2e8df0: 3304         	adds	r3, #0x4
  2e8df2: f04f 0100    	mov.w	r1, #0x0
  2e8df6: 9100         	str	r1, [sp]
  2e8df8: 2100         	movs	r1, #0x0
  2e8dfa: 9101         	str	r1, [sp, #0x4]
  2e8dfc: f04f 0100    	mov.w	r1, #0x0
  2e8e00: f2c4 1170    	movt	r1, #0x4170
  2e8e04: 9102         	str	r1, [sp, #0x8]
  2e8e06: 2100         	movs	r1, #0x0
  2e8e08: 9103         	str	r1, [sp, #0xc]
  2e8e0a: 4610         	mov	r0, r2
  2e8e0c: aa06         	add	r2, sp, #0x18
  2e8e0e: ca06         	ldm	r2, {r1, r2}
  2e8e10: f286 ff4a    	bl	0x56fca8 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, unsigned int, float, bool)> @ imm = #0x286e94
  2e8e14: 9b05         	ldr	r3, [sp, #0x14]
  2e8e16: 2201         	movs	r2, #0x1
  2e8e18: f883 20ea    	strb.w	r2, [r3, #0xea]
  2e8e1c: b009         	add	sp, #0x24
  2e8e1e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e8e21); words below are literal-pool data ---
  2e8e22: bf00         	nop
  2e8e24: a41a         	adr	r4, #104 <AppDelegate::applicationWillResignActiveAndroid(cocos2d::CCObject*)+0xe>
  2e8e26: 0064         	lsls	r4, r4, #0x1

// ==== AppDelegate::applicationDidEnterBackground
//      file offset 0x2e8e28 (= ELF address; Ghidra 0x2f8e28), 10 bytes, Thumb-2
  2e8e28: b082         	sub	sp, #0x8
  2e8e2a: 9001         	str	r0, [sp, #0x4]
  2e8e2c: bf00         	nop
  2e8e2e: b002         	add	sp, #0x8
  2e8e30: 4770         	bx	lr

// ==== AppDelegate::applicationWillResignActiveAndroid
//      file offset 0x2e8e34 (= ELF address; Ghidra 0x2f8e34), 26 bytes, Thumb-2
  2e8e34: b500         	push	{lr}
  2e8e36: b083         	sub	sp, #0xc
  2e8e38: 9001         	str	r0, [sp, #0x4]
  2e8e3a: 9100         	str	r1, [sp]
  2e8e3c: 9b01         	ldr	r3, [sp, #0x4]
  2e8e3e: 681b         	ldr	r3, [r3]
  2e8e40: 3320         	adds	r3, #0x20
  2e8e42: 681b         	ldr	r3, [r3]
  2e8e44: 9801         	ldr	r0, [sp, #0x4]
  2e8e46: 4798         	blx	r3
  2e8e48: b003         	add	sp, #0xc
  2e8e4a: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::applicationDidEnterBackgroundAndroid
//      file offset 0x2e8e50 (= ELF address; Ghidra 0x2f8e50), 152 bytes, Thumb-2
  2e8e50: b510         	push	{r4, lr}
  2e8e52: b082         	sub	sp, #0x8
  2e8e54: 9001         	str	r0, [sp, #0x4]
  2e8e56: 9100         	str	r1, [sp]
  2e8e58: 4c21         	ldr	r4, [pc, #0x84]         @ 0x2e8ee0 <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x90>
  2e8e5a: 447c         	add	r4, pc
  2e8e5c: f08e fe70    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8ece0
  2e8e60: 4603         	mov	r3, r0
  2e8e62: 4618         	mov	r0, r3
  2e8e64: f090 fe30    	bl	0x379ac8 <NetworkManager::onlineMatchExists()> @ imm = #0x90c60
  2e8e68: 4603         	mov	r3, r0
  2e8e6a: 2b00         	cmp	r3, #0x0
  2e8e6c: d022         	beq	0x2e8eb4 <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x64> @ imm = #0x44
  2e8e6e: f08e fe67    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8ecce
  2e8e72: 4603         	mov	r3, r0
  2e8e74: 4618         	mov	r0, r3
  2e8e76: f090 ff87    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #0x90f0e
  2e8e7a: 4603         	mov	r3, r0
  2e8e7c: 2b00         	cmp	r3, #0x0
  2e8e7e: d006         	beq	0x2e8e8e <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x3e> @ imm = #0xc
  2e8e80: 4b18         	ldr	r3, [pc, #0x60]         @ 0x2e8ee4 <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x94>
  2e8e82: 58e3         	ldr	r3, [r4, r3]
  2e8e84: 681b         	ldr	r3, [r3]
  2e8e86: 2b04         	cmp	r3, #0x4
  2e8e88: d101         	bne	0x2e8e8e <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x3e> @ imm = #0x2
  2e8e8a: 2301         	movs	r3, #0x1
  2e8e8c: e000         	b	0x2e8e90 <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x40> @ imm = #0x0
  2e8e8e: 2300         	movs	r3, #0x0
  2e8e90: 2b00         	cmp	r3, #0x0
  2e8e92: d00f         	beq	0x2e8eb4 <AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*)+0x64> @ imm = #0x1e
  2e8e94: f0e9 fa18    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0xe9430
  2e8e98: 4603         	mov	r3, r0
  2e8e9a: 4618         	mov	r0, r3
  2e8e9c: f0e9 fdde    	bl	0x3d2a5c <ScoreKeeper::applyPenalty()> @ imm = #0xe9bbc
  2e8ea0: 9b01         	ldr	r3, [sp, #0x4]
  2e8ea2: 2201         	movs	r2, #0x1
  2e8ea4: f883 20eb    	strb.w	r2, [r3, #0xeb]
  2e8ea8: f08e fe4a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8ec94
  2e8eac: 4603         	mov	r3, r0
  2e8eae: 4618         	mov	r0, r3
  2e8eb0: f090 fef8    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #0x90df0
  2e8eb4: f2b2 fb5e    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b26bc
  2e8eb8: 4603         	mov	r3, r0
  2e8eba: 681a         	ldr	r2, [r3]
  2e8ebc: 3224         	adds	r2, #0x24
  2e8ebe: 6812         	ldr	r2, [r2]
  2e8ec0: 4618         	mov	r0, r3
  2e8ec2: 4790         	blx	r2
  2e8ec4: f2b2 fb56    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b26ac
  2e8ec8: 4603         	mov	r3, r0
  2e8eca: 4618         	mov	r0, r3
  2e8ecc: f2b3 fc56    	bl	0x59c77c <cocos2d::CCDirector::pause()> @ imm = #0x2b38ac
  2e8ed0: f318 f8e8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x3181d0
  2e8ed4: 4603         	mov	r3, r0
  2e8ed6: 4618         	mov	r0, r3
  2e8ed8: f318 f95c    	bl	0x601194 <CocosDenshion::SimpleAudioEngine::pauseBackgroundMusic()> @ imm = #0x3182b8
  2e8edc: b002         	add	sp, #0x8
  2e8ede: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e8edf); words below are literal-pool data ---
  2e8ee0: 9bae         	ldr	r3, [sp, #0x2b8]
  2e8ee2: 0064         	lsls	r4, r4, #0x1
  2e8ee4: d838         	bhi	0x2e8f58 <AppDelegate::applicationWillEnterForeground()+0x70> @ imm = #0x70
  2e8ee6: ffff b500    	<unknown>

// ==== AppDelegate::applicationWillEnterForeground
//      file offset 0x2e8ee8 (= ELF address; Ghidra 0x2f8ee8), 152 bytes, Thumb-2
  2e8ee8: b500         	push	{lr}
  2e8eea: b089         	sub	sp, #0x24
  2e8eec: 9005         	str	r0, [sp, #0x14]
  2e8eee: f2b2 fb41    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b2682
  2e8ef2: 4603         	mov	r3, r0
  2e8ef4: 4618         	mov	r0, r3
  2e8ef6: f2b3 fc63    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x2b38c6
  2e8efa: f2b2 fb3b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b2676
  2e8efe: 4603         	mov	r3, r0
  2e8f00: 681a         	ldr	r2, [r3]
  2e8f02: 3228         	adds	r2, #0x28
  2e8f04: 6812         	ldr	r2, [r2]
  2e8f06: 4618         	mov	r0, r3
  2e8f08: 4790         	blx	r2
  2e8f0a: f318 f8cb    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x318196
  2e8f0e: 4603         	mov	r3, r0
  2e8f10: 4618         	mov	r0, r3
  2e8f12: f318 f947    	bl	0x6011a4 <CocosDenshion::SimpleAudioEngine::resumeBackgroundMusic()> @ imm = #0x31828e
  2e8f16: 9b05         	ldr	r3, [sp, #0x14]
  2e8f18: f893 30eb    	ldrb.w	r3, [r3, #0xeb]
  2e8f1c: 2b00         	cmp	r3, #0x0
  2e8f1e: d024         	beq	0x2e8f6a <AppDelegate::applicationWillEnterForeground()+0x82> @ imm = #0x48
  2e8f20: 9b05         	ldr	r3, [sp, #0x14]
  2e8f22: 2200         	movs	r2, #0x0
  2e8f24: f883 20eb    	strb.w	r2, [r3, #0xeb]
  2e8f28: f2b2 fb24    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b2648
  2e8f2c: 4603         	mov	r3, r0
  2e8f2e: 681a         	ldr	r2, [r3]
  2e8f30: 3230         	adds	r2, #0x30
  2e8f32: 6812         	ldr	r2, [r2]
  2e8f34: 4618         	mov	r0, r3
  2e8f36: 4790         	blx	r2
  2e8f38: 4602         	mov	r2, r0
  2e8f3a: 4b10         	ldr	r3, [pc, #0x40]         @ 0x2e8f7c <AppDelegate::applicationWillEnterForeground()+0x94>
  2e8f3c: 447b         	add	r3, pc
  2e8f3e: 4619         	mov	r1, r3
  2e8f40: ab06         	add	r3, sp, #0x18
  2e8f42: c903         	ldm	r1, {r0, r1}
  2e8f44: e883 0003    	stm.w	r3, {r0, r1}
  2e8f48: 9b05         	ldr	r3, [sp, #0x14]
  2e8f4a: 3304         	adds	r3, #0x4
  2e8f4c: f04f 0100    	mov.w	r1, #0x0
  2e8f50: 9100         	str	r1, [sp]
  2e8f52: 2100         	movs	r1, #0x0
  2e8f54: 9101         	str	r1, [sp, #0x4]
  2e8f56: f04f 517e    	mov.w	r1, #0x3f800000
  2e8f5a: 9102         	str	r1, [sp, #0x8]
  2e8f5c: 2100         	movs	r1, #0x0
  2e8f5e: 9103         	str	r1, [sp, #0xc]
  2e8f60: 4610         	mov	r0, r2
  2e8f62: aa06         	add	r2, sp, #0x18
  2e8f64: ca06         	ldm	r2, {r1, r2}
  2e8f66: f286 fe9f    	bl	0x56fca8 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, unsigned int, float, bool)> @ imm = #0x286d3e
  2e8f6a: 9b05         	ldr	r3, [sp, #0x14]
  2e8f6c: 681b         	ldr	r3, [r3]
  2e8f6e: 331c         	adds	r3, #0x1c
  2e8f70: 681b         	ldr	r3, [r3]
  2e8f72: 9805         	ldr	r0, [sp, #0x14]
  2e8f74: 4798         	blx	r3
  2e8f76: b009         	add	sp, #0x24
  2e8f78: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e8f7b); words below are literal-pool data ---
  2e8f7c: a2c8         	adr	r2, #800 <AppDelegate::applicationSignificantTimeChange()+0x8>
  2e8f7e: 0064         	lsls	r4, r4, #0x1

// ==== AppDelegate::applicationDidBecomeActive
//      file offset 0x2e8f80 (= ELF address; Ghidra 0x2f8f80), 100 bytes, Thumb-2
  2e8f80: b500         	push	{lr}
  2e8f82: b085         	sub	sp, #0x14
  2e8f84: 9001         	str	r0, [sp, #0x4]
  2e8f86: 9b01         	ldr	r3, [sp, #0x4]
  2e8f88: 2200         	movs	r2, #0x0
  2e8f8a: f883 20ea    	strb.w	r2, [r3, #0xea]
  2e8f8e: 9b01         	ldr	r3, [sp, #0x4]
  2e8f90: f893 30e9    	ldrb.w	r3, [r3, #0xe9]
  2e8f94: 2b00         	cmp	r3, #0x0
  2e8f96: d002         	beq	0x2e8f9e <AppDelegate::applicationDidBecomeActive()+0x1e> @ imm = #0x4
  2e8f98: 9801         	ldr	r0, [sp, #0x4]
  2e8f9a: f7ff fe65    	bl	0x2e8c68 <AppDelegate::showFailedMessage()> @ imm = #-0x336
  2e8f9e: f2b2 fae9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b25d2
  2e8fa2: 4603         	mov	r3, r0
  2e8fa4: 681a         	ldr	r2, [r3]
  2e8fa6: 3230         	adds	r2, #0x30
  2e8fa8: 6812         	ldr	r2, [r2]
  2e8faa: 4618         	mov	r0, r3
  2e8fac: 4790         	blx	r2
  2e8fae: 4602         	mov	r2, r0
  2e8fb0: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x2e8fe0 <AppDelegate::applicationDidBecomeActive()+0x60>
  2e8fb2: 447b         	add	r3, pc
  2e8fb4: 4619         	mov	r1, r3
  2e8fb6: ab02         	add	r3, sp, #0x8
  2e8fb8: c903         	ldm	r1, {r0, r1}
  2e8fba: e883 0003    	stm.w	r3, {r0, r1}
  2e8fbe: 9b01         	ldr	r3, [sp, #0x4]
  2e8fc0: 3304         	adds	r3, #0x4
  2e8fc2: 4610         	mov	r0, r2
  2e8fc4: aa02         	add	r2, sp, #0x8
  2e8fc6: ca06         	ldm	r2, {r1, r2}
  2e8fc8: f287 fcd4    	bl	0x570974 <cocos2d::CCScheduler::unscheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*)> @ imm = #0x2879a8
  2e8fcc: f2b2 fad2    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b25a4
  2e8fd0: 4603         	mov	r3, r0
  2e8fd2: 4618         	mov	r0, r3
  2e8fd4: f2b3 fbf4    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x2b37e8
  2e8fd8: b005         	add	sp, #0x14
  2e8fda: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e8fdd); words below are literal-pool data ---
  2e8fde: bf00         	nop
  2e8fe0: a24a         	adr	r2, #296 <AppDelegate::loadTextures()+0x26>
  2e8fe2: 0064         	lsls	r4, r4, #0x1

// ==== AppDelegate::unloadTextures
//      file offset 0x2e8fe4 (= ELF address; Ghidra 0x2f8fe4), 36 bytes, Thumb-2
  2e8fe4: b500         	push	{lr}
  2e8fe6: b083         	sub	sp, #0xc
  2e8fe8: 9001         	str	r0, [sp, #0x4]
  2e8fea: f2f3 fd0d    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2f3a1a
  2e8fee: 4603         	mov	r3, r0
  2e8ff0: 4618         	mov	r0, r3
  2e8ff2: f2f4 fda7    	bl	0x5ddb44 <cocos2d::CCSpriteFrameCache::removeSpriteFrames()> @ imm = #0x2f4b4e
  2e8ff6: f30a fa4f    	bl	0x5f3498 <cocos2d::CCTextureCache::sharedTextureCache()> @ imm = #0x30a49e
  2e8ffa: 4603         	mov	r3, r0
  2e8ffc: 4618         	mov	r0, r3
  2e8ffe: f30b fb25    	bl	0x5f464c <cocos2d::CCTextureCache::removeAllTextures()> @ imm = #0x30b64a
  2e9002: b003         	add	sp, #0xc
  2e9004: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::loadTextures
//      file offset 0x2e9008 (= ELF address; Ghidra 0x2f9008), 56 bytes, Thumb-2
  2e9008: b500         	push	{lr}
  2e900a: b083         	sub	sp, #0xc
  2e900c: 9001         	str	r0, [sp, #0x4]
  2e900e: f2f3 fcfb    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2f39f6
  2e9012: 4603         	mov	r3, r0
  2e9014: 4618         	mov	r0, r3
  2e9016: 4b08         	ldr	r3, [pc, #0x20]         @ 0x2e9038 <AppDelegate::loadTextures()+0x30>
  2e9018: 447b         	add	r3, pc
  2e901a: 4619         	mov	r1, r3
  2e901c: f2f4 fbfa    	bl	0x5dd814 <cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(char const*)> @ imm = #0x2f47f4
  2e9020: f2f3 fcf2    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2f39e4
  2e9024: 4603         	mov	r3, r0
  2e9026: 4618         	mov	r0, r3
  2e9028: 4b04         	ldr	r3, [pc, #0x10]         @ 0x2e903c <AppDelegate::loadTextures()+0x34>
  2e902a: 447b         	add	r3, pc
  2e902c: 4619         	mov	r1, r3
  2e902e: f2f4 fbf1    	bl	0x5dd814 <cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(char const*)> @ imm = #0x2f47e2
  2e9032: b003         	add	sp, #0xc
  2e9034: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e9037); words below are literal-pool data ---
  2e9038: 9ce4         	ldr	r4, [sp, #0x390]
  2e903a: 004d         	lsls	r5, r1, #0x1
  2e903c: 9ce6         	ldr	r4, [sp, #0x398]
  2e903e: 004d         	lsls	r5, r1, #0x1

// ==== AppDelegate::applicationSignificantTimeChange
//      file offset 0x2e9040 (= ELF address; Ghidra 0x2f9040), 26 bytes, Thumb-2
  2e9040: b500         	push	{lr}
  2e9042: b083         	sub	sp, #0xc
  2e9044: 9001         	str	r0, [sp, #0x4]
  2e9046: f2b2 fa95    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2b252a
  2e904a: 4603         	mov	r3, r0
  2e904c: 4618         	mov	r0, r3
  2e904e: 2101         	movs	r1, #0x1
  2e9050: f2b2 feb8    	bl	0x59bdc4 <cocos2d::CCDirector::setNextDeltaTimeZero(bool)> @ imm = #0x2b2d70
  2e9054: b003         	add	sp, #0xc
  2e9056: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::applicationDidReceiveMemoryWarning
//      file offset 0x2e905c (= ELF address; Ghidra 0x2f905c), 8 bytes, Thumb-2
  2e905c: b082         	sub	sp, #0x8
  2e905e: 9001         	str	r0, [sp, #0x4]
  2e9060: b002         	add	sp, #0x8
  2e9062: 4770         	bx	lr

// ==== AppDelegate::endMatchAfterSleep
//      file offset 0x2e9064 (= ELF address; Ghidra 0x2f9064), 40 bytes, Thumb-2
  2e9064: b500         	push	{lr}
  2e9066: b083         	sub	sp, #0xc
  2e9068: 9001         	str	r0, [sp, #0x4]
  2e906a: 9100         	str	r1, [sp]
  2e906c: 9b01         	ldr	r3, [sp, #0x4]
  2e906e: 681b         	ldr	r3, [r3]
  2e9070: 3334         	adds	r3, #0x34
  2e9072: 681b         	ldr	r3, [r3]
  2e9074: 9801         	ldr	r0, [sp, #0x4]
  2e9076: 2100         	movs	r1, #0x0
  2e9078: 4798         	blx	r3
  2e907a: f08e fd61    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8eac2
  2e907e: 4603         	mov	r3, r0
  2e9080: 4618         	mov	r0, r3
  2e9082: f090 fe0f    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #0x90c1e
  2e9086: b003         	add	sp, #0xc
  2e9088: f85d fb04    	ldr	pc, [sp], #4

// ==== AppDelegate::showConnectionClosedAlert
//      file offset 0x2e908c (= ELF address; Ghidra 0x2f908c), 264 bytes, Thumb-2
  2e908c: b530         	push	{r4, r5, lr}
  2e908e: b08b         	sub	sp, #0x2c
  2e9090: 9003         	str	r0, [sp, #0xc]
  2e9092: 9102         	str	r1, [sp, #0x8]
  2e9094: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x2e9180 <AppDelegate::showConnectionClosedAlert(float)+0xf4>
  2e9096: 447c         	add	r4, pc
  2e9098: ab05         	add	r3, sp, #0x14
  2e909a: 4618         	mov	r0, r3
  2e909c: f0a1 f1aa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a1354
  2e90a0: aa08         	add	r2, sp, #0x20
  2e90a2: ab05         	add	r3, sp, #0x14
  2e90a4: 4610         	mov	r0, r2
  2e90a6: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x2e9184 <AppDelegate::showConnectionClosedAlert(float)+0xf8>
  2e90a8: 447a         	add	r2, pc
  2e90aa: 4611         	mov	r1, r2
  2e90ac: 461a         	mov	r2, r3
  2e90ae: f0cd f4d7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cd9ae
  2e90b2: ab06         	add	r3, sp, #0x18
  2e90b4: 4618         	mov	r0, r3
  2e90b6: f0a1 f19d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a133a
  2e90ba: aa09         	add	r2, sp, #0x24
  2e90bc: ab06         	add	r3, sp, #0x18
  2e90be: 4610         	mov	r0, r2
  2e90c0: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x2e9188 <AppDelegate::showConnectionClosedAlert(float)+0xfc>
  2e90c2: 447a         	add	r2, pc
  2e90c4: 4611         	mov	r1, r2
  2e90c6: 461a         	mov	r2, r3
  2e90c8: f0cd f4ca    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cd994
  2e90cc: ab04         	add	r3, sp, #0x10
  2e90ce: 4618         	mov	r0, r3
  2e90d0: f0a1 f190    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4a1320
  2e90d4: aa07         	add	r2, sp, #0x1c
  2e90d6: ab04         	add	r3, sp, #0x10
  2e90d8: 4610         	mov	r0, r2
  2e90da: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x2e918c <AppDelegate::showConnectionClosedAlert(float)+0x100>
  2e90dc: 447a         	add	r2, pc
  2e90de: 4611         	mov	r1, r2
  2e90e0: 461a         	mov	r2, r3
  2e90e2: f0cd f4bd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4cd97a
  2e90e6: ab07         	add	r3, sp, #0x1c
  2e90e8: 4618         	mov	r0, r3
  2e90ea: f2b0 fca7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x2b094e
  2e90ee: 4603         	mov	r3, r0
  2e90f0: 4618         	mov	r0, r3
  2e90f2: 2100         	movs	r1, #0x0
  2e90f4: f2b0 fe8c    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x2b0d18
  2e90f8: 4603         	mov	r3, r0
  2e90fa: 9a03         	ldr	r2, [sp, #0xc]
  2e90fc: 1d10         	adds	r0, r2, #0x4
  2e90fe: a908         	add	r1, sp, #0x20
  2e9100: aa09         	add	r2, sp, #0x24
  2e9102: 2500         	movs	r5, #0x0
  2e9104: 9500         	str	r5, [sp]
  2e9106: 9001         	str	r0, [sp, #0x4]
  2e9108: 4821         	ldr	r0, [pc, #0x84]         @ 0x2e9190 <AppDelegate::showConnectionClosedAlert(float)+0x104>
  2e910a: 5820         	ldr	r0, [r4, r0]
  2e910c: f7f6 fb72    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x991c
  2e9110: ab07         	add	r3, sp, #0x1c
  2e9112: 4618         	mov	r0, r3
  2e9114: f0cc f3fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7fc
  2e9118: ab04         	add	r3, sp, #0x10
  2e911a: 4618         	mov	r0, r3
  2e911c: f0a1 f16e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a12dc
  2e9120: ab09         	add	r3, sp, #0x24
  2e9122: 4618         	mov	r0, r3
  2e9124: f0cc f3f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7ec
  2e9128: ab06         	add	r3, sp, #0x18
  2e912a: 4618         	mov	r0, r3
  2e912c: f0a1 f166    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a12cc
  2e9130: ab08         	add	r3, sp, #0x20
  2e9132: 4618         	mov	r0, r3
  2e9134: f0cc f3ee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7dc
  2e9138: ab05         	add	r3, sp, #0x14
  2e913a: 4618         	mov	r0, r3
  2e913c: f0a1 f15e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a12bc
  2e9140: e01c         	b	0x2e917c <AppDelegate::showConnectionClosedAlert(float)+0xf0> @ imm = #0x38
  2e9142: ab07         	add	r3, sp, #0x1c
  2e9144: 4618         	mov	r0, r3
  2e9146: f0cc f3e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7ca
  2e914a: e7ff         	b	0x2e914c <AppDelegate::showConnectionClosedAlert(float)+0xc0> @ imm = #-0x2
  2e914c: ab04         	add	r3, sp, #0x10
  2e914e: 4618         	mov	r0, r3
  2e9150: f0a1 f154    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a12a8
  2e9154: ab09         	add	r3, sp, #0x24
  2e9156: 4618         	mov	r0, r3
  2e9158: f0cc f3dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7b8
  2e915c: e7ff         	b	0x2e915e <AppDelegate::showConnectionClosedAlert(float)+0xd2> @ imm = #-0x2
  2e915e: ab06         	add	r3, sp, #0x18
  2e9160: 4618         	mov	r0, r3
  2e9162: f0a1 f14b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a1296
  2e9166: ab08         	add	r3, sp, #0x20
  2e9168: 4618         	mov	r0, r3
  2e916a: f0cc f3d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4cc7a6
  2e916e: e7ff         	b	0x2e9170 <AppDelegate::showConnectionClosedAlert(float)+0xe4> @ imm = #-0x2
  2e9170: ab05         	add	r3, sp, #0x14
  2e9172: 4618         	mov	r0, r3
  2e9174: f0a1 f142    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4a1284
  2e9178: f09e f798    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x49ef30
  2e917c: b00b         	add	sp, #0x2c
  2e917e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2e917f); words below are literal-pool data ---
  2e9180: 9972         	ldr	r1, [sp, #0x1c8]
  2e9182: 0064         	lsls	r4, r4, #0x1
  2e9184: 9c7c         	ldr	r4, [sp, #0x1f0]
  2e9186: 004d         	lsls	r5, r1, #0x1
  2e9188: 9c7e         	ldr	r4, [sp, #0x1f8]
  2e918a: 004d         	lsls	r5, r1, #0x1
  2e918c: 9cbc         	ldr	r4, [sp, #0x2f0]
  2e918e: 004d         	lsls	r5, r1, #0x1
  2e9190: d834         	bhi	0x2e91fc <float const& std::min<float>(float const&, float const&)+0x14> @ imm = #0x68
  2e9192: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== AppDelegate::applicationWillTerminate
//      file offset 0x2e9194 (= ELF address; Ghidra 0x2f9194), 84 bytes, Thumb-2
  2e9194: b510         	push	{r4, lr}
  2e9196: b082         	sub	sp, #0x8
  2e9198: 9001         	str	r0, [sp, #0x4]
  2e919a: 4c11         	ldr	r4, [pc, #0x44]         @ 0x2e91e0 <AppDelegate::applicationWillTerminate()+0x4c>
  2e919c: 447c         	add	r4, pc
  2e919e: f08e fccf    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8e99e
  2e91a2: 4603         	mov	r3, r0
  2e91a4: 4618         	mov	r0, r3
  2e91a6: f090 fdef    	bl	0x379d88 <NetworkManager::isInGame()> @ imm = #0x90bde
  2e91aa: 4603         	mov	r3, r0
  2e91ac: 2b00         	cmp	r3, #0x0
  2e91ae: d006         	beq	0x2e91be <AppDelegate::applicationWillTerminate()+0x2a> @ imm = #0xc
  2e91b0: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x2e91e4 <AppDelegate::applicationWillTerminate()+0x50>
  2e91b2: 58e3         	ldr	r3, [r4, r3]
  2e91b4: 681b         	ldr	r3, [r3]
  2e91b6: 2b04         	cmp	r3, #0x4
  2e91b8: d101         	bne	0x2e91be <AppDelegate::applicationWillTerminate()+0x2a> @ imm = #0x2
  2e91ba: 2301         	movs	r3, #0x1
  2e91bc: e000         	b	0x2e91c0 <AppDelegate::applicationWillTerminate()+0x2c> @ imm = #0x0
  2e91be: 2300         	movs	r3, #0x0
  2e91c0: 2b00         	cmp	r3, #0x0
  2e91c2: d005         	beq	0x2e91d0 <AppDelegate::applicationWillTerminate()+0x3c> @ imm = #0xa
  2e91c4: f0e9 f880    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0xe9100
  2e91c8: 4603         	mov	r3, r0
  2e91ca: 4618         	mov	r0, r3
  2e91cc: f0e9 fc46    	bl	0x3d2a5c <ScoreKeeper::applyPenalty()> @ imm = #0xe988c
  2e91d0: f08e fcb6    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x8e96c
  2e91d4: 4603         	mov	r3, r0
  2e91d6: 4618         	mov	r0, r3
  2e91d8: f090 fd64    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #0x90ac8
  2e91dc: b002         	add	sp, #0x8
  2e91de: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e91df); words below are literal-pool data ---
  2e91e0: 986c         	ldr	r0, [sp, #0x1b0]
  2e91e2: 0064         	lsls	r4, r4, #0x1
  2e91e4: d838         	bhi	0x2e9258 <bool __gnu_cxx::operator!=<std::string*, std::vector<std::string, std::allocator<std::string>>>(__gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>> const&, __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string>>> const&)+0xc> @ imm = #0x70
  2e91e6: ffff b082    	<unknown>
