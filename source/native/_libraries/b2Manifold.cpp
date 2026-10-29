// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2Manifold::b2Manifold  @ 0x6c9c14
/* b2Manifold::b2Manifold() */

b2Manifold * __thiscall b2Manifold::b2Manifold(b2Manifold *this)

{
  int iVar1;
  b2Manifold *this_00;
  
  this_00 = this;
  for (iVar1 = 1; iVar1 != -1; iVar1 = iVar1 + -1) {
    b2ManifoldPoint::b2ManifoldPoint((b2ManifoldPoint *)this_00);
    this_00 = this_00 + 0x14;
  }
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x28));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x30));
  return this;
}
