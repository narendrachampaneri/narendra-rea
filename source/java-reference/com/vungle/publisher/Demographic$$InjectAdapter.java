package com.vungle.publisher;

import dagger.internal.Binding;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class Demographic$$InjectAdapter extends Binding<Demographic> implements Provider<Demographic> {
    public Demographic$$InjectAdapter() {
        super("com.vungle.publisher.Demographic", "members/com.vungle.publisher.Demographic", true, Demographic.class);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final Demographic get() {
        return new Demographic();
    }
}
