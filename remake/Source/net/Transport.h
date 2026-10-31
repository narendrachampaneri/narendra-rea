// Datagram transport under the sessions: real UDP on phones, an in-memory hub in tests.
#pragma once

#include <cstdint>
#include <deque>
#include <map>
#include <memory>
#include <string>

#include "net/Wire.h"

namespace mm::net
{

struct Endpoint
{
    std::uint32_t ip = 0;  // host byte order, 192.168.1.20 = 0xC0A80114
    std::uint16_t port = 0;
    bool operator==(const Endpoint&) const = default;
    bool operator<(const Endpoint& o) const { return ip != o.ip ? ip < o.ip : port < o.port; }
    std::string toString() const;
    static bool parse(const std::string& text, std::uint16_t defaultPort, Endpoint& out);  // "192.168.1.20" or "...:9331"
};

struct Packet
{
    Endpoint from;
    Bytes data;
};

class Transport
{
public:
    virtual ~Transport() = default;
    virtual bool send(const Endpoint& to, const Bytes& data) = 0;
    // To everybody on the local network listening on `port`.
    virtual bool broadcast(std::uint16_t port, const Bytes& data) = 0;
    virtual bool receive(Packet& out) = 0;  // false when nothing is waiting
    virtual Endpoint local() const = 0;
};

// ---- in-memory network for tests ------------------------------------------------------------
class LoopbackHub
{
public:
    class Node;
    std::unique_ptr<Transport> open(std::uint16_t port, std::uint32_t ip);
    // Drop every n-th packet (0 = none), to test loss.
    int dropEvery = 0;

private:
    friend class Node;
    std::map<Endpoint, Node*> _nodes;
    int _counter = 0;
};

class LoopbackHub::Node : public Transport
{
public:
    Node(LoopbackHub& hub, Endpoint ep) : _hub(hub), _ep(ep) { _hub._nodes[_ep] = this; }
    ~Node() override { _hub._nodes.erase(_ep); }
    bool send(const Endpoint& to, const Bytes& data) override
    {
        if (_hub.dropEvery && ++_hub._counter % _hub.dropEvery == 0)
            return true;
        auto it = _hub._nodes.find(to);
        if (it != _hub._nodes.end())
            it->second->_queue.push_back({_ep, data});
        return true;
    }
    bool broadcast(std::uint16_t port, const Bytes& data) override
    {
        for (auto& [ep, node] : _hub._nodes)
            if (ep.port == port && !(ep == _ep))
                node->_queue.push_back({_ep, data});
        return true;
    }
    bool receive(Packet& out) override
    {
        if (_queue.empty())
            return false;
        out = std::move(_queue.front());
        _queue.pop_front();
        return true;
    }
    Endpoint local() const override { return _ep; }

private:
    LoopbackHub& _hub;
    Endpoint _ep;
    std::deque<Packet> _queue;
};

inline std::unique_ptr<Transport> LoopbackHub::open(std::uint16_t port, std::uint32_t ip)
{
    return std::make_unique<Node>(*this, Endpoint{ip, port});
}

// ---- real UDP (POSIX sockets, non-blocking) -------------------------------------------------------
// Binds `port` (0 = any free port). Returns null if the socket cannot be set up.
std::unique_ptr<Transport> openUdp(std::uint16_t port);
// This phone's IPv4 address on the Wi-Fi / hotspot network (0 if none), for "join by IP".
std::uint32_t localWifiAddress();

}  // namespace mm::net
