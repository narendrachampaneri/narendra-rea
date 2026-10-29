package com.vungle.publisher.env;

import android.content.Context;
import android.content.SharedPreferences;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bt;
import com.vungle.publisher.db.DatabaseBroadcastReceiver;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.net.NetworkBroadcastReceiver;
import com.vungle.publisher.protocol.ProtocolHttpGateway;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class SdkState$$InjectAdapter extends Binding<SdkState> implements MembersInjector<SdkState>, Provider<SdkState> {
    private Binding<Context> a;
    private Binding<DatabaseBroadcastReceiver> b;
    private Binding<bt> c;
    private Binding<EventBus> d;
    private Binding<ExternalStorageStateBroadcastReceiver> e;
    private Binding<NetworkBroadcastReceiver> f;
    private Binding<ScheduledPriorityExecutor> g;
    private Binding<SdkState.AdThrottleEndRunnable> h;
    private Binding<ProtocolHttpGateway> i;
    private Binding<LoggedException.Factory> j;
    private Binding<Lazy<SdkState.EndAdEventListener>> k;
    private Binding<SharedPreferences> l;

    public SdkState$$InjectAdapter() {
        super("com.vungle.publisher.env.SdkState", "members/com.vungle.publisher.env.SdkState", true, SdkState.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", SdkState.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.DatabaseBroadcastReceiver", SdkState.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.bt", SdkState.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.event.EventBus", SdkState.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", SdkState.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.net.NetworkBroadcastReceiver", SdkState.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", SdkState.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.env.SdkState$AdThrottleEndRunnable", SdkState.class, getClass().getClassLoader());
        this.i = linker.requestBinding("com.vungle.publisher.protocol.ProtocolHttpGateway", SdkState.class, getClass().getClassLoader());
        this.j = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", SdkState.class, getClass().getClassLoader());
        this.k = linker.requestBinding("dagger.Lazy<com.vungle.publisher.env.SdkState$EndAdEventListener>", SdkState.class, getClass().getClassLoader());
        this.l = linker.requestBinding("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", SdkState.class, getClass().getClassLoader());
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
        injectMembersBindings.add(this.i);
        injectMembersBindings.add(this.j);
        injectMembersBindings.add(this.k);
        injectMembersBindings.add(this.l);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final SdkState get() {
        SdkState sdkState = new SdkState();
        injectMembers(sdkState);
        return sdkState;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(SdkState object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
        object.f = this.f.get();
        object.g = this.g.get();
        object.h = this.h.get();
        object.i = this.i.get();
        object.j = this.j.get();
        object.k = this.k.get();
        object.n = this.l.get();
    }
}
