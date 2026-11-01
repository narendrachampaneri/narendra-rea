// The text inside the host's QR code: "MMJOIN1;<ipv4>;<port>". Scanning it fills in the
// address for the same join flow as typing the IP.
#pragma once

#include <optional>
#include <string>

#include "config/GameConfig.h"
#include "net/Transport.h"

namespace mm::net
{

std::string makeJoinCode(const std::string& ip, std::uint16_t port = config::kLanGamePort);
// The host endpoint inside a scanned text, or nothing if it is not one of ours.
std::optional<Endpoint> parseJoinCode(const std::string& text);

}  // namespace mm::net
