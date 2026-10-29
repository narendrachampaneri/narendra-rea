// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2EdgeAndCircleContact::~b2EdgeAndCircleContact  @ 0x6cc5a0
/* WARNING: Removing unreachable block (ram,0x006cc5c2) */
/* b2EdgeAndCircleContact::~b2EdgeAndCircleContact() */

b2EdgeAndCircleContact * __thiscall
b2EdgeAndCircleContact::~b2EdgeAndCircleContact(b2EdgeAndCircleContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093be48;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2EdgeAndCircleContact::~b2EdgeAndCircleContact  @ 0x6cc5dc
/* b2EdgeAndCircleContact::~b2EdgeAndCircleContact() */

b2EdgeAndCircleContact * __thiscall
b2EdgeAndCircleContact::~b2EdgeAndCircleContact(b2EdgeAndCircleContact *this)

{
  ~b2EdgeAndCircleContact(this);
  operator_delete(this);
  return this;
}

// ---- b2EdgeAndCircleContact::Create  @ 0x6cc5f8
/* b2EdgeAndCircleContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2EdgeAndCircleContact *
b2EdgeAndCircleContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2EdgeAndCircleContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2EdgeAndCircleContact *)0x0) {
    b2EdgeAndCircleContact(this,param_1,param_3);
  }
  return this;
}

// ---- b2EdgeAndCircleContact::Destroy  @ 0x6cc644
/* b2EdgeAndCircleContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2EdgeAndCircleContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2EdgeAndCircleContact::b2EdgeAndCircleContact  @ 0x6cc668
/* b2EdgeAndCircleContact::b2EdgeAndCircleContact(b2Fixture*, b2Fixture*) */

b2EdgeAndCircleContact * __thiscall
b2EdgeAndCircleContact::b2EdgeAndCircleContact
          (b2EdgeAndCircleContact *this,b2Fixture *param_1,b2Fixture *param_2)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,0,param_2,0);
  *(undefined ***)this = &PTR_Evaluate_1_0093be48;
  return this;
}

// ---- b2EdgeAndCircleContact::Evaluate  @ 0x6cc6a4
/* b2EdgeAndCircleContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2EdgeAndCircleContact::Evaluate
          (b2EdgeAndCircleContact *this,b2Manifold *param_1,b2Transform *param_2,
          b2Transform *param_3)

{
  b2EdgeShape *pbVar1;
  b2CircleShape *pbVar2;
  
  pbVar1 = (b2EdgeShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  pbVar2 = (b2CircleShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollideEdgeAndCircle(param_1,pbVar1,param_2,pbVar2,param_3);
  return;
}
