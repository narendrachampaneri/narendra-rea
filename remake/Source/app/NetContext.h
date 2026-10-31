// The phone's Wi-Fi session: sockets plus the host or client session, shared by the
// multiplayer screens and the networked game screen.
#pragma once

#include <memory>
#include <string>
#include <vector>

#include "net/Session.h"

namespace mm::app
{

class NetContext
{
public:
    static NetContext& get();

    std::string playerName() const;
    void setPlayerName(const std::string& name);

    // Becomes a host (game socket 9331, discovery socket 9330). False if a port is taken.
    bool startHosting();
    // Becomes a client (a free local port).
    bool startClient();
    void close();

    net::HostSession* host() { return _host.get(); }
    net::ClientSession* client() { return _client.get(); }
    bool active() const { return _host || _client; }
    // The running match's driver, whichever side we are on.
    game::GameDriver* driver();
    // Call every frame while a screen uses the session.
    void update(float dt);

    // Quick messages (net::kQuickMessages) from either side.
    void sendChat(int message);
    std::vector<std::pair<int, int>> takeChat();  // (player id, message) since the last call
    std::string localAddress() const;  // "192.168.43.1" or "" without Wi-Fi

private:
    NetContext() = default;
    net::MapResolver resolver();

    std::unique_ptr<net::Transport> _game, _discovery;
    std::unique_ptr<net::HostSession> _host;
    std::unique_ptr<net::ClientSession> _client;
};

}  // namespace mm::app
