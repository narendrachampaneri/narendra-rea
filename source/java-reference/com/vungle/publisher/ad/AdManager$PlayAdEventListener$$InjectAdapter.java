package com.vungle.publisher.ad;

import com.vungle.publisher.by;
import com.vungle.publisher.db.model.LoggedException;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdManager$PlayAdEventListener$$InjectAdapter extends Binding<AdManager.PlayAdEventListener> implements MembersInjector<AdManager.PlayAdEventListener>, Provider<AdManager.PlayAdEventListener> {
    private Binding<AdManager> a;
    private Binding<LoggedException.Factory> b;
    private Binding<by> c;

    public AdManager$PlayAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager$PlayAdEventListener", "members/com.vungle.publisher.ad.AdManager$PlayAdEventListener", true, AdManager.PlayAdEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.ad.AdManager", AdManager.PlayAdEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", AdManager.PlayAdEventListener.class, getClass().getClassLoader());
        this.c = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", AdManager.PlayAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdManager.PlayAdEventListener get() {
        AdManager.PlayAdEventListener playAdEventListener = new AdManager.PlayAdEventListener();
        injectMembers(playAdEventListener);
        return playAdEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdManager.PlayAdEventListener object) {
        object.b = this.a.get();
        object.c = this.b.get();
        this.c.injectMembers(object);
    }
}
