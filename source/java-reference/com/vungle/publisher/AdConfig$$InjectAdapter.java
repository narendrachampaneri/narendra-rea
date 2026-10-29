package com.vungle.publisher;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdConfig$$InjectAdapter extends Binding<AdConfig> implements Provider<AdConfig> {
    public AdConfig$$InjectAdapter() {
        super("com.vungle.publisher.AdConfig", "members/com.vungle.publisher.AdConfig", true, AdConfig.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdConfig get() {
        return new AdConfig();
    }
}
