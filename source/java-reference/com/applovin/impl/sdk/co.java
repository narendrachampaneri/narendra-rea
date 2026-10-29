package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class co extends cm {
    private int a;
    private final AppLovinNativeAdLoadListener b;

    public co(AppLovinSdkImpl appLovinSdkImpl, int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super(NativeAdImpl.SIZE_NATIVE, NativeAdImpl.TYPE_NATIVE, null, appLovinSdkImpl);
        this.b = appLovinNativeAdLoadListener;
        this.a = i;
    }

    @Override // com.applovin.impl.sdk.cm
    protected bv a(JSONObject jSONObject) {
        return new cw(jSONObject, this.f, this.b);
    }

    @Override // com.applovin.impl.sdk.cm
    protected void a(int i) {
        if (this.b != null) {
            this.b.onNativeAdsFailedToLoad(i);
        }
    }

    @Override // com.applovin.impl.sdk.cm
    protected void b(Map map) {
        map.put("slot_count", Integer.toString(this.a));
    }

    @Override // com.applovin.impl.sdk.cm
    protected void c(Map map) {
        dd ddVarA = db.a().a("tFNW");
        if (ddVarA != null) {
            map.put("etfw", Long.toString(ddVarA.b()));
            map.put("ntfw", ddVarA.a());
        }
    }

    @Override // com.applovin.impl.sdk.cm
    protected String d() {
        return q.b("nad", this.f);
    }

    @Override // com.applovin.impl.sdk.cm, com.applovin.impl.sdk.dg
    public String e() {
        return "tFNW";
    }
}
