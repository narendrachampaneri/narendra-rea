package com.vungle.publisher.device.data;

import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.cu;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.env.SdkConfig;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprintManager$$InjectAdapter extends Binding<AppFingerprintManager> implements MembersInjector<AppFingerprintManager>, Provider<AppFingerprintManager> {
    private Binding<SdkConfig> a;
    private Binding<AppFingerprint.Factory> b;
    private Binding<cu> c;
    private Binding<ScheduledPriorityExecutor> d;
    private Binding<LoggedException.Factory> e;

    public AppFingerprintManager$$InjectAdapter() {
        super("com.vungle.publisher.device.data.AppFingerprintManager", "members/com.vungle.publisher.device.data.AppFingerprintManager", true, AppFingerprintManager.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.env.SdkConfig", AppFingerprintManager.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.device.data.AppFingerprint$Factory", AppFingerprintManager.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.cu", AppFingerprintManager.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", AppFingerprintManager.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", AppFingerprintManager.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprintManager get() {
        AppFingerprintManager appFingerprintManager = new AppFingerprintManager();
        injectMembers(appFingerprintManager);
        return appFingerprintManager;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprintManager object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
        object.e = this.e.get();
    }
}
