package com.vungle.publisher.display.view;

import android.content.Context;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class DisplayUtils$$InjectAdapter extends Binding<DisplayUtils> implements MembersInjector<DisplayUtils>, Provider<DisplayUtils> {
    private Binding<Context> a;

    public DisplayUtils$$InjectAdapter() {
        super("com.vungle.publisher.display.view.DisplayUtils", "members/com.vungle.publisher.display.view.DisplayUtils", true, DisplayUtils.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", DisplayUtils.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final DisplayUtils get() {
        DisplayUtils displayUtils = new DisplayUtils();
        injectMembers(displayUtils);
        return displayUtils;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(DisplayUtils object) {
        object.a = this.a.get();
    }
}
