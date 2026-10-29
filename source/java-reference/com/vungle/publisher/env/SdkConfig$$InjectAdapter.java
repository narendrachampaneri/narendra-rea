package com.vungle.publisher.env;

import android.content.Context;
import android.content.SharedPreferences;
import com.vungle.publisher.event.ClientEventListenerAdapter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SdkConfig$$InjectAdapter extends Binding<SdkConfig> implements MembersInjector<SdkConfig>, Provider<SdkConfig> {
    private Binding<ClientEventListenerAdapter.Factory> a;
    private Binding<Context> b;
    private Binding<SharedPreferences> c;

    public SdkConfig$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkConfig", "members/com.vungle.publisher.env.SdkConfig", true, SdkConfig.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.ClientEventListenerAdapter$Factory", SdkConfig.class, getClass().getClassLoader());
        this.b = linker.requestBinding("android.content.Context", SdkConfig.class, getClass().getClassLoader());
        this.c = linker.requestBinding("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", SdkConfig.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SdkConfig get() {
        SdkConfig sdkConfig = new SdkConfig();
        injectMembers(sdkConfig);
        return sdkConfig;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SdkConfig object) {
        object.h = this.a.get();
        object.i = this.b.get();
        object.j = this.c.get();
    }
}
