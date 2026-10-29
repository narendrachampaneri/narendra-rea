package com.chartboost.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.SurfaceView;
import android.view.ViewGroup;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.k;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ae;
import com.chartboost.sdk.impl.af;
import com.chartboost.sdk.impl.av;
import com.chartboost.sdk.impl.ay;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import com.chartboost.sdk.impl.bc;
import com.chartboost.sdk.impl.bd;
import com.chartboost.sdk.impl.bg;
import com.chartboost.sdk.impl.m;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class Chartboost {
    private static Runnable o;
    private static volatile Chartboost c = null;
    private static CBImpressionActivity d = null;
    private static com.chartboost.sdk.Model.a e = null;
    private static ay f = null;
    private static ba g = null;
    private static m h = null;
    private static com.chartboost.sdk.Tracking.a i = null;
    private static boolean j = false;
    private static SparseBooleanArray k = new SparseBooleanArray();
    private static e l = null;
    private static c m = null;
    private static boolean n = false;
    protected static volatile Handler a = new Handler(Looper.getMainLooper());
    protected static k b = null;
    private static boolean p = false;
    private static boolean q = false;
    private static Runnable r = new Runnable() { // from class: com.chartboost.sdk.Chartboost.30
        @Override // java.lang.Runnable
        public void run() {
            if (!Chartboost.q) {
                Chartboost.c();
            }
            boolean unused = Chartboost.q = false;
        }
    };

    public enum CBFramework {
        CBFrameworkUnity("Unity"),
        CBFrameworkCorona("Corona"),
        CBFrameworkAir("AIR"),
        CBFrameworkGameSalad("GameSalad"),
        CBFrameworkCordova("Cordova"),
        CBFrameworkCocoonJS("CocoonJS"),
        CBFrameworkCocos2dx("Cocos2dx"),
        CBFrameworkMoPub("MoPub"),
        CBFrameworkFyber("Fyber"),
        CBFrameworkPrime31Unreal("Prime31Unreal"),
        CBFrameworkWeeby("Weeby");

        private final String a;

        CBFramework(String s) {
            this.a = s;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }

        public boolean doesWrapperUseCustomShouldDisplayBehavior() {
            return this == CBFrameworkAir || this == CBFrameworkCocos2dx;
        }

        public boolean doesWrapperUseCustomBackgroundingBehavior() {
            return this == CBFrameworkAir;
        }
    }

    private Chartboost(Activity app, String appId, String appSignature) {
        c = this;
        CBUtility.a(a);
        b.a(app.getApplication());
        b.a(app.getApplicationContext());
        b.b(appId);
        b.c(appSignature);
        f = ay.a();
        l = e.a();
        g = ba.a(b.y());
        h = g.a();
        m = c.a();
        i = com.chartboost.sdk.Tracking.a.a();
        f.a(b.y());
        bd.a();
        o = new a();
        com.chartboost.sdk.Libraries.c.a();
        CBUtility.h();
    }

    public static void startWithAppId(final Activity activity, final String appId, final String appSignature) {
        if (c == null) {
            synchronized (Chartboost.class) {
                if (c == null) {
                    if (activity == null && !(activity instanceof Activity)) {
                        CBLogging.b("Chartboost", "Activity object is null. Please pass a valid activity object");
                        return;
                    }
                    if (!b.b(activity)) {
                        CBLogging.b("Chartboost", "Permissions not set correctly");
                    } else {
                        if (TextUtils.isEmpty(appId) || TextUtils.isEmpty(appSignature)) {
                            CBLogging.b("Chartboost", "AppId or AppSignature is null. Please pass a valid id's");
                            return;
                        }
                        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Chartboost unused = Chartboost.c = new Chartboost(activity, appId, appSignature);
                            }
                        });
                    }
                }
            }
        }
    }

    public static void onCreate(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.12
                @Override // java.lang.Runnable
                public void run() {
                    Chartboost.e(activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Activity activity) {
        if (b != null && !b.b(activity) && q()) {
            f(b);
            c(b, false);
        }
        a.removeCallbacks(o);
        b = k.a(activity);
        if (!getImpressionsUseActivities()) {
            c(activity);
        }
        ba.d();
    }

    public static void onStart(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.23
                @Override // java.lang.Runnable
                public void run() {
                    Chartboost.a.removeCallbacks(Chartboost.o);
                    if (Chartboost.b != null && !Chartboost.b.b(activity) && Chartboost.q()) {
                        Chartboost.f(Chartboost.b);
                        Chartboost.c(Chartboost.b, false);
                    }
                    Chartboost.b(activity, true);
                    Chartboost.b = k.a(activity);
                    Chartboost.a();
                    Chartboost.a(activity);
                    Chartboost.f.b(b.y());
                    if (!b.h()) {
                        Chartboost.h.a();
                    }
                    Chartboost.g.f();
                }
            });
        }
    }

    protected static void a(Activity activity) {
        b.a(activity.getApplicationContext());
        if (!(activity instanceof CBImpressionActivity)) {
            b = k.a(activity);
            c(b, true);
        } else {
            a((CBImpressionActivity) activity);
        }
        a.removeCallbacks(o);
        boolean z = b.a() != null && b.a().doesWrapperUseCustomBackgroundingBehavior();
        if (activity != null) {
            if (z || f(activity)) {
                b(k.a(activity), true);
                if (activity instanceof CBImpressionActivity) {
                    n = false;
                }
                if (m.a(activity, e)) {
                    e = null;
                }
                com.chartboost.sdk.Model.a aVarC = m.c();
                if (aVarC != null) {
                    aVarC.y();
                }
            }
        }
    }

    protected static void a() {
        if (b.y() == null) {
            CBLogging.b("Chartboost", "The context must be set through the Chartboost method onCreate() before calling startSession().");
            return;
        }
        if (b.h() && b.p()) {
            if (!p) {
                q = false;
                p();
                return;
            } else {
                q = true;
                return;
            }
        }
        p();
    }

    protected static void b() {
        if (b.h()) {
            a.postDelayed(r, 500L);
        } else {
            c();
        }
    }

    private static void p() {
        p = true;
        b.c(true);
        i.h();
        com.chartboost.sdk.Tracking.a.b();
        b.a(new b.a() { // from class: com.chartboost.sdk.Chartboost.31
            @Override // com.chartboost.sdk.b.a
            public void a() {
                bd.b();
                az azVar = new az("api/install");
                azVar.b(Chartboost.getValidContext());
                azVar.a(true);
                azVar.a(g.a("status", com.chartboost.sdk.Libraries.a.a));
                azVar.a(new az.d() { // from class: com.chartboost.sdk.Chartboost.31.1
                    @Override // com.chartboost.sdk.impl.az.c
                    public void a(com.chartboost.sdk.Libraries.e.a aVar, az azVar2) {
                        if (CBUtility.a(b.y())) {
                            String strE = aVar.e("latest-sdk-version");
                            if (TextUtils.isEmpty(strE) || strE.equals("5.5.3")) {
                                return;
                            }
                            CBLogging.a(String.format(Locale.US, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios", "5.5.3", strE));
                        }
                    }
                });
            }
        });
    }

    protected static void c() {
        p = false;
        if (i == null) {
            i = com.chartboost.sdk.Tracking.a.a();
        }
        i.c();
    }

    public static void onResume(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.32
                @Override // java.lang.Runnable
                public void run() {
                    k kVarA = k.a(activity);
                    if (Chartboost.d(kVarA)) {
                        Chartboost.a(kVarA);
                    } else if (b.a() != null && b.a().ordinal() == CBFramework.CBFrameworkUnity.ordinal()) {
                        Chartboost.a();
                    }
                }
            });
        }
    }

    protected static void a(k kVar) {
        com.chartboost.sdk.Model.a aVarC = c.a().c();
        if (b.a() != null && b.a().ordinal() == CBFramework.CBFrameworkUnity.ordinal()) {
            a();
        }
        if (aVarC != null) {
            aVarC.x();
        }
    }

    public static void onPause(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.33
                @Override // java.lang.Runnable
                public void run() {
                    k kVarA = k.a(activity);
                    if (Chartboost.d(kVarA)) {
                        Chartboost.b(kVarA);
                    }
                }
            });
        }
    }

    protected static void b(k kVar) {
        com.chartboost.sdk.Model.a aVarC = c.a().c();
        if (aVarC != null) {
            aVarC.z();
        }
    }

    public static void onStop(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.34
                @Override // java.lang.Runnable
                public void run() {
                    k kVarA = k.a(activity);
                    if (Chartboost.d(kVarA)) {
                        Chartboost.f(kVarA);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(k kVar) {
        if (!b.h()) {
            c(kVar);
        }
        if (!(kVar.get() instanceof CBImpressionActivity)) {
            c(kVar, false);
        }
        f.c(b.y());
        if (!b.h()) {
            h.b();
        }
        g.g();
        b();
    }

    protected static void c(k kVar) {
        e eVarH = h();
        if (g(kVar) && eVarH != null) {
            com.chartboost.sdk.Model.a aVarC = c.a().c();
            if (aVarC != null) {
                eVarH.c(aVarC);
                e = aVarC;
            }
            b(kVar, false);
            if (kVar.get() instanceof CBImpressionActivity) {
                g();
            }
        }
        if (!(kVar.get() instanceof CBImpressionActivity)) {
            c(kVar, false);
        }
    }

    public static boolean onBackPressed() {
        if (!b.t()) {
            return false;
        }
        if (b == null) {
            CBLogging.b("Chartboost", "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
            return false;
        }
        if (b.h()) {
            if (!n) {
                return false;
            }
            n = false;
            d();
            return true;
        }
        return d();
    }

    protected static boolean d() {
        return e();
    }

    protected static boolean e() {
        final c cVarA = c.a();
        com.chartboost.sdk.Model.a aVarC = cVarA.c();
        if (aVarC != null && aVarC.b == com.chartboost.sdk.Model.a.b.DISPLAYED) {
            if (aVarC.w()) {
                return true;
            }
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.35
                @Override // java.lang.Runnable
                public void run() {
                    cVarA.b();
                }
            });
            return true;
        }
        final e eVarH = h();
        if (eVarH != null && eVarH.b()) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.2
                @Override // java.lang.Runnable
                public void run() {
                    eVarH.a(cVarA.c(), true);
                }
            });
            return true;
        }
        return false;
    }

    public static void onDestroy(final Activity activity) {
        if (b.t() && b.a(activity)) {
            a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Chartboost.b == null || Chartboost.b.b(activity)) {
                        Runnable unused = Chartboost.o = new a();
                        Chartboost.o.run();
                    }
                    Chartboost.b(activity);
                }
            });
        }
    }

    protected static void b(Activity activity) {
        b(k.a(activity), false);
        e = null;
    }

    public static void didPassAgeGate(boolean pass) {
        b.d(pass);
    }

    public static void setShouldPauseClickForConfirmation(boolean shouldPause) {
        b.e(shouldPause);
    }

    public static void clearCache() {
        if (b.q()) {
            bc.a().b();
            af.h().a();
            ae.f().a();
            av.f().a();
            com.chartboost.sdk.InPlay.a.b();
        }
    }

    public static boolean hasRewardedVideo(String location) {
        if (b.q()) {
            return af.h().c(location);
        }
        return false;
    }

    public static void cacheRewardedVideo(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.4
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "cacheRewardedVideo location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadRewardedVideo(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    af.h().b(location);
                }
            }
        });
    }

    public static void showRewardedVideo(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.5
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "showRewardedVideo location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadRewardedVideo(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    af.h().a(location);
                }
            }
        });
    }

    public static boolean hasInterstitial(String location) {
        if (b.q()) {
            return ae.f().c(location);
        }
        return false;
    }

    public static void cacheInterstitial(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.6
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "cacheInterstitial location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadInterstitial(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    ae.f().b(location);
                }
            }
        });
    }

    public static void showInterstitial(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.7
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "showInterstitial location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadInterstitial(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    ae.f().a(location);
                }
            }
        });
    }

    public static void closeImpression() {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.8
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    Chartboost.e();
                }
            }
        });
    }

    public static boolean hasMoreApps(String location) {
        if (b.q()) {
            return av.f().c(location);
        }
        return false;
    }

    public static void cacheMoreApps(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.9
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "cacheMoreApps location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadMoreApps(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    av.f().b(location);
                }
            }
        });
    }

    public static void showMoreApps(final String location) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.10
            @Override // java.lang.Runnable
            public void run() {
                if (b.q()) {
                    if (TextUtils.isEmpty(location)) {
                        CBLogging.b("Chartboost", "showMoreApps location cannot be empty");
                        if (b.g() != null) {
                            b.g().didFailToLoadMoreApps(location, CBError.CBImpressionError.INVALID_LOCATION);
                            return;
                        }
                        return;
                    }
                    av.f().a(location);
                }
            }
        });
    }

    public static boolean isAnyViewVisible() {
        e eVarH = h();
        if (eVarH == null) {
            return false;
        }
        return eVarH.c();
    }

    public static void setMediation(final String libraryName, final String libraryVersion) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.11
            @Override // java.lang.Runnable
            public void run() {
                b.a(libraryName, libraryVersion);
            }
        });
    }

    public static void setFramework(final CBFramework framework) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.13
            @Override // java.lang.Runnable
            public void run() {
                b.a(framework);
            }
        });
    }

    public static void setFramework(final CBFramework framework, final String version) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.14
            @Override // java.lang.Runnable
            public void run() {
                b.a(framework, version);
            }
        });
    }

    public static void setFrameworkVersion(final String version) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.15
            @Override // java.lang.Runnable
            public void run() {
                b.a(version);
            }
        });
    }

    public static String getCustomId() {
        return b.o();
    }

    public static void setCustomId(final String customID) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.16
            @Override // java.lang.Runnable
            public void run() {
                b.d(customID);
            }
        });
    }

    public static void setLoggingLevel(final CBLogging.Level lvl) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.17
            @Override // java.lang.Runnable
            public void run() {
                b.a(lvl);
            }
        });
    }

    public static CBLogging.Level getLoggingLevel() {
        return b.n();
    }

    public static com.chartboost.sdk.a getDelegate() {
        return b.g();
    }

    public static void setDelegate(final ChartboostDelegate delegate) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.18
            @Override // java.lang.Runnable
            public void run() {
                b.a(delegate);
            }
        });
    }

    public static boolean getAutoCacheAds() {
        return b.j();
    }

    public static void setAutoCacheAds(final boolean autoCacheAds) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.19
            @Override // java.lang.Runnable
            public void run() {
                b.b(autoCacheAds);
            }
        });
    }

    public static void setShouldRequestInterstitialsInFirstSession(final boolean shouldRequest) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.20
            @Override // java.lang.Runnable
            public void run() {
                b.f(shouldRequest);
            }
        });
    }

    public static void setShouldDisplayLoadingViewForMoreApps(final boolean shouldDisplay) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.21
            @Override // java.lang.Runnable
            public void run() {
                b.g(shouldDisplay);
            }
        });
    }

    public static void setShouldPrefetchVideoContent(final boolean shouldPrefetch) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.22
            @Override // java.lang.Runnable
            public void run() {
                b.h(shouldPrefetch);
                if (shouldPrefetch) {
                    bd.b();
                } else {
                    bd.d();
                }
            }
        });
    }

    protected static Activity f() {
        return b.h() ? d : getHostActivity();
    }

    private static boolean f(Activity activity) {
        if (b.h()) {
            return d == activity;
        }
        if (b == null) {
            return activity == null;
        }
        return b.b(activity);
    }

    private static boolean g(k kVar) {
        if (b.h()) {
            if (kVar == null) {
                return d == null;
            }
            return kVar.b(d);
        }
        if (b == null) {
            return kVar == null;
        }
        return b.a(kVar);
    }

    protected static void a(CBImpressionActivity cBImpressionActivity) {
        if (!j) {
            b.a(cBImpressionActivity.getApplicationContext());
            d = cBImpressionActivity;
            j = true;
        }
        a.removeCallbacks(o);
    }

    protected static void g() {
        if (j) {
            d = null;
            j = false;
        }
    }

    protected static void a(com.chartboost.sdk.Model.a aVar) {
        e eVarH = h();
        if (eVarH != null && eVarH.c() && eVarH.d().h() != aVar) {
            aVar.a(CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return;
        }
        if (b.h()) {
            if (j) {
                if (f() != null && eVarH != null) {
                    eVarH.a(aVar);
                    return;
                }
                if (f() == null) {
                    CBLogging.b("Chartboost", "Activity not found to display the view");
                    aVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
                } else {
                    CBLogging.b("Chartboost", "Missing view controller to manage the open impression activity");
                }
                aVar.a(CBError.CBImpressionError.ERROR_DISPLAYING_VIEW);
                return;
            }
            if (!q()) {
                aVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
                return;
            }
            Activity hostActivity = getHostActivity();
            if (hostActivity == null) {
                CBLogging.b("Chartboost", "Failed to display impression as the host activity reference has been lost!");
                aVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
                return;
            }
            if (e != null && e != aVar) {
                aVar.a(CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
                return;
            }
            e = aVar;
            Intent intent = new Intent(hostActivity, (Class<?>) CBImpressionActivity.class);
            intent.putExtra("paramFullscreen", ((hostActivity.getWindow().getAttributes().flags & 1024) != 0) && !((hostActivity.getWindow().getAttributes().flags & 2048) != 0));
            try {
                hostActivity.startActivity(intent);
                n = true;
                return;
            } catch (ActivityNotFoundException e2) {
                CBLogging.b("Chartboost", "Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
                return;
            }
        }
        e eVarH2 = h();
        if (eVarH2 != null && q()) {
            eVarH2.a(aVar);
        } else {
            aVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
        }
    }

    protected static Activity getHostActivity() {
        if (b != null) {
            return (Activity) b.get();
        }
        return null;
    }

    protected static void a(Runnable runnable) {
        if (!CBUtility.b()) {
            a.post(runnable);
        } else {
            runnable.run();
        }
    }

    protected static Context getValidContext() {
        return b != null ? b.b() : b.y();
    }

    private static void b(k kVar, boolean z) {
    }

    private static class a implements Runnable {
        private int a;
        private int b;
        private int c;

        private com.chartboost.sdk.a a() {
            return b.g();
        }

        private a() {
            com.chartboost.sdk.a aVarA = a();
            this.a = Chartboost.d == null ? -1 : Chartboost.d.hashCode();
            this.b = Chartboost.b == null ? -1 : Chartboost.b.hashCode();
            this.c = aVarA != null ? aVarA.hashCode() : -1;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.chartboost.sdk.a aVarA = a();
            if (b.y() != null) {
                Chartboost.clearCache();
            }
            if (Chartboost.b != null && Chartboost.b.hashCode() == this.b) {
                Chartboost.b = null;
            }
            if (Chartboost.d != null && Chartboost.d.hashCode() == this.a) {
                CBImpressionActivity unused = Chartboost.d = null;
            }
            if (aVarA != null && aVarA.hashCode() == this.c) {
                b.a((com.chartboost.sdk.a) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean q() {
        return d(b);
    }

    protected static boolean d(k kVar) {
        Boolean boolValueOf;
        if (kVar == null || (boolValueOf = Boolean.valueOf(k.get(kVar.a()))) == null) {
            return false;
        }
        return boolValueOf.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Activity activity, boolean z) {
        if (activity != null) {
            a(activity.hashCode(), z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(k kVar, boolean z) {
        if (kVar != null) {
            a(kVar.a(), z);
        }
    }

    private static void a(int i2, boolean z) {
        k.put(i2, z);
    }

    protected static e h() {
        if (f() == null) {
            return null;
        }
        return l;
    }

    public static boolean getImpressionsUseActivities() {
        return b.h();
    }

    public static void setImpressionsUseActivities(final boolean impressionsUseActivities) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.24
            @Override // java.lang.Runnable
            public void run() {
                b.a(impressionsUseActivities);
            }
        });
    }

    protected static void c(final Activity activity) {
        if (!bg.a(activity)) {
            a.post(new Runnable() { // from class: com.chartboost.sdk.Chartboost.25
                @Override // java.lang.Runnable
                public void run() {
                    CBLogging.e("VideoInit", "preparing activity for video surface");
                    activity.addContentView(new SurfaceView(activity), new ViewGroup.LayoutParams(0, 0));
                }
            });
        }
    }

    private static void showInterstitialAIR(final String location, final boolean show) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.26
            @Override // java.lang.Runnable
            public void run() {
                ae.f().b(location, show);
            }
        });
    }

    private static void showMoreAppsAIR(final String location, final boolean show) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.27
            @Override // java.lang.Runnable
            public void run() {
                av.f().b(location, show);
            }
        });
    }

    private static void showRewardedVideoAIR(final String location, final boolean show) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.28
            @Override // java.lang.Runnable
            public void run() {
                af.h().b(location, show);
            }
        });
    }

    private static void forwardTouchEventsAIR(final boolean forward) {
        a(new Runnable() { // from class: com.chartboost.sdk.Chartboost.29
            @Override // java.lang.Runnable
            public void run() {
                if (Chartboost.d != null) {
                    if (forward) {
                        Chartboost.d.forwardTouchEvents(Chartboost.getHostActivity());
                    } else {
                        Chartboost.d.forwardTouchEvents(null);
                    }
                }
            }
        });
    }
}
