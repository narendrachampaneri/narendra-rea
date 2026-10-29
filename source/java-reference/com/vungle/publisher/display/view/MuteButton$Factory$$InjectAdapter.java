package com.vungle.publisher.display.view;

import android.content.Context;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.util.ViewUtils;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class MuteButton$Factory$$InjectAdapter extends Binding<MuteButton.Factory> implements MembersInjector<MuteButton.Factory>, Provider<MuteButton.Factory> {
    private Binding<Context> a;
    private Binding<ViewUtils> b;
    private Binding<AudioHelper> c;
    private Binding<EventBus> d;

    public MuteButton$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.MuteButton$Factory", "members/com.vungle.publisher.display.view.MuteButton$Factory", true, MuteButton.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", MuteButton.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.util.ViewUtils", MuteButton.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.device.AudioHelper", MuteButton.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.event.EventBus", MuteButton.Factory.class, getClass().getClassLoader());
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
    public final MuteButton.Factory get() {
        MuteButton.Factory factory = new MuteButton.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(MuteButton.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
    }
}
