package com.inmobi.monetization.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.amazon.device.ads.WebRequest;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Response;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.configs.NetworkEventType;
import com.inmobi.monetization.internal.imai.IMAIController;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class InterstitialAd extends Ad implements IMAIController.InterstitialAdStateListener {
    long b;
    boolean c;
    private Activity d;
    private long e;
    private IMWebView f;
    private long g;
    private Object h;
    private Response i;
    private boolean j;
    private boolean k;
    private a l;
    private IMWebView.IMWebViewListener m;

    public InterstitialAd(Activity activity, String str) {
        super(str);
        this.g = 0L;
        this.h = null;
        this.b = 0L;
        this.c = true;
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = new a(this);
        this.m = new IMWebView.IMWebViewListener() { // from class: com.inmobi.monetization.internal.InterstitialAd.2
            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpand() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpandClose() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onLeaveApplication() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onLeaveApplication();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onError() {
                Log.debug(Constants.LOG_TAG, "Error loading the interstitial ad ");
                InterstitialAd.this.l.removeMessages(HttpStatus.SC_MOVED_PERMANENTLY);
                InterstitialAd.this.f = null;
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onShowAdScreen() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDismissAdScreen() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResize(ResizeDimensions resizeDimensions) {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResizeClose() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onUserInteraction(Map<String, String> map) {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onAdInteraction(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onIncentCompleted(Map<Object, Object> map) {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onIncentCompleted(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDisplayFailed() {
                InterstitialAd.this.b();
            }
        };
        this.d = activity;
        this.j = initialize();
    }

    public InterstitialAd(Activity activity, long j) {
        super(j);
        this.g = 0L;
        this.h = null;
        this.b = 0L;
        this.c = true;
        this.i = null;
        this.j = false;
        this.k = false;
        this.l = new a(this);
        this.m = new IMWebView.IMWebViewListener() { // from class: com.inmobi.monetization.internal.InterstitialAd.2
            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpand() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onExpandClose() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onLeaveApplication() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onLeaveApplication();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onError() {
                Log.debug(Constants.LOG_TAG, "Error loading the interstitial ad ");
                InterstitialAd.this.l.removeMessages(HttpStatus.SC_MOVED_PERMANENTLY);
                InterstitialAd.this.f = null;
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onShowAdScreen() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onShowAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDismissAdScreen() {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onDismissAdScreen();
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResize(ResizeDimensions resizeDimensions) {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onResizeClose() {
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onUserInteraction(Map<String, String> map) {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onAdInteraction(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onIncentCompleted(Map<Object, Object> map) {
                if (InterstitialAd.this.mAdListener != null) {
                    InterstitialAd.this.mAdListener.onIncentCompleted(map);
                }
            }

            @Override // com.inmobi.re.container.IMWebView.IMWebViewListener
            public void onDisplayFailed() {
                InterstitialAd.this.b();
            }
        };
        this.d = activity;
        this.j = initialize();
    }

    @Override // com.inmobi.monetization.internal.Ad
    protected boolean initialize() {
        if (this.d == null) {
            Log.debug(Constants.LOG_TAG, "Activity cannot be null");
            return false;
        }
        this.d = b.a(this.d);
        f();
        if (d()) {
            this.h = e();
        }
        return super.initialize();
    }

    @Override // com.inmobi.monetization.internal.Ad
    protected Map<String, String> getAdFormatParams() {
        HashMap map = new HashMap();
        map.put("format", Ad.AD_FORMAT.IMAI.toString().toLowerCase(Locale.getDefault()));
        map.put("mk-ads", "1");
        map.put("mk-ad-slot", String.valueOf(a()));
        map.put(AdDatabaseHelper.COLUMN_ADTYPE, "int");
        if (d()) {
            map.put("playable", String.valueOf(1));
        }
        return map;
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void handleResponse(c cVar, Response response) {
        try {
            this.i = response;
            this.d.runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.internal.InterstitialAd.1
                @Override // java.lang.Runnable
                public void run() {
                    InterstitialAd.this.c();
                }
            });
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Error retrieving ad ", e);
            if (this.mAdListener != null) {
                this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void loadAd() {
        if (!this.j) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        this.k = false;
        f();
        super.loadAd();
    }

    private static int a() {
        if (!DeviceInfo.isTablet(InternalSDKUtil.getContext())) {
            return 14;
        }
        return 17;
    }

    public void show(long j) {
        if (!this.j) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
        } else {
            this.g = j;
            show();
        }
    }

    public void show() {
        try {
            if (!this.j) {
                Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            } else {
                Log.debug(Constants.LOG_TAG, "Showing the Interstitial Ad. ");
                if (d() && this.h != null && a(this.h)) {
                    b(this.h);
                } else {
                    b();
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Error showing ad ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            if (this.mAdListener != null) {
                this.mAdListener.onShowAdScreen();
            }
            Intent intent = new Intent(this.d, (Class<?>) IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 101);
            intent.putExtra(IMBrowserActivity.ANIMATED, this.g);
            IMBrowserActivity.setWebview(this.f);
            IMBrowserActivity.setOriginalActivity(this.d);
            this.d.startActivity(intent);
        } catch (Exception e) {
            Log.debug(Constants.LOG_TAG, "Error showing ad ", e);
        }
    }

    @Override // com.inmobi.monetization.internal.Ad
    public void stopLoading() {
        if (!this.j) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        super.stopLoading();
        if (this.l != null && this.l.hasMessages(HttpStatus.SC_MOVED_PERMANENTLY)) {
            this.l.removeMessages(HttpStatus.SC_MOVED_PERMANENTLY);
        }
        this.k = true;
    }

    public void disableHardwareAcceleration() {
        if (!this.j) {
            Log.debug(Constants.LOG_TAG, "Please check for initialization error on the ad. The activity or appId cannot be null or blank");
            return;
        }
        this.c = false;
        if (this.f != null) {
            this.f.disableHardwareAcceleration();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (!this.k) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mFetchStartTime;
            String responseBody = this.i != null ? this.i.getResponseBody() : null;
            if (responseBody != null) {
                String strReplace = responseBody.replace("@__imm_aft@", "" + jCurrentTimeMillis);
                if (Build.VERSION.SDK_INT <= 8) {
                    strReplace.replaceAll("%", "%25");
                }
                this.e = System.currentTimeMillis();
                this.l.sendEmptyMessageDelayed(HttpStatus.SC_MOVED_PERMANENTLY, Initializer.getConfigParams().getRenderTimeOut());
                this.f.loadDataWithBaseURL("", strReplace, WebRequest.CONTENT_TYPE_HTML, null, null);
                return;
            }
            Log.debug(Constants.LOG_TAG, "Cannot load Ad. Invalid Ad Response");
            if (this.mAdListener != null) {
                this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
            }
        }
    }

    static class a extends Handler {
        private final WeakReference<InterstitialAd> a;

        public a(InterstitialAd interstitialAd) {
            this.a = new WeakReference<>(interstitialAd);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            InterstitialAd interstitialAd = this.a.get();
            if (interstitialAd != null) {
                try {
                    switch (message.what) {
                        case HttpStatus.SC_MOVED_PERMANENTLY /* 301 */:
                            interstitialAd.f.cancelLoad();
                            interstitialAd.f.stopLoading();
                            interstitialAd.f.deinit();
                            interstitialAd.f = null;
                            interstitialAd.collectMetrics(interstitialAd.i, System.currentTimeMillis() - interstitialAd.e, NetworkEventType.RENDER_TIMEOUT);
                            if (interstitialAd.mAdListener != null) {
                                interstitialAd.mAdListener.onAdRequestFailed(AdErrorCode.AD_RENDERING_TIMEOUT);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                } catch (Exception e) {
                    Log.internal(Constants.LOG_TAG, "Exception handling message in Interstitial", e);
                }
                Log.internal(Constants.LOG_TAG, "Exception handling message in Interstitial", e);
            }
        }
    }

    @Override // com.inmobi.monetization.internal.imai.IMAIController.InterstitialAdStateListener
    public void onAdReady() {
        collectMetrics(this.i, System.currentTimeMillis() - this.e, NetworkEventType.RENDER_COMPLETE);
        if (!this.k) {
            this.l.removeMessages(HttpStatus.SC_MOVED_PERMANENTLY);
            if (this.mAdListener != null) {
                this.mAdListener.onAdRequestSucceeded();
            }
        }
    }

    @Override // com.inmobi.monetization.internal.imai.IMAIController.InterstitialAdStateListener
    public void onAdFailed() {
        this.l.removeMessages(HttpStatus.SC_MOVED_PERMANENTLY);
        if (!this.k && this.mAdListener != null) {
            this.mAdListener.onAdRequestFailed(AdErrorCode.INTERNAL_ERROR);
        }
    }

    private boolean d() {
        try {
            Class.forName("com.inmobi.monetization.internal.thirdparty.PlayableAdsManager");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private Object e() {
        try {
            return Class.forName("com.inmobi.monetization.internal.thirdparty.PlayableAdsManager").getConstructor(Activity.class, IMWebView.class).newInstance(this.d, this.f);
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception creating playable ads", e);
            return null;
        }
    }

    private boolean a(Object obj) {
        try {
            Field declaredField = obj.getClass().getDeclaredField("mIsPlayableReady");
            declaredField.setAccessible(true);
            return ((Boolean) declaredField.get(obj)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    private void b(Object obj) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("show", IMAdListener.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(obj, this.mAdListener);
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to display playable ad");
            b();
        }
    }

    private void f() {
        if (this.f == null) {
            this.f = new IMWebView(this.d, this.m, true, false);
            if (!this.c) {
                this.f.disableHardwareAcceleration();
            }
            IMAIController iMAIController = new IMAIController(this.f);
            iMAIController.setInterstitialAdStateListener(this);
            this.f.addJavascriptInterface(iMAIController, IMAIController.IMAI_BRIDGE);
        }
    }
}
