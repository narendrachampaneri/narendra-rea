// SAW: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SAW.cpp

// ==== SAW::SAW
//      file offset 0x3caad0 (= ELF address; Ghidra 0x3daad0), 44 bytes, Thumb-2
  3caad0: b510         	push	{r4, lr}
  3caad2: b082         	sub	sp, #0x8
  3caad4: 9001         	str	r0, [sp, #0x4]
  3caad6: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3caaf4 <SAW::SAW()+0x24>
  3caad8: 447c         	add	r4, pc
  3caada: 9b01         	ldr	r3, [sp, #0x4]
  3caadc: 4618         	mov	r0, r3
  3caade: f04a fa63    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x4a4c6
  3caae2: 9b01         	ldr	r3, [sp, #0x4]
  3caae4: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3caaf8 <SAW::SAW()+0x28>
  3caae6: 58a2         	ldr	r2, [r4, r2]
  3caae8: 3208         	adds	r2, #0x8
  3caaea: 601a         	str	r2, [r3]
  3caaec: 9b01         	ldr	r3, [sp, #0x4]
  3caaee: 4618         	mov	r0, r3
  3caaf0: b002         	add	sp, #0x8
  3caaf2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3caaf3); words below are literal-pool data ---
  3caaf4: 7f30         	ldrb	r0, [r6, #0x1c]
  3caaf6: 0056         	lsls	r6, r2, #0x1
  3caaf8: de8c         	udf	#0x8c
  3caafa: ffff b500    	<unknown>

// ==== SAW::init
//      file offset 0x3caafc (= ELF address; Ghidra 0x3daafc), 168 bytes, Thumb-2
  3caafc: b500         	push	{lr}
  3caafe: b085         	sub	sp, #0x14
  3cab00: 9001         	str	r0, [sp, #0x4]
  3cab02: 9b01         	ldr	r3, [sp, #0x4]
  3cab04: 4618         	mov	r0, r3
  3cab06: f04a fa73    	bl	0x414ff0 <Weapon::init()> @ imm = #0x4a4e6
  3cab0a: 4603         	mov	r3, r0
  3cab0c: f88d 300f    	strb.w	r3, [sp, #0xf]
  3cab10: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3cab14: f083 0301    	eor	r3, r3, #0x1
  3cab18: b2db         	uxtb	r3, r3
  3cab1a: 2b00         	cmp	r3, #0x0
  3cab1c: d001         	beq	0x3cab22 <SAW::init()+0x26> @ imm = #0x2
  3cab1e: 2300         	movs	r3, #0x0
  3cab20: e039         	b	0x3cab96 <SAW::init()+0x9a> @ imm = #0x72
  3cab22: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3caba0 <SAW::init()+0xa4>
  3cab24: 447b         	add	r3, pc
  3cab26: 4618         	mov	r0, r3
  3cab28: f20d fbec    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x20d7d8
  3cab2c: 4602         	mov	r2, r0
  3cab2e: 9b01         	ldr	r3, [sp, #0x4]
  3cab30: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3cab34: 9b01         	ldr	r3, [sp, #0x4]
  3cab36: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cab3a: 4618         	mov	r0, r3
  3cab3c: f1cd f9d4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1cd3a8
  3cab40: 9b01         	ldr	r3, [sp, #0x4]
  3cab42: 681b         	ldr	r3, [r3]
  3cab44: f503 73f0    	add.w	r3, r3, #0x1e0
  3cab48: 681b         	ldr	r3, [r3]
  3cab4a: 9801         	ldr	r0, [sp, #0x4]
  3cab4c: 4798         	blx	r3
  3cab4e: 9b01         	ldr	r3, [sp, #0x4]
  3cab50: 2200         	movs	r2, #0x0
  3cab52: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3cab56: 9b01         	ldr	r3, [sp, #0x4]
  3cab58: 681b         	ldr	r3, [r3]
  3cab5a: 33cc         	adds	r3, #0xcc
  3cab5c: 681b         	ldr	r3, [r3]
  3cab5e: 9901         	ldr	r1, [sp, #0x4]
  3cab60: 9a01         	ldr	r2, [sp, #0x4]
  3cab62: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cab66: 4608         	mov	r0, r1
  3cab68: 4611         	mov	r1, r2
  3cab6a: 2200         	movs	r2, #0x0
  3cab6c: 4798         	blx	r3
  3cab6e: 9b01         	ldr	r3, [sp, #0x4]
  3cab70: 2218         	movs	r2, #0x18
  3cab72: f8c3 2188    	str.w	r2, [r3, #0x188]
  3cab76: 9b01         	ldr	r3, [sp, #0x4]
  3cab78: f04f 0200    	mov.w	r2, #0x0
  3cab7c: f8c3 2110    	str.w	r2, [r3, #0x110]
  3cab80: 9b01         	ldr	r3, [sp, #0x4]
  3cab82: f04f 0200    	mov.w	r2, #0x0
  3cab86: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3cab8a: 9b01         	ldr	r3, [sp, #0x4]
  3cab8c: f04f 0200    	mov.w	r2, #0x0
  3cab90: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3cab94: 2301         	movs	r3, #0x1
  3cab96: 4618         	mov	r0, r3
  3cab98: b005         	add	sp, #0x14
  3cab9a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cab9d); words below are literal-pool data ---
  3cab9e: bf00         	nop
  3caba0: bd48         	pop	{r3, r6, pc}
  3caba2: 0040         	lsls	r0, r0, #0x1

// ==== SAW::~SAW
//      file offset 0x3caba4 (= ELF address; Ghidra 0x3daba4), 124 bytes, Thumb-2
  3caba4: b500         	push	{lr}
  3caba6: b083         	sub	sp, #0xc
  3caba8: 9001         	str	r0, [sp, #0x4]
  3cabaa: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3cac18 <SAW::~SAW()+0x74>
  3cabac: 4479         	add	r1, pc
  3cabae: 9b01         	ldr	r3, [sp, #0x4]
  3cabb0: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3cac1c <SAW::~SAW()+0x78>
  3cabb2: 588a         	ldr	r2, [r1, r2]
  3cabb4: 3208         	adds	r2, #0x8
  3cabb6: 601a         	str	r2, [r3]
  3cabb8: 9b01         	ldr	r3, [sp, #0x4]
  3cabba: 4618         	mov	r0, r3
  3cabbc: f1c5 fd36    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1c5a6c
  3cabc0: 9b01         	ldr	r3, [sp, #0x4]
  3cabc2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cabc6: 4618         	mov	r0, r3
  3cabc8: f1cd f976    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1cd2ec
  3cabcc: 9b01         	ldr	r3, [sp, #0x4]
  3cabce: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cabd2: 2b00         	cmp	r3, #0x0
  3cabd4: d010         	beq	0x3cabf8 <SAW::~SAW()+0x54> @ imm = #0x20
  3cabd6: 9b01         	ldr	r3, [sp, #0x4]
  3cabd8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cabdc: 681b         	ldr	r3, [r3]
  3cabde: 33e8         	adds	r3, #0xe8
  3cabe0: 681b         	ldr	r3, [r3]
  3cabe2: 9a01         	ldr	r2, [sp, #0x4]
  3cabe4: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cabe8: 4610         	mov	r0, r2
  3cabea: 4798         	blx	r3
  3cabec: 9b01         	ldr	r3, [sp, #0x4]
  3cabee: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cabf2: 4618         	mov	r0, r3
  3cabf4: f1cd f960    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1cd2c0
  3cabf8: 9b01         	ldr	r3, [sp, #0x4]
  3cabfa: 4618         	mov	r0, r3
  3cabfc: f04a faf8    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x4a5f0
  3cac00: 2300         	movs	r3, #0x0
  3cac02: 2b00         	cmp	r3, #0x0
  3cac04: d002         	beq	0x3cac0c <SAW::~SAW()+0x68> @ imm = #0x4
  3cac06: 9801         	ldr	r0, [sp, #0x4]
  3cac08: f3bd fa4c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bd498
  3cac0c: 9b01         	ldr	r3, [sp, #0x4]
  3cac0e: 4618         	mov	r0, r3
  3cac10: b003         	add	sp, #0xc
  3cac12: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cac15); words below are literal-pool data ---
  3cac16: bf00         	nop
  3cac18: 7e5c         	ldrb	r4, [r3, #0x19]
  3cac1a: 0056         	lsls	r6, r2, #0x1
  3cac1c: de8c         	udf	#0x8c
  3cac1e: ffff b500    	<unknown>

// ==== SAW::~SAW
//      file offset 0x3cac20 (= ELF address; Ghidra 0x3dac20), 28 bytes, Thumb-2
  3cac20: b500         	push	{lr}
  3cac22: b083         	sub	sp, #0xc
  3cac24: 9001         	str	r0, [sp, #0x4]
  3cac26: 9801         	ldr	r0, [sp, #0x4]
  3cac28: f7ff ffbc    	bl	0x3caba4 <SAW::~SAW()>  @ imm = #-0x88
  3cac2c: 9801         	ldr	r0, [sp, #0x4]
  3cac2e: f3bd fa39    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3bd472
  3cac32: 9b01         	ldr	r3, [sp, #0x4]
  3cac34: 4618         	mov	r0, r3
  3cac36: b003         	add	sp, #0xc
  3cac38: f85d fb04    	ldr	pc, [sp], #4

// ==== SAW::initBody
//      file offset 0x3cac40 (= ELF address; Ghidra 0x3dac40), 296 bytes, Thumb-2
  3cac40: b530         	push	{r4, r5, lr}
  3cac42: b08d         	sub	sp, #0x34
  3cac44: 9009         	str	r0, [sp, #0x24]
  3cac46: f64c 43cd    	movw	r3, #0xcccd
  3cac4a: f6c3 53cc    	movt	r3, #0x3dcc
  3cac4e: 930b         	str	r3, [sp, #0x2c]
  3cac50: eddd 7a0b    	vldr	s15, [sp, #44]
  3cac54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cac58: ec51 0b17    	vmov	r0, r1, d7
  3cac5c: f04f 0200    	mov.w	r2, #0x0
  3cac60: f04f 0300    	mov.w	r3, #0x0
  3cac64: f2c4 0334    	movt	r3, #0x4034
  3cac68: f308 faf0    	bl	0x6d324c <cpBodyNew>    @ imm = #0x3085e0
  3cac6c: 4602         	mov	r2, r0
  3cac6e: 9b09         	ldr	r3, [sp, #0x24]
  3cac70: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3cac74: 9b09         	ldr	r3, [sp, #0x24]
  3cac76: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cac7a: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x3cad60 <SAW::initBody()+0x120>
  3cac7c: 447a         	add	r2, pc
  3cac7e: 601a         	str	r2, [r3]
  3cac80: 9b09         	ldr	r3, [sp, #0x24]
  3cac82: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cac86: 9a09         	ldr	r2, [sp, #0x24]
  3cac88: f8c3 2090    	str.w	r2, [r3, #0x90]
  3cac8c: 9909         	ldr	r1, [sp, #0x24]
  3cac8e: f04f 0200    	mov.w	r2, #0x0
  3cac92: f04f 0300    	mov.w	r3, #0x0
  3cac96: f6c3 73f0    	movt	r3, #0x3ff0
  3cac9a: e9c1 233c    	strd	r2, r3, [r1, #240]
  3cac9e: 9c09         	ldr	r4, [sp, #0x24]
  3caca0: ab04         	add	r3, sp, #0x10
  3caca2: 4618         	mov	r0, r3
  3caca4: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x3cad48 <SAW::initBody()+0x108>
  3caca8: ed9f 1b27    	vldr	d1, [pc, #156]          @ 0x3cad48 <SAW::initBody()+0x108>
  3cacac: f7fe fe42    	bl	0x3c9934 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x1ec> @ imm = #-0x137c
  3cacb0: 34f8         	adds	r4, #0xf8
  3cacb2: ab04         	add	r3, sp, #0x10
  3cacb4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cacb6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3cacba: 9b09         	ldr	r3, [sp, #0x24]
  3cacbc: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  3cacc0: a323         	adr	r3, #140 <SAW::initBody()+0xa7>
  3cacc2: e9d3 2300    	ldrd	r2, r3, [r3]
  3cacc6: e9c1 2320    	strd	r2, r3, [r1, #128]
  3cacca: 9b09         	ldr	r3, [sp, #0x24]
  3caccc: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3cacd0: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3cad64 <SAW::initBody()+0x124>
  3cacd2: 447b         	add	r3, pc
  3cacd4: 466c         	mov	r4, sp
  3cacd6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cacd8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3cacdc: 4628         	mov	r0, r5
  3cacde: f04f 0200    	mov.w	r2, #0x0
  3cace2: f04f 0300    	mov.w	r3, #0x0
  3cace6: f2c4 0324    	movt	r3, #0x4024
  3cacea: f30a fa39    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x30a472
  3cacee: 4602         	mov	r2, r0
  3cacf0: 9b09         	ldr	r3, [sp, #0x24]
  3cacf2: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3cacf6: 9b09         	ldr	r3, [sp, #0x24]
  3cacf8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3cacfc: 2202         	movs	r2, #0x2
  3cacfe: 655a         	str	r2, [r3, #0x54]
  3cad00: 9b09         	ldr	r3, [sp, #0x24]
  3cad02: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3cad06: 2202         	movs	r2, #0x2
  3cad08: 65da         	str	r2, [r3, #0x5c]
  3cad0a: 9b09         	ldr	r3, [sp, #0x24]
  3cad0c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3cad10: 2202         	movs	r2, #0x2
  3cad12: 659a         	str	r2, [r3, #0x58]
  3cad14: 9b09         	ldr	r3, [sp, #0x24]
  3cad16: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  3cad1a: f04f 0200    	mov.w	r2, #0x0
  3cad1e: f04f 0300    	mov.w	r3, #0x0
  3cad22: f6c3 73f0    	movt	r3, #0x3ff0
  3cad26: e9c1 230c    	strd	r2, r3, [r1, #48]
  3cad2a: 9b09         	ldr	r3, [sp, #0x24]
  3cad2c: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  3cad30: a309         	adr	r3, #36 <SAW::initBody()+0xfd>
  3cad32: e9d3 2300    	ldrd	r2, r3, [r3]
  3cad36: e9c1 230e    	strd	r2, r3, [r1, #56]
  3cad3a: 9b09         	ldr	r3, [sp, #0x24]
  3cad3c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3cad40: 9a09         	ldr	r2, [sp, #0x24]
  3cad42: 651a         	str	r2, [r3, #0x50]
  3cad44: b00d         	add	sp, #0x34
  3cad46: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cad47); words below are literal-pool data ---
  3cad54: c000         	<unknown>
  3cad56: 4072         	eors	r2, r6
  3cad58: 0000         	movs	r0, r0
  3cad5a: a000         	adr	r0, #0 <SAW::initBody()+0x11e>
  3cad5c: 9999         	ldr	r1, [sp, #0x264]
  3cad5e: 3fa9         	subs	r7, #0xa9
  3cad60: fcc5 ffff    	stc2l	p15, c15, [r5], {255}
  3cad64: bc52         	pop	{r1, r4, r6}
  3cad66: 0040         	lsls	r0, r0, #0x1

// ==== SAW::updateEffects
//      file offset 0x3cad68 (= ELF address; Ghidra 0x3dad68), 412 bytes, Thumb-2
  3cad68: b570         	push	{r4, r5, r6, lr}
  3cad6a: b088         	sub	sp, #0x20
  3cad6c: 9005         	str	r0, [sp, #0x14]
  3cad6e: 9104         	str	r1, [sp, #0x10]
  3cad70: 4c60         	ldr	r4, [pc, #0x180]        @ 0x3caef4 <SAW::updateEffects(float)+0x18c>
  3cad72: 447c         	add	r4, pc
  3cad74: 9b05         	ldr	r3, [sp, #0x14]
  3cad76: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cad7a: 2b00         	cmp	r3, #0x0
  3cad7c: d139         	bne	0x3cadf2 <SAW::updateEffects(float)+0x8a> @ imm = #0x72
  3cad7e: 20ff         	movs	r0, #0xff
  3cad80: 21ff         	movs	r1, #0xff
  3cad82: 22ff         	movs	r2, #0xff
  3cad84: f7fe fd56    	bl	0x3c9834 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0xec> @ imm = #-0x1554
  3cad88: 4603         	mov	r3, r0
  3cad8a: 461a         	mov	r2, r3
  3cad8c: f88d 201c    	strb.w	r2, [sp, #0x1c]
  3cad90: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3cad94: f88d 201d    	strb.w	r2, [sp, #0x1d]
  3cad98: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3cad9c: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3cada0: ab07         	add	r3, sp, #0x1c
  3cada2: 4a55         	ldr	r2, [pc, #0x154]        @ 0x3caef8 <SAW::updateEffects(float)+0x190>
  3cada4: 447a         	add	r2, pc
  3cada6: 9200         	str	r2, [sp]
  3cada8: f04f 507c    	mov.w	r0, #0x3f000000
  3cadac: f04f 517e    	mov.w	r1, #0x3f800000
  3cadb0: f04f 0200    	mov.w	r2, #0x0
  3cadb4: f2c4 0240    	movt	r2, #0x4040
  3cadb8: f1ee ffbc    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x1eef78
  3cadbc: 4602         	mov	r2, r0
  3cadbe: 9b05         	ldr	r3, [sp, #0x14]
  3cadc0: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3cadc4: 9b05         	ldr	r3, [sp, #0x14]
  3cadc6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cadca: 4618         	mov	r0, r3
  3cadcc: f1cd f88c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1cd118
  3cadd0: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3caefc <SAW::updateEffects(float)+0x194>
  3cadd2: 58e3         	ldr	r3, [r4, r3]
  3cadd4: 681b         	ldr	r3, [r3]
  3cadd6: 681b         	ldr	r3, [r3]
  3cadd8: 33cc         	adds	r3, #0xcc
  3cadda: 681b         	ldr	r3, [r3]
  3caddc: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x3caefc <SAW::updateEffects(float)+0x194>
  3cadde: 58a2         	ldr	r2, [r4, r2]
  3cade0: 6812         	ldr	r2, [r2]
  3cade2: 4611         	mov	r1, r2
  3cade4: 9a05         	ldr	r2, [sp, #0x14]
  3cade6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cadea: 4608         	mov	r0, r1
  3cadec: 4611         	mov	r1, r2
  3cadee: 2203         	movs	r2, #0x3
  3cadf0: 4798         	blx	r3
  3cadf2: 9b05         	ldr	r3, [sp, #0x14]
  3cadf4: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cadf8: 681b         	ldr	r3, [r3]
  3cadfa: f503 73f2    	add.w	r3, r3, #0x1e4
  3cadfe: 681b         	ldr	r3, [r3]
  3cae00: 9a05         	ldr	r2, [sp, #0x14]
  3cae02: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3cae06: 4610         	mov	r0, r2
  3cae08: f04f 0100    	mov.w	r1, #0x0
  3cae0c: f2c4 0140    	movt	r1, #0x4040
  3cae10: 4798         	blx	r3
  3cae12: 9b05         	ldr	r3, [sp, #0x14]
  3cae14: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3cae18: 681b         	ldr	r3, [r3]
  3cae1a: 334c         	adds	r3, #0x4c
  3cae1c: 681d         	ldr	r5, [r3]
  3cae1e: 9b05         	ldr	r3, [sp, #0x14]
  3cae20: f8d3 61f0    	ldr.w	r6, [r3, #0x1f0]
  3cae24: 9b05         	ldr	r3, [sp, #0x14]
  3cae26: 681b         	ldr	r3, [r3]
  3cae28: 3350         	adds	r3, #0x50
  3cae2a: 681b         	ldr	r3, [r3]
  3cae2c: 9a05         	ldr	r2, [sp, #0x14]
  3cae2e: 4610         	mov	r0, r2
  3cae30: 4798         	blx	r3
  3cae32: 4603         	mov	r3, r0
  3cae34: 4630         	mov	r0, r6
  3cae36: 4619         	mov	r1, r3
  3cae38: 47a8         	blx	r5
  3cae3a: 9b05         	ldr	r3, [sp, #0x14]
  3cae3c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cae40: 681b         	ldr	r3, [r3]
  3cae42: 3398         	adds	r3, #0x98
  3cae44: 681d         	ldr	r5, [r3]
  3cae46: 9b05         	ldr	r3, [sp, #0x14]
  3cae48: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cae4c: 9b05         	ldr	r3, [sp, #0x14]
  3cae4e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cae52: 681b         	ldr	r3, [r3]
  3cae54: 339c         	adds	r3, #0x9c
  3cae56: 681b         	ldr	r3, [r3]
  3cae58: 9a05         	ldr	r2, [sp, #0x14]
  3cae5a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cae5e: 4610         	mov	r0, r2
  3cae60: 4798         	blx	r3
  3cae62: ee06 0a90    	vmov	s13, r0
  3cae66: ed9d 7a04    	vldr	s14, [sp, #16]
  3cae6a: eddf 7a21    	vldr	s15, [pc, #132]         @ 0x3caef0 <SAW::updateEffects(float)+0x188>
  3cae6e: ee67 7a27    	vmul.f32	s15, s14, s15
  3cae72: ee76 7ae7    	vsub.f32	s15, s13, s15
  3cae76: 4630         	mov	r0, r6
  3cae78: ee17 1a90    	vmov	r1, s15
  3cae7c: 47a8         	blx	r5
  3cae7e: 9b05         	ldr	r3, [sp, #0x14]
  3cae80: ed93 7a7d    	vldr	s14, [r3, #500]
  3cae84: eddd 7a04    	vldr	s15, [sp, #16]
  3cae88: ee77 7a27    	vadd.f32	s15, s14, s15
  3cae8c: 9b05         	ldr	r3, [sp, #0x14]
  3cae8e: edc3 7a7d    	vstr	s15, [r3, #500]
  3cae92: 9b05         	ldr	r3, [sp, #0x14]
  3cae94: edd3 7a7d    	vldr	s15, [r3, #500]
  3cae98: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cae9c: ed9f 7b12    	vldr	d7, [pc, #72]           @ 0x3caee8 <SAW::updateEffects(float)+0x180>
  3caea0: eeb4 6bc7    	vcmpe.f64	d6, d7
  3caea4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3caea8: dd1c         	ble	0x3caee4 <SAW::updateEffects(float)+0x17c> @ imm = #0x38
  3caeaa: 9b05         	ldr	r3, [sp, #0x14]
  3caeac: f04f 0200    	mov.w	r2, #0x0
  3caeb0: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3caeb4: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3caf00 <SAW::updateEffects(float)+0x198>
  3caeb6: 58e3         	ldr	r3, [r4, r3]
  3caeb8: 681c         	ldr	r4, [r3]
  3caeba: 9b05         	ldr	r3, [sp, #0x14]
  3caebc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3caec0: f04f 527c    	mov.w	r2, #0x3f000000
  3caec4: 9202         	str	r2, [sp, #0x8]
  3caec6: f04f 4280    	mov.w	r2, #0x40000000
  3caeca: 9203         	str	r2, [sp, #0xc]
  3caecc: 466a         	mov	r2, sp
  3caece: f103 0130    	add.w	r1, r3, #0x30
  3caed2: c903         	ldm	r1, {r0, r1}
  3caed4: e882 0003    	stm.w	r2, {r0, r1}
  3caed8: 3328         	adds	r3, #0x28
  3caeda: cb0c         	ldm	r3, {r2, r3}
  3caedc: 4620         	mov	r0, r4
  3caede: 2121         	movs	r1, #0x21
  3caee0: f02d f8b0    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x2d160
  3caee4: b008         	add	sp, #0x20
  3caee6: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3caee7); words below are literal-pool data ---
  3caee8: 3333         	adds	r3, #0x33
  3caeea: 3333         	adds	r3, #0x33
  3caeec: 3333         	adds	r3, #0x33
  3caeee: 3fd3         	subs	r7, #0xd3
  3caef0: 0000         	movs	r0, r0
  3caef2: 4448         	add	r0, r9
  3caef4: 7c96         	ldrb	r6, [r2, #0x12]
  3caef6: 0056         	lsls	r6, r2, #0x1
  3caef8: badc         	revsh	r4, r3
  3caefa: 0040         	lsls	r0, r0, #0x1
  3caefc: d744         	bvc	0x3caf88 <SAW::updateRemoteWeaponStep(float)+0x80> @ imm = #0x88
  3caefe: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3caf02: ffff f3af    	<unknown>

// ==== SAW::updateRemoteWeaponStep
//      file offset 0x3caf08 (= ELF address; Ghidra 0x3daf08), 596 bytes, Thumb-2
  3caf08: b530         	push	{r4, r5, lr}
  3caf0a: ed2d 8b02    	vpush	{d8}
  3caf0e: b0a9         	sub	sp, #0xa4
  3caf10: 9001         	str	r0, [sp, #0x4]
  3caf12: 9100         	str	r1, [sp]
  3caf14: 9b01         	ldr	r3, [sp, #0x4]
  3caf16: ed93 7a64    	vldr	s14, [r3, #400]
  3caf1a: eddd 7a00    	vldr	s15, [sp]
  3caf1e: ee77 7a27    	vadd.f32	s15, s14, s15
  3caf22: 9b01         	ldr	r3, [sp, #0x4]
  3caf24: edc3 7a64    	vstr	s15, [r3, #400]
  3caf28: 9b01         	ldr	r3, [sp, #0x4]
  3caf2a: ed93 7a45    	vldr	s14, [r3, #276]
  3caf2e: eddd 7a00    	vldr	s15, [sp]
  3caf32: ee77 7a27    	vadd.f32	s15, s14, s15
  3caf36: 9b01         	ldr	r3, [sp, #0x4]
  3caf38: edc3 7a45    	vstr	s15, [r3, #276]
  3caf3c: 9b01         	ldr	r3, [sp, #0x4]
  3caf3e: 681b         	ldr	r3, [r3]
  3caf40: 3350         	adds	r3, #0x50
  3caf42: 681b         	ldr	r3, [r3]
  3caf44: 9a01         	ldr	r2, [sp, #0x4]
  3caf46: 4610         	mov	r0, r2
  3caf48: 4798         	blx	r3
  3caf4a: 4603         	mov	r3, r0
  3caf4c: edd3 7a00    	vldr	s15, [r3]
  3caf50: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3caf54: 9b01         	ldr	r3, [sp, #0x4]
  3caf56: 681b         	ldr	r3, [r3]
  3caf58: 3350         	adds	r3, #0x50
  3caf5a: 681b         	ldr	r3, [r3]
  3caf5c: 9a01         	ldr	r2, [sp, #0x4]
  3caf5e: 4610         	mov	r0, r2
  3caf60: 4798         	blx	r3
  3caf62: 4603         	mov	r3, r0
  3caf64: edd3 7a01    	vldr	s15, [r3, #4]
  3caf68: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3caf6c: ab04         	add	r3, sp, #0x10
  3caf6e: 4618         	mov	r0, r3
  3caf70: eeb0 0b48    	vmov.f64	d0, d8
  3caf74: eeb0 1b47    	vmov.f64	d1, d7
  3caf78: f7fe fcdc    	bl	0x3c9934 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x1ec> @ imm = #-0x1648
  3caf7c: 9b01         	ldr	r3, [sp, #0x4]
  3caf7e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3caf82: aa1c         	add	r2, sp, #0x70
  3caf84: ed93 4b0a    	vldr	d4, [r3, #40]
  3caf88: ed93 5b0c    	vldr	d5, [r3, #48]
  3caf8c: ed9d 6b04    	vldr	d6, [sp, #16]
  3caf90: ed9d 7b06    	vldr	d7, [sp, #24]
  3caf94: 4610         	mov	r0, r2
  3caf96: eeb0 0b44    	vmov.f64	d0, d4
  3caf9a: eeb0 1b45    	vmov.f64	d1, d5
  3caf9e: eeb0 2b46    	vmov.f64	d2, d6
  3cafa2: eeb0 3b47    	vmov.f64	d3, d7
  3cafa6: f7fe fd05    	bl	0x3c99b4 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x26c> @ imm = #-0x15f6
  3cafaa: ab08         	add	r3, sp, #0x20
  3cafac: ed9d 6b1c    	vldr	d6, [sp, #112]
  3cafb0: ed9d 7b1e    	vldr	d7, [sp, #120]
  3cafb4: 4618         	mov	r0, r3
  3cafb6: eeb0 0b46    	vmov.f64	d0, d6
  3cafba: eeb0 1b47    	vmov.f64	d1, d7
  3cafbe: eeb4 2b00    	vmov.f64	d2, #1.250000e-01
  3cafc2: f7fe fd23    	bl	0x3c9a0c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x2c4> @ imm = #-0x15ba
  3cafc6: ab0c         	add	r3, sp, #0x30
  3cafc8: ed9d 4b04    	vldr	d4, [sp, #16]
  3cafcc: ed9d 5b06    	vldr	d5, [sp, #24]
  3cafd0: ed9d 6b08    	vldr	d6, [sp, #32]
  3cafd4: ed9d 7b0a    	vldr	d7, [sp, #40]
  3cafd8: 4618         	mov	r0, r3
  3cafda: eeb0 0b44    	vmov.f64	d0, d4
  3cafde: eeb0 1b45    	vmov.f64	d1, d5
  3cafe2: eeb0 2b46    	vmov.f64	d2, d6
  3cafe6: eeb0 3b47    	vmov.f64	d3, d7
  3cafea: f7fe fcb7    	bl	0x3c995c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x214> @ imm = #-0x1692
  3cafee: 9b01         	ldr	r3, [sp, #0x4]
  3caff0: 681b         	ldr	r3, [r3]
  3caff2: 334c         	adds	r3, #0x4c
  3caff4: 681c         	ldr	r4, [r3]
  3caff6: 9d01         	ldr	r5, [sp, #0x4]
  3caff8: ed9d 7b0c    	vldr	d7, [sp, #48]
  3caffc: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3cb000: ed9d 7b0e    	vldr	d7, [sp, #56]
  3cb004: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb008: ab24         	add	r3, sp, #0x90
  3cb00a: 4618         	mov	r0, r3
  3cb00c: ee16 1a90    	vmov	r1, s13
  3cb010: ee17 2a90    	vmov	r2, s15
  3cb014: f1c7 fe6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c7cd8
  3cb018: ab24         	add	r3, sp, #0x90
  3cb01a: 4628         	mov	r0, r5
  3cb01c: 4619         	mov	r1, r3
  3cb01e: 47a0         	blx	r4
  3cb020: 9b01         	ldr	r3, [sp, #0x4]
  3cb022: 681b         	ldr	r3, [r3]
  3cb024: 339c         	adds	r3, #0x9c
  3cb026: 681b         	ldr	r3, [r3]
  3cb028: 9a01         	ldr	r2, [sp, #0x4]
  3cb02a: 4610         	mov	r0, r2
  3cb02c: 4798         	blx	r3
  3cb02e: ee07 0a10    	vmov	s14, r0
  3cb032: eddf 7a49    	vldr	s15, [pc, #292]         @ 0x3cb158 <SAW::updateRemoteWeaponStep(float)+0x250>
  3cb036: ee67 7a27    	vmul.f32	s15, s14, s15
  3cb03a: eef1 7a67    	vneg.f32	s15, s15
  3cb03e: edcd 7a02    	vstr	s15, [sp, #8]
  3cb042: eddd 7a02    	vldr	s15, [sp, #8]
  3cb046: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cb04a: ec51 0b17    	vmov	r0, r1, d7
  3cb04e: f70a ef5c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xf5148
  3cb052: 4604         	mov	r4, r0
  3cb054: 460d         	mov	r5, r1
  3cb056: eddd 7a02    	vldr	s15, [sp, #8]
  3cb05a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cb05e: ec51 0b17    	vmov	r0, r1, d7
  3cb062: f70a ef58    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xf5150
  3cb066: 4602         	mov	r2, r0
  3cb068: 460b         	mov	r3, r1
  3cb06a: a910         	add	r1, sp, #0x40
  3cb06c: 4608         	mov	r0, r1
  3cb06e: ec45 4b10    	vmov	d0, r4, r5
  3cb072: ec43 2b11    	vmov	d1, r2, r3
  3cb076: f7fe fc5d    	bl	0x3c9934 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x1ec> @ imm = #-0x1746
  3cb07a: 9b01         	ldr	r3, [sp, #0x4]
  3cb07c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb080: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3cb084: 4610         	mov	r0, r2
  3cb086: 4619         	mov	r1, r3
  3cb088: f70a ef3e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xf5184
  3cb08c: 4604         	mov	r4, r0
  3cb08e: 460d         	mov	r5, r1
  3cb090: 9b01         	ldr	r3, [sp, #0x4]
  3cb092: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb096: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3cb09a: 4610         	mov	r0, r2
  3cb09c: 4619         	mov	r1, r3
  3cb09e: f70a ef3a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xf518c
  3cb0a2: 4602         	mov	r2, r0
  3cb0a4: 460b         	mov	r3, r1
  3cb0a6: a914         	add	r1, sp, #0x50
  3cb0a8: 4608         	mov	r0, r1
  3cb0aa: ec45 4b10    	vmov	d0, r4, r5
  3cb0ae: ec43 2b11    	vmov	d1, r2, r3
  3cb0b2: f7fe fc3f    	bl	0x3c9934 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x1ec> @ imm = #-0x1782
  3cb0b6: ab20         	add	r3, sp, #0x80
  3cb0b8: ed9d 6b10    	vldr	d6, [sp, #64]
  3cb0bc: ed9d 7b12    	vldr	d7, [sp, #72]
  3cb0c0: 4618         	mov	r0, r3
  3cb0c2: eeb0 0b46    	vmov.f64	d0, d6
  3cb0c6: eeb0 1b47    	vmov.f64	d1, d7
  3cb0ca: ed9f 2b1f    	vldr	d2, [pc, #124]          @ 0x3cb148 <SAW::updateRemoteWeaponStep(float)+0x240>
  3cb0ce: f7fe fc9d    	bl	0x3c9a0c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x2c4> @ imm = #-0x16c6
  3cb0d2: ab24         	add	r3, sp, #0x90
  3cb0d4: ed9d 6b14    	vldr	d6, [sp, #80]
  3cb0d8: ed9d 7b16    	vldr	d7, [sp, #88]
  3cb0dc: 4618         	mov	r0, r3
  3cb0de: eeb0 0b46    	vmov.f64	d0, d6
  3cb0e2: eeb0 1b47    	vmov.f64	d1, d7
  3cb0e6: ed9f 2b1a    	vldr	d2, [pc, #104]          @ 0x3cb150 <SAW::updateRemoteWeaponStep(float)+0x248>
  3cb0ea: f7fe fc8f    	bl	0x3c9a0c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x2c4> @ imm = #-0x16e2
  3cb0ee: ab18         	add	r3, sp, #0x60
  3cb0f0: ed9d 4b20    	vldr	d4, [sp, #128]
  3cb0f4: ed9d 5b22    	vldr	d5, [sp, #136]
  3cb0f8: ed9d 6b24    	vldr	d6, [sp, #144]
  3cb0fc: ed9d 7b26    	vldr	d7, [sp, #152]
  3cb100: 4618         	mov	r0, r3
  3cb102: eeb0 0b44    	vmov.f64	d0, d4
  3cb106: eeb0 1b45    	vmov.f64	d1, d5
  3cb10a: eeb0 2b46    	vmov.f64	d2, d6
  3cb10e: eeb0 3b47    	vmov.f64	d3, d7
  3cb112: f7fe fc23    	bl	0x3c995c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x214> @ imm = #-0x17ba
  3cb116: ab18         	add	r3, sp, #0x60
  3cb118: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cb11a: f7fe fd99    	bl	0x3c9c50 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x508> @ imm = #-0x14ce
  3cb11e: 9003         	str	r0, [sp, #0xc]
  3cb120: 9b01         	ldr	r3, [sp, #0x4]
  3cb122: 681b         	ldr	r3, [r3]
  3cb124: 3398         	adds	r3, #0x98
  3cb126: 681b         	ldr	r3, [r3]
  3cb128: 9a01         	ldr	r2, [sp, #0x4]
  3cb12a: 4610         	mov	r0, r2
  3cb12c: 9903         	ldr	r1, [sp, #0xc]
  3cb12e: 4798         	blx	r3
  3cb130: 9b01         	ldr	r3, [sp, #0x4]
  3cb132: 681b         	ldr	r3, [r3]
  3cb134: f503 734a    	add.w	r3, r3, #0x328
  3cb138: 681b         	ldr	r3, [r3]
  3cb13a: 9801         	ldr	r0, [sp, #0x4]
  3cb13c: 9900         	ldr	r1, [sp]
  3cb13e: 4798         	blx	r3
  3cb140: b029         	add	sp, #0xa4
  3cb142: ecbd 8b02    	vpop	{d8}
  3cb146: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cb147); words below are literal-pool data ---
  3cb148: 6666         	str	r6, [r4, #0x64]
  3cb14a: 6666         	str	r6, [r4, #0x64]
  3cb14c: 6666         	str	r6, [r4, #0x64]
  3cb14e: 3fe6         	subs	r7, #0xe6
  3cb150: 3333         	adds	r3, #0x33
  3cb152: 3333         	adds	r3, #0x33
  3cb154: 3333         	adds	r3, #0x33
  3cb156: 3fd3         	subs	r7, #0xd3
  3cb158: fa35 3c8e    	<unknown>

// ==== SAW::updateItemStep
//      file offset 0x3cb160 (= ELF address; Ghidra 0x3db160), 380 bytes, Thumb-2
  3cb160: b510         	push	{r4, lr}
  3cb162: b08c         	sub	sp, #0x30
  3cb164: 9001         	str	r0, [sp, #0x4]
  3cb166: 9100         	str	r1, [sp]
  3cb168: 9b01         	ldr	r3, [sp, #0x4]
  3cb16a: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  3cb16e: 2b00         	cmp	r3, #0x0
  3cb170: f040 80a5    	bne.w	0x3cb2be <SAW::updateItemStep(float)+0x15e> @ imm = #0x14a
  3cb174: 9b01         	ldr	r3, [sp, #0x4]
  3cb176: f04f 0200    	mov.w	r2, #0x0
  3cb17a: f8c3 2118    	str.w	r2, [r3, #0x118]
  3cb17e: 9b01         	ldr	r3, [sp, #0x4]
  3cb180: f04f 0200    	mov.w	r2, #0x0
  3cb184: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3cb188: 9b01         	ldr	r3, [sp, #0x4]
  3cb18a: ed93 7a44    	vldr	s14, [r3, #272]
  3cb18e: eddd 7a00    	vldr	s15, [sp]
  3cb192: ee77 7a27    	vadd.f32	s15, s14, s15
  3cb196: 9b01         	ldr	r3, [sp, #0x4]
  3cb198: edc3 7a44    	vstr	s15, [r3, #272]
  3cb19c: 9b01         	ldr	r3, [sp, #0x4]
  3cb19e: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3cb1a2: 2b00         	cmp	r3, #0x0
  3cb1a4: d009         	beq	0x3cb1ba <SAW::updateItemStep(float)+0x5a> @ imm = #0x12
  3cb1a6: 9b01         	ldr	r3, [sp, #0x4]
  3cb1a8: ed93 7a7f    	vldr	s14, [r3, #508]
  3cb1ac: eddd 7a00    	vldr	s15, [sp]
  3cb1b0: ee77 7a27    	vadd.f32	s15, s14, s15
  3cb1b4: 9b01         	ldr	r3, [sp, #0x4]
  3cb1b6: edc3 7a7f    	vstr	s15, [r3, #508]
  3cb1ba: 9b01         	ldr	r3, [sp, #0x4]
  3cb1bc: ed93 7a44    	vldr	s14, [r3, #272]
  3cb1c0: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3cb1c4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cb1c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cb1cc: dd03         	ble	0x3cb1d6 <SAW::updateItemStep(float)+0x76> @ imm = #0x6
  3cb1ce: 9b01         	ldr	r3, [sp, #0x4]
  3cb1d0: 2201         	movs	r2, #0x1
  3cb1d2: f883 20e5    	strb.w	r2, [r3, #0xe5]
  3cb1d6: 9b01         	ldr	r3, [sp, #0x4]
  3cb1d8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb1dc: aa04         	add	r2, sp, #0x10
  3cb1de: ed93 6b0e    	vldr	d6, [r3, #56]
  3cb1e2: ed93 7b10    	vldr	d7, [r3, #64]
  3cb1e6: 4610         	mov	r0, r2
  3cb1e8: eeb0 0b46    	vmov.f64	d0, d6
  3cb1ec: eeb0 1b47    	vmov.f64	d1, d7
  3cb1f0: f7fe fc56    	bl	0x3c9aa0 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x358> @ imm = #-0x1754
  3cb1f4: 9b01         	ldr	r3, [sp, #0x4]
  3cb1f6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb1fa: 3338         	adds	r3, #0x38
  3cb1fc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cb1fe: f30b ff5b    	bl	0x6d70b8 <cpvlength>    @ imm = #0x30beb6
  3cb202: ec41 0b16    	vmov	d6, r0, r1
  3cb206: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x3cb2c8 <SAW::updateItemStep(float)+0x168>
  3cb20a: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cb20e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cb212: d502         	bpl	0x3cb21a <SAW::updateItemStep(float)+0xba> @ imm = #0x4
  3cb214: eddf 7a30    	vldr	s15, [pc, #192]         @ 0x3cb2d8 <SAW::updateItemStep(float)+0x178>
  3cb218: e00a         	b	0x3cb230 <SAW::updateItemStep(float)+0xd0> @ imm = #0x14
  3cb21a: 9b01         	ldr	r3, [sp, #0x4]
  3cb21c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb220: 3338         	adds	r3, #0x38
  3cb222: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cb224: f30b ff48    	bl	0x6d70b8 <cpvlength>    @ imm = #0x30be90
  3cb228: ec41 0b17    	vmov	d7, r0, r1
  3cb22c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb230: edcd 7a03    	vstr	s15, [sp, #12]
  3cb234: 9b01         	ldr	r3, [sp, #0x4]
  3cb236: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3cb23a: f083 0301    	eor	r3, r3, #0x1
  3cb23e: b2db         	uxtb	r3, r3
  3cb240: 2b00         	cmp	r3, #0x0
  3cb242: d01f         	beq	0x3cb284 <SAW::updateItemStep(float)+0x124> @ imm = #0x3e
  3cb244: 9b01         	ldr	r3, [sp, #0x4]
  3cb246: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3cb24a: eddd 7a03    	vldr	s15, [sp, #12]
  3cb24e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cb252: ab08         	add	r3, sp, #0x20
  3cb254: ed9d 5b04    	vldr	d5, [sp, #16]
  3cb258: ed9d 6b06    	vldr	d6, [sp, #24]
  3cb25c: 4618         	mov	r0, r3
  3cb25e: eeb0 0b45    	vmov.f64	d0, d5
  3cb262: eeb0 1b46    	vmov.f64	d1, d6
  3cb266: eeb0 2b47    	vmov.f64	d2, d7
  3cb26a: f7fe fbcf    	bl	0x3c9a0c <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x2c4> @ imm = #-0x1862
  3cb26e: ed9d 6b08    	vldr	d6, [sp, #32]
  3cb272: ed9d 7b0a    	vldr	d7, [sp, #40]
  3cb276: 4620         	mov	r0, r4
  3cb278: eeb0 0b46    	vmov.f64	d0, d6
  3cb27c: eeb0 1b47    	vmov.f64	d1, d7
  3cb280: f7fe fc9e    	bl	0x3c9bc0 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x478> @ imm = #-0x16c4
  3cb284: 9b01         	ldr	r3, [sp, #0x4]
  3cb286: edd3 7a7f    	vldr	s15, [r3, #508]
  3cb28a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cb28e: ed9f 7b10    	vldr	d7, [pc, #64]           @ 0x3cb2d0 <SAW::updateItemStep(float)+0x170>
  3cb292: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cb296: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cb29a: dd08         	ble	0x3cb2ae <SAW::updateItemStep(float)+0x14e> @ imm = #0x10
  3cb29c: 9b01         	ldr	r3, [sp, #0x4]
  3cb29e: 2200         	movs	r2, #0x0
  3cb2a0: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3cb2a4: 9b01         	ldr	r3, [sp, #0x4]
  3cb2a6: f04f 0200    	mov.w	r2, #0x0
  3cb2aa: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3cb2ae: 9b01         	ldr	r3, [sp, #0x4]
  3cb2b0: 681b         	ldr	r3, [r3]
  3cb2b2: f503 734a    	add.w	r3, r3, #0x328
  3cb2b6: 681b         	ldr	r3, [r3]
  3cb2b8: 9801         	ldr	r0, [sp, #0x4]
  3cb2ba: 9900         	ldr	r1, [sp]
  3cb2bc: 4798         	blx	r3
  3cb2be: b00c         	add	sp, #0x30
  3cb2c0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3cb2c1); words below are literal-pool data ---
  3cb2c2: bf00         	nop
  3cb2c4: f3af 8000    	nop.w
  3cb2c8: 0000         	movs	r0, r0
  3cb2ca: 0000         	movs	r0, r0
  3cb2cc: c000         	<unknown>
  3cb2ce: 4072         	eors	r2, r6
  3cb2d0: 999a         	ldr	r1, [sp, #0x268]
  3cb2d2: 9999         	ldr	r1, [sp, #0x264]
  3cb2d4: 9999         	ldr	r1, [sp, #0x264]
  3cb2d6: 3fc9         	subs	r7, #0xc9
  3cb2d8: 0000         	movs	r0, r0
  3cb2da: 4396         	bics	r6, r2

// ==== SAW::checkMapCollision
//      file offset 0x3cb2e0 (= ELF address; Ghidra 0x3db2e0), 176 bytes, Thumb-2
  3cb2e0: b570         	push	{r4, r5, r6, lr}
  3cb2e2: ed2d 8b02    	vpush	{d8}
  3cb2e6: b09a         	sub	sp, #0x68
  3cb2e8: 900b         	str	r0, [sp, #0x2c]
  3cb2ea: 910a         	str	r1, [sp, #0x28]
  3cb2ec: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3cb388 <SAW::checkMapCollision(SoldierController*)+0xa8>
  3cb2ee: 447a         	add	r2, pc
  3cb2f0: 4b26         	ldr	r3, [pc, #0x98]         @ 0x3cb38c <SAW::checkMapCollision(SoldierController*)+0xac>
  3cb2f2: 58d3         	ldr	r3, [r2, r3]
  3cb2f4: 681e         	ldr	r6, [r3]
  3cb2f6: 9b0b         	ldr	r3, [sp, #0x2c]
  3cb2f8: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3cb2fc: 9b0a         	ldr	r3, [sp, #0x28]
  3cb2fe: 681b         	ldr	r3, [r3]
  3cb300: 3350         	adds	r3, #0x50
  3cb302: 681b         	ldr	r3, [r3]
  3cb304: 9a0a         	ldr	r2, [sp, #0x28]
  3cb306: 4610         	mov	r0, r2
  3cb308: 4798         	blx	r3
  3cb30a: 4603         	mov	r3, r0
  3cb30c: edd3 7a00    	vldr	s15, [r3]
  3cb310: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3cb314: 9b0a         	ldr	r3, [sp, #0x28]
  3cb316: 681b         	ldr	r3, [r3]
  3cb318: 3350         	adds	r3, #0x50
  3cb31a: 681b         	ldr	r3, [r3]
  3cb31c: 9a0a         	ldr	r2, [sp, #0x28]
  3cb31e: 4610         	mov	r0, r2
  3cb320: 4798         	blx	r3
  3cb322: 4603         	mov	r3, r0
  3cb324: edd3 7a01    	vldr	s15, [r3, #4]
  3cb328: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3cb32c: ab0e         	add	r3, sp, #0x38
  3cb32e: 4618         	mov	r0, r3
  3cb330: eeb0 0b48    	vmov.f64	d0, d8
  3cb334: eeb0 1b47    	vmov.f64	d1, d7
  3cb338: f7fe fafc    	bl	0x3c9934 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x1ec> @ imm = #-0x1a08
  3cb33c: ad02         	add	r5, sp, #0x8
  3cb33e: ab0e         	add	r3, sp, #0x38
  3cb340: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3cb342: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3cb346: f44f 7384    	mov.w	r3, #0x108
  3cb34a: 9306         	str	r3, [sp, #0x18]
  3cb34c: 2300         	movs	r3, #0x0
  3cb34e: 9307         	str	r3, [sp, #0x1c]
  3cb350: ab12         	add	r3, sp, #0x48
  3cb352: 9308         	str	r3, [sp, #0x20]
  3cb354: 466b         	mov	r3, sp
  3cb356: f104 0230    	add.w	r2, r4, #0x30
  3cb35a: e892 0003    	ldm.w	r2, {r0, r1}
  3cb35e: e883 0003    	stm.w	r3, {r0, r1}
  3cb362: f104 0328    	add.w	r3, r4, #0x28
  3cb366: cb0c         	ldm	r3, {r2, r3}
  3cb368: 4630         	mov	r0, r6
  3cb36a: f30a fdf5    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x30abea
  3cb36e: 4603         	mov	r3, r0
  3cb370: 930d         	str	r3, [sp, #0x34]
  3cb372: 9b0d         	ldr	r3, [sp, #0x34]
  3cb374: 2b00         	cmp	r3, #0x0
  3cb376: d001         	beq	0x3cb37c <SAW::checkMapCollision(SoldierController*)+0x9c> @ imm = #0x2
  3cb378: 2301         	movs	r3, #0x1
  3cb37a: e000         	b	0x3cb37e <SAW::checkMapCollision(SoldierController*)+0x9e> @ imm = #0x0
  3cb37c: 2300         	movs	r3, #0x0
  3cb37e: 4618         	mov	r0, r3
  3cb380: b01a         	add	sp, #0x68
  3cb382: ecbd 8b02    	vpop	{d8}
  3cb386: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3cb387); words below are literal-pool data ---
  3cb388: 771a         	strb	r2, [r3, #0x1c]
  3cb38a: 0056         	lsls	r6, r2, #0x1
  3cb38c: da00         	bge	0x3cb390 <SAW::setContact(bool, std::string, int)> @ imm = #0x0
  3cb38e: ffff e92d    	vtbl.8	d30, {d15, d16}, d29

// ==== SAW::setContact
//      file offset 0x3cb390 (= ELF address; Ghidra 0x3db390), 724 bytes, Thumb-2
  3cb390: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3cb394: b095         	sub	sp, #0x54
  3cb396: 900d         	str	r0, [sp, #0x34]
  3cb398: 920b         	str	r2, [sp, #0x2c]
  3cb39a: 930a         	str	r3, [sp, #0x28]
  3cb39c: 460b         	mov	r3, r1
  3cb39e: f88d 3033    	strb.w	r3, [sp, #0x33]
  3cb3a2: 4cab         	ldr	r4, [pc, #0x2ac]        @ 0x3cb650 <SAW::setContact(bool, std::string, int)+0x2c0>
  3cb3a4: 447c         	add	r4, pc
  3cb3a6: 9b0d         	ldr	r3, [sp, #0x34]
  3cb3a8: f503 73aa    	add.w	r3, r3, #0x154
  3cb3ac: 4618         	mov	r0, r3
  3cb3ae: 990b         	ldr	r1, [sp, #0x2c]
  3cb3b0: f3ea f964    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3ea2c8
  3cb3b4: 4603         	mov	r3, r0
  3cb3b6: 2b00         	cmp	r3, #0x0
  3cb3b8: d10d         	bne	0x3cb3d6 <SAW::setContact(bool, std::string, int)+0x46> @ imm = #0x1a
  3cb3ba: 9b0d         	ldr	r3, [sp, #0x34]
  3cb3bc: edd3 7a44    	vldr	s15, [r3, #272]
  3cb3c0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3cb3c4: ed9f 7ba0    	vldr	d7, [pc, #640]          @ 0x3cb648 <SAW::setContact(bool, std::string, int)+0x2b8>
  3cb3c8: eeb4 6bc7    	vcmpe.f64	d6, d7
  3cb3cc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cb3d0: d501         	bpl	0x3cb3d6 <SAW::setContact(bool, std::string, int)+0x46> @ imm = #0x2
  3cb3d2: 2301         	movs	r3, #0x1
  3cb3d4: e000         	b	0x3cb3d8 <SAW::setContact(bool, std::string, int)+0x48> @ imm = #0x0
  3cb3d6: 2300         	movs	r3, #0x0
  3cb3d8: 2b00         	cmp	r3, #0x0
  3cb3da: d005         	beq	0x3cb3e8 <SAW::setContact(bool, std::string, int)+0x58> @ imm = #0xa
  3cb3dc: 9b0d         	ldr	r3, [sp, #0x34]
  3cb3de: 2200         	movs	r2, #0x0
  3cb3e0: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3cb3e4: 2300         	movs	r3, #0x0
  3cb3e6: e12a         	b	0x3cb63e <SAW::setContact(bool, std::string, int)+0x2ae> @ imm = #0x254
  3cb3e8: 980b         	ldr	r0, [sp, #0x2c]
  3cb3ea: f3e9 fe37    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3e9c6e
  3cb3ee: 4603         	mov	r3, r0
  3cb3f0: 2b00         	cmp	r3, #0x0
  3cb3f2: bf14         	ite	ne
  3cb3f4: 2300         	movne	r3, #0x0
  3cb3f6: 2301         	moveq	r3, #0x1
  3cb3f8: b2db         	uxtb	r3, r3
  3cb3fa: 2b00         	cmp	r3, #0x0
  3cb3fc: d023         	beq	0x3cb446 <SAW::setContact(bool, std::string, int)+0xb6> @ imm = #0x46
  3cb3fe: 9b0d         	ldr	r3, [sp, #0x34]
  3cb400: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3cb404: f083 0301    	eor	r3, r3, #0x1
  3cb408: b2db         	uxtb	r3, r3
  3cb40a: 2b00         	cmp	r3, #0x0
  3cb40c: d01b         	beq	0x3cb446 <SAW::setContact(bool, std::string, int)+0xb6> @ imm = #0x36
  3cb40e: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  3cb412: 2b00         	cmp	r3, #0x0
  3cb414: d017         	beq	0x3cb446 <SAW::setContact(bool, std::string, int)+0xb6> @ imm = #0x2e
  3cb416: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x3cb654 <SAW::setContact(bool, std::string, int)+0x2c4>
  3cb418: 58e3         	ldr	r3, [r4, r3]
  3cb41a: 681d         	ldr	r5, [r3]
  3cb41c: 9b0d         	ldr	r3, [sp, #0x34]
  3cb41e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb422: f04f 527c    	mov.w	r2, #0x3f000000
  3cb426: 9202         	str	r2, [sp, #0x8]
  3cb428: f04f 527e    	mov.w	r2, #0x3f800000
  3cb42c: 9203         	str	r2, [sp, #0xc]
  3cb42e: 466a         	mov	r2, sp
  3cb430: f103 0130    	add.w	r1, r3, #0x30
  3cb434: c903         	ldm	r1, {r0, r1}
  3cb436: e882 0003    	stm.w	r2, {r0, r1}
  3cb43a: 3328         	adds	r3, #0x28
  3cb43c: cb0c         	ldm	r3, {r2, r3}
  3cb43e: 4628         	mov	r0, r5
  3cb440: 210f         	movs	r1, #0xf
  3cb442: f02c fdff    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x2cbfe
  3cb446: 980b         	ldr	r0, [sp, #0x2c]
  3cb448: f3e9 fe08    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3e9c10
  3cb44c: 4603         	mov	r3, r0
  3cb44e: 2b00         	cmp	r3, #0x0
  3cb450: bf0c         	ite	eq
  3cb452: 2300         	moveq	r3, #0x0
  3cb454: 2301         	movne	r3, #0x1
  3cb456: b2db         	uxtb	r3, r3
  3cb458: 2b00         	cmp	r3, #0x0
  3cb45a: f000 80e1    	beq.w	0x3cb620 <SAW::setContact(bool, std::string, int)+0x290> @ imm = #0x1c2
  3cb45e: f04f 0300    	mov.w	r3, #0x0
  3cb462: f2c4 23c8    	movt	r3, #0x42c8
  3cb466: 9311         	str	r3, [sp, #0x44]
  3cb468: 9b0d         	ldr	r3, [sp, #0x34]
  3cb46a: f503 73aa    	add.w	r3, r3, #0x154
  3cb46e: 4618         	mov	r0, r3
  3cb470: 990b         	ldr	r1, [sp, #0x2c]
  3cb472: f3ea f903    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3ea206
  3cb476: 4603         	mov	r3, r0
  3cb478: 2b00         	cmp	r3, #0x0
  3cb47a: bf14         	ite	ne
  3cb47c: 2300         	movne	r3, #0x0
  3cb47e: 2301         	moveq	r3, #0x1
  3cb480: b2db         	uxtb	r3, r3
  3cb482: 2b00         	cmp	r3, #0x0
  3cb484: d03b         	beq	0x3cb4fe <SAW::setContact(bool, std::string, int)+0x16e> @ imm = #0x76
  3cb486: 9b0d         	ldr	r3, [sp, #0x34]
  3cb488: 681b         	ldr	r3, [r3]
  3cb48a: f503 734b    	add.w	r3, r3, #0x32c
  3cb48e: 681b         	ldr	r3, [r3]
  3cb490: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x3cb658 <SAW::setContact(bool, std::string, int)+0x2c8>
  3cb492: 58a2         	ldr	r2, [r4, r2]
  3cb494: 6812         	ldr	r2, [r2]
  3cb496: 980d         	ldr	r0, [sp, #0x34]
  3cb498: 4611         	mov	r1, r2
  3cb49a: 4798         	blx	r3
  3cb49c: 4603         	mov	r3, r0
  3cb49e: f88d 303e    	strb.w	r3, [sp, #0x3e]
  3cb4a2: f89d 303e    	ldrb.w	r3, [sp, #0x3e]
  3cb4a6: f083 0301    	eor	r3, r3, #0x1
  3cb4aa: b2db         	uxtb	r3, r3
  3cb4ac: 2b00         	cmp	r3, #0x0
  3cb4ae: d024         	beq	0x3cb4fa <SAW::setContact(bool, std::string, int)+0x16a> @ imm = #0x48
  3cb4b0: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x3cb658 <SAW::setContact(bool, std::string, int)+0x2c8>
  3cb4b2: 58e3         	ldr	r3, [r4, r3]
  3cb4b4: 681b         	ldr	r3, [r3]
  3cb4b6: 681b         	ldr	r3, [r3]
  3cb4b8: f503 7316    	add.w	r3, r3, #0x258
  3cb4bc: 681d         	ldr	r5, [r3]
  3cb4be: 4b66         	ldr	r3, [pc, #0x198]        @ 0x3cb658 <SAW::setContact(bool, std::string, int)+0x2c8>
  3cb4c0: 58e3         	ldr	r3, [r4, r3]
  3cb4c2: 681b         	ldr	r3, [r3]
  3cb4c4: 461e         	mov	r6, r3
  3cb4c6: 4b64         	ldr	r3, [pc, #0x190]        @ 0x3cb658 <SAW::setContact(bool, std::string, int)+0x2c8>
  3cb4c8: 58e3         	ldr	r3, [r4, r3]
  3cb4ca: 681b         	ldr	r3, [r3]
  3cb4cc: 681b         	ldr	r3, [r3]
  3cb4ce: f503 73e0    	add.w	r3, r3, #0x1c0
  3cb4d2: 681b         	ldr	r3, [r3]
  3cb4d4: 4a60         	ldr	r2, [pc, #0x180]        @ 0x3cb658 <SAW::setContact(bool, std::string, int)+0x2c8>
  3cb4d6: 58a2         	ldr	r2, [r4, r2]
  3cb4d8: 6812         	ldr	r2, [r2]
  3cb4da: a910         	add	r1, sp, #0x40
  3cb4dc: 4608         	mov	r0, r1
  3cb4de: 4611         	mov	r1, r2
  3cb4e0: 4798         	blx	r3
  3cb4e2: ab10         	add	r3, sp, #0x40
  3cb4e4: 2201         	movs	r2, #0x1
  3cb4e6: 9200         	str	r2, [sp]
  3cb4e8: 4630         	mov	r0, r6
  3cb4ea: 9911         	ldr	r1, [sp, #0x44]
  3cb4ec: 461a         	mov	r2, r3
  3cb4ee: 2318         	movs	r3, #0x18
  3cb4f0: 47a8         	blx	r5
  3cb4f2: ab10         	add	r3, sp, #0x40
  3cb4f4: 4618         	mov	r0, r3
  3cb4f6: f3ea fa0d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ea41a
  3cb4fa: 2300         	movs	r3, #0x0
  3cb4fc: e09f         	b	0x3cb63e <SAW::setContact(bool, std::string, int)+0x2ae> @ imm = #0x13e
  3cb4fe: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3cb65c <SAW::setContact(bool, std::string, int)+0x2cc>
  3cb500: 58e3         	ldr	r3, [r4, r3]
  3cb502: 681b         	ldr	r3, [r3]
  3cb504: 4618         	mov	r0, r3
  3cb506: 990b         	ldr	r1, [sp, #0x2c]
  3cb508: f1c8 fcf2    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1c89e4
  3cb50c: 4603         	mov	r3, r0
  3cb50e: 9312         	str	r3, [sp, #0x48]
  3cb510: 9b12         	ldr	r3, [sp, #0x48]
  3cb512: 2b00         	cmp	r3, #0x0
  3cb514: f000 8084    	beq.w	0x3cb620 <SAW::setContact(bool, std::string, int)+0x290> @ imm = #0x108
  3cb518: 9b0d         	ldr	r3, [sp, #0x34]
  3cb51a: 681b         	ldr	r3, [r3]
  3cb51c: f503 734b    	add.w	r3, r3, #0x32c
  3cb520: 681b         	ldr	r3, [r3]
  3cb522: 980d         	ldr	r0, [sp, #0x34]
  3cb524: 9912         	ldr	r1, [sp, #0x48]
  3cb526: 4798         	blx	r3
  3cb528: 4603         	mov	r3, r0
  3cb52a: f88d 303f    	strb.w	r3, [sp, #0x3f]
  3cb52e: f89d 303f    	ldrb.w	r3, [sp, #0x3f]
  3cb532: f083 0301    	eor	r3, r3, #0x1
  3cb536: b2db         	uxtb	r3, r3
  3cb538: 2b00         	cmp	r3, #0x0
  3cb53a: d06f         	beq	0x3cb61c <SAW::setContact(bool, std::string, int)+0x28c> @ imm = #0xde
  3cb53c: 9b0d         	ldr	r3, [sp, #0x34]
  3cb53e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb542: ed93 7b0a    	vldr	d7, [r3, #40]
  3cb546: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb54a: ee17 0a90    	vmov	r0, s15
  3cb54e: f711 fb99    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xee8ce
  3cb552: 4607         	mov	r7, r0
  3cb554: 9b0d         	ldr	r3, [sp, #0x34]
  3cb556: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb55a: ed93 7b0c    	vldr	d7, [r3, #48]
  3cb55e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb562: ee17 0a90    	vmov	r0, s15
  3cb566: f711 fb8d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xee8e6
  3cb56a: 4606         	mov	r6, r0
  3cb56c: 9b0d         	ldr	r3, [sp, #0x34]
  3cb56e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb572: ed93 7b0e    	vldr	d7, [r3, #56]
  3cb576: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb57a: ee17 0a90    	vmov	r0, s15
  3cb57e: f711 fb81    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xee8fe
  3cb582: 4605         	mov	r5, r0
  3cb584: 9b0d         	ldr	r3, [sp, #0x34]
  3cb586: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb58a: ed93 7b10    	vldr	d7, [r3, #64]
  3cb58e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3cb592: ee17 0a90    	vmov	r0, s15
  3cb596: f711 fb75    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xee916
  3cb59a: 4604         	mov	r4, r0
  3cb59c: 2018         	movs	r0, #0x18
  3cb59e: f719 fbb3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xe689a
  3cb5a2: 9009         	str	r0, [sp, #0x24]
  3cb5a4: eddd 7a11    	vldr	s15, [sp, #68]
  3cb5a8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3cb5ac: ee17 3a90    	vmov	r3, s15
  3cb5b0: 4618         	mov	r0, r3
  3cb5b2: f719 fba9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xe68ae
  3cb5b6: 4683         	mov	r11, r0
  3cb5b8: 2000         	movs	r0, #0x0
  3cb5ba: f719 fba5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xe68b6
  3cb5be: 4682         	mov	r10, r0
  3cb5c0: 2000         	movs	r0, #0x0
  3cb5c2: f719 fba1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xe68be
  3cb5c6: 4681         	mov	r9, r0
  3cb5c8: 980b         	ldr	r0, [sp, #0x2c]
  3cb5ca: f1ce fa37    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ce46e
  3cb5ce: 4680         	mov	r8, r0
  3cb5d0: 9b0d         	ldr	r3, [sp, #0x34]
  3cb5d2: f503 73aa    	add.w	r3, r3, #0x154
  3cb5d6: 4618         	mov	r0, r3
  3cb5d8: f1ce fa30    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1ce460
  3cb5dc: 4603         	mov	r3, r0
  3cb5de: 9a09         	ldr	r2, [sp, #0x24]
  3cb5e0: 9200         	str	r2, [sp]
  3cb5e2: f8cd b004    	str.w	r11, [sp, #0x4]
  3cb5e6: f8cd a008    	str.w	r10, [sp, #0x8]
  3cb5ea: f8cd 900c    	str.w	r9, [sp, #0xc]
  3cb5ee: f8cd 8010    	str.w	r8, [sp, #0x10]
  3cb5f2: 9305         	str	r3, [sp, #0x14]
  3cb5f4: 2300         	movs	r3, #0x0
  3cb5f6: 9306         	str	r3, [sp, #0x18]
  3cb5f8: 4638         	mov	r0, r7
  3cb5fa: 4631         	mov	r1, r6
  3cb5fc: 462a         	mov	r2, r5
  3cb5fe: 4623         	mov	r3, r4
  3cb600: f1ce fc06    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1ce80c
  3cb604: 4603         	mov	r3, r0
  3cb606: 9313         	str	r3, [sp, #0x4c]
  3cb608: f215 f852    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2150a4
  3cb60c: 4603         	mov	r3, r0
  3cb60e: 4618         	mov	r0, r3
  3cb610: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3cb660 <SAW::setContact(bool, std::string, int)+0x2d0>
  3cb612: 447b         	add	r3, pc
  3cb614: 4619         	mov	r1, r3
  3cb616: 9a13         	ldr	r2, [sp, #0x4c]
  3cb618: f215 fa88    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x215510
  3cb61c: 2300         	movs	r3, #0x0
  3cb61e: e00e         	b	0x3cb63e <SAW::setContact(bool, std::string, int)+0x2ae> @ imm = #0x1c
  3cb620: 9b0d         	ldr	r3, [sp, #0x34]
  3cb622: f89d 2033    	ldrb.w	r2, [sp, #0x33]
  3cb626: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3cb62a: 9b0d         	ldr	r3, [sp, #0x34]
  3cb62c: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3cb630: e005         	b	0x3cb63e <SAW::setContact(bool, std::string, int)+0x2ae> @ imm = #0xa
  3cb632: ab10         	add	r3, sp, #0x40
  3cb634: 4618         	mov	r0, r3
  3cb636: f3ea f96d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3ea2da
  3cb63a: f3bc fd37    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3bca6e
  3cb63e: 4618         	mov	r0, r3
  3cb640: b015         	add	sp, #0x54
  3cb642: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x3cb645); words below are literal-pool data ---
  3cb646: bf00         	nop
  3cb648: 3333         	adds	r3, #0x33
  3cb64a: 3333         	adds	r3, #0x33
  3cb64c: 3333         	adds	r3, #0x33
  3cb64e: 3fd3         	subs	r7, #0xd3
  3cb650: 7664         	strb	r4, [r4, #0x19]
  3cb652: 0056         	lsls	r6, r2, #0x1
  3cb654: d730         	bvc	0x3cb6b8 <SAW::setPrimaryConfiguration()+0x50> @ imm = #0x60
  3cb656: ffff d784    	<unknown>
  3cb65a: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  3cb65e: ffff b27e    	<unknown>
  3cb662: 0040         	lsls	r0, r0, #0x1

// ==== SAW::setPrimaryConfiguration
//      file offset 0x3cb668 (= ELF address; Ghidra 0x3db668), 292 bytes, Thumb-2
  3cb668: b530         	push	{r4, r5, lr}
  3cb66a: b085         	sub	sp, #0x14
  3cb66c: 9001         	str	r0, [sp, #0x4]
  3cb66e: 9b01         	ldr	r3, [sp, #0x4]
  3cb670: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb674: 2b00         	cmp	r3, #0x0
  3cb676: d019         	beq	0x3cb6ac <SAW::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3cb678: 9b01         	ldr	r3, [sp, #0x4]
  3cb67a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cb67e: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3cb788 <SAW::setPrimaryConfiguration()+0x120>
  3cb680: 447b         	add	r3, pc
  3cb682: ed93 6b00    	vldr	d6, [r3]
  3cb686: ed93 7b02    	vldr	d7, [r3, #8]
  3cb68a: 4610         	mov	r0, r2
  3cb68c: eeb0 0b46    	vmov.f64	d0, d6
  3cb690: eeb0 1b47    	vmov.f64	d1, d7
  3cb694: f7fe fa7e    	bl	0x3c9b94 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x44c> @ imm = #-0x1b04
  3cb698: 9b01         	ldr	r3, [sp, #0x4]
  3cb69a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb69e: 4618         	mov	r0, r3
  3cb6a0: f04f 0200    	mov.w	r2, #0x0
  3cb6a4: f04f 0300    	mov.w	r3, #0x0
  3cb6a8: f307 fd73    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x307ae6
  3cb6ac: 9b01         	ldr	r3, [sp, #0x4]
  3cb6ae: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb6b2: 681b         	ldr	r3, [r3]
  3cb6b4: 334c         	adds	r3, #0x4c
  3cb6b6: 681c         	ldr	r4, [r3]
  3cb6b8: 9b01         	ldr	r3, [sp, #0x4]
  3cb6ba: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cb6be: ab02         	add	r3, sp, #0x8
  3cb6c0: 4618         	mov	r0, r3
  3cb6c2: f04f 0100    	mov.w	r1, #0x0
  3cb6c6: f2cc 1190    	movt	r1, #0xc190
  3cb6ca: f04f 0200    	mov.w	r2, #0x0
  3cb6ce: f2cc 1220    	movt	r2, #0xc120
  3cb6d2: f1c7 fb0d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c761a
  3cb6d6: ab02         	add	r3, sp, #0x8
  3cb6d8: 4628         	mov	r0, r5
  3cb6da: 4619         	mov	r1, r3
  3cb6dc: 47a0         	blx	r4
  3cb6de: 9b01         	ldr	r3, [sp, #0x4]
  3cb6e0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb6e4: 681b         	ldr	r3, [r3]
  3cb6e6: 337c         	adds	r3, #0x7c
  3cb6e8: 681c         	ldr	r4, [r3]
  3cb6ea: 9b01         	ldr	r3, [sp, #0x4]
  3cb6ec: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cb6f0: ab02         	add	r3, sp, #0x8
  3cb6f2: 4618         	mov	r0, r3
  3cb6f4: f04f 517c    	mov.w	r1, #0x3f000000
  3cb6f8: f04f 527c    	mov.w	r2, #0x3f000000
  3cb6fc: f1c7 faf8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c75f0
  3cb700: ab02         	add	r3, sp, #0x8
  3cb702: 4628         	mov	r0, r5
  3cb704: 4619         	mov	r1, r3
  3cb706: 47a0         	blx	r4
  3cb708: 9b01         	ldr	r3, [sp, #0x4]
  3cb70a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb70e: 681b         	ldr	r3, [r3]
  3cb710: 3398         	adds	r3, #0x98
  3cb712: 681b         	ldr	r3, [r3]
  3cb714: 9a01         	ldr	r2, [sp, #0x4]
  3cb716: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb71a: 4610         	mov	r0, r2
  3cb71c: f04f 0100    	mov.w	r1, #0x0
  3cb720: 4798         	blx	r3
  3cb722: 9b01         	ldr	r3, [sp, #0x4]
  3cb724: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb728: 681b         	ldr	r3, [r3]
  3cb72a: 3340         	adds	r3, #0x40
  3cb72c: 681b         	ldr	r3, [r3]
  3cb72e: 9a01         	ldr	r2, [sp, #0x4]
  3cb730: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb734: 4610         	mov	r0, r2
  3cb736: f04f 517e    	mov.w	r1, #0x3f800000
  3cb73a: 4798         	blx	r3
  3cb73c: 9b01         	ldr	r3, [sp, #0x4]
  3cb73e: 681b         	ldr	r3, [r3]
  3cb740: 334c         	adds	r3, #0x4c
  3cb742: 681c         	ldr	r4, [r3]
  3cb744: 9d01         	ldr	r5, [sp, #0x4]
  3cb746: ab02         	add	r3, sp, #0x8
  3cb748: 4618         	mov	r0, r3
  3cb74a: f04f 0100    	mov.w	r1, #0x0
  3cb74e: f04f 0200    	mov.w	r2, #0x0
  3cb752: f1c7 facd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c759a
  3cb756: ab02         	add	r3, sp, #0x8
  3cb758: 4628         	mov	r0, r5
  3cb75a: 4619         	mov	r1, r3
  3cb75c: 47a0         	blx	r4
  3cb75e: 9b01         	ldr	r3, [sp, #0x4]
  3cb760: 681b         	ldr	r3, [r3]
  3cb762: 3340         	adds	r3, #0x40
  3cb764: 681b         	ldr	r3, [r3]
  3cb766: 9a01         	ldr	r2, [sp, #0x4]
  3cb768: 4610         	mov	r0, r2
  3cb76a: f04f 517e    	mov.w	r1, #0x3f800000
  3cb76e: 4798         	blx	r3
  3cb770: 9b01         	ldr	r3, [sp, #0x4]
  3cb772: 681b         	ldr	r3, [r3]
  3cb774: 3398         	adds	r3, #0x98
  3cb776: 681b         	ldr	r3, [r3]
  3cb778: 9a01         	ldr	r2, [sp, #0x4]
  3cb77a: 4610         	mov	r0, r2
  3cb77c: f04f 0100    	mov.w	r1, #0x0
  3cb780: 4798         	blx	r3
  3cb782: b005         	add	sp, #0x14
  3cb784: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cb785); words below are literal-pool data ---
  3cb786: bf00         	nop
  3cb788: b2a4         	uxth	r4, r4
  3cb78a: 0040         	lsls	r0, r0, #0x1

// ==== SAW::setSecondaryConfiguration
//      file offset 0x3cb78c (= ELF address; Ghidra 0x3db78c), 292 bytes, Thumb-2
  3cb78c: b530         	push	{r4, r5, lr}
  3cb78e: b085         	sub	sp, #0x14
  3cb790: 9001         	str	r0, [sp, #0x4]
  3cb792: 9b01         	ldr	r3, [sp, #0x4]
  3cb794: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb798: 2b00         	cmp	r3, #0x0
  3cb79a: d019         	beq	0x3cb7d0 <SAW::setSecondaryConfiguration()+0x44> @ imm = #0x32
  3cb79c: 9b01         	ldr	r3, [sp, #0x4]
  3cb79e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3cb7a2: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3cb8ac <SAW::setSecondaryConfiguration()+0x120>
  3cb7a4: 447b         	add	r3, pc
  3cb7a6: ed93 6b00    	vldr	d6, [r3]
  3cb7aa: ed93 7b02    	vldr	d7, [r3, #8]
  3cb7ae: 4610         	mov	r0, r2
  3cb7b0: eeb0 0b46    	vmov.f64	d0, d6
  3cb7b4: eeb0 1b47    	vmov.f64	d1, d7
  3cb7b8: f7fe f9ec    	bl	0x3c9b94 <DataStructures::Map<RakNet::RakNetGUID, FClientEntry*, &int DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID const&, RakNet::RakNetGUID const&)>::MapNode::MapNode()+0x44c> @ imm = #-0x1c28
  3cb7bc: 9b01         	ldr	r3, [sp, #0x4]
  3cb7be: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3cb7c2: 4618         	mov	r0, r3
  3cb7c4: f04f 0200    	mov.w	r2, #0x0
  3cb7c8: f04f 0300    	mov.w	r3, #0x0
  3cb7cc: f307 fce1    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3079c2
  3cb7d0: 9b01         	ldr	r3, [sp, #0x4]
  3cb7d2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb7d6: 681b         	ldr	r3, [r3]
  3cb7d8: 334c         	adds	r3, #0x4c
  3cb7da: 681c         	ldr	r4, [r3]
  3cb7dc: 9b01         	ldr	r3, [sp, #0x4]
  3cb7de: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cb7e2: ab02         	add	r3, sp, #0x8
  3cb7e4: 4618         	mov	r0, r3
  3cb7e6: f04f 0100    	mov.w	r1, #0x0
  3cb7ea: f2cc 01a0    	movt	r1, #0xc0a0
  3cb7ee: f04f 0200    	mov.w	r2, #0x0
  3cb7f2: f2cc 1220    	movt	r2, #0xc120
  3cb7f6: f1c7 fa7b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c74f6
  3cb7fa: ab02         	add	r3, sp, #0x8
  3cb7fc: 4628         	mov	r0, r5
  3cb7fe: 4619         	mov	r1, r3
  3cb800: 47a0         	blx	r4
  3cb802: 9b01         	ldr	r3, [sp, #0x4]
  3cb804: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb808: 681b         	ldr	r3, [r3]
  3cb80a: 337c         	adds	r3, #0x7c
  3cb80c: 681c         	ldr	r4, [r3]
  3cb80e: 9b01         	ldr	r3, [sp, #0x4]
  3cb810: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3cb814: ab02         	add	r3, sp, #0x8
  3cb816: 4618         	mov	r0, r3
  3cb818: f04f 517c    	mov.w	r1, #0x3f000000
  3cb81c: f04f 527c    	mov.w	r2, #0x3f000000
  3cb820: f1c7 fa66    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c74cc
  3cb824: ab02         	add	r3, sp, #0x8
  3cb826: 4628         	mov	r0, r5
  3cb828: 4619         	mov	r1, r3
  3cb82a: 47a0         	blx	r4
  3cb82c: 9b01         	ldr	r3, [sp, #0x4]
  3cb82e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb832: 681b         	ldr	r3, [r3]
  3cb834: 3398         	adds	r3, #0x98
  3cb836: 681b         	ldr	r3, [r3]
  3cb838: 9a01         	ldr	r2, [sp, #0x4]
  3cb83a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb83e: 4610         	mov	r0, r2
  3cb840: f04f 0100    	mov.w	r1, #0x0
  3cb844: 4798         	blx	r3
  3cb846: 9b01         	ldr	r3, [sp, #0x4]
  3cb848: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb84c: 681b         	ldr	r3, [r3]
  3cb84e: 3340         	adds	r3, #0x40
  3cb850: 681b         	ldr	r3, [r3]
  3cb852: 9a01         	ldr	r2, [sp, #0x4]
  3cb854: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb858: 4610         	mov	r0, r2
  3cb85a: f04f 517e    	mov.w	r1, #0x3f800000
  3cb85e: 4798         	blx	r3
  3cb860: 9b01         	ldr	r3, [sp, #0x4]
  3cb862: 681b         	ldr	r3, [r3]
  3cb864: 334c         	adds	r3, #0x4c
  3cb866: 681c         	ldr	r4, [r3]
  3cb868: 9d01         	ldr	r5, [sp, #0x4]
  3cb86a: ab02         	add	r3, sp, #0x8
  3cb86c: 4618         	mov	r0, r3
  3cb86e: f04f 0100    	mov.w	r1, #0x0
  3cb872: f04f 0200    	mov.w	r2, #0x0
  3cb876: f1c7 fa3b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c7476
  3cb87a: ab02         	add	r3, sp, #0x8
  3cb87c: 4628         	mov	r0, r5
  3cb87e: 4619         	mov	r1, r3
  3cb880: 47a0         	blx	r4
  3cb882: 9b01         	ldr	r3, [sp, #0x4]
  3cb884: 681b         	ldr	r3, [r3]
  3cb886: 3340         	adds	r3, #0x40
  3cb888: 681b         	ldr	r3, [r3]
  3cb88a: 9a01         	ldr	r2, [sp, #0x4]
  3cb88c: 4610         	mov	r0, r2
  3cb88e: f04f 517e    	mov.w	r1, #0x3f800000
  3cb892: 4798         	blx	r3
  3cb894: 9b01         	ldr	r3, [sp, #0x4]
  3cb896: 681b         	ldr	r3, [r3]
  3cb898: 3398         	adds	r3, #0x98
  3cb89a: 681b         	ldr	r3, [r3]
  3cb89c: 9a01         	ldr	r2, [sp, #0x4]
  3cb89e: 4610         	mov	r0, r2
  3cb8a0: f04f 0100    	mov.w	r1, #0x0
  3cb8a4: 4798         	blx	r3
  3cb8a6: b005         	add	sp, #0x14
  3cb8a8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3cb8a9); words below are literal-pool data ---
  3cb8aa: bf00         	nop
  3cb8ac: b180         	cbz	r0, 0x3cb8d0 <SAW::setMapConfiguration()+0x20> @ imm = #0x20
  3cb8ae: 0040         	lsls	r0, r0, #0x1

// ==== SAW::setMapConfiguration
//      file offset 0x3cb8b0 (= ELF address; Ghidra 0x3db8b0), 188 bytes, Thumb-2
  3cb8b0: b570         	push	{r4, r5, r6, lr}
  3cb8b2: b084         	sub	sp, #0x10
  3cb8b4: 9001         	str	r0, [sp, #0x4]
  3cb8b6: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x3cb964 <SAW::setMapConfiguration()+0xb4>
  3cb8b8: 447c         	add	r4, pc
  3cb8ba: 9b01         	ldr	r3, [sp, #0x4]
  3cb8bc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb8c0: 681b         	ldr	r3, [r3]
  3cb8c2: 334c         	adds	r3, #0x4c
  3cb8c4: 681d         	ldr	r5, [r3]
  3cb8c6: 9b01         	ldr	r3, [sp, #0x4]
  3cb8c8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cb8cc: ab02         	add	r3, sp, #0x8
  3cb8ce: 4618         	mov	r0, r3
  3cb8d0: f04f 0100    	mov.w	r1, #0x0
  3cb8d4: f04f 0200    	mov.w	r2, #0x0
  3cb8d8: f1c7 fa0a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c7414
  3cb8dc: ab02         	add	r3, sp, #0x8
  3cb8de: 4630         	mov	r0, r6
  3cb8e0: 4619         	mov	r1, r3
  3cb8e2: 47a8         	blx	r5
  3cb8e4: 9b01         	ldr	r3, [sp, #0x4]
  3cb8e6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb8ea: 681b         	ldr	r3, [r3]
  3cb8ec: 337c         	adds	r3, #0x7c
  3cb8ee: 681d         	ldr	r5, [r3]
  3cb8f0: 9b01         	ldr	r3, [sp, #0x4]
  3cb8f2: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3cb8f6: ab02         	add	r3, sp, #0x8
  3cb8f8: 4618         	mov	r0, r3
  3cb8fa: f04f 517c    	mov.w	r1, #0x3f000000
  3cb8fe: f04f 527c    	mov.w	r2, #0x3f000000
  3cb902: f1c7 f9f5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c73ea
  3cb906: ab02         	add	r3, sp, #0x8
  3cb908: 4630         	mov	r0, r6
  3cb90a: 4619         	mov	r1, r3
  3cb90c: 47a8         	blx	r5
  3cb90e: 9b01         	ldr	r3, [sp, #0x4]
  3cb910: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb914: 681b         	ldr	r3, [r3]
  3cb916: 3398         	adds	r3, #0x98
  3cb918: 681b         	ldr	r3, [r3]
  3cb91a: 9a01         	ldr	r2, [sp, #0x4]
  3cb91c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb920: 4610         	mov	r0, r2
  3cb922: f04f 0100    	mov.w	r1, #0x0
  3cb926: 4798         	blx	r3
  3cb928: 9b01         	ldr	r3, [sp, #0x4]
  3cb92a: 681b         	ldr	r3, [r3]
  3cb92c: 334c         	adds	r3, #0x4c
  3cb92e: 681d         	ldr	r5, [r3]
  3cb930: 9e01         	ldr	r6, [sp, #0x4]
  3cb932: ab02         	add	r3, sp, #0x8
  3cb934: 4618         	mov	r0, r3
  3cb936: f04f 0100    	mov.w	r1, #0x0
  3cb93a: f04f 0200    	mov.w	r2, #0x0
  3cb93e: f1c7 f9d7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1c73ae
  3cb942: ab02         	add	r3, sp, #0x8
  3cb944: 4630         	mov	r0, r6
  3cb946: 4619         	mov	r1, r3
  3cb948: 47a8         	blx	r5
  3cb94a: 9b01         	ldr	r3, [sp, #0x4]
  3cb94c: 681b         	ldr	r3, [r3]
  3cb94e: 3340         	adds	r3, #0x40
  3cb950: 681b         	ldr	r3, [r3]
  3cb952: 9901         	ldr	r1, [sp, #0x4]
  3cb954: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3cb968 <SAW::setMapConfiguration()+0xb8>
  3cb956: 58a2         	ldr	r2, [r4, r2]
  3cb958: 6812         	ldr	r2, [r2]
  3cb95a: 4608         	mov	r0, r1
  3cb95c: 4611         	mov	r1, r2
  3cb95e: 4798         	blx	r3
  3cb960: b004         	add	sp, #0x10
  3cb962: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3cb963); words below are literal-pool data ---
  3cb964: 7150         	strb	r0, [r2, #0x5]
  3cb966: 0056         	lsls	r6, r2, #0x1
  3cb968: d748         	bvc	0x3cb9fc <SAW::removeWeapon()+0x44> @ imm = #0x90
  3cb96a: ffff b500    	<unknown>

// ==== SAW::isRight
//      file offset 0x3cb96c (= ELF address; Ghidra 0x3db96c), 60 bytes, Thumb-2
  3cb96c: b500         	push	{lr}
  3cb96e: b083         	sub	sp, #0xc
  3cb970: 9001         	str	r0, [sp, #0x4]
  3cb972: 9b01         	ldr	r3, [sp, #0x4]
  3cb974: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3cb978: 681b         	ldr	r3, [r3]
  3cb97a: 3334         	adds	r3, #0x34
  3cb97c: 681b         	ldr	r3, [r3]
  3cb97e: 9a01         	ldr	r2, [sp, #0x4]
  3cb980: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3cb984: 4610         	mov	r0, r2
  3cb986: 4798         	blx	r3
  3cb988: ee07 0a10    	vmov	s14, r0
  3cb98c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3cb990: eeb4 7ae7    	vcmpe.f32	s14, s15
  3cb994: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3cb998: bfd4         	ite	le
  3cb99a: 2300         	movle	r3, #0x0
  3cb99c: 2301         	movgt	r3, #0x1
  3cb99e: b2db         	uxtb	r3, r3
  3cb9a0: 4618         	mov	r0, r3
  3cb9a2: b003         	add	sp, #0xc
  3cb9a4: f85d fb04    	ldr	pc, [sp], #4

// ==== SAW::setRight
//      file offset 0x3cb9a8 (= ELF address; Ghidra 0x3db9a8), 14 bytes, Thumb-2
  3cb9a8: b082         	sub	sp, #0x8
  3cb9aa: 9001         	str	r0, [sp, #0x4]
  3cb9ac: 460b         	mov	r3, r1
  3cb9ae: f88d 3003    	strb.w	r3, [sp, #0x3]
  3cb9b2: b002         	add	sp, #0x8
  3cb9b4: 4770         	bx	lr

// ==== SAW::removeWeapon
//      file offset 0x3cb9b8 (= ELF address; Ghidra 0x3db9b8), 80 bytes, Thumb-2
  3cb9b8: b500         	push	{lr}
  3cb9ba: b085         	sub	sp, #0x14
  3cb9bc: 9001         	str	r0, [sp, #0x4]
  3cb9be: 9b01         	ldr	r3, [sp, #0x4]
  3cb9c0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3cba00 <SAW::removeWeapon()+0x48>
  3cb9c2: 447a         	add	r2, pc
  3cb9c4: 4611         	mov	r1, r2
  3cb9c6: aa02         	add	r2, sp, #0x8
  3cb9c8: c903         	ldm	r1, {r0, r1}
  3cb9ca: e882 0003    	stm.w	r2, {r0, r1}
  3cb9ce: 4618         	mov	r0, r3
  3cb9d0: ab02         	add	r3, sp, #0x8
  3cb9d2: e893 0006    	ldm.w	r3, {r1, r2}
  3cb9d6: f64c 43cd    	movw	r3, #0xcccd
  3cb9da: f6c3 53cc    	movt	r3, #0x3dcc
  3cb9de: f1c5 fc59    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1c58b2
  3cb9e2: f214 fe65    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x214cca
  3cb9e6: 4602         	mov	r2, r0
  3cb9e8: 9b01         	ldr	r3, [sp, #0x4]
  3cb9ea: 4610         	mov	r0, r2
  3cb9ec: 4a05         	ldr	r2, [pc, #0x14]         @ 0x3cba04 <SAW::removeWeapon()+0x4c>
  3cb9ee: 447a         	add	r2, pc
  3cb9f0: 4611         	mov	r1, r2
  3cb9f2: 461a         	mov	r2, r3
  3cb9f4: f215 f89a    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x215134
  3cb9f8: b005         	add	sp, #0x14
  3cb9fa: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cb9fd); words below are literal-pool data ---
  3cb9fe: bf00         	nop
  3cba00: aeee         	add	r6, sp, #0x3b8
  3cba02: 0040         	lsls	r0, r0, #0x1
  3cba04: aeb2         	add	r6, sp, #0x2c8
  3cba06: 0040         	lsls	r0, r0, #0x1

// ==== SAW::delayedRemoveWeapon
//      file offset 0x3cba08 (= ELF address; Ghidra 0x3dba08), 40 bytes, Thumb-2
  3cba08: b500         	push	{lr}
  3cba0a: b083         	sub	sp, #0xc
  3cba0c: 9001         	str	r0, [sp, #0x4]
  3cba0e: f214 fe4f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x214c9e
  3cba12: 4602         	mov	r2, r0
  3cba14: 9b01         	ldr	r3, [sp, #0x4]
  3cba16: 4610         	mov	r0, r2
  3cba18: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3cba2c <SAW::delayedRemoveWeapon()+0x24>
  3cba1a: 447a         	add	r2, pc
  3cba1c: 4611         	mov	r1, r2
  3cba1e: 461a         	mov	r2, r3
  3cba20: f215 f884    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x215108
  3cba24: b003         	add	sp, #0xc
  3cba26: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cba29); words below are literal-pool data ---
  3cba2a: bf00         	nop
  3cba2c: ae9e         	add	r6, sp, #0x278
  3cba2e: 0040         	lsls	r0, r0, #0x1

// ==== SAW::detonate
//      file offset 0x3cba30 (= ELF address; Ghidra 0x3dba30), 64 bytes, Thumb-2
  3cba30: b500         	push	{lr}
  3cba32: b083         	sub	sp, #0xc
  3cba34: 9001         	str	r0, [sp, #0x4]
  3cba36: 9100         	str	r1, [sp]
  3cba38: f214 fe3a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x214c74
  3cba3c: 4603         	mov	r3, r0
  3cba3e: 4618         	mov	r0, r3
  3cba40: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3cba68 <SAW::detonate(cocos2d::CCObject*)+0x38>
  3cba42: 447b         	add	r3, pc
  3cba44: 4619         	mov	r1, r3
  3cba46: 9a00         	ldr	r2, [sp]
  3cba48: f215 f870    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2150e0
  3cba4c: f214 fe30    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x214c60
  3cba50: 4603         	mov	r3, r0
  3cba52: 4618         	mov	r0, r3
  3cba54: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3cba6c <SAW::detonate(cocos2d::CCObject*)+0x3c>
  3cba56: 447b         	add	r3, pc
  3cba58: 4619         	mov	r1, r3
  3cba5a: 9a00         	ldr	r2, [sp]
  3cba5c: f215 f866    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2150cc
  3cba60: b003         	add	sp, #0xc
  3cba62: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3cba65); words below are literal-pool data ---
  3cba66: bf00         	nop
  3cba68: ae86         	add	r6, sp, #0x218
  3cba6a: 0040         	lsls	r0, r0, #0x1
  3cba6c: ae82         	add	r6, sp, #0x208
  3cba6e: 0040         	lsls	r0, r0, #0x1

// ==== SAW::create
//      file offset 0x4175cc (= ELF address; Ghidra 0x4275cc), 112 bytes, Thumb-2
  4175cc: b510         	push	{r4, lr}
  4175ce: b082         	sub	sp, #0x8
  4175d0: f44f 7000    	mov.w	r0, #0x200
  4175d4: f370 f9c6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37038c
  4175d8: 4603         	mov	r3, r0
  4175da: 461c         	mov	r4, r3
  4175dc: 4620         	mov	r0, r4
  4175de: f7b3 fa77    	bl	0x3caad0 <SAW::SAW()>   @ imm = #-0x4cb12
  4175e2: 9401         	str	r4, [sp, #0x4]
  4175e4: 9b01         	ldr	r3, [sp, #0x4]
  4175e6: 2b00         	cmp	r3, #0x0
  4175e8: d00a         	beq	0x417600 <SAW::create()+0x34> @ imm = #0x14
  4175ea: 9b01         	ldr	r3, [sp, #0x4]
  4175ec: 681b         	ldr	r3, [r3]
  4175ee: 3318         	adds	r3, #0x18
  4175f0: 681b         	ldr	r3, [r3]
  4175f2: 9801         	ldr	r0, [sp, #0x4]
  4175f4: 4798         	blx	r3
  4175f6: 4603         	mov	r3, r0
  4175f8: 2b00         	cmp	r3, #0x0
  4175fa: d001         	beq	0x417600 <SAW::create()+0x34> @ imm = #0x2
  4175fc: 2301         	movs	r3, #0x1
  4175fe: e000         	b	0x417602 <SAW::create()+0x36> @ imm = #0x0
  417600: 2300         	movs	r3, #0x0
  417602: 2b00         	cmp	r3, #0x0
  417604: d005         	beq	0x417612 <SAW::create()+0x46> @ imm = #0xa
  417606: 9b01         	ldr	r3, [sp, #0x4]
  417608: 4618         	mov	r0, r3
  41760a: f180 fc77    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1808ee
  41760e: 9b01         	ldr	r3, [sp, #0x4]
  417610: e011         	b	0x417636 <SAW::create()+0x6a> @ imm = #0x22
  417612: 9b01         	ldr	r3, [sp, #0x4]
  417614: 2b00         	cmp	r3, #0x0
  417616: d005         	beq	0x417624 <SAW::create()+0x58> @ imm = #0xa
  417618: 9b01         	ldr	r3, [sp, #0x4]
  41761a: 681b         	ldr	r3, [r3]
  41761c: 3308         	adds	r3, #0x8
  41761e: 681b         	ldr	r3, [r3]
  417620: 9801         	ldr	r0, [sp, #0x4]
  417622: 4798         	blx	r3
  417624: 2300         	movs	r3, #0x0
  417626: 9301         	str	r3, [sp, #0x4]
  417628: 2300         	movs	r3, #0x0
  41762a: e004         	b	0x417636 <SAW::create()+0x6a> @ imm = #0x8
  41762c: 4620         	mov	r0, r4
  41762e: f370 fd39    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370a72
  417632: f370 fd3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370a76
  417636: 4618         	mov	r0, r3
  417638: b002         	add	sp, #0x8
  41763a: bd10         	pop	{r4, pc}
