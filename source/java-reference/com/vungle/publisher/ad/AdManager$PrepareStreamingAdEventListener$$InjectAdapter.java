package com.vungle.publisher.ad;

import com.vungle.publisher.by;
import com.vungle.publisher.db.model.StreamingAd;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AdManager$PrepareStreamingAdEventListener$$InjectAdapter extends Binding<AdManager.PrepareStreamingAdEventListener> implements MembersInjector<AdManager.PrepareStreamingAdEventListener>, Provider<AdManager.PrepareStreamingAdEventListener> {
    private Binding<StreamingAd.Factory> a;
    private Binding<by> b;

    public AdManager$PrepareStreamingAdEventListener$$InjectAdapter() {
        super("com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener", "members/com.vungle.publisher.ad.AdManager$PrepareStreamingAdEventListener", false, AdManager.PrepareStreamingAdEventListener.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.db.model.StreamingAd$Factory", AdManager.PrepareStreamingAdEventListener.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.event.BaseEventListener", AdManager.PrepareStreamingAdEventListener.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AdManager.PrepareStreamingAdEventListener get() {
        AdManager.PrepareStreamingAdEventListener prepareStreamingAdEventListener = new AdManager.PrepareStreamingAdEventListener();
        injectMembers(prepareStreamingAdEventListener);
        return prepareStreamingAdEventListener;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AdManager.PrepareStreamingAdEventListener object) {
        object.e = this.a.get();
        this.b.injectMembers(object);
    }
}
