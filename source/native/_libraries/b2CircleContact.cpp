// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- b2CircleContact::~b2CircleContact  @ 0x6c99ac
/* WARNING: Removing unreachable block (ram,0x006c99ce) */
/* b2CircleContact::~b2CircleContact() */

b2CircleContact * __thiscall b2CircleContact::~b2CircleContact(b2CircleContact *this)

{
  *(undefined ***)this = &PTR_Evaluate_1_0093be28;
  b2Contact::~b2Contact((b2Contact *)this);
  return this;
}

// ---- b2CircleContact::~b2CircleContact  @ 0x6c99e8
/* b2CircleContact::~b2CircleContact() */

b2CircleContact * __thiscall b2CircleContact::~b2CircleContact(b2CircleContact *this)

{
  ~b2CircleContact(this);
  operator_delete(this);
  return this;
}

// ---- b2CircleContact::Create  @ 0x6c9a04
/* b2CircleContact::Create(b2Fixture*, int, b2Fixture*, int, b2BlockAllocator*) */

b2CircleContact *
b2CircleContact::Create
          (b2Fixture *param_1,int param_2,b2Fixture *param_3,int param_4,b2BlockAllocator *param_5)

{
  void *pvVar1;
  b2CircleContact *this;
  
  pvVar1 = (void *)b2BlockAllocator::Allocate(param_5,0x90);
  this = operator_new(0x90,pvVar1);
  if (this != (b2CircleContact *)0x0) {
    b2CircleContact(this,param_1,param_3);
  }
  return this;
}

// ---- b2CircleContact::Destroy  @ 0x6c9a50
/* b2CircleContact::Destroy(b2Contact*, b2BlockAllocator*) */

void b2CircleContact::Destroy(b2Contact *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 4))(param_1);
  b2BlockAllocator::Free(param_2,param_1,0x90);
  return;
}

// ---- b2CircleContact::b2CircleContact  @ 0x6c9a74
/* b2CircleContact::b2CircleContact(b2Fixture*, b2Fixture*) */

b2CircleContact * __thiscall
b2CircleContact::b2CircleContact(b2CircleContact *this,b2Fixture *param_1,b2Fixture *param_2)

{
  b2Contact::b2Contact((b2Contact *)this,param_1,0,param_2,0);
  *(undefined ***)this = &PTR_Evaluate_1_0093be28;
  return this;
}

// ---- b2CircleContact::Evaluate  @ 0x6c9ab0
/* b2CircleContact::Evaluate(b2Manifold*, b2Transform const&, b2Transform const&) */

void __thiscall
b2CircleContact::Evaluate
          (b2CircleContact *this,b2Manifold *param_1,b2Transform *param_2,b2Transform *param_3)

{
  b2CircleShape *pbVar1;
  b2CircleShape *pbVar2;
  
  pbVar1 = (b2CircleShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x30));
  pbVar2 = (b2CircleShape *)b2Fixture::GetShape(*(b2Fixture **)(this + 0x34));
  b2CollideCircles(param_1,pbVar1,param_2,pbVar2,param_3);
  return;
}
