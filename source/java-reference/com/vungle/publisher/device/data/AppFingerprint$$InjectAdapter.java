package com.vungle.publisher.device.data;

import com.vungle.publisher.protocol.message.BaseJsonObject;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprint$$InjectAdapter extends Binding<AppFingerprint> implements MembersInjector<AppFingerprint>, Provider<AppFingerprint> {
    private Binding<BaseJsonObject> a;

    public AppFingerprint$$InjectAdapter() {
        super("com.vungle.publisher.device.data.AppFingerprint", "members/com.vungle.publisher.device.data.AppFingerprint", false, AppFingerprint.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.BaseJsonObject", AppFingerprint.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprint get() {
        AppFingerprint appFingerprint = new AppFingerprint();
        injectMembers(appFingerprint);
        return appFingerprint;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprint object) {
        this.a.injectMembers(object);
    }
}
