package com.vungle.publisher.device;

import android.media.AudioManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AudioHelper$$InjectAdapter extends Binding<AudioHelper> implements MembersInjector<AudioHelper>, Provider<AudioHelper> {
    private Binding<AudioManager> a;

    public AudioHelper$$InjectAdapter() {
        super("com.vungle.publisher.device.AudioHelper", "members/com.vungle.publisher.device.AudioHelper", true, AudioHelper.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.media.AudioManager", AudioHelper.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AudioHelper get() {
        AudioHelper audioHelper = new AudioHelper();
        injectMembers(audioHelper);
        return audioHelper;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AudioHelper object) {
        object.a = this.a.get();
    }
}
