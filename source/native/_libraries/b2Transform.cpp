// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2Transform::b2Transform  @ 0x6c10d4
/* b2Transform::b2Transform() */

b2Transform * __thiscall b2Transform::b2Transform(b2Transform *this)

{
  b2Vec2::b2Vec2((b2Vec2 *)this);
  b2Rot::b2Rot((b2Rot *)(this + 8));
  return this;
}
