package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class SafeBundleAdConfigFactory {

    @Inject
    AdConfig a;

    public c get() {
        return new c(this.a.a);
    }

    public c merge(AdConfig... adConfigs) {
        int i;
        int i2 = 0;
        b[] bVarArr = null;
        if (adConfigs != null) {
            b[] bVarArr2 = new b[adConfigs.length];
            int length = adConfigs.length;
            int i3 = 0;
            while (i3 < length) {
                AdConfig adConfig = adConfigs[i3];
                if (adConfig != null) {
                    i = i2 + 1;
                    bVarArr2[i2] = adConfig.a;
                } else {
                    i = i2;
                }
                i3++;
                i2 = i;
            }
            bVarArr = bVarArr2;
        }
        return new c(bVarArr);
    }
}
