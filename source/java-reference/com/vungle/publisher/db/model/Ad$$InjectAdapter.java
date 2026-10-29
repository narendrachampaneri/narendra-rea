package com.vungle.publisher.db.model;

import com.vungle.publisher.bi;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class Ad$$InjectAdapter extends Binding<Ad> implements MembersInjector<Ad> {
    private Binding<EventBus> a;
    private Binding<bi> b;

    public Ad$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.db.model.Ad", false, Ad.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.event.EventBus", Ad.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.db.model.BaseModel", Ad.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(Ad object) {
        object.r = this.a.get();
        this.b.injectMembers(object);
    }
}
