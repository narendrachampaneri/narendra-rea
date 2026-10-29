// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact  @ 0x6cc6dc
/* WARNING: Removing unreachable block (ram,0x006cc6fe) */
/* b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact() */

b2EdgeAndPolygonContact * __thiscall
b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact(b2EdgeAndPolygonContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093be68;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact  @ 0x6cc718
/* b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact() */

b2EdgeAndPolygonContact * __thiscall
b2EdgeAndPolygonContact::~b2EdgeAndPolygonContact(b2EdgeAndPolygonContact *this)

{
  ~b2EdgeAndPolygonContact(this);
  operator_delete(this);
  return this;
}

// ---- b2EdgeAndPolygonContact::Create  @ 0x6cc734
/* b2EdgeAndPolygonContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2EdgeAndPolygonContact *
b2EdgeAndPolygonContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2EdgeAndPolygonContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2EdgeAndPolygonContact *)0x0) {
    b2EdgeAndPolygonContact(this,param_1,param_3);
  }
  return this;
}

// ---- b2EdgeAndPolygonContact::Destroy  @ 0x6cc780
/* b2EdgeAndPolygonContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2EdgeAndPolygonContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2EdgeAndPolygonContact::b2EdgeAndPolygonContact  @ 0x6cc7a4
/* b2EdgeAndPolygonContact::b2EdgeAndPolygonContact(b2Fixture*, b2Fixture*) */

b2EdgeAndPolygonContact * __thiscall
b2EdgeAndPolygonContact::b2EdgeAndPolygonContact
          (b2EdgeAndPolygonContact *this,b2Fixture *param_1,b2Fixture *param_2)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,0,param_2,0);
  *(undefined ***)this = &PTR_Evaluate_1_0093be68;
  return this;
}

// ---- b2EdgeAndPolygonContact::Evaluate  @ 0x6cc7e0
/* b2EdgeAndPolygonContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2EdgeAndPolygonContact::Evaluate
          (b2EdgeAndPolygonContact *this,b2Manifold *param_1,b2Transform *param_2,
          b2Transform *param_3)

{
  b2EdgeShape *pbVar1;
  b2PolygonShape *pbVar2;
  
  pbVar1 = (b2EdgeShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  pbVar2 = (b2PolygonShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollideEdgeAndPolygon(param_1,pbVar1,param_2,pbVar2,param_3);
  return;
}
