// Enemy: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 36 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Enemy.cpp

// ==== Enemy::Enemy
//      file offset 0x317704 (= ELF address; Ghidra 0x327704), 44 bytes, Thumb-2
  317704: b510         	push	{r4, lr}
  317706: b082         	sub	sp, #0x8
  317708: 9001         	str	r0, [sp, #0x4]
  31770a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x317728 <Enemy::Enemy()+0x24>
  31770c: 447c         	add	r4, pc
  31770e: 9b01         	ldr	r3, [sp, #0x4]
  317710: 4618         	mov	r0, r3
  317712: f7e9 fa65    	bl	0x300be0 <CollisionObject::CollisionObject()> @ imm = #-0x16b36
  317716: 9b01         	ldr	r3, [sp, #0x4]
  317718: 4a04         	ldr	r2, [pc, #0x10]         @ 0x31772c <Enemy::Enemy()+0x28>
  31771a: 58a2         	ldr	r2, [r4, r2]
  31771c: 3208         	adds	r2, #0x8
  31771e: 601a         	str	r2, [r3]
  317720: 9b01         	ldr	r3, [sp, #0x4]
  317722: 4618         	mov	r0, r3
  317724: b002         	add	sp, #0x8
  317726: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x317727); words below are literal-pool data ---
  317728: b2fc         	uxtb	r4, r7
  31772a: 0061         	lsls	r1, r4, #0x1
  31772c: d9fc         	bls	0x317728 <Enemy::Enemy()+0x24> @ imm = #-0x8
  31772e: ffff b500    	<unknown>

// ==== Enemy::init
//      file offset 0x317730 (= ELF address; Ghidra 0x327730), 362 bytes, Thumb-2
  317730: b500         	push	{lr}
  317732: b085         	sub	sp, #0x14
  317734: 9001         	str	r0, [sp, #0x4]
  317736: 9b01         	ldr	r3, [sp, #0x4]
  317738: 4618         	mov	r0, r3
  31773a: f7e9 fa73    	bl	0x300c24 <CollisionObject::init()> @ imm = #-0x16b1a
  31773e: 4603         	mov	r3, r0
  317740: f88d 300f    	strb.w	r3, [sp, #0xf]
  317744: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  317748: f083 0301    	eor	r3, r3, #0x1
  31774c: b2db         	uxtb	r3, r3
  31774e: 2b00         	cmp	r3, #0x0
  317750: d001         	beq	0x317756 <Enemy::init()+0x26> @ imm = #0x2
  317752: 2300         	movs	r3, #0x0
  317754: e09d         	b	0x317892 <Enemy::init()+0x162> @ imm = #0x13a
  317756: 9901         	ldr	r1, [sp, #0x4]
  317758: f04f 0200    	mov.w	r2, #0x0
  31775c: f04f 0300    	mov.w	r3, #0x0
  317760: e9c1 2344    	strd	r2, r3, [r1, #272]
  317764: 9901         	ldr	r1, [sp, #0x4]
  317766: f04f 0200    	mov.w	r2, #0x0
  31776a: f04f 0300    	mov.w	r3, #0x0
  31776e: e9c1 2346    	strd	r2, r3, [r1, #280]
  317772: 9901         	ldr	r1, [sp, #0x4]
  317774: f04f 0200    	mov.w	r2, #0x0
  317778: f04f 0300    	mov.w	r3, #0x0
  31777c: e9c1 2348    	strd	r2, r3, [r1, #288]
  317780: 9901         	ldr	r1, [sp, #0x4]
  317782: f04f 0200    	mov.w	r2, #0x0
  317786: f04f 0300    	mov.w	r3, #0x0
  31778a: e9c1 234a    	strd	r2, r3, [r1, #296]
  31778e: 9901         	ldr	r1, [sp, #0x4]
  317790: f04f 0200    	mov.w	r2, #0x0
  317794: f04f 0300    	mov.w	r3, #0x0
  317798: e9c1 234e    	strd	r2, r3, [r1, #312]
  31779c: 9901         	ldr	r1, [sp, #0x4]
  31779e: f04f 0200    	mov.w	r2, #0x0
  3177a2: f04f 0300    	mov.w	r3, #0x0
  3177a6: e9c1 2350    	strd	r2, r3, [r1, #320]
  3177aa: 9901         	ldr	r1, [sp, #0x4]
  3177ac: f04f 0200    	mov.w	r2, #0x0
  3177b0: f04f 0300    	mov.w	r3, #0x0
  3177b4: e9c1 2352    	strd	r2, r3, [r1, #328]
  3177b8: 9901         	ldr	r1, [sp, #0x4]
  3177ba: f04f 0200    	mov.w	r2, #0x0
  3177be: f04f 0300    	mov.w	r3, #0x0
  3177c2: e9c1 2354    	strd	r2, r3, [r1, #336]
  3177c6: 9b01         	ldr	r3, [sp, #0x4]
  3177c8: f04f 0200    	mov.w	r2, #0x0
  3177cc: f2c4 32fa    	movt	r2, #0x43fa
  3177d0: f8c3 2130    	str.w	r2, [r3, #0x130]
  3177d4: 9b01         	ldr	r3, [sp, #0x4]
  3177d6: f04f 0200    	mov.w	r2, #0x0
  3177da: f8c3 2158    	str.w	r2, [r3, #0x158]
  3177de: 9b01         	ldr	r3, [sp, #0x4]
  3177e0: 2201         	movs	r2, #0x1
  3177e2: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3177e6: 9b01         	ldr	r3, [sp, #0x4]
  3177e8: f04f 0200    	mov.w	r2, #0x0
  3177ec: f8c3 2160    	str.w	r2, [r3, #0x160]
  3177f0: 9901         	ldr	r1, [sp, #0x4]
  3177f2: f04f 0200    	mov.w	r2, #0x0
  3177f6: f04f 0300    	mov.w	r3, #0x0
  3177fa: e9c1 233e    	strd	r2, r3, [r1, #248]
  3177fe: 9901         	ldr	r1, [sp, #0x4]
  317800: f04f 0200    	mov.w	r2, #0x0
  317804: f04f 0300    	mov.w	r3, #0x0
  317808: e9c1 2340    	strd	r2, r3, [r1, #256]
  31780c: 9b01         	ldr	r3, [sp, #0x4]
  31780e: f04f 0200    	mov.w	r2, #0x0
  317812: f8c3 2164    	str.w	r2, [r3, #0x164]
  317816: 9b01         	ldr	r3, [sp, #0x4]
  317818: f04f 0200    	mov.w	r2, #0x0
  31781c: f8c3 2168    	str.w	r2, [r3, #0x168]
  317820: 9901         	ldr	r1, [sp, #0x4]
  317822: f04f 0200    	mov.w	r2, #0x0
  317826: f04f 0300    	mov.w	r3, #0x0
  31782a: e9c1 235c    	strd	r2, r3, [r1, #368]
  31782e: 9901         	ldr	r1, [sp, #0x4]
  317830: f04f 0200    	mov.w	r2, #0x0
  317834: f04f 0300    	mov.w	r3, #0x0
  317838: e9c1 235e    	strd	r2, r3, [r1, #376]
  31783c: 9901         	ldr	r1, [sp, #0x4]
  31783e: f04f 0200    	mov.w	r2, #0x0
  317842: f04f 0300    	mov.w	r3, #0x0
  317846: e9c1 2362    	strd	r2, r3, [r1, #392]
  31784a: 9901         	ldr	r1, [sp, #0x4]
  31784c: f04f 0200    	mov.w	r2, #0x0
  317850: f04f 0300    	mov.w	r3, #0x0
  317854: e9c1 2364    	strd	r2, r3, [r1, #400]
  317858: 9b01         	ldr	r3, [sp, #0x4]
  31785a: f04f 0200    	mov.w	r2, #0x0
  31785e: f8c3 2180    	str.w	r2, [r3, #0x180]
  317862: 9b01         	ldr	r3, [sp, #0x4]
  317864: f04f 0200    	mov.w	r2, #0x0
  317868: f8c3 2198    	str.w	r2, [r3, #0x198]
  31786c: 9b01         	ldr	r3, [sp, #0x4]
  31786e: 2200         	movs	r2, #0x0
  317870: f883 219c    	strb.w	r2, [r3, #0x19c]
  317874: 9b01         	ldr	r3, [sp, #0x4]
  317876: f04f 0200    	mov.w	r2, #0x0
  31787a: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  31787e: 9b01         	ldr	r3, [sp, #0x4]
  317880: 2201         	movs	r2, #0x1
  317882: f883 21a4    	strb.w	r2, [r3, #0x1a4]
  317886: 9b01         	ldr	r3, [sp, #0x4]
  317888: f04f 0200    	mov.w	r2, #0x0
  31788c: f8c3 2108    	str.w	r2, [r3, #0x108]
  317890: 2301         	movs	r3, #0x1
  317892: 4618         	mov	r0, r3
  317894: b005         	add	sp, #0x14
  317896: f85d fb04    	ldr	pc, [sp], #4

// ==== Enemy::~Enemy
//      file offset 0x31789c (= ELF address; Ghidra 0x32789c), 60 bytes, Thumb-2
  31789c: b500         	push	{lr}
  31789e: b083         	sub	sp, #0xc
  3178a0: 9001         	str	r0, [sp, #0x4]
  3178a2: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3178d0 <Enemy::~Enemy()+0x34>
  3178a4: 4479         	add	r1, pc
  3178a6: 9b01         	ldr	r3, [sp, #0x4]
  3178a8: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3178d4 <Enemy::~Enemy()+0x38>
  3178aa: 588a         	ldr	r2, [r1, r2]
  3178ac: 3208         	adds	r2, #0x8
  3178ae: 601a         	str	r2, [r3]
  3178b0: 9b01         	ldr	r3, [sp, #0x4]
  3178b2: 4618         	mov	r0, r3
  3178b4: f7e9 f9e8    	bl	0x300c88 <CollisionObject::~CollisionObject()> @ imm = #-0x16c30
  3178b8: 2300         	movs	r3, #0x0
  3178ba: 2b00         	cmp	r3, #0x0
  3178bc: d002         	beq	0x3178c4 <Enemy::~Enemy()+0x28> @ imm = #0x4
  3178be: 9801         	ldr	r0, [sp, #0x4]
  3178c0: f070 f3f0    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4707e0
  3178c4: 9b01         	ldr	r3, [sp, #0x4]
  3178c6: 4618         	mov	r0, r3
  3178c8: b003         	add	sp, #0xc
  3178ca: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3178cd); words below are literal-pool data ---
  3178ce: bf00         	nop
  3178d0: b164         	cbz	r4, 0x3178ec <Enemy::~Enemy()+0x14> @ imm = #0x18
  3178d2: 0061         	lsls	r1, r4, #0x1
  3178d4: d9fc         	bls	0x3178d0 <Enemy::~Enemy()+0x34> @ imm = #-0x8
  3178d6: ffff b500    	<unknown>

// ==== Enemy::~Enemy
//      file offset 0x3178d8 (= ELF address; Ghidra 0x3278d8), 28 bytes, Thumb-2
  3178d8: b500         	push	{lr}
  3178da: b083         	sub	sp, #0xc
  3178dc: 9001         	str	r0, [sp, #0x4]
  3178de: 9801         	ldr	r0, [sp, #0x4]
  3178e0: f7ff ffdc    	bl	0x31789c <Enemy::~Enemy()> @ imm = #-0x48
  3178e4: 9801         	ldr	r0, [sp, #0x4]
  3178e6: f070 f3dd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4707ba
  3178ea: 9b01         	ldr	r3, [sp, #0x4]
  3178ec: 4618         	mov	r0, r3
  3178ee: b003         	add	sp, #0xc
  3178f0: f85d fb04    	ldr	pc, [sp], #4

// ==== Enemy::updateStep
//      file offset 0x3178f4 (= ELF address; Ghidra 0x3278f4), 10 bytes, Thumb-2
  3178f4: b082         	sub	sp, #0x8
  3178f6: 9001         	str	r0, [sp, #0x4]
  3178f8: 9100         	str	r1, [sp]
  3178fa: b002         	add	sp, #0x8
  3178fc: 4770         	bx	lr

// ==== Enemy::updateRemoteStep
//      file offset 0x317900 (= ELF address; Ghidra 0x327900), 10 bytes, Thumb-2
  317900: b082         	sub	sp, #0x8
  317902: 9001         	str	r0, [sp, #0x4]
  317904: 9100         	str	r1, [sp]
  317906: b002         	add	sp, #0x8
  317908: 4770         	bx	lr

// ==== Enemy::addBodyShape
//      file offset 0x31790c (= ELF address; Ghidra 0x32790c), 8 bytes, Thumb-2
  31790c: b082         	sub	sp, #0x8
  31790e: 9001         	str	r0, [sp, #0x4]
  317910: b002         	add	sp, #0x8
  317912: 4770         	bx	lr

// ==== Enemy::removeBodyShape
//      file offset 0x317914 (= ELF address; Ghidra 0x327914), 8 bytes, Thumb-2
  317914: b082         	sub	sp, #0x8
  317916: 9001         	str	r0, [sp, #0x4]
  317918: b002         	add	sp, #0x8
  31791a: 4770         	bx	lr

// ==== Enemy::addDamage
//      file offset 0x31791c (= ELF address; Ghidra 0x32791c), 14 bytes, Thumb-2
  31791c: b084         	sub	sp, #0x10
  31791e: 9003         	str	r0, [sp, #0xc]
  317920: 9102         	str	r1, [sp, #0x8]
  317922: 9201         	str	r2, [sp, #0x4]
  317924: 9300         	str	r3, [sp]
  317926: b004         	add	sp, #0x10
  317928: 4770         	bx	lr

// ==== Enemy::getHP
//      file offset 0x31792c (= ELF address; Ghidra 0x32792c), 12 bytes, Thumb-2
  31792c: b082         	sub	sp, #0x8
  31792e: 9001         	str	r0, [sp, #0x4]
  317930: 2300         	movs	r3, #0x0
  317932: 4618         	mov	r0, r3
  317934: b002         	add	sp, #0x8
  317936: 4770         	bx	lr

// ==== Enemy::setHP
//      file offset 0x317938 (= ELF address; Ghidra 0x327938), 10 bytes, Thumb-2
  317938: b082         	sub	sp, #0x8
  31793a: 9001         	str	r0, [sp, #0x4]
  31793c: 9100         	str	r1, [sp]
  31793e: b002         	add	sp, #0x8
  317940: 4770         	bx	lr

// ==== Enemy::setTargetPos
//      file offset 0x317944 (= ELF address; Ghidra 0x327944), 38 bytes, Thumb-2
  317944: b082         	sub	sp, #0x8
  317946: b410         	push	{r4}
  317948: b083         	sub	sp, #0xc
  31794a: 9001         	str	r0, [sp, #0x4]
  31794c: a904         	add	r1, sp, #0x10
  31794e: e881 000c    	stm.w	r1, {r2, r3}
  317952: 9b01         	ldr	r3, [sp, #0x4]
  317954: f503 7488    	add.w	r4, r3, #0x110
  317958: ab04         	add	r3, sp, #0x10
  31795a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31795c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317960: b003         	add	sp, #0xc
  317962: f85d 4b04    	ldr	r4, [sp], #4
  317966: b002         	add	sp, #0x8
  317968: 4770         	bx	lr

// ==== Enemy::getBodyPosition
//      file offset 0x31796c (= ELF address; Ghidra 0x32796c), 40 bytes, Thumb-2
  31796c: b082         	sub	sp, #0x8
  31796e: 9001         	str	r0, [sp, #0x4]
  317970: 9100         	str	r1, [sp]
  317972: 9901         	ldr	r1, [sp, #0x4]
  317974: f04f 0200    	mov.w	r2, #0x0
  317978: f04f 0300    	mov.w	r3, #0x0
  31797c: e9c1 2300    	strd	r2, r3, [r1]
  317980: 9901         	ldr	r1, [sp, #0x4]
  317982: f04f 0200    	mov.w	r2, #0x0
  317986: f04f 0300    	mov.w	r3, #0x0
  31798a: e9c1 2302    	strd	r2, r3, [r1, #8]
  31798e: 9801         	ldr	r0, [sp, #0x4]
  317990: b002         	add	sp, #0x8
  317992: 4770         	bx	lr

// ==== Enemy::getBodyVelocity
//      file offset 0x317994 (= ELF address; Ghidra 0x327994), 40 bytes, Thumb-2
  317994: b082         	sub	sp, #0x8
  317996: 9001         	str	r0, [sp, #0x4]
  317998: 9100         	str	r1, [sp]
  31799a: 9901         	ldr	r1, [sp, #0x4]
  31799c: f04f 0200    	mov.w	r2, #0x0
  3179a0: f04f 0300    	mov.w	r3, #0x0
  3179a4: e9c1 2300    	strd	r2, r3, [r1]
  3179a8: 9901         	ldr	r1, [sp, #0x4]
  3179aa: f04f 0200    	mov.w	r2, #0x0
  3179ae: f04f 0300    	mov.w	r3, #0x0
  3179b2: e9c1 2302    	strd	r2, r3, [r1, #8]
  3179b6: 9801         	ldr	r0, [sp, #0x4]
  3179b8: b002         	add	sp, #0x8
  3179ba: 4770         	bx	lr

// ==== Enemy::getBodyRotation
//      file offset 0x3179bc (= ELF address; Ghidra 0x3279bc), 14 bytes, Thumb-2
  3179bc: b082         	sub	sp, #0x8
  3179be: 9001         	str	r0, [sp, #0x4]
  3179c0: f04f 0300    	mov.w	r3, #0x0
  3179c4: 4618         	mov	r0, r3
  3179c6: b002         	add	sp, #0x8
  3179c8: 4770         	bx	lr

// ==== Enemy::canSeeTarget
//      file offset 0x3179d0 (= ELF address; Ghidra 0x3279d0), 288 bytes, Thumb-2
  3179d0: b530         	push	{r4, r5, lr}
  3179d2: b0ab         	sub	sp, #0xac
  3179d4: 900b         	str	r0, [sp, #0x2c]
  3179d6: 4c44         	ldr	r4, [pc, #0x110]        @ 0x317ae8 <Enemy::canSeeTarget()+0x118>
  3179d8: 447c         	add	r4, pc
  3179da: 9b0b         	ldr	r3, [sp, #0x2c]
  3179dc: 681b         	ldr	r3, [r3]
  3179de: f503 73d6    	add.w	r3, r3, #0x1ac
  3179e2: 681b         	ldr	r3, [r3]
  3179e4: aa12         	add	r2, sp, #0x48
  3179e6: 4610         	mov	r0, r2
  3179e8: 990b         	ldr	r1, [sp, #0x2c]
  3179ea: 4798         	blx	r3
  3179ec: ab16         	add	r3, sp, #0x58
  3179ee: 4618         	mov	r0, r3
  3179f0: ed9f 0b3b    	vldr	d0, [pc, #236]          @ 0x317ae0 <Enemy::canSeeTarget()+0x110>
  3179f4: eeb3 1b04    	vmov.f64	d1, #2.000000e+01
  3179f8: f7fe ff6e    	bl	0x3168d8 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x2b0> @ imm = #-0x1124
  3179fc: ab1a         	add	r3, sp, #0x68
  3179fe: ed9d 4b12    	vldr	d4, [sp, #72]
  317a02: ed9d 5b14    	vldr	d5, [sp, #80]
  317a06: ed9d 6b16    	vldr	d6, [sp, #88]
  317a0a: ed9d 7b18    	vldr	d7, [sp, #96]
  317a0e: 4618         	mov	r0, r3
  317a10: eeb0 0b44    	vmov.f64	d0, d4
  317a14: eeb0 1b45    	vmov.f64	d1, d5
  317a18: eeb0 2b46    	vmov.f64	d2, d6
  317a1c: eeb0 3b47    	vmov.f64	d3, d7
  317a20: f7fe ff6e    	bl	0x316900 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x2d8> @ imm = #-0x1124
  317a24: aa0e         	add	r2, sp, #0x38
  317a26: 9b0b         	ldr	r3, [sp, #0x2c]
  317a28: ed93 4b44    	vldr	d4, [r3, #272]
  317a2c: ed93 5b46    	vldr	d5, [r3, #280]
  317a30: ed9d 6b1a    	vldr	d6, [sp, #104]
  317a34: ed9d 7b1c    	vldr	d7, [sp, #112]
  317a38: 4610         	mov	r0, r2
  317a3a: eeb0 0b44    	vmov.f64	d0, d4
  317a3e: eeb0 1b45    	vmov.f64	d1, d5
  317a42: eeb0 2b46    	vmov.f64	d2, d6
  317a46: eeb0 3b47    	vmov.f64	d3, d7
  317a4a: f7fe ff85    	bl	0x316958 <EffectsManager::addGroundHitAt(cpVect, float, int)+0x330> @ imm = #-0x10f6
  317a4e: ab0e         	add	r3, sp, #0x38
  317a50: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317a52: f3bf fb31    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3bf662
  317a56: ec41 0b17    	vmov	d7, r0, r1
  317a5a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  317a5e: edcd 7a0c    	vstr	s15, [sp, #48]
  317a62: 9b0b         	ldr	r3, [sp, #0x2c]
  317a64: ed93 7a4c    	vldr	s14, [r3, #304]
  317a68: eddd 7a0c    	vldr	s15, [sp, #48]
  317a6c: eeb4 7ae7    	vcmpe.f32	s14, s15
  317a70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  317a74: d501         	bpl	0x317a7a <Enemy::canSeeTarget()+0xaa> @ imm = #0x2
  317a76: 2300         	movs	r3, #0x0
  317a78: e02c         	b	0x317ad4 <Enemy::canSeeTarget()+0x104> @ imm = #0x58
  317a7a: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x317aec <Enemy::canSeeTarget()+0x11c>
  317a7c: 58e3         	ldr	r3, [r4, r3]
  317a7e: 681d         	ldr	r5, [r3]
  317a80: 9b0b         	ldr	r3, [sp, #0x2c]
  317a82: 681b         	ldr	r3, [r3]
  317a84: f503 73d6    	add.w	r3, r3, #0x1ac
  317a88: 681b         	ldr	r3, [r3]
  317a8a: aa1e         	add	r2, sp, #0x78
  317a8c: 4610         	mov	r0, r2
  317a8e: 990b         	ldr	r1, [sp, #0x2c]
  317a90: 4798         	blx	r3
  317a92: 9b0b         	ldr	r3, [sp, #0x2c]
  317a94: ac02         	add	r4, sp, #0x8
  317a96: f503 7388    	add.w	r3, r3, #0x110
  317a9a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317a9c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317aa0: f44f 7380    	mov.w	r3, #0x100
  317aa4: 9306         	str	r3, [sp, #0x18]
  317aa6: 2300         	movs	r3, #0x0
  317aa8: 9307         	str	r3, [sp, #0x1c]
  317aaa: ab22         	add	r3, sp, #0x88
  317aac: 9308         	str	r3, [sp, #0x20]
  317aae: 466b         	mov	r3, sp
  317ab0: aa20         	add	r2, sp, #0x80
  317ab2: e892 0003    	ldm.w	r2, {r0, r1}
  317ab6: e883 0003    	stm.w	r3, {r0, r1}
  317aba: ab1e         	add	r3, sp, #0x78
  317abc: cb0c         	ldm	r3, {r2, r3}
  317abe: 4628         	mov	r0, r5
  317ac0: f3be fa4a    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x3be494
  317ac4: 4603         	mov	r3, r0
  317ac6: 930d         	str	r3, [sp, #0x34]
  317ac8: 9b0d         	ldr	r3, [sp, #0x34]
  317aca: 2b00         	cmp	r3, #0x0
  317acc: d001         	beq	0x317ad2 <Enemy::canSeeTarget()+0x102> @ imm = #0x2
  317ace: 2300         	movs	r3, #0x0
  317ad0: e000         	b	0x317ad4 <Enemy::canSeeTarget()+0x104> @ imm = #0x0
  317ad2: 2301         	movs	r3, #0x1
  317ad4: 4618         	mov	r0, r3
  317ad6: b02b         	add	sp, #0xac
  317ad8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x317ad9); words below are literal-pool data ---
  317ada: bf00         	nop
  317adc: f3af 8000    	nop.w
  317ae8: b030         	add	sp, #0xc0
  317aea: 0061         	lsls	r1, r4, #0x1
  317aec: da00         	bge	0x317af0 <Enemy::getDirectionVector()> @ imm = #0x0
  317aee: ffff b410    	vsri.32	d27, d0, #0x1

// ==== Enemy::getDirectionVector
//      file offset 0x317af0 (= ELF address; Ghidra 0x327af0), 34 bytes, Thumb-2
  317af0: b410         	push	{r4}
  317af2: b083         	sub	sp, #0xc
  317af4: 9001         	str	r0, [sp, #0x4]
  317af6: 9100         	str	r1, [sp]
  317af8: 9a01         	ldr	r2, [sp, #0x4]
  317afa: 9b00         	ldr	r3, [sp]
  317afc: 4614         	mov	r4, r2
  317afe: f503 739c    	add.w	r3, r3, #0x138
  317b02: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317b04: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317b08: 9801         	ldr	r0, [sp, #0x4]
  317b0a: b003         	add	sp, #0xc
  317b0c: f85d 4b04    	ldr	r4, [sp], #4
  317b10: 4770         	bx	lr

// ==== Enemy::setDirectionVector
//      file offset 0x317b14 (= ELF address; Ghidra 0x327b14), 38 bytes, Thumb-2
  317b14: b082         	sub	sp, #0x8
  317b16: b410         	push	{r4}
  317b18: b083         	sub	sp, #0xc
  317b1a: 9001         	str	r0, [sp, #0x4]
  317b1c: a904         	add	r1, sp, #0x10
  317b1e: e881 000c    	stm.w	r1, {r2, r3}
  317b22: 9b01         	ldr	r3, [sp, #0x4]
  317b24: f503 749c    	add.w	r4, r3, #0x138
  317b28: ab04         	add	r3, sp, #0x10
  317b2a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317b2c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317b30: b003         	add	sp, #0xc
  317b32: f85d 4b04    	ldr	r4, [sp], #4
  317b36: b002         	add	sp, #0x8
  317b38: 4770         	bx	lr

// ==== Enemy::getDestinationPoint
//      file offset 0x317b3c (= ELF address; Ghidra 0x327b3c), 34 bytes, Thumb-2
  317b3c: b410         	push	{r4}
  317b3e: b083         	sub	sp, #0xc
  317b40: 9001         	str	r0, [sp, #0x4]
  317b42: 9100         	str	r1, [sp]
  317b44: 9a01         	ldr	r2, [sp, #0x4]
  317b46: 9b00         	ldr	r3, [sp]
  317b48: 4614         	mov	r4, r2
  317b4a: f503 73a4    	add.w	r3, r3, #0x148
  317b4e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317b50: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317b54: 9801         	ldr	r0, [sp, #0x4]
  317b56: b003         	add	sp, #0xc
  317b58: f85d 4b04    	ldr	r4, [sp], #4
  317b5c: 4770         	bx	lr

// ==== Enemy::setDestinationPoint
//      file offset 0x317b60 (= ELF address; Ghidra 0x327b60), 38 bytes, Thumb-2
  317b60: b082         	sub	sp, #0x8
  317b62: b410         	push	{r4}
  317b64: b083         	sub	sp, #0xc
  317b66: 9001         	str	r0, [sp, #0x4]
  317b68: a904         	add	r1, sp, #0x10
  317b6a: e881 000c    	stm.w	r1, {r2, r3}
  317b6e: 9b01         	ldr	r3, [sp, #0x4]
  317b70: f503 74a4    	add.w	r4, r3, #0x148
  317b74: ab04         	add	r3, sp, #0x10
  317b76: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317b78: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317b7c: b003         	add	sp, #0xc
  317b7e: f85d 4b04    	ldr	r4, [sp], #4
  317b82: b002         	add	sp, #0x8
  317b84: 4770         	bx	lr

// ==== Enemy::getFireAngle
//      file offset 0x317b88 (= ELF address; Ghidra 0x327b88), 14 bytes, Thumb-2
  317b88: b082         	sub	sp, #0x8
  317b8a: 9001         	str	r0, [sp, #0x4]
  317b8c: f04f 0300    	mov.w	r3, #0x0
  317b90: 4618         	mov	r0, r3
  317b92: b002         	add	sp, #0x8
  317b94: 4770         	bx	lr

// ==== Enemy::getWeapon
//      file offset 0x317b98 (= ELF address; Ghidra 0x327b98), 12 bytes, Thumb-2
  317b98: b082         	sub	sp, #0x8
  317b9a: 9001         	str	r0, [sp, #0x4]
  317b9c: 2300         	movs	r3, #0x0
  317b9e: 4618         	mov	r0, r3
  317ba0: b002         	add	sp, #0x8
  317ba2: 4770         	bx	lr

// ==== Enemy::setPrimaryRecoilRotation
//      file offset 0x317ba4 (= ELF address; Ghidra 0x327ba4), 26 bytes, Thumb-2
  317ba4: b084         	sub	sp, #0x10
  317ba6: 9003         	str	r0, [sp, #0xc]
  317ba8: e9cd 2300    	strd	r2, r3, [sp]
  317bac: ed9d 7b00    	vldr	d7, [sp]
  317bb0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  317bb4: 9b03         	ldr	r3, [sp, #0xc]
  317bb6: edc3 7a56    	vstr	s15, [r3, #344]
  317bba: b004         	add	sp, #0x10
  317bbc: 4770         	bx	lr

// ==== Enemy::setCollisionType
//      file offset 0x317bc0 (= ELF address; Ghidra 0x327bc0), 10 bytes, Thumb-2
  317bc0: b082         	sub	sp, #0x8
  317bc2: 9001         	str	r0, [sp, #0x4]
  317bc4: 9100         	str	r1, [sp]
  317bc6: b002         	add	sp, #0x8
  317bc8: 4770         	bx	lr

// ==== Enemy::resetBody
//      file offset 0x317bcc (= ELF address; Ghidra 0x327bcc), 8 bytes, Thumb-2
  317bcc: b082         	sub	sp, #0x8
  317bce: 9001         	str	r0, [sp, #0x4]
  317bd0: b002         	add	sp, #0x8
  317bd2: 4770         	bx	lr

// ==== Enemy::setBodyGravity
//      file offset 0x317bd4 (= ELF address; Ghidra 0x327bd4), 38 bytes, Thumb-2
  317bd4: b082         	sub	sp, #0x8
  317bd6: b410         	push	{r4}
  317bd8: b083         	sub	sp, #0xc
  317bda: 9001         	str	r0, [sp, #0x4]
  317bdc: a904         	add	r1, sp, #0x10
  317bde: e881 000c    	stm.w	r1, {r2, r3}
  317be2: 9b01         	ldr	r3, [sp, #0x4]
  317be4: f103 04f8    	add.w	r4, r3, #0xf8
  317be8: ab04         	add	r3, sp, #0x10
  317bea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317bec: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317bf0: b003         	add	sp, #0xc
  317bf2: f85d 4b04    	ldr	r4, [sp], #4
  317bf6: b002         	add	sp, #0x8
  317bf8: 4770         	bx	lr

// ==== Enemy::setPlayerID
//      file offset 0x317bfc (= ELF address; Ghidra 0x327bfc), 10 bytes, Thumb-2
  317bfc: b082         	sub	sp, #0x8
  317bfe: 9001         	str	r0, [sp, #0x4]
  317c00: 9100         	str	r1, [sp]
  317c02: b002         	add	sp, #0x8
  317c04: 4770         	bx	lr

// ==== Enemy::setPeerID
//      file offset 0x317c08 (= ELF address; Ghidra 0x327c08), 10 bytes, Thumb-2
  317c08: b082         	sub	sp, #0x8
  317c0a: 9001         	str	r0, [sp, #0x4]
  317c0c: 9100         	str	r1, [sp]
  317c0e: b002         	add	sp, #0x8
  317c10: 4770         	bx	lr

// ==== Enemy::getSearchPoint
//      file offset 0x317c14 (= ELF address; Ghidra 0x327c14), 40 bytes, Thumb-2
  317c14: b082         	sub	sp, #0x8
  317c16: 9001         	str	r0, [sp, #0x4]
  317c18: 9100         	str	r1, [sp]
  317c1a: 9901         	ldr	r1, [sp, #0x4]
  317c1c: f04f 0200    	mov.w	r2, #0x0
  317c20: f04f 0300    	mov.w	r3, #0x0
  317c24: e9c1 2300    	strd	r2, r3, [r1]
  317c28: 9901         	ldr	r1, [sp, #0x4]
  317c2a: f04f 0200    	mov.w	r2, #0x0
  317c2e: f04f 0300    	mov.w	r3, #0x0
  317c32: e9c1 2302    	strd	r2, r3, [r1, #8]
  317c36: 9801         	ldr	r0, [sp, #0x4]
  317c38: b002         	add	sp, #0x8
  317c3a: 4770         	bx	lr

// ==== Enemy::setRemotePosition
//      file offset 0x317c3c (= ELF address; Ghidra 0x327c3c), 38 bytes, Thumb-2
  317c3c: b082         	sub	sp, #0x8
  317c3e: b410         	push	{r4}
  317c40: b083         	sub	sp, #0xc
  317c42: 9001         	str	r0, [sp, #0x4]
  317c44: a904         	add	r1, sp, #0x10
  317c46: e881 000c    	stm.w	r1, {r2, r3}
  317c4a: 9b01         	ldr	r3, [sp, #0x4]
  317c4c: f503 74b8    	add.w	r4, r3, #0x170
  317c50: ab04         	add	r3, sp, #0x10
  317c52: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317c54: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317c58: b003         	add	sp, #0xc
  317c5a: f85d 4b04    	ldr	r4, [sp], #4
  317c5e: b002         	add	sp, #0x8
  317c60: 4770         	bx	lr

// ==== Enemy::setRemoteVelocity
//      file offset 0x317c64 (= ELF address; Ghidra 0x327c64), 38 bytes, Thumb-2
  317c64: b082         	sub	sp, #0x8
  317c66: b410         	push	{r4}
  317c68: b083         	sub	sp, #0xc
  317c6a: 9001         	str	r0, [sp, #0x4]
  317c6c: a904         	add	r1, sp, #0x10
  317c6e: e881 000c    	stm.w	r1, {r2, r3}
  317c72: 9b01         	ldr	r3, [sp, #0x4]
  317c74: f503 74c4    	add.w	r4, r3, #0x188
  317c78: ab04         	add	r3, sp, #0x10
  317c7a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  317c7c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  317c80: b003         	add	sp, #0xc
  317c82: f85d 4b04    	ldr	r4, [sp], #4
  317c86: b002         	add	sp, #0x8
  317c88: 4770         	bx	lr

// ==== Enemy::setRemoteRotation
//      file offset 0x317c8c (= ELF address; Ghidra 0x327c8c), 18 bytes, Thumb-2
  317c8c: b082         	sub	sp, #0x8
  317c8e: 9001         	str	r0, [sp, #0x4]
  317c90: 9100         	str	r1, [sp]
  317c92: 9b01         	ldr	r3, [sp, #0x4]
  317c94: 9a00         	ldr	r2, [sp]
  317c96: f8c3 2180    	str.w	r2, [r3, #0x180]
  317c9a: b002         	add	sp, #0x8
  317c9c: 4770         	bx	lr

// ==== Enemy::setRemoteFireAngle
//      file offset 0x317ca0 (= ELF address; Ghidra 0x327ca0), 10 bytes, Thumb-2
  317ca0: b082         	sub	sp, #0x8
  317ca2: 9001         	str	r0, [sp, #0x4]
  317ca4: 9100         	str	r1, [sp]
  317ca6: b002         	add	sp, #0x8
  317ca8: 4770         	bx	lr

// ==== Enemy::setRemoteFire
//      file offset 0x317cac (= ELF address; Ghidra 0x327cac), 14 bytes, Thumb-2
  317cac: b082         	sub	sp, #0x8
  317cae: 9001         	str	r0, [sp, #0x4]
  317cb0: 460b         	mov	r3, r1
  317cb2: f88d 3003    	strb.w	r3, [sp, #0x3]
  317cb6: b002         	add	sp, #0x8
  317cb8: 4770         	bx	lr

// ==== Enemy::setRemoteThrust
//      file offset 0x317cbc (= ELF address; Ghidra 0x327cbc), 10 bytes, Thumb-2
  317cbc: b082         	sub	sp, #0x8
  317cbe: 9001         	str	r0, [sp, #0x4]
  317cc0: 9100         	str	r1, [sp]
  317cc2: b002         	add	sp, #0x8
  317cc4: 4770         	bx	lr

// ==== Enemy::setRemoteMovement
//      file offset 0x317cc8 (= ELF address; Ghidra 0x327cc8), 18 bytes, Thumb-2
  317cc8: b082         	sub	sp, #0x8
  317cca: b082         	sub	sp, #0x8
  317ccc: 9001         	str	r0, [sp, #0x4]
  317cce: a902         	add	r1, sp, #0x8
  317cd0: e881 000c    	stm.w	r1, {r2, r3}
  317cd4: b002         	add	sp, #0x8
  317cd6: b002         	add	sp, #0x8
  317cd8: 4770         	bx	lr
