// GridSectorizer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 11 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GridSectorizer.cpp

// ==== GridSectorizer::GridSectorizer
//      file offset 0x487738 (= ELF address; Ghidra 0x497738), 18 bytes, Thumb-2
  487738: b082         	sub	sp, #0x8
  48773a: 9001         	str	r0, [sp, #0x4]
  48773c: 9b01         	ldr	r3, [sp, #0x4]
  48773e: 2200         	movs	r2, #0x0
  487740: 629a         	str	r2, [r3, #0x28]
  487742: 9b01         	ldr	r3, [sp, #0x4]
  487744: 4618         	mov	r0, r3
  487746: b002         	add	sp, #0x8
  487748: 4770         	bx	lr

// ==== GridSectorizer::~GridSectorizer
//      file offset 0x48774c (= ELF address; Ghidra 0x49774c), 48 bytes, Thumb-2
  48774c: b500         	push	{lr}
  48774e: b083         	sub	sp, #0xc
  487750: 9001         	str	r0, [sp, #0x4]
  487752: 9b01         	ldr	r3, [sp, #0x4]
  487754: 6a9b         	ldr	r3, [r3, #0x28]
  487756: 2b00         	cmp	r3, #0x0
  487758: d008         	beq	0x48776c <GridSectorizer::~GridSectorizer()+0x20> @ imm = #0x10
  48775a: 9b01         	ldr	r3, [sp, #0x4]
  48775c: 6a9b         	ldr	r3, [r3, #0x28]
  48775e: 4618         	mov	r0, r3
  487760: 4b05         	ldr	r3, [pc, #0x14]         @ 0x487778 <GridSectorizer::~GridSectorizer()+0x2c>
  487762: 447b         	add	r3, pc
  487764: 4619         	mov	r1, r3
  487766: 2217         	movs	r2, #0x17
  487768: f000 fa24    	bl	0x487bb4 <void RakNet::OP_DELETE_ARRAY<DataStructures::List<void*>>(DataStructures::List<void*>*, char const*, unsigned int)> @ imm = #0x448
  48776c: 9b01         	ldr	r3, [sp, #0x4]
  48776e: 4618         	mov	r0, r3
  487770: b003         	add	sp, #0xc
  487772: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x487775); words below are literal-pool data ---
  487776: bf00         	nop
  487778: cba2         	ldm	r3!, {r1, r5, r7}
  48777a: 0035         	movs	r5, r6

// ==== GridSectorizer::Init
//      file offset 0x48777c (= ELF address; Ghidra 0x49777c), 312 bytes, Thumb-2
  48777c: b500         	push	{lr}
  48777e: b085         	sub	sp, #0x14
  487780: 9003         	str	r0, [sp, #0xc]
  487782: 9102         	str	r1, [sp, #0x8]
  487784: 9201         	str	r2, [sp, #0x4]
  487786: 9300         	str	r3, [sp]
  487788: 9b03         	ldr	r3, [sp, #0xc]
  48778a: 6a9b         	ldr	r3, [r3, #0x28]
  48778c: 2b00         	cmp	r3, #0x0
  48778e: d008         	beq	0x4877a2 <GridSectorizer::Init(float, float, float, float, float, float)+0x26> @ imm = #0x10
  487790: 9b03         	ldr	r3, [sp, #0xc]
  487792: 6a9b         	ldr	r3, [r3, #0x28]
  487794: 4618         	mov	r0, r3
  487796: 4b45         	ldr	r3, [pc, #0x114]        @ 0x4878ac <GridSectorizer::Init(float, float, float, float, float, float)+0x130>
  487798: 447b         	add	r3, pc
  48779a: 4619         	mov	r1, r3
  48779c: 221d         	movs	r2, #0x1d
  48779e: f000 fa09    	bl	0x487bb4 <void RakNet::OP_DELETE_ARRAY<DataStructures::List<void*>>(DataStructures::List<void*>*, char const*, unsigned int)> @ imm = #0x412
  4877a2: 9b03         	ldr	r3, [sp, #0xc]
  4877a4: 9a00         	ldr	r2, [sp]
  4877a6: 601a         	str	r2, [r3]
  4877a8: 9b03         	ldr	r3, [sp, #0xc]
  4877aa: 9a06         	ldr	r2, [sp, #0x18]
  4877ac: 605a         	str	r2, [r3, #0x4]
  4877ae: ed9d 7a07    	vldr	s14, [sp, #28]
  4877b2: eddd 7a00    	vldr	s15, [sp]
  4877b6: ee77 7a67    	vsub.f32	s15, s14, s15
  4877ba: 9b03         	ldr	r3, [sp, #0xc]
  4877bc: edc3 7a06    	vstr	s15, [r3, #24]
  4877c0: ed9d 7a08    	vldr	s14, [sp, #32]
  4877c4: eddd 7a06    	vldr	s15, [sp, #24]
  4877c8: ee77 7a67    	vsub.f32	s15, s14, s15
  4877cc: 9b03         	ldr	r3, [sp, #0xc]
  4877ce: edc3 7a07    	vstr	s15, [r3, #28]
  4877d2: 9b03         	ldr	r3, [sp, #0xc]
  4877d4: ed93 7a06    	vldr	s14, [r3, #24]
  4877d8: eddd 7a02    	vldr	s15, [sp, #8]
  4877dc: eec7 7a27    	vdiv.f32	s15, s14, s15
  4877e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4877e4: ec51 0b17    	vmov	r0, r1, d7
  4877e8: f64e ed6e    	blx	0x2d62c8 <.plt+0x3f8>   @ imm = #-0x1b1524
  4877ec: ec41 0b17    	vmov	d7, r0, r1
  4877f0: eefd 6bc7    	vcvt.s32.f64	s13, d7
  4877f4: ee16 2a90    	vmov	r2, s13
  4877f8: 9b03         	ldr	r3, [sp, #0xc]
  4877fa: 621a         	str	r2, [r3, #0x20]
  4877fc: 9b03         	ldr	r3, [sp, #0xc]
  4877fe: ed93 7a07    	vldr	s14, [r3, #28]
  487802: eddd 7a01    	vldr	s15, [sp, #4]
  487806: eec7 7a27    	vdiv.f32	s15, s14, s15
  48780a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  48780e: ec51 0b17    	vmov	r0, r1, d7
  487812: f64e ed5a    	blx	0x2d62c8 <.plt+0x3f8>   @ imm = #-0x1b154c
  487816: ec41 0b17    	vmov	d7, r0, r1
  48781a: eefd 6bc7    	vcvt.s32.f64	s13, d7
  48781e: ee16 2a90    	vmov	r2, s13
  487822: 9b03         	ldr	r3, [sp, #0xc]
  487824: 625a         	str	r2, [r3, #0x24]
  487826: 9b03         	ldr	r3, [sp, #0xc]
  487828: ed93 7a06    	vldr	s14, [r3, #24]
  48782c: 9b03         	ldr	r3, [sp, #0xc]
  48782e: 6a1b         	ldr	r3, [r3, #0x20]
  487830: ee06 3a90    	vmov	s13, r3
  487834: eef8 7ae6    	vcvt.f32.s32	s15, s13
  487838: eec7 7a27    	vdiv.f32	s15, s14, s15
  48783c: 9b03         	ldr	r3, [sp, #0xc]
  48783e: edc3 7a02    	vstr	s15, [r3, #8]
  487842: 9b03         	ldr	r3, [sp, #0xc]
  487844: ed93 7a07    	vldr	s14, [r3, #28]
  487848: 9b03         	ldr	r3, [sp, #0xc]
  48784a: 6a5b         	ldr	r3, [r3, #0x24]
  48784c: ee06 3a90    	vmov	s13, r3
  487850: eef8 7ae6    	vcvt.f32.s32	s15, s13
  487854: eec7 7a27    	vdiv.f32	s15, s14, s15
  487858: 9b03         	ldr	r3, [sp, #0xc]
  48785a: edc3 7a03    	vstr	s15, [r3, #12]
  48785e: 9b03         	ldr	r3, [sp, #0xc]
  487860: edd3 7a02    	vldr	s15, [r3, #8]
  487864: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  487868: eec7 7a27    	vdiv.f32	s15, s14, s15
  48786c: 9b03         	ldr	r3, [sp, #0xc]
  48786e: edc3 7a04    	vstr	s15, [r3, #16]
  487872: 9b03         	ldr	r3, [sp, #0xc]
  487874: edd3 7a03    	vldr	s15, [r3, #12]
  487878: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  48787c: eec7 7a27    	vdiv.f32	s15, s14, s15
  487880: 9b03         	ldr	r3, [sp, #0xc]
  487882: edc3 7a05    	vstr	s15, [r3, #20]
  487886: 9b03         	ldr	r3, [sp, #0xc]
  487888: 6a1b         	ldr	r3, [r3, #0x20]
  48788a: 9a03         	ldr	r2, [sp, #0xc]
  48788c: 6a52         	ldr	r2, [r2, #0x24]
  48788e: fb02 f303    	mul	r3, r2, r3
  487892: 4618         	mov	r0, r3
  487894: 4b06         	ldr	r3, [pc, #0x18]         @ 0x4878b0 <GridSectorizer::Init(float, float, float, float, float, float)+0x134>
  487896: 447b         	add	r3, pc
  487898: 4619         	mov	r1, r3
  48789a: 222f         	movs	r2, #0x2f
  48789c: f000 f9aa    	bl	0x487bf4 <DataStructures::List<void*>* RakNet::OP_NEW_ARRAY<DataStructures::List<void*>>(int, char const*, unsigned int)> @ imm = #0x354
  4878a0: 4602         	mov	r2, r0
  4878a2: 9b03         	ldr	r3, [sp, #0xc]
  4878a4: 629a         	str	r2, [r3, #0x28]
  4878a6: b005         	add	sp, #0x14
  4878a8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4878ab); words below are literal-pool data ---
  4878ac: cb6c         	ldm	r3, {r2, r3, r5, r6}
  4878ae: 0035         	movs	r5, r6
  4878b0: ca6e         	ldm	r2, {r1, r2, r3, r5, r6}
  4878b2: 0035         	movs	r5, r6

// ==== GridSectorizer::AddEntry
//      file offset 0x4878b4 (= ELF address; Ghidra 0x4978b4), 160 bytes, Thumb-2
  4878b4: b500         	push	{lr}
  4878b6: b08b         	sub	sp, #0x2c
  4878b8: 9003         	str	r0, [sp, #0xc]
  4878ba: 9102         	str	r1, [sp, #0x8]
  4878bc: 9201         	str	r2, [sp, #0x4]
  4878be: 9300         	str	r3, [sp]
  4878c0: 9803         	ldr	r0, [sp, #0xc]
  4878c2: 9901         	ldr	r1, [sp, #0x4]
  4878c4: f000 f914    	bl	0x487af0 <GridSectorizer::WorldToCellXOffsetAndClamped(float) const> @ imm = #0x228
  4878c8: 4603         	mov	r3, r0
  4878ca: 9306         	str	r3, [sp, #0x18]
  4878cc: 9803         	ldr	r0, [sp, #0xc]
  4878ce: 9900         	ldr	r1, [sp]
  4878d0: f000 f92a    	bl	0x487b28 <GridSectorizer::WorldToCellYOffsetAndClamped(float) const> @ imm = #0x254
  4878d4: 4603         	mov	r3, r0
  4878d6: 9307         	str	r3, [sp, #0x1c]
  4878d8: 9803         	ldr	r0, [sp, #0xc]
  4878da: 990c         	ldr	r1, [sp, #0x30]
  4878dc: f000 f908    	bl	0x487af0 <GridSectorizer::WorldToCellXOffsetAndClamped(float) const> @ imm = #0x210
  4878e0: 4603         	mov	r3, r0
  4878e2: 9308         	str	r3, [sp, #0x20]
  4878e4: 9803         	ldr	r0, [sp, #0xc]
  4878e6: 990d         	ldr	r1, [sp, #0x34]
  4878e8: f000 f91e    	bl	0x487b28 <GridSectorizer::WorldToCellYOffsetAndClamped(float) const> @ imm = #0x23c
  4878ec: 4603         	mov	r3, r0
  4878ee: 9309         	str	r3, [sp, #0x24]
  4878f0: 9b06         	ldr	r3, [sp, #0x18]
  4878f2: 9304         	str	r3, [sp, #0x10]
  4878f4: e024         	b	0x487940 <GridSectorizer::AddEntry(void*, float, float, float, float)+0x8c> @ imm = #0x48
  4878f6: 9b07         	ldr	r3, [sp, #0x1c]
  4878f8: 9305         	str	r3, [sp, #0x14]
  4878fa: e01a         	b	0x487932 <GridSectorizer::AddEntry(void*, float, float, float, float)+0x7e> @ imm = #0x34
  4878fc: 9b03         	ldr	r3, [sp, #0xc]
  4878fe: 6a99         	ldr	r1, [r3, #0x28]
  487900: 9b03         	ldr	r3, [sp, #0xc]
  487902: 6a1b         	ldr	r3, [r3, #0x20]
  487904: 9a05         	ldr	r2, [sp, #0x14]
  487906: fb02 f203    	mul	r2, r2, r3
  48790a: 9b04         	ldr	r3, [sp, #0x10]
  48790c: 4413         	add	r3, r2
  48790e: 461a         	mov	r2, r3
  487910: 4613         	mov	r3, r2
  487912: 005b         	lsls	r3, r3, #0x1
  487914: 4413         	add	r3, r2
  487916: 009b         	lsls	r3, r3, #0x2
  487918: 18ca         	adds	r2, r1, r3
  48791a: ab02         	add	r3, sp, #0x8
  48791c: 4610         	mov	r0, r2
  48791e: 4619         	mov	r1, r3
  487920: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x487950 <GridSectorizer::AddEntry(void*, float, float, float, float)+0x9c>
  487922: 447b         	add	r3, pc
  487924: 461a         	mov	r2, r3
  487926: 2344         	movs	r3, #0x44
  487928: f000 f9b0    	bl	0x487c8c <DataStructures::List<void*>::Insert(void* const&, char const*, unsigned int)> @ imm = #0x360
  48792c: 9b05         	ldr	r3, [sp, #0x14]
  48792e: 3301         	adds	r3, #0x1
  487930: 9305         	str	r3, [sp, #0x14]
  487932: 9a05         	ldr	r2, [sp, #0x14]
  487934: 9b09         	ldr	r3, [sp, #0x24]
  487936: 429a         	cmp	r2, r3
  487938: dde0         	ble	0x4878fc <GridSectorizer::AddEntry(void*, float, float, float, float)+0x48> @ imm = #-0x40
  48793a: 9b04         	ldr	r3, [sp, #0x10]
  48793c: 3301         	adds	r3, #0x1
  48793e: 9304         	str	r3, [sp, #0x10]
  487940: 9a04         	ldr	r2, [sp, #0x10]
  487942: 9b08         	ldr	r3, [sp, #0x20]
  487944: 429a         	cmp	r2, r3
  487946: ddd6         	ble	0x4878f6 <GridSectorizer::AddEntry(void*, float, float, float, float)+0x42> @ imm = #-0x54
  487948: b00b         	add	sp, #0x2c
  48794a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x48794d); words below are literal-pool data ---
  48794e: bf00         	nop
  487950: c9e2         	ldm	r1, {r1, r5, r6, r7}
  487952: 0035         	movs	r5, r6

// ==== GridSectorizer::GetEntries
//      file offset 0x487954 (= ELF address; Ghidra 0x497954), 224 bytes, Thumb-2
  487954: b500         	push	{lr}
  487956: b08d         	sub	sp, #0x34
  487958: 9003         	str	r0, [sp, #0xc]
  48795a: 9102         	str	r1, [sp, #0x8]
  48795c: 9201         	str	r2, [sp, #0x4]
  48795e: 9300         	str	r3, [sp]
  487960: 9803         	ldr	r0, [sp, #0xc]
  487962: 9901         	ldr	r1, [sp, #0x4]
  487964: f000 f8c4    	bl	0x487af0 <GridSectorizer::WorldToCellXOffsetAndClamped(float) const> @ imm = #0x188
  487968: 4603         	mov	r3, r0
  48796a: 9307         	str	r3, [sp, #0x1c]
  48796c: 9803         	ldr	r0, [sp, #0xc]
  48796e: 9900         	ldr	r1, [sp]
  487970: f000 f8da    	bl	0x487b28 <GridSectorizer::WorldToCellYOffsetAndClamped(float) const> @ imm = #0x1b4
  487974: 4603         	mov	r3, r0
  487976: 9308         	str	r3, [sp, #0x20]
  487978: 9803         	ldr	r0, [sp, #0xc]
  48797a: 990e         	ldr	r1, [sp, #0x38]
  48797c: f000 f8b8    	bl	0x487af0 <GridSectorizer::WorldToCellXOffsetAndClamped(float) const> @ imm = #0x170
  487980: 4603         	mov	r3, r0
  487982: 9309         	str	r3, [sp, #0x24]
  487984: 9803         	ldr	r0, [sp, #0xc]
  487986: 990f         	ldr	r1, [sp, #0x3c]
  487988: f000 f8ce    	bl	0x487b28 <GridSectorizer::WorldToCellYOffsetAndClamped(float) const> @ imm = #0x19c
  48798c: 4603         	mov	r3, r0
  48798e: 930a         	str	r3, [sp, #0x28]
  487990: 9802         	ldr	r0, [sp, #0x8]
  487992: 2101         	movs	r1, #0x1
  487994: 4b25         	ldr	r3, [pc, #0x94]         @ 0x487a2c <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0xd8>
  487996: 447b         	add	r3, pc
  487998: 461a         	mov	r2, r3
  48799a: 239e         	movs	r3, #0x9e
  48799c: f000 f9ce    	bl	0x487d3c <DataStructures::List<void*>::Clear(bool, char const*, unsigned int)> @ imm = #0x39c
  4879a0: 9b07         	ldr	r3, [sp, #0x1c]
  4879a2: 9304         	str	r3, [sp, #0x10]
  4879a4: e03b         	b	0x487a1e <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0xca> @ imm = #0x76
  4879a6: 9b08         	ldr	r3, [sp, #0x20]
  4879a8: 9305         	str	r3, [sp, #0x14]
  4879aa: e031         	b	0x487a10 <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0xbc> @ imm = #0x62
  4879ac: 9b03         	ldr	r3, [sp, #0xc]
  4879ae: 6a99         	ldr	r1, [r3, #0x28]
  4879b0: 9b03         	ldr	r3, [sp, #0xc]
  4879b2: 6a1b         	ldr	r3, [r3, #0x20]
  4879b4: 9a05         	ldr	r2, [sp, #0x14]
  4879b6: fb02 f303    	mul	r3, r2, r3
  4879ba: 461a         	mov	r2, r3
  4879bc: 9b04         	ldr	r3, [sp, #0x10]
  4879be: 441a         	add	r2, r3
  4879c0: 4613         	mov	r3, r2
  4879c2: 005b         	lsls	r3, r3, #0x1
  4879c4: 4413         	add	r3, r2
  4879c6: 009b         	lsls	r3, r3, #0x2
  4879c8: 440b         	add	r3, r1
  4879ca: 930b         	str	r3, [sp, #0x2c]
  4879cc: 2300         	movs	r3, #0x0
  4879ce: 9306         	str	r3, [sp, #0x18]
  4879d0: e00f         	b	0x4879f2 <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0x9e> @ imm = #0x1e
  4879d2: 980b         	ldr	r0, [sp, #0x2c]
  4879d4: 9906         	ldr	r1, [sp, #0x18]
  4879d6: f000 f9e5    	bl	0x487da4 <DataStructures::List<void*>::operator[](unsigned int) const> @ imm = #0x3ca
  4879da: 4603         	mov	r3, r0
  4879dc: 9802         	ldr	r0, [sp, #0x8]
  4879de: 4619         	mov	r1, r3
  4879e0: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x487a30 <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0xdc>
  4879e2: 447b         	add	r3, pc
  4879e4: 461a         	mov	r2, r3
  4879e6: 23a5         	movs	r3, #0xa5
  4879e8: f000 f950    	bl	0x487c8c <DataStructures::List<void*>::Insert(void* const&, char const*, unsigned int)> @ imm = #0x2a0
  4879ec: 9b06         	ldr	r3, [sp, #0x18]
  4879ee: 3301         	adds	r3, #0x1
  4879f0: 9306         	str	r3, [sp, #0x18]
  4879f2: 980b         	ldr	r0, [sp, #0x2c]
  4879f4: f000 f9ce    	bl	0x487d94 <DataStructures::List<void*>::Size() const> @ imm = #0x39c
  4879f8: 4602         	mov	r2, r0
  4879fa: 9b06         	ldr	r3, [sp, #0x18]
  4879fc: 429a         	cmp	r2, r3
  4879fe: bf94         	ite	ls
  487a00: 2300         	movls	r3, #0x0
  487a02: 2301         	movhi	r3, #0x1
  487a04: b2db         	uxtb	r3, r3
  487a06: 2b00         	cmp	r3, #0x0
  487a08: d1e3         	bne	0x4879d2 <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0x7e> @ imm = #-0x3a
  487a0a: 9b05         	ldr	r3, [sp, #0x14]
  487a0c: 3301         	adds	r3, #0x1
  487a0e: 9305         	str	r3, [sp, #0x14]
  487a10: 9a05         	ldr	r2, [sp, #0x14]
  487a12: 9b0a         	ldr	r3, [sp, #0x28]
  487a14: 429a         	cmp	r2, r3
  487a16: ddc9         	ble	0x4879ac <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0x58> @ imm = #-0x6e
  487a18: 9b04         	ldr	r3, [sp, #0x10]
  487a1a: 3301         	adds	r3, #0x1
  487a1c: 9304         	str	r3, [sp, #0x10]
  487a1e: 9a04         	ldr	r2, [sp, #0x10]
  487a20: 9b09         	ldr	r3, [sp, #0x24]
  487a22: 429a         	cmp	r2, r3
  487a24: ddbf         	ble	0x4879a6 <GridSectorizer::GetEntries(DataStructures::List<void*>&, float, float, float, float)+0x52> @ imm = #-0x82
  487a26: b00d         	add	sp, #0x34
  487a28: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x487a2b); words below are literal-pool data ---
  487a2c: c96e         	ldm	r1, {r1, r2, r3, r5, r6}
  487a2e: 0035         	movs	r5, r6
  487a30: c922         	ldm	r1, {r1, r5}
  487a32: 0035         	movs	r5, r6

// ==== GridSectorizer::PositionCrossesCells
//      file offset 0x487a34 (= ELF address; Ghidra 0x497a34), 98 bytes, Thumb-2
  487a34: b084         	sub	sp, #0x10
  487a36: 9003         	str	r0, [sp, #0xc]
  487a38: 9102         	str	r1, [sp, #0x8]
  487a3a: 9201         	str	r2, [sp, #0x4]
  487a3c: 9300         	str	r3, [sp]
  487a3e: 9b03         	ldr	r3, [sp, #0xc]
  487a40: edd3 7a02    	vldr	s15, [r3, #8]
  487a44: ed9d 7a02    	vldr	s14, [sp, #8]
  487a48: ee87 7a27    	vdiv.f32	s14, s14, s15
  487a4c: 9b03         	ldr	r3, [sp, #0xc]
  487a4e: edd3 7a02    	vldr	s15, [r3, #8]
  487a52: eddd 6a00    	vldr	s13, [sp]
  487a56: eec6 7aa7    	vdiv.f32	s15, s13, s15
  487a5a: eeb4 7a67    	vcmp.f32	s14, s15
  487a5e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  487a62: d112         	bne	0x487a8a <GridSectorizer::PositionCrossesCells(float, float, float, float) const+0x56> @ imm = #0x24
  487a64: 9b03         	ldr	r3, [sp, #0xc]
  487a66: edd3 7a03    	vldr	s15, [r3, #12]
  487a6a: ed9d 7a01    	vldr	s14, [sp, #4]
  487a6e: ee87 7a27    	vdiv.f32	s14, s14, s15
  487a72: 9b03         	ldr	r3, [sp, #0xc]
  487a74: edd3 7a03    	vldr	s15, [r3, #12]
  487a78: eddd 6a04    	vldr	s13, [sp, #16]
  487a7c: eec6 7aa7    	vdiv.f32	s15, s13, s15
  487a80: eeb4 7a67    	vcmp.f32	s14, s15
  487a84: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  487a88: d001         	beq	0x487a8e <GridSectorizer::PositionCrossesCells(float, float, float, float) const+0x5a> @ imm = #0x2
  487a8a: 2301         	movs	r3, #0x1
  487a8c: e000         	b	0x487a90 <GridSectorizer::PositionCrossesCells(float, float, float, float) const+0x5c> @ imm = #0x0
  487a8e: 2300         	movs	r3, #0x0
  487a90: 4618         	mov	r0, r3
  487a92: b004         	add	sp, #0x10
  487a94: 4770         	bx	lr

// ==== GridSectorizer::WorldToCellX
//      file offset 0x487a98 (= ELF address; Ghidra 0x497a98), 44 bytes, Thumb-2
  487a98: b082         	sub	sp, #0x8
  487a9a: 9001         	str	r0, [sp, #0x4]
  487a9c: 9100         	str	r1, [sp]
  487a9e: 9b01         	ldr	r3, [sp, #0x4]
  487aa0: edd3 7a00    	vldr	s15, [r3]
  487aa4: ed9d 7a00    	vldr	s14, [sp]
  487aa8: ee37 7a67    	vsub.f32	s14, s14, s15
  487aac: 9b01         	ldr	r3, [sp, #0x4]
  487aae: edd3 7a04    	vldr	s15, [r3, #16]
  487ab2: ee67 7a27    	vmul.f32	s15, s14, s15
  487ab6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  487aba: ee17 3a90    	vmov	r3, s15
  487abe: 4618         	mov	r0, r3
  487ac0: b002         	add	sp, #0x8
  487ac2: 4770         	bx	lr

// ==== GridSectorizer::WorldToCellY
//      file offset 0x487ac4 (= ELF address; Ghidra 0x497ac4), 44 bytes, Thumb-2
  487ac4: b082         	sub	sp, #0x8
  487ac6: 9001         	str	r0, [sp, #0x4]
  487ac8: 9100         	str	r1, [sp]
  487aca: 9b01         	ldr	r3, [sp, #0x4]
  487acc: edd3 7a01    	vldr	s15, [r3, #4]
  487ad0: ed9d 7a00    	vldr	s14, [sp]
  487ad4: ee37 7a67    	vsub.f32	s14, s14, s15
  487ad8: 9b01         	ldr	r3, [sp, #0x4]
  487ada: edd3 7a05    	vldr	s15, [r3, #20]
  487ade: ee67 7a27    	vmul.f32	s15, s14, s15
  487ae2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  487ae6: ee17 3a90    	vmov	r3, s15
  487aea: 4618         	mov	r0, r3
  487aec: b002         	add	sp, #0x8
  487aee: 4770         	bx	lr

// ==== GridSectorizer::WorldToCellXOffsetAndClamped
//      file offset 0x487af0 (= ELF address; Ghidra 0x497af0), 54 bytes, Thumb-2
  487af0: b500         	push	{lr}
  487af2: b085         	sub	sp, #0x14
  487af4: 9001         	str	r0, [sp, #0x4]
  487af6: 9100         	str	r1, [sp]
  487af8: 9801         	ldr	r0, [sp, #0x4]
  487afa: 9900         	ldr	r1, [sp]
  487afc: f7ff ffcc    	bl	0x487a98 <GridSectorizer::WorldToCellX(float) const> @ imm = #-0x68
  487b00: 4603         	mov	r3, r0
  487b02: 9303         	str	r3, [sp, #0xc]
  487b04: 9b03         	ldr	r3, [sp, #0xc]
  487b06: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  487b0a: 9303         	str	r3, [sp, #0xc]
  487b0c: 9b01         	ldr	r3, [sp, #0x4]
  487b0e: 6a1b         	ldr	r3, [r3, #0x20]
  487b10: 3b01         	subs	r3, #0x1
  487b12: 9a03         	ldr	r2, [sp, #0xc]
  487b14: 429a         	cmp	r2, r3
  487b16: bfb8         	it	lt
  487b18: 4613         	movlt	r3, r2
  487b1a: 9303         	str	r3, [sp, #0xc]
  487b1c: 9b03         	ldr	r3, [sp, #0xc]
  487b1e: 4618         	mov	r0, r3
  487b20: b005         	add	sp, #0x14
  487b22: f85d fb04    	ldr	pc, [sp], #4

// ==== GridSectorizer::WorldToCellYOffsetAndClamped
//      file offset 0x487b28 (= ELF address; Ghidra 0x497b28), 54 bytes, Thumb-2
  487b28: b500         	push	{lr}
  487b2a: b085         	sub	sp, #0x14
  487b2c: 9001         	str	r0, [sp, #0x4]
  487b2e: 9100         	str	r1, [sp]
  487b30: 9801         	ldr	r0, [sp, #0x4]
  487b32: 9900         	ldr	r1, [sp]
  487b34: f7ff ffc6    	bl	0x487ac4 <GridSectorizer::WorldToCellY(float) const> @ imm = #-0x74
  487b38: 4603         	mov	r3, r0
  487b3a: 9303         	str	r3, [sp, #0xc]
  487b3c: 9b03         	ldr	r3, [sp, #0xc]
  487b3e: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  487b42: 9303         	str	r3, [sp, #0xc]
  487b44: 9b01         	ldr	r3, [sp, #0x4]
  487b46: 6a5b         	ldr	r3, [r3, #0x24]
  487b48: 3b01         	subs	r3, #0x1
  487b4a: 9a03         	ldr	r2, [sp, #0xc]
  487b4c: 429a         	cmp	r2, r3
  487b4e: bfb8         	it	lt
  487b50: 4613         	movlt	r3, r2
  487b52: 9303         	str	r3, [sp, #0xc]
  487b54: 9b03         	ldr	r3, [sp, #0xc]
  487b56: 4618         	mov	r0, r3
  487b58: b005         	add	sp, #0x14
  487b5a: f85d fb04    	ldr	pc, [sp], #4

// ==== GridSectorizer::Clear
//      file offset 0x487b60 (= ELF address; Ghidra 0x497b60), 84 bytes, Thumb-2
  487b60: b500         	push	{lr}
  487b62: b085         	sub	sp, #0x14
  487b64: 9001         	str	r0, [sp, #0x4]
  487b66: 9b01         	ldr	r3, [sp, #0x4]
  487b68: 6a1b         	ldr	r3, [r3, #0x20]
  487b6a: 9a01         	ldr	r2, [sp, #0x4]
  487b6c: 6a52         	ldr	r2, [r2, #0x24]
  487b6e: fb02 f303    	mul	r3, r2, r3
  487b72: 9303         	str	r3, [sp, #0xc]
  487b74: 2300         	movs	r3, #0x0
  487b76: 9302         	str	r3, [sp, #0x8]
  487b78: e012         	b	0x487ba0 <GridSectorizer::Clear()+0x40> @ imm = #0x24
  487b7a: 9b01         	ldr	r3, [sp, #0x4]
  487b7c: 6a99         	ldr	r1, [r3, #0x28]
  487b7e: 9a02         	ldr	r2, [sp, #0x8]
  487b80: 4613         	mov	r3, r2
  487b82: 005b         	lsls	r3, r3, #0x1
  487b84: 4413         	add	r3, r2
  487b86: 009b         	lsls	r3, r3, #0x2
  487b88: 440b         	add	r3, r1
  487b8a: 4618         	mov	r0, r3
  487b8c: 2101         	movs	r1, #0x1
  487b8e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x487bb0 <GridSectorizer::Clear()+0x50>
  487b90: 447b         	add	r3, pc
  487b92: 461a         	mov	r2, r3
  487b94: 23c8         	movs	r3, #0xc8
  487b96: f000 f8d1    	bl	0x487d3c <DataStructures::List<void*>::Clear(bool, char const*, unsigned int)> @ imm = #0x1a2
  487b9a: 9b02         	ldr	r3, [sp, #0x8]
  487b9c: 3301         	adds	r3, #0x1
  487b9e: 9302         	str	r3, [sp, #0x8]
  487ba0: 9a02         	ldr	r2, [sp, #0x8]
  487ba2: 9b03         	ldr	r3, [sp, #0xc]
  487ba4: 429a         	cmp	r2, r3
  487ba6: dbe8         	blt	0x487b7a <GridSectorizer::Clear()+0x1a> @ imm = #-0x30
  487ba8: b005         	add	sp, #0x14
  487baa: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x487bad); words below are literal-pool data ---
  487bae: bf00         	nop
  487bb0: c774         	stm	r7!, {r2, r4, r5, r6}
  487bb2: 0035         	movs	r5, r6
