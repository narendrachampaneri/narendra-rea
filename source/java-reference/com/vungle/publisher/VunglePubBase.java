package com.vungle.publisher;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.drive.DriveFile;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.az;
import com.vungle.publisher.bd;
import com.vungle.publisher.bh;
import com.vungle.publisher.c;
import com.vungle.publisher.db.DatabaseHelper;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.StreamingAd;
import com.vungle.publisher.env.SdkConfig;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.file.CacheManager;
import com.vungle.publisher.inject.Injector;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class VunglePubBase {
    public static final String VERSION = "VungleDroid/3.3.3";

    @Inject
    AdManager a;

    @Inject
    InitializationEventListener b;

    @Inject
    CacheManager c;

    @Inject
    DatabaseHelper d;

    @Inject
    Demographic e;

    @Inject
    protected bt f;

    @Inject
    EventBus g;

    @Inject
    AdConfig h;

    @Inject
    SafeBundleAdConfigFactory i;

    @Inject
    SdkConfig j;

    @Inject
    SdkState k;

    @Inject
    Context l;
    private boolean m;
    private boolean n;

    protected VunglePubBase() {
    }

    public boolean init(Context context, String vungleAppId) {
        boolean z = this.n;
        try {
            if (z) {
                Logger.d(Logger.VUNGLE_TAG, "already initialized");
                return z;
            }
            int i = Build.VERSION.SDK_INT;
            boolean z2 = i >= 9;
            if (z2) {
                Logger.d(Logger.DEVICE_TAG, "Device Android API level " + i);
            } else {
                Logger.w(Logger.DEVICE_TAG, "Device Android API level " + i + " does not meet required minimum 9");
            }
            if (z2) {
                if (this.m) {
                    Logger.d(Logger.VUNGLE_TAG, "already injected");
                } else {
                    Injector injector = Injector.getInstance();
                    injector.a(context, vungleAppId);
                    injector.a.inject(this);
                    Logger.d(Logger.VUNGLE_TAG, "injection successful");
                    this.m = true;
                }
                if (a()) {
                    Logger.i(Logger.VUNGLE_TAG, "VungleDroid/3.3.3 init(" + vungleAppId + ")");
                    CacheManager cacheManager = this.c;
                    Logger.d(Logger.FILE_TAG, "deleting old ad temp directory");
                    CacheManager.a(cacheManager.b.get());
                    this.b.register();
                    DatabaseHelper databaseHelper = this.d;
                    databaseHelper.d.a(new Runnable() { // from class: com.vungle.publisher.db.DatabaseHelper.1
                        public AnonymousClass1() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            Logger.d(Logger.DATABASE_TAG, "initializing database vungle");
                            DatabaseHelper.this.getWritableDatabase();
                            Logger.d(Logger.DATABASE_TAG, "done initializing database vungle");
                            DatabaseHelper.this.b.a(new bh());
                        }
                    }, ScheduledPriorityExecutor.b.databaseWrite);
                    this.f.r();
                    Logger.v(Logger.VUNGLE_TAG, "initialization successful");
                    this.n = true;
                    return true;
                }
                Logger.w(Logger.VUNGLE_TAG, "initialization failed");
            }
            return z;
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "VunglePub initialization failed", e);
            return z;
        }
    }

    protected boolean a() {
        return dd.b(this.l, this.f).length == 0;
    }

    public String[] getMissingPermissions() {
        try {
            if (!c()) {
                return null;
            }
            return dd.b(this.l, this.f);
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error getting missing permissions", e);
            return null;
        }
    }

    private boolean a(boolean z, String str) {
        boolean z2 = this.n;
        if (z2) {
            Logger.v(Logger.VUNGLE_TAG, "VunglePub was initialized");
        } else if (z) {
            Logger.w(Logger.VUNGLE_TAG, "Please call VunglePub.init() before " + str);
        }
        return z2;
    }

    private boolean c() {
        boolean z = this.m;
        if (!z) {
            Logger.d(Logger.VUNGLE_TAG, "VunglePub not injected");
        }
        return z;
    }

    public Demographic getDemographic() {
        try {
            c();
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error getting demographic info", e);
        }
        return this.e;
    }

    public void addEventListeners(EventListener... eventListeners) {
        try {
            if (c()) {
                this.j.a(eventListeners);
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error adding event listeners", e);
        }
    }

    public void setEventListeners(EventListener... eventListeners) {
        try {
            if (c()) {
                SdkConfig sdkConfig = this.j;
                sdkConfig.a();
                sdkConfig.a(eventListeners);
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error setting event listeners", e);
        }
    }

    public void clearEventListeners() {
        try {
            if (c()) {
                this.j.a();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error clearing event listeners", e);
        }
    }

    public void removeEventListeners(EventListener... eventListeners) {
        try {
            if (c()) {
                SdkConfig sdkConfig = this.j;
                if (eventListeners != null) {
                    for (EventListener eventListener : eventListeners) {
                        ca caVarRemove = sdkConfig.a.remove(eventListener);
                        if (caVarRemove != null) {
                            Logger.d(Logger.CONFIG_TAG, "removing event listener " + eventListener);
                            caVarRemove.unregister();
                        } else {
                            Logger.d(Logger.CONFIG_TAG, "event listener not found for remove " + eventListener);
                        }
                    }
                }
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error removing event listeners", e);
        }
    }

    public AdConfig getGlobalAdConfig() {
        try {
            c();
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error getting globalAdConfig", e);
        }
        return this.h;
    }

    public void onResume() {
        try {
            if (a(false, "onResume()")) {
                SdkState sdkState = this.k;
                Logger.d(Logger.AD_TAG, "onDeveloperActivityResume()");
                sdkState.a(true);
                sdkState.b(false);
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onResume()", e);
        }
    }

    public void onPause() {
        try {
            if (a(false, "onPause()")) {
                SdkState sdkState = this.k;
                Logger.d(Logger.AD_TAG, "onDeveloperActivityPause()");
                sdkState.f();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onPause()", e);
        }
    }

    public boolean isAdPlayable() {
        try {
            if (!a(true, "isAdPlayable()")) {
                return false;
            }
            return this.a.a();
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error returning ad playable", e);
            return false;
        }
    }

    public void playAd() {
        playAd(null);
    }

    public void playAd(AdConfig adConfig) {
        try {
            Logger.d(Logger.AD_TAG, "VunglePub.playAd()");
            if (b()) {
                final AdManager adManager = this.a;
                final c cVarMerge = this.i.merge(this.h, adConfig);
                adManager.f.a(new Runnable() { // from class: com.vungle.publisher.ad.AdManager.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ad ad = null;
                        boolean z = false;
                        Logger.d(Logger.AD_TAG, "AdManager.playAd()");
                        try {
                            try {
                                AdManager adManager2 = AdManager.this;
                                c cVar = cVarMerge;
                                Ad adA = adManager2.a(false);
                                StreamingAd streamingAdA = adManager2.a(adA == null ? null : adA.d(), cVar);
                                if (streamingAdA != null) {
                                    adA = streamingAdA;
                                }
                                Logger.i(Logger.AD_TAG, "next ad " + (adA == null ? null : adA.y()));
                                try {
                                    if (adA == null) {
                                        Logger.d(Logger.AD_TAG, "no ad to play");
                                        AdManager.this.d.a(new az());
                                    } else {
                                        AdManager.this.i.get().register();
                                        Intent intent = new Intent(AdManager.this.b, (Class<?>) AdManager.this.e);
                                        intent.addFlags(DriveFile.MODE_READ_WRITE);
                                        intent.putExtra(FullScreenAdActivity.AD_CONFIG_EXTRA_KEY, cVarMerge);
                                        intent.putExtra(FullScreenAdActivity.AD_ID_EXTRA_KEY, adA.d());
                                        AdManager.this.b.startActivity(intent);
                                        z = true;
                                    }
                                    if (!z) {
                                        AdManager.this.l.c();
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    ad = adA;
                                    AdManager.this.q.a(Logger.AD_TAG, "error launching ad", e);
                                    AdManager.this.d.a(new bd(ad, false));
                                    AdManager.this.l.c();
                                }
                            } catch (Throwable th) {
                                AdManager.this.l.c();
                                throw th;
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                }, ScheduledPriorityExecutor.b.otherTask);
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error playing ad", e);
            if (this.m) {
                this.g.a(new aw());
            }
        }
    }

    protected boolean b() {
        boolean z = true;
        if (a(true, "playAd()")) {
            SdkState sdkState = this.k;
            if (!sdkState.b()) {
                sdkState.d.a(new ay((int) ((SdkState.d() - sdkState.c()) / 1000), sdkState.e()));
                z = false;
            } else if (!sdkState.l.compareAndSet(false, true)) {
                Logger.d(Logger.AD_TAG, "ad already playing");
                sdkState.d.a(new au());
                z = false;
            }
            if (z) {
                sdkState.k.get().register();
            }
            return z;
        }
        if (!this.m) {
            return false;
        }
        this.g.a(new ax());
        return false;
    }
}
