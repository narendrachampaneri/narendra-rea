package com.vungle.publisher.ad;

import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdManager$AdAvailabilityEventListener$$InjectAdapter extends Binding<AdManager.AdAvailabilityEventListener> implements MembersInjector<AdManager.AdAvailabilityEventListener>, Provider<AdManager.AdAvailabilityEventListener> {
    private Binding<AdManager> a;
    private Binding<by> b;

    public AdManager$AdAvailabilityEventListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager$AdAvailabilityEventListener", "members/com.vungle.publisher.ad.AdManager$AdAvailabilityEventListener", true, AdManager.AdAvailabilityEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.AdManager", AdManager.AdAvailabilityEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", AdManager.AdAvailabilityEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdManager.AdAvailabilityEventListener get() {
        AdManager.AdAvailabilityEventListener adAvailabilityEventListener = new AdManager.AdAvailabilityEventListener();
        injectMembers(adAvailabilityEventListener);
        return adAvailabilityEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdManager.AdAvailabilityEventListener object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
