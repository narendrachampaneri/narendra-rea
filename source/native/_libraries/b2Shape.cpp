// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- b2Shape::~b2Shape  @ 0x6bfe50
/* WARNING: Removing unreachable block (ram,0x006bfe6a) */
/* b2Shape::~b2Shape() */

b2Shape * __thiscall b2Shape::~b2Shape(b2Shape *this)

{
  *(undefined ***)this = &PTR__b2Shape_1_0093bcc0;
  return this;
}

// ---- b2Shape::~b2Shape  @ 0x6bfe84
/* b2Shape::~b2Shape() */

b2Shape * __thiscall b2Shape::~b2Shape(b2Shape *this)

{
  ~b2Shape(this);
  operator_delete(this);
  return this;
}

// ---- b2Shape::b2Shape  @ 0x6bfea0
/* b2Shape::b2Shape() */

b2Shape * __thiscall b2Shape::b2Shape(b2Shape *this)

{
  *(undefined ***)this = &PTR__b2Shape_1_0093bcc0;
  return this;
}

// ---- b2Shape::operator=  @ 0x6c075c
/* b2Shape::TEMPNAMEPLACEHOLDERVALUE(b2Shape const&) */

b2Shape * __thiscall b2Shape::operator=(b2Shape *this,b2Shape *param_1)

{
  *(undefined4 *)(this + 4) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 8) = *(undefined4 *)(param_1 + 8);
  return this;
}

// ---- b2Shape::GetType  @ 0x6c5360
/* b2Shape::GetType() const */

undefined4 __thiscall b2Shape::GetType(b2Shape *this)

{
  return *(undefined4 *)(this + 4);
}
