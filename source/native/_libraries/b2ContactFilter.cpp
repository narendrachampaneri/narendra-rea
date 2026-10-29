// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- b2ContactFilter::~b2ContactFilter  @ 0x6d965c
/* WARNING: Removing unreachable block (ram,0x006d9676) */
/* b2ContactFilter::~b2ContactFilter() */

b2ContactFilter * __thiscall b2ContactFilter::~b2ContactFilter(b2ContactFilter *this)

{
  *(undefined ***)this = &PTR__b2ContactFilter_1_0093c1a8;
  return this;
}

// ---- b2ContactFilter::~b2ContactFilter  @ 0x6d9690
/* b2ContactFilter::~b2ContactFilter() */

b2ContactFilter * __thiscall b2ContactFilter::~b2ContactFilter(b2ContactFilter *this)

{
  ~b2ContactFilter(this);
  operator_delete(this);
  return this;
}

// ---- b2ContactFilter::ShouldCollide  @ 0x6dedf4
/* b2ContactFilter::ShouldCollide(b2Fixture*, b2Fixture*) */

bool __thiscall
b2ContactFilter::ShouldCollide(b2ContactFilter *this,b2Fixture *param_1,b2Fixture *param_2)

{
  ushort *puVar1;
  ushort *puVar2;
  bool bVar3;
  
  puVar1 = (ushort *)b2Fixture::GetFilterData(param_1);
  puVar2 = (ushort *)b2Fixture::GetFilterData(param_2);
  if ((puVar1[2] == puVar2[2]) && (puVar1[2] != 0)) {
    bVar3 = 0 < (short)puVar1[2];
  }
  else if (((*puVar2 & puVar1[1]) == 0) || ((puVar2[1] & *puVar1) == 0)) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  return bVar3;
}
