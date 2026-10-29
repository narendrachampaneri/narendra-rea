package com.vungle.publisher.display.view;

import com.vungle.publisher.audio.VolumeChangeContentObserver;
import com.vungle.publisher.bt;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.util.ViewUtils;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class VideoFragment$$InjectAdapter extends Binding<VideoFragment> implements MembersInjector<VideoFragment>, Provider<VideoFragment> {
    private Binding<AlertDialogFactory> a;
    private Binding<BitmapFactory> b;
    private Binding<DisplayUtils> c;
    private Binding<EventBus> d;
    private Binding<VideoFragment.Factory> e;
    private Binding<PrivacyButton.Factory> f;
    private Binding<ProgressBar.Factory> g;
    private Binding<MuteButton.Factory> h;
    private Binding<LoggedException.Factory> i;
    private Binding<bt> j;
    private Binding<ViewUtils> k;
    private Binding<VolumeChangeContentObserver> l;
    private Binding<VideoFragment.VideoEventListener.Factory> m;
    private Binding<AudioHelper> n;
    private Binding<AdFragment> o;

    public VideoFragment$$InjectAdapter() {
        super("com.vungle.publisher.display.view.VideoFragment", "members/com.vungle.publisher.display.view.VideoFragment", false, VideoFragment.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.display.view.AlertDialogFactory", VideoFragment.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.image.BitmapFactory", VideoFragment.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.display.view.DisplayUtils", VideoFragment.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.event.EventBus", VideoFragment.class, getClass().getClassLoader());
        this.e = linker.requestBinding("com.vungle.publisher.display.view.VideoFragment$Factory", VideoFragment.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.display.view.PrivacyButton$Factory", VideoFragment.class, getClass().getClassLoader());
        this.g = linker.requestBinding("com.vungle.publisher.display.view.ProgressBar$Factory", VideoFragment.class, getClass().getClassLoader());
        this.h = linker.requestBinding("com.vungle.publisher.display.view.MuteButton$Factory", VideoFragment.class, getClass().getClassLoader());
        this.i = linker.requestBinding("com.vungle.publisher.db.model.LoggedException$Factory", VideoFragment.class, getClass().getClassLoader());
        this.j = linker.requestBinding("com.vungle.publisher.bt", VideoFragment.class, getClass().getClassLoader());
        this.k = linker.requestBinding("com.vungle.publisher.util.ViewUtils", VideoFragment.class, getClass().getClassLoader());
        this.l = linker.requestBinding("com.vungle.publisher.audio.VolumeChangeContentObserver", VideoFragment.class, getClass().getClassLoader());
        this.m = linker.requestBinding("com.vungle.publisher.display.view.VideoFragment$VideoEventListener$Factory", VideoFragment.class, getClass().getClassLoader());
        this.n = linker.requestBinding("com.vungle.publisher.device.AudioHelper", VideoFragment.class, getClass().getClassLoader());
        this.o = linker.requestBinding("members/com.vungle.publisher.display.view.AdFragment", VideoFragment.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
        injectMembersBindings.add(this.g);
        injectMembersBindings.add(this.h);
        injectMembersBindings.add(this.i);
        injectMembersBindings.add(this.j);
        injectMembersBindings.add(this.k);
        injectMembersBindings.add(this.l);
        injectMembersBindings.add(this.m);
        injectMembersBindings.add(this.n);
        injectMembersBindings.add(this.o);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final VideoFragment get() {
        VideoFragment videoFragment = new VideoFragment();
        injectMembers(videoFragment);
        return videoFragment;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(VideoFragment object) {
        object.h = this.a.get();
        object.i = this.b.get();
        object.j = this.c.get();
        object.k = this.d.get();
        object.l = this.e.get();
        object.m = this.f.get();
        object.n = this.g.get();
        object.o = this.h.get();
        object.p = this.i.get();
        object.q = this.j.get();
        object.r = this.k.get();
        object.s = this.l.get();
        object.t = this.m.get();
        object.u = this.n.get();
        this.o.injectMembers(object);
    }
}
