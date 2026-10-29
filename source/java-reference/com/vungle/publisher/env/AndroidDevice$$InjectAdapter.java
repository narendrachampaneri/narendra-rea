package com.vungle.publisher.env;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.WindowManager;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidDevice$$InjectAdapter extends Binding<AndroidDevice> implements MembersInjector<AndroidDevice>, Provider<AndroidDevice> {
    private Binding<AudioHelper> a;
    private Binding<WindowManager> b;
    private Binding<Context> c;
    private Binding<EventBus> d;
    private Binding<SharedPreferences> e;
    private Binding<AndroidDevice.DeviceIdStrategy> f;

    public AndroidDevice$$InjectAdapter() {
        super("com.vungle.publisher.env.AndroidDevice", "members/com.vungle.publisher.env.AndroidDevice", true, AndroidDevice.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.device.AudioHelper", AndroidDevice.class, getClass().getClassLoader());
        this.b = linker.requestBinding("android.view.WindowManager", AndroidDevice.class, getClass().getClassLoader());
        this.c = linker.requestBinding("android.content.Context", AndroidDevice.class, getClass().getClassLoader());
        this.d = linker.requestBinding("com.vungle.publisher.event.EventBus", AndroidDevice.class, getClass().getClassLoader());
        this.e = linker.requestBinding("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", AndroidDevice.class, getClass().getClassLoader());
        this.f = linker.requestBinding("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", AndroidDevice.class, getClass().getClassLoader());
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
        injectMembersBindings.add(this.e);
        injectMembersBindings.add(this.f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AndroidDevice get() {
        AndroidDevice androidDevice = new AndroidDevice();
        injectMembers(androidDevice);
        return androidDevice;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AndroidDevice object) {
        object.g = this.a.get();
        object.h = this.b.get();
        object.i = this.c.get();
        object.j = this.d.get();
        object.k = this.e.get();
        object.l = this.f.get();
    }
}
