// MessageBox: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 7 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MessageBox.cpp

// ==== MessageBox::MessageBox
//      file offset 0x425a10 (= ELF address; Ghidra 0x435a10), 64 bytes, Thumb-2
  425a10: b510         	push	{r4, lr}
  425a12: b082         	sub	sp, #0x8
  425a14: 9001         	str	r0, [sp, #0x4]
  425a16: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x425a48 <MessageBox::MessageBox()+0x38>
  425a18: 447c         	add	r4, pc
  425a1a: 9b01         	ldr	r3, [sp, #0x4]
  425a1c: 4618         	mov	r0, r3
  425a1e: f172 f9a5    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x17234a
  425a22: 9b01         	ldr	r3, [sp, #0x4]
  425a24: 4a09         	ldr	r2, [pc, #0x24]         @ 0x425a4c <MessageBox::MessageBox()+0x3c>
  425a26: 58a2         	ldr	r2, [r4, r2]
  425a28: 3208         	adds	r2, #0x8
  425a2a: 601a         	str	r2, [r3]
  425a2c: 9b01         	ldr	r3, [sp, #0x4]
  425a2e: 2200         	movs	r2, #0x0
  425a30: 615a         	str	r2, [r3, #0x14]
  425a32: 9b01         	ldr	r3, [sp, #0x4]
  425a34: 2200         	movs	r2, #0x0
  425a36: 619a         	str	r2, [r3, #0x18]
  425a38: 9b01         	ldr	r3, [sp, #0x4]
  425a3a: 2200         	movs	r2, #0x0
  425a3c: 61da         	str	r2, [r3, #0x1c]
  425a3e: 9b01         	ldr	r3, [sp, #0x4]
  425a40: 4618         	mov	r0, r3
  425a42: b002         	add	sp, #0x8
  425a44: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x425a45); words below are literal-pool data ---
  425a46: bf00         	nop
  425a48: cff0         	ldm	r7, {r4, r5, r6, r7}
  425a4a: 0050         	lsls	r0, r2, #0x1
  425a4c: e018         	b	0x425a80 <MessageBox::~MessageBox()+0x30> @ imm = #0x30
  425a4e: ffff b500    	<unknown>

// ==== MessageBox::~MessageBox
//      file offset 0x425a50 (= ELF address; Ghidra 0x435a50), 60 bytes, Thumb-2
  425a50: b500         	push	{lr}
  425a52: b083         	sub	sp, #0xc
  425a54: 9001         	str	r0, [sp, #0x4]
  425a56: 490b         	ldr	r1, [pc, #0x2c]         @ 0x425a84 <MessageBox::~MessageBox()+0x34>
  425a58: 4479         	add	r1, pc
  425a5a: 9b01         	ldr	r3, [sp, #0x4]
  425a5c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x425a88 <MessageBox::~MessageBox()+0x38>
  425a5e: 588a         	ldr	r2, [r1, r2]
  425a60: 3208         	adds	r2, #0x8
  425a62: 601a         	str	r2, [r3]
  425a64: 9b01         	ldr	r3, [sp, #0x4]
  425a66: 4618         	mov	r0, r3
  425a68: f172 f9b2    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x172364
  425a6c: 2300         	movs	r3, #0x0
  425a6e: 2b00         	cmp	r3, #0x0
  425a70: d002         	beq	0x425a78 <MessageBox::~MessageBox()+0x28> @ imm = #0x4
  425a72: 9801         	ldr	r0, [sp, #0x4]
  425a74: f362 fb16    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x36262c
  425a78: 9b01         	ldr	r3, [sp, #0x4]
  425a7a: 4618         	mov	r0, r3
  425a7c: b003         	add	sp, #0xc
  425a7e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x425a81); words below are literal-pool data ---
  425a82: bf00         	nop
  425a84: cfb0         	ldm	r7, {r4, r5, r7}
  425a86: 0050         	lsls	r0, r2, #0x1
  425a88: e018         	b	0x425abc <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*)+0x14> @ imm = #0x30
  425a8a: ffff b500    	<unknown>

// ==== MessageBox::~MessageBox
//      file offset 0x425a8c (= ELF address; Ghidra 0x435a8c), 28 bytes, Thumb-2
  425a8c: b500         	push	{lr}
  425a8e: b083         	sub	sp, #0xc
  425a90: 9001         	str	r0, [sp, #0x4]
  425a92: 9801         	ldr	r0, [sp, #0x4]
  425a94: f7ff ffdc    	bl	0x425a50 <MessageBox::~MessageBox()> @ imm = #-0x48
  425a98: 9801         	ldr	r0, [sp, #0x4]
  425a9a: f362 fb03    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x362606
  425a9e: 9b01         	ldr	r3, [sp, #0x4]
  425aa0: 4618         	mov	r0, r3
  425aa2: b003         	add	sp, #0xc
  425aa4: f85d fb04    	ldr	pc, [sp], #4

// ==== MessageBox::showAlert
//      file offset 0x425aa8 (= ELF address; Ghidra 0x435aa8), 38 bytes, Thumb-2
  425aa8: b500         	push	{lr}
  425aaa: b087         	sub	sp, #0x1c
  425aac: 9005         	str	r0, [sp, #0x14]
  425aae: 9104         	str	r1, [sp, #0x10]
  425ab0: 9203         	str	r2, [sp, #0xc]
  425ab2: 9302         	str	r3, [sp, #0x8]
  425ab4: 2300         	movs	r3, #0x0
  425ab6: 9300         	str	r3, [sp]
  425ab8: 2300         	movs	r3, #0x0
  425aba: 9301         	str	r3, [sp, #0x4]
  425abc: 9805         	ldr	r0, [sp, #0x14]
  425abe: 9904         	ldr	r1, [sp, #0x10]
  425ac0: 9a03         	ldr	r2, [sp, #0xc]
  425ac2: 9b02         	ldr	r3, [sp, #0x8]
  425ac4: f00e f826    	bl	0x433b14 <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #0xe04c
  425ac8: b007         	add	sp, #0x1c
  425aca: f85d fb04    	ldr	pc, [sp], #4

// ==== MessageBox::showAlert
//      file offset 0x425ad0 (= ELF address; Ghidra 0x435ad0), 38 bytes, Thumb-2
  425ad0: b500         	push	{lr}
  425ad2: b087         	sub	sp, #0x1c
  425ad4: 9005         	str	r0, [sp, #0x14]
  425ad6: 9104         	str	r1, [sp, #0x10]
  425ad8: 9203         	str	r2, [sp, #0xc]
  425ada: 9302         	str	r3, [sp, #0x8]
  425adc: 9b08         	ldr	r3, [sp, #0x20]
  425ade: 9300         	str	r3, [sp]
  425ae0: 2300         	movs	r3, #0x0
  425ae2: 9301         	str	r3, [sp, #0x4]
  425ae4: 9805         	ldr	r0, [sp, #0x14]
  425ae6: 9904         	ldr	r1, [sp, #0x10]
  425ae8: 9a03         	ldr	r2, [sp, #0xc]
  425aea: 9b02         	ldr	r3, [sp, #0x8]
  425aec: f00e f812    	bl	0x433b14 <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #0xe024
  425af0: b007         	add	sp, #0x1c
  425af2: f85d fb04    	ldr	pc, [sp], #4

// ==== MessageBox::alertCallback
//      file offset 0x425af8 (= ELF address; Ghidra 0x435af8), 82 bytes, Thumb-2
  425af8: b500         	push	{lr}
  425afa: b083         	sub	sp, #0xc
  425afc: 9001         	str	r0, [sp, #0x4]
  425afe: 9100         	str	r1, [sp]
  425b00: 9b01         	ldr	r3, [sp, #0x4]
  425b02: 69db         	ldr	r3, [r3, #0x1c]
  425b04: 2b00         	cmp	r3, #0x0
  425b06: d007         	beq	0x425b18 <MessageBox::alertCallback(int)+0x20> @ imm = #0xe
  425b08: 9b01         	ldr	r3, [sp, #0x4]
  425b0a: 69db         	ldr	r3, [r3, #0x1c]
  425b0c: 9a01         	ldr	r2, [sp, #0x4]
  425b0e: 6951         	ldr	r1, [r2, #0x14]
  425b10: 9a01         	ldr	r2, [sp, #0x4]
  425b12: 6992         	ldr	r2, [r2, #0x18]
  425b14: 9800         	ldr	r0, [sp]
  425b16: 4798         	blx	r3
  425b18: 9b01         	ldr	r3, [sp, #0x4]
  425b1a: 695b         	ldr	r3, [r3, #0x14]
  425b1c: 2b00         	cmp	r3, #0x0
  425b1e: d004         	beq	0x425b2a <MessageBox::alertCallback(int)+0x32> @ imm = #0x8
  425b20: 9b01         	ldr	r3, [sp, #0x4]
  425b22: 695b         	ldr	r3, [r3, #0x14]
  425b24: 4618         	mov	r0, r3
  425b26: f172 f9c7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17238e
  425b2a: 9b01         	ldr	r3, [sp, #0x4]
  425b2c: 699b         	ldr	r3, [r3, #0x18]
  425b2e: 2b00         	cmp	r3, #0x0
  425b30: d004         	beq	0x425b3c <MessageBox::alertCallback(int)+0x44> @ imm = #0x8
  425b32: 9b01         	ldr	r3, [sp, #0x4]
  425b34: 699b         	ldr	r3, [r3, #0x18]
  425b36: 4618         	mov	r0, r3
  425b38: f172 f9be    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x17237c
  425b3c: 9b01         	ldr	r3, [sp, #0x4]
  425b3e: 4618         	mov	r0, r3
  425b40: f172 f9dc    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1723b8
  425b44: b003         	add	sp, #0xc
  425b46: f85d fb04    	ldr	pc, [sp], #4

// ==== MessageBox::showAlert
//      file offset 0x433b14 (= ELF address; Ghidra 0x443b14), 104 bytes, Thumb-2
  433b14: b510         	push	{r4, lr}
  433b16: b086         	sub	sp, #0x18
  433b18: 9003         	str	r0, [sp, #0xc]
  433b1a: 9102         	str	r1, [sp, #0x8]
  433b1c: 9201         	str	r2, [sp, #0x4]
  433b1e: 9300         	str	r3, [sp]
  433b20: 2020         	movs	r0, #0x20
  433b22: f353 ff1f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x353e3e
  433b26: 4603         	mov	r3, r0
  433b28: 461c         	mov	r4, r3
  433b2a: 4620         	mov	r0, r4
  433b2c: f7f1 ff70    	bl	0x425a10 <MessageBox::MessageBox()> @ imm = #-0xe120
  433b30: 9405         	str	r4, [sp, #0x14]
  433b32: 9b05         	ldr	r3, [sp, #0x14]
  433b34: 9a03         	ldr	r2, [sp, #0xc]
  433b36: 61da         	str	r2, [r3, #0x1c]
  433b38: 9b05         	ldr	r3, [sp, #0x14]
  433b3a: 9a08         	ldr	r2, [sp, #0x20]
  433b3c: 615a         	str	r2, [r3, #0x14]
  433b3e: 9b05         	ldr	r3, [sp, #0x14]
  433b40: 9a09         	ldr	r2, [sp, #0x24]
  433b42: 619a         	str	r2, [r3, #0x18]
  433b44: 9b08         	ldr	r3, [sp, #0x20]
  433b46: 2b00         	cmp	r3, #0x0
  433b48: d004         	beq	0x433b54 <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x40> @ imm = #0x8
  433b4a: 9b05         	ldr	r3, [sp, #0x14]
  433b4c: 695b         	ldr	r3, [r3, #0x14]
  433b4e: 4618         	mov	r0, r3
  433b50: f164 f9ca    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x164394
  433b54: 9b09         	ldr	r3, [sp, #0x24]
  433b56: 2b00         	cmp	r3, #0x0
  433b58: d004         	beq	0x433b64 <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x50> @ imm = #0x8
  433b5a: 9b05         	ldr	r3, [sp, #0x14]
  433b5c: 699b         	ldr	r3, [r3, #0x18]
  433b5e: 4618         	mov	r0, r3
  433b60: f164 f9c2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x164384
  433b64: 9805         	ldr	r0, [sp, #0x14]
  433b66: 2100         	movs	r1, #0x0
  433b68: f7f1 ffc6    	bl	0x425af8 <MessageBox::alertCallback(int)> @ imm = #-0xe074
  433b6c: e004         	b	0x433b78 <MessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), char const*, char const*, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x64> @ imm = #0x8
  433b6e: 4620         	mov	r0, r4
  433b70: f354 fa98    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x354530
  433b74: f354 fa9a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x354534
  433b78: b006         	add	sp, #0x18
  433b7a: bd10         	pop	{r4, pc}
