#include "app/NetContext.h"

#include "app/AssetManager.h"
#include "app/Platform.h"
#include "app/SaveStore.h"
#include "axmol.h"

namespace mm::app
{

NetContext& NetContext::get()
{
    static NetContext ctx;
    return ctx;
}

std::string NetContext::playerName() const
{
    const auto& name = SaveStore::get().data().name;
    return name.empty() ? "Player" : name;
}

void NetContext::setPlayerName(const std::string& name)
{
    SaveStore::get().data().name = name.empty() ? "Player" : name.substr(0, 16);
    SaveStore::get().commit();
}

net::MapResolver NetContext::resolver()
{
    return [](int index) -> net::MapRef {
        if (index < 0 || index >= static_cast<int>(assets::kMaps.size()))
            return {};
        const auto& def = assets::kMaps[index];
        return {&def, &AssetManager::get().mapData(def)};
    };
}

bool NetContext::startHosting()
{
    close();
    _game      = net::openUdp(net::kGamePort);
    _discovery = net::openUdp(net::kDiscoveryPort);
    if (!_game || !_discovery)
    {
        close();
        return false;
    }
    platform::setMulticastLock(true);
    _host = std::make_unique<net::HostSession>(*_game, "Host", playerName(), resolver());
    _host->setDiscoveryTransport(_discovery.get());
    _host->setHostUpgrades(economy::networkMask(SaveStore::get().data()));
    return true;
}

bool NetContext::startClient()
{
    close();
    _game = net::openUdp(0);
    if (!_game)
        return false;
    platform::setMulticastLock(true);
    _client = std::make_unique<net::ClientSession>(*_game, playerName(), resolver(),
                                                    economy::networkMask(SaveStore::get().data()));
    return true;
}

void NetContext::close()
{
    if (_client)
        _client->leave();
    _client.reset();
    _host.reset();  // sockets last: the destructors may still send
    _game.reset();
    _discovery.reset();
    platform::setMulticastLock(false);
}

game::GameDriver* NetContext::driver()
{
    if (_host)
        return _host->driver();
    if (_client && _client->hasMatch())
        return _client.get();
    return nullptr;
}

void NetContext::update(float dt)
{
    if (_host)
        _host->update(dt);
    if (_client)
        _client->update(dt);
}

void NetContext::sendChat(int message)
{
    if (_host)
        _host->sendChat(message);
    else if (_client)
        _client->sendChat(message);
}

std::vector<std::pair<int, int>> NetContext::takeChat()
{
    std::vector<std::pair<int, int>> out;
    if (_host)
    {
        out = _host->chatLog();
        _host->clearChatLog();
    }
    else if (_client)
    {
        out = _client->chatLog();
        _client->clearChatLog();
    }
    return out;
}

std::string NetContext::localAddress() const
{
    const auto ip = net::localWifiAddress();
    return ip ? net::Endpoint{ip, 0}.toString().substr(0, net::Endpoint{ip, 0}.toString().rfind(':')) : "";
}

}  // namespace mm::app
