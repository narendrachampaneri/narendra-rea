package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class Ad$Factory$$InjectAdapter extends Binding<Ad.Factory> implements MembersInjector<Ad.Factory> {
    private Binding<EventTracking.Factory> a;
    private Binding<EventBus> b;
    private Binding<bi.a> c;

    public Ad$Factory$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.Ad$Factory", false, Ad.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.EventTracking$Factory", Ad.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.event.EventBus", Ad.Factory.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel$Factory", Ad.Factory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(Ad.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
        this.c.injectMembers(object);
    }
}
