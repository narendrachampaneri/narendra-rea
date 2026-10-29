package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class AdSDKBridgeList implements Iterable<AdSDKBridge> {
    private final HashMap<String, AdSDKBridge> bridgesByName = new HashMap<>();

    public void clear() {
        this.bridgesByName.clear();
    }

    public void addBridge(AdSDKBridge bridge) {
        this.bridgesByName.put(bridge.getName(), bridge);
    }

    public boolean contains(AdSDKBridge bridge) {
        return this.bridgesByName.containsKey(bridge.getName());
    }

    @Override // java.lang.Iterable
    public Iterator<AdSDKBridge> iterator() {
        return this.bridgesByName.values().iterator();
    }
}
