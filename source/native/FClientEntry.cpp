// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- FClientEntry::FClientEntry  @ 0x3d7d7c
/* FClientEntry::FClientEntry() */

FClientEntry * __thiscall FClientEntry::FClientEntry(FClientEntry *this)

{
  RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)this);
  RakNet::RakNetGUID::operator=((RakNetGUID *)this,(RakNetGUID *)&DAT_00952148);
  this[0x10] = (FClientEntry)0xff;
  return this;
}
