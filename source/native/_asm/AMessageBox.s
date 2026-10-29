// AMessageBox: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AMessageBox.cpp

// ==== AMessageBox::create
//      file offset 0x2dea04 (= ELF address; Ghidra 0x2eea04), 112 bytes, Thumb-2
  2dea04: b510         	push	{r4, lr}
  2dea06: b082         	sub	sp, #0x8
  2dea08: f44f 7092    	mov.w	r0, #0x124
  2dea0c: f0a8 f7aa    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4a8f54
  2dea10: 4603         	mov	r3, r0
  2dea12: 461c         	mov	r4, r3
  2dea14: 4620         	mov	r0, r4
  2dea16: f000 ff3f    	bl	0x2df898 <AMessageBox::AMessageBox()> @ imm = #0xe7e
  2dea1a: 9401         	str	r4, [sp, #0x4]
  2dea1c: 9b01         	ldr	r3, [sp, #0x4]
  2dea1e: 2b00         	cmp	r3, #0x0
  2dea20: d00a         	beq	0x2dea38 <AMessageBox::create()+0x34> @ imm = #0x14
  2dea22: 9b01         	ldr	r3, [sp, #0x4]
  2dea24: 681b         	ldr	r3, [r3]
  2dea26: 3318         	adds	r3, #0x18
  2dea28: 681b         	ldr	r3, [r3]
  2dea2a: 9801         	ldr	r0, [sp, #0x4]
  2dea2c: 4798         	blx	r3
  2dea2e: 4603         	mov	r3, r0
  2dea30: 2b00         	cmp	r3, #0x0
  2dea32: d001         	beq	0x2dea38 <AMessageBox::create()+0x34> @ imm = #0x2
  2dea34: 2301         	movs	r3, #0x1
  2dea36: e000         	b	0x2dea3a <AMessageBox::create()+0x36> @ imm = #0x0
  2dea38: 2300         	movs	r3, #0x0
  2dea3a: 2b00         	cmp	r3, #0x0
  2dea3c: d005         	beq	0x2dea4a <AMessageBox::create()+0x46> @ imm = #0xa
  2dea3e: 9b01         	ldr	r3, [sp, #0x4]
  2dea40: 4618         	mov	r0, r3
  2dea42: f2b9 fa5b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2b94b6
  2dea46: 9b01         	ldr	r3, [sp, #0x4]
  2dea48: e011         	b	0x2dea6e <AMessageBox::create()+0x6a> @ imm = #0x22
  2dea4a: 9b01         	ldr	r3, [sp, #0x4]
  2dea4c: 2b00         	cmp	r3, #0x0
  2dea4e: d005         	beq	0x2dea5c <AMessageBox::create()+0x58> @ imm = #0xa
  2dea50: 9b01         	ldr	r3, [sp, #0x4]
  2dea52: 681b         	ldr	r3, [r3]
  2dea54: 3308         	adds	r3, #0x8
  2dea56: 681b         	ldr	r3, [r3]
  2dea58: 9801         	ldr	r0, [sp, #0x4]
  2dea5a: 4798         	blx	r3
  2dea5c: 2300         	movs	r3, #0x0
  2dea5e: 9301         	str	r3, [sp, #0x4]
  2dea60: 2300         	movs	r3, #0x0
  2dea62: e004         	b	0x2dea6e <AMessageBox::create()+0x6a> @ imm = #0x8
  2dea64: 4620         	mov	r0, r4
  2dea66: f0a9 f31d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a963a
  2dea6a: f0a9 f31f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a963e
  2dea6e: 4618         	mov	r0, r3
  2dea70: b002         	add	sp, #0x8
  2dea72: bd10         	pop	{r4, pc}

// ==== AMessageBox::showAlert
//      file offset 0x2df7f4 (= ELF address; Ghidra 0x2ef7f4), 164 bytes, Thumb-2
  2df7f4: b500         	push	{lr}
  2df7f6: b08d         	sub	sp, #0x34
  2df7f8: 9007         	str	r0, [sp, #0x1c]
  2df7fa: 9106         	str	r1, [sp, #0x18]
  2df7fc: 9205         	str	r2, [sp, #0x14]
  2df7fe: 9304         	str	r3, [sp, #0x10]
  2df800: 4b21         	ldr	r3, [pc, #0x84]         @ 0x2df888 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x94>
  2df802: 447b         	add	r3, pc
  2df804: 681b         	ldr	r3, [r3]
  2df806: 1c5a         	adds	r2, r3, #0x1
  2df808: 4b20         	ldr	r3, [pc, #0x80]         @ 0x2df88c <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x98>
  2df80a: 447b         	add	r3, pc
  2df80c: 601a         	str	r2, [r3]
  2df80e: 4b20         	ldr	r3, [pc, #0x80]         @ 0x2df890 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x9c>
  2df810: 447b         	add	r3, pc
  2df812: 681b         	ldr	r3, [r3]
  2df814: f1a3 020a    	sub.w	r2, r3, #0xa
  2df818: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x2df894 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0xa0>
  2df81a: 447b         	add	r3, pc
  2df81c: 601a         	str	r2, [r3]
  2df81e: f7ff f8f1    	bl	0x2dea04 <AMessageBox::create()> @ imm = #-0xe1e
  2df822: 4603         	mov	r3, r0
  2df824: 930b         	str	r3, [sp, #0x2c]
  2df826: ab09         	add	r3, sp, #0x24
  2df828: 4618         	mov	r0, r3
  2df82a: 9906         	ldr	r1, [sp, #0x18]
  2df82c: f0d6 f65c    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4d6cb8
  2df830: ab0a         	add	r3, sp, #0x28
  2df832: 4618         	mov	r0, r3
  2df834: 9905         	ldr	r1, [sp, #0x14]
  2df836: f0d6 f657    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4d6cae
  2df83a: aa09         	add	r2, sp, #0x24
  2df83c: ab0a         	add	r3, sp, #0x28
  2df83e: 9904         	ldr	r1, [sp, #0x10]
  2df840: 9100         	str	r1, [sp]
  2df842: 990e         	ldr	r1, [sp, #0x38]
  2df844: 9101         	str	r1, [sp, #0x4]
  2df846: 990f         	ldr	r1, [sp, #0x3c]
  2df848: 9102         	str	r1, [sp, #0x8]
  2df84a: 980b         	ldr	r0, [sp, #0x2c]
  2df84c: 9907         	ldr	r1, [sp, #0x1c]
  2df84e: f000 f8e5    	bl	0x2dfa1c <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #0x1ca
  2df852: ab0a         	add	r3, sp, #0x28
  2df854: 4618         	mov	r0, r3
  2df856: f0d6 f05d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d60ba
  2df85a: ab09         	add	r3, sp, #0x24
  2df85c: 4618         	mov	r0, r3
  2df85e: f0d6 f059    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d60b2
  2df862: 9b0b         	ldr	r3, [sp, #0x2c]
  2df864: 4618         	mov	r0, r3
  2df866: f2b8 fb3f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b867e
  2df86a: e00a         	b	0x2df882 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x8e> @ imm = #0x14
  2df86c: ab0a         	add	r3, sp, #0x28
  2df86e: 4618         	mov	r0, r3
  2df870: f0d6 f050    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d60a0
  2df874: e7ff         	b	0x2df876 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x82> @ imm = #-0x2
  2df876: ab09         	add	r3, sp, #0x24
  2df878: 4618         	mov	r0, r3
  2df87a: f0d6 f04b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4d6096
  2df87e: f0a8 f415    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4a882a
  2df882: b00d         	add	sp, #0x34
  2df884: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2df887); words below are literal-pool data ---
  2df888: fe8a 0065    	cdp2	p0, #0x8, c0, c10, c5, #0x3
  2df88c: fe82 0065    	cdp2	p0, #0x8, c0, c2, c5, #0x3
  2df890: fe80 0065    	cdp2	p0, #0x8, c0, c0, c5, #0x3
  2df894: fe76 0065    	cdp2	p0, #0x7, c0, c6, c5, #0x3

// ==== AMessageBox::AMessageBox
//      file offset 0x2df898 (= ELF address; Ghidra 0x2ef898), 88 bytes, Thumb-2
  2df898: b510         	push	{r4, lr}
  2df89a: b082         	sub	sp, #0x8
  2df89c: 9001         	str	r0, [sp, #0x4]
  2df89e: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2df8e8 <AMessageBox::AMessageBox()+0x50>
  2df8a0: 447c         	add	r4, pc
  2df8a2: 9b01         	ldr	r3, [sp, #0x4]
  2df8a4: 4618         	mov	r0, r3
  2df8a6: f2cd fbd9    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2cd7b2
  2df8aa: 9b01         	ldr	r3, [sp, #0x4]
  2df8ac: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2df8ec <AMessageBox::AMessageBox()+0x54>
  2df8ae: 58a2         	ldr	r2, [r4, r2]
  2df8b0: 3208         	adds	r2, #0x8
  2df8b2: 601a         	str	r2, [r3]
  2df8b4: 9b01         	ldr	r3, [sp, #0x4]
  2df8b6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2df8ec <AMessageBox::AMessageBox()+0x54>
  2df8b8: 58a2         	ldr	r2, [r4, r2]
  2df8ba: f502 7204    	add.w	r2, r2, #0x210
  2df8be: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2df8c2: 9b01         	ldr	r3, [sp, #0x4]
  2df8c4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2df8ec <AMessageBox::AMessageBox()+0x54>
  2df8c6: 58a2         	ldr	r2, [r4, r2]
  2df8c8: f502 7210    	add.w	r2, r2, #0x240
  2df8cc: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2df8d0: 9b01         	ldr	r3, [sp, #0x4]
  2df8d2: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2df8ec <AMessageBox::AMessageBox()+0x54>
  2df8d4: 58a2         	ldr	r2, [r4, r2]
  2df8d6: f502 7213    	add.w	r2, r2, #0x24c
  2df8da: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2df8de: 9b01         	ldr	r3, [sp, #0x4]
  2df8e0: 4618         	mov	r0, r3
  2df8e2: b002         	add	sp, #0x8
  2df8e4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2df8e5); words below are literal-pool data ---
  2df8e6: bf00         	nop
  2df8e8: 3168         	adds	r1, #0x68
  2df8ea: 0065         	lsls	r5, r4, #0x1
  2df8ec: d74c         	bvc	0x2df988 <AMessageBox::~AMessageBox()+0x98> @ imm = #0x98
  2df8ee: ffff b500    	<unknown>

// ==== AMessageBox::~AMessageBox
//      file offset 0x2df8f0 (= ELF address; Ghidra 0x2ef8f0), 160 bytes, Thumb-2
  2df8f0: b500         	push	{lr}
  2df8f2: b083         	sub	sp, #0xc
  2df8f4: 9001         	str	r0, [sp, #0x4]
  2df8f6: 4b24         	ldr	r3, [pc, #0x90]         @ 0x2df988 <AMessageBox::~AMessageBox()+0x98>
  2df8f8: 447b         	add	r3, pc
  2df8fa: 9a01         	ldr	r2, [sp, #0x4]
  2df8fc: 4923         	ldr	r1, [pc, #0x8c]         @ 0x2df98c <AMessageBox::~AMessageBox()+0x9c>
  2df8fe: 5859         	ldr	r1, [r3, r1]
  2df900: 3108         	adds	r1, #0x8
  2df902: 6011         	str	r1, [r2]
  2df904: 9a01         	ldr	r2, [sp, #0x4]
  2df906: 4921         	ldr	r1, [pc, #0x84]         @ 0x2df98c <AMessageBox::~AMessageBox()+0x9c>
  2df908: 5859         	ldr	r1, [r3, r1]
  2df90a: f501 7104    	add.w	r1, r1, #0x210
  2df90e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2df912: 9a01         	ldr	r2, [sp, #0x4]
  2df914: 491d         	ldr	r1, [pc, #0x74]         @ 0x2df98c <AMessageBox::~AMessageBox()+0x9c>
  2df916: 5859         	ldr	r1, [r3, r1]
  2df918: f501 7110    	add.w	r1, r1, #0x240
  2df91c: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2df920: 9a01         	ldr	r2, [sp, #0x4]
  2df922: 491a         	ldr	r1, [pc, #0x68]         @ 0x2df98c <AMessageBox::~AMessageBox()+0x9c>
  2df924: 585b         	ldr	r3, [r3, r1]
  2df926: f503 7313    	add.w	r3, r3, #0x24c
  2df92a: f8c2 30ec    	str.w	r3, [r2, #0xec]
  2df92e: 9b01         	ldr	r3, [sp, #0x4]
  2df930: 4618         	mov	r0, r3
  2df932: f2b0 fe7b    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2b0cf6
  2df936: f300 febb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x300d76
  2df93a: 4602         	mov	r2, r0
  2df93c: 9b01         	ldr	r3, [sp, #0x4]
  2df93e: 4610         	mov	r0, r2
  2df940: 4619         	mov	r1, r3
  2df942: f300 ffed    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x300fda
  2df946: 9b01         	ldr	r3, [sp, #0x4]
  2df948: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2df94c: 4618         	mov	r0, r3
  2df94e: f2b8 fab3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b8566
  2df952: 9b01         	ldr	r3, [sp, #0x4]
  2df954: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2df958: 4618         	mov	r0, r3
  2df95a: f2b8 faad    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b855a
  2df95e: 9b01         	ldr	r3, [sp, #0x4]
  2df960: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2df964: 4618         	mov	r0, r3
  2df966: f2b8 faa7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b854e
  2df96a: 9b01         	ldr	r3, [sp, #0x4]
  2df96c: 4618         	mov	r0, r3
  2df96e: f2cd fbed    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2cd7da
  2df972: 2300         	movs	r3, #0x0
  2df974: 2b00         	cmp	r3, #0x0
  2df976: d002         	beq	0x2df97e <AMessageBox::~AMessageBox()+0x8e> @ imm = #0x4
  2df978: 9801         	ldr	r0, [sp, #0x4]
  2df97a: f0a8 f393    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a8726
  2df97e: 9b01         	ldr	r3, [sp, #0x4]
  2df980: 4618         	mov	r0, r3
  2df982: b003         	add	sp, #0xc
  2df984: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2df987); words below are literal-pool data ---
  2df988: 3110         	adds	r1, #0x10
  2df98a: 0065         	lsls	r5, r4, #0x1
  2df98c: d74c         	bvc	0x2dfa28 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0xc> @ imm = #0x98
  2df98e: ffff f1a0    	<unknown>

// ==== AMessageBox::~AMessageBox
//      file offset 0x2df990 (= ELF address; Ghidra 0x2ef990), 8 bytes, Thumb-2
  2df990: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2df994: f7ff bfac    	b.w	0x2df8f0 <AMessageBox::~AMessageBox()> @ imm = #-0xa8

// ==== AMessageBox::~AMessageBox
//      file offset 0x2df998 (= ELF address; Ghidra 0x2ef998), 28 bytes, Thumb-2
  2df998: b500         	push	{lr}
  2df99a: b083         	sub	sp, #0xc
  2df99c: 9001         	str	r0, [sp, #0x4]
  2df99e: 9801         	ldr	r0, [sp, #0x4]
  2df9a0: f7ff ffa6    	bl	0x2df8f0 <AMessageBox::~AMessageBox()> @ imm = #-0xb4
  2df9a4: 9801         	ldr	r0, [sp, #0x4]
  2df9a6: f0a8 f37d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4a86fa
  2df9aa: 9b01         	ldr	r3, [sp, #0x4]
  2df9ac: 4618         	mov	r0, r3
  2df9ae: b003         	add	sp, #0xc
  2df9b0: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::~AMessageBox
//      file offset 0x2df9b4 (= ELF address; Ghidra 0x2ef9b4), 8 bytes, Thumb-2
  2df9b4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2df9b8: f7ff bfee    	b.w	0x2df998 <AMessageBox::~AMessageBox()> @ imm = #-0x24

// ==== AMessageBox::init
//      file offset 0x2df9bc (= ELF address; Ghidra 0x2ef9bc), 96 bytes, Thumb-2
  2df9bc: b500         	push	{lr}
  2df9be: b083         	sub	sp, #0xc
  2df9c0: 9001         	str	r0, [sp, #0x4]
  2df9c2: 9b01         	ldr	r3, [sp, #0x4]
  2df9c4: 4618         	mov	r0, r3
  2df9c6: f2cd fc17    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2cd82e
  2df9ca: 4603         	mov	r3, r0
  2df9cc: f083 0301    	eor	r3, r3, #0x1
  2df9d0: b2db         	uxtb	r3, r3
  2df9d2: 2b00         	cmp	r3, #0x0
  2df9d4: d001         	beq	0x2df9da <AMessageBox::init()+0x1e> @ imm = #0x2
  2df9d6: 2300         	movs	r3, #0x0
  2df9d8: e01c         	b	0x2dfa14 <AMessageBox::init()+0x58> @ imm = #0x38
  2df9da: 9b01         	ldr	r3, [sp, #0x4]
  2df9dc: 2200         	movs	r2, #0x0
  2df9de: f8c3 2110    	str.w	r2, [r3, #0x110]
  2df9e2: 9b01         	ldr	r3, [sp, #0x4]
  2df9e4: 2200         	movs	r2, #0x0
  2df9e6: f8c3 2108    	str.w	r2, [r3, #0x108]
  2df9ea: 9b01         	ldr	r3, [sp, #0x4]
  2df9ec: 2200         	movs	r2, #0x0
  2df9ee: f8c3 210c    	str.w	r2, [r3, #0x10c]
  2df9f2: 9b01         	ldr	r3, [sp, #0x4]
  2df9f4: 2200         	movs	r2, #0x0
  2df9f6: f8c3 211c    	str.w	r2, [r3, #0x11c]
  2df9fa: 9b01         	ldr	r3, [sp, #0x4]
  2df9fc: 2200         	movs	r2, #0x0
  2df9fe: f8c3 2114    	str.w	r2, [r3, #0x114]
  2dfa02: 9b01         	ldr	r3, [sp, #0x4]
  2dfa04: 2200         	movs	r2, #0x0
  2dfa06: f8c3 2118    	str.w	r2, [r3, #0x118]
  2dfa0a: 9b01         	ldr	r3, [sp, #0x4]
  2dfa0c: 2200         	movs	r2, #0x0
  2dfa0e: f8c3 2120    	str.w	r2, [r3, #0x120]
  2dfa12: 2301         	movs	r3, #0x1
  2dfa14: 4618         	mov	r0, r3
  2dfa16: b003         	add	sp, #0xc
  2dfa18: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::setupMessageBox
//      file offset 0x2dfa1c (= ELF address; Ghidra 0x2efa1c), 1216 bytes, Thumb-2
  2dfa1c: b570         	push	{r4, r5, r6, lr}
  2dfa1e: b09a         	sub	sp, #0x68
  2dfa20: 9005         	str	r0, [sp, #0x14]
  2dfa22: 9104         	str	r1, [sp, #0x10]
  2dfa24: 9203         	str	r2, [sp, #0xc]
  2dfa26: 9302         	str	r3, [sp, #0x8]
  2dfa28: f8df 4488    	ldr.w	r4, [pc, #0x488]        @ 0x2dfeb4 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x498>
  2dfa2c: 447c         	add	r4, pc
  2dfa2e: f8df 3488    	ldr.w	r3, [pc, #0x488]        @ 0x2dfeb8 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x49c>
  2dfa32: 447b         	add	r3, pc
  2dfa34: 681a         	ldr	r2, [r3]
  2dfa36: 9b05         	ldr	r3, [sp, #0x14]
  2dfa38: f8c3 2120    	str.w	r2, [r3, #0x120]
  2dfa3c: 9b05         	ldr	r3, [sp, #0x14]
  2dfa3e: 681b         	ldr	r3, [r3]
  2dfa40: f503 73e8    	add.w	r3, r3, #0x1d0
  2dfa44: 681b         	ldr	r3, [r3]
  2dfa46: 9a05         	ldr	r2, [sp, #0x14]
  2dfa48: 4610         	mov	r0, r2
  2dfa4a: 2101         	movs	r1, #0x1
  2dfa4c: 4798         	blx	r3
  2dfa4e: 9b05         	ldr	r3, [sp, #0x14]
  2dfa50: 9a04         	ldr	r2, [sp, #0x10]
  2dfa52: f8c3 211c    	str.w	r2, [r3, #0x11c]
  2dfa56: 9b05         	ldr	r3, [sp, #0x14]
  2dfa58: 9a1f         	ldr	r2, [sp, #0x7c]
  2dfa5a: f8c3 2114    	str.w	r2, [r3, #0x114]
  2dfa5e: 9b05         	ldr	r3, [sp, #0x14]
  2dfa60: 9a20         	ldr	r2, [sp, #0x80]
  2dfa62: f8c3 2118    	str.w	r2, [r3, #0x118]
  2dfa66: 9b1f         	ldr	r3, [sp, #0x7c]
  2dfa68: 2b00         	cmp	r3, #0x0
  2dfa6a: d005         	beq	0x2dfa78 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x5c> @ imm = #0xa
  2dfa6c: 9b05         	ldr	r3, [sp, #0x14]
  2dfa6e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2dfa72: 4618         	mov	r0, r3
  2dfa74: f2b8 fa38    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b8470
  2dfa78: 9b20         	ldr	r3, [sp, #0x80]
  2dfa7a: 2b00         	cmp	r3, #0x0
  2dfa7c: d005         	beq	0x2dfa8a <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x6e> @ imm = #0xa
  2dfa7e: 9b05         	ldr	r3, [sp, #0x14]
  2dfa80: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2dfa84: 4618         	mov	r0, r3
  2dfa86: f2b8 fa2f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b845e
  2dfa8a: f2bb fd73    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bbae6
  2dfa8e: 4603         	mov	r3, r0
  2dfa90: aa0e         	add	r2, sp, #0x38
  2dfa92: 4610         	mov	r0, r2
  2dfa94: 4619         	mov	r1, r3
  2dfa96: f2bc fbe1    	bl	0x59c25c <cocos2d::CCDirector::getWinSize()> @ imm = #0x2bc7c2
  2dfa9a: ed9d 7a0e    	vldr	s14, [sp, #56]
  2dfa9e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2dfaa2: eec7 6a27    	vdiv.f32	s13, s14, s15
  2dfaa6: ed9d 7a0f    	vldr	s14, [sp, #60]
  2dfaaa: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2dfaae: eec7 7a27    	vdiv.f32	s15, s14, s15
  2dfab2: ab10         	add	r3, sp, #0x40
  2dfab4: 4618         	mov	r0, r3
  2dfab6: ee16 1a90    	vmov	r1, s13
  2dfaba: ee17 2a90    	vmov	r2, s15
  2dfabe: f2b3 f917    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b322e
  2dfac2: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x2dfebc <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4a0>
  2dfac4: 447b         	add	r3, pc
  2dfac6: 4618         	mov	r0, r3
  2dfac8: f2f8 fb5c    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2f86b8
  2dfacc: 4603         	mov	r3, r0
  2dface: 9308         	str	r3, [sp, #0x20]
  2dfad0: 9b08         	ldr	r3, [sp, #0x20]
  2dfad2: 681b         	ldr	r3, [r3]
  2dfad4: 3330         	adds	r3, #0x30
  2dfad6: 681b         	ldr	r3, [r3]
  2dfad8: 9a0e         	ldr	r2, [sp, #0x38]
  2dfada: 9808         	ldr	r0, [sp, #0x20]
  2dfadc: 4611         	mov	r1, r2
  2dfade: 4798         	blx	r3
  2dfae0: 9b08         	ldr	r3, [sp, #0x20]
  2dfae2: 681b         	ldr	r3, [r3]
  2dfae4: 3338         	adds	r3, #0x38
  2dfae6: 681b         	ldr	r3, [r3]
  2dfae8: 9a0f         	ldr	r2, [sp, #0x3c]
  2dfaea: 9808         	ldr	r0, [sp, #0x20]
  2dfaec: 4611         	mov	r1, r2
  2dfaee: 4798         	blx	r3
  2dfaf0: 9b08         	ldr	r3, [sp, #0x20]
  2dfaf2: 681b         	ldr	r3, [r3]
  2dfaf4: f503 73d2    	add.w	r3, r3, #0x1a4
  2dfaf8: 681b         	ldr	r3, [r3]
  2dfafa: 9808         	ldr	r0, [sp, #0x20]
  2dfafc: 21c8         	movs	r1, #0xc8
  2dfafe: 4798         	blx	r3
  2dfb00: 9b08         	ldr	r3, [sp, #0x20]
  2dfb02: 681b         	ldr	r3, [r3]
  2dfb04: 334c         	adds	r3, #0x4c
  2dfb06: 681b         	ldr	r3, [r3]
  2dfb08: aa10         	add	r2, sp, #0x40
  2dfb0a: 9808         	ldr	r0, [sp, #0x20]
  2dfb0c: 4611         	mov	r1, r2
  2dfb0e: 4798         	blx	r3
  2dfb10: 9b05         	ldr	r3, [sp, #0x14]
  2dfb12: 681b         	ldr	r3, [r3]
  2dfb14: 33c8         	adds	r3, #0xc8
  2dfb16: 681b         	ldr	r3, [r3]
  2dfb18: 9a05         	ldr	r2, [sp, #0x14]
  2dfb1a: 4610         	mov	r0, r2
  2dfb1c: 9908         	ldr	r1, [sp, #0x20]
  2dfb1e: 4798         	blx	r3
  2dfb20: 4be7         	ldr	r3, [pc, #0x39c]        @ 0x2dfec0 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4a4>
  2dfb22: 447b         	add	r3, pc
  2dfb24: 4618         	mov	r0, r3
  2dfb26: f16e fb25    	bl	0x44e174 <cocos2d::extension::CCScale9Sprite::create(char const*)> @ imm = #0x16e64a
  2dfb2a: 4603         	mov	r3, r0
  2dfb2c: 9309         	str	r3, [sp, #0x24]
  2dfb2e: 9b09         	ldr	r3, [sp, #0x24]
  2dfb30: 681b         	ldr	r3, [r3]
  2dfb32: 3388         	adds	r3, #0x88
  2dfb34: 681d         	ldr	r5, [r3]
  2dfb36: ab18         	add	r3, sp, #0x60
  2dfb38: 4618         	mov	r0, r3
  2dfb3a: f04f 0100    	mov.w	r1, #0x0
  2dfb3e: f2c4 31c8    	movt	r1, #0x43c8
  2dfb42: f04f 0200    	mov.w	r2, #0x0
  2dfb46: f2c4 327a    	movt	r2, #0x437a
  2dfb4a: f2b3 faa3    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2b3546
  2dfb4e: ab18         	add	r3, sp, #0x60
  2dfb50: 9809         	ldr	r0, [sp, #0x24]
  2dfb52: 4619         	mov	r1, r3
  2dfb54: 47a8         	blx	r5
  2dfb56: 9b09         	ldr	r3, [sp, #0x24]
  2dfb58: 681b         	ldr	r3, [r3]
  2dfb5a: 334c         	adds	r3, #0x4c
  2dfb5c: 681b         	ldr	r3, [r3]
  2dfb5e: 9909         	ldr	r1, [sp, #0x24]
  2dfb60: aa10         	add	r2, sp, #0x40
  2dfb62: 4608         	mov	r0, r1
  2dfb64: 4611         	mov	r1, r2
  2dfb66: 4798         	blx	r3
  2dfb68: 9b05         	ldr	r3, [sp, #0x14]
  2dfb6a: 681b         	ldr	r3, [r3]
  2dfb6c: 33c8         	adds	r3, #0xc8
  2dfb6e: 681b         	ldr	r3, [r3]
  2dfb70: 9a05         	ldr	r2, [sp, #0x14]
  2dfb72: 4610         	mov	r0, r2
  2dfb74: 9909         	ldr	r1, [sp, #0x24]
  2dfb76: 4798         	blx	r3
  2dfb78: 9803         	ldr	r0, [sp, #0xc]
  2dfb7a: f0d5 f3c1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4d5782
  2dfb7e: 4603         	mov	r3, r0
  2dfb80: 4618         	mov	r0, r3
  2dfb82: 4bd0         	ldr	r3, [pc, #0x340]        @ 0x2dfec4 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4a8>
  2dfb84: 447b         	add	r3, pc
  2dfb86: 4619         	mov	r1, r3
  2dfb88: f04f 0200    	mov.w	r2, #0x0
  2dfb8c: f2c4 12d0    	movt	r2, #0x41d0
  2dfb90: f2cc fa46    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x2cc48c
  2dfb94: 4602         	mov	r2, r0
  2dfb96: 9b05         	ldr	r3, [sp, #0x14]
  2dfb98: f8c3 2108    	str.w	r2, [r3, #0x108]
  2dfb9c: 9b05         	ldr	r3, [sp, #0x14]
  2dfb9e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2dfba2: 681b         	ldr	r3, [r3]
  2dfba4: 334c         	adds	r3, #0x4c
  2dfba6: 681d         	ldr	r5, [r3]
  2dfba8: 9b05         	ldr	r3, [sp, #0x14]
  2dfbaa: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2dfbae: 461e         	mov	r6, r3
  2dfbb0: ab16         	add	r3, sp, #0x58
  2dfbb2: 4618         	mov	r0, r3
  2dfbb4: f04f 0100    	mov.w	r1, #0x0
  2dfbb8: f04f 0200    	mov.w	r2, #0x0
  2dfbbc: f2c4 22be    	movt	r2, #0x42be
  2dfbc0: f2b3 f896    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b312c
  2dfbc4: a918         	add	r1, sp, #0x60
  2dfbc6: aa10         	add	r2, sp, #0x40
  2dfbc8: ab16         	add	r3, sp, #0x58
  2dfbca: 4608         	mov	r0, r1
  2dfbcc: 4611         	mov	r1, r2
  2dfbce: 461a         	mov	r2, r3
  2dfbd0: f7fe ff08    	bl	0x2de9e4 <cocos2d::CCDirector::getRunningScene()+0x10> @ imm = #-0x11f0
  2dfbd4: ab18         	add	r3, sp, #0x60
  2dfbd6: 4630         	mov	r0, r6
  2dfbd8: 4619         	mov	r1, r3
  2dfbda: 47a8         	blx	r5
  2dfbdc: 9b05         	ldr	r3, [sp, #0x14]
  2dfbde: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  2dfbe2: 4618         	mov	r0, r3
  2dfbe4: f2b8 f980    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b8300
  2dfbe8: 9b05         	ldr	r3, [sp, #0x14]
  2dfbea: 681b         	ldr	r3, [r3]
  2dfbec: 33c8         	adds	r3, #0xc8
  2dfbee: 681b         	ldr	r3, [r3]
  2dfbf0: 9905         	ldr	r1, [sp, #0x14]
  2dfbf2: 9a05         	ldr	r2, [sp, #0x14]
  2dfbf4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  2dfbf8: 4608         	mov	r0, r1
  2dfbfa: 4611         	mov	r1, r2
  2dfbfc: 4798         	blx	r3
  2dfbfe: 9802         	ldr	r0, [sp, #0x8]
  2dfc00: f0d5 f37e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4d56fc
  2dfc04: 4605         	mov	r5, r0
  2dfc06: ab18         	add	r3, sp, #0x60
  2dfc08: 4618         	mov	r0, r3
  2dfc0a: f04f 0100    	mov.w	r1, #0x0
  2dfc0e: f2c4 31af    	movt	r1, #0x43af
  2dfc12: f04f 0200    	mov.w	r2, #0x0
  2dfc16: f2c4 3216    	movt	r2, #0x4316
  2dfc1a: f2b3 fa3b    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2b3476
  2dfc1e: ab18         	add	r3, sp, #0x60
  2dfc20: 2201         	movs	r2, #0x1
  2dfc22: 9200         	str	r2, [sp]
  2dfc24: 4628         	mov	r0, r5
  2dfc26: 4aa8         	ldr	r2, [pc, #0x2a0]        @ 0x2dfec8 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4ac>
  2dfc28: 447a         	add	r2, pc
  2dfc2a: 4611         	mov	r1, r2
  2dfc2c: f04f 0200    	mov.w	r2, #0x0
  2dfc30: f2c4 1290    	movt	r2, #0x4190
  2dfc34: f2cc fa0c    	bl	0x5ac050 <cocos2d::CCLabelTTF::create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment)> @ imm = #0x2cc418
  2dfc38: 4602         	mov	r2, r0
  2dfc3a: 9b05         	ldr	r3, [sp, #0x14]
  2dfc3c: f8c3 210c    	str.w	r2, [r3, #0x10c]
  2dfc40: 9b05         	ldr	r3, [sp, #0x14]
  2dfc42: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2dfc46: 681b         	ldr	r3, [r3]
  2dfc48: 334c         	adds	r3, #0x4c
  2dfc4a: 681d         	ldr	r5, [r3]
  2dfc4c: 9b05         	ldr	r3, [sp, #0x14]
  2dfc4e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2dfc52: 461e         	mov	r6, r3
  2dfc54: ab16         	add	r3, sp, #0x58
  2dfc56: 4618         	mov	r0, r3
  2dfc58: f04f 0100    	mov.w	r1, #0x0
  2dfc5c: f04f 0200    	mov.w	r2, #0x0
  2dfc60: f2b3 f846    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b308c
  2dfc64: a918         	add	r1, sp, #0x60
  2dfc66: aa10         	add	r2, sp, #0x40
  2dfc68: ab16         	add	r3, sp, #0x58
  2dfc6a: 4608         	mov	r0, r1
  2dfc6c: 4611         	mov	r1, r2
  2dfc6e: 461a         	mov	r2, r3
  2dfc70: f7fe feb8    	bl	0x2de9e4 <cocos2d::CCDirector::getRunningScene()+0x10> @ imm = #-0x1290
  2dfc74: ab18         	add	r3, sp, #0x60
  2dfc76: 4630         	mov	r0, r6
  2dfc78: 4619         	mov	r1, r3
  2dfc7a: 47a8         	blx	r5
  2dfc7c: 9b05         	ldr	r3, [sp, #0x14]
  2dfc7e: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2dfc82: 4618         	mov	r0, r3
  2dfc84: f2b8 f930    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b8260
  2dfc88: 9b05         	ldr	r3, [sp, #0x14]
  2dfc8a: 681b         	ldr	r3, [r3]
  2dfc8c: 33c8         	adds	r3, #0xc8
  2dfc8e: 681b         	ldr	r3, [r3]
  2dfc90: 9905         	ldr	r1, [sp, #0x14]
  2dfc92: 9a05         	ldr	r2, [sp, #0x14]
  2dfc94: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2dfc98: 4608         	mov	r0, r1
  2dfc9a: 4611         	mov	r1, r2
  2dfc9c: 4798         	blx	r3
  2dfc9e: f2d5 fa45    	bl	0x5b512c <cocos2d::CCMenu::create()> @ imm = #0x2d548a
  2dfca2: 4602         	mov	r2, r0
  2dfca4: 9b05         	ldr	r3, [sp, #0x14]
  2dfca6: f8c3 2110    	str.w	r2, [r3, #0x110]
  2dfcaa: 9b05         	ldr	r3, [sp, #0x14]
  2dfcac: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dfcb0: 4618         	mov	r0, r3
  2dfcb2: f2b8 f919    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2b8232
  2dfcb6: 2300         	movs	r3, #0x0
  2dfcb8: 9307         	str	r3, [sp, #0x1c]
  2dfcba: e09e         	b	0x2dfdfa <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x3de> @ imm = #0x13c
  2dfcbc: 9b07         	ldr	r3, [sp, #0x1c]
  2dfcbe: 981e         	ldr	r0, [sp, #0x78]
  2dfcc0: 4619         	mov	r1, r3
  2dfcc2: f2ba fa2d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2ba45a
  2dfcc6: 4603         	mov	r3, r0
  2dfcc8: 930a         	str	r3, [sp, #0x28]
  2dfcca: 980a         	ldr	r0, [sp, #0x28]
  2dfccc: f2b9 fe2c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2b9c58
  2dfcd0: 4603         	mov	r3, r0
  2dfcd2: 4618         	mov	r0, r3
  2dfcd4: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x2dfecc <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4b0>
  2dfcd6: 447b         	add	r3, pc
  2dfcd8: 4619         	mov	r1, r3
  2dfcda: f04f 0200    	mov.w	r2, #0x0
  2dfcde: f2c4 12a0    	movt	r2, #0x41a0
  2dfce2: f2cc f99d    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x2cc33a
  2dfce6: 4603         	mov	r3, r0
  2dfce8: 930b         	str	r3, [sp, #0x2c]
  2dfcea: 9b0b         	ldr	r3, [sp, #0x2c]
  2dfcec: 681b         	ldr	r3, [r3]
  2dfcee: 338c         	adds	r3, #0x8c
  2dfcf0: 681b         	ldr	r3, [r3]
  2dfcf2: 9a0b         	ldr	r2, [sp, #0x2c]
  2dfcf4: 4610         	mov	r0, r2
  2dfcf6: 4798         	blx	r3
  2dfcf8: 4603         	mov	r3, r0
  2dfcfa: aa12         	add	r2, sp, #0x48
  2dfcfc: 4610         	mov	r0, r2
  2dfcfe: 4619         	mov	r1, r3
  2dfd00: f2b3 f9d6    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2b33ac
  2dfd04: 4b72         	ldr	r3, [pc, #0x1c8]        @ 0x2dfed0 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4b4>
  2dfd06: 447b         	add	r3, pc
  2dfd08: 4618         	mov	r0, r3
  2dfd0a: f16e fbef    	bl	0x44e4ec <cocos2d::extension::CCScale9Sprite::createWithSpriteFrameName(char const*)> @ imm = #0x16e7de
  2dfd0e: 4603         	mov	r3, r0
  2dfd10: 930c         	str	r3, [sp, #0x30]
  2dfd12: 9b0c         	ldr	r3, [sp, #0x30]
  2dfd14: 681b         	ldr	r3, [r3]
  2dfd16: 3388         	adds	r3, #0x88
  2dfd18: 681d         	ldr	r5, [r3]
  2dfd1a: ed9d 7a12    	vldr	s14, [sp, #72]
  2dfd1e: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  2dfd22: ee77 6a27    	vadd.f32	s13, s14, s15
  2dfd26: ed9d 7a13    	vldr	s14, [sp, #76]
  2dfd2a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  2dfd2e: ee77 7a27    	vadd.f32	s15, s14, s15
  2dfd32: ab18         	add	r3, sp, #0x60
  2dfd34: 4618         	mov	r0, r3
  2dfd36: ee16 1a90    	vmov	r1, s13
  2dfd3a: ee17 2a90    	vmov	r2, s15
  2dfd3e: f2b3 f9a9    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x2b3352
  2dfd42: ab18         	add	r3, sp, #0x60
  2dfd44: 980c         	ldr	r0, [sp, #0x30]
  2dfd46: 4619         	mov	r1, r3
  2dfd48: 47a8         	blx	r5
  2dfd4a: 9b0c         	ldr	r3, [sp, #0x30]
  2dfd4c: 681b         	ldr	r3, [r3]
  2dfd4e: 338c         	adds	r3, #0x8c
  2dfd50: 681b         	ldr	r3, [r3]
  2dfd52: 9a0c         	ldr	r2, [sp, #0x30]
  2dfd54: 4610         	mov	r0, r2
  2dfd56: 4798         	blx	r3
  2dfd58: 4603         	mov	r3, r0
  2dfd5a: aa14         	add	r2, sp, #0x50
  2dfd5c: 4610         	mov	r0, r2
  2dfd5e: 4619         	mov	r1, r3
  2dfd60: f2b3 f9a6    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2b334c
  2dfd64: 9b0b         	ldr	r3, [sp, #0x2c]
  2dfd66: 681b         	ldr	r3, [r3]
  2dfd68: 334c         	adds	r3, #0x4c
  2dfd6a: 681d         	ldr	r5, [r3]
  2dfd6c: 9e0b         	ldr	r6, [sp, #0x2c]
  2dfd6e: ed9d 7a14    	vldr	s14, [sp, #80]
  2dfd72: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2dfd76: eec7 6a27    	vdiv.f32	s13, s14, s15
  2dfd7a: ed9d 7a15    	vldr	s14, [sp, #84]
  2dfd7e: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2dfd82: eec7 7a27    	vdiv.f32	s15, s14, s15
  2dfd86: ab18         	add	r3, sp, #0x60
  2dfd88: 4618         	mov	r0, r3
  2dfd8a: ee16 1a90    	vmov	r1, s13
  2dfd8e: ee17 2a90    	vmov	r2, s15
  2dfd92: f2b2 ffad    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b2f5a
  2dfd96: ab18         	add	r3, sp, #0x60
  2dfd98: 4630         	mov	r0, r6
  2dfd9a: 4619         	mov	r1, r3
  2dfd9c: 47a8         	blx	r5
  2dfd9e: 9b0c         	ldr	r3, [sp, #0x30]
  2dfda0: 681b         	ldr	r3, [r3]
  2dfda2: 33c8         	adds	r3, #0xc8
  2dfda4: 681b         	ldr	r3, [r3]
  2dfda6: 9a0c         	ldr	r2, [sp, #0x30]
  2dfda8: 4610         	mov	r0, r2
  2dfdaa: 990b         	ldr	r1, [sp, #0x2c]
  2dfdac: 4798         	blx	r3
  2dfdae: 9b05         	ldr	r3, [sp, #0x14]
  2dfdb0: 4a48         	ldr	r2, [pc, #0x120]        @ 0x2dfed4 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4b8>
  2dfdb2: 58a2         	ldr	r2, [r4, r2]
  2dfdb4: 9216         	str	r2, [sp, #0x58]
  2dfdb6: 2200         	movs	r2, #0x0
  2dfdb8: 9217         	str	r2, [sp, #0x5c]
  2dfdba: 980c         	ldr	r0, [sp, #0x30]
  2dfdbc: 4619         	mov	r1, r3
  2dfdbe: ab16         	add	r3, sp, #0x58
  2dfdc0: cb0c         	ldm	r3, {r2, r3}
  2dfdc2: f2d7 fd9f    	bl	0x5b7904 <cocos2d::CCMenuItemLabel::create(cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2d7b3e
  2dfdc6: 4603         	mov	r3, r0
  2dfdc8: 930d         	str	r3, [sp, #0x34]
  2dfdca: 9b0d         	ldr	r3, [sp, #0x34]
  2dfdcc: 681b         	ldr	r3, [r3]
  2dfdce: f503 738e    	add.w	r3, r3, #0x11c
  2dfdd2: 681b         	ldr	r3, [r3]
  2dfdd4: 9a0d         	ldr	r2, [sp, #0x34]
  2dfdd6: 4610         	mov	r0, r2
  2dfdd8: 9907         	ldr	r1, [sp, #0x1c]
  2dfdda: 4798         	blx	r3
  2dfddc: 9b05         	ldr	r3, [sp, #0x14]
  2dfdde: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dfde2: 681b         	ldr	r3, [r3]
  2dfde4: 33c8         	adds	r3, #0xc8
  2dfde6: 681b         	ldr	r3, [r3]
  2dfde8: 9a05         	ldr	r2, [sp, #0x14]
  2dfdea: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2dfdee: 4610         	mov	r0, r2
  2dfdf0: 990d         	ldr	r1, [sp, #0x34]
  2dfdf2: 4798         	blx	r3
  2dfdf4: 9b07         	ldr	r3, [sp, #0x1c]
  2dfdf6: 3301         	adds	r3, #0x1
  2dfdf8: 9307         	str	r3, [sp, #0x1c]
  2dfdfa: 9d07         	ldr	r5, [sp, #0x1c]
  2dfdfc: 981e         	ldr	r0, [sp, #0x78]
  2dfdfe: f2ba f96f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x2ba2de
  2dfe02: 4603         	mov	r3, r0
  2dfe04: 429d         	cmp	r5, r3
  2dfe06: bf2c         	ite	hs
  2dfe08: 2300         	movhs	r3, #0x0
  2dfe0a: 2301         	movlo	r3, #0x1
  2dfe0c: b2db         	uxtb	r3, r3
  2dfe0e: 2b00         	cmp	r3, #0x0
  2dfe10: f47f af54    	bne.w	0x2dfcbc <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x2a0> @ imm = #-0x158
  2dfe14: 9b05         	ldr	r3, [sp, #0x14]
  2dfe16: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dfe1a: 4618         	mov	r0, r3
  2dfe1c: f04f 0100    	mov.w	r1, #0x0
  2dfe20: f2c4 11f0    	movt	r1, #0x41f0
  2dfe24: f2d5 fe16    	bl	0x5b5a54 <cocos2d::CCMenu::alignItemsHorizontallyWithPadding(float)> @ imm = #0x2d5c2c
  2dfe28: 9b05         	ldr	r3, [sp, #0x14]
  2dfe2a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dfe2e: 681b         	ldr	r3, [r3]
  2dfe30: 334c         	adds	r3, #0x4c
  2dfe32: 681d         	ldr	r5, [r3]
  2dfe34: 9b05         	ldr	r3, [sp, #0x14]
  2dfe36: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dfe3a: 461e         	mov	r6, r3
  2dfe3c: ab14         	add	r3, sp, #0x50
  2dfe3e: 4618         	mov	r0, r3
  2dfe40: f04f 0100    	mov.w	r1, #0x0
  2dfe44: f04f 0200    	mov.w	r2, #0x0
  2dfe48: f2cc 22b4    	movt	r2, #0xc2b4
  2dfe4c: f2b2 ff50    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2b2ea0
  2dfe50: a918         	add	r1, sp, #0x60
  2dfe52: aa10         	add	r2, sp, #0x40
  2dfe54: ab14         	add	r3, sp, #0x50
  2dfe56: 4608         	mov	r0, r1
  2dfe58: 4611         	mov	r1, r2
  2dfe5a: 461a         	mov	r2, r3
  2dfe5c: f7fe fdc2    	bl	0x2de9e4 <cocos2d::CCDirector::getRunningScene()+0x10> @ imm = #-0x147c
  2dfe60: ab18         	add	r3, sp, #0x60
  2dfe62: 4630         	mov	r0, r6
  2dfe64: 4619         	mov	r1, r3
  2dfe66: 47a8         	blx	r5
  2dfe68: 9b05         	ldr	r3, [sp, #0x14]
  2dfe6a: 681b         	ldr	r3, [r3]
  2dfe6c: 33c8         	adds	r3, #0xc8
  2dfe6e: 681b         	ldr	r3, [r3]
  2dfe70: 9905         	ldr	r1, [sp, #0x14]
  2dfe72: 9a05         	ldr	r2, [sp, #0x14]
  2dfe74: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2dfe78: 4608         	mov	r0, r1
  2dfe7a: 4611         	mov	r1, r2
  2dfe7c: 4798         	blx	r3
  2dfe7e: f2bb fb79    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb6f2
  2dfe82: 4603         	mov	r3, r0
  2dfe84: 681a         	ldr	r2, [r3]
  2dfe86: 3230         	adds	r2, #0x30
  2dfe88: 6812         	ldr	r2, [r2]
  2dfe8a: 4618         	mov	r0, r3
  2dfe8c: 4790         	blx	r2
  2dfe8e: 4602         	mov	r2, r0
  2dfe90: 4b11         	ldr	r3, [pc, #0x44]         @ 0x2dfed8 <AMessageBox::setupMessageBox(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)+0x4bc>
  2dfe92: 58e3         	ldr	r3, [r4, r3]
  2dfe94: 9318         	str	r3, [sp, #0x60]
  2dfe96: 2300         	movs	r3, #0x0
  2dfe98: 9319         	str	r3, [sp, #0x64]
  2dfe9a: 9b05         	ldr	r3, [sp, #0x14]
  2dfe9c: f04f 0100    	mov.w	r1, #0x0
  2dfea0: 9100         	str	r1, [sp]
  2dfea2: 2100         	movs	r1, #0x0
  2dfea4: 9101         	str	r1, [sp, #0x4]
  2dfea6: 4610         	mov	r0, r2
  2dfea8: aa18         	add	r2, sp, #0x60
  2dfeaa: ca06         	ldm	r2, {r1, r2}
  2dfeac: f28f fee0    	bl	0x56fc70 <cocos2d::CCScheduler::scheduleSelector(void (cocos2d::CCObject::*)(float), cocos2d::CCObject*, float, bool)> @ imm = #0x28fdc0
  2dfeb0: b01a         	add	sp, #0x68
  2dfeb2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2dfeb3); words below are literal-pool data ---
  2dfeb4: 2fdc         	cmp	r7, #0xdc
  2dfeb6: 0065         	lsls	r5, r4, #0x1
  2dfeb8: fc5e 0065    	mrrc2	p0, #0x6, r0, lr, c5
  2dfebc: 1f80         	subs	r0, r0, #0x6
  2dfebe: 004e         	lsls	r6, r1, #0x1
  2dfec0: 1f2a         	subs	r2, r5, #0x4
  2dfec2: 004e         	lsls	r6, r1, #0x1
  2dfec4: 1ed4         	subs	r4, r2, #0x3
  2dfec6: 004e         	lsls	r6, r1, #0x1
  2dfec8: 1e30         	subs	r0, r6, #0x0
  2dfeca: 004e         	lsls	r6, r1, #0x1
  2dfecc: 1d82         	adds	r2, r0, #0x6
  2dfece: 004e         	lsls	r6, r1, #0x1
  2dfed0: 1d62         	adds	r2, r4, #0x5
  2dfed2: 004e         	lsls	r6, r1, #0x1
  2dfed4: d750         	bvc	0x2dff78 <AMessageBox::onExit()+0x38> @ imm = #0xa0
  2dfed6: ffff d754    	<unknown>
  2dfeda: ffff b084    	<unknown>

// ==== AMessageBox::ccTouchBegan
//      file offset 0x2dfedc (= ELF address; Ghidra 0x2efedc), 16 bytes, Thumb-2
  2dfedc: b084         	sub	sp, #0x10
  2dfede: 9003         	str	r0, [sp, #0xc]
  2dfee0: 9102         	str	r1, [sp, #0x8]
  2dfee2: 9201         	str	r2, [sp, #0x4]
  2dfee4: 2301         	movs	r3, #0x1
  2dfee6: 4618         	mov	r0, r3
  2dfee8: b004         	add	sp, #0x10
  2dfeea: 4770         	bx	lr

// ==== AMessageBox::ccTouchBegan
//      file offset 0x2dfeec (= ELF address; Ghidra 0x2efeec), 8 bytes, Thumb-2
  2dfeec: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2dfef0: f7ff bff4    	b.w	0x2dfedc <AMessageBox::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*)> @ imm = #-0x18

// ==== AMessageBox::onEnter
//      file offset 0x2dfef4 (= ELF address; Ghidra 0x2efef4), 76 bytes, Thumb-2
  2dfef4: b500         	push	{lr}
  2dfef6: b083         	sub	sp, #0xc
  2dfef8: 9001         	str	r0, [sp, #0x4]
  2dfefa: 9b01         	ldr	r3, [sp, #0x4]
  2dfefc: 4618         	mov	r0, r3
  2dfefe: f2cd fcad    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x2cd95a
  2dff02: f2bb fb37    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb66e
  2dff06: 4603         	mov	r3, r0
  2dff08: 681a         	ldr	r2, [r3]
  2dff0a: 3240         	adds	r2, #0x40
  2dff0c: 6812         	ldr	r2, [r2]
  2dff0e: 4618         	mov	r0, r3
  2dff10: 4790         	blx	r2
  2dff12: 4601         	mov	r1, r0
  2dff14: 9b01         	ldr	r3, [sp, #0x4]
  2dff16: f8d3 2120    	ldr.w	r2, [r3, #0x120]
  2dff1a: 9b01         	ldr	r3, [sp, #0x4]
  2dff1c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dff20: 2b00         	cmp	r3, #0x0
  2dff22: d004         	beq	0x2dff2e <AMessageBox::onEnter()+0x3a> @ imm = #0x8
  2dff24: 9b01         	ldr	r3, [sp, #0x4]
  2dff26: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2dff2a: 33e4         	adds	r3, #0xe4
  2dff2c: e000         	b	0x2dff30 <AMessageBox::onEnter()+0x3c> @ imm = #0x0
  2dff2e: 2300         	movs	r3, #0x0
  2dff30: 4608         	mov	r0, r1
  2dff32: 4611         	mov	r1, r2
  2dff34: 461a         	mov	r2, r3
  2dff36: f31f fd01    	bl	0x5ff93c <cocos2d::CCTouchDispatcher::setPriority(int, cocos2d::CCTouchDelegate*)> @ imm = #0x31fa02
  2dff3a: b003         	add	sp, #0xc
  2dff3c: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::onExit
//      file offset 0x2dff40 (= ELF address; Ghidra 0x2eff40), 124 bytes, Thumb-2
  2dff40: b500         	push	{lr}
  2dff42: b085         	sub	sp, #0x14
  2dff44: 9001         	str	r0, [sp, #0x4]
  2dff46: f2bb fb15    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb62a
  2dff4a: 4603         	mov	r3, r0
  2dff4c: 9303         	str	r3, [sp, #0xc]
  2dff4e: 9b01         	ldr	r3, [sp, #0x4]
  2dff50: f893 30f0    	ldrb.w	r3, [r3, #0xf0]
  2dff54: 2b00         	cmp	r3, #0x0
  2dff56: d00c         	beq	0x2dff72 <AMessageBox::onExit()+0x32> @ imm = #0x18
  2dff58: 9b03         	ldr	r3, [sp, #0xc]
  2dff5a: 681b         	ldr	r3, [r3]
  2dff5c: 3340         	adds	r3, #0x40
  2dff5e: 681b         	ldr	r3, [r3]
  2dff60: 9803         	ldr	r0, [sp, #0xc]
  2dff62: 4798         	blx	r3
  2dff64: 4602         	mov	r2, r0
  2dff66: 9b01         	ldr	r3, [sp, #0x4]
  2dff68: 33e4         	adds	r3, #0xe4
  2dff6a: 4610         	mov	r0, r2
  2dff6c: 4619         	mov	r1, r3
  2dff6e: f31f fb99    	bl	0x5ff6a4 <cocos2d::CCTouchDispatcher::removeDelegate(cocos2d::CCTouchDelegate*)> @ imm = #0x31f732
  2dff72: 9b01         	ldr	r3, [sp, #0x4]
  2dff74: f893 30f1    	ldrb.w	r3, [r3, #0xf1]
  2dff78: 2b00         	cmp	r3, #0x0
  2dff7a: d00a         	beq	0x2dff92 <AMessageBox::onExit()+0x52> @ imm = #0x14
  2dff7c: 9b03         	ldr	r3, [sp, #0xc]
  2dff7e: 681b         	ldr	r3, [r3]
  2dff80: 3350         	adds	r3, #0x50
  2dff82: 681b         	ldr	r3, [r3]
  2dff84: 9803         	ldr	r0, [sp, #0xc]
  2dff86: 4798         	blx	r3
  2dff88: 4603         	mov	r3, r0
  2dff8a: 4618         	mov	r0, r3
  2dff8c: 2100         	movs	r1, #0x0
  2dff8e: f2ed fcab    	bl	0x5cd8e8 <cocos2d::CCAccelerometer::setDelegate(cocos2d::CCAccelerometerDelegate*)> @ imm = #0x2ed956
  2dff92: 9b01         	ldr	r3, [sp, #0x4]
  2dff94: f893 30f2    	ldrb.w	r3, [r3, #0xf2]
  2dff98: 2b00         	cmp	r3, #0x0
  2dff9a: d00c         	beq	0x2dffb6 <AMessageBox::onExit()+0x76> @ imm = #0x18
  2dff9c: 9b03         	ldr	r3, [sp, #0xc]
  2dff9e: 681b         	ldr	r3, [r3]
  2dffa0: 3348         	adds	r3, #0x48
  2dffa2: 681b         	ldr	r3, [r3]
  2dffa4: 9803         	ldr	r0, [sp, #0xc]
  2dffa6: 4798         	blx	r3
  2dffa8: 4602         	mov	r2, r0
  2dffaa: 9b01         	ldr	r3, [sp, #0x4]
  2dffac: 33ec         	adds	r3, #0xec
  2dffae: 4610         	mov	r0, r2
  2dffb0: 4619         	mov	r1, r3
  2dffb2: f2c5 f829    	bl	0x5a5008 <cocos2d::CCKeypadDispatcher::removeDelegate(cocos2d::CCKeypadDelegate*)> @ imm = #0x2c5052
  2dffb6: b005         	add	sp, #0x14
  2dffb8: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::cleanup
//      file offset 0x2dffbc (= ELF address; Ghidra 0x2effbc), 8 bytes, Thumb-2
  2dffbc: b082         	sub	sp, #0x8
  2dffbe: 9001         	str	r0, [sp, #0x4]
  2dffc0: b002         	add	sp, #0x8
  2dffc2: 4770         	bx	lr

// ==== AMessageBox::registerWithTouchDispatcher
//      file offset 0x2dffc4 (= ELF address; Ghidra 0x2effc4), 56 bytes, Thumb-2
  2dffc4: b500         	push	{lr}
  2dffc6: b083         	sub	sp, #0xc
  2dffc8: 9001         	str	r0, [sp, #0x4]
  2dffca: f2bb fad3    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb5a6
  2dffce: 4603         	mov	r3, r0
  2dffd0: 681a         	ldr	r2, [r3]
  2dffd2: 3240         	adds	r2, #0x40
  2dffd4: 6812         	ldr	r2, [r2]
  2dffd6: 4618         	mov	r0, r3
  2dffd8: 4790         	blx	r2
  2dffda: 4601         	mov	r1, r0
  2dffdc: 9b01         	ldr	r3, [sp, #0x4]
  2dffde: f103 02e4    	add.w	r2, r3, #0xe4
  2dffe2: 9b01         	ldr	r3, [sp, #0x4]
  2dffe4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2dffe8: 3301         	adds	r3, #0x1
  2dffea: 4608         	mov	r0, r1
  2dffec: 4611         	mov	r1, r2
  2dffee: 461a         	mov	r2, r3
  2dfff0: 2301         	movs	r3, #0x1
  2dfff2: f31f fa7d    	bl	0x5ff4f0 <cocos2d::CCTouchDispatcher::addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool)> @ imm = #0x31f4fa
  2dfff6: b003         	add	sp, #0xc
  2dfff8: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::updateStep
//      file offset 0x2dfffc (= ELF address; Ghidra 0x2efffc), 20 bytes, Thumb-2
  2dfffc: b500         	push	{lr}
  2dfffe: b083         	sub	sp, #0xc
  2e0000: 9001         	str	r0, [sp, #0x4]
  2e0002: 9100         	str	r1, [sp]
  2e0004: 9801         	ldr	r0, [sp, #0x4]
  2e0006: f000 f803    	bl	0x2e0010 <AMessageBox::attachToScene()> @ imm = #0x6
  2e000a: b003         	add	sp, #0xc
  2e000c: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::attachToScene
//      file offset 0x2e0010 (= ELF address; Ghidra 0x2f0010), 102 bytes, Thumb-2
  2e0010: b500         	push	{lr}
  2e0012: b085         	sub	sp, #0x14
  2e0014: 9001         	str	r0, [sp, #0x4]
  2e0016: f2bb faad    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb55a
  2e001a: 4603         	mov	r3, r0
  2e001c: 4618         	mov	r0, r3
  2e001e: f7fe fcd9    	bl	0x2de9d4 <cocos2d::CCDirector::getRunningScene()> @ imm = #-0x164e
  2e0022: 4603         	mov	r3, r0
  2e0024: 9303         	str	r3, [sp, #0xc]
  2e0026: 9b03         	ldr	r3, [sp, #0xc]
  2e0028: 2b00         	cmp	r3, #0x0
  2e002a: d00c         	beq	0x2e0046 <AMessageBox::attachToScene()+0x36> @ imm = #0x18
  2e002c: 9b01         	ldr	r3, [sp, #0x4]
  2e002e: 681b         	ldr	r3, [r3]
  2e0030: 33e4         	adds	r3, #0xe4
  2e0032: 681b         	ldr	r3, [r3]
  2e0034: 9a01         	ldr	r2, [sp, #0x4]
  2e0036: 4610         	mov	r0, r2
  2e0038: 4798         	blx	r3
  2e003a: 4602         	mov	r2, r0
  2e003c: 9b03         	ldr	r3, [sp, #0xc]
  2e003e: 429a         	cmp	r2, r3
  2e0040: d001         	beq	0x2e0046 <AMessageBox::attachToScene()+0x36> @ imm = #0x2
  2e0042: 2301         	movs	r3, #0x1
  2e0044: e000         	b	0x2e0048 <AMessageBox::attachToScene()+0x38> @ imm = #0x0
  2e0046: 2300         	movs	r3, #0x0
  2e0048: 2b00         	cmp	r3, #0x0
  2e004a: d011         	beq	0x2e0070 <AMessageBox::attachToScene()+0x60> @ imm = #0x22
  2e004c: 9b01         	ldr	r3, [sp, #0x4]
  2e004e: 681b         	ldr	r3, [r3]
  2e0050: 33e8         	adds	r3, #0xe8
  2e0052: 681b         	ldr	r3, [r3]
  2e0054: 9a01         	ldr	r2, [sp, #0x4]
  2e0056: 4610         	mov	r0, r2
  2e0058: 4798         	blx	r3
  2e005a: 9b03         	ldr	r3, [sp, #0xc]
  2e005c: 681b         	ldr	r3, [r3]
  2e005e: 33cc         	adds	r3, #0xcc
  2e0060: 681b         	ldr	r3, [r3]
  2e0062: 9903         	ldr	r1, [sp, #0xc]
  2e0064: 9a01         	ldr	r2, [sp, #0x4]
  2e0066: 4608         	mov	r0, r1
  2e0068: 4611         	mov	r1, r2
  2e006a: f06f 4200    	mvn	r2, #0x80000000
  2e006e: 4798         	blx	r3
  2e0070: b005         	add	sp, #0x14
  2e0072: f85d fb04    	ldr	pc, [sp], #4

// ==== AMessageBox::onButtonClicked
//      file offset 0x2e0078 (= ELF address; Ghidra 0x2f0078), 236 bytes, Thumb-2
  2e0078: b510         	push	{r4, lr}
  2e007a: b082         	sub	sp, #0x8
  2e007c: 9001         	str	r0, [sp, #0x4]
  2e007e: 9100         	str	r1, [sp]
  2e0080: 9b01         	ldr	r3, [sp, #0x4]
  2e0082: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2e0086: 2b00         	cmp	r3, #0x0
  2e0088: d015         	beq	0x2e00b6 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0x3e> @ imm = #0x2a
  2e008a: 9b01         	ldr	r3, [sp, #0x4]
  2e008c: f8d3 411c    	ldr.w	r4, [r3, #0x11c]
  2e0090: 9b00         	ldr	r3, [sp]
  2e0092: 681b         	ldr	r3, [r3]
  2e0094: f503 738c    	add.w	r3, r3, #0x118
  2e0098: 681b         	ldr	r3, [r3]
  2e009a: 9a00         	ldr	r2, [sp]
  2e009c: 4610         	mov	r0, r2
  2e009e: 4798         	blx	r3
  2e00a0: 4601         	mov	r1, r0
  2e00a2: 9b01         	ldr	r3, [sp, #0x4]
  2e00a4: f8d3 2114    	ldr.w	r2, [r3, #0x114]
  2e00a8: 9b01         	ldr	r3, [sp, #0x4]
  2e00aa: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e00ae: 4608         	mov	r0, r1
  2e00b0: 4611         	mov	r1, r2
  2e00b2: 461a         	mov	r2, r3
  2e00b4: 47a0         	blx	r4
  2e00b6: 9b01         	ldr	r3, [sp, #0x4]
  2e00b8: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e00bc: 2b00         	cmp	r3, #0x0
  2e00be: d005         	beq	0x2e00cc <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0x54> @ imm = #0xa
  2e00c0: 9b01         	ldr	r3, [sp, #0x4]
  2e00c2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2e00c6: 4618         	mov	r0, r3
  2e00c8: f2b7 fef6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b7dec
  2e00cc: 9b01         	ldr	r3, [sp, #0x4]
  2e00ce: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e00d2: 2b00         	cmp	r3, #0x0
  2e00d4: d005         	beq	0x2e00e2 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0x6a> @ imm = #0xa
  2e00d6: 9b01         	ldr	r3, [sp, #0x4]
  2e00d8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2e00dc: 4618         	mov	r0, r3
  2e00de: f2b7 feeb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b7dd6
  2e00e2: f2bb fa47    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2bb48e
  2e00e6: 4603         	mov	r3, r0
  2e00e8: 681a         	ldr	r2, [r3]
  2e00ea: 3230         	adds	r2, #0x30
  2e00ec: 6812         	ldr	r2, [r2]
  2e00ee: 4618         	mov	r0, r3
  2e00f0: 4790         	blx	r2
  2e00f2: 4602         	mov	r2, r0
  2e00f4: 9b01         	ldr	r3, [sp, #0x4]
  2e00f6: 4610         	mov	r0, r2
  2e00f8: 4619         	mov	r1, r3
  2e00fa: f292 ff71    	bl	0x572fe0 <cocos2d::CCScheduler::unscheduleAllForTarget(cocos2d::CCObject*)> @ imm = #0x292ee2
  2e00fe: 9801         	ldr	r0, [sp, #0x4]
  2e0100: f000 f830    	bl	0x2e0164 <AMessageBox::playSound()> @ imm = #0x60
  2e0104: 9b01         	ldr	r3, [sp, #0x4]
  2e0106: 681b         	ldr	r3, [r3]
  2e0108: 33e8         	adds	r3, #0xe8
  2e010a: 681b         	ldr	r3, [r3]
  2e010c: 9a01         	ldr	r2, [sp, #0x4]
  2e010e: 4610         	mov	r0, r2
  2e0110: 4798         	blx	r3
  2e0112: 9b01         	ldr	r3, [sp, #0x4]
  2e0114: 4618         	mov	r0, r3
  2e0116: f2cd fbdf    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x2cd7be
  2e011a: 9b01         	ldr	r3, [sp, #0x4]
  2e011c: 4618         	mov	r0, r3
  2e011e: f2b7 fecb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2b7d96
  2e0122: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x2e0150 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xd8>
  2e0124: 447b         	add	r3, pc
  2e0126: 681b         	ldr	r3, [r3]
  2e0128: 3b01         	subs	r3, #0x1
  2e012a: ea23 72e3    	bic.w	r2, r3, r3, asr #31
  2e012e: 4b09         	ldr	r3, [pc, #0x24]         @ 0x2e0154 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xdc>
  2e0130: 447b         	add	r3, pc
  2e0132: 601a         	str	r2, [r3]
  2e0134: 4b08         	ldr	r3, [pc, #0x20]         @ 0x2e0158 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xe0>
  2e0136: 447b         	add	r3, pc
  2e0138: 681b         	ldr	r3, [r3]
  2e013a: 2b00         	cmp	r3, #0x0
  2e013c: d105         	bne	0x2e014a <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xd2> @ imm = #0xa
  2e013e: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x2e015c <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xe4>
  2e0140: 447b         	add	r3, pc
  2e0142: 681a         	ldr	r2, [r3]
  2e0144: 4b06         	ldr	r3, [pc, #0x18]         @ 0x2e0160 <AMessageBox::onButtonClicked(cocos2d::CCMenuItem*)+0xe8>
  2e0146: 447b         	add	r3, pc
  2e0148: 601a         	str	r2, [r3]
  2e014a: b002         	add	sp, #0x8
  2e014c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2e014d); words below are literal-pool data ---
  2e014e: bf00         	nop
  2e0150: f568 0065    	sbc	r0, r8, #0xe50000
  2e0154: f55c 0065    	adcs	r0, r12, #0xe50000
  2e0158: f556 0065    	adcs	r0, r6, #0xe50000
  2e015c: f550 0065    	adcs	r0, r0, #0xe50000
  2e0160: f54a 0065    	adc	r0, r10, #0xe50000

// ==== AMessageBox::playSound
//      file offset 0x2e0164 (= ELF address; Ghidra 0x2f0164), 48 bytes, Thumb-2
  2e0164: b500         	push	{lr}
  2e0166: b083         	sub	sp, #0xc
  2e0168: 9001         	str	r0, [sp, #0x4]
  2e016a: 4b08         	ldr	r3, [pc, #0x20]         @ 0x2e018c <AMessageBox::playSound()+0x28>
  2e016c: 447b         	add	r3, pc
  2e016e: 4a08         	ldr	r2, [pc, #0x20]         @ 0x2e0190 <AMessageBox::playSound()+0x2c>
  2e0170: 589a         	ldr	r2, [r3, r2]
  2e0172: 6812         	ldr	r2, [r2]
  2e0174: 2a00         	cmp	r2, #0x0
  2e0176: d006         	beq	0x2e0186 <AMessageBox::playSound()+0x22> @ imm = #0xc
  2e0178: 4a05         	ldr	r2, [pc, #0x14]         @ 0x2e0190 <AMessageBox::playSound()+0x2c>
  2e017a: 589b         	ldr	r3, [r3, r2]
  2e017c: 681b         	ldr	r3, [r3]
  2e017e: 4618         	mov	r0, r3
  2e0180: 210d         	movs	r1, #0xd
  2e0182: f117 fe1d    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x117c3a
  2e0186: b003         	add	sp, #0xc
  2e0188: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2e018b); words below are literal-pool data ---
  2e018c: 289c         	cmp	r0, #0x9c
  2e018e: 0065         	lsls	r5, r4, #0x1
  2e0190: d730         	bvc	0x2e01f4 <AMessageBox::playSound()+0x90> @ imm = #0x60
  2e0192: ffff b510    	vsli.32	d27, d0, #0x1f
