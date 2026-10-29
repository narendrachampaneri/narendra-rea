// TeamRow: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 8 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../TeamRow.cpp

// ==== TeamRow::create
//      file offset 0x3d3a3c (= ELF address; Ghidra 0x3e3a3c), 110 bytes, Thumb-2
  3d3a3c: b510         	push	{r4, lr}
  3d3a3e: b082         	sub	sp, #0x8
  3d3a40: 20f4         	movs	r0, #0xf4
  3d3a42: f3b3 ff8f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3b3f1e
  3d3a46: 4603         	mov	r3, r0
  3d3a48: 461c         	mov	r4, r3
  3d3a4a: 4620         	mov	r0, r4
  3d3a4c: f000 f82e    	bl	0x3d3aac <TeamRow::TeamRow()> @ imm = #0x5c
  3d3a50: 9401         	str	r4, [sp, #0x4]
  3d3a52: 9b01         	ldr	r3, [sp, #0x4]
  3d3a54: 2b00         	cmp	r3, #0x0
  3d3a56: d00a         	beq	0x3d3a6e <TeamRow::create()+0x32> @ imm = #0x14
  3d3a58: 9b01         	ldr	r3, [sp, #0x4]
  3d3a5a: 681b         	ldr	r3, [r3]
  3d3a5c: 3318         	adds	r3, #0x18
  3d3a5e: 681b         	ldr	r3, [r3]
  3d3a60: 9801         	ldr	r0, [sp, #0x4]
  3d3a62: 4798         	blx	r3
  3d3a64: 4603         	mov	r3, r0
  3d3a66: 2b00         	cmp	r3, #0x0
  3d3a68: d001         	beq	0x3d3a6e <TeamRow::create()+0x32> @ imm = #0x2
  3d3a6a: 2301         	movs	r3, #0x1
  3d3a6c: e000         	b	0x3d3a70 <TeamRow::create()+0x34> @ imm = #0x0
  3d3a6e: 2300         	movs	r3, #0x0
  3d3a70: 2b00         	cmp	r3, #0x0
  3d3a72: d005         	beq	0x3d3a80 <TeamRow::create()+0x44> @ imm = #0xa
  3d3a74: 9b01         	ldr	r3, [sp, #0x4]
  3d3a76: 4618         	mov	r0, r3
  3d3a78: f1c4 fa40    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1c4480
  3d3a7c: 9b01         	ldr	r3, [sp, #0x4]
  3d3a7e: e011         	b	0x3d3aa4 <TeamRow::create()+0x68> @ imm = #0x22
  3d3a80: 9b01         	ldr	r3, [sp, #0x4]
  3d3a82: 2b00         	cmp	r3, #0x0
  3d3a84: d005         	beq	0x3d3a92 <TeamRow::create()+0x56> @ imm = #0xa
  3d3a86: 9b01         	ldr	r3, [sp, #0x4]
  3d3a88: 681b         	ldr	r3, [r3]
  3d3a8a: 3308         	adds	r3, #0x8
  3d3a8c: 681b         	ldr	r3, [r3]
  3d3a8e: 9801         	ldr	r0, [sp, #0x4]
  3d3a90: 4798         	blx	r3
  3d3a92: 2300         	movs	r3, #0x0
  3d3a94: 9301         	str	r3, [sp, #0x4]
  3d3a96: 2300         	movs	r3, #0x0
  3d3a98: e004         	b	0x3d3aa4 <TeamRow::create()+0x68> @ imm = #0x8
  3d3a9a: 4620         	mov	r0, r4
  3d3a9c: f3b4 fb02    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b4604
  3d3aa0: f3b4 fb04    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3b4608
  3d3aa4: 4618         	mov	r0, r3
  3d3aa6: b002         	add	sp, #0x8
  3d3aa8: bd10         	pop	{r4, pc}

// ==== TeamRow::TeamRow
//      file offset 0x3d3aac (= ELF address; Ghidra 0x3e3aac), 44 bytes, Thumb-2
  3d3aac: b510         	push	{r4, lr}
  3d3aae: b082         	sub	sp, #0x8
  3d3ab0: 9001         	str	r0, [sp, #0x4]
  3d3ab2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3d3ad0 <TeamRow::TeamRow()+0x24>
  3d3ab4: 447c         	add	r4, pc
  3d3ab6: 9b01         	ldr	r3, [sp, #0x4]
  3d3ab8: 4618         	mov	r0, r3
  3d3aba: f1bb fdbd    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1bbb7a
  3d3abe: 9b01         	ldr	r3, [sp, #0x4]
  3d3ac0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3d3ad4 <TeamRow::TeamRow()+0x28>
  3d3ac2: 58a2         	ldr	r2, [r4, r2]
  3d3ac4: 3208         	adds	r2, #0x8
  3d3ac6: 601a         	str	r2, [r3]
  3d3ac8: 9b01         	ldr	r3, [sp, #0x4]
  3d3aca: 4618         	mov	r0, r3
  3d3acc: b002         	add	sp, #0x8
  3d3ace: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3d3acf); words below are literal-pool data ---
  3d3ad0: ef54 0055    	<unknown>
  3d3ad4: deb4         	udf	#0xb4
  3d3ad6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== TeamRow::init
//      file offset 0x3d3ad8 (= ELF address; Ghidra 0x3e3ad8), 472 bytes, Thumb-2
  3d3ad8: b530         	push	{r4, r5, lr}
  3d3ada: b089         	sub	sp, #0x24
  3d3adc: 9003         	str	r0, [sp, #0xc]
  3d3ade: 9b03         	ldr	r3, [sp, #0xc]
  3d3ae0: 4618         	mov	r0, r3
  3d3ae2: f1bb ffb3    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1bbf66
  3d3ae6: 4603         	mov	r3, r0
  3d3ae8: f88d 3017    	strb.w	r3, [sp, #0x17]
  3d3aec: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3d3af0: f083 0301    	eor	r3, r3, #0x1
  3d3af4: b2db         	uxtb	r3, r3
  3d3af6: 2b00         	cmp	r3, #0x0
  3d3af8: d001         	beq	0x3d3afe <TeamRow::init()+0x26> @ imm = #0x2
  3d3afa: 2300         	movs	r3, #0x0
  3d3afc: e0cf         	b	0x3d3c9e <TeamRow::init()+0x1c6> @ imm = #0x19e
  3d3afe: 9b03         	ldr	r3, [sp, #0xc]
  3d3b00: 2200         	movs	r2, #0x0
  3d3b02: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3d3b06: 9b03         	ldr	r3, [sp, #0xc]
  3d3b08: 2200         	movs	r2, #0x0
  3d3b0a: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3d3b0e: 4b65         	ldr	r3, [pc, #0x194]        @ 0x3d3ca4 <TeamRow::init()+0x1cc>
  3d3b10: 447b         	add	r3, pc
  3d3b12: 4618         	mov	r0, r3
  3d3b14: f204 fbf6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2047ec
  3d3b18: 4602         	mov	r2, r0
  3d3b1a: 9b03         	ldr	r3, [sp, #0xc]
  3d3b1c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3d3b20: 9b03         	ldr	r3, [sp, #0xc]
  3d3b22: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3b26: 4618         	mov	r0, r3
  3d3b28: f1c4 f9de    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c43bc
  3d3b2c: 9b03         	ldr	r3, [sp, #0xc]
  3d3b2e: 681b         	ldr	r3, [r3]
  3d3b30: 33cc         	adds	r3, #0xcc
  3d3b32: 681b         	ldr	r3, [r3]
  3d3b34: 9903         	ldr	r1, [sp, #0xc]
  3d3b36: 9a03         	ldr	r2, [sp, #0xc]
  3d3b38: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d3b3c: 4608         	mov	r0, r1
  3d3b3e: 4611         	mov	r1, r2
  3d3b40: 2200         	movs	r2, #0x0
  3d3b42: 4798         	blx	r3
  3d3b44: 9b03         	ldr	r3, [sp, #0xc]
  3d3b46: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3b4a: 681b         	ldr	r3, [r3]
  3d3b4c: 3340         	adds	r3, #0x40
  3d3b4e: 681b         	ldr	r3, [r3]
  3d3b50: 9a03         	ldr	r2, [sp, #0xc]
  3d3b52: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3d3b56: 4610         	mov	r0, r2
  3d3b58: f04f 517c    	mov.w	r1, #0x3f000000
  3d3b5c: 4798         	blx	r3
  3d3b5e: 9b03         	ldr	r3, [sp, #0xc]
  3d3b60: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3b64: 681b         	ldr	r3, [r3]
  3d3b66: 337c         	adds	r3, #0x7c
  3d3b68: 681c         	ldr	r4, [r3]
  3d3b6a: 9b03         	ldr	r3, [sp, #0xc]
  3d3b6c: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3d3b70: ab06         	add	r3, sp, #0x18
  3d3b72: 4618         	mov	r0, r3
  3d3b74: f04f 517c    	mov.w	r1, #0x3f000000
  3d3b78: f04f 527c    	mov.w	r2, #0x3f000000
  3d3b7c: f1bf f8b8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bf170
  3d3b80: ab06         	add	r3, sp, #0x18
  3d3b82: 4628         	mov	r0, r5
  3d3b84: 4619         	mov	r1, r3
  3d3b86: 47a0         	blx	r4
  3d3b88: 2320         	movs	r3, #0x20
  3d3b8a: 9300         	str	r3, [sp]
  3d3b8c: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3d3ca8 <TeamRow::init()+0x1d0>
  3d3b8e: 447b         	add	r3, pc
  3d3b90: 4618         	mov	r0, r3
  3d3b92: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3d3cac <TeamRow::init()+0x1d4>
  3d3b94: 447b         	add	r3, pc
  3d3b96: 4619         	mov	r1, r3
  3d3b98: 2220         	movs	r2, #0x20
  3d3b9a: 2320         	movs	r3, #0x20
  3d3b9c: f1d1 fbec    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x1d17d8
  3d3ba0: 4602         	mov	r2, r0
  3d3ba2: 9b03         	ldr	r3, [sp, #0xc]
  3d3ba4: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3d3ba8: 9b03         	ldr	r3, [sp, #0xc]
  3d3baa: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3bae: 4618         	mov	r0, r3
  3d3bb0: f1c4 f99a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1c4334
  3d3bb4: 9b03         	ldr	r3, [sp, #0xc]
  3d3bb6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3bba: 681b         	ldr	r3, [r3]
  3d3bbc: f503 73de    	add.w	r3, r3, #0x1bc
  3d3bc0: 681c         	ldr	r4, [r3]
  3d3bc2: 9b03         	ldr	r3, [sp, #0xc]
  3d3bc4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3bc8: 461d         	mov	r5, r3
  3d3bca: 20ff         	movs	r0, #0xff
  3d3bcc: 21ff         	movs	r1, #0xff
  3d3bce: 22ff         	movs	r2, #0xff
  3d3bd0: f7fe fffe    	bl	0x3d2bd0 <ScoreKeeper::getRankChange()+0x140> @ imm = #-0x1004
  3d3bd4: 4603         	mov	r3, r0
  3d3bd6: 461a         	mov	r2, r3
  3d3bd8: f88d 2018    	strb.w	r2, [sp, #0x18]
  3d3bdc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3d3be0: f88d 2019    	strb.w	r2, [sp, #0x19]
  3d3be4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3d3be8: f88d 301a    	strb.w	r3, [sp, #0x1a]
  3d3bec: ab06         	add	r3, sp, #0x18
  3d3bee: 4628         	mov	r0, r5
  3d3bf0: 4619         	mov	r1, r3
  3d3bf2: 47a0         	blx	r4
  3d3bf4: 9b03         	ldr	r3, [sp, #0xc]
  3d3bf6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3bfa: 4618         	mov	r0, r3
  3d3bfc: 2118         	movs	r1, #0x18
  3d3bfe: f1d2 f8c1    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x1d2182
  3d3c02: 9b03         	ldr	r3, [sp, #0xc]
  3d3c04: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3c08: 681b         	ldr	r3, [r3]
  3d3c0a: 3340         	adds	r3, #0x40
  3d3c0c: 681b         	ldr	r3, [r3]
  3d3c0e: 9a03         	ldr	r2, [sp, #0xc]
  3d3c10: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d3c14: 4610         	mov	r0, r2
  3d3c16: f04f 517c    	mov.w	r1, #0x3f000000
  3d3c1a: 4798         	blx	r3
  3d3c1c: 9b03         	ldr	r3, [sp, #0xc]
  3d3c1e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3c22: 681b         	ldr	r3, [r3]
  3d3c24: 334c         	adds	r3, #0x4c
  3d3c26: 681c         	ldr	r4, [r3]
  3d3c28: 9b03         	ldr	r3, [sp, #0xc]
  3d3c2a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3c2e: 461d         	mov	r5, r3
  3d3c30: ab06         	add	r3, sp, #0x18
  3d3c32: 4618         	mov	r0, r3
  3d3c34: f04f 0100    	mov.w	r1, #0x0
  3d3c38: f6cb 7180    	movt	r1, #0xbf80
  3d3c3c: f04f 0200    	mov.w	r2, #0x0
  3d3c40: f6cb 7280    	movt	r2, #0xbf80
  3d3c44: f1bf f854    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bf0a8
  3d3c48: ab06         	add	r3, sp, #0x18
  3d3c4a: 4628         	mov	r0, r5
  3d3c4c: 4619         	mov	r1, r3
  3d3c4e: 47a0         	blx	r4
  3d3c50: 9b03         	ldr	r3, [sp, #0xc]
  3d3c52: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3c56: 681b         	ldr	r3, [r3]
  3d3c58: 337c         	adds	r3, #0x7c
  3d3c5a: 681c         	ldr	r4, [r3]
  3d3c5c: 9b03         	ldr	r3, [sp, #0xc]
  3d3c5e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3c62: 461d         	mov	r5, r3
  3d3c64: ab06         	add	r3, sp, #0x18
  3d3c66: 4618         	mov	r0, r3
  3d3c68: f04f 517c    	mov.w	r1, #0x3f000000
  3d3c6c: f04f 527c    	mov.w	r2, #0x3f000000
  3d3c70: f1bf f83e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1bf07c
  3d3c74: ab06         	add	r3, sp, #0x18
  3d3c76: 4628         	mov	r0, r5
  3d3c78: 4619         	mov	r1, r3
  3d3c7a: 47a0         	blx	r4
  3d3c7c: 9b03         	ldr	r3, [sp, #0xc]
  3d3c7e: 681b         	ldr	r3, [r3]
  3d3c80: 33cc         	adds	r3, #0xcc
  3d3c82: 681b         	ldr	r3, [r3]
  3d3c84: 9903         	ldr	r1, [sp, #0xc]
  3d3c86: 9a03         	ldr	r2, [sp, #0xc]
  3d3c88: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d3c8c: 4608         	mov	r0, r1
  3d3c8e: 4611         	mov	r1, r2
  3d3c90: 2200         	movs	r2, #0x0
  3d3c92: 4798         	blx	r3
  3d3c94: 9b03         	ldr	r3, [sp, #0xc]
  3d3c96: 2200         	movs	r2, #0x0
  3d3c98: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  3d3c9c: 2301         	movs	r3, #0x1
  3d3c9e: 4618         	mov	r0, r3
  3d3ca0: b009         	add	sp, #0x24
  3d3ca2: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3d3ca3); words below are literal-pool data ---
  3d3ca4: 39dc         	subs	r1, #0xdc
  3d3ca6: 0040         	lsls	r0, r0, #0x1
  3d3ca8: 396e         	subs	r1, #0x6e
  3d3caa: 0040         	lsls	r0, r0, #0x1
  3d3cac: 396c         	subs	r1, #0x6c
  3d3cae: 0040         	lsls	r0, r0, #0x1

// ==== TeamRow::~TeamRow
//      file offset 0x3d3cb0 (= ELF address; Ghidra 0x3e3cb0), 92 bytes, Thumb-2
  3d3cb0: b500         	push	{lr}
  3d3cb2: b083         	sub	sp, #0xc
  3d3cb4: 9001         	str	r0, [sp, #0x4]
  3d3cb6: 4913         	ldr	r1, [pc, #0x4c]         @ 0x3d3d04 <TeamRow::~TeamRow()+0x54>
  3d3cb8: 4479         	add	r1, pc
  3d3cba: 9b01         	ldr	r3, [sp, #0x4]
  3d3cbc: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3d3d08 <TeamRow::~TeamRow()+0x58>
  3d3cbe: 588a         	ldr	r2, [r1, r2]
  3d3cc0: 3208         	adds	r2, #0x8
  3d3cc2: 601a         	str	r2, [r3]
  3d3cc4: 9b01         	ldr	r3, [sp, #0x4]
  3d3cc6: 4618         	mov	r0, r3
  3d3cc8: 2100         	movs	r1, #0x0
  3d3cca: f1bc fcbd    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x1bc97a
  3d3cce: 9b01         	ldr	r3, [sp, #0x4]
  3d3cd0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3cd4: 4618         	mov	r0, r3
  3d3cd6: f1c4 f8ef    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c41de
  3d3cda: 9b01         	ldr	r3, [sp, #0x4]
  3d3cdc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3ce0: 4618         	mov	r0, r3
  3d3ce2: f1c4 f8e9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1c41d2
  3d3ce6: 9b01         	ldr	r3, [sp, #0x4]
  3d3ce8: 4618         	mov	r0, r3
  3d3cea: f1bb fdab    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1bbb56
  3d3cee: 2300         	movs	r3, #0x0
  3d3cf0: 2b00         	cmp	r3, #0x0
  3d3cf2: d002         	beq	0x3d3cfa <TeamRow::~TeamRow()+0x4a> @ imm = #0x4
  3d3cf4: 9801         	ldr	r0, [sp, #0x4]
  3d3cf6: f3b4 f9d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b43aa
  3d3cfa: 9b01         	ldr	r3, [sp, #0x4]
  3d3cfc: 4618         	mov	r0, r3
  3d3cfe: b003         	add	sp, #0xc
  3d3d00: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3d3d03); words below are literal-pool data ---
  3d3d04: ed50 0055    	ldcl	p0, c0, [r0, #-340]
  3d3d08: deb4         	udf	#0xb4
  3d3d0a: ffff b500    	<unknown>

// ==== TeamRow::~TeamRow
//      file offset 0x3d3d0c (= ELF address; Ghidra 0x3e3d0c), 28 bytes, Thumb-2
  3d3d0c: b500         	push	{lr}
  3d3d0e: b083         	sub	sp, #0xc
  3d3d10: 9001         	str	r0, [sp, #0x4]
  3d3d12: 9801         	ldr	r0, [sp, #0x4]
  3d3d14: f7ff ffcc    	bl	0x3d3cb0 <TeamRow::~TeamRow()> @ imm = #-0x68
  3d3d18: 9801         	ldr	r0, [sp, #0x4]
  3d3d1a: f3b4 f9c3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3b4386
  3d3d1e: 9b01         	ldr	r3, [sp, #0x4]
  3d3d20: 4618         	mov	r0, r3
  3d3d22: b003         	add	sp, #0xc
  3d3d24: f85d fb04    	ldr	pc, [sp], #4

// ==== TeamRow::setKillScore
//      file offset 0x3d3d28 (= ELF address; Ghidra 0x3e3d28), 68 bytes, Thumb-2
  3d3d28: b530         	push	{r4, r5, lr}
  3d3d2a: b083         	sub	sp, #0xc
  3d3d2c: 9001         	str	r0, [sp, #0x4]
  3d3d2e: 9100         	str	r1, [sp]
  3d3d30: 9800         	ldr	r0, [sp]
  3d3d32: f3e1 fae5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e15ca
  3d3d36: 4603         	mov	r3, r0
  3d3d38: 4618         	mov	r0, r3
  3d3d3a: f702 e976    	blx	0x2d6028 <.plt+0x158>   @ imm = #-0xfdd14
  3d3d3e: 4602         	mov	r2, r0
  3d3d40: 9b01         	ldr	r3, [sp, #0x4]
  3d3d42: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3d3d46: 9b01         	ldr	r3, [sp, #0x4]
  3d3d48: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3d4c: 681b         	ldr	r3, [r3]
  3d3d4e: f503 73fc    	add.w	r3, r3, #0x1f8
  3d3d52: 681c         	ldr	r4, [r3]
  3d3d54: 9b01         	ldr	r3, [sp, #0x4]
  3d3d56: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3d3d5a: 9800         	ldr	r0, [sp]
  3d3d5c: f3e1 fad0    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3e15a0
  3d3d60: 4603         	mov	r3, r0
  3d3d62: 4628         	mov	r0, r5
  3d3d64: 4619         	mov	r1, r3
  3d3d66: 47a0         	blx	r4
  3d3d68: b003         	add	sp, #0xc
  3d3d6a: bd30         	pop	{r4, r5, pc}

// ==== TeamRow::setColor
//      file offset 0x3d3d6c (= ELF address; Ghidra 0x3e3d6c), 42 bytes, Thumb-2
  3d3d6c: b500         	push	{lr}
  3d3d6e: b083         	sub	sp, #0xc
  3d3d70: 9001         	str	r0, [sp, #0x4]
  3d3d72: 9100         	str	r1, [sp]
  3d3d74: 9b01         	ldr	r3, [sp, #0x4]
  3d3d76: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3d7a: 681b         	ldr	r3, [r3]
  3d3d7c: f503 73de    	add.w	r3, r3, #0x1bc
  3d3d80: 681b         	ldr	r3, [r3]
  3d3d82: 9a01         	ldr	r2, [sp, #0x4]
  3d3d84: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3d3d88: 466a         	mov	r2, sp
  3d3d8a: 4608         	mov	r0, r1
  3d3d8c: 4611         	mov	r1, r2
  3d3d8e: 4798         	blx	r3
  3d3d90: b003         	add	sp, #0xc
  3d3d92: f85d fb04    	ldr	pc, [sp], #4

// ==== TeamRow::setOpacity
//      file offset 0x3d3d98 (= ELF address; Ghidra 0x3e3d98), 76 bytes, Thumb-2
  3d3d98: b500         	push	{lr}
  3d3d9a: b083         	sub	sp, #0xc
  3d3d9c: 9001         	str	r0, [sp, #0x4]
  3d3d9e: 9100         	str	r1, [sp]
  3d3da0: 9b01         	ldr	r3, [sp, #0x4]
  3d3da2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3d3da6: 681b         	ldr	r3, [r3]
  3d3da8: f503 73d2    	add.w	r3, r3, #0x1a4
  3d3dac: 681b         	ldr	r3, [r3]
  3d3dae: 9a01         	ldr	r2, [sp, #0x4]
  3d3db0: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3d3db4: 4611         	mov	r1, r2
  3d3db6: 9a00         	ldr	r2, [sp]
  3d3db8: b2d2         	uxtb	r2, r2
  3d3dba: 4608         	mov	r0, r1
  3d3dbc: 4611         	mov	r1, r2
  3d3dbe: 4798         	blx	r3
  3d3dc0: 9b01         	ldr	r3, [sp, #0x4]
  3d3dc2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3d3dc6: 681b         	ldr	r3, [r3]
  3d3dc8: f503 73d2    	add.w	r3, r3, #0x1a4
  3d3dcc: 681b         	ldr	r3, [r3]
  3d3dce: 9a01         	ldr	r2, [sp, #0x4]
  3d3dd0: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  3d3dd4: 9a00         	ldr	r2, [sp]
  3d3dd6: b2d2         	uxtb	r2, r2
  3d3dd8: 4608         	mov	r0, r1
  3d3dda: 4611         	mov	r1, r2
  3d3ddc: 4798         	blx	r3
  3d3dde: b003         	add	sp, #0xc
  3d3de0: f85d fb04    	ldr	pc, [sp], #4
