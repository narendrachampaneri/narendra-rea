// WeaponFireDelegate: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 1 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../WeaponFireDelegate.cpp

// ==== WeaponFireDelegate::WeaponFireDelegate
//      file offset 0x33f6a4 (= ELF address; Ghidra 0x34f6a4), 36 bytes, Thumb-2
  33f6a4: b082         	sub	sp, #0x8
  33f6a6: 9001         	str	r0, [sp, #0x4]
  33f6a8: 4905         	ldr	r1, [pc, #0x14]         @ 0x33f6c0 <WeaponFireDelegate::WeaponFireDelegate()+0x1c>
  33f6aa: 4479         	add	r1, pc
  33f6ac: 9b01         	ldr	r3, [sp, #0x4]
  33f6ae: 4a05         	ldr	r2, [pc, #0x14]         @ 0x33f6c4 <WeaponFireDelegate::WeaponFireDelegate()+0x20>
  33f6b0: 588a         	ldr	r2, [r1, r2]
  33f6b2: 3208         	adds	r2, #0x8
  33f6b4: 601a         	str	r2, [r3]
  33f6b6: 9b01         	ldr	r3, [sp, #0x4]
  33f6b8: 4618         	mov	r0, r3
  33f6ba: b002         	add	sp, #0x8
  33f6bc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x33f6bd); words below are literal-pool data ---
  33f6be: bf00         	nop
  33f6c0: 335e         	adds	r3, #0x5e
  33f6c2: 005f         	lsls	r7, r3, #0x1
  33f6c4: db1c         	blt	0x33f700 <HawkDrone::HawkDrone()+0x38> @ imm = #0x38
  33f6c6: ffff b510    	vsli.32	d27, d0, #0x1f
