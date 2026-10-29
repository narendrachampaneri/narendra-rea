// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- DatagramHeaderFormat::GetDataHeaderByteLength  @ 0x4cc490
/* DatagramHeaderFormat::GetDataHeaderByteLength() */

undefined4 DatagramHeaderFormat::GetDataHeaderByteLength(void)

{
  return 9;
}

// ---- DatagramHeaderFormat::Serialize  @ 0x4cc498
/* DatagramHeaderFormat::Serialize(RakNet::BitStream*) */

void __thiscall DatagramHeaderFormat::Serialize(DatagramHeaderFormat *this,BitStream *param_1)

{
  bool local_9 [5];
  
  local_9[0] = true;
  RakNet::BitStream::Write<bool>(param_1,local_9);
  if (this[8] == (DatagramHeaderFormat)0x0) {
    if (this[9] == (DatagramHeaderFormat)0x0) {
      local_9[0] = false;
      RakNet::BitStream::Write<bool>(param_1,local_9);
      local_9[0] = false;
      RakNet::BitStream::Write<bool>(param_1,local_9);
      RakNet::BitStream::Write<bool>(param_1,(bool *)(this + 10));
      RakNet::BitStream::Write<bool>(param_1,(bool *)(this + 0xc));
      RakNet::BitStream::Write<bool>(param_1,(bool *)(this + 0xd));
      RakNet::BitStream::AlignWriteToByteBoundary(param_1);
      RakNet::BitStream::Write<RakNet::uint24_t>(param_1,(uint24_t *)this);
    }
    else {
      local_9[0] = false;
      RakNet::BitStream::Write<bool>(param_1,local_9);
      local_9[0] = true;
      RakNet::BitStream::Write<bool>(param_1,local_9);
    }
  }
  else {
    local_9[0] = true;
    RakNet::BitStream::Write<bool>(param_1,local_9);
    RakNet::BitStream::Write<bool>(param_1,(bool *)(this + 0xb));
    RakNet::BitStream::AlignWriteToByteBoundary(param_1);
    if (this[0xb] != (DatagramHeaderFormat)0x0) {
      RakNet::BitStream::Write<float>(param_1,(float *)(this + 4));
    }
  }
  return;
}

// ---- DatagramHeaderFormat::Deserialize  @ 0x4cc580
/* DatagramHeaderFormat::Deserialize(RakNet::BitStream*) */

uint __thiscall DatagramHeaderFormat::Deserialize(DatagramHeaderFormat *this,BitStream *param_1)

{
  bool bVar1;
  uint uVar2;
  
  RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 0xe));
  RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 8));
  if (this[8] == (DatagramHeaderFormat)0x0) {
    bVar1 = RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 9));
    uVar2 = (uint)bVar1;
    if (this[9] == (DatagramHeaderFormat)0x0) {
      RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 10));
      RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 0xc));
      RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 0xd));
      RakNet::BitStream::AlignReadToByteBoundary(param_1);
      bVar1 = RakNet::BitStream::Read<RakNet::uint24_t>(param_1,(uint24_t *)this);
      uVar2 = (uint)bVar1;
    }
    else {
      this[10] = (DatagramHeaderFormat)0x0;
    }
  }
  else {
    this[9] = (DatagramHeaderFormat)0x0;
    this[10] = (DatagramHeaderFormat)0x0;
    RakNet::BitStream::Read<bool>(param_1,(bool *)(this + 0xb));
    uVar2 = RakNet::BitStream::AlignReadToByteBoundary(param_1);
    if (this[0xb] != (DatagramHeaderFormat)0x0) {
      bVar1 = RakNet::BitStream::Read<float>(param_1,(float *)(this + 4));
      uVar2 = (uint)bVar1;
    }
  }
  return uVar2;
}

// ---- DatagramHeaderFormat::DatagramHeaderFormat  @ 0x4cd3f4
/* DatagramHeaderFormat::DatagramHeaderFormat() */

DatagramHeaderFormat * __thiscall
DatagramHeaderFormat::DatagramHeaderFormat(DatagramHeaderFormat *this)

{
  RakNet::uint24_t::uint24_t((uint24_t *)this);
  return this;
}
