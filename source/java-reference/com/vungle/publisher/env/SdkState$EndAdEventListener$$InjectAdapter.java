package com.vungle.publisher.env;

import com.vungle.publisher.by;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SdkState$EndAdEventListener$$InjectAdapter extends Binding<SdkState.EndAdEventListener> implements MembersInjector<SdkState.EndAdEventListener>, Provider<SdkState.EndAdEventListener> {
    private Binding<SdkState> a;
    private Binding<by> b;

    public SdkState$EndAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState$EndAdEventListener", "members/com.vungle.publisher.env.SdkState$EndAdEventListener", true, SdkState.EndAdEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.env.SdkState", SdkState.EndAdEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", SdkState.EndAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SdkState.EndAdEventListener get() {
        SdkState.EndAdEventListener endAdEventListener = new SdkState.EndAdEventListener();
        injectMembers(endAdEventListener);
        return endAdEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SdkState.EndAdEventListener object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
