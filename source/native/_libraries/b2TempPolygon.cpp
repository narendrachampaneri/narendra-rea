// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2TempPolygon::b2TempPolygon  @ 0x6c3ed0
/* b2TempPolygon::b2TempPolygon() */

b2TempPolygon * __thiscall b2TempPolygon::b2TempPolygon(b2TempPolygon *this)

{
  b2TempPolygon *pbVar1;
  int iVar2;
  
  pbVar1 = this;
  for (iVar2 = 7; iVar2 != -1; iVar2 = iVar2 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)pbVar1);
    pbVar1 = pbVar1 + 8;
  }
  pbVar1 = this + 0x40;
  for (iVar2 = 7; iVar2 != -1; iVar2 = iVar2 + -1) {
    b2Vec2::b2Vec2((b2Vec2 *)pbVar1);
    pbVar1 = pbVar1 + 8;
  }
  return this;
}
