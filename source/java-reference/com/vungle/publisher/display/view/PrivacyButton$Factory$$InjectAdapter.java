package com.vungle.publisher.display.view;

import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.util.ViewUtils;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrivacyButton$Factory$$InjectAdapter extends Binding<PrivacyButton.Factory> implements MembersInjector<PrivacyButton.Factory>, Provider<PrivacyButton.Factory> {
    private Binding<ViewUtils> a;
    private Binding<EventBus> b;

    public PrivacyButton$Factory$$InjectAdapter() {
        super("com.vungle.publisher.display.view.PrivacyButton$Factory", "members/com.vungle.publisher.display.view.PrivacyButton$Factory", true, PrivacyButton.Factory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.util.ViewUtils", PrivacyButton.Factory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.event.EventBus", PrivacyButton.Factory.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final PrivacyButton.Factory get() {
        PrivacyButton.Factory factory = new PrivacyButton.Factory();
        injectMembers(factory);
        return factory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(PrivacyButton.Factory object) {
        object.a = this.a.get();
        object.b = this.b.get();
    }
}
