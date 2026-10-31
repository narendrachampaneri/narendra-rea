// Little-endian byte buffer reader/writer for the LAN protocol (see LAN-PROTOCOL.md).
#pragma once

#include <cstdint>
#include <cstring>
#include <string>
#include <string_view>
#include <vector>

namespace mm::net
{

using Bytes = std::vector<std::uint8_t>;

class Writer
{
public:
    void u8(std::uint8_t v) { _b.push_back(v); }
    void u16(std::uint16_t v) { u8(v & 0xff); u8(v >> 8); }
    void u32(std::uint32_t v) { u16(v & 0xffff); u16(v >> 16); }
    void i16(std::int16_t v) { u16(static_cast<std::uint16_t>(v)); }
    void f32(float v) { std::uint32_t x; std::memcpy(&x, &v, 4); u32(x); }
    // Fixed point: value * scale rounded, clamped to int16. Used for positions and speeds.
    void fixed16(float v, float scale)
    {
        float s = v * scale;
        s = s > 32767.0f ? 32767.0f : (s < -32768.0f ? -32768.0f : s);
        i16(static_cast<std::int16_t>(s < 0 ? s - 0.5f : s + 0.5f));
    }
    void str(std::string_view s)  // u8 length (max 255) then bytes
    {
        const std::size_t n = s.size() > 255 ? 255 : s.size();
        u8(static_cast<std::uint8_t>(n));
        _b.insert(_b.end(), s.begin(), s.begin() + n);
    }
    const Bytes& bytes() const { return _b; }
    Bytes take() { return std::move(_b); }

private:
    Bytes _b;
};

// Reads never go past the end: after a short read ok() is false and values are zero.
class Reader
{
public:
    Reader(const std::uint8_t* data, std::size_t size) : _p(data), _n(size) {}
    explicit Reader(const Bytes& b) : Reader(b.data(), b.size()) {}

    std::uint8_t u8() { return need(1) ? _p[_i++] : 0; }
    std::uint16_t u16() { const auto a = u8(); const auto b = u8(); return static_cast<std::uint16_t>(a | (b << 8)); }
    std::uint32_t u32() { const std::uint32_t a = u16(); const std::uint32_t b = u16(); return a | (b << 16); }
    std::int16_t i16() { return static_cast<std::int16_t>(u16()); }
    float f32() { const std::uint32_t x = u32(); float v; std::memcpy(&v, &x, 4); return v; }
    float fixed16(float scale) { return static_cast<float>(i16()) / scale; }
    std::string str()
    {
        const std::size_t n = u8();
        if (!need(n))
            return {};
        std::string s(reinterpret_cast<const char*>(_p + _i), n);
        _i += n;
        return s;
    }
    bool ok() const { return _ok; }
    std::size_t remaining() const { return _n - _i; }

private:
    bool need(std::size_t n)
    {
        if (_i + n > _n)
        {
            _ok = false;
            _i  = _n;
            return false;
        }
        return true;
    }
    const std::uint8_t* _p;
    std::size_t _n;
    std::size_t _i = 0;
    bool _ok       = true;
};

}  // namespace mm::net
