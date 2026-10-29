package com.vungle.publisher.protocol;

import com.vungle.publisher.net.http.HttpTransaction;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class TrackInstallHttpTransactionFactory$$InjectAdapter extends Binding<TrackInstallHttpTransactionFactory> implements MembersInjector<TrackInstallHttpTransactionFactory>, Provider<TrackInstallHttpTransactionFactory> {
    private Binding<TrackInstallHttpRequest.Factory> a;
    private Binding<TrackInstallHttpResponseHandler> b;
    private Binding<HttpTransaction.Factory> c;

    public TrackInstallHttpTransactionFactory$$InjectAdapter() {
        super("com.vungle.publisher.protocol.TrackInstallHttpTransactionFactory", "members/com.vungle.publisher.protocol.TrackInstallHttpTransactionFactory", true, TrackInstallHttpTransactionFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", TrackInstallHttpTransactionFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", TrackInstallHttpTransactionFactory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.net.http.HttpTransaction$Factory", TrackInstallHttpTransactionFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final TrackInstallHttpTransactionFactory get() {
        TrackInstallHttpTransactionFactory trackInstallHttpTransactionFactory = new TrackInstallHttpTransactionFactory();
        injectMembers(trackInstallHttpTransactionFactory);
        return trackInstallHttpTransactionFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(TrackInstallHttpTransactionFactory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
