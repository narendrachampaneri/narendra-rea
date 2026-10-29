// ProjectileManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 17 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ProjectileManager.cpp

// ==== ProjectileManager::ProjectileManager
//      file offset 0x3b350c (= ELF address; Ghidra 0x3c350c), 64 bytes, Thumb-2
  3b350c: b510         	push	{r4, lr}
  3b350e: b082         	sub	sp, #0x8
  3b3510: 9001         	str	r0, [sp, #0x4]
  3b3512: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x3b3544 <ProjectileManager::ProjectileManager()+0x38>
  3b3514: 447c         	add	r4, pc
  3b3516: 9b01         	ldr	r3, [sp, #0x4]
  3b3518: 4618         	mov	r0, r3
  3b351a: f1e4 fc27    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1e484e
  3b351e: 9b01         	ldr	r3, [sp, #0x4]
  3b3520: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3b3548 <ProjectileManager::ProjectileManager()+0x3c>
  3b3522: 58a2         	ldr	r2, [r4, r2]
  3b3524: 3208         	adds	r2, #0x8
  3b3526: 601a         	str	r2, [r3]
  3b3528: 9801         	ldr	r0, [sp, #0x4]
  3b352a: f000 f80f    	bl	0x3b354c <ProjectileManager::init()> @ imm = #0x1e
  3b352e: 9b01         	ldr	r3, [sp, #0x4]
  3b3530: e005         	b	0x3b353e <ProjectileManager::ProjectileManager()+0x32> @ imm = #0xa
  3b3532: 9b01         	ldr	r3, [sp, #0x4]
  3b3534: 4618         	mov	r0, r3
  3b3536: f1e4 fc4b    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1e4896
  3b353a: f3d4 fdb7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d4b6e
  3b353e: 4618         	mov	r0, r3
  3b3540: b002         	add	sp, #0x8
  3b3542: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b3543); words below are literal-pool data ---
  3b3544: f4f4 0057    	<unknown>
  3b3548: ddf4         	ble	0x3b3534 <ProjectileManager::ProjectileManager()+0x28> @ imm = #-0x18
  3b354a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ProjectileManager::init
//      file offset 0x3b354c (= ELF address; Ghidra 0x3c354c), 376 bytes, Thumb-2
  3b354c: b510         	push	{r4, lr}
  3b354e: b08e         	sub	sp, #0x38
  3b3550: 9003         	str	r0, [sp, #0xc]
  3b3552: 4c50         	ldr	r4, [pc, #0x140]        @ 0x3b3694 <ProjectileManager::init()+0x148>
  3b3554: 447c         	add	r4, pc
  3b3556: 9b03         	ldr	r3, [sp, #0xc]
  3b3558: 2200         	movs	r2, #0x0
  3b355a: 625a         	str	r2, [r3, #0x24]
  3b355c: 9b03         	ldr	r3, [sp, #0xc]
  3b355e: 2200         	movs	r2, #0x0
  3b3560: 629a         	str	r2, [r3, #0x28]
  3b3562: 9b03         	ldr	r3, [sp, #0xc]
  3b3564: 2200         	movs	r2, #0x0
  3b3566: 62da         	str	r2, [r3, #0x2c]
  3b3568: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x3b3698 <ProjectileManager::init()+0x14c>
  3b356a: 447b         	add	r3, pc
  3b356c: 4618         	mov	r0, r3
  3b356e: f7fe ff93    	bl	0x3b2498 <cocos2d::CCSpriteBatchNode::create(char const*)> @ imm = #-0x10da
  3b3572: 4602         	mov	r2, r0
  3b3574: 9b03         	ldr	r3, [sp, #0xc]
  3b3576: 621a         	str	r2, [r3, #0x20]
  3b3578: f1e6 fbdc    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1e67b8
  3b357c: 4602         	mov	r2, r0
  3b357e: 9b03         	ldr	r3, [sp, #0xc]
  3b3580: 615a         	str	r2, [r3, #0x14]
  3b3582: f1e6 fbd7    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1e67ae
  3b3586: 4602         	mov	r2, r0
  3b3588: 9b03         	ldr	r3, [sp, #0xc]
  3b358a: 619a         	str	r2, [r3, #0x18]
  3b358c: f1e6 fbd2    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1e67a4
  3b3590: 4602         	mov	r2, r0
  3b3592: 9b03         	ldr	r3, [sp, #0xc]
  3b3594: 61da         	str	r2, [r3, #0x1c]
  3b3596: 9b03         	ldr	r3, [sp, #0xc]
  3b3598: 6a1b         	ldr	r3, [r3, #0x20]
  3b359a: 4618         	mov	r0, r3
  3b359c: f1e4 fca4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e4948
  3b35a0: 9b03         	ldr	r3, [sp, #0xc]
  3b35a2: 695b         	ldr	r3, [r3, #0x14]
  3b35a4: 4618         	mov	r0, r3
  3b35a6: f1e4 fc9f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e493e
  3b35aa: 9b03         	ldr	r3, [sp, #0xc]
  3b35ac: 699b         	ldr	r3, [r3, #0x18]
  3b35ae: 4618         	mov	r0, r3
  3b35b0: f1e4 fc9a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e4934
  3b35b4: 9b03         	ldr	r3, [sp, #0xc]
  3b35b6: 69db         	ldr	r3, [r3, #0x1c]
  3b35b8: 4618         	mov	r0, r3
  3b35ba: f1e4 fc95    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e492a
  3b35be: 9803         	ldr	r0, [sp, #0xc]
  3b35c0: f000 f8c8    	bl	0x3b3754 <ProjectileManager::initFlames()> @ imm = #0x190
  3b35c4: f22d f874    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22d0e8
  3b35c8: 4602         	mov	r2, r0
  3b35ca: 9b03         	ldr	r3, [sp, #0xc]
  3b35cc: 4933         	ldr	r1, [pc, #0xcc]         @ 0x3b369c <ProjectileManager::init()+0x150>
  3b35ce: 5861         	ldr	r1, [r4, r1]
  3b35d0: 9104         	str	r1, [sp, #0x10]
  3b35d2: 2100         	movs	r1, #0x0
  3b35d4: 9105         	str	r1, [sp, #0x14]
  3b35d6: 4932         	ldr	r1, [pc, #0xc8]         @ 0x3b36a0 <ProjectileManager::init()+0x154>
  3b35d8: 4479         	add	r1, pc
  3b35da: 9100         	str	r1, [sp]
  3b35dc: 2100         	movs	r1, #0x0
  3b35de: 9101         	str	r1, [sp, #0x4]
  3b35e0: 4610         	mov	r0, r2
  3b35e2: 4619         	mov	r1, r3
  3b35e4: ab04         	add	r3, sp, #0x10
  3b35e6: cb0c         	ldm	r3, {r2, r3}
  3b35e8: f22d f8fe    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x22d1fc
  3b35ec: f22d f860    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22d0c0
  3b35f0: 4602         	mov	r2, r0
  3b35f2: 9b03         	ldr	r3, [sp, #0xc]
  3b35f4: 492b         	ldr	r1, [pc, #0xac]         @ 0x3b36a4 <ProjectileManager::init()+0x158>
  3b35f6: 5861         	ldr	r1, [r4, r1]
  3b35f8: 9106         	str	r1, [sp, #0x18]
  3b35fa: 2100         	movs	r1, #0x0
  3b35fc: 9107         	str	r1, [sp, #0x1c]
  3b35fe: 492a         	ldr	r1, [pc, #0xa8]         @ 0x3b36a8 <ProjectileManager::init()+0x15c>
  3b3600: 4479         	add	r1, pc
  3b3602: 9100         	str	r1, [sp]
  3b3604: 2100         	movs	r1, #0x0
  3b3606: 9101         	str	r1, [sp, #0x4]
  3b3608: 4610         	mov	r0, r2
  3b360a: 4619         	mov	r1, r3
  3b360c: ab06         	add	r3, sp, #0x18
  3b360e: cb0c         	ldm	r3, {r2, r3}
  3b3610: f22d f8ea    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x22d1d4
  3b3614: f22d f84c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22d098
  3b3618: 4602         	mov	r2, r0
  3b361a: 9b03         	ldr	r3, [sp, #0xc]
  3b361c: 4923         	ldr	r1, [pc, #0x8c]         @ 0x3b36ac <ProjectileManager::init()+0x160>
  3b361e: 5861         	ldr	r1, [r4, r1]
  3b3620: 9108         	str	r1, [sp, #0x20]
  3b3622: 2100         	movs	r1, #0x0
  3b3624: 9109         	str	r1, [sp, #0x24]
  3b3626: 4922         	ldr	r1, [pc, #0x88]         @ 0x3b36b0 <ProjectileManager::init()+0x164>
  3b3628: 4479         	add	r1, pc
  3b362a: 9100         	str	r1, [sp]
  3b362c: 2100         	movs	r1, #0x0
  3b362e: 9101         	str	r1, [sp, #0x4]
  3b3630: 4610         	mov	r0, r2
  3b3632: 4619         	mov	r1, r3
  3b3634: ab08         	add	r3, sp, #0x20
  3b3636: cb0c         	ldm	r3, {r2, r3}
  3b3638: f22d f8d6    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x22d1ac
  3b363c: f22d f838    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22d070
  3b3640: 4602         	mov	r2, r0
  3b3642: 9b03         	ldr	r3, [sp, #0xc]
  3b3644: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3b36b4 <ProjectileManager::init()+0x168>
  3b3646: 5861         	ldr	r1, [r4, r1]
  3b3648: 910a         	str	r1, [sp, #0x28]
  3b364a: 2100         	movs	r1, #0x0
  3b364c: 910b         	str	r1, [sp, #0x2c]
  3b364e: 491a         	ldr	r1, [pc, #0x68]         @ 0x3b36b8 <ProjectileManager::init()+0x16c>
  3b3650: 4479         	add	r1, pc
  3b3652: 9100         	str	r1, [sp]
  3b3654: 2100         	movs	r1, #0x0
  3b3656: 9101         	str	r1, [sp, #0x4]
  3b3658: 4610         	mov	r0, r2
  3b365a: 4619         	mov	r1, r3
  3b365c: ab0a         	add	r3, sp, #0x28
  3b365e: cb0c         	ldm	r3, {r2, r3}
  3b3660: f22d f8c2    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x22d184
  3b3664: f22d f824    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22d048
  3b3668: 4602         	mov	r2, r0
  3b366a: 9b03         	ldr	r3, [sp, #0xc]
  3b366c: 4913         	ldr	r1, [pc, #0x4c]         @ 0x3b36bc <ProjectileManager::init()+0x170>
  3b366e: 5861         	ldr	r1, [r4, r1]
  3b3670: 910c         	str	r1, [sp, #0x30]
  3b3672: 2100         	movs	r1, #0x0
  3b3674: 910d         	str	r1, [sp, #0x34]
  3b3676: 4912         	ldr	r1, [pc, #0x48]         @ 0x3b36c0 <ProjectileManager::init()+0x174>
  3b3678: 4479         	add	r1, pc
  3b367a: 9100         	str	r1, [sp]
  3b367c: 2100         	movs	r1, #0x0
  3b367e: 9101         	str	r1, [sp, #0x4]
  3b3680: 4610         	mov	r0, r2
  3b3682: 4619         	mov	r1, r3
  3b3684: ab0c         	add	r3, sp, #0x30
  3b3686: cb0c         	ldm	r3, {r2, r3}
  3b3688: f22d f8ae    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x22d15c
  3b368c: 2301         	movs	r3, #0x1
  3b368e: 4618         	mov	r0, r3
  3b3690: b00e         	add	sp, #0x38
  3b3692: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3b3693); words below are literal-pool data ---
  3b3694: f4b4 0057    	<unknown>
  3b3698: 0962         	lsrs	r2, r4, #0x5
  3b369a: 0042         	lsls	r2, r0, #0x1
  3b369c: ddf8         	ble	0x3b3690 <ProjectileManager::init()+0x144> @ imm = #-0x10
  3b369e: ffff 0904    	vtbl.8	d16, {d15, d16}, d4
  3b36a2: 0042         	lsls	r2, r0, #0x1
  3b36a4: ddfc         	ble	0x3b36a0 <ProjectileManager::init()+0x154> @ imm = #-0x8
  3b36a6: ffff 08e8    	vtbx.8	d16, {d31}, d24
  3b36aa: 0042         	lsls	r2, r0, #0x1
  3b36ac: de00         	udf	#0x0
  3b36ae: ffff 08d0    	<unknown>
  3b36b2: 0042         	lsls	r2, r0, #0x1
  3b36b4: de04         	udf	#0x4
  3b36b6: ffff 08b8    	<unknown>
  3b36ba: 0042         	lsls	r2, r0, #0x1
  3b36bc: de08         	udf	#0x8
  3b36be: ffff 089c    	<unknown>
  3b36c2: 0042         	lsls	r2, r0, #0x1

// ==== ProjectileManager::~ProjectileManager
//      file offset 0x3b36c4 (= ELF address; Ghidra 0x3c36c4), 116 bytes, Thumb-2
  3b36c4: b500         	push	{lr}
  3b36c6: b083         	sub	sp, #0xc
  3b36c8: 9001         	str	r0, [sp, #0x4]
  3b36ca: 4919         	ldr	r1, [pc, #0x64]         @ 0x3b3730 <ProjectileManager::~ProjectileManager()+0x6c>
  3b36cc: 4479         	add	r1, pc
  3b36ce: 9b01         	ldr	r3, [sp, #0x4]
  3b36d0: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3b3734 <ProjectileManager::~ProjectileManager()+0x70>
  3b36d2: 588a         	ldr	r2, [r1, r2]
  3b36d4: 3208         	adds	r2, #0x8
  3b36d6: 601a         	str	r2, [r3]
  3b36d8: f22c ffea    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22cfd4
  3b36dc: 4602         	mov	r2, r0
  3b36de: 9b01         	ldr	r3, [sp, #0x4]
  3b36e0: 4610         	mov	r0, r2
  3b36e2: 4619         	mov	r1, r3
  3b36e4: f22d f91c    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x22d238
  3b36e8: 9b01         	ldr	r3, [sp, #0x4]
  3b36ea: 695b         	ldr	r3, [r3, #0x14]
  3b36ec: 4618         	mov	r0, r3
  3b36ee: f1e4 fbe3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e47c6
  3b36f2: 9b01         	ldr	r3, [sp, #0x4]
  3b36f4: 699b         	ldr	r3, [r3, #0x18]
  3b36f6: 4618         	mov	r0, r3
  3b36f8: f1e4 fbde    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e47bc
  3b36fc: 9b01         	ldr	r3, [sp, #0x4]
  3b36fe: 69db         	ldr	r3, [r3, #0x1c]
  3b3700: 4618         	mov	r0, r3
  3b3702: f1e4 fbd9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e47b2
  3b3706: 9b01         	ldr	r3, [sp, #0x4]
  3b3708: 6a1b         	ldr	r3, [r3, #0x20]
  3b370a: 4618         	mov	r0, r3
  3b370c: f1e4 fbd4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e47a8
  3b3710: 9b01         	ldr	r3, [sp, #0x4]
  3b3712: 4618         	mov	r0, r3
  3b3714: f1e4 fb5c    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1e46b8
  3b3718: 2300         	movs	r3, #0x0
  3b371a: 2b00         	cmp	r3, #0x0
  3b371c: d002         	beq	0x3b3724 <ProjectileManager::~ProjectileManager()+0x60> @ imm = #0x4
  3b371e: 9801         	ldr	r0, [sp, #0x4]
  3b3720: f3d4 fcc0    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d4980
  3b3724: 9b01         	ldr	r3, [sp, #0x4]
  3b3726: 4618         	mov	r0, r3
  3b3728: b003         	add	sp, #0xc
  3b372a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b372d); words below are literal-pool data ---
  3b372e: bf00         	nop
  3b3730: f33c 0057    	<unknown>
  3b3734: ddf4         	ble	0x3b3720 <ProjectileManager::~ProjectileManager()+0x5c> @ imm = #-0x18
  3b3736: ffff b500    	<unknown>

// ==== ProjectileManager::~ProjectileManager
//      file offset 0x3b3738 (= ELF address; Ghidra 0x3c3738), 28 bytes, Thumb-2
  3b3738: b500         	push	{lr}
  3b373a: b083         	sub	sp, #0xc
  3b373c: 9001         	str	r0, [sp, #0x4]
  3b373e: 9801         	ldr	r0, [sp, #0x4]
  3b3740: f7ff ffc0    	bl	0x3b36c4 <ProjectileManager::~ProjectileManager()> @ imm = #-0x80
  3b3744: 9801         	ldr	r0, [sp, #0x4]
  3b3746: f3d4 fcad    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d495a
  3b374a: 9b01         	ldr	r3, [sp, #0x4]
  3b374c: 4618         	mov	r0, r3
  3b374e: b003         	add	sp, #0xc
  3b3750: f85d fb04    	ldr	pc, [sp], #4

// ==== ProjectileManager::initFlames
//      file offset 0x3b3754 (= ELF address; Ghidra 0x3c3754), 132 bytes, Thumb-2
  3b3754: b530         	push	{r4, r5, lr}
  3b3756: b085         	sub	sp, #0x14
  3b3758: 9001         	str	r0, [sp, #0x4]
  3b375a: 4d1d         	ldr	r5, [pc, #0x74]         @ 0x3b37d0 <ProjectileManager::initFlames()+0x7c>
  3b375c: 447d         	add	r5, pc
  3b375e: 9b01         	ldr	r3, [sp, #0x4]
  3b3760: 220a         	movs	r2, #0xa
  3b3762: 62da         	str	r2, [r3, #0x2c]
  3b3764: 2300         	movs	r3, #0x0
  3b3766: 9302         	str	r3, [sp, #0x8]
  3b3768: e023         	b	0x3b37b2 <ProjectileManager::initFlames()+0x5e> @ imm = #0x46
  3b376a: f44f 70c4    	mov.w	r0, #0x188
  3b376e: f3d4 f8f9    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3d41f2
  3b3772: 4603         	mov	r3, r0
  3b3774: 461c         	mov	r4, r3
  3b3776: 4620         	mov	r0, r4
  3b3778: f76b f984    	bl	0x31ea84 <FLAME::FLAME()> @ imm = #-0x94cf8
  3b377c: 9403         	str	r4, [sp, #0xc]
  3b377e: 9b03         	ldr	r3, [sp, #0xc]
  3b3780: 4618         	mov	r0, r3
  3b3782: f1e4 fbbb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1e4776
  3b3786: 9b01         	ldr	r3, [sp, #0x4]
  3b3788: 69db         	ldr	r3, [r3, #0x1c]
  3b378a: 4618         	mov	r0, r3
  3b378c: 9903         	ldr	r1, [sp, #0xc]
  3b378e: f1e6 fd6d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e6ada
  3b3792: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3b37d4 <ProjectileManager::initFlames()+0x80>
  3b3794: 58eb         	ldr	r3, [r5, r3]
  3b3796: 681b         	ldr	r3, [r3]
  3b3798: 681b         	ldr	r3, [r3]
  3b379a: 33cc         	adds	r3, #0xcc
  3b379c: 681b         	ldr	r3, [r3]
  3b379e: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x3b37d4 <ProjectileManager::initFlames()+0x80>
  3b37a0: 58aa         	ldr	r2, [r5, r2]
  3b37a2: 6812         	ldr	r2, [r2]
  3b37a4: 4610         	mov	r0, r2
  3b37a6: 9903         	ldr	r1, [sp, #0xc]
  3b37a8: 2204         	movs	r2, #0x4
  3b37aa: 4798         	blx	r3
  3b37ac: 9b02         	ldr	r3, [sp, #0x8]
  3b37ae: 3301         	adds	r3, #0x1
  3b37b0: 9302         	str	r3, [sp, #0x8]
  3b37b2: 9b01         	ldr	r3, [sp, #0x4]
  3b37b4: 6adb         	ldr	r3, [r3, #0x2c]
  3b37b6: 461a         	mov	r2, r3
  3b37b8: 9b02         	ldr	r3, [sp, #0x8]
  3b37ba: 429a         	cmp	r2, r3
  3b37bc: d8d5         	bhi	0x3b376a <ProjectileManager::initFlames()+0x16> @ imm = #-0x56
  3b37be: e004         	b	0x3b37ca <ProjectileManager::initFlames()+0x76> @ imm = #0x8
  3b37c0: 4620         	mov	r0, r4
  3b37c2: f3d4 fc6f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d48de
  3b37c6: f3d4 fc71    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d48e2
  3b37ca: b005         	add	sp, #0x14
  3b37cc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b37cd); words below are literal-pool data ---
  3b37ce: bf00         	nop
  3b37d0: f2ac 0057    	subw	r0, r12, #0x57
  3b37d4: d744         	bvc	0x3b3860 <ProjectileManager::addBodyShapeSprite()+0x88> @ imm = #0x88
  3b37d6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ProjectileManager::addBodyShapeSprite
//      file offset 0x3b37d8 (= ELF address; Ghidra 0x3c37d8), 168 bytes, Thumb-2
  3b37d8: b530         	push	{r4, r5, lr}
  3b37da: b085         	sub	sp, #0x14
  3b37dc: 9001         	str	r0, [sp, #0x4]
  3b37de: 4d25         	ldr	r5, [pc, #0x94]         @ 0x3b3874 <ProjectileManager::addBodyShapeSprite()+0x9c>
  3b37e0: 447d         	add	r5, pc
  3b37e2: 9b01         	ldr	r3, [sp, #0x4]
  3b37e4: 221e         	movs	r2, #0x1e
  3b37e6: 625a         	str	r2, [r3, #0x24]
  3b37e8: 2300         	movs	r3, #0x0
  3b37ea: 9302         	str	r3, [sp, #0x8]
  3b37ec: e023         	b	0x3b3836 <ProjectileManager::addBodyShapeSprite()+0x5e> @ imm = #0x46
  3b37ee: 20c0         	movs	r0, #0xc0
  3b37f0: f3d4 f8b8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3d4170
  3b37f4: 4603         	mov	r3, r0
  3b37f6: 461c         	mov	r4, r3
  3b37f8: 9b01         	ldr	r3, [sp, #0x4]
  3b37fa: 6a1b         	ldr	r3, [r3, #0x20]
  3b37fc: 4620         	mov	r0, r4
  3b37fe: 4619         	mov	r1, r3
  3b3800: f053 fc70    	bl	0x4070e4 <Tracer::Tracer(cocos2d::CCSpriteBatchNode*)> @ imm = #0x538e0
  3b3804: 9403         	str	r4, [sp, #0xc]
  3b3806: 9b03         	ldr	r3, [sp, #0xc]
  3b3808: 4618         	mov	r0, r3
  3b380a: f1e4 fb77    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1e46ee
  3b380e: 9b01         	ldr	r3, [sp, #0x4]
  3b3810: 695b         	ldr	r3, [r3, #0x14]
  3b3812: 4618         	mov	r0, r3
  3b3814: 9903         	ldr	r1, [sp, #0xc]
  3b3816: f1e6 fd29    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e6a52
  3b381a: 9b03         	ldr	r3, [sp, #0xc]
  3b381c: 681b         	ldr	r3, [r3]
  3b381e: 3338         	adds	r3, #0x38
  3b3820: 681b         	ldr	r3, [r3]
  3b3822: 9903         	ldr	r1, [sp, #0xc]
  3b3824: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3b3878 <ProjectileManager::addBodyShapeSprite()+0xa0>
  3b3826: 58aa         	ldr	r2, [r5, r2]
  3b3828: 6812         	ldr	r2, [r2]
  3b382a: 4608         	mov	r0, r1
  3b382c: 4611         	mov	r1, r2
  3b382e: 4798         	blx	r3
  3b3830: 9b02         	ldr	r3, [sp, #0x8]
  3b3832: 3301         	adds	r3, #0x1
  3b3834: 9302         	str	r3, [sp, #0x8]
  3b3836: 9b01         	ldr	r3, [sp, #0x4]
  3b3838: 6a5b         	ldr	r3, [r3, #0x24]
  3b383a: 461a         	mov	r2, r3
  3b383c: 9b02         	ldr	r3, [sp, #0x8]
  3b383e: 429a         	cmp	r2, r3
  3b3840: d8d5         	bhi	0x3b37ee <ProjectileManager::addBodyShapeSprite()+0x16> @ imm = #-0x56
  3b3842: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3b387c <ProjectileManager::addBodyShapeSprite()+0xa4>
  3b3844: 58eb         	ldr	r3, [r5, r3]
  3b3846: 681b         	ldr	r3, [r3]
  3b3848: 681b         	ldr	r3, [r3]
  3b384a: 33cc         	adds	r3, #0xcc
  3b384c: 681b         	ldr	r3, [r3]
  3b384e: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x3b387c <ProjectileManager::addBodyShapeSprite()+0xa4>
  3b3850: 58aa         	ldr	r2, [r5, r2]
  3b3852: 6812         	ldr	r2, [r2]
  3b3854: 4611         	mov	r1, r2
  3b3856: 9a01         	ldr	r2, [sp, #0x4]
  3b3858: 6a12         	ldr	r2, [r2, #0x20]
  3b385a: 4608         	mov	r0, r1
  3b385c: 4611         	mov	r1, r2
  3b385e: 2204         	movs	r2, #0x4
  3b3860: 4798         	blx	r3
  3b3862: e004         	b	0x3b386e <ProjectileManager::addBodyShapeSprite()+0x96> @ imm = #0x8
  3b3864: 4620         	mov	r0, r4
  3b3866: f3d4 fc1d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d483a
  3b386a: f3d4 fc1f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d483e
  3b386e: b005         	add	sp, #0x14
  3b3870: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b3871); words below are literal-pool data ---
  3b3872: bf00         	nop
  3b3874: f228 0057    	<unknown>
  3b3878: da00         	bge	0x3b387c <ProjectileManager::addBodyShapeSprite()+0xa4> @ imm = #0x0
  3b387a: ffff d744    	<unknown>
  3b387e: ffff e92d    	vtbl.8	d30, {d15, d16}, d29

// ==== ProjectileManager::updateStep
//      file offset 0x3b3880 (= ELF address; Ghidra 0x3c3880), 1216 bytes, Thumb-2
  3b3880: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3b3884: b0a9         	sub	sp, #0xa4
  3b3886: 900b         	str	r0, [sp, #0x2c]
  3b3888: 910a         	str	r1, [sp, #0x28]
  3b388a: f8df 4480    	ldr.w	r4, [pc, #0x480]        @ 0x3b3d0c <ProjectileManager::updateStep(float)+0x48c>
  3b388e: 447c         	add	r4, pc
  3b3890: 2300         	movs	r3, #0x0
  3b3892: 930e         	str	r3, [sp, #0x38]
  3b3894: e12a         	b	0x3b3aec <ProjectileManager::updateStep(float)+0x26c> @ imm = #0x254
  3b3896: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3898: 695b         	ldr	r3, [r3, #0x14]
  3b389a: 4618         	mov	r0, r3
  3b389c: 990e         	ldr	r1, [sp, #0x38]
  3b389e: f1e6 fc3f    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e687e
  3b38a2: 4603         	mov	r3, r0
  3b38a4: 9311         	str	r3, [sp, #0x44]
  3b38a6: 9b11         	ldr	r3, [sp, #0x44]
  3b38a8: 681b         	ldr	r3, [r3]
  3b38aa: 3318         	adds	r3, #0x18
  3b38ac: 681b         	ldr	r3, [r3]
  3b38ae: 9811         	ldr	r0, [sp, #0x44]
  3b38b0: 990a         	ldr	r1, [sp, #0x28]
  3b38b2: 4798         	blx	r3
  3b38b4: 9811         	ldr	r0, [sp, #0x44]
  3b38b6: f7fe fc9b    	bl	0x3b21f0 <Projectile::getCollided()> @ imm = #-0x16ca
  3b38ba: 4603         	mov	r3, r0
  3b38bc: 2b00         	cmp	r3, #0x0
  3b38be: f000 8099    	beq.w	0x3b39f4 <ProjectileManager::updateStep(float)+0x174> @ imm = #0x132
  3b38c2: 9811         	ldr	r0, [sp, #0x44]
  3b38c4: 2100         	movs	r1, #0x0
  3b38c6: f7fe fc9b    	bl	0x3b2200 <Projectile::setCollided(bool)> @ imm = #-0x16ca
  3b38ca: ab18         	add	r3, sp, #0x60
  3b38cc: 4618         	mov	r0, r3
  3b38ce: 9911         	ldr	r1, [sp, #0x44]
  3b38d0: f7fe fbcc    	bl	0x3b206c <Projectile::getDamagePosition()> @ imm = #-0x1868
  3b38d4: ab1c         	add	r3, sp, #0x70
  3b38d6: 4618         	mov	r0, r3
  3b38d8: 9911         	ldr	r1, [sp, #0x44]
  3b38da: f7fe fbb7    	bl	0x3b204c <Projectile::getDamageVelocity()> @ imm = #-0x1892
  3b38de: ed9d 7b18    	vldr	d7, [sp, #96]
  3b38e2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b38e6: ee17 0a90    	vmov	r0, s15
  3b38ea: f729 f9cb    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6c6a
  3b38ee: 4680         	mov	r8, r0
  3b38f0: ed9d 7b1a    	vldr	d7, [sp, #104]
  3b38f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b38f8: ee17 0a90    	vmov	r0, s15
  3b38fc: f729 f9c2    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6c7c
  3b3900: 4607         	mov	r7, r0
  3b3902: ed9d 7b1c    	vldr	d7, [sp, #112]
  3b3906: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b390a: ee17 0a90    	vmov	r0, s15
  3b390e: f729 f9b9    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6c8e
  3b3912: 4606         	mov	r6, r0
  3b3914: ed9d 7b1e    	vldr	d7, [sp, #120]
  3b3918: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b391c: ee17 0a90    	vmov	r0, s15
  3b3920: f729 f9b0    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6ca0
  3b3924: 4605         	mov	r5, r0
  3b3926: 9811         	ldr	r0, [sp, #0x44]
  3b3928: f7fe fc76    	bl	0x3b2218 <Projectile::getAmmoType()> @ imm = #-0x1714
  3b392c: 4603         	mov	r3, r0
  3b392e: 4618         	mov	r0, r3
  3b3930: f731 f9ea    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcec2c
  3b3934: 9009         	str	r0, [sp, #0x24]
  3b3936: 9811         	ldr	r0, [sp, #0x44]
  3b3938: f7fe fc4a    	bl	0x3b21d0 <Projectile::getDamageAmount()> @ imm = #-0x176c
  3b393c: ee07 0a90    	vmov	s15, r0
  3b3940: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3b3944: ee17 3a90    	vmov	r3, s15
  3b3948: 4618         	mov	r0, r3
  3b394a: f731 f9dd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcec46
  3b394e: 9008         	str	r0, [sp, #0x20]
  3b3950: 9b11         	ldr	r3, [sp, #0x44]
  3b3952: edd3 7a25    	vldr	s15, [r3, #148]
  3b3956: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3b395a: ee17 3a90    	vmov	r3, s15
  3b395e: 4618         	mov	r0, r3
  3b3960: f731 f9d2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcec5c
  3b3964: 4683         	mov	r11, r0
  3b3966: 9b11         	ldr	r3, [sp, #0x44]
  3b3968: f893 3098    	ldrb.w	r3, [r3, #0x98]
  3b396c: 2b00         	cmp	r3, #0x0
  3b396e: d001         	beq	0x3b3974 <ProjectileManager::updateStep(float)+0xf4> @ imm = #0x2
  3b3970: 2301         	movs	r3, #0x1
  3b3972: e000         	b	0x3b3976 <ProjectileManager::updateStep(float)+0xf6> @ imm = #0x0
  3b3974: 2300         	movs	r3, #0x0
  3b3976: 4618         	mov	r0, r3
  3b3978: f731 f9c6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcec74
  3b397c: 4682         	mov	r10, r0
  3b397e: ab0c         	add	r3, sp, #0x30
  3b3980: 4618         	mov	r0, r3
  3b3982: 9911         	ldr	r1, [sp, #0x44]
  3b3984: f7fe fbaa    	bl	0x3b20dc <Projectile::getDamagedPlayerID()> @ imm = #-0x18ac
  3b3988: ab0c         	add	r3, sp, #0x30
  3b398a: 4618         	mov	r0, r3
  3b398c: f1e6 f856    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e60ac
  3b3990: 4681         	mov	r9, r0
  3b3992: ab0d         	add	r3, sp, #0x34
  3b3994: 4618         	mov	r0, r3
  3b3996: 9911         	ldr	r1, [sp, #0x44]
  3b3998: f7fe fbbc    	bl	0x3b2114 <Projectile::getShooterPlayerID()> @ imm = #-0x1888
  3b399c: ab0d         	add	r3, sp, #0x34
  3b399e: 4618         	mov	r0, r3
  3b39a0: f1e6 f84c    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e6098
  3b39a4: 4603         	mov	r3, r0
  3b39a6: 9a09         	ldr	r2, [sp, #0x24]
  3b39a8: 9200         	str	r2, [sp]
  3b39aa: 9a08         	ldr	r2, [sp, #0x20]
  3b39ac: 9201         	str	r2, [sp, #0x4]
  3b39ae: f8cd b008    	str.w	r11, [sp, #0x8]
  3b39b2: f8cd a00c    	str.w	r10, [sp, #0xc]
  3b39b6: f8cd 9010    	str.w	r9, [sp, #0x10]
  3b39ba: 9305         	str	r3, [sp, #0x14]
  3b39bc: 2300         	movs	r3, #0x0
  3b39be: 9306         	str	r3, [sp, #0x18]
  3b39c0: 4640         	mov	r0, r8
  3b39c2: 4639         	mov	r1, r7
  3b39c4: 4632         	mov	r2, r6
  3b39c6: 462b         	mov	r3, r5
  3b39c8: f1e6 fa22    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e6444
  3b39cc: 4603         	mov	r3, r0
  3b39ce: 9312         	str	r3, [sp, #0x48]
  3b39d0: ab0d         	add	r3, sp, #0x34
  3b39d2: 4618         	mov	r0, r3
  3b39d4: f001 f79e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401f3c
  3b39d8: ab0c         	add	r3, sp, #0x30
  3b39da: 4618         	mov	r0, r3
  3b39dc: f001 f79a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401f34
  3b39e0: f22c fe66    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22cccc
  3b39e4: 4603         	mov	r3, r0
  3b39e6: 4618         	mov	r0, r3
  3b39e8: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3b3d10 <ProjectileManager::updateStep(float)+0x490>
  3b39ea: 447b         	add	r3, pc
  3b39ec: 4619         	mov	r1, r3
  3b39ee: 9a12         	ldr	r2, [sp, #0x48]
  3b39f0: f22d f89c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22d138
  3b39f4: 9811         	ldr	r0, [sp, #0x44]
  3b39f6: f7fe fb15    	bl	0x3b2024 <Projectile::getActive()> @ imm = #-0x19d6
  3b39fa: 4603         	mov	r3, r0
  3b39fc: 2b00         	cmp	r3, #0x0
  3b39fe: d072         	beq	0x3b3ae6 <ProjectileManager::updateStep(float)+0x266> @ imm = #0xe4
  3b3a00: 9b11         	ldr	r3, [sp, #0x44]
  3b3a02: 681b         	ldr	r3, [r3]
  3b3a04: 332c         	adds	r3, #0x2c
  3b3a06: 681b         	ldr	r3, [r3]
  3b3a08: 9811         	ldr	r0, [sp, #0x44]
  3b3a0a: 4798         	blx	r3
  3b3a0c: 4603         	mov	r3, r0
  3b3a0e: 2b20         	cmp	r3, #0x20
  3b3a10: bf14         	ite	ne
  3b3a12: 2300         	movne	r3, #0x0
  3b3a14: 2301         	moveq	r3, #0x1
  3b3a16: b2db         	uxtb	r3, r3
  3b3a18: 2b00         	cmp	r3, #0x0
  3b3a1a: d064         	beq	0x3b3ae6 <ProjectileManager::updateStep(float)+0x266> @ imm = #0xc8
  3b3a1c: 4bbd         	ldr	r3, [pc, #0x2f4]        @ 0x3b3d14 <ProjectileManager::updateStep(float)+0x494>
  3b3a1e: 58e3         	ldr	r3, [r4, r3]
  3b3a20: 681b         	ldr	r3, [r3]
  3b3a22: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3b3a26: 9b11         	ldr	r3, [sp, #0x44]
  3b3a28: 681b         	ldr	r3, [r3]
  3b3a2a: 3320         	adds	r3, #0x20
  3b3a2c: 681b         	ldr	r3, [r3]
  3b3a2e: aa20         	add	r2, sp, #0x80
  3b3a30: 4610         	mov	r0, r2
  3b3a32: 9911         	ldr	r1, [sp, #0x44]
  3b3a34: 4798         	blx	r3
  3b3a36: ab24         	add	r3, sp, #0x90
  3b3a38: ed95 4b0a    	vldr	d4, [r5, #40]
  3b3a3c: ed95 5b0c    	vldr	d5, [r5, #48]
  3b3a40: ed9d 6b20    	vldr	d6, [sp, #128]
  3b3a44: ed9d 7b22    	vldr	d7, [sp, #136]
  3b3a48: 4618         	mov	r0, r3
  3b3a4a: eeb0 0b44    	vmov.f64	d0, d4
  3b3a4e: eeb0 1b45    	vmov.f64	d1, d5
  3b3a52: eeb0 2b46    	vmov.f64	d2, d6
  3b3a56: eeb0 3b47    	vmov.f64	d3, d7
  3b3a5a: f7fe fd69    	bl	0x3b2530 <cocos2d::CCSpriteBatchNode::create(char const*)+0x98> @ imm = #-0x152e
  3b3a5e: ab24         	add	r3, sp, #0x90
  3b3a60: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3a62: f323 fb29    	bl	0x6d70b8 <cpvlength>    @ imm = #0x323652
  3b3a66: ec41 0b17    	vmov	d7, r0, r1
  3b3a6a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b3a6e: edcd 7a13    	vstr	s15, [sp, #76]
  3b3a72: ed9d 7a13    	vldr	s14, [sp, #76]
  3b3a76: eddf 7aa2    	vldr	s15, [pc, #648]         @ 0x3b3d00 <ProjectileManager::updateStep(float)+0x480>
  3b3a7a: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b3a7e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b3a82: d400         	bmi	0x3b3a86 <ProjectileManager::updateStep(float)+0x206> @ imm = #0x0
  3b3a84: e02f         	b	0x3b3ae6 <ProjectileManager::updateStep(float)+0x266> @ imm = #0x5e
  3b3a86: ed9d 7a13    	vldr	s14, [sp, #76]
  3b3a8a: eddf 7a9e    	vldr	s15, [pc, #632]         @ 0x3b3d04 <ProjectileManager::updateStep(float)+0x484>
  3b3a8e: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b3a92: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b3a96: dc00         	bgt	0x3b3a9a <ProjectileManager::updateStep(float)+0x21a> @ imm = #0x0
  3b3a98: e025         	b	0x3b3ae6 <ProjectileManager::updateStep(float)+0x266> @ imm = #0x4a
  3b3a9a: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x3b3d18 <ProjectileManager::updateStep(float)+0x498>
  3b3a9c: 58e3         	ldr	r3, [r4, r3]
  3b3a9e: 681d         	ldr	r5, [r3]
  3b3aa0: f7fe fcc6    	bl	0x3b2430 <Projectile::addBodyShape(cpSpace*)+0x118> @ imm = #-0x1674
  3b3aa4: 4603         	mov	r3, r0
  3b3aa6: ee07 3a90    	vmov	s15, r3
  3b3aaa: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3b3aae: eddf 7a96    	vldr	s15, [pc, #600]         @ 0x3b3d08 <ProjectileManager::updateStep(float)+0x488>
  3b3ab2: ee87 7a27    	vdiv.f32	s14, s14, s15
  3b3ab6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3b3aba: ee77 7a67    	vsub.f32	s15, s14, s15
  3b3abe: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3b3ac2: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3b3ac6: ee26 6b07    	vmul.f64	d6, d6, d7
  3b3aca: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  3b3ace: ee36 7b07    	vadd.f64	d7, d6, d7
  3b3ad2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b3ad6: 4628         	mov	r0, r5
  3b3ad8: 2110         	movs	r1, #0x10
  3b3ada: f04f 527e    	mov.w	r2, #0x3f800000
  3b3ade: ee17 3a90    	vmov	r3, s15
  3b3ae2: f044 f9cd    	bl	0x3f7e80 <Sound::playSoundVP(int, float, float)> @ imm = #0x4439a
  3b3ae6: 9b0e         	ldr	r3, [sp, #0x38]
  3b3ae8: 3301         	adds	r3, #0x1
  3b3aea: 930e         	str	r3, [sp, #0x38]
  3b3aec: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3aee: 695b         	ldr	r3, [r3, #0x14]
  3b3af0: 4618         	mov	r0, r3
  3b3af2: f1e6 faf5    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e65ea
  3b3af6: 4602         	mov	r2, r0
  3b3af8: 9b0e         	ldr	r3, [sp, #0x38]
  3b3afa: 429a         	cmp	r2, r3
  3b3afc: bf94         	ite	ls
  3b3afe: 2300         	movls	r3, #0x0
  3b3b00: 2301         	movhi	r3, #0x1
  3b3b02: b2db         	uxtb	r3, r3
  3b3b04: 2b00         	cmp	r3, #0x0
  3b3b06: f47f aec6    	bne.w	0x3b3896 <ProjectileManager::updateStep(float)+0x16> @ imm = #-0x274
  3b3b0a: 2300         	movs	r3, #0x0
  3b3b0c: 930f         	str	r3, [sp, #0x3c]
  3b3b0e: e00e         	b	0x3b3b2e <ProjectileManager::updateStep(float)+0x2ae> @ imm = #0x1c
  3b3b10: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3b12: 69db         	ldr	r3, [r3, #0x1c]
  3b3b14: 4618         	mov	r0, r3
  3b3b16: 990f         	ldr	r1, [sp, #0x3c]
  3b3b18: f1e6 fb02    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6604
  3b3b1c: 4603         	mov	r3, r0
  3b3b1e: 9314         	str	r3, [sp, #0x50]
  3b3b20: 9814         	ldr	r0, [sp, #0x50]
  3b3b22: 990a         	ldr	r1, [sp, #0x28]
  3b3b24: f76b fb4c    	bl	0x31f1c0 <FLAME::updateStep(float)> @ imm = #-0x94968
  3b3b28: 9b0f         	ldr	r3, [sp, #0x3c]
  3b3b2a: 3301         	adds	r3, #0x1
  3b3b2c: 930f         	str	r3, [sp, #0x3c]
  3b3b2e: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3b30: 69db         	ldr	r3, [r3, #0x1c]
  3b3b32: 4618         	mov	r0, r3
  3b3b34: f1e6 fad4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e65a8
  3b3b38: 4602         	mov	r2, r0
  3b3b3a: 9b0f         	ldr	r3, [sp, #0x3c]
  3b3b3c: 429a         	cmp	r2, r3
  3b3b3e: bf94         	ite	ls
  3b3b40: 2300         	movls	r3, #0x0
  3b3b42: 2301         	movhi	r3, #0x1
  3b3b44: b2db         	uxtb	r3, r3
  3b3b46: 2b00         	cmp	r3, #0x0
  3b3b48: d1e2         	bne	0x3b3b10 <ProjectileManager::updateStep(float)+0x290> @ imm = #-0x3c
  3b3b4a: 2300         	movs	r3, #0x0
  3b3b4c: 9310         	str	r3, [sp, #0x40]
  3b3b4e: e014         	b	0x3b3b7a <ProjectileManager::updateStep(float)+0x2fa> @ imm = #0x28
  3b3b50: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3b52: 699a         	ldr	r2, [r3, #0x18]
  3b3b54: 9b10         	ldr	r3, [sp, #0x40]
  3b3b56: 4610         	mov	r0, r2
  3b3b58: 4619         	mov	r1, r3
  3b3b5a: f1e6 fae1    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e65c2
  3b3b5e: 4603         	mov	r3, r0
  3b3b60: 9315         	str	r3, [sp, #0x54]
  3b3b62: 9b15         	ldr	r3, [sp, #0x54]
  3b3b64: 681b         	ldr	r3, [r3]
  3b3b66: f503 73da    	add.w	r3, r3, #0x1b4
  3b3b6a: 681b         	ldr	r3, [r3]
  3b3b6c: 9a15         	ldr	r2, [sp, #0x54]
  3b3b6e: 4610         	mov	r0, r2
  3b3b70: 990a         	ldr	r1, [sp, #0x28]
  3b3b72: 4798         	blx	r3
  3b3b74: 9b10         	ldr	r3, [sp, #0x40]
  3b3b76: 3301         	adds	r3, #0x1
  3b3b78: 9310         	str	r3, [sp, #0x40]
  3b3b7a: 9d10         	ldr	r5, [sp, #0x40]
  3b3b7c: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3b7e: 699b         	ldr	r3, [r3, #0x18]
  3b3b80: 4618         	mov	r0, r3
  3b3b82: f1e6 faad    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e655a
  3b3b86: 4603         	mov	r3, r0
  3b3b88: 429d         	cmp	r5, r3
  3b3b8a: bf2c         	ite	hs
  3b3b8c: 2300         	movhs	r3, #0x0
  3b3b8e: 2301         	movlo	r3, #0x1
  3b3b90: b2db         	uxtb	r3, r3
  3b3b92: 2b00         	cmp	r3, #0x0
  3b3b94: d1dc         	bne	0x3b3b50 <ProjectileManager::updateStep(float)+0x2d0> @ imm = #-0x48
  3b3b96: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3b98: 699b         	ldr	r3, [r3, #0x18]
  3b3b9a: 4618         	mov	r0, r3
  3b3b9c: f1e6 faa0    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e6540
  3b3ba0: 4603         	mov	r3, r0
  3b3ba2: 2b00         	cmp	r3, #0x0
  3b3ba4: bf0c         	ite	eq
  3b3ba6: 2300         	moveq	r3, #0x0
  3b3ba8: 2301         	movne	r3, #0x1
  3b3baa: b2db         	uxtb	r3, r3
  3b3bac: 2b00         	cmp	r3, #0x0
  3b3bae: f000 80c4    	beq.w	0x3b3d3a <ProjectileManager::updateStep(float)+0x4ba> @ imm = #0x188
  3b3bb2: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3bb4: 6a9b         	ldr	r3, [r3, #0x28]
  3b3bb6: 1c5a         	adds	r2, r3, #0x1
  3b3bb8: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3bba: 629a         	str	r2, [r3, #0x28]
  3b3bbc: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3bbe: 6a9b         	ldr	r3, [r3, #0x28]
  3b3bc0: 461d         	mov	r5, r3
  3b3bc2: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3bc4: 699b         	ldr	r3, [r3, #0x18]
  3b3bc6: 4618         	mov	r0, r3
  3b3bc8: f1e6 fa8a    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e6514
  3b3bcc: 4603         	mov	r3, r0
  3b3bce: 429d         	cmp	r5, r3
  3b3bd0: bf34         	ite	lo
  3b3bd2: 2300         	movlo	r3, #0x0
  3b3bd4: 2301         	movhs	r3, #0x1
  3b3bd6: b2db         	uxtb	r3, r3
  3b3bd8: 2b00         	cmp	r3, #0x0
  3b3bda: d002         	beq	0x3b3be2 <ProjectileManager::updateStep(float)+0x362> @ imm = #0x4
  3b3bdc: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3bde: 2200         	movs	r2, #0x0
  3b3be0: 629a         	str	r2, [r3, #0x28]
  3b3be2: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3be4: 699a         	ldr	r2, [r3, #0x18]
  3b3be6: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3be8: 6a9b         	ldr	r3, [r3, #0x28]
  3b3bea: 4610         	mov	r0, r2
  3b3bec: 4619         	mov	r1, r3
  3b3bee: f1e6 fa97    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e652e
  3b3bf2: 4603         	mov	r3, r0
  3b3bf4: 9316         	str	r3, [sp, #0x58]
  3b3bf6: 9b16         	ldr	r3, [sp, #0x58]
  3b3bf8: 681b         	ldr	r3, [r3]
  3b3bfa: f503 73f4    	add.w	r3, r3, #0x1e8
  3b3bfe: 681b         	ldr	r3, [r3]
  3b3c00: 9a16         	ldr	r2, [sp, #0x58]
  3b3c02: 4610         	mov	r0, r2
  3b3c04: 4798         	blx	r3
  3b3c06: 4603         	mov	r3, r0
  3b3c08: 2b00         	cmp	r3, #0x0
  3b3c0a: d078         	beq	0x3b3cfe <ProjectileManager::updateStep(float)+0x47e> @ imm = #0xf0
  3b3c0c: 9b16         	ldr	r3, [sp, #0x58]
  3b3c0e: f04f 0200    	mov.w	r2, #0x0
  3b3c12: f2c4 1220    	movt	r2, #0x4120
  3b3c16: f8c3 2118    	str.w	r2, [r3, #0x118]
  3b3c1a: 9b16         	ldr	r3, [sp, #0x58]
  3b3c1c: 681b         	ldr	r3, [r3]
  3b3c1e: 3350         	adds	r3, #0x50
  3b3c20: 681b         	ldr	r3, [r3]
  3b3c22: 9a16         	ldr	r2, [sp, #0x58]
  3b3c24: 4610         	mov	r0, r2
  3b3c26: 4798         	blx	r3
  3b3c28: 4603         	mov	r3, r0
  3b3c2a: 681b         	ldr	r3, [r3]
  3b3c2c: 4618         	mov	r0, r3
  3b3c2e: f729 f829    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6fae
  3b3c32: 4680         	mov	r8, r0
  3b3c34: 9b16         	ldr	r3, [sp, #0x58]
  3b3c36: 681b         	ldr	r3, [r3]
  3b3c38: 3350         	adds	r3, #0x50
  3b3c3a: 681b         	ldr	r3, [r3]
  3b3c3c: 9a16         	ldr	r2, [sp, #0x58]
  3b3c3e: 4610         	mov	r0, r2
  3b3c40: 4798         	blx	r3
  3b3c42: 4603         	mov	r3, r0
  3b3c44: 685b         	ldr	r3, [r3, #0x4]
  3b3c46: 4618         	mov	r0, r3
  3b3c48: f729 f81c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6fc8
  3b3c4c: 4607         	mov	r7, r0
  3b3c4e: f04f 0000    	mov.w	r0, #0x0
  3b3c52: f729 f817    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6fd2
  3b3c56: 4606         	mov	r6, r0
  3b3c58: f04f 0000    	mov.w	r0, #0x0
  3b3c5c: f729 f812    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6fdc
  3b3c60: 4605         	mov	r5, r0
  3b3c62: 9b16         	ldr	r3, [sp, #0x58]
  3b3c64: 681b         	ldr	r3, [r3]
  3b3c66: f503 731f    	add.w	r3, r3, #0x27c
  3b3c6a: 681b         	ldr	r3, [r3]
  3b3c6c: 9816         	ldr	r0, [sp, #0x58]
  3b3c6e: 4798         	blx	r3
  3b3c70: 4603         	mov	r3, r0
  3b3c72: 4618         	mov	r0, r3
  3b3c74: f731 f848    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcef70
  3b3c78: 4682         	mov	r10, r0
  3b3c7a: f04f 507e    	mov.w	r0, #0x3f800000
  3b3c7e: f729 f801    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xd6ffe
  3b3c82: 4681         	mov	r9, r0
  3b3c84: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3b3d1c <ProjectileManager::updateStep(float)+0x49c>
  3b3c86: 58e3         	ldr	r3, [r4, r3]
  3b3c88: 681b         	ldr	r3, [r3]
  3b3c8a: 1c59         	adds	r1, r3, #0x1
  3b3c8c: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x3b3d1c <ProjectileManager::updateStep(float)+0x49c>
  3b3c8e: 58a2         	ldr	r2, [r4, r2]
  3b3c90: 6011         	str	r1, [r2]
  3b3c92: 4618         	mov	r0, r3
  3b3c94: f731 f838    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xcef90
  3b3c98: 4604         	mov	r4, r0
  3b3c9a: 9b16         	ldr	r3, [sp, #0x58]
  3b3c9c: f503 73aa    	add.w	r3, r3, #0x154
  3b3ca0: 4618         	mov	r0, r3
  3b3ca2: f1e5 fecb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1e5d96
  3b3ca6: 4603         	mov	r3, r0
  3b3ca8: f8cd a000    	str.w	r10, [sp]
  3b3cac: f8cd 9004    	str.w	r9, [sp, #0x4]
  3b3cb0: 9402         	str	r4, [sp, #0x8]
  3b3cb2: 9303         	str	r3, [sp, #0xc]
  3b3cb4: 2300         	movs	r3, #0x0
  3b3cb6: 9304         	str	r3, [sp, #0x10]
  3b3cb8: 4640         	mov	r0, r8
  3b3cba: 4639         	mov	r1, r7
  3b3cbc: 4632         	mov	r2, r6
  3b3cbe: 462b         	mov	r3, r5
  3b3cc0: f1e6 f8a6    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1e614c
  3b3cc4: 4603         	mov	r3, r0
  3b3cc6: 9317         	str	r3, [sp, #0x5c]
  3b3cc8: 9b16         	ldr	r3, [sp, #0x58]
  3b3cca: 681b         	ldr	r3, [r3]
  3b3ccc: f503 7349    	add.w	r3, r3, #0x324
  3b3cd0: 681b         	ldr	r3, [r3]
  3b3cd2: 9816         	ldr	r0, [sp, #0x58]
  3b3cd4: 9917         	ldr	r1, [sp, #0x5c]
  3b3cd6: 4798         	blx	r3
  3b3cd8: f22c fcea    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22c9d4
  3b3cdc: 4603         	mov	r3, r0
  3b3cde: 4618         	mov	r0, r3
  3b3ce0: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3b3d20 <ProjectileManager::updateStep(float)+0x4a0>
  3b3ce2: 447b         	add	r3, pc
  3b3ce4: 4619         	mov	r1, r3
  3b3ce6: 9a16         	ldr	r2, [sp, #0x58]
  3b3ce8: f22c ff20    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22ce40
  3b3cec: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3cee: 699a         	ldr	r2, [r3, #0x18]
  3b3cf0: 9b0b         	ldr	r3, [sp, #0x2c]
  3b3cf2: 6a9b         	ldr	r3, [r3, #0x28]
  3b3cf4: 4610         	mov	r0, r2
  3b3cf6: 4619         	mov	r1, r3
  3b3cf8: 2201         	movs	r2, #0x1
  3b3cfa: f1e6 fb0f    	bl	0x59a31c <cocos2d::CCArray::removeObjectAtIndex(unsigned int, bool)> @ imm = #0x1e661e
  3b3cfe: e01c         	b	0x3b3d3a <ProjectileManager::updateStep(float)+0x4ba> @ imm = #0x38
  3b3d00: 0000         	movs	r0, r0
  3b3d02: 4270         	rsbs	r0, r6, #0
  3b3d04: 0000         	movs	r0, r0
  3b3d06: 4220         	tst	r0, r4
  3b3d08: 0000         	movs	r0, r0
  3b3d0a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3b3f0c <ProjectileManager::weaponFired(cocos2d::CCObject*)+0x94>
  3b3d0c: f17a 0057    	sbcs	r0, r10, #0x57
  3b3d10: 0536         	lsls	r6, r6, #0x14
  3b3d12: 0042         	lsls	r2, r0, #0x1
  3b3d14: d784         	bvc	0x3b3c20 <ProjectileManager::updateStep(float)+0x3a0> @ imm = #-0xf8
  3b3d16: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3b3d1a: ffff d9c4    	<unknown>
  3b3d1e: ffff 024e    	<unknown>
  3b3d22: 0042         	lsls	r2, r0, #0x1
  3b3d24: ab0d         	add	r3, sp, #0x34
  3b3d26: 4618         	mov	r0, r3
  3b3d28: f001 f5f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401be8
  3b3d2c: e7ff         	b	0x3b3d2e <ProjectileManager::updateStep(float)+0x4ae> @ imm = #-0x2
  3b3d2e: ab0c         	add	r3, sp, #0x30
  3b3d30: 4618         	mov	r0, r3
  3b3d32: f001 f5ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401bde
  3b3d36: f3d4 f9b9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d4372
  3b3d3a: b029         	add	sp, #0xa4
  3b3d3c: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}

// ==== ProjectileManager::addBullet
//      file offset 0x3b3d40 (= ELF address; Ghidra 0x3c3d40), 312 bytes, Thumb-2
  3b3d40: b082         	sub	sp, #0x8
  3b3d42: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
  3b3d46: ed2d 8b02    	vpush	{d8}
  3b3d4a: b097         	sub	sp, #0x5c
  3b3d4c: 9011         	str	r0, [sp, #0x44]
  3b3d4e: a920         	add	r1, sp, #0x80
  3b3d50: e881 000c    	stm.w	r1, {r2, r3}
  3b3d54: 9b11         	ldr	r3, [sp, #0x44]
  3b3d56: 6a5b         	ldr	r3, [r3, #0x24]
  3b3d58: 461c         	mov	r4, r3
  3b3d5a: 9b11         	ldr	r3, [sp, #0x44]
  3b3d5c: 695b         	ldr	r3, [r3, #0x14]
  3b3d5e: 4618         	mov	r0, r3
  3b3d60: f1e6 f9be    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e637c
  3b3d64: 4603         	mov	r3, r0
  3b3d66: 429c         	cmp	r4, r3
  3b3d68: bf34         	ite	lo
  3b3d6a: 2300         	movlo	r3, #0x0
  3b3d6c: 2301         	movhs	r3, #0x1
  3b3d6e: b2db         	uxtb	r3, r3
  3b3d70: 2b00         	cmp	r3, #0x0
  3b3d72: d002         	beq	0x3b3d7a <ProjectileManager::addBullet(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)+0x3a> @ imm = #0x4
  3b3d74: 9b11         	ldr	r3, [sp, #0x44]
  3b3d76: 2200         	movs	r2, #0x0
  3b3d78: 625a         	str	r2, [r3, #0x24]
  3b3d7a: 9b11         	ldr	r3, [sp, #0x44]
  3b3d7c: 695a         	ldr	r2, [r3, #0x14]
  3b3d7e: 9b11         	ldr	r3, [sp, #0x44]
  3b3d80: 6a5b         	ldr	r3, [r3, #0x24]
  3b3d82: 4610         	mov	r0, r2
  3b3d84: 4619         	mov	r1, r3
  3b3d86: f1e6 f9cb    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6396
  3b3d8a: 4603         	mov	r3, r0
  3b3d8c: 9313         	str	r3, [sp, #0x4c]
  3b3d8e: ed9d 7a24    	vldr	s14, [sp, #144]
  3b3d92: eddf 7a38    	vldr	s15, [pc, #224]         @ 0x3b3e74 <ProjectileManager::addBullet(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)+0x134>
  3b3d96: ee67 7a27    	vmul.f32	s15, s14, s15
  3b3d9a: eef1 7a67    	vneg.f32	s15, s15
  3b3d9e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b3da2: ed8d 7b14    	vstr	d7, [sp, #80]
  3b3da6: 9b13         	ldr	r3, [sp, #0x4c]
  3b3da8: 681b         	ldr	r3, [r3]
  3b3daa: 331c         	adds	r3, #0x1c
  3b3dac: 681d         	ldr	r5, [r3]
  3b3dae: 9b2a         	ldr	r3, [sp, #0xa8]
  3b3db0: 681b         	ldr	r3, [r3]
  3b3db2: f503 731f    	add.w	r3, r3, #0x27c
  3b3db6: 681b         	ldr	r3, [r3]
  3b3db8: 982a         	ldr	r0, [sp, #0xa8]
  3b3dba: 4798         	blx	r3
  3b3dbc: 4680         	mov	r8, r0
  3b3dbe: 9b2a         	ldr	r3, [sp, #0xa8]
  3b3dc0: 681b         	ldr	r3, [r3]
  3b3dc2: f503 7329    	add.w	r3, r3, #0x2a4
  3b3dc6: 681b         	ldr	r3, [r3]
  3b3dc8: 982a         	ldr	r0, [sp, #0xa8]
  3b3dca: 4798         	blx	r3
  3b3dcc: 4607         	mov	r7, r0
  3b3dce: 9b2a         	ldr	r3, [sp, #0xa8]
  3b3dd0: 681b         	ldr	r3, [r3]
  3b3dd2: f503 7326    	add.w	r3, r3, #0x298
  3b3dd6: 681b         	ldr	r3, [r3]
  3b3dd8: 982a         	ldr	r0, [sp, #0xa8]
  3b3dda: 4798         	blx	r3
  3b3ddc: 4606         	mov	r6, r0
  3b3dde: ed9d 7b14    	vldr	d7, [sp, #80]
  3b3de2: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3b3de6: 9b2a         	ldr	r3, [sp, #0xa8]
  3b3de8: 681b         	ldr	r3, [r3]
  3b3dea: f503 733a    	add.w	r3, r3, #0x2e8
  3b3dee: 681b         	ldr	r3, [r3]
  3b3df0: 982a         	ldr	r0, [sp, #0xa8]
  3b3df2: 4798         	blx	r3
  3b3df4: 4681         	mov	r9, r0
  3b3df6: ab12         	add	r3, sp, #0x48
  3b3df8: 4618         	mov	r0, r3
  3b3dfa: 9930         	ldr	r1, [sp, #0xc0]
  3b3dfc: f002 f374    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4026e8
  3b3e00: 466c         	mov	r4, sp
  3b3e02: ab20         	add	r3, sp, #0x80
  3b3e04: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3e06: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b3e0a: ac04         	add	r4, sp, #0x10
  3b3e0c: ab26         	add	r3, sp, #0x98
  3b3e0e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3e10: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b3e14: ed8d 8a08    	vstr	s16, [sp, #32]
  3b3e18: f8cd 9024    	str.w	r9, [sp, #0x24]
  3b3e1c: ac0a         	add	r4, sp, #0x28
  3b3e1e: ab2c         	add	r3, sp, #0xb0
  3b3e20: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3e22: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b3e26: ab12         	add	r3, sp, #0x48
  3b3e28: 930e         	str	r3, [sp, #0x38]
  3b3e2a: 9813         	ldr	r0, [sp, #0x4c]
  3b3e2c: 4641         	mov	r1, r8
  3b3e2e: 463a         	mov	r2, r7
  3b3e30: 4633         	mov	r3, r6
  3b3e32: 47a8         	blx	r5
  3b3e34: ab12         	add	r3, sp, #0x48
  3b3e36: 4618         	mov	r0, r3
  3b3e38: f001 f56c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401ad8
  3b3e3c: 9b13         	ldr	r3, [sp, #0x4c]
  3b3e3e: 681b         	ldr	r3, [r3]
  3b3e40: 3330         	adds	r3, #0x30
  3b3e42: 681b         	ldr	r3, [r3]
  3b3e44: 9a2b         	ldr	r2, [sp, #0xac]
  3b3e46: 9813         	ldr	r0, [sp, #0x4c]
  3b3e48: 4611         	mov	r1, r2
  3b3e4a: 4798         	blx	r3
  3b3e4c: 9b11         	ldr	r3, [sp, #0x44]
  3b3e4e: 6a5b         	ldr	r3, [r3, #0x24]
  3b3e50: 1c5a         	adds	r2, r3, #0x1
  3b3e52: 9b11         	ldr	r3, [sp, #0x44]
  3b3e54: 625a         	str	r2, [r3, #0x24]
  3b3e56: e005         	b	0x3b3e64 <ProjectileManager::addBullet(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)+0x124> @ imm = #0xa
  3b3e58: ab12         	add	r3, sp, #0x48
  3b3e5a: 4618         	mov	r0, r3
  3b3e5c: f001 f55a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401ab4
  3b3e60: f3d4 f924    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d4248
  3b3e64: b017         	add	sp, #0x5c
  3b3e66: ecbd 8b02    	vpop	{d8}
  3b3e6a: e8bd 43f0    	pop.w	{r4, r5, r6, r7, r8, r9, lr}
  3b3e6e: b002         	add	sp, #0x8
  3b3e70: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3b3e71); words below are literal-pool data ---
  3b3e72: bf00         	nop
  3b3e74: fa35 3c8e    	<unknown>

// ==== ProjectileManager::weaponFired
//      file offset 0x3b3e78 (= ELF address; Ghidra 0x3c3e78), 436 bytes, Thumb-2
  3b3e78: b530         	push	{r4, r5, lr}
  3b3e7a: ed2d 8b02    	vpush	{d8}
  3b3e7e: b0ab         	sub	sp, #0xac
  3b3e80: 9011         	str	r0, [sp, #0x44]
  3b3e82: 9110         	str	r1, [sp, #0x40]
  3b3e84: 9b10         	ldr	r3, [sp, #0x40]
  3b3e86: 9315         	str	r3, [sp, #0x54]
  3b3e88: 9815         	ldr	r0, [sp, #0x54]
  3b3e8a: 2100         	movs	r1, #0x0
  3b3e8c: f1e6 f948    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6290
  3b3e90: 4603         	mov	r3, r0
  3b3e92: 9316         	str	r3, [sp, #0x58]
  3b3e94: 9815         	ldr	r0, [sp, #0x54]
  3b3e96: 2101         	movs	r1, #0x1
  3b3e98: f1e6 f942    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6284
  3b3e9c: 4603         	mov	r3, r0
  3b3e9e: 9317         	str	r3, [sp, #0x5c]
  3b3ea0: 9815         	ldr	r0, [sp, #0x54]
  3b3ea2: 2102         	movs	r1, #0x2
  3b3ea4: f1e6 f93c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6278
  3b3ea8: 4603         	mov	r3, r0
  3b3eaa: 9318         	str	r3, [sp, #0x60]
  3b3eac: 9815         	ldr	r0, [sp, #0x54]
  3b3eae: 2103         	movs	r1, #0x3
  3b3eb0: f1e6 f936    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e626c
  3b3eb4: 4603         	mov	r3, r0
  3b3eb6: 9319         	str	r3, [sp, #0x64]
  3b3eb8: 9815         	ldr	r0, [sp, #0x54]
  3b3eba: 2104         	movs	r1, #0x4
  3b3ebc: f1e6 f930    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6260
  3b3ec0: 4603         	mov	r3, r0
  3b3ec2: 931a         	str	r3, [sp, #0x68]
  3b3ec4: 9815         	ldr	r0, [sp, #0x54]
  3b3ec6: 2105         	movs	r1, #0x5
  3b3ec8: f1e6 f92a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6254
  3b3ecc: 4603         	mov	r3, r0
  3b3ece: 931b         	str	r3, [sp, #0x6c]
  3b3ed0: 9815         	ldr	r0, [sp, #0x54]
  3b3ed2: 2106         	movs	r1, #0x6
  3b3ed4: f1e6 f924    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6248
  3b3ed8: 4603         	mov	r3, r0
  3b3eda: 931c         	str	r3, [sp, #0x70]
  3b3edc: 9815         	ldr	r0, [sp, #0x54]
  3b3ede: 2107         	movs	r1, #0x7
  3b3ee0: f1e6 f91e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e623c
  3b3ee4: 4603         	mov	r3, r0
  3b3ee6: 931d         	str	r3, [sp, #0x74]
  3b3ee8: 9818         	ldr	r0, [sp, #0x60]
  3b3eea: f728 fec3    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd727a
  3b3eee: ee07 0a90    	vmov	s15, r0
  3b3ef2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b3ef6: 9819         	ldr	r0, [sp, #0x64]
  3b3ef8: f728 febc    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7288
  3b3efc: ee07 0a90    	vmov	s15, r0
  3b3f00: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b3f04: ab1e         	add	r3, sp, #0x78
  3b3f06: 4618         	mov	r0, r3
  3b3f08: eeb0 0b48    	vmov.f64	d0, d8
  3b3f0c: eeb0 1b47    	vmov.f64	d1, d7
  3b3f10: f7fe face    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1a64
  3b3f14: 981a         	ldr	r0, [sp, #0x68]
  3b3f16: f728 fead    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd72a6
  3b3f1a: ee07 0a90    	vmov	s15, r0
  3b3f1e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b3f22: 981b         	ldr	r0, [sp, #0x6c]
  3b3f24: f728 fea6    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd72b4
  3b3f28: ee07 0a90    	vmov	s15, r0
  3b3f2c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b3f30: ab22         	add	r3, sp, #0x88
  3b3f32: 4618         	mov	r0, r3
  3b3f34: eeb0 0b48    	vmov.f64	d0, d8
  3b3f38: eeb0 1b47    	vmov.f64	d1, d7
  3b3f3c: f7fe fab8    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1a90
  3b3f40: 2300         	movs	r3, #0x0
  3b3f42: 9314         	str	r3, [sp, #0x50]
  3b3f44: e052         	b	0x3b3fec <ProjectileManager::weaponFired(cocos2d::CCObject*)+0x174> @ imm = #0xa4
  3b3f46: 9b16         	ldr	r3, [sp, #0x58]
  3b3f48: 681b         	ldr	r3, [r3]
  3b3f4a: f503 7348    	add.w	r3, r3, #0x320
  3b3f4e: 681b         	ldr	r3, [r3]
  3b3f50: aa26         	add	r2, sp, #0x98
  3b3f52: 4610         	mov	r0, r2
  3b3f54: 9916         	ldr	r1, [sp, #0x58]
  3b3f56: 4798         	blx	r3
  3b3f58: 9817         	ldr	r0, [sp, #0x5c]
  3b3f5a: f728 fe8b    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd72ea
  3b3f5e: ee08 0a10    	vmov	s16, r0
  3b3f62: 9b16         	ldr	r3, [sp, #0x58]
  3b3f64: 681b         	ldr	r3, [r3]
  3b3f66: f503 733e    	add.w	r3, r3, #0x2f8
  3b3f6a: 681b         	ldr	r3, [r3]
  3b3f6c: 9816         	ldr	r0, [sp, #0x58]
  3b3f6e: 4798         	blx	r3
  3b3f70: ee07 0a90    	vmov	s15, r0
  3b3f74: ee38 8a27    	vadd.f32	s16, s16, s15
  3b3f78: 981c         	ldr	r0, [sp, #0x70]
  3b3f7a: f738 ff6b    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xc712a
  3b3f7e: 4605         	mov	r5, r0
  3b3f80: 981d         	ldr	r0, [sp, #0x74]
  3b3f82: f1e5 fcd1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e59a2
  3b3f86: 4604         	mov	r4, r0
  3b3f88: ab12         	add	r3, sp, #0x48
  3b3f8a: 4618         	mov	r0, r3
  3b3f8c: f3d6 fa32    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d6464
  3b3f90: aa13         	add	r2, sp, #0x4c
  3b3f92: ab12         	add	r3, sp, #0x48
  3b3f94: 4610         	mov	r0, r2
  3b3f96: 4621         	mov	r1, r4
  3b3f98: 461a         	mov	r2, r3
  3b3f9a: f002 f561    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x402ac2
  3b3f9e: ed8d 8a02    	vstr	s16, [sp, #8]
  3b3fa2: ac04         	add	r4, sp, #0x10
  3b3fa4: ab1e         	add	r3, sp, #0x78
  3b3fa6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3fa8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b3fac: 9b16         	ldr	r3, [sp, #0x58]
  3b3fae: 9308         	str	r3, [sp, #0x20]
  3b3fb0: 9509         	str	r5, [sp, #0x24]
  3b3fb2: ac0a         	add	r4, sp, #0x28
  3b3fb4: ab22         	add	r3, sp, #0x88
  3b3fb6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b3fb8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b3fbc: ab13         	add	r3, sp, #0x4c
  3b3fbe: 930e         	str	r3, [sp, #0x38]
  3b3fc0: 466b         	mov	r3, sp
  3b3fc2: aa28         	add	r2, sp, #0xa0
  3b3fc4: e892 0003    	ldm.w	r2, {r0, r1}
  3b3fc8: e883 0003    	stm.w	r3, {r0, r1}
  3b3fcc: ab26         	add	r3, sp, #0x98
  3b3fce: cb0c         	ldm	r3, {r2, r3}
  3b3fd0: 9811         	ldr	r0, [sp, #0x44]
  3b3fd2: f7ff feb5    	bl	0x3b3d40 <ProjectileManager::addBullet(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)> @ imm = #-0x296
  3b3fd6: ab13         	add	r3, sp, #0x4c
  3b3fd8: 4618         	mov	r0, r3
  3b3fda: f001 f49b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401936
  3b3fde: ab12         	add	r3, sp, #0x48
  3b3fe0: 4618         	mov	r0, r3
  3b3fe2: f3d6 fa0b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d6416
  3b3fe6: 9b14         	ldr	r3, [sp, #0x50]
  3b3fe8: 3301         	adds	r3, #0x1
  3b3fea: 9314         	str	r3, [sp, #0x50]
  3b3fec: 9b16         	ldr	r3, [sp, #0x58]
  3b3fee: 681b         	ldr	r3, [r3]
  3b3ff0: f503 7338    	add.w	r3, r3, #0x2e0
  3b3ff4: 681b         	ldr	r3, [r3]
  3b3ff6: 9816         	ldr	r0, [sp, #0x58]
  3b3ff8: 4798         	blx	r3
  3b3ffa: 4602         	mov	r2, r0
  3b3ffc: 9b14         	ldr	r3, [sp, #0x50]
  3b3ffe: 429a         	cmp	r2, r3
  3b4000: bfd4         	ite	le
  3b4002: 2300         	movle	r3, #0x0
  3b4004: 2301         	movgt	r3, #0x1
  3b4006: b2db         	uxtb	r3, r3
  3b4008: 2b00         	cmp	r3, #0x0
  3b400a: d19c         	bne	0x3b3f46 <ProjectileManager::weaponFired(cocos2d::CCObject*)+0xce> @ imm = #-0xc8
  3b400c: e00a         	b	0x3b4024 <ProjectileManager::weaponFired(cocos2d::CCObject*)+0x1ac> @ imm = #0x14
  3b400e: ab13         	add	r3, sp, #0x4c
  3b4010: 4618         	mov	r0, r3
  3b4012: f001 f47f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4018fe
  3b4016: e7ff         	b	0x3b4018 <ProjectileManager::weaponFired(cocos2d::CCObject*)+0x1a0> @ imm = #-0x2
  3b4018: ab12         	add	r3, sp, #0x48
  3b401a: 4618         	mov	r0, r3
  3b401c: f3d6 f9ee    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d63dc
  3b4020: f3d4 f844    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d4088
  3b4024: b02b         	add	sp, #0xac
  3b4026: ecbd 8b02    	vpop	{d8}
  3b402a: bd30         	pop	{r4, r5, pc}

// ==== ProjectileManager::grenadeLaunched
//      file offset 0x3b402c (= ELF address; Ghidra 0x3c402c), 328 bytes, Thumb-2
  3b402c: b530         	push	{r4, r5, lr}
  3b402e: ed2d 8b02    	vpush	{d8}
  3b4032: b0a1         	sub	sp, #0x84
  3b4034: 900d         	str	r0, [sp, #0x34]
  3b4036: 910c         	str	r1, [sp, #0x30]
  3b4038: 9b0c         	ldr	r3, [sp, #0x30]
  3b403a: 9310         	str	r3, [sp, #0x40]
  3b403c: 9810         	ldr	r0, [sp, #0x40]
  3b403e: 2100         	movs	r1, #0x0
  3b4040: f1e6 f86e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60dc
  3b4044: 4603         	mov	r3, r0
  3b4046: 9311         	str	r3, [sp, #0x44]
  3b4048: 9810         	ldr	r0, [sp, #0x40]
  3b404a: 2101         	movs	r1, #0x1
  3b404c: f1e6 f868    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60d0
  3b4050: 4603         	mov	r3, r0
  3b4052: 9312         	str	r3, [sp, #0x48]
  3b4054: 9810         	ldr	r0, [sp, #0x40]
  3b4056: 2102         	movs	r1, #0x2
  3b4058: f1e6 f862    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60c4
  3b405c: 4603         	mov	r3, r0
  3b405e: 9313         	str	r3, [sp, #0x4c]
  3b4060: 9810         	ldr	r0, [sp, #0x40]
  3b4062: 2103         	movs	r1, #0x3
  3b4064: f1e6 f85c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60b8
  3b4068: 4603         	mov	r3, r0
  3b406a: 9314         	str	r3, [sp, #0x50]
  3b406c: 9810         	ldr	r0, [sp, #0x40]
  3b406e: 2104         	movs	r1, #0x4
  3b4070: f1e6 f856    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60ac
  3b4074: 4603         	mov	r3, r0
  3b4076: 9315         	str	r3, [sp, #0x54]
  3b4078: 9810         	ldr	r0, [sp, #0x40]
  3b407a: 2105         	movs	r1, #0x5
  3b407c: f1e6 f850    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e60a0
  3b4080: 4603         	mov	r3, r0
  3b4082: 9316         	str	r3, [sp, #0x58]
  3b4084: 9810         	ldr	r0, [sp, #0x40]
  3b4086: 2106         	movs	r1, #0x6
  3b4088: f1e6 f84a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e6094
  3b408c: 4603         	mov	r3, r0
  3b408e: 4618         	mov	r0, r3
  3b4090: f738 fee0    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xc7240
  3b4094: 4603         	mov	r3, r0
  3b4096: 9317         	str	r3, [sp, #0x5c]
  3b4098: 9811         	ldr	r0, [sp, #0x44]
  3b409a: f728 fdeb    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd742a
  3b409e: ee07 0a90    	vmov	s15, r0
  3b40a2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b40a6: 9812         	ldr	r0, [sp, #0x48]
  3b40a8: f728 fde4    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7438
  3b40ac: ee07 0a90    	vmov	s15, r0
  3b40b0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b40b4: ab18         	add	r3, sp, #0x60
  3b40b6: 4618         	mov	r0, r3
  3b40b8: eeb0 0b48    	vmov.f64	d0, d8
  3b40bc: eeb0 1b47    	vmov.f64	d1, d7
  3b40c0: f7fe f9f6    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1c14
  3b40c4: 9813         	ldr	r0, [sp, #0x4c]
  3b40c6: f728 fdd5    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7456
  3b40ca: 4604         	mov	r4, r0
  3b40cc: 9814         	ldr	r0, [sp, #0x50]
  3b40ce: f728 fdd1    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd745e
  3b40d2: ee07 0a90    	vmov	s15, r0
  3b40d6: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b40da: 9815         	ldr	r0, [sp, #0x54]
  3b40dc: f728 fdca    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd746c
  3b40e0: ee07 0a90    	vmov	s15, r0
  3b40e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b40e8: ab1c         	add	r3, sp, #0x70
  3b40ea: 4618         	mov	r0, r3
  3b40ec: eeb0 0b48    	vmov.f64	d0, d8
  3b40f0: eeb0 1b47    	vmov.f64	d1, d7
  3b40f4: f7fe f9dc    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1c48
  3b40f8: 9816         	ldr	r0, [sp, #0x58]
  3b40fa: f1e5 fc15    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e582a
  3b40fe: 4605         	mov	r5, r0
  3b4100: ab0e         	add	r3, sp, #0x38
  3b4102: 4618         	mov	r0, r3
  3b4104: f3d6 f976    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d62ec
  3b4108: aa0f         	add	r2, sp, #0x3c
  3b410a: ab0e         	add	r3, sp, #0x38
  3b410c: 4610         	mov	r0, r2
  3b410e: 4629         	mov	r1, r5
  3b4110: 461a         	mov	r2, r3
  3b4112: f002 f4a5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x40294a
  3b4116: 9402         	str	r4, [sp, #0x8]
  3b4118: ac04         	add	r4, sp, #0x10
  3b411a: ab1c         	add	r3, sp, #0x70
  3b411c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b411e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b4122: 2301         	movs	r3, #0x1
  3b4124: 9308         	str	r3, [sp, #0x20]
  3b4126: ab0f         	add	r3, sp, #0x3c
  3b4128: 9309         	str	r3, [sp, #0x24]
  3b412a: 9b17         	ldr	r3, [sp, #0x5c]
  3b412c: 930a         	str	r3, [sp, #0x28]
  3b412e: 466b         	mov	r3, sp
  3b4130: aa1a         	add	r2, sp, #0x68
  3b4132: e892 0003    	ldm.w	r2, {r0, r1}
  3b4136: e883 0003    	stm.w	r3, {r0, r1}
  3b413a: ab18         	add	r3, sp, #0x60
  3b413c: cb0c         	ldm	r3, {r2, r3}
  3b413e: 980d         	ldr	r0, [sp, #0x34]
  3b4140: f000 f81a    	bl	0x3b4178 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)> @ imm = #0x34
  3b4144: ab0f         	add	r3, sp, #0x3c
  3b4146: 4618         	mov	r0, r3
  3b4148: f001 f3e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4017c8
  3b414c: ab0e         	add	r3, sp, #0x38
  3b414e: 4618         	mov	r0, r3
  3b4150: f3d6 f954    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d62a8
  3b4154: e00a         	b	0x3b416c <ProjectileManager::grenadeLaunched(cocos2d::CCObject*)+0x140> @ imm = #0x14
  3b4156: ab0f         	add	r3, sp, #0x3c
  3b4158: 4618         	mov	r0, r3
  3b415a: f001 f3db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4017b6
  3b415e: e7ff         	b	0x3b4160 <ProjectileManager::grenadeLaunched(cocos2d::CCObject*)+0x134> @ imm = #-0x2
  3b4160: ab0e         	add	r3, sp, #0x38
  3b4162: 4618         	mov	r0, r3
  3b4164: f3d6 f94a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d6294
  3b4168: f3d3 ffa0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d3f40
  3b416c: b021         	add	sp, #0x84
  3b416e: ecbd 8b02    	vpop	{d8}
  3b4172: bd30         	pop	{r4, r5, pc}

// ==== ProjectileManager::addGrenade
//      file offset 0x3b4178 (= ELF address; Ghidra 0x3c4178), 612 bytes, Thumb-2
  3b4178: b082         	sub	sp, #0x8
  3b417a: b570         	push	{r4, r5, r6, lr}
  3b417c: b090         	sub	sp, #0x40
  3b417e: 9001         	str	r0, [sp, #0x4]
  3b4180: a914         	add	r1, sp, #0x50
  3b4182: e881 000c    	stm.w	r1, {r2, r3}
  3b4186: 4c90         	ldr	r4, [pc, #0x240]        @ 0x3b43c8 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x250>
  3b4188: 447c         	add	r4, pc
  3b418a: f063 fbfb    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x637f6
  3b418e: 4603         	mov	r3, r0
  3b4190: 4618         	mov	r0, r3
  3b4192: 9920         	ldr	r1, [sp, #0x80]
  3b4194: f064 fab2    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x64564
  3b4198: 4603         	mov	r3, r0
  3b419a: 9303         	str	r3, [sp, #0xc]
  3b419c: 9b01         	ldr	r3, [sp, #0x4]
  3b419e: 699b         	ldr	r3, [r3, #0x18]
  3b41a0: 4618         	mov	r0, r3
  3b41a2: 9903         	ldr	r1, [sp, #0xc]
  3b41a4: f1e6 f862    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e60c4
  3b41a8: 9b03         	ldr	r3, [sp, #0xc]
  3b41aa: 681b         	ldr	r3, [r3]
  3b41ac: f503 73d4    	add.w	r3, r3, #0x1a8
  3b41b0: 681b         	ldr	r3, [r3]
  3b41b2: 9a03         	ldr	r2, [sp, #0xc]
  3b41b4: 4610         	mov	r0, r2
  3b41b6: 2101         	movs	r1, #0x1
  3b41b8: 4798         	blx	r3
  3b41ba: 9b03         	ldr	r3, [sp, #0xc]
  3b41bc: 681b         	ldr	r3, [r3]
  3b41be: f503 73d2    	add.w	r3, r3, #0x1a4
  3b41c2: 681b         	ldr	r3, [r3]
  3b41c4: 9a03         	ldr	r2, [sp, #0xc]
  3b41c6: 4610         	mov	r0, r2
  3b41c8: 2100         	movs	r1, #0x0
  3b41ca: 4798         	blx	r3
  3b41cc: 9b03         	ldr	r3, [sp, #0xc]
  3b41ce: 681b         	ldr	r3, [r3]
  3b41d0: f503 7300    	add.w	r3, r3, #0x200
  3b41d4: 681d         	ldr	r5, [r3]
  3b41d6: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x3b43cc <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x254>
  3b41d8: 58e3         	ldr	r3, [r4, r3]
  3b41da: 681b         	ldr	r3, [r3]
  3b41dc: 681b         	ldr	r3, [r3]
  3b41de: f503 73e0    	add.w	r3, r3, #0x1c0
  3b41e2: 681b         	ldr	r3, [r3]
  3b41e4: 4a79         	ldr	r2, [pc, #0x1e4]        @ 0x3b43cc <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x254>
  3b41e6: 58a2         	ldr	r2, [r4, r2]
  3b41e8: 6812         	ldr	r2, [r2]
  3b41ea: a90c         	add	r1, sp, #0x30
  3b41ec: 4608         	mov	r0, r1
  3b41ee: 4611         	mov	r1, r2
  3b41f0: 4798         	blx	r3
  3b41f2: ab0c         	add	r3, sp, #0x30
  3b41f4: 9803         	ldr	r0, [sp, #0xc]
  3b41f6: 4619         	mov	r1, r3
  3b41f8: 47a8         	blx	r5
  3b41fa: ab0c         	add	r3, sp, #0x30
  3b41fc: 4618         	mov	r0, r3
  3b41fe: f001 f389    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401712
  3b4202: 9b03         	ldr	r3, [sp, #0xc]
  3b4204: f503 73aa    	add.w	r3, r3, #0x154
  3b4208: 4618         	mov	r0, r3
  3b420a: 991f         	ldr	r1, [sp, #0x7c]
  3b420c: f002 f1d2    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4023a4
  3b4210: ed9d 7a18    	vldr	s14, [sp, #96]
  3b4214: eddf 7a6a    	vldr	s15, [pc, #424]         @ 0x3b43c0 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x248>
  3b4218: ee67 7a27    	vmul.f32	s15, s14, s15
  3b421c: eef1 7a67    	vneg.f32	s15, s15
  3b4220: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4224: ed8d 7b04    	vstr	d7, [sp, #16]
  3b4228: 9b03         	ldr	r3, [sp, #0xc]
  3b422a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b422e: ed9d 6b14    	vldr	d6, [sp, #80]
  3b4232: ed9d 7b16    	vldr	d7, [sp, #88]
  3b4236: 4618         	mov	r0, r3
  3b4238: eeb0 0b46    	vmov.f64	d0, d6
  3b423c: eeb0 1b47    	vmov.f64	d1, d7
  3b4240: f7fe fa10    	bl	0x3b2664 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1cc> @ imm = #-0x1be0
  3b4244: 9b03         	ldr	r3, [sp, #0xc]
  3b4246: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3b424a: 4b61         	ldr	r3, [pc, #0x184]        @ 0x3b43d0 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x258>
  3b424c: 447b         	add	r3, pc
  3b424e: ed93 6b00    	vldr	d6, [r3]
  3b4252: ed93 7b02    	vldr	d7, [r3, #8]
  3b4256: 4610         	mov	r0, r2
  3b4258: eeb0 0b46    	vmov.f64	d0, d6
  3b425c: eeb0 1b47    	vmov.f64	d1, d7
  3b4260: f7fe fa2c    	bl	0x3b26bc <cocos2d::CCSpriteBatchNode::create(char const*)+0x224> @ imm = #-0x1ba8
  3b4264: 9b03         	ldr	r3, [sp, #0xc]
  3b4266: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b426a: ed9d 6b1a    	vldr	d6, [sp, #104]
  3b426e: ed9d 7b1c    	vldr	d7, [sp, #112]
  3b4272: 4618         	mov	r0, r3
  3b4274: eeb0 0b46    	vmov.f64	d0, d6
  3b4278: eeb0 1b47    	vmov.f64	d1, d7
  3b427c: f7fe fa08    	bl	0x3b2690 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1f8> @ imm = #-0x1bf0
  3b4280: 9b03         	ldr	r3, [sp, #0xc]
  3b4282: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3b4286: f7fe f8d3    	bl	0x3b2430 <Projectile::addBodyShape(cpSpace*)+0x118> @ imm = #-0x1e5a
  3b428a: 4603         	mov	r3, r0
  3b428c: ee07 3a90    	vmov	s15, r3
  3b4290: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3b4294: eddf 7a4b    	vldr	s15, [pc, #300]         @ 0x3b43c4 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x24c>
  3b4298: ee87 7a27    	vdiv.f32	s14, s14, s15
  3b429c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3b42a0: ee37 7a67    	vsub.f32	s14, s14, s15
  3b42a4: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3b42a8: ee67 7a27    	vmul.f32	s15, s14, s15
  3b42ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b42b0: ed84 7b18    	vstr	d7, [r4, #96]
  3b42b4: f89d 3078    	ldrb.w	r3, [sp, #0x78]
  3b42b8: 2b00         	cmp	r3, #0x0
  3b42ba: d00e         	beq	0x3b42da <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x162> @ imm = #0x1c
  3b42bc: 9b03         	ldr	r3, [sp, #0xc]
  3b42be: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b42c2: 2244         	movs	r2, #0x44
  3b42c4: 655a         	str	r2, [r3, #0x54]
  3b42c6: 9b03         	ldr	r3, [sp, #0xc]
  3b42c8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b42cc: 2244         	movs	r2, #0x44
  3b42ce: 65da         	str	r2, [r3, #0x5c]
  3b42d0: 9b03         	ldr	r3, [sp, #0xc]
  3b42d2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b42d6: 2244         	movs	r2, #0x44
  3b42d8: 659a         	str	r2, [r3, #0x58]
  3b42da: 9b03         	ldr	r3, [sp, #0xc]
  3b42dc: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3b42e0: e9dd 0104    	ldrd	r0, r1, [sp, #16]
  3b42e4: f721 ee10    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xde3e0
  3b42e8: 4604         	mov	r4, r0
  3b42ea: 460d         	mov	r5, r1
  3b42ec: e9dd 0104    	ldrd	r0, r1, [sp, #16]
  3b42f0: f721 ee10    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xde3e0
  3b42f4: 4602         	mov	r2, r0
  3b42f6: 460b         	mov	r3, r1
  3b42f8: a908         	add	r1, sp, #0x20
  3b42fa: 4608         	mov	r0, r1
  3b42fc: ec45 4b10    	vmov	d0, r4, r5
  3b4300: ec43 2b11    	vmov	d1, r2, r3
  3b4304: f7fe f8d4    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1e58
  3b4308: ab0c         	add	r3, sp, #0x30
  3b430a: ed9d 6b08    	vldr	d6, [sp, #32]
  3b430e: ed9d 7b0a    	vldr	d7, [sp, #40]
  3b4312: 4618         	mov	r0, r3
  3b4314: eeb0 0b46    	vmov.f64	d0, d6
  3b4318: eeb0 1b47    	vmov.f64	d1, d7
  3b431c: ed9f 2b26    	vldr	d2, [pc, #152]          @ 0x3b43b8 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x240>
  3b4320: f7fe f932    	bl	0x3b2588 <cocos2d::CCSpriteBatchNode::create(char const*)+0xf0> @ imm = #-0x1d9c
  3b4324: ed9d 4b0c    	vldr	d4, [sp, #48]
  3b4328: ed9d 5b0e    	vldr	d5, [sp, #56]
  3b432c: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3b43d4 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x25c>
  3b432e: 447b         	add	r3, pc
  3b4330: ed93 6b00    	vldr	d6, [r3]
  3b4334: ed93 7b02    	vldr	d7, [r3, #8]
  3b4338: 4630         	mov	r0, r6
  3b433a: eeb0 0b44    	vmov.f64	d0, d4
  3b433e: eeb0 1b45    	vmov.f64	d1, d5
  3b4342: eeb0 2b46    	vmov.f64	d2, d6
  3b4346: eeb0 3b47    	vmov.f64	d3, d7
  3b434a: f7fe f9cd    	bl	0x3b26e8 <cocos2d::CCSpriteBatchNode::create(char const*)+0x250> @ imm = #-0x1c66
  3b434e: 9b03         	ldr	r3, [sp, #0xc]
  3b4350: 681b         	ldr	r3, [r3]
  3b4352: 334c         	adds	r3, #0x4c
  3b4354: 681c         	ldr	r4, [r3]
  3b4356: 9d03         	ldr	r5, [sp, #0xc]
  3b4358: 9b03         	ldr	r3, [sp, #0xc]
  3b435a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b435e: ed93 7b0a    	vldr	d7, [r3, #40]
  3b4362: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b4366: 9b03         	ldr	r3, [sp, #0xc]
  3b4368: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b436c: ed93 7b0c    	vldr	d7, [r3, #48]
  3b4370: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b4374: ab06         	add	r3, sp, #0x18
  3b4376: 4618         	mov	r0, r3
  3b4378: ee16 1a90    	vmov	r1, s13
  3b437c: ee17 2a90    	vmov	r2, s15
  3b4380: f1de fcb6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1de96c
  3b4384: ab06         	add	r3, sp, #0x18
  3b4386: 4628         	mov	r0, r5
  3b4388: 4619         	mov	r1, r3
  3b438a: 47a0         	blx	r4
  3b438c: f22c f990    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22c320
  3b4390: 4603         	mov	r3, r0
  3b4392: 4618         	mov	r0, r3
  3b4394: 4b10         	ldr	r3, [pc, #0x40]         @ 0x3b43d8 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x260>
  3b4396: 447b         	add	r3, pc
  3b4398: 4619         	mov	r1, r3
  3b439a: 9a03         	ldr	r2, [sp, #0xc]
  3b439c: f22c fbc6    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22c78c
  3b43a0: e005         	b	0x3b43ae <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x236> @ imm = #0xa
  3b43a2: ab0c         	add	r3, sp, #0x30
  3b43a4: 4618         	mov	r0, r3
  3b43a6: f001 f2b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40156a
  3b43aa: f3d3 fe7f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d3cfe
  3b43ae: b010         	add	sp, #0x40
  3b43b0: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  3b43b4: b002         	add	sp, #0x8
  3b43b6: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3b43b7); words below are literal-pool data ---
  3b43b8: 0000         	movs	r0, r0
  3b43ba: 0000         	movs	r0, r0
  3b43bc: 0000         	movs	r0, r0
  3b43be: 4044         	eors	r4, r0
  3b43c0: fa35 3c8e    	<unknown>
  3b43c4: 0000         	movs	r0, r0
  3b43c6: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3b45c8 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0xd8>
  3b43c8: e880 0057    	stm.w	r0, {r0, r1, r2, r4, r6}
  3b43cc: d784         	bvc	0x3b42d8 <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x160> @ imm = #-0xf8
  3b43ce: ffff fd50    	<unknown>
  3b43d2: 0041         	lsls	r1, r0, #0x1
  3b43d4: fc6e 0041    	stc2l	p0, c0, [lr], #-260
  3b43d8: fbaa 0041    	<unknown>

// ==== ProjectileManager::rocketLaunched
//      file offset 0x3b43e0 (= ELF address; Ghidra 0x3c43e0), 270 bytes, Thumb-2
  3b43e0: b530         	push	{r4, r5, lr}
  3b43e2: ed2d 8b02    	vpush	{d8}
  3b43e6: b09f         	sub	sp, #0x7c
  3b43e8: 900d         	str	r0, [sp, #0x34]
  3b43ea: 910c         	str	r1, [sp, #0x30]
  3b43ec: 9b0c         	ldr	r3, [sp, #0x30]
  3b43ee: 9310         	str	r3, [sp, #0x40]
  3b43f0: 9810         	ldr	r0, [sp, #0x40]
  3b43f2: 2100         	movs	r1, #0x0
  3b43f4: f1e5 fe94    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5d28
  3b43f8: 4603         	mov	r3, r0
  3b43fa: 9311         	str	r3, [sp, #0x44]
  3b43fc: 9810         	ldr	r0, [sp, #0x40]
  3b43fe: 2101         	movs	r1, #0x1
  3b4400: f1e5 fe8e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5d1c
  3b4404: 4603         	mov	r3, r0
  3b4406: 9312         	str	r3, [sp, #0x48]
  3b4408: 9810         	ldr	r0, [sp, #0x40]
  3b440a: 2102         	movs	r1, #0x2
  3b440c: f1e5 fe88    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5d10
  3b4410: 4603         	mov	r3, r0
  3b4412: 9313         	str	r3, [sp, #0x4c]
  3b4414: 9810         	ldr	r0, [sp, #0x40]
  3b4416: 2103         	movs	r1, #0x3
  3b4418: f1e5 fe82    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5d04
  3b441c: 4603         	mov	r3, r0
  3b441e: 9314         	str	r3, [sp, #0x50]
  3b4420: 9810         	ldr	r0, [sp, #0x40]
  3b4422: 2107         	movs	r1, #0x7
  3b4424: f1e5 fe7c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5cf8
  3b4428: 4603         	mov	r3, r0
  3b442a: 9315         	str	r3, [sp, #0x54]
  3b442c: 9813         	ldr	r0, [sp, #0x4c]
  3b442e: f728 fc21    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd77be
  3b4432: ee07 0a90    	vmov	s15, r0
  3b4436: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b443a: 9814         	ldr	r0, [sp, #0x50]
  3b443c: f728 fc1a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd77cc
  3b4440: ee07 0a90    	vmov	s15, r0
  3b4444: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4448: ab16         	add	r3, sp, #0x58
  3b444a: 4618         	mov	r0, r3
  3b444c: eeb0 0b48    	vmov.f64	d0, d8
  3b4450: eeb0 1b47    	vmov.f64	d1, d7
  3b4454: f7fe f82c    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x1fa8
  3b4458: 9b11         	ldr	r3, [sp, #0x44]
  3b445a: 681b         	ldr	r3, [r3]
  3b445c: f503 7348    	add.w	r3, r3, #0x320
  3b4460: 681b         	ldr	r3, [r3]
  3b4462: aa1a         	add	r2, sp, #0x68
  3b4464: 4610         	mov	r0, r2
  3b4466: 9911         	ldr	r1, [sp, #0x44]
  3b4468: 4798         	blx	r3
  3b446a: 9812         	ldr	r0, [sp, #0x48]
  3b446c: f728 fc02    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd77fc
  3b4470: 4604         	mov	r4, r0
  3b4472: 9815         	ldr	r0, [sp, #0x54]
  3b4474: f1e5 fa58    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e54b0
  3b4478: 4605         	mov	r5, r0
  3b447a: ab0e         	add	r3, sp, #0x38
  3b447c: 4618         	mov	r0, r3
  3b447e: f3d5 ffb9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d5f72
  3b4482: aa0f         	add	r2, sp, #0x3c
  3b4484: ab0e         	add	r3, sp, #0x38
  3b4486: 4610         	mov	r0, r2
  3b4488: 4629         	mov	r1, r5
  3b448a: 461a         	mov	r2, r3
  3b448c: f002 f2e8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4025d0
  3b4490: 9402         	str	r4, [sp, #0x8]
  3b4492: ac04         	add	r4, sp, #0x10
  3b4494: ab16         	add	r3, sp, #0x58
  3b4496: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b4498: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b449c: 2300         	movs	r3, #0x0
  3b449e: 9308         	str	r3, [sp, #0x20]
  3b44a0: 2301         	movs	r3, #0x1
  3b44a2: 9309         	str	r3, [sp, #0x24]
  3b44a4: ab0f         	add	r3, sp, #0x3c
  3b44a6: 930a         	str	r3, [sp, #0x28]
  3b44a8: 466b         	mov	r3, sp
  3b44aa: aa1c         	add	r2, sp, #0x70
  3b44ac: e892 0003    	ldm.w	r2, {r0, r1}
  3b44b0: e883 0003    	stm.w	r3, {r0, r1}
  3b44b4: ab1a         	add	r3, sp, #0x68
  3b44b6: cb0c         	ldm	r3, {r2, r3}
  3b44b8: 980d         	ldr	r0, [sp, #0x34]
  3b44ba: f000 f819    	bl	0x3b44f0 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)> @ imm = #0x32
  3b44be: ab0f         	add	r3, sp, #0x3c
  3b44c0: 4618         	mov	r0, r3
  3b44c2: f001 f227    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40144e
  3b44c6: ab0e         	add	r3, sp, #0x38
  3b44c8: 4618         	mov	r0, r3
  3b44ca: f3d5 ff97    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d5f2e
  3b44ce: e00a         	b	0x3b44e6 <ProjectileManager::rocketLaunched(cocos2d::CCObject*)+0x106> @ imm = #0x14
  3b44d0: ab0f         	add	r3, sp, #0x3c
  3b44d2: 4618         	mov	r0, r3
  3b44d4: f001 f21e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40143c
  3b44d8: e7ff         	b	0x3b44da <ProjectileManager::rocketLaunched(cocos2d::CCObject*)+0xfa> @ imm = #-0x2
  3b44da: ab0e         	add	r3, sp, #0x38
  3b44dc: 4618         	mov	r0, r3
  3b44de: f3d5 ff8d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d5f1a
  3b44e2: f3d3 fde3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d3bc6
  3b44e6: b01f         	add	sp, #0x7c
  3b44e8: ecbd 8b02    	vpop	{d8}
  3b44ec: bd30         	pop	{r4, r5, pc}

// ==== ProjectileManager::addRocket
//      file offset 0x3b44f0 (= ELF address; Ghidra 0x3c44f0), 700 bytes, Thumb-2
  3b44f0: b082         	sub	sp, #0x8
  3b44f2: b570         	push	{r4, r5, r6, lr}
  3b44f4: b09a         	sub	sp, #0x68
  3b44f6: 9001         	str	r0, [sp, #0x4]
  3b44f8: a91e         	add	r1, sp, #0x78
  3b44fa: e881 000c    	stm.w	r1, {r2, r3}
  3b44fe: 4ca6         	ldr	r4, [pc, #0x298]        @ 0x3b4798 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2a8>
  3b4500: 447c         	add	r4, pc
  3b4502: f063 fa3f    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x6347e
  3b4506: 4603         	mov	r3, r0
  3b4508: 4618         	mov	r0, r3
  3b450a: 210c         	movs	r1, #0xc
  3b450c: f064 f8f6    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x641ec
  3b4510: 4603         	mov	r3, r0
  3b4512: 9303         	str	r3, [sp, #0xc]
  3b4514: 9b01         	ldr	r3, [sp, #0x4]
  3b4516: 699b         	ldr	r3, [r3, #0x18]
  3b4518: 4618         	mov	r0, r3
  3b451a: 9903         	ldr	r1, [sp, #0xc]
  3b451c: f1e5 fea6    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e5d4c
  3b4520: 9b03         	ldr	r3, [sp, #0xc]
  3b4522: 681b         	ldr	r3, [r3]
  3b4524: f503 73d2    	add.w	r3, r3, #0x1a4
  3b4528: 681b         	ldr	r3, [r3]
  3b452a: 9a03         	ldr	r2, [sp, #0xc]
  3b452c: 4610         	mov	r0, r2
  3b452e: 2100         	movs	r1, #0x0
  3b4530: 4798         	blx	r3
  3b4532: 9b03         	ldr	r3, [sp, #0xc]
  3b4534: 681b         	ldr	r3, [r3]
  3b4536: f503 73d4    	add.w	r3, r3, #0x1a8
  3b453a: 681b         	ldr	r3, [r3]
  3b453c: 9a03         	ldr	r2, [sp, #0xc]
  3b453e: 4610         	mov	r0, r2
  3b4540: 2101         	movs	r1, #0x1
  3b4542: 4798         	blx	r3
  3b4544: 9b03         	ldr	r3, [sp, #0xc]
  3b4546: 681b         	ldr	r3, [r3]
  3b4548: f503 7300    	add.w	r3, r3, #0x200
  3b454c: 681d         	ldr	r5, [r3]
  3b454e: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x3b479c <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2ac>
  3b4550: 58e3         	ldr	r3, [r4, r3]
  3b4552: 681b         	ldr	r3, [r3]
  3b4554: 681b         	ldr	r3, [r3]
  3b4556: f503 73e0    	add.w	r3, r3, #0x1c0
  3b455a: 681b         	ldr	r3, [r3]
  3b455c: 4a8f         	ldr	r2, [pc, #0x23c]        @ 0x3b479c <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2ac>
  3b455e: 58a2         	ldr	r2, [r4, r2]
  3b4560: 6812         	ldr	r2, [r2]
  3b4562: a916         	add	r1, sp, #0x58
  3b4564: 4608         	mov	r0, r1
  3b4566: 4611         	mov	r1, r2
  3b4568: 4798         	blx	r3
  3b456a: ab16         	add	r3, sp, #0x58
  3b456c: 9803         	ldr	r0, [sp, #0xc]
  3b456e: 4619         	mov	r1, r3
  3b4570: 47a8         	blx	r5
  3b4572: ab16         	add	r3, sp, #0x58
  3b4574: 4618         	mov	r0, r3
  3b4576: f001 f1cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x40139a
  3b457a: 9b03         	ldr	r3, [sp, #0xc]
  3b457c: f503 73aa    	add.w	r3, r3, #0x154
  3b4580: 4618         	mov	r0, r3
  3b4582: 992a         	ldr	r1, [sp, #0xa8]
  3b4584: f002 f016    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x40202c
  3b4588: ed9d 7a22    	vldr	s14, [sp, #136]
  3b458c: eddf 7a81    	vldr	s15, [pc, #516]         @ 0x3b4794 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2a4>
  3b4590: ee67 7a27    	vmul.f32	s15, s14, s15
  3b4594: eef1 7a67    	vneg.f32	s15, s15
  3b4598: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b459c: ed8d 7b06    	vstr	d7, [sp, #24]
  3b45a0: 9b03         	ldr	r3, [sp, #0xc]
  3b45a2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b45a6: 4618         	mov	r0, r3
  3b45a8: e9dd 2306    	ldrd	r2, r3, [sp, #24]
  3b45ac: f31e fdf1    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x31ebe2
  3b45b0: 9b03         	ldr	r3, [sp, #0xc]
  3b45b2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b45b6: ed9d 6b1e    	vldr	d6, [sp, #120]
  3b45ba: ed9d 7b20    	vldr	d7, [sp, #128]
  3b45be: 4618         	mov	r0, r3
  3b45c0: eeb0 0b46    	vmov.f64	d0, d6
  3b45c4: eeb0 1b47    	vmov.f64	d1, d7
  3b45c8: f7fe f84c    	bl	0x3b2664 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1cc> @ imm = #-0x1f68
  3b45cc: 9b03         	ldr	r3, [sp, #0xc]
  3b45ce: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3b45d2: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x3b47a0 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b0>
  3b45d4: 447b         	add	r3, pc
  3b45d6: ed93 6b00    	vldr	d6, [r3]
  3b45da: ed93 7b02    	vldr	d7, [r3, #8]
  3b45de: 4610         	mov	r0, r2
  3b45e0: eeb0 0b46    	vmov.f64	d0, d6
  3b45e4: eeb0 1b47    	vmov.f64	d1, d7
  3b45e8: f7fe f868    	bl	0x3b26bc <cocos2d::CCSpriteBatchNode::create(char const*)+0x224> @ imm = #-0x1f30
  3b45ec: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b45f0: f721 ec8a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xde6ec
  3b45f4: 4604         	mov	r4, r0
  3b45f6: 460d         	mov	r5, r1
  3b45f8: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b45fc: f721 ec8a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xde6ec
  3b4600: 4602         	mov	r2, r0
  3b4602: 460b         	mov	r3, r1
  3b4604: a90a         	add	r1, sp, #0x28
  3b4606: 4608         	mov	r0, r1
  3b4608: ec45 4b10    	vmov	d0, r4, r5
  3b460c: ec43 2b11    	vmov	d1, r2, r3
  3b4610: f7fd ff4e    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x2164
  3b4614: ed9d 4b24    	vldr	d4, [sp, #144]
  3b4618: ed9d 5b26    	vldr	d5, [sp, #152]
  3b461c: ed9d 6b0a    	vldr	d6, [sp, #40]
  3b4620: ed9d 7b0c    	vldr	d7, [sp, #48]
  3b4624: eeb0 0b44    	vmov.f64	d0, d4
  3b4628: eeb0 1b45    	vmov.f64	d1, d5
  3b462c: eeb0 2b46    	vmov.f64	d2, d6
  3b4630: eeb0 3b47    	vmov.f64	d3, d7
  3b4634: f7fd ffce    	bl	0x3b25d4 <cocos2d::CCSpriteBatchNode::create(char const*)+0x13c> @ imm = #-0x2064
  3b4638: ed8d 0b04    	vstr	d0, [sp, #16]
  3b463c: ed9d 7b04    	vldr	d7, [sp, #16]
  3b4640: eeb5 7bc0    	vcmpe.f64	d7, #0
  3b4644: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b4648: d505         	bpl	0x3b4656 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x166> @ imm = #0xa
  3b464a: f04f 0200    	mov.w	r2, #0x0
  3b464e: f04f 0300    	mov.w	r3, #0x0
  3b4652: e9cd 2304    	strd	r2, r3, [sp, #16]
  3b4656: 9b03         	ldr	r3, [sp, #0xc]
  3b4658: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3b465c: ab0e         	add	r3, sp, #0x38
  3b465e: ed9d 6b0a    	vldr	d6, [sp, #40]
  3b4662: ed9d 7b0c    	vldr	d7, [sp, #48]
  3b4666: 4618         	mov	r0, r3
  3b4668: eeb0 0b46    	vmov.f64	d0, d6
  3b466c: eeb0 1b47    	vmov.f64	d1, d7
  3b4670: ed9d 2b04    	vldr	d2, [sp, #16]
  3b4674: f7fd ff88    	bl	0x3b2588 <cocos2d::CCSpriteBatchNode::create(char const*)+0xf0> @ imm = #-0x20f0
  3b4678: ed9d 6b0e    	vldr	d6, [sp, #56]
  3b467c: ed9d 7b10    	vldr	d7, [sp, #64]
  3b4680: 4620         	mov	r0, r4
  3b4682: eeb0 0b46    	vmov.f64	d0, d6
  3b4686: eeb0 1b47    	vmov.f64	d1, d7
  3b468a: f7fe f801    	bl	0x3b2690 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1f8> @ imm = #-0x1ffe
  3b468e: f89d 30a4    	ldrb.w	r3, [sp, #0xa4]
  3b4692: 2b00         	cmp	r3, #0x0
  3b4694: d00e         	beq	0x3b46b4 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x1c4> @ imm = #0x1c
  3b4696: 9b03         	ldr	r3, [sp, #0xc]
  3b4698: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b469c: 2244         	movs	r2, #0x44
  3b469e: 655a         	str	r2, [r3, #0x54]
  3b46a0: 9b03         	ldr	r3, [sp, #0xc]
  3b46a2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b46a6: 2244         	movs	r2, #0x44
  3b46a8: 65da         	str	r2, [r3, #0x5c]
  3b46aa: 9b03         	ldr	r3, [sp, #0xc]
  3b46ac: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b46b0: 2244         	movs	r2, #0x44
  3b46b2: 659a         	str	r2, [r3, #0x58]
  3b46b4: 9b03         	ldr	r3, [sp, #0xc]
  3b46b6: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3b46ba: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b46be: f721 ec24    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xde7b8
  3b46c2: 4604         	mov	r4, r0
  3b46c4: 460d         	mov	r5, r1
  3b46c6: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b46ca: f721 ec24    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xde7b8
  3b46ce: 4602         	mov	r2, r0
  3b46d0: 460b         	mov	r3, r1
  3b46d2: a912         	add	r1, sp, #0x48
  3b46d4: 4608         	mov	r0, r1
  3b46d6: ec45 4b10    	vmov	d0, r4, r5
  3b46da: ec43 2b11    	vmov	d1, r2, r3
  3b46de: f7fd fee7    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x2232
  3b46e2: ab16         	add	r3, sp, #0x58
  3b46e4: ed9d 6b12    	vldr	d6, [sp, #72]
  3b46e8: ed9d 7b14    	vldr	d7, [sp, #80]
  3b46ec: 4618         	mov	r0, r3
  3b46ee: eeb0 0b46    	vmov.f64	d0, d6
  3b46f2: eeb0 1b47    	vmov.f64	d1, d7
  3b46f6: eeb3 2b0e    	vmov.f64	d2, #3.000000e+01
  3b46fa: f7fd ff45    	bl	0x3b2588 <cocos2d::CCSpriteBatchNode::create(char const*)+0xf0> @ imm = #-0x2176
  3b46fe: ed9d 4b16    	vldr	d4, [sp, #88]
  3b4702: ed9d 5b18    	vldr	d5, [sp, #96]
  3b4706: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3b47a4 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b4>
  3b4708: 447b         	add	r3, pc
  3b470a: ed93 6b00    	vldr	d6, [r3]
  3b470e: ed93 7b02    	vldr	d7, [r3, #8]
  3b4712: 4630         	mov	r0, r6
  3b4714: eeb0 0b44    	vmov.f64	d0, d4
  3b4718: eeb0 1b45    	vmov.f64	d1, d5
  3b471c: eeb0 2b46    	vmov.f64	d2, d6
  3b4720: eeb0 3b47    	vmov.f64	d3, d7
  3b4724: f7fd ffe0    	bl	0x3b26e8 <cocos2d::CCSpriteBatchNode::create(char const*)+0x250> @ imm = #-0x2040
  3b4728: 9b03         	ldr	r3, [sp, #0xc]
  3b472a: 681b         	ldr	r3, [r3]
  3b472c: 334c         	adds	r3, #0x4c
  3b472e: 681c         	ldr	r4, [r3]
  3b4730: 9d03         	ldr	r5, [sp, #0xc]
  3b4732: 9b03         	ldr	r3, [sp, #0xc]
  3b4734: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4738: ed93 7b0a    	vldr	d7, [r3, #40]
  3b473c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b4740: 9b03         	ldr	r3, [sp, #0xc]
  3b4742: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4746: ed93 7b0c    	vldr	d7, [r3, #48]
  3b474a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b474e: ab08         	add	r3, sp, #0x20
  3b4750: 4618         	mov	r0, r3
  3b4752: ee16 1a90    	vmov	r1, s13
  3b4756: ee17 2a90    	vmov	r2, s15
  3b475a: f1de fac9    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1de592
  3b475e: ab08         	add	r3, sp, #0x20
  3b4760: 4628         	mov	r0, r5
  3b4762: 4619         	mov	r1, r3
  3b4764: 47a0         	blx	r4
  3b4766: f22b ffa3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22bf46
  3b476a: 4603         	mov	r3, r0
  3b476c: 4618         	mov	r0, r3
  3b476e: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3b47a8 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b8>
  3b4770: 447b         	add	r3, pc
  3b4772: 4619         	mov	r1, r3
  3b4774: 9a03         	ldr	r2, [sp, #0xc]
  3b4776: f22c f9d9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22c3b2
  3b477a: e005         	b	0x3b4788 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x298> @ imm = #0xa
  3b477c: ab16         	add	r3, sp, #0x58
  3b477e: 4618         	mov	r0, r3
  3b4780: f001 f0c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401190
  3b4784: f3d3 fc92    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d3924
  3b4788: b01a         	add	sp, #0x68
  3b478a: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  3b478e: b002         	add	sp, #0x8
  3b4790: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3b4791); words below are literal-pool data ---
  3b4792: bf00         	nop
  3b4794: fa35 3c8e    	<unknown>
  3b4798: e508         	b	0x3b41ac <ProjectileManager::addGrenade(cpVect, float, cpVect, bool, std::string, int)+0x34> @ imm = #-0x5f0
  3b479a: 0057         	lsls	r7, r2, #0x1
  3b479c: d784         	bvc	0x3b46a8 <ProjectileManager::addRocket(cpVect, float, cpVect, Weapon*, bool, std::string)+0x1b8> @ imm = #-0xf8
  3b479e: ffff f9c8    	<unknown>
  3b47a2: 0041         	lsls	r1, r0, #0x1
  3b47a4: f894 0041    	ldrb.w	r0, [r4, #0x41]
  3b47a8: f7d0 0041    	<unknown>

// ==== ProjectileManager::throwFlame
//      file offset 0x3b47ac (= ELF address; Ghidra 0x3c47ac), 392 bytes, Thumb-2
  3b47ac: b530         	push	{r4, r5, lr}
  3b47ae: ed2d 8b02    	vpush	{d8}
  3b47b2: b0ab         	sub	sp, #0xac
  3b47b4: 9011         	str	r0, [sp, #0x44]
  3b47b6: 9110         	str	r1, [sp, #0x40]
  3b47b8: 9b10         	ldr	r3, [sp, #0x40]
  3b47ba: 9315         	str	r3, [sp, #0x54]
  3b47bc: 9815         	ldr	r0, [sp, #0x54]
  3b47be: 2100         	movs	r1, #0x0
  3b47c0: f1e5 fcae    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e595c
  3b47c4: 4603         	mov	r3, r0
  3b47c6: 9316         	str	r3, [sp, #0x58]
  3b47c8: 9815         	ldr	r0, [sp, #0x54]
  3b47ca: 2101         	movs	r1, #0x1
  3b47cc: f1e5 fca8    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5950
  3b47d0: 4603         	mov	r3, r0
  3b47d2: 9317         	str	r3, [sp, #0x5c]
  3b47d4: 9815         	ldr	r0, [sp, #0x54]
  3b47d6: 2102         	movs	r1, #0x2
  3b47d8: f1e5 fca2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5944
  3b47dc: 4603         	mov	r3, r0
  3b47de: 9318         	str	r3, [sp, #0x60]
  3b47e0: 9815         	ldr	r0, [sp, #0x54]
  3b47e2: 2103         	movs	r1, #0x3
  3b47e4: f1e5 fc9c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5938
  3b47e8: 4603         	mov	r3, r0
  3b47ea: 9319         	str	r3, [sp, #0x64]
  3b47ec: 9815         	ldr	r0, [sp, #0x54]
  3b47ee: 2104         	movs	r1, #0x4
  3b47f0: f1e5 fc96    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e592c
  3b47f4: 4603         	mov	r3, r0
  3b47f6: 931a         	str	r3, [sp, #0x68]
  3b47f8: 9815         	ldr	r0, [sp, #0x54]
  3b47fa: 2105         	movs	r1, #0x5
  3b47fc: f1e5 fc90    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5920
  3b4800: 4603         	mov	r3, r0
  3b4802: 931b         	str	r3, [sp, #0x6c]
  3b4804: 9815         	ldr	r0, [sp, #0x54]
  3b4806: 2106         	movs	r1, #0x6
  3b4808: f1e5 fc8a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5914
  3b480c: 4603         	mov	r3, r0
  3b480e: 931c         	str	r3, [sp, #0x70]
  3b4810: 9815         	ldr	r0, [sp, #0x54]
  3b4812: 2107         	movs	r1, #0x7
  3b4814: f1e5 fc84    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e5908
  3b4818: 4603         	mov	r3, r0
  3b481a: 931d         	str	r3, [sp, #0x74]
  3b481c: 9818         	ldr	r0, [sp, #0x60]
  3b481e: f728 fa29    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7bae
  3b4822: ee07 0a90    	vmov	s15, r0
  3b4826: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b482a: 9819         	ldr	r0, [sp, #0x64]
  3b482c: f728 fa22    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7bbc
  3b4830: ee07 0a90    	vmov	s15, r0
  3b4834: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4838: ab1e         	add	r3, sp, #0x78
  3b483a: 4618         	mov	r0, r3
  3b483c: eeb0 0b48    	vmov.f64	d0, d8
  3b4840: eeb0 1b47    	vmov.f64	d1, d7
  3b4844: f7fd fe34    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x2398
  3b4848: 981a         	ldr	r0, [sp, #0x68]
  3b484a: f728 fa13    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7bda
  3b484e: ee07 0a90    	vmov	s15, r0
  3b4852: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b4856: 981b         	ldr	r0, [sp, #0x6c]
  3b4858: f728 fa0c    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7be8
  3b485c: ee07 0a90    	vmov	s15, r0
  3b4860: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4864: ab22         	add	r3, sp, #0x88
  3b4866: 4618         	mov	r0, r3
  3b4868: eeb0 0b48    	vmov.f64	d0, d8
  3b486c: eeb0 1b47    	vmov.f64	d1, d7
  3b4870: f7fd fe1e    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x23c4
  3b4874: 9b16         	ldr	r3, [sp, #0x58]
  3b4876: 681b         	ldr	r3, [r3]
  3b4878: f503 7348    	add.w	r3, r3, #0x320
  3b487c: 681b         	ldr	r3, [r3]
  3b487e: aa26         	add	r2, sp, #0x98
  3b4880: 4610         	mov	r0, r2
  3b4882: 9916         	ldr	r1, [sp, #0x58]
  3b4884: 4798         	blx	r3
  3b4886: 9817         	ldr	r0, [sp, #0x5c]
  3b4888: f728 f9f4    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7c18
  3b488c: ee08 0a10    	vmov	s16, r0
  3b4890: 9b16         	ldr	r3, [sp, #0x58]
  3b4892: 681b         	ldr	r3, [r3]
  3b4894: f503 733e    	add.w	r3, r3, #0x2f8
  3b4898: 681b         	ldr	r3, [r3]
  3b489a: 9816         	ldr	r0, [sp, #0x58]
  3b489c: 4798         	blx	r3
  3b489e: ee07 0a90    	vmov	s15, r0
  3b48a2: ee38 8a27    	vadd.f32	s16, s16, s15
  3b48a6: 981c         	ldr	r0, [sp, #0x70]
  3b48a8: f738 fad4    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xc7a58
  3b48ac: 4605         	mov	r5, r0
  3b48ae: 981d         	ldr	r0, [sp, #0x74]
  3b48b0: f1e5 f83a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e5074
  3b48b4: 4604         	mov	r4, r0
  3b48b6: ab13         	add	r3, sp, #0x4c
  3b48b8: 4618         	mov	r0, r3
  3b48ba: f3d5 fd9b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d5b36
  3b48be: aa14         	add	r2, sp, #0x50
  3b48c0: ab13         	add	r3, sp, #0x4c
  3b48c2: 4610         	mov	r0, r2
  3b48c4: 4621         	mov	r1, r4
  3b48c6: 461a         	mov	r2, r3
  3b48c8: f002 f0ca    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x402194
  3b48cc: ed8d 8a02    	vstr	s16, [sp, #8]
  3b48d0: ac04         	add	r4, sp, #0x10
  3b48d2: ab1e         	add	r3, sp, #0x78
  3b48d4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b48d6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b48da: 9b16         	ldr	r3, [sp, #0x58]
  3b48dc: 9308         	str	r3, [sp, #0x20]
  3b48de: 9509         	str	r5, [sp, #0x24]
  3b48e0: ac0a         	add	r4, sp, #0x28
  3b48e2: ab22         	add	r3, sp, #0x88
  3b48e4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b48e6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b48ea: ab14         	add	r3, sp, #0x50
  3b48ec: 930e         	str	r3, [sp, #0x38]
  3b48ee: 466b         	mov	r3, sp
  3b48f0: aa28         	add	r2, sp, #0xa0
  3b48f2: e892 0003    	ldm.w	r2, {r0, r1}
  3b48f6: e883 0003    	stm.w	r3, {r0, r1}
  3b48fa: ab26         	add	r3, sp, #0x98
  3b48fc: cb0c         	ldm	r3, {r2, r3}
  3b48fe: 9811         	ldr	r0, [sp, #0x44]
  3b4900: f000 f818    	bl	0x3b4934 <ProjectileManager::addFlame(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)> @ imm = #0x30
  3b4904: ab14         	add	r3, sp, #0x50
  3b4906: 4618         	mov	r0, r3
  3b4908: f001 f004    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x401008
  3b490c: ab13         	add	r3, sp, #0x4c
  3b490e: 4618         	mov	r0, r3
  3b4910: f3d5 fd74    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d5ae8
  3b4914: e00a         	b	0x3b492c <ProjectileManager::throwFlame(cocos2d::CCObject*)+0x180> @ imm = #0x14
  3b4916: ab14         	add	r3, sp, #0x50
  3b4918: 4618         	mov	r0, r3
  3b491a: f000 f7fb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400ff6
  3b491e: e7ff         	b	0x3b4920 <ProjectileManager::throwFlame(cocos2d::CCObject*)+0x174> @ imm = #-0x2
  3b4920: ab13         	add	r3, sp, #0x4c
  3b4922: 4618         	mov	r0, r3
  3b4924: f3d5 fd6a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d5ad4
  3b4928: f3d3 fbc0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d3780
  3b492c: b02b         	add	sp, #0xac
  3b492e: ecbd 8b02    	vpop	{d8}
  3b4932: bd30         	pop	{r4, r5, pc}

// ==== ProjectileManager::addFlame
//      file offset 0x3b4934 (= ELF address; Ghidra 0x3c4934), 244 bytes, Thumb-2
  3b4934: b082         	sub	sp, #0x8
  3b4936: e92d 41f0    	push.w	{r4, r5, r6, r7, r8, lr}
  3b493a: b094         	sub	sp, #0x50
  3b493c: 9011         	str	r0, [sp, #0x44]
  3b493e: a91a         	add	r1, sp, #0x68
  3b4940: e881 000c    	stm.w	r1, {r2, r3}
  3b4944: 9b11         	ldr	r3, [sp, #0x44]
  3b4946: 6adb         	ldr	r3, [r3, #0x2c]
  3b4948: 461c         	mov	r4, r3
  3b494a: 9b11         	ldr	r3, [sp, #0x44]
  3b494c: 69db         	ldr	r3, [r3, #0x1c]
  3b494e: 4618         	mov	r0, r3
  3b4950: f1e5 fbc6    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1e578c
  3b4954: 4603         	mov	r3, r0
  3b4956: 429c         	cmp	r4, r3
  3b4958: bf34         	ite	lo
  3b495a: 2300         	movlo	r3, #0x0
  3b495c: 2301         	movhs	r3, #0x1
  3b495e: b2db         	uxtb	r3, r3
  3b4960: 2b00         	cmp	r3, #0x0
  3b4962: d002         	beq	0x3b496a <ProjectileManager::addFlame(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)+0x36> @ imm = #0x4
  3b4964: 9b11         	ldr	r3, [sp, #0x44]
  3b4966: 2200         	movs	r2, #0x0
  3b4968: 62da         	str	r2, [r3, #0x2c]
  3b496a: 9b11         	ldr	r3, [sp, #0x44]
  3b496c: 69da         	ldr	r2, [r3, #0x1c]
  3b496e: 9b11         	ldr	r3, [sp, #0x44]
  3b4970: 6adb         	ldr	r3, [r3, #0x2c]
  3b4972: 4610         	mov	r0, r2
  3b4974: 4619         	mov	r1, r3
  3b4976: f1e5 fbd3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e57a6
  3b497a: 4603         	mov	r3, r0
  3b497c: 9313         	str	r3, [sp, #0x4c]
  3b497e: 9b24         	ldr	r3, [sp, #0x90]
  3b4980: 681b         	ldr	r3, [r3]
  3b4982: f503 731f    	add.w	r3, r3, #0x27c
  3b4986: 681b         	ldr	r3, [r3]
  3b4988: 9824         	ldr	r0, [sp, #0x90]
  3b498a: 4798         	blx	r3
  3b498c: 4607         	mov	r7, r0
  3b498e: 9b24         	ldr	r3, [sp, #0x90]
  3b4990: 681b         	ldr	r3, [r3]
  3b4992: f503 7329    	add.w	r3, r3, #0x2a4
  3b4996: 681b         	ldr	r3, [r3]
  3b4998: 9824         	ldr	r0, [sp, #0x90]
  3b499a: 4798         	blx	r3
  3b499c: 4606         	mov	r6, r0
  3b499e: 9b24         	ldr	r3, [sp, #0x90]
  3b49a0: 681b         	ldr	r3, [r3]
  3b49a2: f503 7326    	add.w	r3, r3, #0x298
  3b49a6: 681b         	ldr	r3, [r3]
  3b49a8: 9824         	ldr	r0, [sp, #0x90]
  3b49aa: 4798         	blx	r3
  3b49ac: 4605         	mov	r5, r0
  3b49ae: 9b24         	ldr	r3, [sp, #0x90]
  3b49b0: 681b         	ldr	r3, [r3]
  3b49b2: f503 733a    	add.w	r3, r3, #0x2e8
  3b49b6: 681b         	ldr	r3, [r3]
  3b49b8: 9824         	ldr	r0, [sp, #0x90]
  3b49ba: 4798         	blx	r3
  3b49bc: 4680         	mov	r8, r0
  3b49be: ab12         	add	r3, sp, #0x48
  3b49c0: 4618         	mov	r0, r3
  3b49c2: 992a         	ldr	r1, [sp, #0xa8]
  3b49c4: f001 f590    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x401b20
  3b49c8: 466c         	mov	r4, sp
  3b49ca: ab1a         	add	r3, sp, #0x68
  3b49cc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b49ce: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b49d2: ac04         	add	r4, sp, #0x10
  3b49d4: ab20         	add	r3, sp, #0x80
  3b49d6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b49d8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b49dc: 9b1e         	ldr	r3, [sp, #0x78]
  3b49de: 9308         	str	r3, [sp, #0x20]
  3b49e0: f8cd 8024    	str.w	r8, [sp, #0x24]
  3b49e4: ac0a         	add	r4, sp, #0x28
  3b49e6: ab26         	add	r3, sp, #0x98
  3b49e8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b49ea: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b49ee: ab12         	add	r3, sp, #0x48
  3b49f0: 930e         	str	r3, [sp, #0x38]
  3b49f2: 9813         	ldr	r0, [sp, #0x4c]
  3b49f4: 4639         	mov	r1, r7
  3b49f6: 4632         	mov	r2, r6
  3b49f8: 462b         	mov	r3, r5
  3b49fa: f76a fd39    	bl	0x31f470 <FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)> @ imm = #-0x9558e
  3b49fe: ab12         	add	r3, sp, #0x48
  3b4a00: 4618         	mov	r0, r3
  3b4a02: f000 f787    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400f0e
  3b4a06: 9b11         	ldr	r3, [sp, #0x44]
  3b4a08: 6adb         	ldr	r3, [r3, #0x2c]
  3b4a0a: 1c5a         	adds	r2, r3, #0x1
  3b4a0c: 9b11         	ldr	r3, [sp, #0x44]
  3b4a0e: 62da         	str	r2, [r3, #0x2c]
  3b4a10: e005         	b	0x3b4a1e <ProjectileManager::addFlame(cpVect, float, cpVect, Weapon*, int, cpVect, std::string)+0xea> @ imm = #0xa
  3b4a12: ab12         	add	r3, sp, #0x48
  3b4a14: 4618         	mov	r0, r3
  3b4a16: f000 f77d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400efa
  3b4a1a: f3d3 fb47    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d368e
  3b4a1e: b014         	add	sp, #0x50
  3b4a20: e8bd 41f0    	pop.w	{r4, r5, r6, r7, r8, lr}
  3b4a24: b002         	add	sp, #0x8
  3b4a26: 4770         	bx	lr

// ==== ProjectileManager::sawLaunched
//      file offset 0x3b4a28 (= ELF address; Ghidra 0x3c4a28), 270 bytes, Thumb-2
  3b4a28: b530         	push	{r4, r5, lr}
  3b4a2a: ed2d 8b02    	vpush	{d8}
  3b4a2e: b09f         	sub	sp, #0x7c
  3b4a30: 900d         	str	r0, [sp, #0x34]
  3b4a32: 910c         	str	r1, [sp, #0x30]
  3b4a34: 9b0c         	ldr	r3, [sp, #0x30]
  3b4a36: 9310         	str	r3, [sp, #0x40]
  3b4a38: 9810         	ldr	r0, [sp, #0x40]
  3b4a3a: 2100         	movs	r1, #0x0
  3b4a3c: f1e5 fb70    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e56e0
  3b4a40: 4603         	mov	r3, r0
  3b4a42: 9311         	str	r3, [sp, #0x44]
  3b4a44: 9810         	ldr	r0, [sp, #0x40]
  3b4a46: 2101         	movs	r1, #0x1
  3b4a48: f1e5 fb6a    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e56d4
  3b4a4c: 4603         	mov	r3, r0
  3b4a4e: 9312         	str	r3, [sp, #0x48]
  3b4a50: 9810         	ldr	r0, [sp, #0x40]
  3b4a52: 2102         	movs	r1, #0x2
  3b4a54: f1e5 fb64    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e56c8
  3b4a58: 4603         	mov	r3, r0
  3b4a5a: 9313         	str	r3, [sp, #0x4c]
  3b4a5c: 9810         	ldr	r0, [sp, #0x40]
  3b4a5e: 2103         	movs	r1, #0x3
  3b4a60: f1e5 fb5e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e56bc
  3b4a64: 4603         	mov	r3, r0
  3b4a66: 9314         	str	r3, [sp, #0x50]
  3b4a68: 9810         	ldr	r0, [sp, #0x40]
  3b4a6a: 2107         	movs	r1, #0x7
  3b4a6c: f1e5 fb58    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1e56b0
  3b4a70: 4603         	mov	r3, r0
  3b4a72: 9315         	str	r3, [sp, #0x54]
  3b4a74: 9813         	ldr	r0, [sp, #0x4c]
  3b4a76: f728 f8fd    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7e06
  3b4a7a: ee07 0a90    	vmov	s15, r0
  3b4a7e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b4a82: 9814         	ldr	r0, [sp, #0x50]
  3b4a84: f728 f8f6    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7e14
  3b4a88: ee07 0a90    	vmov	s15, r0
  3b4a8c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4a90: ab16         	add	r3, sp, #0x58
  3b4a92: 4618         	mov	r0, r3
  3b4a94: eeb0 0b48    	vmov.f64	d0, d8
  3b4a98: eeb0 1b47    	vmov.f64	d1, d7
  3b4a9c: f7fd fd08    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x25f0
  3b4aa0: 9b11         	ldr	r3, [sp, #0x44]
  3b4aa2: 681b         	ldr	r3, [r3]
  3b4aa4: f503 7348    	add.w	r3, r3, #0x320
  3b4aa8: 681b         	ldr	r3, [r3]
  3b4aaa: aa1a         	add	r2, sp, #0x68
  3b4aac: 4610         	mov	r0, r2
  3b4aae: 9911         	ldr	r1, [sp, #0x44]
  3b4ab0: 4798         	blx	r3
  3b4ab2: 9812         	ldr	r0, [sp, #0x48]
  3b4ab4: f728 f8de    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0xd7e44
  3b4ab8: 4604         	mov	r4, r0
  3b4aba: 9815         	ldr	r0, [sp, #0x54]
  3b4abc: f1e4 ff34    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1e4e68
  3b4ac0: 4605         	mov	r5, r0
  3b4ac2: ab0e         	add	r3, sp, #0x38
  3b4ac4: 4618         	mov	r0, r3
  3b4ac6: f3d5 fc95    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3d592a
  3b4aca: aa0f         	add	r2, sp, #0x3c
  3b4acc: ab0e         	add	r3, sp, #0x38
  3b4ace: 4610         	mov	r0, r2
  3b4ad0: 4629         	mov	r1, r5
  3b4ad2: 461a         	mov	r2, r3
  3b4ad4: f001 f7c4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x401f88
  3b4ad8: 9402         	str	r4, [sp, #0x8]
  3b4ada: ac04         	add	r4, sp, #0x10
  3b4adc: ab16         	add	r3, sp, #0x58
  3b4ade: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b4ae0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b4ae4: 2300         	movs	r3, #0x0
  3b4ae6: 9308         	str	r3, [sp, #0x20]
  3b4ae8: 2301         	movs	r3, #0x1
  3b4aea: 9309         	str	r3, [sp, #0x24]
  3b4aec: ab0f         	add	r3, sp, #0x3c
  3b4aee: 930a         	str	r3, [sp, #0x28]
  3b4af0: 466b         	mov	r3, sp
  3b4af2: aa1c         	add	r2, sp, #0x70
  3b4af4: e892 0003    	ldm.w	r2, {r0, r1}
  3b4af8: e883 0003    	stm.w	r3, {r0, r1}
  3b4afc: ab1a         	add	r3, sp, #0x68
  3b4afe: cb0c         	ldm	r3, {r2, r3}
  3b4b00: 980d         	ldr	r0, [sp, #0x34]
  3b4b02: f000 f819    	bl	0x3b4b38 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)> @ imm = #0x32
  3b4b06: ab0f         	add	r3, sp, #0x3c
  3b4b08: 4618         	mov	r0, r3
  3b4b0a: f000 f703    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400e06
  3b4b0e: ab0e         	add	r3, sp, #0x38
  3b4b10: 4618         	mov	r0, r3
  3b4b12: f3d5 fc73    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d58e6
  3b4b16: e00a         	b	0x3b4b2e <ProjectileManager::sawLaunched(cocos2d::CCObject*)+0x106> @ imm = #0x14
  3b4b18: ab0f         	add	r3, sp, #0x3c
  3b4b1a: 4618         	mov	r0, r3
  3b4b1c: f000 f6fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400df4
  3b4b20: e7ff         	b	0x3b4b22 <ProjectileManager::sawLaunched(cocos2d::CCObject*)+0xfa> @ imm = #-0x2
  3b4b22: ab0e         	add	r3, sp, #0x38
  3b4b24: 4618         	mov	r0, r3
  3b4b26: f3d5 fc69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3d58d2
  3b4b2a: f3d3 fabf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d357e
  3b4b2e: b01f         	add	sp, #0x7c
  3b4b30: ecbd 8b02    	vpop	{d8}
  3b4b34: bd30         	pop	{r4, r5, pc}

// ==== ProjectileManager::addSaw
//      file offset 0x3b4b38 (= ELF address; Ghidra 0x3c4b38), 700 bytes, Thumb-2
  3b4b38: b082         	sub	sp, #0x8
  3b4b3a: b570         	push	{r4, r5, r6, lr}
  3b4b3c: b09a         	sub	sp, #0x68
  3b4b3e: 9001         	str	r0, [sp, #0x4]
  3b4b40: a91e         	add	r1, sp, #0x78
  3b4b42: e881 000c    	stm.w	r1, {r2, r3}
  3b4b46: 4ca6         	ldr	r4, [pc, #0x298]        @ 0x3b4de0 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2a8>
  3b4b48: 447c         	add	r4, pc
  3b4b4a: f062 ff1b    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x62e36
  3b4b4e: 4603         	mov	r3, r0
  3b4b50: 4618         	mov	r0, r3
  3b4b52: 2118         	movs	r1, #0x18
  3b4b54: f063 fdd2    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x63ba4
  3b4b58: 4603         	mov	r3, r0
  3b4b5a: 9303         	str	r3, [sp, #0xc]
  3b4b5c: 9b01         	ldr	r3, [sp, #0x4]
  3b4b5e: 699b         	ldr	r3, [r3, #0x18]
  3b4b60: 4618         	mov	r0, r3
  3b4b62: 9903         	ldr	r1, [sp, #0xc]
  3b4b64: f1e5 fb82    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1e5704
  3b4b68: 9b03         	ldr	r3, [sp, #0xc]
  3b4b6a: 681b         	ldr	r3, [r3]
  3b4b6c: f503 73d2    	add.w	r3, r3, #0x1a4
  3b4b70: 681b         	ldr	r3, [r3]
  3b4b72: 9a03         	ldr	r2, [sp, #0xc]
  3b4b74: 4610         	mov	r0, r2
  3b4b76: 2100         	movs	r1, #0x0
  3b4b78: 4798         	blx	r3
  3b4b7a: 9b03         	ldr	r3, [sp, #0xc]
  3b4b7c: 681b         	ldr	r3, [r3]
  3b4b7e: f503 73d4    	add.w	r3, r3, #0x1a8
  3b4b82: 681b         	ldr	r3, [r3]
  3b4b84: 9a03         	ldr	r2, [sp, #0xc]
  3b4b86: 4610         	mov	r0, r2
  3b4b88: 2101         	movs	r1, #0x1
  3b4b8a: 4798         	blx	r3
  3b4b8c: 9b03         	ldr	r3, [sp, #0xc]
  3b4b8e: 681b         	ldr	r3, [r3]
  3b4b90: f503 7300    	add.w	r3, r3, #0x200
  3b4b94: 681d         	ldr	r5, [r3]
  3b4b96: 4b93         	ldr	r3, [pc, #0x24c]        @ 0x3b4de4 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2ac>
  3b4b98: 58e3         	ldr	r3, [r4, r3]
  3b4b9a: 681b         	ldr	r3, [r3]
  3b4b9c: 681b         	ldr	r3, [r3]
  3b4b9e: f503 73e0    	add.w	r3, r3, #0x1c0
  3b4ba2: 681b         	ldr	r3, [r3]
  3b4ba4: 4a8f         	ldr	r2, [pc, #0x23c]        @ 0x3b4de4 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2ac>
  3b4ba6: 58a2         	ldr	r2, [r4, r2]
  3b4ba8: 6812         	ldr	r2, [r2]
  3b4baa: a916         	add	r1, sp, #0x58
  3b4bac: 4608         	mov	r0, r1
  3b4bae: 4611         	mov	r1, r2
  3b4bb0: 4798         	blx	r3
  3b4bb2: ab16         	add	r3, sp, #0x58
  3b4bb4: 9803         	ldr	r0, [sp, #0xc]
  3b4bb6: 4619         	mov	r1, r3
  3b4bb8: 47a8         	blx	r5
  3b4bba: ab16         	add	r3, sp, #0x58
  3b4bbc: 4618         	mov	r0, r3
  3b4bbe: f000 f6a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400d52
  3b4bc2: 9b03         	ldr	r3, [sp, #0xc]
  3b4bc4: f503 73aa    	add.w	r3, r3, #0x154
  3b4bc8: 4618         	mov	r0, r3
  3b4bca: 992a         	ldr	r1, [sp, #0xa8]
  3b4bcc: f001 f4f2    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4019e4
  3b4bd0: ed9d 7a22    	vldr	s14, [sp, #136]
  3b4bd4: eddf 7a81    	vldr	s15, [pc, #516]         @ 0x3b4ddc <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2a4>
  3b4bd8: ee67 7a27    	vmul.f32	s15, s14, s15
  3b4bdc: eef1 7a67    	vneg.f32	s15, s15
  3b4be0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b4be4: ed8d 7b06    	vstr	d7, [sp, #24]
  3b4be8: 9b03         	ldr	r3, [sp, #0xc]
  3b4bea: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4bee: 4618         	mov	r0, r3
  3b4bf0: e9dd 2306    	ldrd	r2, r3, [sp, #24]
  3b4bf4: f31e facd    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x31e59a
  3b4bf8: 9b03         	ldr	r3, [sp, #0xc]
  3b4bfa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4bfe: ed9d 6b1e    	vldr	d6, [sp, #120]
  3b4c02: ed9d 7b20    	vldr	d7, [sp, #128]
  3b4c06: 4618         	mov	r0, r3
  3b4c08: eeb0 0b46    	vmov.f64	d0, d6
  3b4c0c: eeb0 1b47    	vmov.f64	d1, d7
  3b4c10: f7fd fd28    	bl	0x3b2664 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1cc> @ imm = #-0x25b0
  3b4c14: 9b03         	ldr	r3, [sp, #0xc]
  3b4c16: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3b4c1a: 4b73         	ldr	r3, [pc, #0x1cc]        @ 0x3b4de8 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b0>
  3b4c1c: 447b         	add	r3, pc
  3b4c1e: ed93 6b00    	vldr	d6, [r3]
  3b4c22: ed93 7b02    	vldr	d7, [r3, #8]
  3b4c26: 4610         	mov	r0, r2
  3b4c28: eeb0 0b46    	vmov.f64	d0, d6
  3b4c2c: eeb0 1b47    	vmov.f64	d1, d7
  3b4c30: f7fd fd44    	bl	0x3b26bc <cocos2d::CCSpriteBatchNode::create(char const*)+0x224> @ imm = #-0x2578
  3b4c34: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b4c38: f721 e966    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xded34
  3b4c3c: 4604         	mov	r4, r0
  3b4c3e: 460d         	mov	r5, r1
  3b4c40: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b4c44: f721 e966    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xded34
  3b4c48: 4602         	mov	r2, r0
  3b4c4a: 460b         	mov	r3, r1
  3b4c4c: a90a         	add	r1, sp, #0x28
  3b4c4e: 4608         	mov	r0, r1
  3b4c50: ec45 4b10    	vmov	d0, r4, r5
  3b4c54: ec43 2b11    	vmov	d1, r2, r3
  3b4c58: f7fd fc2a    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x27ac
  3b4c5c: ed9d 4b24    	vldr	d4, [sp, #144]
  3b4c60: ed9d 5b26    	vldr	d5, [sp, #152]
  3b4c64: ed9d 6b0a    	vldr	d6, [sp, #40]
  3b4c68: ed9d 7b0c    	vldr	d7, [sp, #48]
  3b4c6c: eeb0 0b44    	vmov.f64	d0, d4
  3b4c70: eeb0 1b45    	vmov.f64	d1, d5
  3b4c74: eeb0 2b46    	vmov.f64	d2, d6
  3b4c78: eeb0 3b47    	vmov.f64	d3, d7
  3b4c7c: f7fd fcaa    	bl	0x3b25d4 <cocos2d::CCSpriteBatchNode::create(char const*)+0x13c> @ imm = #-0x26ac
  3b4c80: ed8d 0b04    	vstr	d0, [sp, #16]
  3b4c84: ed9d 7b04    	vldr	d7, [sp, #16]
  3b4c88: eeb5 7bc0    	vcmpe.f64	d7, #0
  3b4c8c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b4c90: d505         	bpl	0x3b4c9e <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x166> @ imm = #0xa
  3b4c92: f04f 0200    	mov.w	r2, #0x0
  3b4c96: f04f 0300    	mov.w	r3, #0x0
  3b4c9a: e9cd 2304    	strd	r2, r3, [sp, #16]
  3b4c9e: 9b03         	ldr	r3, [sp, #0xc]
  3b4ca0: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3b4ca4: ab0e         	add	r3, sp, #0x38
  3b4ca6: ed9d 6b0a    	vldr	d6, [sp, #40]
  3b4caa: ed9d 7b0c    	vldr	d7, [sp, #48]
  3b4cae: 4618         	mov	r0, r3
  3b4cb0: eeb0 0b46    	vmov.f64	d0, d6
  3b4cb4: eeb0 1b47    	vmov.f64	d1, d7
  3b4cb8: ed9d 2b04    	vldr	d2, [sp, #16]
  3b4cbc: f7fd fc64    	bl	0x3b2588 <cocos2d::CCSpriteBatchNode::create(char const*)+0xf0> @ imm = #-0x2738
  3b4cc0: ed9d 6b0e    	vldr	d6, [sp, #56]
  3b4cc4: ed9d 7b10    	vldr	d7, [sp, #64]
  3b4cc8: 4620         	mov	r0, r4
  3b4cca: eeb0 0b46    	vmov.f64	d0, d6
  3b4cce: eeb0 1b47    	vmov.f64	d1, d7
  3b4cd2: f7fd fcdd    	bl	0x3b2690 <cocos2d::CCSpriteBatchNode::create(char const*)+0x1f8> @ imm = #-0x2646
  3b4cd6: f89d 30a4    	ldrb.w	r3, [sp, #0xa4]
  3b4cda: 2b00         	cmp	r3, #0x0
  3b4cdc: d00e         	beq	0x3b4cfc <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x1c4> @ imm = #0x1c
  3b4cde: 9b03         	ldr	r3, [sp, #0xc]
  3b4ce0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b4ce4: 2244         	movs	r2, #0x44
  3b4ce6: 655a         	str	r2, [r3, #0x54]
  3b4ce8: 9b03         	ldr	r3, [sp, #0xc]
  3b4cea: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b4cee: 2244         	movs	r2, #0x44
  3b4cf0: 65da         	str	r2, [r3, #0x5c]
  3b4cf2: 9b03         	ldr	r3, [sp, #0xc]
  3b4cf4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3b4cf8: 2244         	movs	r2, #0x44
  3b4cfa: 659a         	str	r2, [r3, #0x58]
  3b4cfc: 9b03         	ldr	r3, [sp, #0xc]
  3b4cfe: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3b4d02: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b4d06: f721 e900    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xdee00
  3b4d0a: 4604         	mov	r4, r0
  3b4d0c: 460d         	mov	r5, r1
  3b4d0e: e9dd 0106    	ldrd	r0, r1, [sp, #24]
  3b4d12: f721 e900    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xdee00
  3b4d16: 4602         	mov	r2, r0
  3b4d18: 460b         	mov	r3, r1
  3b4d1a: a912         	add	r1, sp, #0x48
  3b4d1c: 4608         	mov	r0, r1
  3b4d1e: ec45 4b10    	vmov	d0, r4, r5
  3b4d22: ec43 2b11    	vmov	d1, r2, r3
  3b4d26: f7fd fbc3    	bl	0x3b24b0 <cocos2d::CCSpriteBatchNode::create(char const*)+0x18> @ imm = #-0x287a
  3b4d2a: ab16         	add	r3, sp, #0x58
  3b4d2c: ed9d 6b12    	vldr	d6, [sp, #72]
  3b4d30: ed9d 7b14    	vldr	d7, [sp, #80]
  3b4d34: 4618         	mov	r0, r3
  3b4d36: eeb0 0b46    	vmov.f64	d0, d6
  3b4d3a: eeb0 1b47    	vmov.f64	d1, d7
  3b4d3e: eeb3 2b0e    	vmov.f64	d2, #3.000000e+01
  3b4d42: f7fd fc21    	bl	0x3b2588 <cocos2d::CCSpriteBatchNode::create(char const*)+0xf0> @ imm = #-0x27be
  3b4d46: ed9d 4b16    	vldr	d4, [sp, #88]
  3b4d4a: ed9d 5b18    	vldr	d5, [sp, #96]
  3b4d4e: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3b4dec <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b4>
  3b4d50: 447b         	add	r3, pc
  3b4d52: ed93 6b00    	vldr	d6, [r3]
  3b4d56: ed93 7b02    	vldr	d7, [r3, #8]
  3b4d5a: 4630         	mov	r0, r6
  3b4d5c: eeb0 0b44    	vmov.f64	d0, d4
  3b4d60: eeb0 1b45    	vmov.f64	d1, d5
  3b4d64: eeb0 2b46    	vmov.f64	d2, d6
  3b4d68: eeb0 3b47    	vmov.f64	d3, d7
  3b4d6c: f7fd fcbc    	bl	0x3b26e8 <cocos2d::CCSpriteBatchNode::create(char const*)+0x250> @ imm = #-0x2688
  3b4d70: 9b03         	ldr	r3, [sp, #0xc]
  3b4d72: 681b         	ldr	r3, [r3]
  3b4d74: 334c         	adds	r3, #0x4c
  3b4d76: 681c         	ldr	r4, [r3]
  3b4d78: 9d03         	ldr	r5, [sp, #0xc]
  3b4d7a: 9b03         	ldr	r3, [sp, #0xc]
  3b4d7c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4d80: ed93 7b0a    	vldr	d7, [r3, #40]
  3b4d84: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b4d88: 9b03         	ldr	r3, [sp, #0xc]
  3b4d8a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3b4d8e: ed93 7b0c    	vldr	d7, [r3, #48]
  3b4d92: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b4d96: ab08         	add	r3, sp, #0x20
  3b4d98: 4618         	mov	r0, r3
  3b4d9a: ee16 1a90    	vmov	r1, s13
  3b4d9e: ee17 2a90    	vmov	r2, s15
  3b4da2: f1dd ffa5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1ddf4a
  3b4da6: ab08         	add	r3, sp, #0x20
  3b4da8: 4628         	mov	r0, r5
  3b4daa: 4619         	mov	r1, r3
  3b4dac: 47a0         	blx	r4
  3b4dae: f22b fc7f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x22b8fe
  3b4db2: 4603         	mov	r3, r0
  3b4db4: 4618         	mov	r0, r3
  3b4db6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3b4df0 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x2b8>
  3b4db8: 447b         	add	r3, pc
  3b4dba: 4619         	mov	r1, r3
  3b4dbc: 9a03         	ldr	r2, [sp, #0xc]
  3b4dbe: f22b feb5    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x22bd6a
  3b4dc2: e005         	b	0x3b4dd0 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x298> @ imm = #0xa
  3b4dc4: ab16         	add	r3, sp, #0x58
  3b4dc6: 4618         	mov	r0, r3
  3b4dc8: f000 f5a4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x400b48
  3b4dcc: f3d3 f96e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d32dc
  3b4dd0: b01a         	add	sp, #0x68
  3b4dd2: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  3b4dd6: b002         	add	sp, #0x8
  3b4dd8: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3b4dd9); words below are literal-pool data ---
  3b4dda: bf00         	nop
  3b4ddc: fa35 3c8e    	<unknown>
  3b4de0: dec0         	udf	#0xc0
  3b4de2: 0057         	lsls	r7, r2, #0x1
  3b4de4: d784         	bvc	0x3b4cf0 <ProjectileManager::addSaw(cpVect, float, cpVect, Weapon*, bool, std::string)+0x1b8> @ imm = #-0xf8
  3b4de6: ffff f380    	<unknown>
  3b4dea: 0041         	lsls	r1, r0, #0x1
  3b4dec: f24c 0041    	movw	r0, #0xc041
  3b4df0: f188 0041    	<unknown>
