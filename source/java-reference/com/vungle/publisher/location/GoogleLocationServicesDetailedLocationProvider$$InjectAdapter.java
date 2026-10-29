package com.vungle.publisher.location;

import android.content.Context;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleLocationServicesDetailedLocationProvider$$InjectAdapter extends Binding<GoogleLocationServicesDetailedLocationProvider> implements MembersInjector<GoogleLocationServicesDetailedLocationProvider>, Provider<GoogleLocationServicesDetailedLocationProvider> {
    private Binding<Context> a;
    private Binding<BaseGoogleDetailedLocationProvider> b;

    public GoogleLocationServicesDetailedLocationProvider$$InjectAdapter() {
        super("com.vungle.publisher.location.GoogleLocationServicesDetailedLocationProvider", "members/com.vungle.publisher.location.GoogleLocationServicesDetailedLocationProvider", true, GoogleLocationServicesDetailedLocationProvider.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", GoogleLocationServicesDetailedLocationProvider.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.location.BaseGoogleDetailedLocationProvider", GoogleLocationServicesDetailedLocationProvider.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final GoogleLocationServicesDetailedLocationProvider get() {
        GoogleLocationServicesDetailedLocationProvider googleLocationServicesDetailedLocationProvider = new GoogleLocationServicesDetailedLocationProvider();
        injectMembers(googleLocationServicesDetailedLocationProvider);
        return googleLocationServicesDetailedLocationProvider;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(GoogleLocationServicesDetailedLocationProvider object) {
        object.b = this.a.get();
        this.b.injectMembers(object);
    }
}
