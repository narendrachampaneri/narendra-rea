// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2PolygonContact::~b2PolygonContact  @ 0x6cc954
/* WARNING: Removing unreachable block (ram,0x006cc976) */
/* b2PolygonContact::~b2PolygonContact() */

b2PolygonContact * __thiscall b2PolygonContact::~b2PolygonContact(b2PolygonContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093bea8;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2PolygonContact::~b2PolygonContact  @ 0x6cc990
/* b2PolygonContact::~b2PolygonContact() */

b2PolygonContact * __thiscall b2PolygonContact::~b2PolygonContact(b2PolygonContact *this)

{
  ~b2PolygonContact(this);
  operator_delete(this);
  return this;
}

// ---- b2PolygonContact::Create  @ 0x6cc9ac
/* b2PolygonContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2PolygonContact *
b2PolygonContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2PolygonContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2PolygonContact *)0x0) {
    b2PolygonContact(this,param_1,param_3);
  }
  return this;
}

// ---- b2PolygonContact::Destroy  @ 0x6cc9f8
/* b2PolygonContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2PolygonContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2PolygonContact::b2PolygonContact  @ 0x6cca1c
/* b2PolygonContact::b2PolygonContact(b2Fixture*, b2Fixture*) */

b2PolygonContact * __thiscall
b2PolygonContact::b2PolygonContact(b2PolygonContact *this,b2Fixture *param_1,b2Fixture *param_2)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,0,param_2,0);
  *(undefined ***)this = &PTR_Evaluate_1_0093bea8;
  return this;
}

// ---- b2PolygonContact::Evaluate  @ 0x6cca58
/* b2PolygonContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2PolygonContact::Evaluate
          (b2PolygonContact *this,b2Manifold *param_1,b2Transform *param_2,b2Transform *param_3)

{
  b2PolygonShape *pbVar1;
  b2PolygonShape *pbVar2;
  
  pbVar1 = (b2PolygonShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  pbVar2 = (b2PolygonShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollidePolygons(param_1,pbVar1,param_2,pbVar2,param_3);
  return;
}
