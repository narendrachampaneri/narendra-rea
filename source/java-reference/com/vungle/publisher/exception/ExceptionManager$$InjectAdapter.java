package com.vungle.publisher.exception;

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
public final class ExceptionManager$$InjectAdapter extends Binding<ExceptionManager> implements MembersInjector<ExceptionManager>, Provider<ExceptionManager> {
    private Binding<cu> a;
    private Binding<SdkConfig> b;
    private Binding<LoggedException.Factory> c;

    public ExceptionManager$$InjectAdapter() {
        super("com.vungle.publisher.exception.ExceptionManager", "members/com.vungle.publisher.exception.ExceptionManager", true, ExceptionManager.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.cu", ExceptionManager.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.env.SdkConfig", ExceptionManager.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", ExceptionManager.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ExceptionManager get() {
        ExceptionManager exceptionManager = new ExceptionManager();
        injectMembers(exceptionManager);
        return exceptionManager;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ExceptionManager object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
    }
}
