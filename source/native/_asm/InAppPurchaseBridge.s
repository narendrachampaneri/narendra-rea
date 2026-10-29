// InAppPurchaseBridge: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 10 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../InAppPurchaseBridge.cpp

// ==== InAppPurchaseBridge::restore
//      file offset 0x431634 (= ELF address; Ghidra 0x441634), 18 bytes, Thumb-2
  431634: b508         	push	{r3, lr}
  431636: f7fc fbfd    	bl	0x42de34 <IapManager::sharedIapManager()> @ imm = #-0x3806
  43163a: 4603         	mov	r3, r0
  43163c: 4618         	mov	r0, r3
  43163e: 2101         	movs	r1, #0x1
  431640: f7fc fd52    	bl	0x42e0e8 <IapManager::restore(bool)> @ imm = #-0x355c
  431644: bd08         	pop	{r3, pc}

// ==== InAppPurchaseBridge::purchaseProduct
//      file offset 0x431648 (= ELF address; Ghidra 0x441648), 58 bytes, Thumb-2
  431648: b510         	push	{r4, lr}
  43164a: b084         	sub	sp, #0x10
  43164c: 9001         	str	r0, [sp, #0x4]
  43164e: f7fc fbf1    	bl	0x42de34 <IapManager::sharedIapManager()> @ imm = #-0x381e
  431652: 4604         	mov	r4, r0
  431654: ab03         	add	r3, sp, #0xc
  431656: 4618         	mov	r0, r3
  431658: 9901         	ldr	r1, [sp, #0x4]
  43165a: f384 ff45    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x384e8a
  43165e: ab03         	add	r3, sp, #0xc
  431660: 4620         	mov	r0, r4
  431662: 4619         	mov	r1, r3
  431664: f7fd fa9e    	bl	0x42eba4 <IapManager::purchaseProduct(std::string)> @ imm = #-0x2ac4
  431668: ab03         	add	r3, sp, #0xc
  43166a: 4618         	mov	r0, r3
  43166c: f384 f952    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3842a4
  431670: e005         	b	0x43167e <InAppPurchaseBridge::purchaseProduct(std::string)+0x36> @ imm = #0xa
  431672: ab03         	add	r3, sp, #0xc
  431674: 4618         	mov	r0, r3
  431676: f384 f94d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38429a
  43167a: f356 fd17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x356a2e
  43167e: b004         	add	sp, #0x10
  431680: bd10         	pop	{r4, pc}

// ==== InAppPurchaseBridge::purchaseProductInGame
//      file offset 0x431684 (= ELF address; Ghidra 0x441684), 220 bytes, Thumb-2
  431684: b530         	push	{r4, r5, lr}
  431686: b085         	sub	sp, #0x14
  431688: 9001         	str	r0, [sp, #0x4]
  43168a: 4c32         	ldr	r4, [pc, #0xc8]         @ 0x431754 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xd0>
  43168c: 447c         	add	r4, pc
  43168e: f7fb f8f9    	bl	0x42c884 <ApplicationInterface::requiresClaimedIdentity()> @ imm = #-0x4e0e
  431692: 4603         	mov	r3, r0
  431694: 2b00         	cmp	r3, #0x0
  431696: d03d         	beq	0x431714 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0x90> @ imm = #0x7a
  431698: f7f0 feca    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #-0xf26c
  43169c: 4603         	mov	r3, r0
  43169e: 2b00         	cmp	r3, #0x0
  4316a0: d011         	beq	0x4316c6 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0x42> @ imm = #0x22
  4316a2: f7fc fbc7    	bl	0x42de34 <IapManager::sharedIapManager()> @ imm = #-0x3872
  4316a6: 4604         	mov	r4, r0
  4316a8: ab03         	add	r3, sp, #0xc
  4316aa: 4618         	mov	r0, r3
  4316ac: 9901         	ldr	r1, [sp, #0x4]
  4316ae: f384 ff1b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x384e36
  4316b2: ab03         	add	r3, sp, #0xc
  4316b4: 4620         	mov	r0, r4
  4316b6: 4619         	mov	r1, r3
  4316b8: f7fd fa74    	bl	0x42eba4 <IapManager::purchaseProduct(std::string)> @ imm = #-0x2b18
  4316bc: ab03         	add	r3, sp, #0xc
  4316be: 4618         	mov	r0, r3
  4316c0: f384 f928    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x384250
  4316c4: e044         	b	0x431750 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xcc> @ imm = #0x88
  4316c6: f746 fa3b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb9b8a
  4316ca: 4603         	mov	r3, r0
  4316cc: 4618         	mov	r0, r3
  4316ce: 2100         	movs	r1, #0x0
  4316d0: f748 fb4e    	bl	0x379d70 <NetworkManager::setInGame(bool)> @ imm = #-0xb7964
  4316d4: f746 fa34    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb9b98
  4316d8: 4603         	mov	r3, r0
  4316da: 4618         	mov	r0, r3
  4316dc: f748 fae2    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #-0xb7a3c
  4316e0: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x431758 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xd4>
  4316e2: 58e3         	ldr	r3, [r4, r3]
  4316e4: 681b         	ldr	r3, [r3]
  4316e6: 4618         	mov	r0, r3
  4316e8: 210d         	movs	r1, #0xd
  4316ea: f7c6 fb69    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x3992e
  4316ee: f169 ff41    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x169e82
  4316f2: 4604         	mov	r4, r0
  4316f4: 4b19         	ldr	r3, [pc, #0x64]         @ 0x43175c <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xd8>
  4316f6: 447b         	add	r3, pc
  4316f8: 681d         	ldr	r5, [r3]
  4316fa: f785 fe8f    	bl	0x3b741c <PurchaseLayer::scene()> @ imm = #-0x7a2e2
  4316fe: 4603         	mov	r3, r0
  431700: 4628         	mov	r0, r5
  431702: 4619         	mov	r1, r3
  431704: f17f fe00    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x17fc00
  431708: 4603         	mov	r3, r0
  43170a: 4620         	mov	r0, r4
  43170c: 4619         	mov	r1, r3
  43170e: f16a fe25    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x16ac4a
  431712: e01d         	b	0x431750 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xcc> @ imm = #0x3a
  431714: f7fc fb8e    	bl	0x42de34 <IapManager::sharedIapManager()> @ imm = #-0x38e4
  431718: 4604         	mov	r4, r0
  43171a: ab03         	add	r3, sp, #0xc
  43171c: 4618         	mov	r0, r3
  43171e: 9901         	ldr	r1, [sp, #0x4]
  431720: f384 fee2    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x384dc4
  431724: ab03         	add	r3, sp, #0xc
  431726: 4620         	mov	r0, r4
  431728: 4619         	mov	r1, r3
  43172a: f7fd fa3b    	bl	0x42eba4 <IapManager::purchaseProduct(std::string)> @ imm = #-0x2b8a
  43172e: ab03         	add	r3, sp, #0xc
  431730: 4618         	mov	r0, r3
  431732: f384 f8ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3841de
  431736: e00b         	b	0x431750 <InAppPurchaseBridge::purchaseProductInGame(std::string)+0xcc> @ imm = #0x16
  431738: ab03         	add	r3, sp, #0xc
  43173a: 4618         	mov	r0, r3
  43173c: f384 f8ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3841d4
  431740: f356 fcb4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x356968
  431744: ab03         	add	r3, sp, #0xc
  431746: 4618         	mov	r0, r3
  431748: f384 f8e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3841c8
  43174c: f356 fcae    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35695c
  431750: b005         	add	sp, #0x14
  431752: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x431753); words below are literal-pool data ---
  431754: 137c         	asrs	r4, r7, #0xd
  431756: 0050         	lsls	r0, r2, #0x1
  431758: d730         	bvc	0x4317bc <InAppPurchaseBridge::readyToPurchase()+0xc> @ imm = #0x60
  43175a: ffff 2056    	vshr.u32	q9, q3, #0x1
  43175e: 0050         	lsls	r0, r2, #0x1

// ==== InAppPurchaseBridge::isProductPurchased
//      file offset 0x431760 (= ELF address; Ghidra 0x441760), 66 bytes, Thumb-2
  431760: b510         	push	{r4, lr}
  431762: b084         	sub	sp, #0x10
  431764: 9001         	str	r0, [sp, #0x4]
  431766: f7fc fb65    	bl	0x42de34 <IapManager::sharedIapManager()> @ imm = #-0x3936
  43176a: 4604         	mov	r4, r0
  43176c: ab03         	add	r3, sp, #0xc
  43176e: 4618         	mov	r0, r3
  431770: 9901         	ldr	r1, [sp, #0x4]
  431772: f384 feb9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x384d72
  431776: ab03         	add	r3, sp, #0xc
  431778: 4620         	mov	r0, r4
  43177a: 4619         	mov	r1, r3
  43177c: f7fd fce4    	bl	0x42f148 <IapManager::isProductPurchased(std::string)> @ imm = #-0x2638
  431780: 4603         	mov	r3, r0
  431782: 461c         	mov	r4, r3
  431784: ab03         	add	r3, sp, #0xc
  431786: 4618         	mov	r0, r3
  431788: f384 f8c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x384188
  43178c: 4623         	mov	r3, r4
  43178e: e005         	b	0x43179c <InAppPurchaseBridge::isProductPurchased(std::string)+0x3c> @ imm = #0xa
  431790: ab03         	add	r3, sp, #0xc
  431792: 4618         	mov	r0, r3
  431794: f384 f8be    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x38417c
  431798: f356 fc88    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x356910
  43179c: 4618         	mov	r0, r3
  43179e: b004         	add	sp, #0x10
  4317a0: bd10         	pop	{r4, pc}

// ==== InAppPurchaseBridge::readyToSignIn
//      file offset 0x4317a4 (= ELF address; Ghidra 0x4417a4), 12 bytes, Thumb-2
  4317a4: b508         	push	{r3, lr}
  4317a6: f000 f803    	bl	0x4317b0 <InAppPurchaseBridge::readyToPurchase()> @ imm = #0x6
  4317aa: 4603         	mov	r3, r0
  4317ac: 4618         	mov	r0, r3
  4317ae: bd08         	pop	{r3, pc}

// ==== InAppPurchaseBridge::readyToPurchase
//      file offset 0x4317b0 (= ELF address; Ghidra 0x4417b0), 140 bytes, Thumb-2
  4317b0: b500         	push	{lr}
  4317b2: b085         	sub	sp, #0x14
  4317b4: ab01         	add	r3, sp, #0x4
  4317b6: 4618         	mov	r0, r3
  4317b8: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x431830 <InAppPurchaseBridge::readyToPurchase()+0x80>
  4317ba: 447b         	add	r3, pc
  4317bc: 4619         	mov	r1, r3
  4317be: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x431834 <InAppPurchaseBridge::readyToPurchase()+0x84>
  4317c0: 447b         	add	r3, pc
  4317c2: 461a         	mov	r2, r3
  4317c4: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x431838 <InAppPurchaseBridge::readyToPurchase()+0x88>
  4317c6: 447b         	add	r3, pc
  4317c8: f1a0 fcaa    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a0954
  4317cc: 4603         	mov	r3, r0
  4317ce: f88d 3001    	strb.w	r3, [sp, #0x1]
  4317d2: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  4317d6: f083 0301    	eor	r3, r3, #0x1
  4317da: b2db         	uxtb	r3, r3
  4317dc: 2b00         	cmp	r3, #0x0
  4317de: d123         	bne	0x431828 <InAppPurchaseBridge::readyToPurchase()+0x78> @ imm = #0x46
  4317e0: 9901         	ldr	r1, [sp, #0x4]
  4317e2: 9a02         	ldr	r2, [sp, #0x8]
  4317e4: 9b03         	ldr	r3, [sp, #0xc]
  4317e6: 4608         	mov	r0, r1
  4317e8: 4611         	mov	r1, r2
  4317ea: 461a         	mov	r2, r3
  4317ec: f7f9 fcd0    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x6660
  4317f0: 4603         	mov	r3, r0
  4317f2: f88d 3002    	strb.w	r3, [sp, #0x2]
  4317f6: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  4317fa: 2b00         	cmp	r3, #0x0
  4317fc: bf0c         	ite	eq
  4317fe: 2300         	moveq	r3, #0x0
  431800: 2301         	movne	r3, #0x1
  431802: f88d 3003    	strb.w	r3, [sp, #0x3]
  431806: 9b01         	ldr	r3, [sp, #0x4]
  431808: 4618         	mov	r0, r3
  43180a: f1a0 fd4d    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a0a9a
  43180e: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  431812: 2b00         	cmp	r3, #0x0
  431814: d006         	beq	0x431824 <InAppPurchaseBridge::readyToPurchase()+0x74> @ imm = #0xc
  431816: f7f0 fe0b    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #-0xf3ea
  43181a: 4603         	mov	r3, r0
  43181c: 2b00         	cmp	r3, #0x0
  43181e: d001         	beq	0x431824 <InAppPurchaseBridge::readyToPurchase()+0x74> @ imm = #0x2
  431820: 2301         	movs	r3, #0x1
  431822: e001         	b	0x431828 <InAppPurchaseBridge::readyToPurchase()+0x78> @ imm = #0x2
  431824: 2300         	movs	r3, #0x0
  431826: e7ff         	b	0x431828 <InAppPurchaseBridge::readyToPurchase()+0x78> @ imm = #-0x2
  431828: 4618         	mov	r0, r3
  43182a: b005         	add	sp, #0x14
  43182c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x43182f); words below are literal-pool data ---
  431830: cb42         	ldm	r3!, {r1, r6}
  431832: 003a         	movs	r2, r7
  431834: cb5c         	ldm	r3, {r2, r3, r4, r6}
  431836: 003a         	movs	r2, r7
  431838: cb6e         	ldm	r3, {r1, r2, r3, r5, r6}
  43183a: 003a         	movs	r2, r7

// ==== InAppPurchaseBridge::hasPendingTransactions
//      file offset 0x43183c (= ELF address; Ghidra 0x44183c), 120 bytes, Thumb-2
  43183c: b500         	push	{lr}
  43183e: b085         	sub	sp, #0x14
  431840: ab01         	add	r3, sp, #0x4
  431842: 4618         	mov	r0, r3
  431844: 4b18         	ldr	r3, [pc, #0x60]         @ 0x4318a8 <InAppPurchaseBridge::hasPendingTransactions()+0x6c>
  431846: 447b         	add	r3, pc
  431848: 4619         	mov	r1, r3
  43184a: 4b18         	ldr	r3, [pc, #0x60]         @ 0x4318ac <InAppPurchaseBridge::hasPendingTransactions()+0x70>
  43184c: 447b         	add	r3, pc
  43184e: 461a         	mov	r2, r3
  431850: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x4318b0 <InAppPurchaseBridge::hasPendingTransactions()+0x74>
  431852: 447b         	add	r3, pc
  431854: f1a0 fc64    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a08c8
  431858: 4603         	mov	r3, r0
  43185a: f88d 3001    	strb.w	r3, [sp, #0x1]
  43185e: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  431862: f083 0301    	eor	r3, r3, #0x1
  431866: b2db         	uxtb	r3, r3
  431868: 2b00         	cmp	r3, #0x0
  43186a: d119         	bne	0x4318a0 <InAppPurchaseBridge::hasPendingTransactions()+0x64> @ imm = #0x32
  43186c: 9901         	ldr	r1, [sp, #0x4]
  43186e: 9a02         	ldr	r2, [sp, #0x8]
  431870: 9b03         	ldr	r3, [sp, #0xc]
  431872: 4608         	mov	r0, r1
  431874: 4611         	mov	r1, r2
  431876: 461a         	mov	r2, r3
  431878: f7f9 fc8a    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x66ec
  43187c: 4603         	mov	r3, r0
  43187e: f88d 3002    	strb.w	r3, [sp, #0x2]
  431882: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  431886: 2b00         	cmp	r3, #0x0
  431888: bf0c         	ite	eq
  43188a: 2300         	moveq	r3, #0x0
  43188c: 2301         	movne	r3, #0x1
  43188e: f88d 3003    	strb.w	r3, [sp, #0x3]
  431892: 9b01         	ldr	r3, [sp, #0x4]
  431894: 4618         	mov	r0, r3
  431896: f1a0 fd07    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a0a0e
  43189a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  43189e: e7ff         	b	0x4318a0 <InAppPurchaseBridge::hasPendingTransactions()+0x64> @ imm = #-0x2
  4318a0: 4618         	mov	r0, r3
  4318a2: b005         	add	sp, #0x14
  4318a4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x4318a7); words below are literal-pool data ---
  4318a8: cab6         	ldm	r2, {r1, r2, r4, r5, r7}
  4318aa: 003a         	movs	r2, r7
  4318ac: caec         	ldm	r2, {r2, r3, r5, r6, r7}
  4318ae: 003a         	movs	r2, r7
  4318b0: cae2         	ldm	r2!, {r1, r5, r6, r7}
  4318b2: 003a         	movs	r2, r7

// ==== InAppPurchaseBridge::canMakePurchases
//      file offset 0x4318b4 (= ELF address; Ghidra 0x4418b4), 160 bytes, Thumb-2
  4318b4: b500         	push	{lr}
  4318b6: b085         	sub	sp, #0x14
  4318b8: ab01         	add	r3, sp, #0x4
  4318ba: 4618         	mov	r0, r3
  4318bc: 4b22         	ldr	r3, [pc, #0x88]         @ 0x431948 <InAppPurchaseBridge::canMakePurchases()+0x94>
  4318be: 447b         	add	r3, pc
  4318c0: 4619         	mov	r1, r3
  4318c2: 4b22         	ldr	r3, [pc, #0x88]         @ 0x43194c <InAppPurchaseBridge::canMakePurchases()+0x98>
  4318c4: 447b         	add	r3, pc
  4318c6: 461a         	mov	r2, r3
  4318c8: 4b21         	ldr	r3, [pc, #0x84]         @ 0x431950 <InAppPurchaseBridge::canMakePurchases()+0x9c>
  4318ca: 447b         	add	r3, pc
  4318cc: f1a0 fc28    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a0850
  4318d0: 4603         	mov	r3, r0
  4318d2: f88d 3001    	strb.w	r3, [sp, #0x1]
  4318d6: f89d 3001    	ldrb.w	r3, [sp, #0x1]
  4318da: f083 0301    	eor	r3, r3, #0x1
  4318de: b2db         	uxtb	r3, r3
  4318e0: 2b00         	cmp	r3, #0x0
  4318e2: d12c         	bne	0x43193e <InAppPurchaseBridge::canMakePurchases()+0x8a> @ imm = #0x58
  4318e4: 9901         	ldr	r1, [sp, #0x4]
  4318e6: 9a02         	ldr	r2, [sp, #0x8]
  4318e8: 9b03         	ldr	r3, [sp, #0xc]
  4318ea: 4608         	mov	r0, r1
  4318ec: 4611         	mov	r1, r2
  4318ee: 461a         	mov	r2, r3
  4318f0: f7f9 fc4e    	bl	0x42b190 <_JNIEnv::CallStaticBooleanMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x6764
  4318f4: 4603         	mov	r3, r0
  4318f6: f88d 3002    	strb.w	r3, [sp, #0x2]
  4318fa: f89d 3002    	ldrb.w	r3, [sp, #0x2]
  4318fe: 2b00         	cmp	r3, #0x0
  431900: bf0c         	ite	eq
  431902: 2300         	moveq	r3, #0x0
  431904: 2301         	movne	r3, #0x1
  431906: f88d 3003    	strb.w	r3, [sp, #0x3]
  43190a: 9b01         	ldr	r3, [sp, #0x4]
  43190c: 4618         	mov	r0, r3
  43190e: f1a0 fccb    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a0996
  431912: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  431916: 2b00         	cmp	r3, #0x0
  431918: d00f         	beq	0x43193a <InAppPurchaseBridge::canMakePurchases()+0x86> @ imm = #0x1e
  43191a: f7f0 fd89    	bl	0x422430 <ApplicationInterface::hasClaimedIdentity()> @ imm = #-0xf4ee
  43191e: 4603         	mov	r3, r0
  431920: 2b00         	cmp	r3, #0x0
  431922: d00a         	beq	0x43193a <InAppPurchaseBridge::canMakePurchases()+0x86> @ imm = #0x14
  431924: f746 f90c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0xb9de8
  431928: 4603         	mov	r3, r0
  43192a: 4618         	mov	r0, r3
  43192c: f749 fb5e    	bl	0x37afec <NetworkManager::hasCompletedSessionRequest()> @ imm = #-0xb6944
  431930: 4603         	mov	r3, r0
  431932: 2b00         	cmp	r3, #0x0
  431934: d001         	beq	0x43193a <InAppPurchaseBridge::canMakePurchases()+0x86> @ imm = #0x2
  431936: 2301         	movs	r3, #0x1
  431938: e001         	b	0x43193e <InAppPurchaseBridge::canMakePurchases()+0x8a> @ imm = #0x2
  43193a: 2300         	movs	r3, #0x0
  43193c: e7ff         	b	0x43193e <InAppPurchaseBridge::canMakePurchases()+0x8a> @ imm = #-0x2
  43193e: 4618         	mov	r0, r3
  431940: b005         	add	sp, #0x14
  431942: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x431945); words below are literal-pool data ---
  431946: bf00         	nop
  431948: ca3e         	ldm	r2, {r1, r2, r3, r4, r5}
  43194a: 003a         	movs	r2, r7
  43194c: ca8c         	ldm	r2, {r2, r3, r7}
  43194e: 003a         	movs	r2, r7
  431950: ca6a         	ldm	r2!, {r1, r3, r5, r6}
  431952: 003a         	movs	r2, r7

// ==== InAppPurchaseBridge::showPurchaseStatusAlert
//      file offset 0x431a1c (= ELF address; Ghidra 0x441a1c), 296 bytes, Thumb-2
  431a1c: b510         	push	{r4, lr}
  431a1e: b08a         	sub	sp, #0x28
  431a20: ab06         	add	r3, sp, #0x18
  431a22: 4618         	mov	r0, r3
  431a24: f7ff ff96    	bl	0x431954 <getBillingSystemStatusMessage()> @ imm = #-0xd4
  431a28: ab06         	add	r3, sp, #0x18
  431a2a: 4618         	mov	r0, r3
  431a2c: f383 fb16    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x38362c
  431a30: 4603         	mov	r3, r0
  431a32: 2b00         	cmp	r3, #0x0
  431a34: bf0c         	ite	eq
  431a36: 2300         	moveq	r3, #0x0
  431a38: 2301         	movne	r3, #0x1
  431a3a: b2db         	uxtb	r3, r3
  431a3c: 2b00         	cmp	r3, #0x0
  431a3e: d054         	beq	0x431aea <InAppPurchaseBridge::showPurchaseStatusAlert()+0xce> @ imm = #0xa8
  431a40: ab04         	add	r3, sp, #0x10
  431a42: 4618         	mov	r0, r3
  431a44: f358 fcd6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3589ac
  431a48: aa08         	add	r2, sp, #0x20
  431a4a: ab04         	add	r3, sp, #0x10
  431a4c: 4610         	mov	r0, r2
  431a4e: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x431b3c <InAppPurchaseBridge::showPurchaseStatusAlert()+0x120>
  431a50: 447a         	add	r2, pc
  431a52: 4611         	mov	r1, r2
  431a54: 461a         	mov	r2, r3
  431a56: f385 f803    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x385006
  431a5a: ab06         	add	r3, sp, #0x18
  431a5c: 4618         	mov	r0, r3
  431a5e: f383 fc4f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x38389e
  431a62: 4604         	mov	r4, r0
  431a64: ab05         	add	r3, sp, #0x14
  431a66: 4618         	mov	r0, r3
  431a68: f358 fcc4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x358988
  431a6c: aa09         	add	r2, sp, #0x24
  431a6e: ab05         	add	r3, sp, #0x14
  431a70: 4610         	mov	r0, r2
  431a72: 4621         	mov	r1, r4
  431a74: 461a         	mov	r2, r3
  431a76: f384 fff3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x384fe6
  431a7a: ab03         	add	r3, sp, #0xc
  431a7c: 4618         	mov	r0, r3
  431a7e: f358 fcb9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x358972
  431a82: aa07         	add	r2, sp, #0x1c
  431a84: ab03         	add	r3, sp, #0xc
  431a86: 4610         	mov	r0, r2
  431a88: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x431b40 <InAppPurchaseBridge::showPurchaseStatusAlert()+0x124>
  431a8a: 447a         	add	r2, pc
  431a8c: 4611         	mov	r1, r2
  431a8e: 461a         	mov	r2, r3
  431a90: f384 ffe6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x384fcc
  431a94: ab07         	add	r3, sp, #0x1c
  431a96: 4618         	mov	r0, r3
  431a98: f167 ffd0    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x167fa0
  431a9c: 4603         	mov	r3, r0
  431a9e: 4618         	mov	r0, r3
  431aa0: 2100         	movs	r1, #0x0
  431aa2: f168 f9b5    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x16836a
  431aa6: 4603         	mov	r3, r0
  431aa8: a908         	add	r1, sp, #0x20
  431aaa: aa09         	add	r2, sp, #0x24
  431aac: 2000         	movs	r0, #0x0
  431aae: 9000         	str	r0, [sp]
  431ab0: 2000         	movs	r0, #0x0
  431ab2: 9001         	str	r0, [sp, #0x4]
  431ab4: 2000         	movs	r0, #0x0
  431ab6: f6ad fe9d    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x1522c6
  431aba: ab07         	add	r3, sp, #0x1c
  431abc: 4618         	mov	r0, r3
  431abe: f383 ff29    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e52
  431ac2: ab03         	add	r3, sp, #0xc
  431ac4: 4618         	mov	r0, r3
  431ac6: f358 fc99    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x358932
  431aca: ab09         	add	r3, sp, #0x24
  431acc: 4618         	mov	r0, r3
  431ace: f383 ff21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e42
  431ad2: ab05         	add	r3, sp, #0x14
  431ad4: 4618         	mov	r0, r3
  431ad6: f358 fc91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x358922
  431ada: ab08         	add	r3, sp, #0x20
  431adc: 4618         	mov	r0, r3
  431ade: f383 ff19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e32
  431ae2: ab04         	add	r3, sp, #0x10
  431ae4: 4618         	mov	r0, r3
  431ae6: f358 fc89    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x358912
  431aea: ab06         	add	r3, sp, #0x18
  431aec: 4618         	mov	r0, r3
  431aee: f383 ff11    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e22
  431af2: e020         	b	0x431b36 <InAppPurchaseBridge::showPurchaseStatusAlert()+0x11a> @ imm = #0x40
  431af4: ab07         	add	r3, sp, #0x1c
  431af6: 4618         	mov	r0, r3
  431af8: f383 ff0c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e18
  431afc: e7ff         	b	0x431afe <InAppPurchaseBridge::showPurchaseStatusAlert()+0xe2> @ imm = #-0x2
  431afe: ab03         	add	r3, sp, #0xc
  431b00: 4618         	mov	r0, r3
  431b02: f358 fc7b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3588f6
  431b06: ab09         	add	r3, sp, #0x24
  431b08: 4618         	mov	r0, r3
  431b0a: f383 ff03    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383e06
  431b0e: e7ff         	b	0x431b10 <InAppPurchaseBridge::showPurchaseStatusAlert()+0xf4> @ imm = #-0x2
  431b10: ab05         	add	r3, sp, #0x14
  431b12: 4618         	mov	r0, r3
  431b14: f358 fc72    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3588e4
  431b18: ab08         	add	r3, sp, #0x20
  431b1a: 4618         	mov	r0, r3
  431b1c: f383 fefa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383df4
  431b20: e7ff         	b	0x431b22 <InAppPurchaseBridge::showPurchaseStatusAlert()+0x106> @ imm = #-0x2
  431b22: ab04         	add	r3, sp, #0x10
  431b24: 4618         	mov	r0, r3
  431b26: f358 fc69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3588d2
  431b2a: ab06         	add	r3, sp, #0x18
  431b2c: 4618         	mov	r0, r3
  431b2e: f383 fef1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383de2
  431b32: f356 fabb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x356576
  431b36: b00a         	add	sp, #0x28
  431b38: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x431b39); words below are literal-pool data ---
  431b3a: bf00         	nop
  431b3c: c990         	ldm	r1!, {r4, r7}
  431b3e: 003a         	movs	r2, r7
  431b40: c972         	ldm	r1, {r1, r4, r5, r6}
  431b42: 003a         	movs	r2, r7

// ==== InAppPurchaseBridge::getProductPrice
//      file offset 0x431b44 (= ELF address; Ghidra 0x441b44), 280 bytes, Thumb-2
  431b44: b510         	push	{r4, lr}
  431b46: b08a         	sub	sp, #0x28
  431b48: 9001         	str	r0, [sp, #0x4]
  431b4a: 9100         	str	r1, [sp]
  431b4c: ab07         	add	r3, sp, #0x1c
  431b4e: 4618         	mov	r0, r3
  431b50: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x431c48 <InAppPurchaseBridge::getProductPrice(std::string)+0x104>
  431b52: 447b         	add	r3, pc
  431b54: 4619         	mov	r1, r3
  431b56: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x431c4c <InAppPurchaseBridge::getProductPrice(std::string)+0x108>
  431b58: 447b         	add	r3, pc
  431b5a: 461a         	mov	r2, r3
  431b5c: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x431c50 <InAppPurchaseBridge::getProductPrice(std::string)+0x10c>
  431b5e: 447b         	add	r3, pc
  431b60: f1a0 fade    	bl	0x5d2120 <cocos2d::JniHelper::getStaticMethodInfo(cocos2d::JniMethodInfo_&, char const*, char const*, char const*)> @ imm = #0x1a05bc
  431b64: 4603         	mov	r3, r0
  431b66: f88d 300f    	strb.w	r3, [sp, #0xf]
  431b6a: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  431b6e: f083 0301    	eor	r3, r3, #0x1
  431b72: b2db         	uxtb	r3, r3
  431b74: 2b00         	cmp	r3, #0x0
  431b76: d010         	beq	0x431b9a <InAppPurchaseBridge::getProductPrice(std::string)+0x56> @ imm = #0x20
  431b78: ab04         	add	r3, sp, #0x10
  431b7a: 4618         	mov	r0, r3
  431b7c: f358 fc3a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x358874
  431b80: ab04         	add	r3, sp, #0x10
  431b82: 9801         	ldr	r0, [sp, #0x4]
  431b84: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x431c54 <InAppPurchaseBridge::getProductPrice(std::string)+0x110>
  431b86: 447a         	add	r2, pc
  431b88: 4611         	mov	r1, r2
  431b8a: 461a         	mov	r2, r3
  431b8c: f384 ff68    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x384ed0
  431b90: ab04         	add	r3, sp, #0x10
  431b92: 4618         	mov	r0, r3
  431b94: f358 fc32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x358864
  431b98: e053         	b	0x431c42 <InAppPurchaseBridge::getProductPrice(std::string)+0xfe> @ imm = #0xa6
  431b9a: 9800         	ldr	r0, [sp]
  431b9c: f383 fa5e    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3834bc
  431ba0: 4603         	mov	r3, r0
  431ba2: 2b00         	cmp	r3, #0x0
  431ba4: bf14         	ite	ne
  431ba6: 2300         	movne	r3, #0x0
  431ba8: 2301         	moveq	r3, #0x1
  431baa: b2db         	uxtb	r3, r3
  431bac: 2b00         	cmp	r3, #0x0
  431bae: d009         	beq	0x431bc4 <InAppPurchaseBridge::getProductPrice(std::string)+0x80> @ imm = #0x12
  431bb0: 9b07         	ldr	r3, [sp, #0x1c]
  431bb2: 4618         	mov	r0, r3
  431bb4: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x431c58 <InAppPurchaseBridge::getProductPrice(std::string)+0x114>
  431bb6: 447b         	add	r3, pc
  431bb8: 4619         	mov	r1, r3
  431bba: f6a9 fcbb    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x15668a
  431bbe: 4603         	mov	r3, r0
  431bc0: 9305         	str	r3, [sp, #0x14]
  431bc2: e00a         	b	0x431bda <InAppPurchaseBridge::getProductPrice(std::string)+0x96> @ imm = #0x14
  431bc4: 9c07         	ldr	r4, [sp, #0x1c]
  431bc6: 9800         	ldr	r0, [sp]
  431bc8: f383 fb9a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x383734
  431bcc: 4603         	mov	r3, r0
  431bce: 4620         	mov	r0, r4
  431bd0: 4619         	mov	r1, r3
  431bd2: f6a9 fcaf    	bl	0x2db534 <_JNIEnv::NewStringUTF(char const*)> @ imm = #-0x1566a2
  431bd6: 4603         	mov	r3, r0
  431bd8: 9305         	str	r3, [sp, #0x14]
  431bda: 9907         	ldr	r1, [sp, #0x1c]
  431bdc: 9a08         	ldr	r2, [sp, #0x20]
  431bde: 9b09         	ldr	r3, [sp, #0x24]
  431be0: 4608         	mov	r0, r1
  431be2: 4611         	mov	r1, r2
  431be4: 461a         	mov	r2, r3
  431be6: 9b05         	ldr	r3, [sp, #0x14]
  431be8: f7f9 fab8    	bl	0x42b15c <_JNIEnv::CallStaticObjectMethod(_jclass*, _jmethodID*, ...)> @ imm = #-0x6a90
  431bec: 4603         	mov	r3, r0
  431bee: 9306         	str	r3, [sp, #0x18]
  431bf0: ab04         	add	r3, sp, #0x10
  431bf2: 4618         	mov	r0, r3
  431bf4: 9906         	ldr	r1, [sp, #0x18]
  431bf6: f1a0 fab7    	bl	0x5d2168 <cocos2d::JniHelper::jstring2string(_jstring*)> @ imm = #0x1a056e
  431bfa: 9b07         	ldr	r3, [sp, #0x1c]
  431bfc: 4618         	mov	r0, r3
  431bfe: 9906         	ldr	r1, [sp, #0x18]
  431c00: f6a9 fc4c    	bl	0x2db49c <_JNIEnv::NewGlobalRef(_jobject*)+0x20> @ imm = #-0x156768
  431c04: 9b07         	ldr	r3, [sp, #0x1c]
  431c06: 4618         	mov	r0, r3
  431c08: 9905         	ldr	r1, [sp, #0x14]
  431c0a: f6a9 fc47    	bl	0x2db49c <_JNIEnv::NewGlobalRef(_jobject*)+0x20> @ imm = #-0x156772
  431c0e: 9b07         	ldr	r3, [sp, #0x1c]
  431c10: 4618         	mov	r0, r3
  431c12: f1a0 fb49    	bl	0x5d22a8 <cocos2d::JniHelper::logAndClearExceptions(_JNIEnv*)> @ imm = #0x1a0692
  431c16: ab04         	add	r3, sp, #0x10
  431c18: 9801         	ldr	r0, [sp, #0x4]
  431c1a: 4619         	mov	r1, r3
  431c1c: f383 fad0    	bl	0x7b51c0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18710> @ imm = #0x3835a0
  431c20: ab04         	add	r3, sp, #0x10
  431c22: 4618         	mov	r0, r3
  431c24: f383 fe76    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383cec
  431c28: e00b         	b	0x431c42 <InAppPurchaseBridge::getProductPrice(std::string)+0xfe> @ imm = #0x16
  431c2a: ab04         	add	r3, sp, #0x10
  431c2c: 4618         	mov	r0, r3
  431c2e: f358 fbe5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3587ca
  431c32: f356 fa3b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x356476
  431c36: ab04         	add	r3, sp, #0x10
  431c38: 4618         	mov	r0, r3
  431c3a: f383 fe6b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x383cd6
  431c3e: f356 fa35    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x35646a
  431c42: 9801         	ldr	r0, [sp, #0x4]
  431c44: b00a         	add	sp, #0x28
  431c46: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x431c47); words below are literal-pool data ---
  431c48: c7aa         	stm	r7!, {r1, r3, r5, r7}
  431c4a: 003a         	movs	r2, r7
  431c4c: c8a8         	ldm	r0!, {r3, r5, r7}
  431c4e: 003a         	movs	r2, r7
  431c50: c8be         	ldm	r0!, {r1, r2, r3, r4, r5, r7}
  431c52: 003a         	movs	r2, r7
  431c54: c8be         	ldm	r0!, {r1, r2, r3, r4, r5, r7}
  431c56: 003a         	movs	r2, r7
  431c58: c88e         	ldm	r0!, {r1, r2, r3, r7}
  431c5a: 003a         	movs	r2, r7
