package com.chartboost.sdk.Libraries;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class k extends WeakReference<Activity> {
    private static k b;
    private int a;

    private k(Activity activity) {
        super(activity);
        this.a = activity.hashCode();
    }

    public static k a(Activity activity) {
        if (b == null || b.a != activity.hashCode()) {
            b = new k(activity);
        }
        return b;
    }

    public boolean b(Activity activity) {
        return activity != null && activity.hashCode() == this.a;
    }

    public boolean a(k kVar) {
        return kVar != null && kVar.a() == this.a;
    }

    public int a() {
        return this.a;
    }

    public int hashCode() {
        return a();
    }

    public Context b() {
        Context context = (Context) get();
        if (context == null) {
            return com.chartboost.sdk.b.y();
        }
        return context;
    }
}
