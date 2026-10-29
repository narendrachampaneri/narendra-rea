package com.vungle.publisher.ad.prepare;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrepareAdRunnable$RetryMap$$InjectAdapter extends Binding<PrepareAdRunnable.RetryMap> implements Provider<PrepareAdRunnable.RetryMap> {
    public PrepareAdRunnable$RetryMap$$InjectAdapter() {
        super("com.vungle.publisher.ad.prepare.PrepareAdRunnable$RetryMap", "members/com.vungle.publisher.ad.prepare.PrepareAdRunnable$RetryMap", true, PrepareAdRunnable.RetryMap.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PrepareAdRunnable.RetryMap get() {
        return new PrepareAdRunnable.RetryMap();
    }
}
