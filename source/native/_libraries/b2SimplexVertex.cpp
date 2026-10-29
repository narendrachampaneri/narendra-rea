// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2SimplexVertex::b2SimplexVertex  @ 0x6c5f0c
/* b2SimplexVertex::b2SimplexVertex() */

b2SimplexVertex * __thiscall b2SimplexVertex::b2SimplexVertex(b2SimplexVertex *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Vec2::b2Vec2((b2Vec2 *)(this + 8));
  b2Vec2::b2Vec2((b2Vec2 *)(this + 0x10));
  return this;
}
