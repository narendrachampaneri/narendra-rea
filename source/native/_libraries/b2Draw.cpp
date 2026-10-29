// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- b2Draw::~b2Draw  @ 0x6c8d50
/* WARNING: Removing unreachable block (ram,0x006c8d6a) */
/* b2Draw::~b2Draw() */

b2Draw * __thiscall b2Draw::~b2Draw(b2Draw *this)

{
  *(undefined ***)this = &PTR__b2Draw_1_0093bd98;
  return this;
}

// ---- b2Draw::~b2Draw  @ 0x6c8d84
/* b2Draw::~b2Draw() */

b2Draw * __thiscall b2Draw::~b2Draw(b2Draw *this)

{
  ~b2Draw(this);
  operator_delete(this);
  return this;
}

// ---- b2Draw::b2Draw  @ 0x6c8da0
/* b2Draw::b2Draw() */

b2Draw * __thiscall b2Draw::b2Draw(b2Draw *this)

{
  *(undefined ***)this = &PTR__b2Draw_1_0093bd98;
  *(undefined4 *)(this + 4) = 0;
  return this;
}

// ---- b2Draw::SetFlags  @ 0x6c8dc8
/* b2Draw::SetFlags(unsigned int) */

void __thiscall b2Draw::SetFlags(b2Draw *this,uint param_1)

{
  *(uint *)(this + 4) = param_1;
  return;
}

// ---- b2Draw::GetFlags  @ 0x6c8dd8
/* b2Draw::GetFlags() const */

undefined4 __thiscall b2Draw::GetFlags(b2Draw *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- b2Draw::AppendFlags  @ 0x6c8de8
/* b2Draw::AppendFlags(unsigned int) */

void __thiscall b2Draw::AppendFlags(b2Draw *this,uint param_1)

{
  *(uint *)(this + 4) = *(uint *)(this + 4) | param_1;
  return;
}

// ---- b2Draw::ClearFlags  @ 0x6c8e00
/* b2Draw::ClearFlags(unsigned int) */

void __thiscall b2Draw::ClearFlags(b2Draw *this,uint param_1)

{
  *(uint *)(this + 4) = *(uint *)(this + 4) & ~param_1;
  return;
}
