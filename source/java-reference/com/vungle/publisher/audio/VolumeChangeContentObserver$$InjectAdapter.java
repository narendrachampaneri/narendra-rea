package com.vungle.publisher.audio;

import android.content.Context;
import com.vungle.publisher.aq;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VolumeChangeContentObserver$$InjectAdapter extends Binding<VolumeChangeContentObserver> implements MembersInjector<VolumeChangeContentObserver>, Provider<VolumeChangeContentObserver> {
    private Binding<AudioHelper> a;
    private Binding<aq.a> b;
    private Binding<EventBus> c;
    private Binding<Context> d;

    public VolumeChangeContentObserver$$InjectAdapter() {
        super("com.vungle.publisher.audio.VolumeChangeContentObserver", "members/com.vungle.publisher.audio.VolumeChangeContentObserver", true, VolumeChangeContentObserver.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.device.AudioHelper", VolumeChangeContentObserver.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.aq$a", VolumeChangeContentObserver.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.event.EventBus", VolumeChangeContentObserver.class, getClass().getClassLoader());
        this.d = linker.requestBinding("android.content.Context", VolumeChangeContentObserver.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final VolumeChangeContentObserver get() {
        VolumeChangeContentObserver volumeChangeContentObserver = new VolumeChangeContentObserver();
        injectMembers(volumeChangeContentObserver);
        return volumeChangeContentObserver;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VolumeChangeContentObserver object) {
        object.c = this.a.get();
        object.d = this.b.get();
        object.e = this.c.get();
        object.f = this.d.get();
    }
}
