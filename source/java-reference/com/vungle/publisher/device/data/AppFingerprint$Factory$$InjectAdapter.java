package com.vungle.publisher.device.data;

import android.content.Context;
import com.vungle.publisher.bt;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprint$Factory$$InjectAdapter extends Binding<AppFingerprint.Factory> implements MembersInjector<AppFingerprint.Factory>, Provider<AppFingerprint.Factory> {
    private Binding<bt> a;
    private Binding<Context> b;
    private Binding<Provider<AppFingerprint>> c;

    public AppFingerprint$Factory$$InjectAdapter() {
        super("com.vungle.publisher.device.data.AppFingerprint$Factory", "members/com.vungle.publisher.device.data.AppFingerprint$Factory", true, AppFingerprint.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", AppFingerprint.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("android.content.Context", AppFingerprint.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.device.data.AppFingerprint>", AppFingerprint.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprint.Factory get() {
        AppFingerprint.Factory factory = new AppFingerprint.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprint.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
    }
}
