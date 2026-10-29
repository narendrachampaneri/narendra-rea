package com.vungle.publisher.protocol;

import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackInstallHttpResponseHandler$$InjectAdapter extends Binding<TrackInstallHttpResponseHandler> implements MembersInjector<TrackInstallHttpResponseHandler>, Provider<TrackInstallHttpResponseHandler> {
    private Binding<SdkState> a;
    private Binding<FireAndForgetHttpResponseHandler> b;

    public TrackInstallHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", "members/com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", true, TrackInstallHttpResponseHandler.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.env.SdkState", TrackInstallHttpResponseHandler.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler", TrackInstallHttpResponseHandler.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackInstallHttpResponseHandler get() {
        TrackInstallHttpResponseHandler trackInstallHttpResponseHandler = new TrackInstallHttpResponseHandler();
        injectMembers(trackInstallHttpResponseHandler);
        return trackInstallHttpResponseHandler;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackInstallHttpResponseHandler object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
