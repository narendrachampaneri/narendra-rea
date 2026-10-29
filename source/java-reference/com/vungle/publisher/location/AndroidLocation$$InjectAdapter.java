package com.vungle.publisher.location;

import com.vungle.publisher.cj;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidLocation$$InjectAdapter extends Binding<AndroidLocation> implements MembersInjector<AndroidLocation>, Provider<AndroidLocation> {
    private Binding<cj> a;

    public AndroidLocation$$InjectAdapter() {
        super("com.vungle.publisher.location.AndroidLocation", "members/com.vungle.publisher.location.AndroidLocation", true, AndroidLocation.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.cj", AndroidLocation.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AndroidLocation get() {
        AndroidLocation androidLocation = new AndroidLocation();
        injectMembers(androidLocation);
        return androidLocation;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AndroidLocation object) {
        object.a = this.a.get();
    }
}
