// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- MapStaticShape::MapStaticShape  @ 0x378a80
/* MapStaticShape::MapStaticShape() */

MapStaticShape * __thiscall MapStaticShape::MapStaticShape(MapStaticShape *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915128;
  return this;
}

// ---- MapStaticShape::~MapStaticShape  @ 0x378aac
/* WARNING: Removing unreachable block (ram,0x00378ace) */
/* MapStaticShape::~MapStaticShape() */

MapStaticShape * __thiscall MapStaticShape::~MapStaticShape(MapStaticShape *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915128;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- MapStaticShape::~MapStaticShape  @ 0x378ae8
/* MapStaticShape::~MapStaticShape() */

MapStaticShape * __thiscall MapStaticShape::~MapStaticShape(MapStaticShape *this)

{
  ~MapStaticShape(this);
  operator_delete(this);
  return this;
}
