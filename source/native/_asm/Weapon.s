// Weapon: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 66 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Weapon.cpp

// ==== Weapon::setFireDelegate
//      file offset 0x2ddb04 (= ELF address; Ghidra 0x2edb04), 18 bytes, Thumb-2
  2ddb04: b082         	sub	sp, #0x8
  2ddb06: 9001         	str	r0, [sp, #0x4]
  2ddb08: 9100         	str	r1, [sp]
  2ddb0a: 9b01         	ldr	r3, [sp, #0x4]
  2ddb0c: 9a00         	ldr	r2, [sp]
  2ddb0e: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  2ddb12: b002         	add	sp, #0x8
  2ddb14: 4770         	bx	lr

// ==== Weapon::Weapon
//      file offset 0x414fa8 (= ELF address; Ghidra 0x424fa8), 72 bytes, Thumb-2
  414fa8: b510         	push	{r4, lr}
  414faa: b082         	sub	sp, #0x8
  414fac: 9001         	str	r0, [sp, #0x4]
  414fae: 4c0e         	ldr	r4, [pc, #0x38]         @ 0x414fe8 <Weapon::Weapon()+0x40>
  414fb0: 447c         	add	r4, pc
  414fb2: 9b01         	ldr	r3, [sp, #0x4]
  414fb4: 4618         	mov	r0, r3
  414fb6: f732 fe91    	bl	0x347cdc <Item::Item()> @ imm = #-0xcd2de
  414fba: 9b01         	ldr	r3, [sp, #0x4]
  414fbc: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x414fec <Weapon::Weapon()+0x44>
  414fbe: 58a2         	ldr	r2, [r4, r2]
  414fc0: 3208         	adds	r2, #0x8
  414fc2: 601a         	str	r2, [r3]
  414fc4: 9b01         	ldr	r3, [sp, #0x4]
  414fc6: f503 73aa    	add.w	r3, r3, #0x154
  414fca: 4618         	mov	r0, r3
  414fcc: f3a0 f8f0    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x3a01e0
  414fd0: 9b01         	ldr	r3, [sp, #0x4]
  414fd2: e005         	b	0x414fe0 <Weapon::Weapon()+0x38> @ imm = #0xa
  414fd4: 9b01         	ldr	r3, [sp, #0x4]
  414fd6: 4618         	mov	r0, r3
  414fd8: f732 ff5c    	bl	0x347e94 <Item::~Item()> @ imm = #-0xcd148
  414fdc: f373 f866    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3730cc
  414fe0: 4618         	mov	r0, r3
  414fe2: b002         	add	sp, #0x8
  414fe4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x414fe5); words below are literal-pool data ---
  414fe6: bf00         	nop
  414fe8: da58         	bge	0x41509c <Weapon::init()+0xac> @ imm = #0xb0
  414fea: 0051         	lsls	r1, r2, #0x1
  414fec: df9c         	svc	#0x9c
  414fee: ffff b500    	<unknown>

// ==== Weapon::init
//      file offset 0x414ff0 (= ELF address; Ghidra 0x424ff0), 512 bytes, Thumb-2
  414ff0: b500         	push	{lr}
  414ff2: b085         	sub	sp, #0x14
  414ff4: 9001         	str	r0, [sp, #0x4]
  414ff6: 9b01         	ldr	r3, [sp, #0x4]
  414ff8: 4618         	mov	r0, r3
  414ffa: f732 fead    	bl	0x347d58 <Item::init()> @ imm = #-0xcd2a6
  414ffe: 4603         	mov	r3, r0
  415000: f88d 300f    	strb.w	r3, [sp, #0xf]
  415004: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  415008: f083 0301    	eor	r3, r3, #0x1
  41500c: b2db         	uxtb	r3, r3
  41500e: 2b00         	cmp	r3, #0x0
  415010: d001         	beq	0x415016 <Weapon::init()+0x26> @ imm = #0x2
  415012: 2300         	movs	r3, #0x0
  415014: e0e6         	b	0x4151e4 <Weapon::init()+0x1f4> @ imm = #0x1cc
  415016: 9b01         	ldr	r3, [sp, #0x4]
  415018: f04f 0200    	mov.w	r2, #0x0
  41501c: f8c3 2158    	str.w	r2, [r3, #0x158]
  415020: 9b01         	ldr	r3, [sp, #0x4]
  415022: 2200         	movs	r2, #0x0
  415024: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  415028: 9b01         	ldr	r3, [sp, #0x4]
  41502a: 2200         	movs	r2, #0x0
  41502c: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  415030: 9b01         	ldr	r3, [sp, #0x4]
  415032: 2200         	movs	r2, #0x0
  415034: f8c3 2170    	str.w	r2, [r3, #0x170]
  415038: 9b01         	ldr	r3, [sp, #0x4]
  41503a: 2200         	movs	r2, #0x0
  41503c: f8c3 2174    	str.w	r2, [r3, #0x174]
  415040: 9b01         	ldr	r3, [sp, #0x4]
  415042: 2200         	movs	r2, #0x0
  415044: f8c3 2178    	str.w	r2, [r3, #0x178]
  415048: 9b01         	ldr	r3, [sp, #0x4]
  41504a: f04f 0200    	mov.w	r2, #0x0
  41504e: f8c3 217c    	str.w	r2, [r3, #0x17c]
  415052: 9b01         	ldr	r3, [sp, #0x4]
  415054: 2200         	movs	r2, #0x0
  415056: f8c3 218c    	str.w	r2, [r3, #0x18c]
  41505a: 9b01         	ldr	r3, [sp, #0x4]
  41505c: f04f 527e    	mov.w	r2, #0x3f800000
  415060: f8c3 2168    	str.w	r2, [r3, #0x168]
  415064: 9b01         	ldr	r3, [sp, #0x4]
  415066: 2200         	movs	r2, #0x0
  415068: f883 2194    	strb.w	r2, [r3, #0x194]
  41506c: 9b01         	ldr	r3, [sp, #0x4]
  41506e: 2200         	movs	r2, #0x0
  415070: f883 2195    	strb.w	r2, [r3, #0x195]
  415074: 9b01         	ldr	r3, [sp, #0x4]
  415076: f04f 0200    	mov.w	r2, #0x0
  41507a: f2c4 1220    	movt	r2, #0x4120
  41507e: f8c3 2114    	str.w	r2, [r3, #0x114]
  415082: 9b01         	ldr	r3, [sp, #0x4]
  415084: f04f 0200    	mov.w	r2, #0x0
  415088: f8c3 2190    	str.w	r2, [r3, #0x190]
  41508c: 9b01         	ldr	r3, [sp, #0x4]
  41508e: 2200         	movs	r2, #0x0
  415090: f883 2135    	strb.w	r2, [r3, #0x135]
  415094: 9b01         	ldr	r3, [sp, #0x4]
  415096: f04f 0200    	mov.w	r2, #0x0
  41509a: f8c3 2138    	str.w	r2, [r3, #0x138]
  41509e: 9b01         	ldr	r3, [sp, #0x4]
  4150a0: 2200         	movs	r2, #0x0
  4150a2: f8c3 2198    	str.w	r2, [r3, #0x198]
  4150a6: 9b01         	ldr	r3, [sp, #0x4]
  4150a8: 2200         	movs	r2, #0x0
  4150aa: f8c3 219c    	str.w	r2, [r3, #0x19c]
  4150ae: 9b01         	ldr	r3, [sp, #0x4]
  4150b0: 2200         	movs	r2, #0x0
  4150b2: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  4150b6: 9b01         	ldr	r3, [sp, #0x4]
  4150b8: 2200         	movs	r2, #0x0
  4150ba: f8c3 2144    	str.w	r2, [r3, #0x144]
  4150be: 9b01         	ldr	r3, [sp, #0x4]
  4150c0: f04f 527e    	mov.w	r2, #0x3f800000
  4150c4: f8c3 2148    	str.w	r2, [r3, #0x148]
  4150c8: f184 fe34    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x184c68
  4150cc: 4602         	mov	r2, r0
  4150ce: 9b01         	ldr	r3, [sp, #0x4]
  4150d0: f8c3 214c    	str.w	r2, [r3, #0x14c]
  4150d4: 9b01         	ldr	r3, [sp, #0x4]
  4150d6: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  4150da: 4618         	mov	r0, r3
  4150dc: f182 ff04    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x182e08
  4150e0: f184 fe28    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x184c50
  4150e4: 4602         	mov	r2, r0
  4150e6: 9b01         	ldr	r3, [sp, #0x4]
  4150e8: f8c3 2150    	str.w	r2, [r3, #0x150]
  4150ec: 9b01         	ldr	r3, [sp, #0x4]
  4150ee: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  4150f2: 4618         	mov	r0, r3
  4150f4: f182 fef8    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x182df0
  4150f8: 9b01         	ldr	r3, [sp, #0x4]
  4150fa: 681b         	ldr	r3, [r3]
  4150fc: f503 73d2    	add.w	r3, r3, #0x1a4
  415100: 681b         	ldr	r3, [r3]
  415102: 9a01         	ldr	r2, [sp, #0x4]
  415104: 4610         	mov	r0, r2
  415106: 2101         	movs	r1, #0x1
  415108: 4798         	blx	r3
  41510a: 9b01         	ldr	r3, [sp, #0x4]
  41510c: 681b         	ldr	r3, [r3]
  41510e: f503 73d4    	add.w	r3, r3, #0x1a8
  415112: 681b         	ldr	r3, [r3]
  415114: 9a01         	ldr	r2, [sp, #0x4]
  415116: 4610         	mov	r0, r2
  415118: 2100         	movs	r1, #0x0
  41511a: 4798         	blx	r3
  41511c: 9b01         	ldr	r3, [sp, #0x4]
  41511e: 2200         	movs	r2, #0x0
  415120: f883 21b0    	strb.w	r2, [r3, #0x1b0]
  415124: 9b01         	ldr	r3, [sp, #0x4]
  415126: 2201         	movs	r2, #0x1
  415128: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  41512c: 9b01         	ldr	r3, [sp, #0x4]
  41512e: f04f 0200    	mov.w	r2, #0x0
  415132: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  415136: 9b01         	ldr	r3, [sp, #0x4]
  415138: f240 5214    	movw	r2, #0x514
  41513c: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  415140: 9b01         	ldr	r3, [sp, #0x4]
  415142: 2200         	movs	r2, #0x0
  415144: f883 2182    	strb.w	r2, [r3, #0x182]
  415148: 9b01         	ldr	r3, [sp, #0x4]
  41514a: 2200         	movs	r2, #0x0
  41514c: f883 2183    	strb.w	r2, [r3, #0x183]
  415150: 9b01         	ldr	r3, [sp, #0x4]
  415152: 2200         	movs	r2, #0x0
  415154: f883 2184    	strb.w	r2, [r3, #0x184]
  415158: 9b01         	ldr	r3, [sp, #0x4]
  41515a: 2200         	movs	r2, #0x0
  41515c: f883 2181    	strb.w	r2, [r3, #0x181]
  415160: 9b01         	ldr	r3, [sp, #0x4]
  415162: f04f 0200    	mov.w	r2, #0x0
  415166: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  41516a: 9b01         	ldr	r3, [sp, #0x4]
  41516c: 2200         	movs	r2, #0x0
  41516e: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  415172: 9b01         	ldr	r3, [sp, #0x4]
  415174: 2200         	movs	r2, #0x0
  415176: f883 2185    	strb.w	r2, [r3, #0x185]
  41517a: 9b01         	ldr	r3, [sp, #0x4]
  41517c: f04f 0200    	mov.w	r2, #0x0
  415180: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  415184: 9b01         	ldr	r3, [sp, #0x4]
  415186: f04f 527e    	mov.w	r2, #0x3f800000
  41518a: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  41518e: 9b01         	ldr	r3, [sp, #0x4]
  415190: f503 73aa    	add.w	r3, r3, #0x154
  415194: 4618         	mov	r0, r3
  415196: 4b15         	ldr	r3, [pc, #0x54]         @ 0x4151ec <Weapon::init()+0x1fc>
  415198: 447b         	add	r3, pc
  41519a: 4619         	mov	r1, r3
  41519c: f3a0 fe68    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x3a0cd0
  4151a0: 9901         	ldr	r1, [sp, #0x4]
  4151a2: f04f 0200    	mov.w	r2, #0x0
  4151a6: f04f 0300    	mov.w	r3, #0x0
  4151aa: e9c1 2376    	strd	r2, r3, [r1, #472]
  4151ae: 9901         	ldr	r1, [sp, #0x4]
  4151b0: f04f 0200    	mov.w	r2, #0x0
  4151b4: f04f 0300    	mov.w	r3, #0x0
  4151b8: e9c1 2378    	strd	r2, r3, [r1, #480]
  4151bc: 9b01         	ldr	r3, [sp, #0x4]
  4151be: 681b         	ldr	r3, [r3]
  4151c0: f503 73d6    	add.w	r3, r3, #0x1ac
  4151c4: 681b         	ldr	r3, [r3]
  4151c6: 9801         	ldr	r0, [sp, #0x4]
  4151c8: 4798         	blx	r3
  4151ca: 9b01         	ldr	r3, [sp, #0x4]
  4151cc: 2200         	movs	r2, #0x0
  4151ce: f883 2180    	strb.w	r2, [r3, #0x180]
  4151d2: 9b01         	ldr	r3, [sp, #0x4]
  4151d4: 2200         	movs	r2, #0x0
  4151d6: f883 20e5    	strb.w	r2, [r3, #0xe5]
  4151da: 9b01         	ldr	r3, [sp, #0x4]
  4151dc: 2200         	movs	r2, #0x0
  4151de: f8c3 21d0    	str.w	r2, [r3, #0x1d0]
  4151e2: 2301         	movs	r3, #0x1
  4151e4: 4618         	mov	r0, r3
  4151e6: b005         	add	sp, #0x14
  4151e8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4151eb); words below are literal-pool data ---
  4151ec: 623c         	str	r4, [r7, #0x20]
  4151ee: 003c         	movs	r4, r7

// ==== Weapon::~Weapon
//      file offset 0x4151f0 (= ELF address; Ghidra 0x4251f0), 104 bytes, Thumb-2
  4151f0: b500         	push	{lr}
  4151f2: b083         	sub	sp, #0xc
  4151f4: 9001         	str	r0, [sp, #0x4]
  4151f6: 4916         	ldr	r1, [pc, #0x58]         @ 0x415250 <Weapon::~Weapon()+0x60>
  4151f8: 4479         	add	r1, pc
  4151fa: 9b01         	ldr	r3, [sp, #0x4]
  4151fc: 4a15         	ldr	r2, [pc, #0x54]         @ 0x415254 <Weapon::~Weapon()+0x64>
  4151fe: 588a         	ldr	r2, [r1, r2]
  415200: 3208         	adds	r2, #0x8
  415202: 601a         	str	r2, [r3]
  415204: 9b01         	ldr	r3, [sp, #0x4]
  415206: 4618         	mov	r0, r3
  415208: f17b fa10    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x17b420
  41520c: 9b01         	ldr	r3, [sp, #0x4]
  41520e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  415212: 4618         	mov	r0, r3
  415214: f182 fe50    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x182ca0
  415218: 9b01         	ldr	r3, [sp, #0x4]
  41521a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  41521e: 4618         	mov	r0, r3
  415220: f182 fe4a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x182c94
  415224: 9b01         	ldr	r3, [sp, #0x4]
  415226: f503 73aa    	add.w	r3, r3, #0x154
  41522a: 4618         	mov	r0, r3
  41522c: f3a0 fb72    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3a06e4
  415230: 9b01         	ldr	r3, [sp, #0x4]
  415232: 4618         	mov	r0, r3
  415234: f732 fe2e    	bl	0x347e94 <Item::~Item()> @ imm = #-0xcd3a4
  415238: 2300         	movs	r3, #0x0
  41523a: 2b00         	cmp	r3, #0x0
  41523c: d002         	beq	0x415244 <Weapon::~Weapon()+0x54> @ imm = #0x4
  41523e: 9801         	ldr	r0, [sp, #0x4]
  415240: f372 ff30    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x372e60
  415244: 9b01         	ldr	r3, [sp, #0x4]
  415246: 4618         	mov	r0, r3
  415248: b003         	add	sp, #0xc
  41524a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x41524d); words below are literal-pool data ---
  41524e: bf00         	nop
  415250: d810         	bhi	0x415274 <Weapon::~Weapon()+0x1c> @ imm = #0x20
  415252: 0051         	lsls	r1, r2, #0x1
  415254: df9c         	svc	#0x9c
  415256: ffff b500    	<unknown>

// ==== Weapon::~Weapon
//      file offset 0x415258 (= ELF address; Ghidra 0x425258), 28 bytes, Thumb-2
  415258: b500         	push	{lr}
  41525a: b083         	sub	sp, #0xc
  41525c: 9001         	str	r0, [sp, #0x4]
  41525e: 9801         	ldr	r0, [sp, #0x4]
  415260: f7ff ffc6    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #-0x74
  415264: 9801         	ldr	r0, [sp, #0x4]
  415266: f372 ff1d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x372e3a
  41526a: 9b01         	ldr	r3, [sp, #0x4]
  41526c: 4618         	mov	r0, r3
  41526e: b003         	add	sp, #0xc
  415270: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::initBody
//      file offset 0x415278 (= ELF address; Ghidra 0x425278), 360 bytes, Thumb-2
  415278: b530         	push	{r4, r5, lr}
  41527a: b099         	sub	sp, #0x64
  41527c: 900d         	str	r0, [sp, #0x34]
  41527e: 4c55         	ldr	r4, [pc, #0x154]        @ 0x4153d4 <Weapon::initBody()+0x15c>
  415280: 447c         	add	r4, pc
  415282: f64c 43cd    	movw	r3, #0xcccd
  415286: f6c3 53cc    	movt	r3, #0x3dcc
  41528a: 930f         	str	r3, [sp, #0x3c]
  41528c: eddd 7a0f    	vldr	s15, [sp, #60]
  415290: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  415294: ec51 0b17    	vmov	r0, r1, d7
  415298: f04f 0200    	mov.w	r2, #0x0
  41529c: f04f 0300    	mov.w	r3, #0x0
  4152a0: f2c4 0314    	movt	r3, #0x4014
  4152a4: f2bd ffd2    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2bdfa4
  4152a8: 4602         	mov	r2, r0
  4152aa: 9b0d         	ldr	r3, [sp, #0x34]
  4152ac: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  4152b0: 9b0d         	ldr	r3, [sp, #0x34]
  4152b2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4152b6: 4a48         	ldr	r2, [pc, #0x120]        @ 0x4153d8 <Weapon::initBody()+0x160>
  4152b8: 447a         	add	r2, pc
  4152ba: 601a         	str	r2, [r3]
  4152bc: 9b0d         	ldr	r3, [sp, #0x34]
  4152be: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4152c2: 9a0d         	ldr	r2, [sp, #0x34]
  4152c4: f8c3 2090    	str.w	r2, [r3, #0x90]
  4152c8: 990d         	ldr	r1, [sp, #0x34]
  4152ca: a340         	adr	r3, #256 <Weapon::initBody()+0x96>
  4152cc: e9d3 2300    	ldrd	r2, r3, [r3]
  4152d0: e9c1 233c    	strd	r2, r3, [r1, #240]
  4152d4: 4b41         	ldr	r3, [pc, #0x104]        @ 0x4153dc <Weapon::initBody()+0x164>
  4152d6: 58e3         	ldr	r3, [r4, r3]
  4152d8: ed93 7a00    	vldr	s14, [r3]
  4152dc: eddf 7a3a    	vldr	s15, [pc, #232]         @ 0x4153c8 <Weapon::initBody()+0x150>
  4152e0: ee67 7a27    	vmul.f32	s15, s14, s15
  4152e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4152e8: 9c0d         	ldr	r4, [sp, #0x34]
  4152ea: ab08         	add	r3, sp, #0x20
  4152ec: 4618         	mov	r0, r3
  4152ee: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x4153b0 <Weapon::initBody()+0x138>
  4152f2: eeb0 1b47    	vmov.f64	d1, d7
  4152f6: f7fe fde3    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x143a
  4152fa: 34f8         	adds	r4, #0xf8
  4152fc: ab08         	add	r3, sp, #0x20
  4152fe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  415300: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  415304: 9b0d         	ldr	r3, [sp, #0x34]
  415306: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  41530a: ab10         	add	r3, sp, #0x40
  41530c: 4618         	mov	r0, r3
  41530e: eeba 0b04    	vmov.f64	d0, #-1.000000e+01
  415312: ed9f 1b27    	vldr	d1, [pc, #156]          @ 0x4153b0 <Weapon::initBody()+0x138>
  415316: f7fe fdd3    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x145a
  41531a: ab14         	add	r3, sp, #0x50
  41531c: 4618         	mov	r0, r3
  41531e: eeb2 0b04    	vmov.f64	d0, #1.000000e+01
  415322: ed9f 1b23    	vldr	d1, [pc, #140]          @ 0x4153b0 <Weapon::initBody()+0x138>
  415326: f7fe fdcb    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x146a
  41532a: ac02         	add	r4, sp, #0x8
  41532c: ab14         	add	r3, sp, #0x50
  41532e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  415330: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  415334: f04f 0200    	mov.w	r2, #0x0
  415338: f04f 0300    	mov.w	r3, #0x0
  41533c: f2c4 0308    	movt	r3, #0x4008
  415340: e9cd 2306    	strd	r2, r3, [sp, #24]
  415344: 466b         	mov	r3, sp
  415346: aa12         	add	r2, sp, #0x48
  415348: e892 0003    	ldm.w	r2, {r0, r1}
  41534c: e883 0003    	stm.w	r3, {r0, r1}
  415350: ab10         	add	r3, sp, #0x40
  415352: cb0c         	ldm	r3, {r2, r3}
  415354: 4628         	mov	r0, r5
  415356: f2bf ff71    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x2bfee2
  41535a: 4602         	mov	r2, r0
  41535c: 9b0d         	ldr	r3, [sp, #0x34]
  41535e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  415362: 9b0d         	ldr	r3, [sp, #0x34]
  415364: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  415368: 2202         	movs	r2, #0x2
  41536a: 655a         	str	r2, [r3, #0x54]
  41536c: 9b0d         	ldr	r3, [sp, #0x34]
  41536e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  415372: 2202         	movs	r2, #0x2
  415374: 65da         	str	r2, [r3, #0x5c]
  415376: 9b0d         	ldr	r3, [sp, #0x34]
  415378: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  41537c: 2202         	movs	r2, #0x2
  41537e: 659a         	str	r2, [r3, #0x58]
  415380: 9b0d         	ldr	r3, [sp, #0x34]
  415382: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  415386: a30c         	adr	r3, #48 <Weapon::initBody()+0x11e>
  415388: e9d3 2300    	ldrd	r2, r3, [r3]
  41538c: e9c1 230c    	strd	r2, r3, [r1, #48]
  415390: 9b0d         	ldr	r3, [sp, #0x34]
  415392: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  415396: a30a         	adr	r3, #40 <Weapon::initBody()+0x12c>
  415398: e9d3 2300    	ldrd	r2, r3, [r3]
  41539c: e9c1 230e    	strd	r2, r3, [r1, #56]
  4153a0: 9b0d         	ldr	r3, [sp, #0x34]
  4153a2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  4153a6: 9a0d         	ldr	r2, [sp, #0x34]
  4153a8: 651a         	str	r2, [r3, #0x50]
  4153aa: b019         	add	sp, #0x64
  4153ac: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4153ad); words below are literal-pool data ---
  4153ae: bf00         	nop
  4153b8: 0000         	movs	r0, r0
  4153ba: a000         	adr	r0, #0 <Weapon::initBody()+0x146>
  4153bc: 9999         	ldr	r1, [sp, #0x264]
  4153be: 3fb9         	subs	r7, #0xb9
  4153c0: 0000         	movs	r0, r0
  4153c2: c000         	<unknown>
  4153c4: cccc         	ldm	r4!, {r2, r3, r6, r7}
  4153c6: 3fec         	subs	r7, #0xec
  4153c8: 0000         	movs	r0, r0
  4153ca: c3c8         	stm	r3!, {r3, r6, r7}
  4153cc: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  4153ce: cccc         	ldm	r4!, {r2, r3, r6, r7}
  4153d0: cccc         	ldm	r4!, {r2, r3, r6, r7}
  4153d2: 3fec         	subs	r7, #0xec
  4153d4: d788         	bvc	0x4152e8 <Weapon::initBody()+0x70> @ imm = #-0xf0
  4153d6: 0051         	lsls	r1, r2, #0x1
  4153d8: fb61 ffff    	<unknown>
  4153dc: da30         	bge	0x415440 <Weapon::updateRemoteWeaponStep(float)+0x60> @ imm = #0x60
  4153de: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== Weapon::updateRemoteWeaponStep
//      file offset 0x4153e0 (= ELF address; Ghidra 0x4253e0), 484 bytes, Thumb-2
  4153e0: b530         	push	{r4, r5, lr}
  4153e2: b09d         	sub	sp, #0x74
  4153e4: 9001         	str	r0, [sp, #0x4]
  4153e6: 9100         	str	r1, [sp]
  4153e8: 9b01         	ldr	r3, [sp, #0x4]
  4153ea: ed93 7a64    	vldr	s14, [r3, #400]
  4153ee: eddd 7a00    	vldr	s15, [sp]
  4153f2: ee77 7a27    	vadd.f32	s15, s14, s15
  4153f6: 9b01         	ldr	r3, [sp, #0x4]
  4153f8: edc3 7a64    	vstr	s15, [r3, #400]
  4153fc: 9b01         	ldr	r3, [sp, #0x4]
  4153fe: ed93 7a45    	vldr	s14, [r3, #276]
  415402: eddd 7a00    	vldr	s15, [sp]
  415406: ee77 7a27    	vadd.f32	s15, s14, s15
  41540a: 9b01         	ldr	r3, [sp, #0x4]
  41540c: edc3 7a45    	vstr	s15, [r3, #276]
  415410: 9b01         	ldr	r3, [sp, #0x4]
  415412: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  415416: ed93 7b0a    	vldr	d7, [r3, #40]
  41541a: eef7 6bc7    	vcvt.f32.f64	s13, d7
  41541e: 9b01         	ldr	r3, [sp, #0x4]
  415420: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  415424: ed93 7b0c    	vldr	d7, [r3, #48]
  415428: eef7 7bc7    	vcvt.f32.f64	s15, d7
  41542c: ab14         	add	r3, sp, #0x50
  41542e: 4618         	mov	r0, r3
  415430: ee16 1a90    	vmov	r1, s13
  415434: ee17 2a90    	vmov	r2, s15
  415438: f17d fc5a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17d8b4
  41543c: 9b01         	ldr	r3, [sp, #0x4]
  41543e: 681b         	ldr	r3, [r3]
  415440: 3350         	adds	r3, #0x50
  415442: 681b         	ldr	r3, [r3]
  415444: 9a01         	ldr	r2, [sp, #0x4]
  415446: 4610         	mov	r0, r2
  415448: 4798         	blx	r3
  41544a: 4603         	mov	r3, r0
  41544c: a918         	add	r1, sp, #0x60
  41544e: aa14         	add	r2, sp, #0x50
  415450: 4608         	mov	r0, r1
  415452: 4611         	mov	r1, r2
  415454: 461a         	mov	r2, r3
  415456: f7fe fcc1    	bl	0x413ddc <UZI::getDAMAGE()+0x198> @ imm = #-0x167e
  41545a: aa04         	add	r2, sp, #0x10
  41545c: ab18         	add	r3, sp, #0x60
  41545e: 4610         	mov	r0, r2
  415460: 4619         	mov	r1, r3
  415462: eeb4 0a00    	vmov.f32	s0, #1.250000e-01
  415466: f7fe fcc9    	bl	0x413dfc <UZI::getDAMAGE()+0x1b8> @ imm = #-0x166e
  41546a: 9b01         	ldr	r3, [sp, #0x4]
  41546c: 681b         	ldr	r3, [r3]
  41546e: 3350         	adds	r3, #0x50
  415470: 681b         	ldr	r3, [r3]
  415472: 9a01         	ldr	r2, [sp, #0x4]
  415474: 4610         	mov	r0, r2
  415476: 4798         	blx	r3
  415478: 4602         	mov	r2, r0
  41547a: a906         	add	r1, sp, #0x18
  41547c: ab04         	add	r3, sp, #0x10
  41547e: 4608         	mov	r0, r1
  415480: 4611         	mov	r1, r2
  415482: 461a         	mov	r2, r3
  415484: f7fe fc9a    	bl	0x413dbc <UZI::getDAMAGE()+0x178> @ imm = #-0x16cc
  415488: 9b01         	ldr	r3, [sp, #0x4]
  41548a: 681b         	ldr	r3, [r3]
  41548c: 334c         	adds	r3, #0x4c
  41548e: 681b         	ldr	r3, [r3]
  415490: 9901         	ldr	r1, [sp, #0x4]
  415492: aa06         	add	r2, sp, #0x18
  415494: 4608         	mov	r0, r1
  415496: 4611         	mov	r1, r2
  415498: 4798         	blx	r3
  41549a: 9b01         	ldr	r3, [sp, #0x4]
  41549c: 681b         	ldr	r3, [r3]
  41549e: 339c         	adds	r3, #0x9c
  4154a0: 681b         	ldr	r3, [r3]
  4154a2: 9a01         	ldr	r2, [sp, #0x4]
  4154a4: 4610         	mov	r0, r2
  4154a6: 4798         	blx	r3
  4154a8: ee07 0a10    	vmov	s14, r0
  4154ac: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x4155c0 <Weapon::updateRemoteWeaponStep(float)+0x1e0>
  4154b0: ee67 7a27    	vmul.f32	s15, s14, s15
  4154b4: eef1 7a67    	vneg.f32	s15, s15
  4154b8: edcd 7a02    	vstr	s15, [sp, #8]
  4154bc: eddd 7a02    	vldr	s15, [sp, #8]
  4154c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4154c4: ec51 0b17    	vmov	r0, r1, d7
  4154c8: f6c0 ed1e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13f5c4
  4154cc: 4604         	mov	r4, r0
  4154ce: 460d         	mov	r5, r1
  4154d0: eddd 7a02    	vldr	s15, [sp, #8]
  4154d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  4154d8: ec51 0b17    	vmov	r0, r1, d7
  4154dc: f6c0 ed1a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x13f5cc
  4154e0: 4602         	mov	r2, r0
  4154e2: 460b         	mov	r3, r1
  4154e4: a908         	add	r1, sp, #0x20
  4154e6: 4608         	mov	r0, r1
  4154e8: ec45 4b10    	vmov	d0, r4, r5
  4154ec: ec43 2b11    	vmov	d1, r2, r3
  4154f0: f7fe fce6    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x1634
  4154f4: 9b01         	ldr	r3, [sp, #0x4]
  4154f6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  4154fa: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  4154fe: 4610         	mov	r0, r2
  415500: 4619         	mov	r1, r3
  415502: f6c0 ed02    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x13f5fc
  415506: 4604         	mov	r4, r0
  415508: 460d         	mov	r5, r1
  41550a: 9b01         	ldr	r3, [sp, #0x4]
  41550c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  415510: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  415514: 4610         	mov	r0, r2
  415516: 4619         	mov	r1, r3
  415518: f6c0 ecfc    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x13f608
  41551c: 4602         	mov	r2, r0
  41551e: 460b         	mov	r3, r1
  415520: a90c         	add	r1, sp, #0x30
  415522: 4608         	mov	r0, r1
  415524: ec45 4b10    	vmov	d0, r4, r5
  415528: ec43 2b11    	vmov	d1, r2, r3
  41552c: f7fe fcc8    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x1670
  415530: ab14         	add	r3, sp, #0x50
  415532: ed9d 6b08    	vldr	d6, [sp, #32]
  415536: ed9d 7b0a    	vldr	d7, [sp, #40]
  41553a: 4618         	mov	r0, r3
  41553c: eeb0 0b46    	vmov.f64	d0, d6
  415540: eeb0 1b47    	vmov.f64	d1, d7
  415544: ed9f 2b1a    	vldr	d2, [pc, #104]          @ 0x4155b0 <Weapon::updateRemoteWeaponStep(float)+0x1d0>
  415548: f7fe fcfa    	bl	0x413f40 <UZI::getDAMAGE()+0x2fc> @ imm = #-0x160c
  41554c: ab18         	add	r3, sp, #0x60
  41554e: ed9d 6b0c    	vldr	d6, [sp, #48]
  415552: ed9d 7b0e    	vldr	d7, [sp, #56]
  415556: 4618         	mov	r0, r3
  415558: eeb0 0b46    	vmov.f64	d0, d6
  41555c: eeb0 1b47    	vmov.f64	d1, d7
  415560: ed9f 2b15    	vldr	d2, [pc, #84]           @ 0x4155b8 <Weapon::updateRemoteWeaponStep(float)+0x1d8>
  415564: f7fe fcec    	bl	0x413f40 <UZI::getDAMAGE()+0x2fc> @ imm = #-0x1628
  415568: ab10         	add	r3, sp, #0x40
  41556a: ed9d 4b14    	vldr	d4, [sp, #80]
  41556e: ed9d 5b16    	vldr	d5, [sp, #88]
  415572: ed9d 6b18    	vldr	d6, [sp, #96]
  415576: ed9d 7b1a    	vldr	d7, [sp, #104]
  41557a: 4618         	mov	r0, r3
  41557c: eeb0 0b44    	vmov.f64	d0, d4
  415580: eeb0 1b45    	vmov.f64	d1, d5
  415584: eeb0 2b46    	vmov.f64	d2, d6
  415588: eeb0 3b47    	vmov.f64	d3, d7
  41558c: f7fe fcac    	bl	0x413ee8 <UZI::getDAMAGE()+0x2a4> @ imm = #-0x16a8
  415590: ab10         	add	r3, sp, #0x40
  415592: cb0f         	ldm	r3, {r0, r1, r2, r3}
  415594: f7fe fdc8    	bl	0x414128 <UZI::getDAMAGE()+0x4e4> @ imm = #-0x1470
  415598: 9003         	str	r0, [sp, #0xc]
  41559a: 9b01         	ldr	r3, [sp, #0x4]
  41559c: 681b         	ldr	r3, [r3]
  41559e: 3398         	adds	r3, #0x98
  4155a0: 681b         	ldr	r3, [r3]
  4155a2: 9a01         	ldr	r2, [sp, #0x4]
  4155a4: 4610         	mov	r0, r2
  4155a6: 9903         	ldr	r1, [sp, #0xc]
  4155a8: 4798         	blx	r3
  4155aa: b01d         	add	sp, #0x74
  4155ac: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4155ad); words below are literal-pool data ---
  4155ae: bf00         	nop
  4155b0: 6666         	str	r6, [r4, #0x64]
  4155b2: 6666         	str	r6, [r4, #0x64]
  4155b4: 6666         	str	r6, [r4, #0x64]
  4155b6: 3fe6         	subs	r7, #0xe6
  4155b8: 3333         	adds	r3, #0x33
  4155ba: 3333         	adds	r3, #0x33
  4155bc: 3333         	adds	r3, #0x33
  4155be: 3fd3         	subs	r7, #0xd3
  4155c0: fa35 3c8e    	<unknown>

// ==== Weapon::triggerPull
//      file offset 0x4155c8 (= ELF address; Ghidra 0x4255c8), 10 bytes, Thumb-2
  4155c8: b082         	sub	sp, #0x8
  4155ca: 9001         	str	r0, [sp, #0x4]
  4155cc: 9100         	str	r1, [sp]
  4155ce: b002         	add	sp, #0x8
  4155d0: 4770         	bx	lr

// ==== Weapon::remoteTriggerPull
//      file offset 0x4155d4 (= ELF address; Ghidra 0x4255d4), 10 bytes, Thumb-2
  4155d4: b082         	sub	sp, #0x8
  4155d6: 9001         	str	r0, [sp, #0x4]
  4155d8: 9100         	str	r1, [sp]
  4155da: b002         	add	sp, #0x8
  4155dc: 4770         	bx	lr

// ==== Weapon::detonate
//      file offset 0x4155e0 (= ELF address; Ghidra 0x4255e0), 10 bytes, Thumb-2
  4155e0: b082         	sub	sp, #0x8
  4155e2: 9001         	str	r0, [sp, #0x4]
  4155e4: 9100         	str	r1, [sp]
  4155e6: b002         	add	sp, #0x8
  4155e8: 4770         	bx	lr

// ==== Weapon::getShellPoint
//      file offset 0x4155ec (= ELF address; Ghidra 0x4255ec), 40 bytes, Thumb-2
  4155ec: b082         	sub	sp, #0x8
  4155ee: 9001         	str	r0, [sp, #0x4]
  4155f0: 9100         	str	r1, [sp]
  4155f2: 9901         	ldr	r1, [sp, #0x4]
  4155f4: f04f 0200    	mov.w	r2, #0x0
  4155f8: f04f 0300    	mov.w	r3, #0x0
  4155fc: e9c1 2300    	strd	r2, r3, [r1]
  415600: 9901         	ldr	r1, [sp, #0x4]
  415602: f04f 0200    	mov.w	r2, #0x0
  415606: f04f 0300    	mov.w	r3, #0x0
  41560a: e9c1 2302    	strd	r2, r3, [r1, #8]
  41560e: 9801         	ldr	r0, [sp, #0x4]
  415610: b002         	add	sp, #0x8
  415612: 4770         	bx	lr

// ==== Weapon::getType
//      file offset 0x415614 (= ELF address; Ghidra 0x425614), 16 bytes, Thumb-2
  415614: b082         	sub	sp, #0x8
  415616: 9001         	str	r0, [sp, #0x4]
  415618: 9b01         	ldr	r3, [sp, #0x4]
  41561a: f8d3 3188    	ldr.w	r3, [r3, #0x188]
  41561e: 4618         	mov	r0, r3
  415620: b002         	add	sp, #0x8
  415622: 4770         	bx	lr

// ==== Weapon::reloadWeapon
//      file offset 0x415624 (= ELF address; Ghidra 0x425624), 26 bytes, Thumb-2
  415624: b082         	sub	sp, #0x8
  415626: 9001         	str	r0, [sp, #0x4]
  415628: 9b01         	ldr	r3, [sp, #0x4]
  41562a: 2201         	movs	r2, #0x1
  41562c: f883 2181    	strb.w	r2, [r3, #0x181]
  415630: 9b01         	ldr	r3, [sp, #0x4]
  415632: f04f 0200    	mov.w	r2, #0x0
  415636: f8c3 2158    	str.w	r2, [r3, #0x158]
  41563a: b002         	add	sp, #0x8
  41563c: 4770         	bx	lr

// ==== Weapon::getAmmo
//      file offset 0x415640 (= ELF address; Ghidra 0x425640), 48 bytes, Thumb-2
  415640: b500         	push	{lr}
  415642: b085         	sub	sp, #0x14
  415644: 9001         	str	r0, [sp, #0x4]
  415646: 2300         	movs	r3, #0x0
  415648: 9302         	str	r3, [sp, #0x8]
  41564a: 9b01         	ldr	r3, [sp, #0x4]
  41564c: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  415650: b21b         	sxth	r3, r3
  415652: 9303         	str	r3, [sp, #0xc]
  415654: aa02         	add	r2, sp, #0x8
  415656: ab03         	add	r3, sp, #0xc
  415658: 4610         	mov	r0, r2
  41565a: 4619         	mov	r1, r3
  41565c: f71e fa08    	bl	0x333a70 <int const& std::max<int>(int const&, int const&)> @ imm = #-0xe1bf0
  415660: 4603         	mov	r3, r0
  415662: 681b         	ldr	r3, [r3]
  415664: b29b         	uxth	r3, r3
  415666: b21b         	sxth	r3, r3
  415668: 4618         	mov	r0, r3
  41566a: b005         	add	sp, #0x14
  41566c: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::getAmmoType
//      file offset 0x415670 (= ELF address; Ghidra 0x425670), 16 bytes, Thumb-2
  415670: b082         	sub	sp, #0x8
  415672: 9001         	str	r0, [sp, #0x4]
  415674: 9b01         	ldr	r3, [sp, #0x4]
  415676: f8d3 3188    	ldr.w	r3, [r3, #0x188]
  41567a: 4618         	mov	r0, r3
  41567c: b002         	add	sp, #0x8
  41567e: 4770         	bx	lr

// ==== Weapon::setAmmoType
//      file offset 0x415680 (= ELF address; Ghidra 0x425680), 18 bytes, Thumb-2
  415680: b082         	sub	sp, #0x8
  415682: 9001         	str	r0, [sp, #0x4]
  415684: 9100         	str	r1, [sp]
  415686: 9b01         	ldr	r3, [sp, #0x4]
  415688: 9a00         	ldr	r2, [sp]
  41568a: f8c3 2188    	str.w	r2, [r3, #0x188]
  41568e: b002         	add	sp, #0x8
  415690: 4770         	bx	lr

// ==== Weapon::getClip
//      file offset 0x415694 (= ELF address; Ghidra 0x425694), 48 bytes, Thumb-2
  415694: b500         	push	{lr}
  415696: b085         	sub	sp, #0x14
  415698: 9001         	str	r0, [sp, #0x4]
  41569a: 2300         	movs	r3, #0x0
  41569c: 9302         	str	r3, [sp, #0x8]
  41569e: 9b01         	ldr	r3, [sp, #0x4]
  4156a0: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  4156a4: b21b         	sxth	r3, r3
  4156a6: 9303         	str	r3, [sp, #0xc]
  4156a8: aa02         	add	r2, sp, #0x8
  4156aa: ab03         	add	r3, sp, #0xc
  4156ac: 4610         	mov	r0, r2
  4156ae: 4619         	mov	r1, r3
  4156b0: f71e f9de    	bl	0x333a70 <int const& std::max<int>(int const&, int const&)> @ imm = #-0xe1c44
  4156b4: 4603         	mov	r3, r0
  4156b6: 681b         	ldr	r3, [r3]
  4156b8: b29b         	uxth	r3, r3
  4156ba: b21b         	sxth	r3, r3
  4156bc: 4618         	mov	r0, r3
  4156be: b005         	add	sp, #0x14
  4156c0: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::getWeaponTexture
//      file offset 0x4156c4 (= ELF address; Ghidra 0x4256c4), 12 bytes, Thumb-2
  4156c4: b082         	sub	sp, #0x8
  4156c6: 9001         	str	r0, [sp, #0x4]
  4156c8: 2300         	movs	r3, #0x0
  4156ca: 4618         	mov	r0, r3
  4156cc: b002         	add	sp, #0x8
  4156ce: 4770         	bx	lr

// ==== Weapon::getWeaponRect
//      file offset 0x4156d0 (= ELF address; Ghidra 0x4256d0), 40 bytes, Thumb-2
  4156d0: b500         	push	{lr}
  4156d2: b085         	sub	sp, #0x14
  4156d4: 9003         	str	r0, [sp, #0xc]
  4156d6: 9102         	str	r1, [sp, #0x8]
  4156d8: f04f 0300    	mov.w	r3, #0x0
  4156dc: 9300         	str	r3, [sp]
  4156de: 9803         	ldr	r0, [sp, #0xc]
  4156e0: f04f 0100    	mov.w	r1, #0x0
  4156e4: f04f 0200    	mov.w	r2, #0x0
  4156e8: f04f 0300    	mov.w	r3, #0x0
  4156ec: f17d fdf8    	bl	0x5932e0 <cocos2d::CCRect::CCRect(float, float, float, float)> @ imm = #0x17dbf0
  4156f0: 9803         	ldr	r0, [sp, #0xc]
  4156f2: b005         	add	sp, #0x14
  4156f4: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::setAmmo
//      file offset 0x4156f8 (= ELF address; Ghidra 0x4256f8), 42 bytes, Thumb-2
  4156f8: b500         	push	{lr}
  4156fa: b085         	sub	sp, #0x14
  4156fc: 9001         	str	r0, [sp, #0x4]
  4156fe: 9100         	str	r1, [sp]
  415700: 2300         	movs	r3, #0x0
  415702: 9303         	str	r3, [sp, #0xc]
  415704: aa03         	add	r2, sp, #0xc
  415706: 466b         	mov	r3, sp
  415708: 4610         	mov	r0, r2
  41570a: 4619         	mov	r1, r3
  41570c: f71e f9b0    	bl	0x333a70 <int const& std::max<int>(int const&, int const&)> @ imm = #-0xe1ca0
  415710: 4603         	mov	r3, r0
  415712: 681b         	ldr	r3, [r3]
  415714: b29a         	uxth	r2, r3
  415716: 9b01         	ldr	r3, [sp, #0x4]
  415718: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  41571c: b005         	add	sp, #0x14
  41571e: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::setClip
//      file offset 0x415724 (= ELF address; Ghidra 0x425724), 42 bytes, Thumb-2
  415724: b500         	push	{lr}
  415726: b085         	sub	sp, #0x14
  415728: 9001         	str	r0, [sp, #0x4]
  41572a: 9100         	str	r1, [sp]
  41572c: 2300         	movs	r3, #0x0
  41572e: 9303         	str	r3, [sp, #0xc]
  415730: aa03         	add	r2, sp, #0xc
  415732: 466b         	mov	r3, sp
  415734: 4610         	mov	r0, r2
  415736: 4619         	mov	r1, r3
  415738: f71e f99a    	bl	0x333a70 <int const& std::max<int>(int const&, int const&)> @ imm = #-0xe1ccc
  41573c: 4603         	mov	r3, r0
  41573e: 681b         	ldr	r3, [r3]
  415740: b29a         	uxth	r2, r3
  415742: 9b01         	ldr	r3, [sp, #0x4]
  415744: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  415748: b005         	add	sp, #0x14
  41574a: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::getViewOffset
//      file offset 0x415750 (= ELF address; Ghidra 0x425750), 16 bytes, Thumb-2
  415750: b082         	sub	sp, #0x8
  415752: 9001         	str	r0, [sp, #0x4]
  415754: 9b01         	ldr	r3, [sp, #0x4]
  415756: f8d3 318c    	ldr.w	r3, [r3, #0x18c]
  41575a: 4618         	mov	r0, r3
  41575c: b002         	add	sp, #0x8
  41575e: 4770         	bx	lr

// ==== Weapon::playSound
//      file offset 0x415760 (= ELF address; Ghidra 0x425760), 8 bytes, Thumb-2
  415760: b082         	sub	sp, #0x8
  415762: 9001         	str	r0, [sp, #0x4]
  415764: b002         	add	sp, #0x8
  415766: 4770         	bx	lr

// ==== Weapon::resetBullets
//      file offset 0x415768 (= ELF address; Ghidra 0x425768), 24 bytes, Thumb-2
  415768: b082         	sub	sp, #0x8
  41576a: 9001         	str	r0, [sp, #0x4]
  41576c: 9b01         	ldr	r3, [sp, #0x4]
  41576e: 2200         	movs	r2, #0x0
  415770: f883 2194    	strb.w	r2, [r3, #0x194]
  415774: 9b01         	ldr	r3, [sp, #0x4]
  415776: 2200         	movs	r2, #0x0
  415778: f883 2195    	strb.w	r2, [r3, #0x195]
  41577c: b002         	add	sp, #0x8
  41577e: 4770         	bx	lr

// ==== Weapon::setBulletsToFire
//      file offset 0x415780 (= ELF address; Ghidra 0x425780), 24 bytes, Thumb-2
  415780: b082         	sub	sp, #0x8
  415782: 9001         	str	r0, [sp, #0x4]
  415784: 460b         	mov	r3, r1
  415786: f88d 3003    	strb.w	r3, [sp, #0x3]
  41578a: 9b01         	ldr	r3, [sp, #0x4]
  41578c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  415790: f883 2194    	strb.w	r2, [r3, #0x194]
  415794: b002         	add	sp, #0x8
  415796: 4770         	bx	lr

// ==== Weapon::setBulletsFired
//      file offset 0x415798 (= ELF address; Ghidra 0x425798), 24 bytes, Thumb-2
  415798: b082         	sub	sp, #0x8
  41579a: 9001         	str	r0, [sp, #0x4]
  41579c: 460b         	mov	r3, r1
  41579e: f88d 3003    	strb.w	r3, [sp, #0x3]
  4157a2: 9b01         	ldr	r3, [sp, #0x4]
  4157a4: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  4157a8: f883 2195    	strb.w	r2, [r3, #0x195]
  4157ac: b002         	add	sp, #0x8
  4157ae: 4770         	bx	lr

// ==== Weapon::getBulletsToFire
//      file offset 0x4157b0 (= ELF address; Ghidra 0x4257b0), 16 bytes, Thumb-2
  4157b0: b082         	sub	sp, #0x8
  4157b2: 9001         	str	r0, [sp, #0x4]
  4157b4: 9b01         	ldr	r3, [sp, #0x4]
  4157b6: f893 3194    	ldrb.w	r3, [r3, #0x194]
  4157ba: 4618         	mov	r0, r3
  4157bc: b002         	add	sp, #0x8
  4157be: 4770         	bx	lr

// ==== Weapon::getBulletsFired
//      file offset 0x4157c0 (= ELF address; Ghidra 0x4257c0), 16 bytes, Thumb-2
  4157c0: b082         	sub	sp, #0x8
  4157c2: 9001         	str	r0, [sp, #0x4]
  4157c4: 9b01         	ldr	r3, [sp, #0x4]
  4157c6: f893 3195    	ldrb.w	r3, [r3, #0x195]
  4157ca: 4618         	mov	r0, r3
  4157cc: b002         	add	sp, #0x8
  4157ce: 4770         	bx	lr

// ==== Weapon::getDamage
//      file offset 0x4157d0 (= ELF address; Ghidra 0x4257d0), 16 bytes, Thumb-2
  4157d0: b082         	sub	sp, #0x8
  4157d2: 9001         	str	r0, [sp, #0x4]
  4157d4: 9b01         	ldr	r3, [sp, #0x4]
  4157d6: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  4157da: 4618         	mov	r0, r3
  4157dc: b002         	add	sp, #0x8
  4157de: 4770         	bx	lr

// ==== Weapon::getMeleeDamage
//      file offset 0x4157e0 (= ELF address; Ghidra 0x4257e0), 16 bytes, Thumb-2
  4157e0: b082         	sub	sp, #0x8
  4157e2: 9001         	str	r0, [sp, #0x4]
  4157e4: 9b01         	ldr	r3, [sp, #0x4]
  4157e6: f8d3 319c    	ldr.w	r3, [r3, #0x19c]
  4157ea: 4618         	mov	r0, r3
  4157ec: b002         	add	sp, #0x8
  4157ee: 4770         	bx	lr

// ==== Weapon::getMeleeLength
//      file offset 0x4157f0 (= ELF address; Ghidra 0x4257f0), 16 bytes, Thumb-2
  4157f0: b082         	sub	sp, #0x8
  4157f2: 9001         	str	r0, [sp, #0x4]
  4157f4: 9b01         	ldr	r3, [sp, #0x4]
  4157f6: f8d3 31a0    	ldr.w	r3, [r3, #0x1a0]
  4157fa: 4618         	mov	r0, r3
  4157fc: b002         	add	sp, #0x8
  4157fe: 4770         	bx	lr

// ==== Weapon::getRange
//      file offset 0x415800 (= ELF address; Ghidra 0x425800), 16 bytes, Thumb-2
  415800: b082         	sub	sp, #0x8
  415802: 9001         	str	r0, [sp, #0x4]
  415804: 9b01         	ldr	r3, [sp, #0x4]
  415806: f8d3 31a4    	ldr.w	r3, [r3, #0x1a4]
  41580a: 4618         	mov	r0, r3
  41580c: b002         	add	sp, #0x8
  41580e: 4770         	bx	lr

// ==== Weapon::isLocked
//      file offset 0x415810 (= ELF address; Ghidra 0x425810), 16 bytes, Thumb-2
  415810: b082         	sub	sp, #0x8
  415812: 9001         	str	r0, [sp, #0x4]
  415814: 9b01         	ldr	r3, [sp, #0x4]
  415816: f893 3135    	ldrb.w	r3, [r3, #0x135]
  41581a: 4618         	mov	r0, r3
  41581c: b002         	add	sp, #0x8
  41581e: 4770         	bx	lr

// ==== Weapon::setLock
//      file offset 0x415820 (= ELF address; Ghidra 0x425820), 24 bytes, Thumb-2
  415820: b082         	sub	sp, #0x8
  415822: 9001         	str	r0, [sp, #0x4]
  415824: 460b         	mov	r3, r1
  415826: f88d 3003    	strb.w	r3, [sp, #0x3]
  41582a: 9b01         	ldr	r3, [sp, #0x4]
  41582c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  415830: f883 2135    	strb.w	r2, [r3, #0x135]
  415834: b002         	add	sp, #0x8
  415836: 4770         	bx	lr

// ==== Weapon::getAmmoCapacity
//      file offset 0x415838 (= ELF address; Ghidra 0x425838), 16 bytes, Thumb-2
  415838: b082         	sub	sp, #0x8
  41583a: 9001         	str	r0, [sp, #0x4]
  41583c: 9b01         	ldr	r3, [sp, #0x4]
  41583e: f8d3 3174    	ldr.w	r3, [r3, #0x174]
  415842: 4618         	mov	r0, r3
  415844: b002         	add	sp, #0x8
  415846: 4770         	bx	lr

// ==== Weapon::getClipCapacity
//      file offset 0x415848 (= ELF address; Ghidra 0x425848), 24 bytes, Thumb-2
  415848: b082         	sub	sp, #0x8
  41584a: 9001         	str	r0, [sp, #0x4]
  41584c: 9b01         	ldr	r3, [sp, #0x4]
  41584e: f8d3 2170    	ldr.w	r2, [r3, #0x170]
  415852: 9b01         	ldr	r3, [sp, #0x4]
  415854: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  415858: 4413         	add	r3, r2
  41585a: 4618         	mov	r0, r3
  41585c: b002         	add	sp, #0x8
  41585e: 4770         	bx	lr

// ==== Weapon::getReloadTime
//      file offset 0x415860 (= ELF address; Ghidra 0x425860), 30 bytes, Thumb-2
  415860: b082         	sub	sp, #0x8
  415862: 9001         	str	r0, [sp, #0x4]
  415864: 9b01         	ldr	r3, [sp, #0x4]
  415866: ed93 7a58    	vldr	s14, [r3, #352]
  41586a: 9b01         	ldr	r3, [sp, #0x4]
  41586c: edd3 7a5f    	vldr	s15, [r3, #380]
  415870: ee77 7a67    	vsub.f32	s15, s14, s15
  415874: ee17 3a90    	vmov	r3, s15
  415878: 2000         	movs	r0, #0x0
  41587a: b002         	add	sp, #0x8
  41587c: 4770         	bx	lr

// ==== Weapon::setClipCapacityMod
//      file offset 0x415880 (= ELF address; Ghidra 0x425880), 18 bytes, Thumb-2
  415880: b082         	sub	sp, #0x8
  415882: 9001         	str	r0, [sp, #0x4]
  415884: 9100         	str	r1, [sp]
  415886: 9b01         	ldr	r3, [sp, #0x4]
  415888: 9a00         	ldr	r2, [sp]
  41588a: f8c3 2178    	str.w	r2, [r3, #0x178]
  41588e: b002         	add	sp, #0x8
  415890: 4770         	bx	lr

// ==== Weapon::setClipReloadMod
//      file offset 0x415894 (= ELF address; Ghidra 0x425894), 18 bytes, Thumb-2
  415894: b082         	sub	sp, #0x8
  415896: 9001         	str	r0, [sp, #0x4]
  415898: 9100         	str	r1, [sp]
  41589a: 9b01         	ldr	r3, [sp, #0x4]
  41589c: 9a00         	ldr	r2, [sp]
  41589e: f8c3 217c    	str.w	r2, [r3, #0x17c]
  4158a2: b002         	add	sp, #0x8
  4158a4: 4770         	bx	lr

// ==== Weapon::addAmmo
//      file offset 0x4158a8 (= ELF address; Ghidra 0x4258a8), 80 bytes, Thumb-2
  4158a8: b500         	push	{lr}
  4158aa: b083         	sub	sp, #0xc
  4158ac: 9001         	str	r0, [sp, #0x4]
  4158ae: 9100         	str	r1, [sp]
  4158b0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x4158f0 <Weapon::addAmmo(int)+0x48>
  4158b2: 447a         	add	r2, pc
  4158b4: 9b00         	ldr	r3, [sp]
  4158b6: 2b00         	cmp	r3, #0x0
  4158b8: dd06         	ble	0x4158c8 <Weapon::addAmmo(int)+0x20> @ imm = #0xc
  4158ba: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x4158f4 <Weapon::addAmmo(int)+0x4c>
  4158bc: 58d3         	ldr	r3, [r2, r3]
  4158be: 681b         	ldr	r3, [r3]
  4158c0: 4618         	mov	r0, r3
  4158c2: 2111         	movs	r1, #0x11
  4158c4: f7e2 fa7c    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x1db08
  4158c8: 9b01         	ldr	r3, [sp, #0x4]
  4158ca: f8d3 2174    	ldr.w	r2, [r3, #0x174]
  4158ce: 9b01         	ldr	r3, [sp, #0x4]
  4158d0: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  4158d4: b219         	sxth	r1, r3
  4158d6: 9b00         	ldr	r3, [sp]
  4158d8: 440b         	add	r3, r1
  4158da: 429a         	cmp	r2, r3
  4158dc: bfb8         	it	lt
  4158de: 4613         	movlt	r3, r2
  4158e0: b29a         	uxth	r2, r3
  4158e2: 9b01         	ldr	r3, [sp, #0x4]
  4158e4: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  4158e8: b003         	add	sp, #0xc
  4158ea: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4158ed); words below are literal-pool data ---
  4158ee: bf00         	nop
  4158f0: d156         	bne	0x4159a0 <Weapon::getZoomLabel()+0xc> @ imm = #0xac
  4158f2: 0051         	lsls	r1, r2, #0x1
  4158f4: d730         	bvc	0x415958 <Weapon::subAmmo(int)+0x60> @ imm = #0x60
  4158f6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Weapon::subAmmo
//      file offset 0x4158f8 (= ELF address; Ghidra 0x4258f8), 124 bytes, Thumb-2
  4158f8: b510         	push	{r4, lr}
  4158fa: b084         	sub	sp, #0x10
  4158fc: 9001         	str	r0, [sp, #0x4]
  4158fe: 9100         	str	r1, [sp]
  415900: 2300         	movs	r3, #0x0
  415902: 9303         	str	r3, [sp, #0xc]
  415904: 9b01         	ldr	r3, [sp, #0x4]
  415906: 681b         	ldr	r3, [r3]
  415908: f503 731d    	add.w	r3, r3, #0x274
  41590c: 681b         	ldr	r3, [r3]
  41590e: 9801         	ldr	r0, [sp, #0x4]
  415910: 4798         	blx	r3
  415912: 4603         	mov	r3, r0
  415914: b29b         	uxth	r3, r3
  415916: b21a         	sxth	r2, r3
  415918: 9b00         	ldr	r3, [sp]
  41591a: 429a         	cmp	r2, r3
  41591c: bfb4         	ite	lt
  41591e: 2300         	movlt	r3, #0x0
  415920: 2301         	movge	r3, #0x1
  415922: b2db         	uxtb	r3, r3
  415924: 2b00         	cmp	r3, #0x0
  415926: d002         	beq	0x41592e <Weapon::subAmmo(int)+0x36> @ imm = #0x4
  415928: 9b00         	ldr	r3, [sp]
  41592a: 9303         	str	r3, [sp, #0xc]
  41592c: e00a         	b	0x415944 <Weapon::subAmmo(int)+0x4c> @ imm = #0x14
  41592e: 9b01         	ldr	r3, [sp, #0x4]
  415930: 681b         	ldr	r3, [r3]
  415932: f503 731d    	add.w	r3, r3, #0x274
  415936: 681b         	ldr	r3, [r3]
  415938: 9801         	ldr	r0, [sp, #0x4]
  41593a: 4798         	blx	r3
  41593c: 4603         	mov	r3, r0
  41593e: b29b         	uxth	r3, r3
  415940: b21b         	sxth	r3, r3
  415942: 9303         	str	r3, [sp, #0xc]
  415944: 9b01         	ldr	r3, [sp, #0x4]
  415946: 681b         	ldr	r3, [r3]
  415948: f503 731e    	add.w	r3, r3, #0x278
  41594c: 681c         	ldr	r4, [r3]
  41594e: 9b01         	ldr	r3, [sp, #0x4]
  415950: 681b         	ldr	r3, [r3]
  415952: f503 731d    	add.w	r3, r3, #0x274
  415956: 681b         	ldr	r3, [r3]
  415958: 9801         	ldr	r0, [sp, #0x4]
  41595a: 4798         	blx	r3
  41595c: 4603         	mov	r3, r0
  41595e: b29b         	uxth	r3, r3
  415960: b21a         	sxth	r2, r3
  415962: 9b03         	ldr	r3, [sp, #0xc]
  415964: 1ad3         	subs	r3, r2, r3
  415966: 9801         	ldr	r0, [sp, #0x4]
  415968: 4619         	mov	r1, r3
  41596a: 47a0         	blx	r4
  41596c: 9b03         	ldr	r3, [sp, #0xc]
  41596e: 4618         	mov	r0, r3
  415970: b004         	add	sp, #0x10
  415972: bd10         	pop	{r4, pc}

// ==== Weapon::isReloading
//      file offset 0x415974 (= ELF address; Ghidra 0x425974), 16 bytes, Thumb-2
  415974: b082         	sub	sp, #0x8
  415976: 9001         	str	r0, [sp, #0x4]
  415978: 9b01         	ldr	r3, [sp, #0x4]
  41597a: f893 3181    	ldrb.w	r3, [r3, #0x181]
  41597e: 4618         	mov	r0, r3
  415980: b002         	add	sp, #0x8
  415982: 4770         	bx	lr

// ==== Weapon::getZoomScale
//      file offset 0x415984 (= ELF address; Ghidra 0x425984), 16 bytes, Thumb-2
  415984: b082         	sub	sp, #0x8
  415986: 9001         	str	r0, [sp, #0x4]
  415988: 9b01         	ldr	r3, [sp, #0x4]
  41598a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  41598e: 4618         	mov	r0, r3
  415990: b002         	add	sp, #0x8
  415992: 4770         	bx	lr

// ==== Weapon::getZoomLabel
//      file offset 0x415994 (= ELF address; Ghidra 0x425994), 224 bytes, Thumb-2
  415994: b510         	push	{r4, lr}
  415996: b084         	sub	sp, #0x10
  415998: 9001         	str	r0, [sp, #0x4]
  41599a: 9100         	str	r1, [sp]
  41599c: 9b00         	ldr	r3, [sp]
  41599e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  4159a2: 4618         	mov	r0, r3
  4159a4: f184 fb9c    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x184738
  4159a8: 4603         	mov	r3, r0
  4159aa: 2b00         	cmp	r3, #0x0
  4159ac: bf14         	ite	ne
  4159ae: 2300         	movne	r3, #0x0
  4159b0: 2301         	moveq	r3, #0x1
  4159b2: b2db         	uxtb	r3, r3
  4159b4: 2b00         	cmp	r3, #0x0
  4159b6: d010         	beq	0x4159da <Weapon::getZoomLabel()+0x46> @ imm = #0x20
  4159b8: ab02         	add	r3, sp, #0x8
  4159ba: 4618         	mov	r0, r3
  4159bc: f374 fd1a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x374a34
  4159c0: ab02         	add	r3, sp, #0x8
  4159c2: 9801         	ldr	r0, [sp, #0x4]
  4159c4: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x415a6c <Weapon::getZoomLabel()+0xd8>
  4159c6: 447a         	add	r2, pc
  4159c8: 4611         	mov	r1, r2
  4159ca: 461a         	mov	r2, r3
  4159cc: f3a1 f848    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a1090
  4159d0: ab02         	add	r3, sp, #0x8
  4159d2: 4618         	mov	r0, r3
  4159d4: f374 fd12    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x374a24
  4159d8: e044         	b	0x415a64 <Weapon::getZoomLabel()+0xd0> @ imm = #0x88
  4159da: 9b00         	ldr	r3, [sp]
  4159dc: f8d3 214c    	ldr.w	r2, [r3, #0x14c]
  4159e0: 9b00         	ldr	r3, [sp]
  4159e2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  4159e6: 4610         	mov	r0, r2
  4159e8: 4619         	mov	r1, r3
  4159ea: f184 fb99    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x184732
  4159ee: 4603         	mov	r3, r0
  4159f0: 9303         	str	r3, [sp, #0xc]
  4159f2: 9b03         	ldr	r3, [sp, #0xc]
  4159f4: 2b00         	cmp	r3, #0x0
  4159f6: d012         	beq	0x415a1e <Weapon::getZoomLabel()+0x8a> @ imm = #0x24
  4159f8: 9803         	ldr	r0, [sp, #0xc]
  4159fa: f183 ff95    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x183f2a
  4159fe: 4604         	mov	r4, r0
  415a00: ab02         	add	r3, sp, #0x8
  415a02: 4618         	mov	r0, r3
  415a04: f374 fcf6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3749ec
  415a08: ab02         	add	r3, sp, #0x8
  415a0a: 9801         	ldr	r0, [sp, #0x4]
  415a0c: 4621         	mov	r1, r4
  415a0e: 461a         	mov	r2, r3
  415a10: f3a1 f826    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a104c
  415a14: ab02         	add	r3, sp, #0x8
  415a16: 4618         	mov	r0, r3
  415a18: f374 fcf0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3749e0
  415a1c: e022         	b	0x415a64 <Weapon::getZoomLabel()+0xd0> @ imm = #0x44
  415a1e: ab02         	add	r3, sp, #0x8
  415a20: 4618         	mov	r0, r3
  415a22: f374 fce7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3749ce
  415a26: ab02         	add	r3, sp, #0x8
  415a28: 9801         	ldr	r0, [sp, #0x4]
  415a2a: 4a11         	ldr	r2, [pc, #0x44]         @ 0x415a70 <Weapon::getZoomLabel()+0xdc>
  415a2c: 447a         	add	r2, pc
  415a2e: 4611         	mov	r1, r2
  415a30: 461a         	mov	r2, r3
  415a32: f3a1 f815    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a102a
  415a36: ab02         	add	r3, sp, #0x8
  415a38: 4618         	mov	r0, r3
  415a3a: f374 fcdf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3749be
  415a3e: e011         	b	0x415a64 <Weapon::getZoomLabel()+0xd0> @ imm = #0x22
  415a40: ab02         	add	r3, sp, #0x8
  415a42: 4618         	mov	r0, r3
  415a44: f374 fcda    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3749b4
  415a48: f372 fb30    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x372660
  415a4c: ab02         	add	r3, sp, #0x8
  415a4e: 4618         	mov	r0, r3
  415a50: f374 fcd4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3749a8
  415a54: f372 fb2a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x372654
  415a58: ab02         	add	r3, sp, #0x8
  415a5a: 4618         	mov	r0, r3
  415a5c: f374 fcce    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x37499c
  415a60: f372 fb24    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x372648
  415a64: 9801         	ldr	r0, [sp, #0x4]
  415a66: b004         	add	sp, #0x10
  415a68: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x415a69); words below are literal-pool data ---
  415a6a: bf00         	nop
  415a6c: 5a0e         	ldrh	r6, [r1, r0]
  415a6e: 003c         	movs	r4, r7
  415a70: 59a8         	ldr	r0, [r5, r6]
  415a72: 003c         	movs	r4, r7

// ==== Weapon::changeZoomLevel
//      file offset 0x415a74 (= ELF address; Ghidra 0x425a74), 152 bytes, Thumb-2
  415a74: b510         	push	{r4, lr}
  415a76: b084         	sub	sp, #0x10
  415a78: 9001         	str	r0, [sp, #0x4]
  415a7a: 9b01         	ldr	r3, [sp, #0x4]
  415a7c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  415a80: 1c5a         	adds	r2, r3, #0x1
  415a82: 9b01         	ldr	r3, [sp, #0x4]
  415a84: f8c3 2144    	str.w	r2, [r3, #0x144]
  415a88: 9b01         	ldr	r3, [sp, #0x4]
  415a8a: f04f 527e    	mov.w	r2, #0x3f800000
  415a8e: f8c3 2148    	str.w	r2, [r3, #0x148]
  415a92: 9b01         	ldr	r3, [sp, #0x4]
  415a94: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  415a98: 4618         	mov	r0, r3
  415a9a: f184 fb21    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x184642
  415a9e: 4603         	mov	r3, r0
  415aa0: 2b00         	cmp	r3, #0x0
  415aa2: bf14         	ite	ne
  415aa4: 2300         	movne	r3, #0x0
  415aa6: 2301         	moveq	r3, #0x1
  415aa8: b2db         	uxtb	r3, r3
  415aaa: 2b00         	cmp	r3, #0x0
  415aac: d000         	beq	0x415ab0 <Weapon::changeZoomLevel()+0x3c> @ imm = #0x0
  415aae: e02b         	b	0x415b08 <Weapon::changeZoomLevel()+0x94> @ imm = #0x56
  415ab0: 9b01         	ldr	r3, [sp, #0x4]
  415ab2: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  415ab6: 461c         	mov	r4, r3
  415ab8: 9b01         	ldr	r3, [sp, #0x4]
  415aba: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  415abe: 4618         	mov	r0, r3
  415ac0: f184 fb0e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x18461c
  415ac4: 4603         	mov	r3, r0
  415ac6: 429c         	cmp	r4, r3
  415ac8: bf34         	ite	lo
  415aca: 2300         	movlo	r3, #0x0
  415acc: 2301         	movhs	r3, #0x1
  415ace: b2db         	uxtb	r3, r3
  415ad0: 2b00         	cmp	r3, #0x0
  415ad2: d003         	beq	0x415adc <Weapon::changeZoomLevel()+0x68> @ imm = #0x6
  415ad4: 9b01         	ldr	r3, [sp, #0x4]
  415ad6: 2200         	movs	r2, #0x0
  415ad8: f8c3 2144    	str.w	r2, [r3, #0x144]
  415adc: 9b01         	ldr	r3, [sp, #0x4]
  415ade: f8d3 2150    	ldr.w	r2, [r3, #0x150]
  415ae2: 9b01         	ldr	r3, [sp, #0x4]
  415ae4: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  415ae8: 4610         	mov	r0, r2
  415aea: 4619         	mov	r1, r3
  415aec: f184 fb18    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x184630
  415af0: 4603         	mov	r3, r0
  415af2: 9303         	str	r3, [sp, #0xc]
  415af4: 9b03         	ldr	r3, [sp, #0xc]
  415af6: 2b00         	cmp	r3, #0x0
  415af8: d006         	beq	0x415b08 <Weapon::changeZoomLevel()+0x94> @ imm = #0xc
  415afa: 9803         	ldr	r0, [sp, #0xc]
  415afc: f6c7 f8ba    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x138e8c
  415b00: 4602         	mov	r2, r0
  415b02: 9b01         	ldr	r3, [sp, #0x4]
  415b04: f8c3 2148    	str.w	r2, [r3, #0x148]
  415b08: b004         	add	sp, #0x10
  415b0a: bd10         	pop	{r4, pc}

// ==== Weapon::isMeleeWeapon
//      file offset 0x415b0c (= ELF address; Ghidra 0x425b0c), 16 bytes, Thumb-2
  415b0c: b082         	sub	sp, #0x8
  415b0e: 9001         	str	r0, [sp, #0x4]
  415b10: 9b01         	ldr	r3, [sp, #0x4]
  415b12: f893 31b0    	ldrb.w	r3, [r3, #0x1b0]
  415b16: 4618         	mov	r0, r3
  415b18: b002         	add	sp, #0x8
  415b1a: 4770         	bx	lr

// ==== Weapon::getRoundsPerFire
//      file offset 0x415b1c (= ELF address; Ghidra 0x425b1c), 16 bytes, Thumb-2
  415b1c: b082         	sub	sp, #0x8
  415b1e: 9001         	str	r0, [sp, #0x4]
  415b20: 9b01         	ldr	r3, [sp, #0x4]
  415b22: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  415b26: 2002         	movs	r0, #0x2
  415b28: b002         	add	sp, #0x8
  415b2a: 4770         	bx	lr

// ==== Weapon::getArmAngle
//      file offset 0x415b2c (= ELF address; Ghidra 0x425b2c), 16 bytes, Thumb-2
  415b2c: b082         	sub	sp, #0x8
  415b2e: 9001         	str	r0, [sp, #0x4]
  415b30: 9b01         	ldr	r3, [sp, #0x4]
  415b32: f8d3 31b8    	ldr.w	r3, [r3, #0x1b8]
  415b36: 4618         	mov	r0, r3
  415b38: b002         	add	sp, #0x8
  415b3a: 4770         	bx	lr

// ==== Weapon::getBulletSpeed
//      file offset 0x415b3c (= ELF address; Ghidra 0x425b3c), 16 bytes, Thumb-2
  415b3c: b082         	sub	sp, #0x8
  415b3e: 9001         	str	r0, [sp, #0x4]
  415b40: 9b01         	ldr	r3, [sp, #0x4]
  415b42: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  415b46: 4618         	mov	r0, r3
  415b48: b002         	add	sp, #0x8
  415b4a: 4770         	bx	lr

// ==== Weapon::isDualWield
//      file offset 0x415b4c (= ELF address; Ghidra 0x425b4c), 16 bytes, Thumb-2
  415b4c: b082         	sub	sp, #0x8
  415b4e: 9001         	str	r0, [sp, #0x4]
  415b50: 9b01         	ldr	r3, [sp, #0x4]
  415b52: f893 3183    	ldrb.w	r3, [r3, #0x183]
  415b56: 2001         	movs	r0, #0x1
  415b58: b002         	add	sp, #0x8
  415b5a: 4770         	bx	lr

// ==== Weapon::isDualWieldOnly
//      file offset 0x415b5c (= ELF address; Ghidra 0x425b5c), 16 bytes, Thumb-2
  415b5c: b082         	sub	sp, #0x8
  415b5e: 9001         	str	r0, [sp, #0x4]
  415b60: 9b01         	ldr	r3, [sp, #0x4]
  415b62: f893 3182    	ldrb.w	r3, [r3, #0x182]
  415b66: 4618         	mov	r0, r3
  415b68: b002         	add	sp, #0x8
  415b6a: 4770         	bx	lr

// ==== Weapon::isDualWieldPrimaryOnly
//      file offset 0x415b6c (= ELF address; Ghidra 0x425b6c), 16 bytes, Thumb-2
  415b6c: b082         	sub	sp, #0x8
  415b6e: 9001         	str	r0, [sp, #0x4]
  415b70: 9b01         	ldr	r3, [sp, #0x4]
  415b72: f893 3184    	ldrb.w	r3, [r3, #0x184]
  415b76: 2001         	movs	r0, #0x1
  415b78: b002         	add	sp, #0x8
  415b7a: 4770         	bx	lr

// ==== Weapon::getRandomFiringAngle
//      file offset 0x415b7c (= ELF address; Ghidra 0x425b7c), 160 bytes, Thumb-2
  415b7c: b084         	sub	sp, #0x10
  415b7e: 9001         	str	r0, [sp, #0x4]
  415b80: 9b01         	ldr	r3, [sp, #0x4]
  415b82: ed93 7a70    	vldr	s14, [r3, #448]
  415b86: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x415c10 <Weapon::getRandomFiringAngle()+0x94>
  415b8a: ee27 7a27    	vmul.f32	s14, s14, s15
  415b8e: eddf 7a21    	vldr	s15, [pc, #132]         @ 0x415c14 <Weapon::getRandomFiringAngle()+0x98>
  415b92: ee77 7a27    	vadd.f32	s15, s14, s15
  415b96: eefd 7ae7    	vcvt.s32.f32	s15, s15
  415b9a: ee17 2a90    	vmov	r2, s15
  415b9e: f248 531f    	movw	r3, #0x851f
  415ba2: f2c5 13eb    	movt	r3, #0x51eb
  415ba6: fb83 1302    	smull	r1, r3, r3, r2
  415baa: 1159         	asrs	r1, r3, #0x5
  415bac: 17d3         	asrs	r3, r2, #0x1f
  415bae: 1acb         	subs	r3, r1, r3
  415bb0: 2164         	movs	r1, #0x64
  415bb2: fb01 f303    	mul	r3, r1, r3
  415bb6: 1ad3         	subs	r3, r2, r3
  415bb8: ee07 3a10    	vmov	s14, r3
  415bbc: eef8 7ac7    	vcvt.f32.s32	s15, s14
  415bc0: 9b01         	ldr	r3, [sp, #0x4]
  415bc2: edc3 7a70    	vstr	s15, [r3, #448]
  415bc6: 9b01         	ldr	r3, [sp, #0x4]
  415bc8: ed93 7a70    	vldr	s14, [r3, #448]
  415bcc: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x415c18 <Weapon::getRandomFiringAngle()+0x9c>
  415bd0: eec7 7a27    	vdiv.f32	s15, s14, s15
  415bd4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  415bd8: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  415bdc: ee36 7b47    	vsub.f64	d7, d6, d7
  415be0: ee37 7b07    	vadd.f64	d7, d7, d7
  415be4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415be8: edcd 7a03    	vstr	s15, [sp, #12]
  415bec: 9b01         	ldr	r3, [sp, #0x4]
  415bee: ed93 7a59    	vldr	s14, [r3, #356]
  415bf2: eddd 7a03    	vldr	s15, [sp, #12]
  415bf6: ee27 7a27    	vmul.f32	s14, s14, s15
  415bfa: 9b01         	ldr	r3, [sp, #0x4]
  415bfc: edd3 7a5a    	vldr	s15, [r3, #360]
  415c00: ee67 7a27    	vmul.f32	s15, s14, s15
  415c04: ee17 3a90    	vmov	r3, s15
  415c08: 4618         	mov	r0, r3
  415c0a: b004         	add	sp, #0x10
  415c0c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x415c0d); words below are literal-pool data ---
  415c0e: bf00         	nop
  415c10: 0000         	movs	r0, r0
  415c12: 4224         	tst	r4, r4
  415c14: 0000         	movs	r0, r0
  415c16: 4214         	tst	r4, r2
  415c18: 0000         	movs	r0, r0
  415c1a: 42c8         	cmn	r0, r1

// ==== Weapon::pickupAsDual
//      file offset 0x415c1c (= ELF address; Ghidra 0x425c1c), 16 bytes, Thumb-2
  415c1c: b082         	sub	sp, #0x8
  415c1e: 9001         	str	r0, [sp, #0x4]
  415c20: 9b01         	ldr	r3, [sp, #0x4]
  415c22: f893 31c4    	ldrb.w	r3, [r3, #0x1c4]
  415c26: 4618         	mov	r0, r3
  415c28: b002         	add	sp, #0x8
  415c2a: 4770         	bx	lr

// ==== Weapon::setPickupAsDual
//      file offset 0x415c2c (= ELF address; Ghidra 0x425c2c), 24 bytes, Thumb-2
  415c2c: b082         	sub	sp, #0x8
  415c2e: 9001         	str	r0, [sp, #0x4]
  415c30: 460b         	mov	r3, r1
  415c32: f88d 3003    	strb.w	r3, [sp, #0x3]
  415c36: 9b01         	ldr	r3, [sp, #0x4]
  415c38: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  415c3c: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  415c40: b002         	add	sp, #0x8
  415c42: 4770         	bx	lr

// ==== Weapon::setFireAngle
//      file offset 0x415c44 (= ELF address; Ghidra 0x425c44), 18 bytes, Thumb-2
  415c44: b082         	sub	sp, #0x8
  415c46: 9001         	str	r0, [sp, #0x4]
  415c48: 9100         	str	r1, [sp]
  415c4a: 9b01         	ldr	r3, [sp, #0x4]
  415c4c: 9a00         	ldr	r2, [sp]
  415c4e: f8c3 21c8    	str.w	r2, [r3, #0x1c8]
  415c52: b002         	add	sp, #0x8
  415c54: 4770         	bx	lr

// ==== Weapon::setHostID
//      file offset 0x415c58 (= ELF address; Ghidra 0x425c58), 70 bytes, Thumb-2
  415c58: b510         	push	{r4, lr}
  415c5a: b084         	sub	sp, #0x10
  415c5c: 9001         	str	r0, [sp, #0x4]
  415c5e: 9100         	str	r1, [sp]
  415c60: 9c01         	ldr	r4, [sp, #0x4]
  415c62: ab03         	add	r3, sp, #0xc
  415c64: 4618         	mov	r0, r3
  415c66: 9900         	ldr	r1, [sp]
  415c68: f3a0 fc3e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3a087c
  415c6c: ab03         	add	r3, sp, #0xc
  415c6e: 4620         	mov	r0, r4
  415c70: 4619         	mov	r1, r3
  415c72: f732 fa3b    	bl	0x3480ec <Item::setHostID(std::string)> @ imm = #-0xcdb8a
  415c76: ab03         	add	r3, sp, #0xc
  415c78: 4618         	mov	r0, r3
  415c7a: f39f fe4b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fc96
  415c7e: 9b01         	ldr	r3, [sp, #0x4]
  415c80: f503 73aa    	add.w	r3, r3, #0x154
  415c84: 4618         	mov	r0, r3
  415c86: 9900         	ldr	r1, [sp]
  415c88: f3a0 fc94    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x3a0928
  415c8c: e005         	b	0x415c9a <Weapon::setHostID(std::string)+0x42> @ imm = #0xa
  415c8e: ab03         	add	r3, sp, #0xc
  415c90: 4618         	mov	r0, r3
  415c92: f39f fe3f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fc7e
  415c96: f372 fa09    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x372412
  415c9a: b004         	add	sp, #0x10
  415c9c: bd10         	pop	{r4, pc}

// ==== Weapon::updateStep
//      file offset 0x415ca0 (= ELF address; Ghidra 0x425ca0), 38 bytes, Thumb-2
  415ca0: b082         	sub	sp, #0x8
  415ca2: 9001         	str	r0, [sp, #0x4]
  415ca4: 9100         	str	r1, [sp]
  415ca6: 9b01         	ldr	r3, [sp, #0x4]
  415ca8: ed93 7a44    	vldr	s14, [r3, #272]
  415cac: eddd 7a00    	vldr	s15, [sp]
  415cb0: ee77 7a27    	vadd.f32	s15, s14, s15
  415cb4: 9b01         	ldr	r3, [sp, #0x4]
  415cb6: edc3 7a44    	vstr	s15, [r3, #272]
  415cba: 9b01         	ldr	r3, [sp, #0x4]
  415cbc: 2200         	movs	r2, #0x0
  415cbe: f883 2180    	strb.w	r2, [r3, #0x180]
  415cc2: b002         	add	sp, #0x8
  415cc4: 4770         	bx	lr

// ==== Weapon::weaponDidFire
//      file offset 0x415cc8 (= ELF address; Ghidra 0x425cc8), 46 bytes, Thumb-2
  415cc8: b500         	push	{lr}
  415cca: b083         	sub	sp, #0xc
  415ccc: 9001         	str	r0, [sp, #0x4]
  415cce: 9b01         	ldr	r3, [sp, #0x4]
  415cd0: f8d3 31d0    	ldr.w	r3, [r3, #0x1d0]
  415cd4: 2b00         	cmp	r3, #0x0
  415cd6: d00b         	beq	0x415cf0 <Weapon::weaponDidFire()+0x28> @ imm = #0x16
  415cd8: 9b01         	ldr	r3, [sp, #0x4]
  415cda: f8d3 31d0    	ldr.w	r3, [r3, #0x1d0]
  415cde: 681b         	ldr	r3, [r3]
  415ce0: 681b         	ldr	r3, [r3]
  415ce2: 9a01         	ldr	r2, [sp, #0x4]
  415ce4: f8d2 11d0    	ldr.w	r1, [r2, #0x1d0]
  415ce8: 9a01         	ldr	r2, [sp, #0x4]
  415cea: 4608         	mov	r0, r1
  415cec: 4611         	mov	r1, r2
  415cee: 4798         	blx	r3
  415cf0: b003         	add	sp, #0xc
  415cf2: f85d fb04    	ldr	pc, [sp], #4

// ==== Weapon::produceShell
//      file offset 0x415cf8 (= ELF address; Ghidra 0x425cf8), 40 bytes, Thumb-2
  415cf8: b500         	push	{lr}
  415cfa: b083         	sub	sp, #0xc
  415cfc: 9001         	str	r0, [sp, #0x4]
  415cfe: f1ca fcd7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ca9ae
  415d02: 4602         	mov	r2, r0
  415d04: 9b01         	ldr	r3, [sp, #0x4]
  415d06: 4610         	mov	r0, r2
  415d08: 4a04         	ldr	r2, [pc, #0x10]         @ 0x415d1c <Weapon::produceShell()+0x24>
  415d0a: 447a         	add	r2, pc
  415d0c: 4611         	mov	r1, r2
  415d0e: 461a         	mov	r2, r3
  415d10: f1ca ff0c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1cae18
  415d14: b003         	add	sp, #0xc
  415d16: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x415d19); words below are literal-pool data ---
  415d1a: bf00         	nop
  415d1c: 56ce         	ldrsb	r6, [r1, r3]
  415d1e: 003c         	movs	r4, r7

// ==== Weapon::doFire
//      file offset 0x415d20 (= ELF address; Ghidra 0x425d20), 256 bytes, Thumb-2
  415d20: b082         	sub	sp, #0x8
  415d22: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  415d26: b08d         	sub	sp, #0x34
  415d28: 9007         	str	r0, [sp, #0x1c]
  415d2a: 9106         	str	r1, [sp, #0x18]
  415d2c: a916         	add	r1, sp, #0x58
  415d2e: e881 000c    	stm.w	r1, {r2, r3}
  415d32: 9f07         	ldr	r7, [sp, #0x1c]
  415d34: 9806         	ldr	r0, [sp, #0x18]
  415d36: f6c6 ffa5    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1390b6
  415d3a: 4606         	mov	r6, r0
  415d3c: ed9d 7b1a    	vldr	d7, [sp, #104]
  415d40: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415d44: ee17 0a90    	vmov	r0, s15
  415d48: f6c6 ff9c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1390c8
  415d4c: 4605         	mov	r5, r0
  415d4e: ed9d 7b1c    	vldr	d7, [sp, #112]
  415d52: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415d56: ee17 0a90    	vmov	r0, s15
  415d5a: f6c6 ff93    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1390da
  415d5e: 4604         	mov	r4, r0
  415d60: ed9d 7b16    	vldr	d7, [sp, #88]
  415d64: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415d68: ee17 0a90    	vmov	r0, s15
  415d6c: f6c6 ff8a    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1390ec
  415d70: 4682         	mov	r10, r0
  415d72: ed9d 7b18    	vldr	d7, [sp, #96]
  415d76: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415d7a: ee17 0a90    	vmov	r0, s15
  415d7e: f6c6 ff81    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1390fe
  415d82: 4681         	mov	r9, r0
  415d84: 981e         	ldr	r0, [sp, #0x78]
  415d86: f6ce ffbf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x131082
  415d8a: 4680         	mov	r8, r0
  415d8c: 981f         	ldr	r0, [sp, #0x7c]
  415d8e: f39f fab7    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x39f56e
  415d92: 4683         	mov	r11, r0
  415d94: ab09         	add	r3, sp, #0x24
  415d96: 4618         	mov	r0, r3
  415d98: f374 fb2c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x374658
  415d9c: aa0a         	add	r2, sp, #0x28
  415d9e: ab09         	add	r3, sp, #0x24
  415da0: 4610         	mov	r0, r2
  415da2: 4659         	mov	r1, r11
  415da4: 461a         	mov	r2, r3
  415da6: f3a0 fe5b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3a0cb6
  415daa: ab0a         	add	r3, sp, #0x28
  415dac: 4618         	mov	r0, r3
  415dae: f183 fe45    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x183c8a
  415db2: 4603         	mov	r3, r0
  415db4: f8cd a000    	str.w	r10, [sp]
  415db8: f8cd 9004    	str.w	r9, [sp, #0x4]
  415dbc: f8cd 8008    	str.w	r8, [sp, #0x8]
  415dc0: 9303         	str	r3, [sp, #0xc]
  415dc2: 2300         	movs	r3, #0x0
  415dc4: 9304         	str	r3, [sp, #0x10]
  415dc6: 4638         	mov	r0, r7
  415dc8: 4631         	mov	r1, r6
  415dca: 462a         	mov	r2, r5
  415dcc: 4623         	mov	r3, r4
  415dce: f184 f81f    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x18403e
  415dd2: 4603         	mov	r3, r0
  415dd4: 930b         	str	r3, [sp, #0x2c]
  415dd6: ab0a         	add	r3, sp, #0x28
  415dd8: 4618         	mov	r0, r3
  415dda: f39f fd9b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fb36
  415dde: ab09         	add	r3, sp, #0x24
  415de0: 4618         	mov	r0, r3
  415de2: f374 fb0b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x374616
  415de6: f1ca fc63    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ca8c6
  415dea: 4603         	mov	r3, r0
  415dec: 4618         	mov	r0, r3
  415dee: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x415e1c <Weapon::doFire(float, cpVect, cpVect, int, std::string)+0xfc>
  415df0: 447b         	add	r3, pc
  415df2: 4619         	mov	r1, r3
  415df4: 9a0b         	ldr	r2, [sp, #0x2c]
  415df6: f1ca fe99    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1cad32
  415dfa: e00a         	b	0x415e12 <Weapon::doFire(float, cpVect, cpVect, int, std::string)+0xf2> @ imm = #0x14
  415dfc: ab0a         	add	r3, sp, #0x28
  415dfe: 4618         	mov	r0, r3
  415e00: f39f fd88    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fb10
  415e04: e7ff         	b	0x415e06 <Weapon::doFire(float, cpVect, cpVect, int, std::string)+0xe6> @ imm = #-0x2
  415e06: ab09         	add	r3, sp, #0x24
  415e08: 4618         	mov	r0, r3
  415e0a: f374 faf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3745ee
  415e0e: f372 f94d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x37229a
  415e12: b00d         	add	sp, #0x34
  415e14: e8bd 4ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  415e18: b002         	add	sp, #0x8
  415e1a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x415e1b); words below are literal-pool data ---
  415e1c: 55f8         	strb	r0, [r7, r7]
  415e1e: 003c         	movs	r4, r7

// ==== Weapon::doRemoteFire
//      file offset 0x415e20 (= ELF address; Ghidra 0x425e20), 110 bytes, Thumb-2
  415e20: b082         	sub	sp, #0x8
  415e22: b530         	push	{r4, r5, lr}
  415e24: b08d         	sub	sp, #0x34
  415e26: 9009         	str	r0, [sp, #0x24]
  415e28: 9108         	str	r1, [sp, #0x20]
  415e2a: a910         	add	r1, sp, #0x40
  415e2c: e881 000c    	stm.w	r1, {r2, r3}
  415e30: 9b09         	ldr	r3, [sp, #0x24]
  415e32: 681b         	ldr	r3, [r3]
  415e34: f503 7344    	add.w	r3, r3, #0x310
  415e38: 681d         	ldr	r5, [r3]
  415e3a: ab0b         	add	r3, sp, #0x2c
  415e3c: 4618         	mov	r0, r3
  415e3e: 9919         	ldr	r1, [sp, #0x64]
  415e40: f3a0 fb52    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3a06a4
  415e44: ac02         	add	r4, sp, #0x8
  415e46: ab14         	add	r3, sp, #0x50
  415e48: cb0f         	ldm	r3, {r0, r1, r2, r3}
  415e4a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  415e4e: 9b18         	ldr	r3, [sp, #0x60]
  415e50: 9306         	str	r3, [sp, #0x18]
  415e52: ab0b         	add	r3, sp, #0x2c
  415e54: 9307         	str	r3, [sp, #0x1c]
  415e56: 466b         	mov	r3, sp
  415e58: aa12         	add	r2, sp, #0x48
  415e5a: e892 0003    	ldm.w	r2, {r0, r1}
  415e5e: e883 0003    	stm.w	r3, {r0, r1}
  415e62: a910         	add	r1, sp, #0x40
  415e64: e891 000c    	ldm.w	r1, {r2, r3}
  415e68: 9809         	ldr	r0, [sp, #0x24]
  415e6a: 9908         	ldr	r1, [sp, #0x20]
  415e6c: 47a8         	blx	r5
  415e6e: ab0b         	add	r3, sp, #0x2c
  415e70: 4618         	mov	r0, r3
  415e72: f39f fd4f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fa9e
  415e76: e005         	b	0x415e84 <Weapon::doRemoteFire(float, cpVect, cpVect, int, std::string)+0x64> @ imm = #0xa
  415e78: ab0b         	add	r3, sp, #0x2c
  415e7a: 4618         	mov	r0, r3
  415e7c: f39f fd4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39fa94
  415e80: f372 f914    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x372228
  415e84: b00d         	add	sp, #0x34
  415e86: e8bd 4030    	pop.w	{r4, r5, lr}
  415e8a: b002         	add	sp, #0x8
  415e8c: 4770         	bx	lr

// ==== Weapon::getWeightFactor
//      file offset 0x415e90 (= ELF address; Ghidra 0x425e90), 16 bytes, Thumb-2
  415e90: b082         	sub	sp, #0x8
  415e92: 9001         	str	r0, [sp, #0x4]
  415e94: 9b01         	ldr	r3, [sp, #0x4]
  415e96: f8d3 31cc    	ldr.w	r3, [r3, #0x1cc]
  415e9a: 4618         	mov	r0, r3
  415e9c: b002         	add	sp, #0x8
  415e9e: 4770         	bx	lr

// ==== Weapon::setAccuracyMod
//      file offset 0x415ea0 (= ELF address; Ghidra 0x425ea0), 18 bytes, Thumb-2
  415ea0: b082         	sub	sp, #0x8
  415ea2: 9001         	str	r0, [sp, #0x4]
  415ea4: 9100         	str	r1, [sp]
  415ea6: 9b01         	ldr	r3, [sp, #0x4]
  415ea8: 9a00         	ldr	r2, [sp]
  415eaa: f8c3 2168    	str.w	r2, [r3, #0x168]
  415eae: b002         	add	sp, #0x8
  415eb0: 4770         	bx	lr

// ==== Weapon::getDesignFiringPoint
//      file offset 0x415eb4 (= ELF address; Ghidra 0x425eb4), 216 bytes, Thumb-2
  415eb4: b530         	push	{r4, r5, lr}
  415eb6: b093         	sub	sp, #0x4c
  415eb8: 9001         	str	r0, [sp, #0x4]
  415eba: 9100         	str	r1, [sp]
  415ebc: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x415f84 <Weapon::getDesignFiringPoint()+0xd0>
  415ebe: 447c         	add	r4, pc
  415ec0: 9b00         	ldr	r3, [sp]
  415ec2: ad08         	add	r5, sp, #0x20
  415ec4: f503 73ec    	add.w	r3, r3, #0x1d8
  415ec8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  415eca: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  415ece: 9b00         	ldr	r3, [sp]
  415ed0: 681b         	ldr	r3, [r3]
  415ed2: 3350         	adds	r3, #0x50
  415ed4: 681b         	ldr	r3, [r3]
  415ed6: 9a00         	ldr	r2, [sp]
  415ed8: 4610         	mov	r0, r2
  415eda: 4798         	blx	r3
  415edc: 4605         	mov	r5, r0
  415ede: ed9d 7b08    	vldr	d7, [sp, #32]
  415ee2: eef7 6bc7    	vcvt.f32.f64	s13, d7
  415ee6: ed9d 7b0a    	vldr	d7, [sp, #40]
  415eea: eef7 7bc7    	vcvt.f32.f64	s15, d7
  415eee: ab04         	add	r3, sp, #0x10
  415ef0: 4618         	mov	r0, r3
  415ef2: ee16 1a90    	vmov	r1, s13
  415ef6: ee17 2a90    	vmov	r2, s15
  415efa: f17c fef9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x17cdf2
  415efe: aa06         	add	r2, sp, #0x18
  415f00: ab04         	add	r3, sp, #0x10
  415f02: 4610         	mov	r0, r2
  415f04: 4629         	mov	r1, r5
  415f06: 461a         	mov	r2, r3
  415f08: f7fd ff58    	bl	0x413dbc <UZI::getDAMAGE()+0x178> @ imm = #-0x2150
  415f0c: 9b00         	ldr	r3, [sp]
  415f0e: 681b         	ldr	r3, [r3]
  415f10: f503 73c2    	add.w	r3, r3, #0x184
  415f14: 681b         	ldr	r3, [r3]
  415f16: 9a00         	ldr	r2, [sp]
  415f18: a90c         	add	r1, sp, #0x30
  415f1a: 4608         	mov	r0, r1
  415f1c: 4611         	mov	r1, r2
  415f1e: 4798         	blx	r3
  415f20: a902         	add	r1, sp, #0x8
  415f22: aa06         	add	r2, sp, #0x18
  415f24: ab0c         	add	r3, sp, #0x30
  415f26: 4608         	mov	r0, r1
  415f28: 4611         	mov	r1, r2
  415f2a: 461a         	mov	r2, r3
  415f2c: f17c f9fa    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x17c3f4
  415f30: 4b15         	ldr	r3, [pc, #0x54]         @ 0x415f88 <Weapon::getDesignFiringPoint()+0xd4>
  415f32: 58e3         	ldr	r3, [r4, r3]
  415f34: 681b         	ldr	r3, [r3]
  415f36: 681b         	ldr	r3, [r3]
  415f38: f503 73c4    	add.w	r3, r3, #0x188
  415f3c: 681b         	ldr	r3, [r3]
  415f3e: 4a12         	ldr	r2, [pc, #0x48]         @ 0x415f88 <Weapon::getDesignFiringPoint()+0xd4>
  415f40: 58a2         	ldr	r2, [r4, r2]
  415f42: 6812         	ldr	r2, [r2]
  415f44: a90c         	add	r1, sp, #0x30
  415f46: 4608         	mov	r0, r1
  415f48: 4611         	mov	r1, r2
  415f4a: 4798         	blx	r3
  415f4c: a906         	add	r1, sp, #0x18
  415f4e: aa02         	add	r2, sp, #0x8
  415f50: ab0c         	add	r3, sp, #0x30
  415f52: 4608         	mov	r0, r1
  415f54: 4611         	mov	r1, r2
  415f56: 461a         	mov	r2, r3
  415f58: f17c f9e4    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x17c3c8
  415f5c: eddd 7a06    	vldr	s15, [sp, #24]
  415f60: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  415f64: eddd 7a07    	vldr	s15, [sp, #28]
  415f68: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  415f6c: 9b01         	ldr	r3, [sp, #0x4]
  415f6e: 4618         	mov	r0, r3
  415f70: eeb0 0b46    	vmov.f64	d0, d6
  415f74: eeb0 1b47    	vmov.f64	d1, d7
  415f78: f7fd ffa2    	bl	0x413ec0 <UZI::getDAMAGE()+0x27c> @ imm = #-0x20bc
  415f7c: bf00         	nop
  415f7e: 9801         	ldr	r0, [sp, #0x4]
  415f80: b013         	add	sp, #0x4c
  415f82: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x415f83); words below are literal-pool data ---
  415f84: cb4a         	ldm	r3, {r1, r3, r6}
  415f86: 0051         	lsls	r1, r2, #0x1
  415f88: d744         	bvc	0x416014 <Weapon::setContact(bool, std::string, int)+0x88> @ imm = #0x88
  415f8a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== Weapon::setContact
//      file offset 0x415f8c (= ELF address; Ghidra 0x425f8c), 80 bytes, Thumb-2
  415f8c: b510         	push	{r4, lr}
  415f8e: b086         	sub	sp, #0x18
  415f90: 9003         	str	r0, [sp, #0xc]
  415f92: 9201         	str	r2, [sp, #0x4]
  415f94: 9300         	str	r3, [sp]
  415f96: 460b         	mov	r3, r1
  415f98: f88d 300b    	strb.w	r3, [sp, #0xb]
  415f9c: 9c03         	ldr	r4, [sp, #0xc]
  415f9e: ab05         	add	r3, sp, #0x14
  415fa0: 4618         	mov	r0, r3
  415fa2: 9901         	ldr	r1, [sp, #0x4]
  415fa4: f3a0 faa0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3a0540
  415fa8: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  415fac: ab05         	add	r3, sp, #0x14
  415fae: 4620         	mov	r0, r4
  415fb0: 4611         	mov	r1, r2
  415fb2: 461a         	mov	r2, r3
  415fb4: 9b00         	ldr	r3, [sp]
  415fb6: f732 f8bb    	bl	0x348130 <Item::setContact(bool, std::string, int)> @ imm = #-0xcde8a
  415fba: 4603         	mov	r3, r0
  415fbc: 461c         	mov	r4, r3
  415fbe: ab05         	add	r3, sp, #0x14
  415fc0: 4618         	mov	r0, r3
  415fc2: f39f fca7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39f94e
  415fc6: 4623         	mov	r3, r4
  415fc8: e005         	b	0x415fd6 <Weapon::setContact(bool, std::string, int)+0x4a> @ imm = #0xa
  415fca: ab05         	add	r3, sp, #0x14
  415fcc: 4618         	mov	r0, r3
  415fce: f39f fca1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39f942
  415fd2: f372 f86b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3720d6
  415fd6: 4618         	mov	r0, r3
  415fd8: b006         	add	sp, #0x18
  415fda: bd10         	pop	{r4, pc}
