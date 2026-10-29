package com.inmobi.monetization.internal.objects;

import android.content.Context;
import android.util.Base64;
import com.inmobi.commons.ads.cache.AdData;
import com.inmobi.commons.ads.cache.AdDatabaseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Ad;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.NativeAd;
import com.inmobi.monetization.internal.NativeAdObject;
import com.inmobi.monetization.internal.configs.Initializer;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class NativeAdsCache {
    static NativeAdsCache a;

    public static NativeAdsCache getInstance() {
        if (a == null) {
            synchronized (NativeAdsCache.class) {
                a = new NativeAdsCache(InternalSDKUtil.getContext());
            }
        }
        AdDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getNativeSdkConfigParams().getmMaxCacheSize());
        return a;
    }

    private NativeAdsCache(Context context) {
    }

    public NativeAdObject getCachedAd(String str) {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(AdDatabaseManager.getInstance().getAd(str).getContent());
            return new NativeAdObject(new String(Base64.decode(jSONObjectInit.getString(NativeAd.KEY_PUBCONTENT), 0)).trim(), jSONObjectInit.getString(NativeAd.KEY_CONTEXTCODE), jSONObjectInit.getString(NativeAd.KEY_NAMESPACE));
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting cached ad", e);
            return null;
        }
    }

    public int getNumCachedAds(String str) {
        try {
            return AdDatabaseManager.getInstance().getNoOfAds(str);
        } catch (Exception e) {
            return 0;
        }
    }

    public void saveNativeAds(String str, List<String> list) {
        if (list != null && list.size() > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    AdData adData = new AdData();
                    adData.setContent(list.get(i2));
                    adData.setTimestamp(System.currentTimeMillis());
                    adData.setAppId(str);
                    adData.setAdType(Ad.AD_TYPE_NATIVE);
                    AdDatabaseManager.getInstance().insertAd(adData);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void removeExpiredAds() {
        AdDatabaseManager.getInstance().removeExpiredAds(Initializer.getConfigParams().getNativeSdkConfigParams().getTimeToLive(), Ad.AD_TYPE_NATIVE);
    }
}
