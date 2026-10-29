package com.vungle.publisher.net.http;

import com.vungle.publisher.cs;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DownloadHttpGateway$$InjectAdapter extends Binding<DownloadHttpGateway> implements MembersInjector<DownloadHttpGateway>, Provider<DownloadHttpGateway> {
    private Binding<DownloadHttpTransactionFactory> a;
    private Binding<cs> b;

    public DownloadHttpGateway$$InjectAdapter() {
        super("com.vungle.publisher.net.http.DownloadHttpGateway", "members/com.vungle.publisher.net.http.DownloadHttpGateway", true, DownloadHttpGateway.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.DownloadHttpTransactionFactory", DownloadHttpGateway.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.net.http.HttpGateway", DownloadHttpGateway.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DownloadHttpGateway get() {
        DownloadHttpGateway downloadHttpGateway = new DownloadHttpGateway();
        injectMembers(downloadHttpGateway);
        return downloadHttpGateway;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DownloadHttpGateway object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
