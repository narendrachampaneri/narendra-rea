package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class cz extends bt {
    private final AppLovinAdImpl a;

    public cz(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd) {
        super("TaskReportReward", appLovinSdkImpl);
        this.a = (AppLovinAdImpl) appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strB = z.b();
        String clCode = this.a.getClCode();
        HashMap map = new HashMap(2);
        if (AppLovinSdkUtils.isValidString(clCode)) {
            map.put("clcode", clCode);
        } else {
            map.put("clcode", "NO_CLCODE");
        }
        if (strB != null) {
            map.put("user_id", strB);
        }
        bl blVarA = bl.a();
        String strB2 = blVarA.b(this.a);
        if (strB2 == null) {
            this.g.d("TaskReportReward", "No reward result was found for ad: " + this.a);
            return;
        }
        map.put("result", strB2);
        Map mapA = blVarA.a(this.a);
        if (mapA != null) {
            map.put("params", mapA);
        }
        a("cr", new JSONObject(map), new da(this));
    }
}
