package com.vungle.publisher.db.model;

import com.vungle.publisher.bt;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LocalViewableDelegate$$InjectAdapter extends Binding<LocalViewableDelegate> implements MembersInjector<LocalViewableDelegate>, Provider<LocalViewableDelegate> {
    private Binding<DownloadHttpGateway> a;
    private Binding<bt> b;
    private Binding<SdkState> c;

    public LocalViewableDelegate$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LocalViewableDelegate", "members/com.vungle.publisher.db.model.LocalViewableDelegate", false, LocalViewableDelegate.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.net.http.DownloadHttpGateway", LocalViewableDelegate.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bt", LocalViewableDelegate.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.env.SdkState", LocalViewableDelegate.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LocalViewableDelegate get() {
        LocalViewableDelegate localViewableDelegate = new LocalViewableDelegate();
        injectMembers(localViewableDelegate);
        return localViewableDelegate;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LocalViewableDelegate object) {
        object.d = this.a.get();
        object.e = this.b.get();
        object.f = this.c.get();
    }
}
