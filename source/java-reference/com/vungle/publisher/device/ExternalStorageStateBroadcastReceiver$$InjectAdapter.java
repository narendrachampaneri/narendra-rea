package com.vungle.publisher.device;

import android.content.Context;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ExternalStorageStateBroadcastReceiver$$InjectAdapter extends Binding<ExternalStorageStateBroadcastReceiver> implements MembersInjector<ExternalStorageStateBroadcastReceiver>, Provider<ExternalStorageStateBroadcastReceiver> {
    private Binding<Context> a;
    private Binding<EventBus> b;

    public ExternalStorageStateBroadcastReceiver$$InjectAdapter() {
        super("com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", "members/com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", true, ExternalStorageStateBroadcastReceiver.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", ExternalStorageStateBroadcastReceiver.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.event.EventBus", ExternalStorageStateBroadcastReceiver.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ExternalStorageStateBroadcastReceiver get() {
        ExternalStorageStateBroadcastReceiver externalStorageStateBroadcastReceiver = new ExternalStorageStateBroadcastReceiver();
        injectMembers(externalStorageStateBroadcastReceiver);
        return externalStorageStateBroadcastReceiver;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ExternalStorageStateBroadcastReceiver object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
