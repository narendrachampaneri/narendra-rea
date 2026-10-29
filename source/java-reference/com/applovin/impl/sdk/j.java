package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class j extends bv {
    final /* synthetic */ AppLovinAdServiceImpl a;
    private final AppLovinAdSize b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(AppLovinAdServiceImpl appLovinAdServiceImpl, AppLovinAdSize appLovinAdSize) {
        super("UpdateAdTask", appLovinAdServiceImpl.a);
        this.a = appLovinAdServiceImpl;
        this.b = appLovinAdSize;
    }

    @Override // java.lang.Runnable
    public void run() {
        i iVar = (i) ((Map) this.a.d.get(AppLovinAdType.REGULAR)).get(this.b);
        synchronized (iVar.b) {
            boolean zA = this.a.a(this.b);
            boolean zA2 = this.a.a();
            boolean z = !iVar.f.isEmpty();
            boolean z2 = System.currentTimeMillis() > iVar.d;
            if (zA && z && z2 && zA2 && !iVar.e) {
                iVar.e = true;
                this.a.a(this.b, AppLovinAdType.REGULAR, new h(this.a, iVar, null));
            }
        }
    }
}
