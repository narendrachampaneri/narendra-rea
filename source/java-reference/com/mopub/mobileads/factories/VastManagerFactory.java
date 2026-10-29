package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.VastManager;

/* JADX INFO: loaded from: classes.dex */
public class VastManagerFactory {
    protected static VastManagerFactory instance = new VastManagerFactory();

    public static VastManager create(Context context) {
        return instance.internalCreate(context);
    }

    public VastManager internalCreate(Context context) {
        return new VastManager(context);
    }

    @Deprecated
    public static void setInstance(VastManagerFactory factory) {
        instance = factory;
    }
}
