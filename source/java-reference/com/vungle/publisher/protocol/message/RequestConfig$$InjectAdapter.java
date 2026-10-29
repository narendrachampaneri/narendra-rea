package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bt;
import com.vungle.publisher.bv;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class RequestConfig$$InjectAdapter extends Binding<RequestConfig> implements MembersInjector<RequestConfig>, Provider<RequestConfig> {
    private Binding<bt> a;
    private Binding<bv> b;
    private Binding<BaseJsonObject> c;

    public RequestConfig$$InjectAdapter() {
        super("com.vungle.publisher.protocol.message.RequestConfig", "members/com.vungle.publisher.protocol.message.RequestConfig", true, RequestConfig.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", RequestConfig.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.bv", RequestConfig.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.protocol.message.BaseJsonObject", RequestConfig.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final RequestConfig get() {
        RequestConfig requestConfig = new RequestConfig();
        injectMembers(requestConfig);
        return requestConfig;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(RequestConfig object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
