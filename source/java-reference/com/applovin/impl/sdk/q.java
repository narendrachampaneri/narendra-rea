package com.applovin.impl.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.InputStream;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class q {
    private static final int[] a = {7, 4, 2, 1, 11};
    private static final int[] b = {5, 6, 10, 3, 9, 8, 14};
    private static final int[] c = {15, 12, 13};
    private static final String d = q.class.getSimpleName();

    q() {
    }

    private static NetworkInfo a(Context context) {
        ConnectivityManager connectivityManager;
        if (!r.a("android.permission.ACCESS_NETWORK_STATE", context) || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    static String a(AppLovinSdkImpl appLovinSdkImpl) {
        String str;
        NetworkInfo networkInfoA = a(appLovinSdkImpl.getApplicationContext());
        if (networkInfoA == null) {
            return "unknown";
        }
        int type = networkInfoA.getType();
        int subtype = networkInfoA.getSubtype();
        if (type == 1) {
            str = "wifi";
        } else if (type != 0) {
            str = "unknown";
        } else if (a(subtype, a)) {
            str = "2g";
        } else if (a(subtype, b)) {
            str = "3g";
        } else {
            str = a(subtype, c) ? "4g" : "mobile";
        }
        appLovinSdkImpl.getLogger().d(d, "Network " + type + "/" + subtype + " resolved to " + str);
        return str;
    }

    static String a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        Scanner scanner = new Scanner(inputStream, "UTF-8");
        StringBuilder sb = new StringBuilder();
        while (scanner.hasNextLine()) {
            sb.append(scanner.nextLine());
        }
        return sb.toString();
    }

    static String a(String str) {
        return str.startsWith("https://") ? str : str.replace("http://", "https://");
    }

    static String a(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        String str2 = (String) appLovinSdkImpl.a(bw.e);
        StringBuilder sb = new StringBuilder();
        sb.append((String) appLovinSdkImpl.a(bw.k));
        sb.append(str);
        if (str2 == null || str2.length() <= 0) {
            sb.append("?api_key=");
            sb.append(appLovinSdkImpl.getSdkKey());
        } else {
            sb.append("?device_token=");
            sb.append(str2);
        }
        return sb.toString();
    }

    static JSONObject a(JSONObject jSONObject) {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    static void a(int i, AppLovinSdkImpl appLovinSdkImpl) {
        bz settingsManager = appLovinSdkImpl.getSettingsManager();
        if (i == 401) {
            settingsManager.a(bw.c, "");
            settingsManager.a(bw.e, "");
            settingsManager.a(bw.m, 0L);
            settingsManager.b();
            return;
        }
        if (i == 418) {
            settingsManager.a(bw.a, true);
            settingsManager.b();
        } else if (i >= 400 && i < 500) {
            appLovinSdkImpl.g();
        } else if (i == -1) {
            appLovinSdkImpl.g();
        }
    }

    static void a(JSONObject jSONObject, AppLovinSdkImpl appLovinSdkImpl) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (jSONObject.has("settings")) {
                bz settingsManager = appLovinSdkImpl.getSettingsManager();
                if (jSONObject.isNull("settings")) {
                    return;
                }
                settingsManager.a(jSONObject.getJSONObject("settings"));
                settingsManager.b();
                appLovinSdkImpl.getLogger().d(d, "New settings processed");
            }
        } catch (JSONException e) {
            appLovinSdkImpl.getLogger().e(d, "Unable to parse settings out of API response", e);
        }
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    static String b(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        return ((String) appLovinSdkImpl.a(bw.l)) + str;
    }

    static void b(int i, AppLovinSdkImpl appLovinSdkImpl) {
        if (i == 418) {
            bz settingsManager = appLovinSdkImpl.getSettingsManager();
            settingsManager.a(bw.a, true);
            settingsManager.b();
        }
    }
}
