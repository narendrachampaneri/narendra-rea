package com.applovin.impl.sdk;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinTargetingData;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinSdkImpl extends AppLovinSdk {
    private String a;
    private AppLovinSdkSettings b;
    private Context c;
    private AppLovinLogger d;
    private cq e;
    private bz f;
    private o g;
    private cb h;
    private y i;
    private b j;
    private bb k;
    private r l;
    private m m;
    private AppLovinAdServiceImpl n;
    private bd o;
    private PostbackServiceImpl p;
    private EventServiceImpl q;
    private bm r;
    private boolean s = true;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;

    private static boolean h() {
        return (Build.VERSION.RELEASE.startsWith("1.") || Build.VERSION.RELEASE.startsWith("2.0") || Build.VERSION.RELEASE.startsWith("2.1")) ? false : true;
    }

    cq a() {
        return this.e;
    }

    Object a(by byVar) {
        return this.f.a(byVar);
    }

    void a(AppLovinSdkSettings appLovinSdkSettings) {
        this.s = true;
        this.e.a(new cp(this, appLovinSdkSettings), 0L);
    }

    void a(boolean z) {
        this.s = false;
        this.t = z;
        this.u = true;
    }

    cb b() {
        return this.h;
    }

    b c() {
        return this.j;
    }

    bb d() {
        return this.k;
    }

    boolean e() {
        return this.s;
    }

    boolean f() {
        return this.u;
    }

    void g() {
        this.f.d();
        this.f.b();
        this.h.a();
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinAdService getAdService() {
        return this.n;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public Context getApplicationContext() {
        return this.c;
    }

    public o getConnectionManager() {
        return this.g;
    }

    public r getDataCollector() {
        return this.l;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinEventService getEventService() {
        return this.q;
    }

    public y getFileManager() {
        return this.i;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinLogger getLogger() {
        return this.d;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinNativeAdService getNativeAdService() {
        return this.o;
    }

    public bm getPersistentPostbackManager() {
        return this.r;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public PostbackServiceImpl getPostbackService() {
        return this.p;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public String getSdkKey() {
        return this.a;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinSdkSettings getSettings() {
        return this.b;
    }

    public bz getSettingsManager() {
        return this.f;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinTargetingData getTargetingData() {
        return this.m;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean hasCriticalErrors() {
        return this.v || this.w;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    protected void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.a = str;
        this.b = appLovinSdkSettings;
        this.c = context;
        try {
            k kVar = new k();
            this.d = kVar;
            this.f = new bz(this);
            this.e = new cq(this);
            this.g = new o(this);
            this.h = new cb(this);
            this.i = new y(this);
            this.l = new r(this);
            this.n = new AppLovinAdServiceImpl(this);
            this.o = new bd(this);
            this.p = new PostbackServiceImpl(this);
            this.q = new EventServiceImpl(this);
            this.r = new bm(this);
            this.j = new b(this);
            this.k = new bb(this);
            this.m = new m(this);
            if (!h()) {
                this.v = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8");
            }
            if (str == null || str.length() < 1) {
                this.w = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
                StringWriter stringWriter = new StringWriter();
                new Throwable("").printStackTrace(new PrintWriter(stringWriter));
                Log.e(AppLovinLogger.SDK_TAG, "Called with an invalid SDK key from: " + stringWriter.toString());
            }
            if (hasCriticalErrors()) {
                a(false);
                return;
            }
            kVar.a(this.f);
            if (appLovinSdkSettings instanceof aw) {
                kVar.a(((aw) appLovinSdkSettings).a());
            }
            a(appLovinSdkSettings);
        } catch (Throwable th) {
            Log.e(AppLovinLogger.SDK_TAG, "Failed to load AppLovin SDK, ad serving will be disabled", th);
            a(false);
        }
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void initializeSdk() {
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean isEnabled() {
        return this.t;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void setPluginVersion(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No version specified");
        }
        this.f.a(bw.F, str);
        this.f.b();
    }
}
