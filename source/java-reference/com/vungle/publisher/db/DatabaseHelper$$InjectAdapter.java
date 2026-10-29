package com.vungle.publisher.db;

import android.content.Context;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.bv;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.file.CacheManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DatabaseHelper$$InjectAdapter extends Binding<DatabaseHelper> implements MembersInjector<DatabaseHelper>, Provider<DatabaseHelper> {
    private Binding<CacheManager> a;
    private Binding<EventBus> b;
    private Binding<bv> c;
    private Binding<ScheduledPriorityExecutor> d;
    private Binding<Context> e;

    public DatabaseHelper$$InjectAdapter() {
        super("com.vungle.publisher.db.DatabaseHelper", "members/com.vungle.publisher.db.DatabaseHelper", true, DatabaseHelper.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.e = linker.requestBinding("android.content.Context", DatabaseHelper.class, getClass().getClassLoader());
        this.a = linker.requestBinding("com.vungle.publisher.file.CacheManager", DatabaseHelper.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.event.EventBus", DatabaseHelper.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.bv", DatabaseHelper.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.async.ScheduledPriorityExecutor", DatabaseHelper.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> getBindings, Set<Binding<?>> injectMembersBindings) {
        getBindings.add(this.e);
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DatabaseHelper get() {
        DatabaseHelper databaseHelper = new DatabaseHelper(this.e.get());
        injectMembers(databaseHelper);
        return databaseHelper;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DatabaseHelper object) {
        object.a = this.a.get();
        object.b = this.b.get();
        object.c = this.c.get();
        object.d = this.d.get();
    }
}
