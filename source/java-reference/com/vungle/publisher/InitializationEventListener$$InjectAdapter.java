package com.vungle.publisher;

import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import com.vungle.publisher.reporting.AdReportManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class InitializationEventListener$$InjectAdapter extends Binding<InitializationEventListener> implements MembersInjector<InitializationEventListener>, Provider<InitializationEventListener> {
    private Binding<AdManager> a;
    private Binding<ScheduledPriorityExecutor> b;
    private Binding<ProtocolHttpGateway> c;
    private Binding<AdReportManager> d;
    private Binding<InitializationEventListener.InitialConfigUpdatedEventListener> e;
    private Binding<InitializationEventListener.GlobalEventListener> f;
    private Binding<SdkState> g;
    private Binding<by> h;

    public InitializationEventListener$$InjectAdapter() {
        super("com.vungle.publisher.InitializationEventListener", "members/com.vungle.publisher.InitializationEventListener", true, InitializationEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.AdManager", InitializationEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", InitializationEventListener.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", InitializationEventListener.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.reporting.AdReportManager", InitializationEventListener.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.InitializationEventListener$InitialConfigUpdatedEventListener", InitializationEventListener.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.InitializationEventListener$GlobalEventListener", InitializationEventListener.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.env.SdkState", InitializationEventListener.class, getClass().getClassLoader());
        this.h = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", InitializationEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
        injectMembersBindings.add(this.g);
        injectMembersBindings.add(this.h);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final InitializationEventListener get() {
        InitializationEventListener initializationEventListener = new InitializationEventListener();
        injectMembers(initializationEventListener);
        return initializationEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(InitializationEventListener object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.f = this.f.get();
        object.g = this.g.get();
        this.h.injectMembers(object);
    }
}
