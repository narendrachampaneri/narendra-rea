// NetworkManagerBridge: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 7 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../NetworkManagerBridge.cpp

// ==== NetworkManagerBridge::NetworkManagerBridge
//      file offset 0x433c2c (= ELF address; Ghidra 0x443c2c), 36 bytes, Thumb-2
  433c2c: b082         	sub	sp, #0x8
  433c2e: 9001         	str	r0, [sp, #0x4]
  433c30: 4905         	ldr	r1, [pc, #0x14]         @ 0x433c48 <NetworkManagerBridge::NetworkManagerBridge()+0x1c>
  433c32: 4479         	add	r1, pc
  433c34: 9b01         	ldr	r3, [sp, #0x4]
  433c36: 4a05         	ldr	r2, [pc, #0x14]         @ 0x433c4c <NetworkManagerBridge::NetworkManagerBridge()+0x20>
  433c38: 588a         	ldr	r2, [r1, r2]
  433c3a: 3208         	adds	r2, #0x8
  433c3c: 601a         	str	r2, [r3]
  433c3e: 9b01         	ldr	r3, [sp, #0x4]
  433c40: 4618         	mov	r0, r3
  433c42: b002         	add	sp, #0x8
  433c44: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x433c45); words below are literal-pool data ---
  433c46: bf00         	nop
  433c48: edd6 004f    	ldcl	p0, c0, [r6, #316]
  433c4c: e068         	b	0x433d20 <NetworkManagerBridge::isInternetReachable()+0x70> @ imm = #0xd0
  433c4e: ffff b500    	<unknown>

// ==== NetworkManagerBridge::~NetworkManagerBridge
//      file offset 0x433c50 (= ELF address; Ghidra 0x443c50), 52 bytes, Thumb-2
  433c50: b500         	push	{lr}
  433c52: b083         	sub	sp, #0xc
  433c54: 9001         	str	r0, [sp, #0x4]
  433c56: 4909         	ldr	r1, [pc, #0x24]         @ 0x433c7c <NetworkManagerBridge::~NetworkManagerBridge()+0x2c>
  433c58: 4479         	add	r1, pc
  433c5a: 9b01         	ldr	r3, [sp, #0x4]
  433c5c: 4a08         	ldr	r2, [pc, #0x20]         @ 0x433c80 <NetworkManagerBridge::~NetworkManagerBridge()+0x30>
  433c5e: 588a         	ldr	r2, [r1, r2]
  433c60: 3208         	adds	r2, #0x8
  433c62: 601a         	str	r2, [r3]
  433c64: 2300         	movs	r3, #0x0
  433c66: 2b00         	cmp	r3, #0x0
  433c68: d002         	beq	0x433c70 <NetworkManagerBridge::~NetworkManagerBridge()+0x20> @ imm = #0x4
  433c6a: 9801         	ldr	r0, [sp, #0x4]
  433c6c: f354 fa1a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x354434
  433c70: 9b01         	ldr	r3, [sp, #0x4]
  433c72: 4618         	mov	r0, r3
  433c74: b003         	add	sp, #0xc
  433c76: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x433c79); words below are literal-pool data ---
  433c7a: bf00         	nop
  433c7c: edb0 004f    	ldc	p0, c0, [r0, #316]!
  433c80: e068         	b	0x433d54 <NetworkManagerBridge::notifySessionRequestCompleted(bool)+0x28> @ imm = #0xd0
  433c82: ffff b500    	<unknown>

// ==== NetworkManagerBridge::~NetworkManagerBridge
//      file offset 0x433c84 (= ELF address; Ghidra 0x443c84), 28 bytes, Thumb-2
  433c84: b500         	push	{lr}
  433c86: b083         	sub	sp, #0xc
  433c88: 9001         	str	r0, [sp, #0x4]
  433c8a: 9801         	ldr	r0, [sp, #0x4]
  433c8c: f7ff ffe0    	bl	0x433c50 <NetworkManagerBridge::~NetworkManagerBridge()> @ imm = #-0x40
  433c90: 9801         	ldr	r0, [sp, #0x4]
  433c92: f354 fa07    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x35440e
  433c96: 9b01         	ldr	r3, [sp, #0x4]
  433c98: 4618         	mov	r0, r3
  433c9a: b003         	add	sp, #0xc
  433c9c: f85d fb04    	ldr	pc, [sp], #4

// ==== NetworkManagerBridge::startReachability
//      file offset 0x433ca0 (= ELF address; Ghidra 0x443ca0), 8 bytes, Thumb-2
  433ca0: b082         	sub	sp, #0x8
  433ca2: 9001         	str	r0, [sp, #0x4]
  433ca4: b002         	add	sp, #0x8
  433ca6: 4770         	bx	lr

// ==== NetworkManagerBridge::stopReachability
//      file offset 0x433ca8 (= ELF address; Ghidra 0x443ca8), 8 bytes, Thumb-2
  433ca8: b082         	sub	sp, #0x8
  433caa: 9001         	str	r0, [sp, #0x4]
  433cac: b002         	add	sp, #0x8
  433cae: 4770         	bx	lr

// ==== NetworkManagerBridge::isInternetReachable
//      file offset 0x433cb0 (= ELF address; Ghidra 0x443cb0), 124 bytes, Thumb-2
  433cb0: b500         	push	{lr}
  433cb2: b087         	sub	sp, #0x1c
  433cb4: 9001         	str	r0, [sp, #0x4]
  433cb6: ab03         	add	r3, sp, #0xc
  433cb8: 4618         	mov	r0, r3
  433cba: 4b19         	ldr	r3, [pc, #0x64]         @ 0x433d20 <NetworkManagerBridge::isInternetReachable()+0x70>
  433cbc: 447b         	add	r3, pc
  433cbe: 4619         	mov	r1, r3
  433cc0: 4b18         	ldr	r3, [pc, #0x60]         @ 0x433d24 <NetworkManagerBridge::isInternetReachable()+0x74>
  433cc2: 447b         	add	r3, pc
  433cc4: 461a         	mov	r2, r3
  433cc6: 4b18         	ldr	r3, [pc, #0x60]         @ 0x433d28 <NetworkManagerBridge::isInternetReachable()+0x78>
  433cc8: 447b         	add	r3, pc
  433cca: f19e fa29    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e452
  433cce: 4603         	mov	r3, r0
  433cd0: f88d 3009    	strb.w	r3, [sp, #0x9]
  433cd4: f89d 3009    	ldrb.w	r3, [sp, #0x9]
  433cd8: f083 0301    	eor	r3, r3, #0x1
  433cdc: b2db         	uxtb	r3, r3
  433cde: 2b00         	cmp	r3, #0x0
  433ce0: d001         	beq	0x433ce6 <NetworkManagerBridge::isInternetReachable()+0x36> @ imm = #0x2
  433ce2: 2300         	movs	r3, #0x0
  433ce4: e018         	b	0x433d18 <NetworkManagerBridge::isInternetReachable()+0x68> @ imm = #0x30
  433ce6: 9903         	ldr	r1, [sp, #0xc]
  433ce8: 9a04         	ldr	r2, [sp, #0x10]
  433cea: 9b05         	ldr	r3, [sp, #0x14]
  433cec: 4608         	mov	r0, r1
  433cee: 4611         	mov	r1, r2
  433cf0: 461a         	mov	r2, r3
  433cf2: f7f7 fa4d    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x8b66
  433cf6: 4603         	mov	r3, r0
  433cf8: f88d 300a    	strb.w	r3, [sp, #0xa]
  433cfc: f89d 300a    	ldrb.w	r3, [sp, #0xa]
  433d00: 2b00         	cmp	r3, #0x0
  433d02: bf0c         	ite	eq
  433d04: 2300         	moveq	r3, #0x0
  433d06: 2301         	movne	r3, #0x1
  433d08: f88d 300b    	strb.w	r3, [sp, #0xb]
  433d0c: 9b03         	ldr	r3, [sp, #0xc]
  433d0e: 4618         	mov	r0, r3
  433d10: f19e faca    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e594
  433d14: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  433d18: 4618         	mov	r0, r3
  433d1a: b007         	add	sp, #0x1c
  433d1c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x433d1f); words below are literal-pool data ---
  433d20: ae14         	add	r6, sp, #0x50
  433d22: 003a         	movs	r2, r7
  433d24: ae2e         	add	r6, sp, #0xb8
  433d26: 003a         	movs	r2, r7
  433d28: ae34         	add	r6, sp, #0xd0
  433d2a: 003a         	movs	r2, r7

// ==== NetworkManagerBridge::notifySessionRequestCompleted
//      file offset 0x433d2c (= ELF address; Ghidra 0x443d2c), 96 bytes, Thumb-2
  433d2c: b500         	push	{lr}
  433d2e: b087         	sub	sp, #0x1c
  433d30: 9001         	str	r0, [sp, #0x4]
  433d32: 460b         	mov	r3, r1
  433d34: f88d 3003    	strb.w	r3, [sp, #0x3]
  433d38: ab03         	add	r3, sp, #0xc
  433d3a: 4618         	mov	r0, r3
  433d3c: 4b10         	ldr	r3, [pc, #0x40]         @ 0x433d80 <NetworkManagerBridge::notifySessionRequestCompleted(bool)+0x54>
  433d3e: 447b         	add	r3, pc
  433d40: 4619         	mov	r1, r3
  433d42: 4b10         	ldr	r3, [pc, #0x40]         @ 0x433d84 <NetworkManagerBridge::notifySessionRequestCompleted(bool)+0x58>
  433d44: 447b         	add	r3, pc
  433d46: 461a         	mov	r2, r3
  433d48: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x433d88 <NetworkManagerBridge::notifySessionRequestCompleted(bool)+0x5c>
  433d4a: 447b         	add	r3, pc
  433d4c: f19e f9e8    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x19e3d0
  433d50: 4603         	mov	r3, r0
  433d52: f88d 300b    	strb.w	r3, [sp, #0xb]
  433d56: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  433d5a: f083 0301    	eor	r3, r3, #0x1
  433d5e: b2db         	uxtb	r3, r3
  433d60: 2b00         	cmp	r3, #0x0
  433d62: d10a         	bne	0x433d7a <NetworkManagerBridge::notifySessionRequestCompleted(bool)+0x4e> @ imm = #0x14
  433d64: 9803         	ldr	r0, [sp, #0xc]
  433d66: 9904         	ldr	r1, [sp, #0x10]
  433d68: 9a05         	ldr	r2, [sp, #0x14]
  433d6a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  433d6e: f7f7 fa2b    	bl	0x42b1c8 <_JNIEnv::CallStaticVoidMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x8baa
  433d72: 9b03         	ldr	r3, [sp, #0xc]
  433d74: 4618         	mov	r0, r3
  433d76: f19e fa97    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x19e52e
  433d7a: b007         	add	sp, #0x1c
  433d7c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x433d7f); words below are literal-pool data ---
  433d80: ad92         	add	r5, sp, #0x248
  433d82: 003a         	movs	r2, r7
  433d84: adbc         	add	r5, sp, #0x2f0
  433d86: 003a         	movs	r2, r7
  433d88: adce         	add	r5, sp, #0x338
  433d8a: 003a         	movs	r2, r7
