// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- b2Timer::b2Timer  @ 0x6c95a4
/* b2Timer::b2Timer() */

b2Timer * __thiscall b2Timer::b2Timer(b2Timer *this)

{
  Reset(this);
  return this;
}

// ---- b2Timer::Reset  @ 0x6c95bc
/* b2Timer::Reset() */

void __thiscall b2Timer::Reset(b2Timer *this)

{
  uint in_fpscr;
  float fVar1;
  timeval local_10;
  
  gettimeofday(&local_10,(__timezone_ptr_t)0x0);
  *(__time_t *)this = local_10.tv_sec;
  fVar1 = (float)VectorSignedToFloat(local_10.tv_usec,(byte)(in_fpscr >> 0x16) & 3);
  *(uint *)(this + 4) = (uint)(0.0 < fVar1 * 0.001) * (int)(fVar1 * 0.001);
  return;
}

// ---- b2Timer::GetMilliseconds  @ 0x6c95fc
/* b2Timer::GetMilliseconds() const */

float __thiscall b2Timer::GetMilliseconds(b2Timer *this)

{
  uint in_fpscr;
  float fVar1;
  float fVar2;
  float fVar3;
  timeval local_10;
  
  gettimeofday(&local_10,(__timezone_ptr_t)0x0);
  fVar2 = (float)VectorUnsignedToFloat
                           ((local_10.tv_sec - *(int *)this) * 1000,(byte)(in_fpscr >> 0x16) & 3);
  fVar1 = (float)VectorSignedToFloat(local_10.tv_usec,(byte)(in_fpscr >> 0x16) & 3);
  fVar3 = (float)VectorUnsignedToFloat(*(undefined4 *)(this + 4),(byte)(in_fpscr >> 0x16) & 3);
  return (fVar2 + fVar1 * 0.001) - fVar3;
}
