package com.vungle.publisher.env;

import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SdkState$AdThrottleEndRunnable$$InjectAdapter extends Binding<SdkState.AdThrottleEndRunnable> implements MembersInjector<SdkState.AdThrottleEndRunnable>, Provider<SdkState.AdThrottleEndRunnable> {
    private Binding<EventBus> a;

    public SdkState$AdThrottleEndRunnable$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState$AdThrottleEndRunnable", "members/com.vungle.publisher.env.SdkState$AdThrottleEndRunnable", true, SdkState.AdThrottleEndRunnable.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", SdkState.AdThrottleEndRunnable.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SdkState.AdThrottleEndRunnable get() {
        SdkState.AdThrottleEndRunnable adThrottleEndRunnable = new SdkState.AdThrottleEndRunnable();
        injectMembers(adThrottleEndRunnable);
        return adThrottleEndRunnable;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SdkState.AdThrottleEndRunnable object) {
        object.a = this.a.get();
    }
}
