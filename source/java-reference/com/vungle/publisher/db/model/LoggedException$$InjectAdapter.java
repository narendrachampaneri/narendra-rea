package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class LoggedException$$InjectAdapter extends Binding<LoggedException> implements MembersInjector<LoggedException>, Provider<LoggedException> {
    private Binding<LoggedException.Factory> a;
    private Binding<bi> b;

    public LoggedException$$InjectAdapter() {
        super("com.vungle.publisher.db.model.LoggedException", "members/com.vungle.publisher.db.model.LoggedException", false, LoggedException.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", LoggedException.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", LoggedException.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final LoggedException get() {
        LoggedException loggedException = new LoggedException();
        injectMembers(loggedException);
        return loggedException;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(LoggedException object) {
        object.j = this.a.get();
        this.b.injectMembers(object);
    }
}
