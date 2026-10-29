// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- b2Joint::Dump  @ 0x6ccabc
/* b2Joint::Dump() */

void b2Joint::Dump(void)

{
  b2Log("// Dump is not supported for this joint type.\n");
  return;
}

// ---- b2Joint::~b2Joint  @ 0x6ccad8
/* WARNING: Removing unreachable block (ram,0x006ccaf2) */
/* b2Joint::~b2Joint() */

b2Joint * __thiscall b2Joint::~b2Joint(b2Joint *this)

{
  *(undefined ***)this = &PTR___cxa_pure_virtual_1_0093bf08;
  return this;
}

// ---- b2Joint::~b2Joint  @ 0x6ccb0c
/* b2Joint::~b2Joint() */

b2Joint * __thiscall b2Joint::~b2Joint(b2Joint *this)

{
  ~b2Joint(this);
  operator_delete(this);
  return this;
}

// ---- b2Joint::GetType  @ 0x6ce3d4
/* b2Joint::GetType() const */

undefined4 __thiscall b2Joint::GetType(b2Joint *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- b2Joint::GetBodyA  @ 0x6ce3e4
/* b2Joint::GetBodyA() */

undefined4 __thiscall b2Joint::GetBodyA(b2Joint *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- b2Joint::GetBodyB  @ 0x6ce3f4
/* b2Joint::GetBodyB() */

undefined4 __thiscall b2Joint::GetBodyB(b2Joint *this)

{
  return *(undefined4 *)(this + 0x34);
}

// ---- b2Joint::Create  @ 0x6cfd50
/* b2Joint::Create(b2JointDef const*, b2BlockAllocator*) */

b2DistanceJoint * b2Joint::Create(b2JointDef *param_1,b2BlockAllocator *param_2)

{
  void *pvVar1;
  b2DistanceJoint *local_3c;
  
  local_3c = (b2DistanceJoint *)0x0;
  switch(*(undefined4 *)param_1) {
  case 1:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xe4);
    local_3c = operator_new(0xe4,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2RevoluteJoint::b2RevoluteJoint((b2RevoluteJoint *)local_3c,(b2RevoluteJointDef *)param_1);
    }
    break;
  case 2:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0x100);
    local_3c = operator_new(0x100,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2PrismaticJoint::b2PrismaticJoint
                ((b2PrismaticJoint *)local_3c,(b2PrismaticJointDef *)param_1);
    }
    break;
  case 3:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xb0);
    local_3c = operator_new(0xb0,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2DistanceJoint::b2DistanceJoint(local_3c,(b2DistanceJointDef *)param_1);
    }
    break;
  case 4:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xc4);
    local_3c = operator_new(0xc4,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2PulleyJoint::b2PulleyJoint((b2PulleyJoint *)local_3c,(b2PulleyJointDef *)param_1);
    }
    break;
  case 5:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xa8);
    local_3c = operator_new(0xa8,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2MouseJoint::b2MouseJoint((b2MouseJoint *)local_3c,(b2MouseJointDef *)param_1);
    }
    break;
  case 6:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0x114);
    local_3c = operator_new(0x114,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2GearJoint::b2GearJoint((b2GearJoint *)local_3c,(b2GearJointDef *)param_1);
    }
    break;
  case 7:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xe0);
    local_3c = operator_new(0xe0,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2WheelJoint::b2WheelJoint((b2WheelJoint *)local_3c,(b2WheelJointDef *)param_1);
    }
    break;
  case 8:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xd0);
    local_3c = operator_new(0xd0,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2WeldJoint::b2WeldJoint((b2WeldJoint *)local_3c,(b2WeldJointDef *)param_1);
    }
    break;
  case 9:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xb4);
    local_3c = operator_new(0xb4,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2FrictionJoint::b2FrictionJoint((b2FrictionJoint *)local_3c,(b2FrictionJointDef *)param_1);
    }
    break;
  case 10:
    pvVar1 = (void *)b2BlockAllocator::Allocate(param_2,0xa8);
    local_3c = operator_new(0xa8,pvVar1);
    if (local_3c != (b2DistanceJoint *)0x0) {
      b2RopeJoint::b2RopeJoint((b2RopeJoint *)local_3c,(b2RopeJointDef *)param_1);
    }
  }
  return local_3c;
}

// ---- b2Joint::Destroy  @ 0x6cfff4
/* b2Joint::Destroy(b2Joint*, b2BlockAllocator*) */

void b2Joint::Destroy(b2Joint *param_1,b2BlockAllocator *param_2)

{
  (**(code **)(*(int *)param_1 + 0x14))(param_1);
  switch(*(undefined4 *)(param_1 + 4)) {
  case 1:
    b2BlockAllocator::Free(param_2,param_1,0xe4);
    break;
  case 2:
    b2BlockAllocator::Free(param_2,param_1,0x100);
    break;
  case 3:
    b2BlockAllocator::Free(param_2,param_1,0xb0);
    break;
  case 4:
    b2BlockAllocator::Free(param_2,param_1,0xc4);
    break;
  case 5:
    b2BlockAllocator::Free(param_2,param_1,0xa8);
    break;
  case 6:
    b2BlockAllocator::Free(param_2,param_1,0x114);
    break;
  case 7:
    b2BlockAllocator::Free(param_2,param_1,0xe0);
    break;
  case 8:
    b2BlockAllocator::Free(param_2,param_1,0xd0);
    break;
  case 9:
    b2BlockAllocator::Free(param_2,param_1,0xb4);
    break;
  case 10:
    b2BlockAllocator::Free(param_2,param_1,0xa8);
  }
  return;
}

// ---- b2Joint::b2Joint  @ 0x6d00c8
/* b2Joint::b2Joint(b2JointDef const*) */

b2Joint * __thiscall b2Joint::b2Joint(b2Joint *this,b2JointDef *param_1)

{
  *(undefined ***)this = &PTR___cxa_pure_virtual_1_0093bf08;
  *(undefined4 *)(this + 4) = *(undefined4 *)param_1;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x30) = *(undefined4 *)(param_1 + 8);
  *(undefined4 *)(this + 0x34) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(this + 0x38) = 0;
  this[0x3d] = *(b2Joint *)(param_1 + 0x10);
  this[0x3c] = (b2Joint)0x0;
  *(undefined4 *)(this + 0x40) = *(undefined4 *)(param_1 + 4);
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  return this;
}

// ---- b2Joint::IsActive  @ 0x6d0160
/* b2Joint::IsActive() const */

undefined4 __thiscall b2Joint::IsActive(b2Joint *this)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = b2Body::IsActive(*(b2Body **)(this + 0x30));
  if ((iVar1 == 0) || (iVar1 = b2Body::IsActive(*(b2Body **)(this + 0x34)), iVar1 == 0)) {
    uVar2 = 0;
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}

// ---- b2Joint::GetNext  @ 0x6dc580
/* b2Joint::GetNext() */

undefined4 __thiscall b2Joint::GetNext(b2Joint *this)

{
  return *(undefined4 *)(this + 0xc);
}
