package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ck extends bv {
    private final String a;
    private final Map b;
    private final AppLovinPostbackListener c;
    private int d;
    private int i;
    private int j;

    public ck(AppLovinSdkImpl appLovinSdkImpl, String str, Map map, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", appLovinSdkImpl);
        this.j = -1;
        this.a = str;
        this.c = appLovinPostbackListener;
        this.b = map;
    }

    public void a(int i) {
        this.d = i;
    }

    public void b(int i) {
        this.i = i;
    }

    public void c(int i) {
        this.j = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!AppLovinSdkUtils.isValidString(this.a)) {
            this.f.getLogger().i("TaskDispatchPostback", "Requested URL is not valid; nothing to do...");
            this.c.onPostbackFailure(this.a, AppLovinErrorCodes.INVALID_URL);
        } else {
            cl clVar = new cl(this, "RepeatTaskDispatchPostback", this.d < 0 ? ((Integer) this.f.a(bw.aG)).intValue() : this.d, this.f);
            clVar.a(this.i);
            clVar.run();
        }
    }
}
