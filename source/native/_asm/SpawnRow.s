// SpawnRow: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SpawnRow.cpp

// ==== SpawnRow::SpawnRow
//      file offset 0x3eb934 (= ELF address; Ghidra 0x3fb934), 64 bytes, Thumb-2
  3eb934: b510         	push	{r4, lr}
  3eb936: b082         	sub	sp, #0x8
  3eb938: 9001         	str	r0, [sp, #0x4]
  3eb93a: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x3eb96c <SpawnRow::SpawnRow()+0x38>
  3eb93c: 447c         	add	r4, pc
  3eb93e: 9b01         	ldr	r3, [sp, #0x4]
  3eb940: 4618         	mov	r0, r3
  3eb942: f1ac fa13    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1ac426
  3eb946: 9b01         	ldr	r3, [sp, #0x4]
  3eb948: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3eb970 <SpawnRow::SpawnRow()+0x3c>
  3eb94a: 58a2         	ldr	r2, [r4, r2]
  3eb94c: 3208         	adds	r2, #0x8
  3eb94e: 601a         	str	r2, [r3]
  3eb950: 9801         	ldr	r0, [sp, #0x4]
  3eb952: f000 f811    	bl	0x3eb978 <SpawnRow::init()> @ imm = #0x22
  3eb956: 9b01         	ldr	r3, [sp, #0x4]
  3eb958: e005         	b	0x3eb966 <SpawnRow::SpawnRow()+0x32> @ imm = #0xa
  3eb95a: 9b01         	ldr	r3, [sp, #0x4]
  3eb95c: 4618         	mov	r0, r3
  3eb95e: f1ac fa37    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1ac46e
  3eb962: f39c fba3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c746
  3eb966: 4618         	mov	r0, r3
  3eb968: b002         	add	sp, #0x8
  3eb96a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3eb96b); words below are literal-pool data ---
  3eb96c: 70cc         	strb	r4, [r1, #0x3]
  3eb96e: 0054         	lsls	r4, r2, #0x1
  3eb970: df14         	svc	#0x14
  3eb972: ffff 0000    	<unknown>

// ==== SpawnRow::init
//      file offset 0x3eb978 (= ELF address; Ghidra 0x3fb978), 56 bytes, Thumb-2
  3eb978: b510         	push	{r4, lr}
  3eb97a: b086         	sub	sp, #0x18
  3eb97c: 9005         	str	r0, [sp, #0x14]
  3eb97e: 9b05         	ldr	r3, [sp, #0x14]
  3eb980: 2200         	movs	r2, #0x0
  3eb982: 615a         	str	r2, [r3, #0x14]
  3eb984: 9c05         	ldr	r4, [sp, #0x14]
  3eb986: 466b         	mov	r3, sp
  3eb988: 4618         	mov	r0, r3
  3eb98a: ed9f 0b07    	vldr	d0, [pc, #28]           @ 0x3eb9a8 <SpawnRow::init()+0x30>
  3eb98e: ed9f 1b06    	vldr	d1, [pc, #24]           @ 0x3eb9a8 <SpawnRow::init()+0x30>
  3eb992: f7ff f875    	bl	0x3eaa80 <SoldierHostController::getBackupNadeWeapon()+0x184> @ imm = #-0xf16
  3eb996: 3418         	adds	r4, #0x18
  3eb998: 466b         	mov	r3, sp
  3eb99a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3eb99c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3eb9a0: 2301         	movs	r3, #0x1
  3eb9a2: 4618         	mov	r0, r3
  3eb9a4: b006         	add	sp, #0x18
  3eb9a6: bd10         	pop	{r4, pc}

// ==== SpawnRow::~SpawnRow
//      file offset 0x3eb9b0 (= ELF address; Ghidra 0x3fb9b0), 60 bytes, Thumb-2
  3eb9b0: b500         	push	{lr}
  3eb9b2: b083         	sub	sp, #0xc
  3eb9b4: 9001         	str	r0, [sp, #0x4]
  3eb9b6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3eb9e4 <SpawnRow::~SpawnRow()+0x34>
  3eb9b8: 4479         	add	r1, pc
  3eb9ba: 9b01         	ldr	r3, [sp, #0x4]
  3eb9bc: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3eb9e8 <SpawnRow::~SpawnRow()+0x38>
  3eb9be: 588a         	ldr	r2, [r1, r2]
  3eb9c0: 3208         	adds	r2, #0x8
  3eb9c2: 601a         	str	r2, [r3]
  3eb9c4: 9b01         	ldr	r3, [sp, #0x4]
  3eb9c6: 4618         	mov	r0, r3
  3eb9c8: f1ac fa02    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1ac404
  3eb9cc: 2300         	movs	r3, #0x0
  3eb9ce: 2b00         	cmp	r3, #0x0
  3eb9d0: d002         	beq	0x3eb9d8 <SpawnRow::~SpawnRow()+0x28> @ imm = #0x4
  3eb9d2: 9801         	ldr	r0, [sp, #0x4]
  3eb9d4: f39c fb66    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c6cc
  3eb9d8: 9b01         	ldr	r3, [sp, #0x4]
  3eb9da: 4618         	mov	r0, r3
  3eb9dc: b003         	add	sp, #0xc
  3eb9de: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3eb9e1); words below are literal-pool data ---
  3eb9e2: bf00         	nop
  3eb9e4: 7050         	strb	r0, [r2, #0x1]
  3eb9e6: 0054         	lsls	r4, r2, #0x1
  3eb9e8: df14         	svc	#0x14
  3eb9ea: ffff b500    	<unknown>

// ==== SpawnRow::~SpawnRow
//      file offset 0x3eb9ec (= ELF address; Ghidra 0x3fb9ec), 28 bytes, Thumb-2
  3eb9ec: b500         	push	{lr}
  3eb9ee: b083         	sub	sp, #0xc
  3eb9f0: 9001         	str	r0, [sp, #0x4]
  3eb9f2: 9801         	ldr	r0, [sp, #0x4]
  3eb9f4: f7ff ffdc    	bl	0x3eb9b0 <SpawnRow::~SpawnRow()> @ imm = #-0x48
  3eb9f8: 9801         	ldr	r0, [sp, #0x4]
  3eb9fa: f39c fb53    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c6a6
  3eb9fe: 9b01         	ldr	r3, [sp, #0x4]
  3eba00: 4618         	mov	r0, r3
  3eba02: b003         	add	sp, #0xc
  3eba04: f85d fb04    	ldr	pc, [sp], #4
