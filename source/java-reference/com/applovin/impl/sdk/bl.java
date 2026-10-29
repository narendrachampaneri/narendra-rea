package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class bl {
    private static bl d;
    private final Map a = new HashMap(1);
    private final Map b = new HashMap(1);
    private final Object c = new Object();

    private bl() {
    }

    public static synchronized bl a() {
        if (d == null) {
            d = new bl();
        }
        return d;
    }

    public Map a(AppLovinAd appLovinAd) {
        Map map;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            map = (Map) this.b.remove(appLovinAdImpl);
        }
        return map;
    }

    public void a(AppLovinAd appLovinAd, String str) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.a.put(appLovinAdImpl, str);
        }
    }

    public void a(AppLovinAd appLovinAd, Map map) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            this.b.put(appLovinAdImpl, map);
        }
    }

    public String b(AppLovinAd appLovinAd) {
        String str;
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        synchronized (this.c) {
            str = (String) this.a.remove(appLovinAdImpl);
        }
        return str;
    }
}
