package com.vungle.publisher.net.http;

import com.vungle.publisher.env.SdkConfig;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AppFingerprintHttpResponseHandler$$InjectAdapter extends Binding<AppFingerprintHttpResponseHandler> implements MembersInjector<AppFingerprintHttpResponseHandler>, Provider<AppFingerprintHttpResponseHandler> {
    private Binding<SdkConfig> a;
    private Binding<FireAndForgetHttpResponseHandler> b;

    public AppFingerprintHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.net.http.AppFingerprintHttpResponseHandler", "members/com.vungle.publisher.net.http.AppFingerprintHttpResponseHandler", true, AppFingerprintHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.env.SdkConfig", AppFingerprintHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", AppFingerprintHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AppFingerprintHttpResponseHandler get() {
        AppFingerprintHttpResponseHandler appFingerprintHttpResponseHandler = new AppFingerprintHttpResponseHandler();
        injectMembers(appFingerprintHttpResponseHandler);
        return appFingerprintHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AppFingerprintHttpResponseHandler object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
