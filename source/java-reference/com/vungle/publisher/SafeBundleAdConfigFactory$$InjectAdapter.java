package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SafeBundleAdConfigFactory$$InjectAdapter extends Binding<SafeBundleAdConfigFactory> implements MembersInjector<SafeBundleAdConfigFactory>, Provider<SafeBundleAdConfigFactory> {
    private Binding<AdConfig> a;

    public SafeBundleAdConfigFactory$$InjectAdapter() {
        super("com.vungle.publisher.SafeBundleAdConfigFactory", "members/com.vungle.publisher.SafeBundleAdConfigFactory", true, SafeBundleAdConfigFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.AdConfig", SafeBundleAdConfigFactory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SafeBundleAdConfigFactory get() {
        SafeBundleAdConfigFactory safeBundleAdConfigFactory = new SafeBundleAdConfigFactory();
        injectMembers(safeBundleAdConfigFactory);
        return safeBundleAdConfigFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SafeBundleAdConfigFactory object) {
        object.a = this.a.get();
    }
}
