package com.vungle.publisher.protocol;

import com.vungle.publisher.bv;
import com.vungle.publisher.cn;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.net.http.HttpRequest;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ProtocolHttpRequest$Factory$$InjectAdapter extends Binding<ProtocolHttpRequest.a> implements MembersInjector<ProtocolHttpRequest.a> {
    private Binding<cn> a;
    private Binding<bv> b;
    private Binding<String> c;
    private Binding<WrapperFramework> d;
    private Binding<String> e;
    private Binding<HttpRequest.Factory> f;

    public ProtocolHttpRequest$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.protocol.ProtocolHttpRequest$Factory", false, ProtocolHttpRequest.a.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.cn", ProtocolHttpRequest.a.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bv", ProtocolHttpRequest.a.class, getClass().getClassLoader());
        this.c = linker.requestBinding("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", ProtocolHttpRequest.a.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.env.WrapperFramework", ProtocolHttpRequest.a.class, getClass().getClassLoader());
        this.e = linker.requestBinding("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", ProtocolHttpRequest.a.class, getClass().getClassLoader());
        this.f = linker.requestBinding("members/com.vungle.publisher.net.http.HttpRequest$Factory", ProtocolHttpRequest.a.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ProtocolHttpRequest.a object) {
        object.a = this.a.get();
        object.c = this.b.get();
        object.d = this.c.get();
        object.e = this.d.get();
        object.f = this.e.get();
        this.f.injectMembers(object);
    }
}
