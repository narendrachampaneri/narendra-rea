package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.db.DatabaseHelper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class BaseModel$Factory$$InjectAdapter extends Binding<bi.a> implements MembersInjector<bi.a> {
    private Binding<DatabaseHelper> a;

    public BaseModel$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.BaseModel$Factory", false, bi.a.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.DatabaseHelper", bi.a.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(bi.a object) {
        object.c = this.a.get();
    }
}
