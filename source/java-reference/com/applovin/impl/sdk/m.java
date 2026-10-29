package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class m implements AppLovinTargetingData {
    private final Context a;

    m(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = appLovinSdkImpl.getApplicationContext();
    }

    private static String a(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (AppLovinSdkUtils.isValidString(str)) {
                sb.append(dh.c(str));
                sb.append(AppInfo.DELIM);
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private void a(String str, String str2) {
        if (AppLovinSdkUtils.isValidString(str)) {
            SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
            editorEdit.putString(str, dh.c(str2));
            editorEdit.commit();
        }
    }

    Map a() {
        HashMap map = new HashMap();
        Map<String, ?> all = this.a.getSharedPreferences("applovin.sdk.targeting", 0).getAll();
        if (all != null && all.size() > 0) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                map.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void clearData() {
        SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("applovin.sdk.targeting", 0).edit();
        editorEdit.clear();
        editorEdit.commit();
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void putExtra(String str, String str2) {
        if (AppLovinSdkUtils.isValidString(str) && AppLovinSdkUtils.isValidString(str2)) {
            a("ex_" + str, str2);
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setBirthYear(int i) {
        if (i >= 9999 || i <= 1900) {
            return;
        }
        a("yob", Integer.toString(i));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCarrier(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a(AnalyticAttribute.CARRIER_ATTRIBUTE, str);
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setCountry(String str) {
        if (AppLovinSdkUtils.isValidString(str) && str.length() == 2) {
            a("country", str.toUpperCase(Locale.ENGLISH));
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setGender(char c) {
        String str;
        if (c == 'm') {
            str = "m";
        } else {
            str = c == 'f' ? "f" : "u";
        }
        a("gender", str);
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setInterests(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("interests", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setKeywords(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        a("keywords", a(strArr));
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLanguage(String str) {
        if (AppLovinSdkUtils.isValidString(str)) {
            a("language", str.toLowerCase(Locale.ENGLISH));
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setLocation(Location location) {
        if (location != null) {
            a("lat", Double.toString(location.getLatitude()));
            a("lon", Double.toString(location.getLongitude()));
        }
    }
}
