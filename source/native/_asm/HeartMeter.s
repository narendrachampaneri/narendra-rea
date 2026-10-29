// HeartMeter: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../HeartMeter.cpp

// ==== HeartMeter::create
//      file offset 0x33a02c (= ELF address; Ghidra 0x34a02c), 110 bytes, Thumb-2
  33a02c: b510         	push	{r4, lr}
  33a02e: b082         	sub	sp, #0x8
  33a030: 20f0         	movs	r0, #0xf0
  33a032: f04d f497    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44d92e
  33a036: 4603         	mov	r3, r0
  33a038: 461c         	mov	r4, r3
  33a03a: 4620         	mov	r0, r4
  33a03c: f008 fae6    	bl	0x34260c <HeartMeter::HeartMeter()> @ imm = #0x85cc
  33a040: 9401         	str	r4, [sp, #0x4]
  33a042: 9b01         	ldr	r3, [sp, #0x4]
  33a044: 2b00         	cmp	r3, #0x0
  33a046: d00a         	beq	0x33a05e <HeartMeter::create()+0x32> @ imm = #0x14
  33a048: 9b01         	ldr	r3, [sp, #0x4]
  33a04a: 681b         	ldr	r3, [r3]
  33a04c: 3318         	adds	r3, #0x18
  33a04e: 681b         	ldr	r3, [r3]
  33a050: 9801         	ldr	r0, [sp, #0x4]
  33a052: 4798         	blx	r3
  33a054: 4603         	mov	r3, r0
  33a056: 2b00         	cmp	r3, #0x0
  33a058: d001         	beq	0x33a05e <HeartMeter::create()+0x32> @ imm = #0x2
  33a05a: 2301         	movs	r3, #0x1
  33a05c: e000         	b	0x33a060 <HeartMeter::create()+0x34> @ imm = #0x0
  33a05e: 2300         	movs	r3, #0x0
  33a060: 2b00         	cmp	r3, #0x0
  33a062: d005         	beq	0x33a070 <HeartMeter::create()+0x44> @ imm = #0xa
  33a064: 9b01         	ldr	r3, [sp, #0x4]
  33a066: 4618         	mov	r0, r3
  33a068: f25d ff48    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25de90
  33a06c: 9b01         	ldr	r3, [sp, #0x4]
  33a06e: e011         	b	0x33a094 <HeartMeter::create()+0x68> @ imm = #0x22
  33a070: 9b01         	ldr	r3, [sp, #0x4]
  33a072: 2b00         	cmp	r3, #0x0
  33a074: d005         	beq	0x33a082 <HeartMeter::create()+0x56> @ imm = #0xa
  33a076: 9b01         	ldr	r3, [sp, #0x4]
  33a078: 681b         	ldr	r3, [r3]
  33a07a: 3308         	adds	r3, #0x8
  33a07c: 681b         	ldr	r3, [r3]
  33a07e: 9801         	ldr	r0, [sp, #0x4]
  33a080: 4798         	blx	r3
  33a082: 2300         	movs	r3, #0x0
  33a084: 9301         	str	r3, [sp, #0x4]
  33a086: 2300         	movs	r3, #0x0
  33a088: e004         	b	0x33a094 <HeartMeter::create()+0x68> @ imm = #0x8
  33a08a: 4620         	mov	r0, r4
  33a08c: f04e f00a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44e014
  33a090: f04e f00c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44e018
  33a094: 4618         	mov	r0, r3
  33a096: b002         	add	sp, #0x8
  33a098: bd10         	pop	{r4, pc}

// ==== HeartMeter::HeartMeter
//      file offset 0x34260c (= ELF address; Ghidra 0x35260c), 44 bytes, Thumb-2
  34260c: b510         	push	{r4, lr}
  34260e: b082         	sub	sp, #0x8
  342610: 9001         	str	r0, [sp, #0x4]
  342612: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x342630 <HeartMeter::HeartMeter()+0x24>
  342614: 447c         	add	r4, pc
  342616: 9b01         	ldr	r3, [sp, #0x4]
  342618: 4618         	mov	r0, r3
  34261a: f24d f80d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x24d01a
  34261e: 9b01         	ldr	r3, [sp, #0x4]
  342620: 4a04         	ldr	r2, [pc, #0x10]         @ 0x342634 <HeartMeter::HeartMeter()+0x28>
  342622: 58a2         	ldr	r2, [r4, r2]
  342624: 3208         	adds	r2, #0x8
  342626: 601a         	str	r2, [r3]
  342628: 9b01         	ldr	r3, [sp, #0x4]
  34262a: 4618         	mov	r0, r3
  34262c: b002         	add	sp, #0x8
  34262e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34262f); words below are literal-pool data ---
  342630: 03f4         	lsls	r4, r6, #0xf
  342632: 005f         	lsls	r7, r3, #0x1
  342634: db24         	blt	0x342680 <HeartMeter::init()+0x48> @ imm = #0x48
  342636: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== HeartMeter::init
//      file offset 0x342638 (= ELF address; Ghidra 0x352638), 624 bytes, Thumb-2
  342638: b530         	push	{r4, r5, lr}
  34263a: b087         	sub	sp, #0x1c
  34263c: 9001         	str	r0, [sp, #0x4]
  34263e: 9b01         	ldr	r3, [sp, #0x4]
  342640: 4618         	mov	r0, r3
  342642: f24d fa03    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x24d406
  342646: 4603         	mov	r3, r0
  342648: f88d 300f    	strb.w	r3, [sp, #0xf]
  34264c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  342650: f083 0301    	eor	r3, r3, #0x1
  342654: b2db         	uxtb	r3, r3
  342656: 2b00         	cmp	r3, #0x0
  342658: d001         	beq	0x34265e <HeartMeter::init()+0x26> @ imm = #0x2
  34265a: 2300         	movs	r3, #0x0
  34265c: e11a         	b	0x342894 <HeartMeter::init()+0x25c> @ imm = #0x234
  34265e: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x34289c <HeartMeter::init()+0x264>
  342660: 447b         	add	r3, pc
  342662: 4618         	mov	r0, r3
  342664: f295 fe4e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x295c9c
  342668: 4602         	mov	r2, r0
  34266a: 9b01         	ldr	r3, [sp, #0x4]
  34266c: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  342670: 9b01         	ldr	r3, [sp, #0x4]
  342672: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  342676: 4618         	mov	r0, r3
  342678: f255 fc36    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25586c
  34267c: 9b01         	ldr	r3, [sp, #0x4]
  34267e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  342682: 681b         	ldr	r3, [r3]
  342684: 337c         	adds	r3, #0x7c
  342686: 681c         	ldr	r4, [r3]
  342688: 9b01         	ldr	r3, [sp, #0x4]
  34268a: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34268e: ab04         	add	r3, sp, #0x10
  342690: 4618         	mov	r0, r3
  342692: f04f 517c    	mov.w	r1, #0x3f000000
  342696: f04f 527c    	mov.w	r2, #0x3f000000
  34269a: f250 fb29    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x250652
  34269e: ab04         	add	r3, sp, #0x10
  3426a0: 4628         	mov	r0, r5
  3426a2: 4619         	mov	r1, r3
  3426a4: 47a0         	blx	r4
  3426a6: 9b01         	ldr	r3, [sp, #0x4]
  3426a8: 681b         	ldr	r3, [r3]
  3426aa: 33cc         	adds	r3, #0xcc
  3426ac: 681b         	ldr	r3, [r3]
  3426ae: 9901         	ldr	r1, [sp, #0x4]
  3426b0: 9a01         	ldr	r2, [sp, #0x4]
  3426b2: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  3426b6: 4608         	mov	r0, r1
  3426b8: 4611         	mov	r1, r2
  3426ba: 2200         	movs	r2, #0x0
  3426bc: 4798         	blx	r3
  3426be: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x3428a0 <HeartMeter::init()+0x268>
  3426c0: 447b         	add	r3, pc
  3426c2: 4618         	mov	r0, r3
  3426c4: f295 fe1e    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x295c3c
  3426c8: 4602         	mov	r2, r0
  3426ca: 9b01         	ldr	r3, [sp, #0x4]
  3426cc: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3426d0: 9b01         	ldr	r3, [sp, #0x4]
  3426d2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3426d6: 4618         	mov	r0, r3
  3426d8: f255 fc06    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25580c
  3426dc: 9b01         	ldr	r3, [sp, #0x4]
  3426de: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3426e2: 681b         	ldr	r3, [r3]
  3426e4: 337c         	adds	r3, #0x7c
  3426e6: 681c         	ldr	r4, [r3]
  3426e8: 9b01         	ldr	r3, [sp, #0x4]
  3426ea: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3426ee: ab04         	add	r3, sp, #0x10
  3426f0: 4618         	mov	r0, r3
  3426f2: f04f 0100    	mov.w	r1, #0x0
  3426f6: f04f 527c    	mov.w	r2, #0x3f000000
  3426fa: f250 faf9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2505f2
  3426fe: ab04         	add	r3, sp, #0x10
  342700: 4628         	mov	r0, r5
  342702: 4619         	mov	r1, r3
  342704: 47a0         	blx	r4
  342706: 9b01         	ldr	r3, [sp, #0x4]
  342708: 681b         	ldr	r3, [r3]
  34270a: 33cc         	adds	r3, #0xcc
  34270c: 681b         	ldr	r3, [r3]
  34270e: 9901         	ldr	r1, [sp, #0x4]
  342710: 9a01         	ldr	r2, [sp, #0x4]
  342712: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  342716: 4608         	mov	r0, r1
  342718: 4611         	mov	r1, r2
  34271a: 2200         	movs	r2, #0x0
  34271c: 4798         	blx	r3
  34271e: 9b01         	ldr	r3, [sp, #0x4]
  342720: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  342724: 681b         	ldr	r3, [r3]
  342726: f503 73de    	add.w	r3, r3, #0x1bc
  34272a: 681c         	ldr	r4, [r3]
  34272c: 9b01         	ldr	r3, [sp, #0x4]
  34272e: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  342732: 20c8         	movs	r0, #0xc8
  342734: 2100         	movs	r1, #0x0
  342736: 22c8         	movs	r2, #0xc8
  342738: f7ff f87a    	bl	0x341830 <HawkDrone::setRemoteFire(bool)+0x124> @ imm = #-0xf0c
  34273c: 4603         	mov	r3, r0
  34273e: 461a         	mov	r2, r3
  342740: f88d 2010    	strb.w	r2, [sp, #0x10]
  342744: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  342748: f88d 2011    	strb.w	r2, [sp, #0x11]
  34274c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  342750: f88d 3012    	strb.w	r3, [sp, #0x12]
  342754: ab04         	add	r3, sp, #0x10
  342756: 4628         	mov	r0, r5
  342758: 4619         	mov	r1, r3
  34275a: 47a0         	blx	r4
  34275c: 9b01         	ldr	r3, [sp, #0x4]
  34275e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  342762: 681b         	ldr	r3, [r3]
  342764: 334c         	adds	r3, #0x4c
  342766: 681c         	ldr	r4, [r3]
  342768: 9b01         	ldr	r3, [sp, #0x4]
  34276a: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  34276e: ab04         	add	r3, sp, #0x10
  342770: 4618         	mov	r0, r3
  342772: f04f 0100    	mov.w	r1, #0x0
  342776: f2cc 2118    	movt	r1, #0xc218
  34277a: f04f 0200    	mov.w	r2, #0x0
  34277e: f2c4 1210    	movt	r2, #0x4110
  342782: f250 fab5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25056a
  342786: ab04         	add	r3, sp, #0x10
  342788: 4628         	mov	r0, r5
  34278a: 4619         	mov	r1, r3
  34278c: 47a0         	blx	r4
  34278e: 4b45         	ldr	r3, [pc, #0x114]        @ 0x3428a4 <HeartMeter::init()+0x26c>
  342790: 447b         	add	r3, pc
  342792: 4618         	mov	r0, r3
  342794: f295 fdb6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x295b6c
  342798: 4602         	mov	r2, r0
  34279a: 9b01         	ldr	r3, [sp, #0x4]
  34279c: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3427a0: 9b01         	ldr	r3, [sp, #0x4]
  3427a2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3427a6: 4618         	mov	r0, r3
  3427a8: f255 fb9e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x25573c
  3427ac: 9b01         	ldr	r3, [sp, #0x4]
  3427ae: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3427b2: 681b         	ldr	r3, [r3]
  3427b4: 337c         	adds	r3, #0x7c
  3427b6: 681c         	ldr	r4, [r3]
  3427b8: 9b01         	ldr	r3, [sp, #0x4]
  3427ba: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  3427be: ab04         	add	r3, sp, #0x10
  3427c0: 4618         	mov	r0, r3
  3427c2: f04f 0100    	mov.w	r1, #0x0
  3427c6: f04f 527c    	mov.w	r2, #0x3f000000
  3427ca: f250 fa91    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x250522
  3427ce: ab04         	add	r3, sp, #0x10
  3427d0: 4628         	mov	r0, r5
  3427d2: 4619         	mov	r1, r3
  3427d4: 47a0         	blx	r4
  3427d6: 9b01         	ldr	r3, [sp, #0x4]
  3427d8: 681b         	ldr	r3, [r3]
  3427da: 33cc         	adds	r3, #0xcc
  3427dc: 681b         	ldr	r3, [r3]
  3427de: 9901         	ldr	r1, [sp, #0x4]
  3427e0: 9a01         	ldr	r2, [sp, #0x4]
  3427e2: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  3427e6: 4608         	mov	r0, r1
  3427e8: 4611         	mov	r1, r2
  3427ea: 2200         	movs	r2, #0x0
  3427ec: 4798         	blx	r3
  3427ee: 9b01         	ldr	r3, [sp, #0x4]
  3427f0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3427f4: 681b         	ldr	r3, [r3]
  3427f6: f503 73de    	add.w	r3, r3, #0x1bc
  3427fa: 681c         	ldr	r4, [r3]
  3427fc: 9b01         	ldr	r3, [sp, #0x4]
  3427fe: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  342802: 2000         	movs	r0, #0x0
  342804: 2100         	movs	r1, #0x0
  342806: 22ff         	movs	r2, #0xff
  342808: f7ff f812    	bl	0x341830 <HawkDrone::setRemoteFire(bool)+0x124> @ imm = #-0xfdc
  34280c: 4603         	mov	r3, r0
  34280e: 461a         	mov	r2, r3
  342810: f88d 2010    	strb.w	r2, [sp, #0x10]
  342814: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  342818: f88d 2011    	strb.w	r2, [sp, #0x11]
  34281c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  342820: f88d 3012    	strb.w	r3, [sp, #0x12]
  342824: ab04         	add	r3, sp, #0x10
  342826: 4628         	mov	r0, r5
  342828: 4619         	mov	r1, r3
  34282a: 47a0         	blx	r4
  34282c: 9b01         	ldr	r3, [sp, #0x4]
  34282e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  342832: 681b         	ldr	r3, [r3]
  342834: 334c         	adds	r3, #0x4c
  342836: 681c         	ldr	r4, [r3]
  342838: 9b01         	ldr	r3, [sp, #0x4]
  34283a: f8d3 50ec    	ldr.w	r5, [r3, #0xec]
  34283e: ab04         	add	r3, sp, #0x10
  342840: 4618         	mov	r0, r3
  342842: f04f 0100    	mov.w	r1, #0x0
  342846: f2cc 2118    	movt	r1, #0xc218
  34284a: f04f 0200    	mov.w	r2, #0x0
  34284e: f2cc 02c0    	movt	r2, #0xc0c0
  342852: f250 fa4d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x25049a
  342856: ab04         	add	r3, sp, #0x10
  342858: 4628         	mov	r0, r5
  34285a: 4619         	mov	r1, r3
  34285c: 47a0         	blx	r4
  34285e: 9b01         	ldr	r3, [sp, #0x4]
  342860: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  342864: 681b         	ldr	r3, [r3]
  342866: 3338         	adds	r3, #0x38
  342868: 681b         	ldr	r3, [r3]
  34286a: 9a01         	ldr	r2, [sp, #0x4]
  34286c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  342870: 4610         	mov	r0, r2
  342872: f04f 4180    	mov.w	r1, #0x40000000
  342876: 4798         	blx	r3
  342878: 9b01         	ldr	r3, [sp, #0x4]
  34287a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  34287e: 681b         	ldr	r3, [r3]
  342880: 3338         	adds	r3, #0x38
  342882: 681b         	ldr	r3, [r3]
  342884: 9a01         	ldr	r2, [sp, #0x4]
  342886: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  34288a: 4610         	mov	r0, r2
  34288c: f04f 4180    	mov.w	r1, #0x40000000
  342890: 4798         	blx	r3
  342892: 2301         	movs	r3, #0x1
  342894: 4618         	mov	r0, r3
  342896: b007         	add	sp, #0x1c
  342898: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x342899); words below are literal-pool data ---
  34289a: bf00         	nop
  34289c: 7914         	ldrb	r4, [r2, #0x4]
  34289e: 0048         	lsls	r0, r1, #0x1
  3428a0: 78c4         	ldrb	r4, [r0, #0x3]
  3428a2: 0048         	lsls	r0, r1, #0x1
  3428a4: 77f4         	strb	r4, [r6, #0x1f]
  3428a6: 0048         	lsls	r0, r1, #0x1

// ==== HeartMeter::~HeartMeter
//      file offset 0x3428a8 (= ELF address; Ghidra 0x3528a8), 104 bytes, Thumb-2
  3428a8: b500         	push	{lr}
  3428aa: b083         	sub	sp, #0xc
  3428ac: 9001         	str	r0, [sp, #0x4]
  3428ae: 4916         	ldr	r1, [pc, #0x58]         @ 0x342908 <HeartMeter::~HeartMeter()+0x60>
  3428b0: 4479         	add	r1, pc
  3428b2: 9b01         	ldr	r3, [sp, #0x4]
  3428b4: 4a15         	ldr	r2, [pc, #0x54]         @ 0x34290c <HeartMeter::~HeartMeter()+0x64>
  3428b6: 588a         	ldr	r2, [r1, r2]
  3428b8: 3208         	adds	r2, #0x8
  3428ba: 601a         	str	r2, [r3]
  3428bc: 9b01         	ldr	r3, [sp, #0x4]
  3428be: 4618         	mov	r0, r3
  3428c0: 2100         	movs	r1, #0x0
  3428c2: f24d fec1    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x24dd82
  3428c6: 9b01         	ldr	r3, [sp, #0x4]
  3428c8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3428cc: 4618         	mov	r0, r3
  3428ce: f255 faf3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2555e6
  3428d2: 9b01         	ldr	r3, [sp, #0x4]
  3428d4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3428d8: 4618         	mov	r0, r3
  3428da: f255 faed    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2555da
  3428de: 9b01         	ldr	r3, [sp, #0x4]
  3428e0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3428e4: 4618         	mov	r0, r3
  3428e6: f255 fae7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2555ce
  3428ea: 9b01         	ldr	r3, [sp, #0x4]
  3428ec: 4618         	mov	r0, r3
  3428ee: f24c ffa9    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x24cf52
  3428f2: 2300         	movs	r3, #0x0
  3428f4: 2b00         	cmp	r3, #0x0
  3428f6: d002         	beq	0x3428fe <HeartMeter::~HeartMeter()+0x56> @ imm = #0x4
  3428f8: 9801         	ldr	r0, [sp, #0x4]
  3428fa: f045 f3d3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4457a6
  3428fe: 9b01         	ldr	r3, [sp, #0x4]
  342900: 4618         	mov	r0, r3
  342902: b003         	add	sp, #0xc
  342904: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x342907); words below are literal-pool data ---
  342908: 0158         	lsls	r0, r3, #0x5
  34290a: 005f         	lsls	r7, r3, #0x1
  34290c: db24         	blt	0x342958 <HeartMeter::setMeters(double, double)+0x28> @ imm = #0x48
  34290e: ffff b500    	<unknown>

// ==== HeartMeter::~HeartMeter
//      file offset 0x342910 (= ELF address; Ghidra 0x352910), 28 bytes, Thumb-2
  342910: b500         	push	{lr}
  342912: b083         	sub	sp, #0xc
  342914: 9001         	str	r0, [sp, #0x4]
  342916: 9801         	ldr	r0, [sp, #0x4]
  342918: f7ff ffc6    	bl	0x3428a8 <HeartMeter::~HeartMeter()> @ imm = #-0x74
  34291c: 9801         	ldr	r0, [sp, #0x4]
  34291e: f045 f3c1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x445782
  342922: 9b01         	ldr	r3, [sp, #0x4]
  342924: 4618         	mov	r0, r3
  342926: b003         	add	sp, #0xc
  342928: f85d fb04    	ldr	pc, [sp], #4

// ==== HeartMeter::setMeters
//      file offset 0x342930 (= ELF address; Ghidra 0x352930), 276 bytes, Thumb-2
  342930: b500         	push	{lr}
  342932: b085         	sub	sp, #0x14
  342934: 9003         	str	r0, [sp, #0xc]
  342936: e9cd 2300    	strd	r2, r3, [sp]
  34293a: 9b03         	ldr	r3, [sp, #0xc]
  34293c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  342940: 681b         	ldr	r3, [r3]
  342942: 3330         	adds	r3, #0x30
  342944: 681a         	ldr	r2, [r3]
  342946: 9b03         	ldr	r3, [sp, #0xc]
  342948: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  34294c: ed9d 6b00    	vldr	d6, [sp]
  342950: ed9f 7b37    	vldr	d7, [pc, #220]          @ 0x342a30 <HeartMeter::setMeters(double, double)+0x100>
  342954: eeb4 6bc7    	vcmpe.f64	d6, d7
  342958: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34295c: d50a         	bpl	0x342974 <HeartMeter::setMeters(double, double)+0x44> @ imm = #0x14
  34295e: ed9d 7b00    	vldr	d7, [sp]
  342962: eeb5 7bc0    	vcmpe.f64	d7, #0
  342966: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34296a: bfd4         	ite	le
  34296c: 2300         	movle	r3, #0x0
  34296e: 2301         	movgt	r3, #0x1
  342970: b2db         	uxtb	r3, r3
  342972: e000         	b	0x342976 <HeartMeter::setMeters(double, double)+0x46> @ imm = #0x0
  342974: 2301         	movs	r3, #0x1
  342976: 2b00         	cmp	r3, #0x0
  342978: d016         	beq	0x3429a8 <HeartMeter::setMeters(double, double)+0x78> @ imm = #0x2c
  34297a: ed9d 6b00    	vldr	d6, [sp]
  34297e: ed9f 7b2c    	vldr	d7, [pc, #176]          @ 0x342a30 <HeartMeter::setMeters(double, double)+0x100>
  342982: eeb4 6bc7    	vcmpe.f64	d6, d7
  342986: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  34298a: d508         	bpl	0x34299e <HeartMeter::setMeters(double, double)+0x6e> @ imm = #0x10
  34298c: ed9d 6b00    	vldr	d6, [sp]
  342990: ed9f 7b29    	vldr	d7, [pc, #164]          @ 0x342a38 <HeartMeter::setMeters(double, double)+0x108>
  342994: ee26 7b07    	vmul.f64	d7, d6, d7
  342998: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34299c: e001         	b	0x3429a2 <HeartMeter::setMeters(double, double)+0x72> @ imm = #0x2
  34299e: eddf 7a28    	vldr	s15, [pc, #160]         @ 0x342a40 <HeartMeter::setMeters(double, double)+0x110>
  3429a2: ee17 3a90    	vmov	r3, s15
  3429a6: e001         	b	0x3429ac <HeartMeter::setMeters(double, double)+0x7c> @ imm = #0x2
  3429a8: f04f 0300    	mov.w	r3, #0x0
  3429ac: 4608         	mov	r0, r1
  3429ae: 4619         	mov	r1, r3
  3429b0: 4790         	blx	r2
  3429b2: 9b03         	ldr	r3, [sp, #0xc]
  3429b4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3429b8: 681b         	ldr	r3, [r3]
  3429ba: 3330         	adds	r3, #0x30
  3429bc: 681a         	ldr	r2, [r3]
  3429be: 9b03         	ldr	r3, [sp, #0xc]
  3429c0: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  3429c4: ed9d 6b06    	vldr	d6, [sp, #24]
  3429c8: ed9f 7b19    	vldr	d7, [pc, #100]          @ 0x342a30 <HeartMeter::setMeters(double, double)+0x100>
  3429cc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3429d0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3429d4: d50a         	bpl	0x3429ec <HeartMeter::setMeters(double, double)+0xbc> @ imm = #0x14
  3429d6: ed9d 7b06    	vldr	d7, [sp, #24]
  3429da: eeb5 7bc0    	vcmpe.f64	d7, #0
  3429de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3429e2: bfd4         	ite	le
  3429e4: 2300         	movle	r3, #0x0
  3429e6: 2301         	movgt	r3, #0x1
  3429e8: b2db         	uxtb	r3, r3
  3429ea: e000         	b	0x3429ee <HeartMeter::setMeters(double, double)+0xbe> @ imm = #0x0
  3429ec: 2301         	movs	r3, #0x1
  3429ee: 2b00         	cmp	r3, #0x0
  3429f0: d016         	beq	0x342a20 <HeartMeter::setMeters(double, double)+0xf0> @ imm = #0x2c
  3429f2: ed9d 6b06    	vldr	d6, [sp, #24]
  3429f6: ed9f 7b0e    	vldr	d7, [pc, #56]           @ 0x342a30 <HeartMeter::setMeters(double, double)+0x100>
  3429fa: eeb4 6bc7    	vcmpe.f64	d6, d7
  3429fe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  342a02: d508         	bpl	0x342a16 <HeartMeter::setMeters(double, double)+0xe6> @ imm = #0x10
  342a04: ed9d 6b06    	vldr	d6, [sp, #24]
  342a08: ed9f 7b0b    	vldr	d7, [pc, #44]           @ 0x342a38 <HeartMeter::setMeters(double, double)+0x108>
  342a0c: ee26 7b07    	vmul.f64	d7, d6, d7
  342a10: eef7 7bc7    	vcvt.f32.f64	s15, d7
  342a14: e001         	b	0x342a1a <HeartMeter::setMeters(double, double)+0xea> @ imm = #0x2
  342a16: eddf 7a0a    	vldr	s15, [pc, #40]          @ 0x342a40 <HeartMeter::setMeters(double, double)+0x110>
  342a1a: ee17 3a90    	vmov	r3, s15
  342a1e: e001         	b	0x342a24 <HeartMeter::setMeters(double, double)+0xf4> @ imm = #0x2
  342a20: f04f 0300    	mov.w	r3, #0x0
  342a24: 4608         	mov	r0, r1
  342a26: 4619         	mov	r1, r3
  342a28: 4790         	blx	r2
  342a2a: b005         	add	sp, #0x14
  342a2c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x342a2f); words below are literal-pool data ---
  342a30: 0000         	movs	r0, r0
  342a32: 0000         	movs	r0, r0
  342a34: 0000         	movs	r0, r0
  342a36: 4059         	eors	r1, r3
  342a38: 8f5c         	ldrh	r4, [r3, #0x3a]
  342a3a: f5c2 5c28    	rsb.w	r12, r2, #0x2a00
  342a3e: 3fe7         	subs	r7, #0xe7
  342a40: 0000         	movs	r0, r0
  342a42: 4292         	cmp	r2, r2
