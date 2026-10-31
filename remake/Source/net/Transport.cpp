#include "net/Transport.h"

#include <cstdio>
#include <cstdlib>

#if defined(_WIN32)
#  define MM_NO_UDP 1
#else
#  include <arpa/inet.h>
#  include <fcntl.h>
#  include <ifaddrs.h>
#  include <net/if.h>
#  include <netinet/in.h>
#  include <sys/socket.h>
#  include <unistd.h>
#endif

namespace mm::net
{

std::string Endpoint::toString() const
{
    char buf[32];
    std::snprintf(buf, sizeof buf, "%u.%u.%u.%u:%u", (ip >> 24) & 255, (ip >> 16) & 255, (ip >> 8) & 255, ip & 255, port);
    return buf;
}

bool Endpoint::parse(const std::string& text, std::uint16_t defaultPort, Endpoint& out)
{
    unsigned a, b, c, d, p = defaultPort;
    int used = 0;
    if (std::sscanf(text.c_str(), "%u.%u.%u.%u%n", &a, &b, &c, &d, &used) != 4)
        return false;
    std::string rest = text.substr(static_cast<std::size_t>(used));
    if (!rest.empty())
    {
        int used2 = 0;
        if (rest[0] != ':' || std::sscanf(rest.c_str(), ":%u%n", &p, &used2) != 1 || static_cast<std::size_t>(used2) != rest.size())
            return false;
    }
    if (a > 255 || b > 255 || c > 255 || d > 255 || p == 0 || p > 65535)
        return false;
    out.ip   = (a << 24) | (b << 16) | (c << 8) | d;
    out.port = static_cast<std::uint16_t>(p);
    return true;
}

#ifndef MM_NO_UDP

namespace
{
class Udp : public Transport
{
public:
    explicit Udp(int fd, Endpoint local) : _fd(fd), _local(local) {}
    ~Udp() override { ::close(_fd); }

    bool send(const Endpoint& to, const Bytes& data) override
    {
        sockaddr_in a{};
        a.sin_family      = AF_INET;
        a.sin_addr.s_addr = htonl(to.ip);
        a.sin_port        = htons(to.port);
        return ::sendto(_fd, data.data(), data.size(), 0, reinterpret_cast<sockaddr*>(&a), sizeof a) >= 0;
    }

    bool broadcast(std::uint16_t port, const Bytes& data) override
    {
        bool ok = send({0xFFFFFFFFu, port}, data);
        // Also the directed broadcast of every Wi-Fi / hotspot interface (some phones drop 255.255.255.255).
        ifaddrs* list = nullptr;
        if (getifaddrs(&list) == 0)
        {
            for (ifaddrs* i = list; i; i = i->ifa_next)
            {
                if (!i->ifa_addr || i->ifa_addr->sa_family != AF_INET || !(i->ifa_flags & IFF_BROADCAST) ||
                    !(i->ifa_flags & IFF_UP) || !i->ifa_broadaddr)
                    continue;
                const auto* b = reinterpret_cast<sockaddr_in*>(i->ifa_broadaddr);
                ok |= send({ntohl(b->sin_addr.s_addr), port}, data);
            }
            freeifaddrs(list);
        }
        return ok;
    }

    bool receive(Packet& out) override
    {
        std::uint8_t buf[2048];
        sockaddr_in a{};
        socklen_t len = sizeof a;
        const ssize_t n = ::recvfrom(_fd, buf, sizeof buf, 0, reinterpret_cast<sockaddr*>(&a), &len);
        if (n < 0)
            return false;
        out.from = {ntohl(a.sin_addr.s_addr), ntohs(a.sin_port)};
        out.data.assign(buf, buf + n);
        return true;
    }

    Endpoint local() const override { return _local; }

private:
    int _fd;
    Endpoint _local;
};
}  // namespace

std::unique_ptr<Transport> openUdp(std::uint16_t port)
{
    const int fd = ::socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0)
        return nullptr;
    int yes = 1;
    ::setsockopt(fd, SOL_SOCKET, SO_BROADCAST, &yes, sizeof yes);
    ::setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof yes);
    sockaddr_in a{};
    a.sin_family      = AF_INET;
    a.sin_addr.s_addr = htonl(INADDR_ANY);
    a.sin_port        = htons(port);
    if (::bind(fd, reinterpret_cast<sockaddr*>(&a), sizeof a) < 0)
    {
        ::close(fd);
        return nullptr;
    }
    ::fcntl(fd, F_SETFL, ::fcntl(fd, F_GETFL, 0) | O_NONBLOCK);
    socklen_t len = sizeof a;
    ::getsockname(fd, reinterpret_cast<sockaddr*>(&a), &len);
    return std::make_unique<Udp>(fd, Endpoint{localWifiAddress(), ntohs(a.sin_port)});
}

std::uint32_t localWifiAddress()
{
    std::uint32_t best = 0;
    ifaddrs* list      = nullptr;
    if (getifaddrs(&list) != 0)
        return 0;
    for (ifaddrs* i = list; i; i = i->ifa_next)
    {
        if (!i->ifa_addr || i->ifa_addr->sa_family != AF_INET || !(i->ifa_flags & IFF_UP) || (i->ifa_flags & IFF_LOOPBACK))
            continue;
        const std::uint32_t ip = ntohl(reinterpret_cast<sockaddr_in*>(i->ifa_addr)->sin_addr.s_addr);
        if (!best || (ip >> 24) == 192 || (ip >> 24) == 172 || (ip >> 24) == 10)  // a private address wins
            best = ip;
    }
    freeifaddrs(list);
    return best;
}

#else
std::unique_ptr<Transport> openUdp(std::uint16_t) { return nullptr; }
std::uint32_t localWifiAddress() { return 0; }
#endif

}  // namespace mm::net
