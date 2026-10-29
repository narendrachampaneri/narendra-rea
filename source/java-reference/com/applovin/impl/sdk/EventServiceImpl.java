package com.applovin.impl.sdk;

import android.content.Intent;
import android.net.Uri;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.endpoint.AbstractTokenRequest;
import com.android.util.IabHelper;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class EventServiceImpl implements AppLovinEventService {
    private final AppLovinSdkImpl a;
    private final List b;

    public EventServiceImpl(AppLovinSdk appLovinSdk) {
        this.a = (AppLovinSdkImpl) appLovinSdk;
        this.b = Arrays.asList(((String) ((AppLovinSdkImpl) appLovinSdk).a(bw.bi)).split(AppInfo.DELIM));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri a(bs bsVar, s sVar) {
        r dataCollector = this.a.getDataCollector();
        u uVarA = dataCollector.a();
        t tVarB = dataCollector.b();
        boolean zContains = this.b.contains(bsVar.a());
        Uri.Builder builderAppendQueryParameter = Uri.parse((String) this.a.a(bw.bh)).buildUpon().appendQueryParameter("event", zContains ? bsVar.a() : "postinstall").appendQueryParameter("ts", Long.toString(bsVar.c())).appendQueryParameter("platform", AbstractTokenRequest.ANDROID_OS_NAME).appendQueryParameter("model", uVarA.a).appendQueryParameter("package_name", tVarB.c).appendQueryParameter("sdk_key", this.a.getSdkKey()).appendQueryParameter("idfa", sVar.b).appendQueryParameter("dnt", Boolean.toString(sVar.a)).appendQueryParameter("ia", Long.toString(tVarB.d)).appendQueryParameter("api_did", (String) this.a.a(bw.c)).appendQueryParameter("brand", uVarA.c).appendQueryParameter("model", uVarA.a).appendQueryParameter("revision", uVarA.d).appendQueryParameter("sdk_version", AppLovinSdk.VERSION).appendQueryParameter("os", uVarA.b);
        if (!zContains) {
            builderAppendQueryParameter = builderAppendQueryParameter.appendQueryParameter("sub_event", bsVar.a());
        }
        return builderAppendQueryParameter.build();
    }

    private Map a(Map map) {
        HashMap map2 = new HashMap();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if ((key instanceof String) && (value instanceof String)) {
                    map2.put((String) key, (String) value);
                } else {
                    this.a.getLogger().w("EventServiceImpl", "Unexpected class type in trackEvent(); all keys and values passed as parameters must be String. Encountered " + key.getClass().getCanonicalName() + "/" + value.getClass().getCanonicalName() + "; will use toString() value instead, which may be unexpected...");
                    map2.put(key.toString(), value.toString());
                }
            }
        }
        return map2;
    }

    private void a(bs bsVar) {
        if (((Boolean) this.a.a(bw.bj)).booleanValue()) {
            this.a.getLogger().d("EventServiceImpl", "Tracking event: " + bsVar);
            a(new v(this, bsVar));
        }
    }

    private void a(cj cjVar) {
        this.a.a().a(new ci(this.a, cjVar), cr.BACKGROUND);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map map) {
        HashMap map2 = map != null ? new HashMap(map) : new HashMap(1);
        map2.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent("checkout", map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map map) {
        a(new bs(str, a(map), System.currentTimeMillis(), dh.b(UUID.randomUUID().toString())));
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map map) {
        HashMap map2 = map != null ? new HashMap(map) : new HashMap();
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra(IabHelper.RESPONSE_INAPP_SIGNATURE));
        } catch (Exception e) {
            this.a.getLogger().userError("EventServiceImpl", "Unable to track in app purchase; invalid purchanse intent", e);
        }
        trackEvent(AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, map2);
    }
}
