package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.bt;
import com.vungle.publisher.env.SdkConfig;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LoggedException$Factory$$InjectAdapter extends Binding<LoggedException.Factory> implements MembersInjector<LoggedException.Factory>, Provider<LoggedException.Factory> {
    private Binding<bt> a;
    private Binding<SdkConfig> b;
    private Binding<Provider<LoggedException>> c;
    private Binding<bi.a> d;

    public LoggedException$Factory$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LoggedException$Factory", "members/com.vungle.publisher.db.model.LoggedException$Factory", true, LoggedException.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", LoggedException.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.env.SdkConfig", LoggedException.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("javax.inject.Provider<com.vungle.publisher.db.model.LoggedException>", LoggedException.Factory.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", LoggedException.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LoggedException.Factory get() {
        LoggedException.Factory factory = new LoggedException.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LoggedException.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.d = this.c.get();
        this.d.injectMembers(object);
    }
}
