package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;

/* JADX INFO: loaded from: classes.dex */
public final class CBInPlay {
    private static final String a = CBInPlay.class.getSimpleName();
    private static a f = null;
    private String b;
    private Bitmap c;
    private String d;
    private e.a e;

    CBInPlay() {
    }

    public void show() {
        a.a().a(this);
    }

    public void click() {
        a.a().b(this);
    }

    public String getLocation() {
        return this.b;
    }

    protected void a(String str) {
        this.b = str;
    }

    public Bitmap getAppIcon() {
        return this.c;
    }

    protected void a(Bitmap bitmap) {
        this.c = bitmap;
    }

    public String getAppName() {
        return this.d;
    }

    protected void b(String str) {
        this.d = str;
    }

    protected e.a a() {
        return this.e;
    }

    protected void a(e.a aVar) {
        this.e = aVar;
    }

    public static void cacheInPlay(String location) {
        if (b.q()) {
            if (TextUtils.isEmpty(location)) {
                CBLogging.b(a, "Inplay location cannot be empty");
                if (b.g() != null) {
                    b.g().didFailToLoadInPlay(location, CBError.CBImpressionError.INVALID_LOCATION);
                    return;
                }
                return;
            }
            if (f == null) {
                f = a.a();
            }
            f.a(location);
        }
    }

    public static boolean hasInPlay(String location) {
        if (!b.q()) {
            return false;
        }
        if (TextUtils.isEmpty(location)) {
            CBLogging.b(a, "Inplay location cannot be empty");
            if (b.g() == null) {
                return false;
            }
            b.g().didFailToLoadInPlay(location, CBError.CBImpressionError.INVALID_LOCATION);
            return false;
        }
        if (f == null) {
            f = a.a();
        }
        return f.b(location);
    }

    public static CBInPlay getInPlay(String location) {
        if (!b.q()) {
            return null;
        }
        if (TextUtils.isEmpty(location)) {
            CBLogging.b(a, "Inplay location cannot be empty");
            if (b.g() == null) {
                return null;
            }
            b.g().didFailToLoadInPlay(location, CBError.CBImpressionError.INVALID_LOCATION);
            return null;
        }
        if (f == null) {
            f = a.a();
        }
        return f.c(location);
    }
}
