package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class de extends bt {
    private final AppLovinAdImpl a;
    private final AppLovinAdRewardListener b;
    private final Object c;
    private volatile boolean d;

    public de(AppLovinSdkImpl appLovinSdkImpl, AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        super("TaskValidateReward", appLovinSdkImpl);
        this.c = new Object();
        this.d = false;
        this.a = (AppLovinAdImpl) appLovinAd;
        this.b = appLovinAdRewardListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (c()) {
            return;
        }
        String str = "network_timeout";
        if (i < 400 || i > 500) {
            this.b.validationRequestFailed(this.a, i);
        } else {
            this.b.userRewardRejected(this.a, new HashMap(0));
            str = "rejected";
        }
        bl.a().a(this.a, str);
    }

    private void a(String str, Map map) {
        if (c()) {
            return;
        }
        bl blVarA = bl.a();
        blVarA.a(this.a, str);
        blVarA.a(this.a, map);
        if (str.equals("accepted")) {
            this.b.userRewardVerified(this.a, map);
            return;
        }
        if (str.equals("quota_exceeded")) {
            this.b.userOverQuota(this.a, map);
        } else if (str.equals("rejected")) {
            this.b.userRewardRejected(this.a, map);
        } else {
            this.b.validationRequestFailed(this.a, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        Map map;
        String string;
        if (c()) {
            return;
        }
        try {
            JSONObject jSONObjectA = q.a(jSONObject);
            q.a(jSONObjectA, this.f);
            try {
                map = ax.a((JSONObject) jSONObjectA.get("params"));
            } catch (Throwable th) {
                map = new HashMap(0);
            }
            try {
                string = jSONObjectA.getString("result");
            } catch (Throwable th2) {
                string = "network_timeout";
            }
            a(string, map);
        } catch (JSONException e) {
            this.g.e(this.e, "Unable to parse API response", e);
        }
    }

    public void a(boolean z) {
        synchronized (this.c) {
            this.d = z;
        }
    }

    boolean c() {
        boolean z;
        synchronized (this.c) {
            z = this.d;
        }
        return z;
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
        a("vr", new JSONObject(map), new df(this));
    }
}
