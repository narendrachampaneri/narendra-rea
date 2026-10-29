package com.vungle.publisher.env;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebView;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.vungle.log.Logger;
import com.vungle.publisher.br;
import com.vungle.publisher.bt;
import com.vungle.publisher.bu;
import com.vungle.publisher.dc;
import com.vungle.publisher.dd;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.vungle.publisher.util.ViewUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AndroidDevice implements bt {
    static int a = 5000;
    boolean c;
    String d;
    String e;
    String f;

    @Inject
    AudioHelper g;

    @Inject
    WindowManager h;

    @Inject
    Context i;

    @Inject
    EventBus j;

    @Inject
    @EnvSharedPreferences
    SharedPreferences k;

    @Inject
    DeviceIdStrategy l;
    private final String m = Build.VERSION.RELEASE;
    final AtomicBoolean b = new AtomicBoolean();

    /* JADX INFO: compiled from: vungle */
    public static abstract class DeviceIdStrategy {
        protected abstract void c(AndroidDevice androidDevice);
    }

    @Override // com.vungle.publisher.bt
    public final String a() {
        t();
        return this.d;
    }

    final boolean b() {
        return !TextUtils.isEmpty(this.d);
    }

    @Override // com.vungle.publisher.bt
    public final String c() {
        t();
        String str = this.e;
        if (a(str) && b()) {
            Logger.w(Logger.DEVICE_TAG, "have advertising and Android ID");
            d();
            return null;
        }
        return str;
    }

    final void d() {
        Logger.i(Logger.DEVICE_TAG, "clearing Android ID");
        this.e = null;
    }

    static boolean a(String str) {
        return !TextUtils.isEmpty(str);
    }

    final void e() {
        if (!this.b.getAndSet(true)) {
            synchronized (this.b) {
                this.b.notifyAll();
            }
        }
    }

    private void t() {
        try {
            if (!this.b.get()) {
                long jCurrentTimeMillis = System.currentTimeMillis() + ((long) a);
                synchronized (this.b) {
                    Logger.d(Logger.DEVICE_TAG, "waiting for device ID");
                    while (!this.b.get() && System.currentTimeMillis() < jCurrentTimeMillis) {
                        try {
                            this.b.wait(a);
                        } catch (InterruptedException e) {
                            Logger.v(Logger.DEVICE_TAG, "interrupted while awaiting device ID");
                        }
                    }
                }
                if (this.b.get()) {
                    Logger.d(Logger.DEVICE_TAG, "obtained device ID");
                } else {
                    throw new bu("timeout after " + a + " ms");
                }
            }
            if (!f()) {
                Logger.w(Logger.DEVICE_TAG, "no device ID available");
            }
        } catch (Throwable th) {
            if (!f()) {
                Logger.w(Logger.DEVICE_TAG, "no device ID available");
            }
            throw th;
        }
    }

    final boolean f() {
        return b() || a(this.e) || l();
    }

    @Override // com.vungle.publisher.bt
    public final String g() {
        return this.m;
    }

    @Override // com.vungle.publisher.bt
    public final boolean a(br brVar) {
        return Build.VERSION.SDK_INT >= brVar.d;
    }

    @Override // com.vungle.publisher.bt
    public final DisplayMetrics h() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            this.h.getDefaultDisplay().getMetrics(displayMetrics);
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting display metrics", e);
        }
        return displayMetrics;
    }

    @Override // com.vungle.publisher.bt
    public final boolean i() {
        return this.c;
    }

    @Override // com.vungle.publisher.bt
    public final String j() {
        String str = this.f;
        if (l() && b()) {
            Logger.w(Logger.DEVICE_TAG, "have advertising and mac address");
            k();
            return null;
        }
        return str;
    }

    final void k() {
        Logger.i(Logger.DEVICE_TAG, "clearing MAC address");
        this.f = null;
    }

    final boolean l() {
        return !TextUtils.isEmpty(this.f);
    }

    @Override // com.vungle.publisher.bt
    public final String m() {
        String str = null;
        try {
            str = (Build.MANUFACTURER == null ? "" : Build.MANUFACTURER) + AppInfo.DELIM + (Build.MODEL == null ? "" : Build.MODEL);
            return str;
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting device model", e);
            return str;
        }
    }

    @Override // com.vungle.publisher.bt
    public final Float n() {
        try {
            return Float.valueOf(this.g.c());
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting volume info", e);
            return null;
        }
    }

    @Override // com.vungle.publisher.bt
    public final boolean o() {
        boolean zEquals = "mounted".equals(Environment.getExternalStorageState());
        boolean zA = dd.a(this.i, this);
        if (zA && zEquals) {
            Logger.v(Logger.DEVICE_TAG, "external storage writable");
        } else {
            Logger.w(Logger.DEVICE_TAG, "external storage not writable");
        }
        return zA && zEquals;
    }

    @Override // com.vungle.publisher.bt
    public final boolean p() {
        return b(Logger.DEVICE_TAG);
    }

    final boolean b(String str) {
        boolean z;
        NoClassDefFoundError e;
        IllegalStateException e2;
        try {
            int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.i);
            z = iIsGooglePlayServicesAvailable == 0;
            if (!z) {
                try {
                    Logger.i(str, "Google Play Services not available: " + GooglePlayServicesUtil.getErrorString(iIsGooglePlayServicesAvailable));
                } catch (IllegalStateException e3) {
                    e2 = e3;
                    Logger.w(Logger.CONFIG_TAG, dc.a(e2));
                } catch (NoClassDefFoundError e4) {
                    e = e4;
                    Logger.d(str, e.getClass().getSimpleName() + ": " + e.getMessage());
                    Logger.v(str, e);
                }
            }
        } catch (IllegalStateException e5) {
            z = false;
            e2 = e5;
        } catch (NoClassDefFoundError e6) {
            z = false;
            e = e6;
        }
        return z;
    }

    @Override // com.vungle.publisher.bt
    public final String q() {
        if (b(Logger.DEVICE_TAG)) {
            return Integer.toString(4030500);
        }
        return null;
    }

    @Override // com.vungle.publisher.bt
    public final void r() {
        this.l.c(this);
    }

    @Override // com.vungle.publisher.bt
    public final String s() {
        return this.k.getString("defaultUserAgent", null);
    }

    @Override // com.vungle.publisher.bt
    public final void a(WebView webView) {
        this.k.edit().putString("defaultUserAgent", ViewUtils.a(webView)).commit();
    }

    @Override // com.vungle.publisher.bt
    public final boolean a(Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }
}
