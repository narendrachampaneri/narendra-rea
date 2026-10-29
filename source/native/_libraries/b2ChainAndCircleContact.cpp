// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2ChainAndCircleContact::~b2ChainAndCircleContact  @ 0x6c96bc
/* WARNING: Removing unreachable block (ram,0x006c96de) */
/* b2ChainAndCircleContact::~b2ChainAndCircleContact() */

b2ChainAndCircleContact * __thiscall
b2ChainAndCircleContact::~b2ChainAndCircleContact(b2ChainAndCircleContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093bdc8;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2ChainAndCircleContact::~b2ChainAndCircleContact  @ 0x6c96f8
/* b2ChainAndCircleContact::~b2ChainAndCircleContact() */

b2ChainAndCircleContact * __thiscall
b2ChainAndCircleContact::~b2ChainAndCircleContact(b2ChainAndCircleContact *this)

{
  ~b2ChainAndCircleContact(this);
  operator_delete(this);
  return this;
}

// ---- b2ChainAndCircleContact::Create  @ 0x6c9714
/* b2ChainAndCircleContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2ChainAndCircleContact *
b2ChainAndCircleContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2ChainAndCircleContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2ChainAndCircleContact *)0x0) {
    b2ChainAndCircleContact(this,param_1,param_2,param_3,param_4);
  }
  return this;
}

// ---- b2ChainAndCircleContact::Destroy  @ 0x6c9768
/* b2ChainAndCircleContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2ChainAndCircleContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2ChainAndCircleContact::b2ChainAndCircleContact  @ 0x6c978c
/* b2ChainAndCircleContact::b2ChainAndCircleContact(b2Fixture*, int, b2Fixture*, int) */

b2ChainAndCircleContact * __thiscall
b2ChainAndCircleContact::b2ChainAndCircleContact
          (b2ChainAndCircleContact *this,b2Fixture *param_1,int param_2,b2Fixture *param_3,
          int param_4)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,param_2,param_3,param_4);
  *(undefined ***)this = &PTR_Evaluate_1_0093bdc8;
  return this;
}

// ---- b2ChainAndCircleContact::Evaluate  @ 0x6c97c8
/* b2ChainAndCircleContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2ChainAndCircleContact::Evaluate
          (b2ChainAndCircleContact *this,b2Manifold *param_1,b2Transform *param_2,
          b2Transform *param_3)

{
  b2ChainShape *this_00;
  b2CircleShape *pbVar1;
  b2EdgeShape abStack_38 [52];
  
  this_00 = (b2ChainShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  b2EdgeShape::b2EdgeShape(abStack_38);
  b2ChainShape::GetChildEdge(this_00,abStack_38,*(int *)(this + 0x38));
  pbVar1 = (b2CircleShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollideEdgeAndCircle(param_1,abStack_38,param_2,pbVar1,param_3);
  b2EdgeShape::~b2EdgeShape(abStack_38);
  return;
}
