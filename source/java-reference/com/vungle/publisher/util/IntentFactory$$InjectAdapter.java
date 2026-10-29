package com.vungle.publisher.util;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class IntentFactory$$InjectAdapter extends Binding<IntentFactory> implements Provider<IntentFactory> {
    public IntentFactory$$InjectAdapter() {
        super("com.vungle.publisher.util.IntentFactory", "members/com.vungle.publisher.util.IntentFactory", true, IntentFactory.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final IntentFactory get() {
        return new IntentFactory();
    }
}
