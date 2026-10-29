// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- BodyShape::BodyShape  @ 0x3a6e6c
/* BodyShape::BodyShape() */

BodyShape * __thiscall BodyShape::BodyShape(BodyShape *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00916d18;
  return this;
}

// ---- BodyShape::~BodyShape  @ 0x3a6e98
/* WARNING: Removing unreachable block (ram,0x003a6eba) */
/* BodyShape::~BodyShape() */

BodyShape * __thiscall BodyShape::~BodyShape(BodyShape *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916d18;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- BodyShape::~BodyShape  @ 0x3a6ed4
/* BodyShape::~BodyShape() */

BodyShape * __thiscall BodyShape::~BodyShape(BodyShape *this)

{
  ~BodyShape(this);
  operator_delete(this);
  return this;
}
