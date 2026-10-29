// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2PolygonAndCircleContact::~b2PolygonAndCircleContact  @ 0x6cc818
/* WARNING: Removing unreachable block (ram,0x006cc83a) */
/* b2PolygonAndCircleContact::~b2PolygonAndCircleContact() */

b2PolygonAndCircleContact * __thiscall
b2PolygonAndCircleContact::~b2PolygonAndCircleContact(b2PolygonAndCircleContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093be88;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2PolygonAndCircleContact::~b2PolygonAndCircleContact  @ 0x6cc854
/* b2PolygonAndCircleContact::~b2PolygonAndCircleContact() */

b2PolygonAndCircleContact * __thiscall
b2PolygonAndCircleContact::~b2PolygonAndCircleContact(b2PolygonAndCircleContact *this)

{
  ~b2PolygonAndCircleContact(this);
  operator_delete(this);
  return this;
}

// ---- b2PolygonAndCircleContact::Create  @ 0x6cc870
/* b2PolygonAndCircleContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2PolygonAndCircleContact *
b2PolygonAndCircleContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2PolygonAndCircleContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2PolygonAndCircleContact *)0x0) {
    b2PolygonAndCircleContact(this,param_1,param_3);
  }
  return this;
}

// ---- b2PolygonAndCircleContact::Destroy  @ 0x6cc8bc
/* b2PolygonAndCircleContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2PolygonAndCircleContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2PolygonAndCircleContact::b2PolygonAndCircleContact  @ 0x6cc8e0
/* b2PolygonAndCircleContact::b2PolygonAndCircleContact(b2Fixture*, b2Fixture*) */

b2PolygonAndCircleContact * __thiscall
b2PolygonAndCircleContact::b2PolygonAndCircleContact
          (b2PolygonAndCircleContact *this,b2Fixture *param_1,b2Fixture *param_2)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,0,param_2,0);
  *(undefined ***)this = &PTR_Evaluate_1_0093be88;
  return this;
}

// ---- b2PolygonAndCircleContact::Evaluate  @ 0x6cc91c
/* b2PolygonAndCircleContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2PolygonAndCircleContact::Evaluate
          (b2PolygonAndCircleContact *this,b2Manifold *param_1,b2Transform *param_2,
          b2Transform *param_3)

{
  b2PolygonShape *pbVar1;
  b2CircleShape *pbVar2;
  
  pbVar1 = (b2PolygonShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  pbVar2 = (b2CircleShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollidePolygonAndCircle(param_1,pbVar1,param_2,pbVar2,param_3);
  return;
}
