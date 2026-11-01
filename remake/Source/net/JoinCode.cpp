#include "net/JoinCode.h"

namespace mm::net
{

std::string makeJoinCode(const std::string& ip, std::uint16_t port)
{
    return "MMJOIN1;" + ip + ";" + std::to_string(port);
}

std::optional<Endpoint> parseJoinCode(const std::string& text)
{
    static const std::string prefix = "MMJOIN1;";
    if (text.size() <= prefix.size() || text.compare(0, prefix.size(), prefix) != 0 || text.size() > 64)
        return std::nullopt;
    const auto semi = text.find(';', prefix.size());
    if (semi == std::string::npos)
        return std::nullopt;
    const std::string ip = text.substr(prefix.size(), semi - prefix.size());
    const std::string port = text.substr(semi + 1);
    if (port.empty() || port.size() > 5 || port.find_first_not_of("0123456789") != std::string::npos)
        return std::nullopt;
    const int p = std::stoi(port);
    if (p < 1 || p > 65535)
        return std::nullopt;
    Endpoint ep;
    if (!Endpoint::parse(ip + ":" + port, static_cast<std::uint16_t>(p), ep))
        return std::nullopt;
    return ep;
}

}  // namespace mm::net
