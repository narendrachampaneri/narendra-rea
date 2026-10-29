package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class a {
    private static final Object a = new Object();
    private static final Map b = new HashMap();

    static Map a(AppLovinSdkImpl appLovinSdkImpl) {
        Map mapC;
        synchronized (a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Reading cached device data...");
            mapC = c(appLovinSdkImpl);
        }
        return mapC;
    }

    private static void a(String str, Map map) {
        String[] strArrSplit = str.split("=");
        if (strArrSplit.length == 2) {
            map.put(strArrSplit[0], strArrSplit[1]);
        }
    }

    static void a(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        b(map, appLovinSdkImpl);
    }

    static void b(AppLovinSdkImpl appLovinSdkImpl) {
        synchronized (a) {
            appLovinSdkImpl.getLogger().d("AdDataCache", "Clearing old device data cache...");
            a(new HashMap(0), appLovinSdkImpl);
        }
    }

    private static void b(Map map, AppLovinSdkImpl appLovinSdkImpl) {
        if (map == null) {
            throw new IllegalArgumentException("No ad aata specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            synchronized (b) {
                Map map2 = (Map) b.get("ad_data_cache");
                if (map2 == null) {
                    map2 = new HashMap();
                }
                map2.clear();
                map2.putAll(map);
                b.put("ad_data_cache", map2);
            }
            SharedPreferences.Editor editorEdit = appLovinSdkImpl.getSettingsManager().a().edit();
            editorEdit.putString("ad_data_cache", dh.a(map));
            editorEdit.commit();
            appLovinSdkImpl.getLogger().d("AdDataCache", map.size() + " ad_data_cache entries saved in cache");
        } catch (Exception e) {
            appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to save ad data entries", e);
        }
    }

    private static Map c(AppLovinSdkImpl appLovinSdkImpl) {
        Map map;
        Map map2;
        SharedPreferences sharedPreferencesA;
        String string;
        Exception e;
        synchronized (b) {
            map = (Map) b.get("ad_data_cache");
        }
        if (map != null || (string = (sharedPreferencesA = appLovinSdkImpl.getSettingsManager().a()).getString("ad_data_cache", "")) == null || string.length() <= 0) {
            map2 = map;
        } else {
            try {
                map2 = new HashMap();
                try {
                    for (String str : string.split("&")) {
                        a(str, map2);
                    }
                    synchronized (b) {
                        b.put("ad_data_cache", map2);
                    }
                    appLovinSdkImpl.getLogger().d("AdDataCache", map2.size() + " ad_data_cache entries loaded from cache");
                } catch (Exception e2) {
                    e = e2;
                    appLovinSdkImpl.getLogger().e("AdDataCache", "Unable to load ad data", e);
                    SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
                    editorEdit.putString("ad_data_cache", "");
                    editorEdit.commit();
                }
            } catch (Exception e3) {
                map2 = map;
                e = e3;
            }
        }
        return map2 != null ? new HashMap(map2) : new HashMap();
    }
}
