package com.vungle.publisher.ad.event;

import com.vungle.publisher.aq;
import com.vungle.publisher.device.AudioHelper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VolumeChangeEvent$Factory$$InjectAdapter extends Binding<aq.a> implements MembersInjector<aq.a>, Provider<aq.a> {
    private Binding<AudioHelper> a;

    public VolumeChangeEvent$Factory$$InjectAdapter() {
        super("com.vungle.publisher.aq$a", "members/com.vungle.publisher.ad.event.VolumeChangeEvent$Factory", false, aq.a.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.device.AudioHelper", aq.a.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final aq.a get() {
        aq.a aVar = new aq.a();
        injectMembers(aVar);
        return aVar;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(aq.a object) {
        object.a = this.a.get();
    }
}
