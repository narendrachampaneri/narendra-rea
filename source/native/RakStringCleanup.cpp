// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- RakStringCleanup::~RakStringCleanup  @ 0x4c2ec4
/* RakStringCleanup::~RakStringCleanup() */

RakStringCleanup * __thiscall RakStringCleanup::~RakStringCleanup(RakStringCleanup *this)

{
  RakNet::RakString::FreeMemoryNoMutex();
  return this;
}
