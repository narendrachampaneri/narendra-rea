package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import com.applovin.sdk.AppLovinSdk;

/* JADX INFO: loaded from: classes.dex */
public abstract class u extends View {
    protected final AppLovinSdk a;
    protected final Context b;

    u(AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.b = context;
        this.a = appLovinSdk;
    }

    public static u a(AppLovinSdk appLovinSdk, Context context, v vVar) {
        return vVar.equals(v.WhiteXOnTransparentGrey) ? new al(appLovinSdk, context) : new am(appLovinSdk, context);
    }

    public abstract void a(int i);
}
