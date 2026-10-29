// LobbyDelegate: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LobbyDelegate.cpp

// ==== LobbyDelegate::onStartGame
//      file offset 0x350dac (= ELF address; Ghidra 0x360dac), 8 bytes, Thumb-2
  350dac: b082         	sub	sp, #0x8
  350dae: 9001         	str	r0, [sp, #0x4]
  350db0: b002         	add	sp, #0x8
  350db2: 4770         	bx	lr

// ==== LobbyDelegate::onExitGame
//      file offset 0x350db4 (= ELF address; Ghidra 0x360db4), 8 bytes, Thumb-2
  350db4: b082         	sub	sp, #0x8
  350db6: 9001         	str	r0, [sp, #0x4]
  350db8: b002         	add	sp, #0x8
  350dba: 4770         	bx	lr

// ==== LobbyDelegate::onSwitchToPeer2Peer
//      file offset 0x350dbc (= ELF address; Ghidra 0x360dbc), 8 bytes, Thumb-2
  350dbc: b082         	sub	sp, #0x8
  350dbe: 9001         	str	r0, [sp, #0x4]
  350dc0: b002         	add	sp, #0x8
  350dc2: 4770         	bx	lr

// ==== LobbyDelegate::LobbyDelegate
//      file offset 0x350f84 (= ELF address; Ghidra 0x360f84), 36 bytes, Thumb-2
  350f84: b082         	sub	sp, #0x8
  350f86: 9001         	str	r0, [sp, #0x4]
  350f88: 4905         	ldr	r1, [pc, #0x14]         @ 0x350fa0 <LobbyDelegate::LobbyDelegate()+0x1c>
  350f8a: 4479         	add	r1, pc
  350f8c: 9b01         	ldr	r3, [sp, #0x4]
  350f8e: 4a05         	ldr	r2, [pc, #0x14]         @ 0x350fa4 <LobbyDelegate::LobbyDelegate()+0x20>
  350f90: 588a         	ldr	r2, [r1, r2]
  350f92: 3208         	adds	r2, #0x8
  350f94: 601a         	str	r2, [r3]
  350f96: 9b01         	ldr	r3, [sp, #0x4]
  350f98: 4618         	mov	r0, r3
  350f9a: b002         	add	sp, #0x8
  350f9c: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x350f9d); words below are literal-pool data ---
  350f9e: bf00         	nop
  350fa0: 1a7e         	subs	r6, r7, r1
  350fa2: 005e         	lsls	r6, r3, #0x1
  350fa4: db58         	blt	0x351058 <LobbyLayer::init()+0x40> @ imm = #0xb0
  350fa6: ffff b510    	vsli.32	d27, d0, #0x1f
