// PeerNetworkInterface: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 1 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PeerNetworkInterface.cpp

// ==== PeerNetworkInterface::PeerNetworkInterface
//      file offset 0x426994 (= ELF address; Ghidra 0x436994), 36 bytes, Thumb-2
  426994: b082         	sub	sp, #0x8
  426996: 9001         	str	r0, [sp, #0x4]
  426998: 4905         	ldr	r1, [pc, #0x14]         @ 0x4269b0 <PeerNetworkInterface::PeerNetworkInterface()+0x1c>
  42699a: 4479         	add	r1, pc
  42699c: 9b01         	ldr	r3, [sp, #0x4]
  42699e: 4a05         	ldr	r2, [pc, #0x14]         @ 0x4269b4 <PeerNetworkInterface::PeerNetworkInterface()+0x20>
  4269a0: 588a         	ldr	r2, [r1, r2]
  4269a2: 3208         	adds	r2, #0x8
  4269a4: 601a         	str	r2, [r3]
  4269a6: 9b01         	ldr	r3, [sp, #0x4]
  4269a8: 4618         	mov	r0, r3
  4269aa: b002         	add	sp, #0x8
  4269ac: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x4269ad); words below are literal-pool data ---
  4269ae: bf00         	nop
  4269b0: c06e         	stm	r0!, {r1, r2, r3, r5, r6}
  4269b2: 0050         	lsls	r0, r2, #0x1
  4269b4: e01c         	b	0x4269f0 <PeerNetworkBridgeGP::PeerNetworkBridgeGP()+0x38> @ imm = #0x38
  4269b6: ffff b510    	vsli.32	d27, d0, #0x1f
