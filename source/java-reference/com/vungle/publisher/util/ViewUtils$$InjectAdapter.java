package com.vungle.publisher.util;

import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.image.BitmapFactory;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewUtils$$InjectAdapter extends Binding<ViewUtils> implements MembersInjector<ViewUtils>, Provider<ViewUtils> {
    private Binding<BitmapFactory> a;
    private Binding<LoggedException.Factory> b;

    public ViewUtils$$InjectAdapter() {
        super("com.vungle.publisher.util.ViewUtils", "members/com.vungle.publisher.util.ViewUtils", true, ViewUtils.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.image.BitmapFactory", ViewUtils.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", ViewUtils.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final ViewUtils get() {
        ViewUtils viewUtils = new ViewUtils();
        injectMembers(viewUtils);
        return viewUtils;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(ViewUtils object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
