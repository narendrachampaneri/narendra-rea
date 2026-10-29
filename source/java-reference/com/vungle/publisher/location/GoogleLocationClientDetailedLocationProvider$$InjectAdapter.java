package com.vungle.publisher.location;

import android.content.Context;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleLocationClientDetailedLocationProvider$$InjectAdapter extends Binding<GoogleLocationClientDetailedLocationProvider> implements MembersInjector<GoogleLocationClientDetailedLocationProvider>, Provider<GoogleLocationClientDetailedLocationProvider> {
    private Binding<Context> a;
    private Binding<BaseGoogleDetailedLocationProvider> b;

    public GoogleLocationClientDetailedLocationProvider$$InjectAdapter() {
        super("com.vungle.publisher.location.GoogleLocationClientDetailedLocationProvider", "members/com.vungle.publisher.location.GoogleLocationClientDetailedLocationProvider", true, GoogleLocationClientDetailedLocationProvider.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", GoogleLocationClientDetailedLocationProvider.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.location.BaseGoogleDetailedLocationProvider", GoogleLocationClientDetailedLocationProvider.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final GoogleLocationClientDetailedLocationProvider get() {
        GoogleLocationClientDetailedLocationProvider googleLocationClientDetailedLocationProvider = new GoogleLocationClientDetailedLocationProvider();
        injectMembers(googleLocationClientDetailedLocationProvider);
        return googleLocationClientDetailedLocationProvider;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(GoogleLocationClientDetailedLocationProvider object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
