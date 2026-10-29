package com.inmobi.monetization.internal;

import android.os.Handler;
import android.util.Log;
import android.view.ViewGroup;
import com.inmobi.commons.network.Response;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.objects.NativeAdsCache;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class NativeAd extends Ad {
    public static final String KEY_CONTEXTCODE = "contextCode";
    public static final String KEY_NAMESPACE = "namespace";
    public static final String KEY_PUBCONTENT = "pubContent";
    e b;
    private Handler c;
    private a d;
    private String e;
    public boolean loggingEnabled;
    public Object mImpId;

    private enum a {
        INIT,
        LOADING,
        READY,
        ATTACHED,
        ERROR,
        UNKNOWN
    }

    public NativeAd(String str) {
        super(str);
        this.d = a.UNKNOWN;
        this.b = null;
        this.e = null;
        if (initialize()) {
            a(a.INIT);
        }
        this.e = str;
    }

    @Override // com.inmobi.monetization.internal.Ad
    protected boolean initialize() {
        try {
            this.c = new Handler();
            return super.initialize();
        } catch (Throwable th) {
            Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
            return false;
        }
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void loadAd() {
        if (this.c == null) {
            Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
            return;
        }
        switch (b()) {
            case UNKNOWN:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
                return;
            case LOADING:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Ad is already loading. Please wait");
                return;
            case ATTACHED:
                detachFromView();
                break;
            case INIT:
            case READY:
            case ERROR:
                break;
            default:
                return;
        }
        com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Loading native ad");
        a(a.LOADING);
        a();
    }

    private void a() {
        NativeAdsCache.getInstance().removeExpiredAds();
        int numCachedAds = NativeAdsCache.getInstance().getNumCachedAds(this.e);
        int i = Initializer.getConfigParams().getNativeSdkConfigParams().getmMinLimit();
        if (numCachedAds == 0) {
            super.loadAd();
            return;
        }
        a(a.READY);
        if (numCachedAds <= i) {
            super.loadAd();
        }
        if (this.mAdListener != null) {
            this.mAdListener.onAdRequestSucceeded();
        }
    }

    public NativeAdObject getNativeAdObject() {
        return NativeAdsCache.getInstance().getCachedAd(this.e);
    }

    @Override // com.inmobi.monetization.internal.Ad
    protected Map<String, String> getAdFormatParams() {
        HashMap map = new HashMap();
        map.put("format", Ad.AD_FORMAT.NATIVE.toString().toLowerCase(Locale.getDefault()));
        map.put("mk-ads", String.valueOf(Initializer.getConfigParams().getNativeSdkConfigParams().getmFetchLimit()));
        return map;
    }

    private void a(AdErrorCode adErrorCode) {
        if (adErrorCode != null) {
            com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, adErrorCode.toString());
        }
        if (this.mAdListener != null && b() == a.LOADING) {
            this.mAdListener.onAdRequestFailed(adErrorCode);
        }
        a(a.ERROR);
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void handleResponse(c cVar, Response response) {
        try {
            if (response != null) {
                if (response.getStatusCode() == 200) {
                    JSONArray jSONArray = JSONObjectInstrumentation.init(response.getResponseBody()).getJSONArray("ads");
                    if (jSONArray != null) {
                        if (jSONArray.length() == 0) {
                            a(AdErrorCode.NO_FILL);
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        int length = jSONArray.length();
                        int i = Initializer.getConfigParams().getNativeSdkConfigParams().getmFetchLimit();
                        if (length > i) {
                            length = i;
                        }
                        for (int i2 = 0; i2 < length; i2++) {
                            try {
                                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                                String strOptString = jSONObject.optString(KEY_PUBCONTENT);
                                String strOptString2 = jSONObject.optString(KEY_CONTEXTCODE);
                                String strOptString3 = jSONObject.optString(KEY_NAMESPACE);
                                if (strOptString != null && !"".equals(strOptString.trim()) && strOptString2 != null && !"".equals(strOptString2.trim()) && strOptString3 != null && !"".equals(strOptString3.trim())) {
                                    arrayList.add(!(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject));
                                }
                            } catch (Exception e) {
                                com.inmobi.commons.internal.Log.internal(Constants.LOG_TAG, "JSON Exception", e);
                            }
                        }
                        if (arrayList.size() > 0) {
                            NativeAdsCache.getInstance().saveNativeAds(this.e, arrayList);
                            if (b() == a.LOADING) {
                                a(a.READY);
                                if (this.mAdListener != null) {
                                    this.mAdListener.onAdRequestSucceeded();
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        a(AdErrorCode.INTERNAL_ERROR);
                        return;
                    }
                    a(AdErrorCode.INTERNAL_ERROR);
                    return;
                }
                if (response.getStatusCode() == 400) {
                    a(AdErrorCode.INVALID_APP_ID);
                    return;
                } else {
                    a(AdErrorCode.INTERNAL_ERROR);
                    return;
                }
            }
            a(AdErrorCode.INTERNAL_ERROR);
        } catch (Exception e2) {
            com.inmobi.commons.internal.Log.internal(Constants.LOG_TAG, "Exception retrieving native ad", e2);
            a(AdErrorCode.INTERNAL_ERROR);
        }
    }

    public void attachToView(final ViewGroup viewGroup, final String str, final String str2) {
        try {
            if (viewGroup == null) {
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please pass a valid view to attach");
            } else {
                switch (b()) {
                    case UNKNOWN:
                        com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
                        break;
                    case LOADING:
                    case ERROR:
                        com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Cannot attach an ad when it is not loaded");
                        break;
                    case ATTACHED:
                        com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Ad is already attached");
                        break;
                    case INIT:
                        com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please load a native ad before attach");
                        break;
                    case READY:
                        if (this.c == null) {
                            Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
                        } else {
                            this.c.post(new Runnable() { // from class: com.inmobi.monetization.internal.NativeAd.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        NativeAd.this.b = new e(viewGroup.getContext(), str, str2);
                                        viewGroup.addView(NativeAd.this.b);
                                    } catch (Exception e) {
                                        Log.e(Constants.LOG_TAG, "Failed to attach the view");
                                        NativeAd.this.a(a.ERROR);
                                    }
                                }
                            });
                            a(a.ATTACHED);
                        }
                        break;
                }
            }
        } catch (Exception e) {
            Log.e(Constants.LOG_TAG, "Please pass a valid view to attach");
        }
    }

    public void detachFromView() {
        switch (b()) {
            case UNKNOWN:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
                break;
            case LOADING:
            case ERROR:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Cannot detach an ad when it is not loaded");
                break;
            case ATTACHED:
                if (this.c == null) {
                    com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
                } else {
                    this.c.post(new Runnable() { // from class: com.inmobi.monetization.internal.NativeAd.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (NativeAd.this.b != null) {
                                    NativeAd.this.b.a();
                                    NativeAd.this.b = null;
                                } else {
                                    Log.e(Constants.LOG_TAG, "Please attach the native ad view before calling detach");
                                    NativeAd.this.a(a.ERROR);
                                }
                            } catch (Exception e) {
                                NativeAd.this.a(a.ERROR);
                                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Failed to detach a view");
                            }
                        }
                    });
                    a(a.INIT);
                }
                break;
            case INIT:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please load an ad before calling detach");
                break;
            case READY:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Cannot detach an ad when it is not attached");
                break;
        }
    }

    public void handleClick(final HashMap<String, String> map) {
        switch (b()) {
            case UNKNOWN:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
                break;
            case LOADING:
            case INIT:
            case ERROR:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Cannot handle click, native ad not loaded");
                break;
            case ATTACHED:
                if (this.c == null) {
                    Log.e(Constants.LOG_TAG, "Please create a native ad instance in the main thread");
                } else {
                    this.c.post(new Runnable() { // from class: com.inmobi.monetization.internal.NativeAd.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                NativeAd.this.b.a(map);
                            } catch (Exception e) {
                                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Failed to track click");
                            }
                        }
                    });
                }
                break;
            case READY:
                com.inmobi.commons.internal.Log.debug(Constants.LOG_TAG, "Cannot handle click, native ad not attached");
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar) {
        this.d = aVar;
    }

    private synchronized a b() {
        return this.d;
    }

    public Handler getHandler() {
        return this.c;
    }
}
