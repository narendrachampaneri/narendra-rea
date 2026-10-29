package com.vungle.publisher.image;

import android.content.Context;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class AssetBitmapFactory$$InjectAdapter extends Binding<AssetBitmapFactory> implements MembersInjector<AssetBitmapFactory>, Provider<AssetBitmapFactory> {
    private Binding<Context> a;
    private Binding<BaseBitmapFactory> b;

    public AssetBitmapFactory$$InjectAdapter() {
        super("com.vungle.publisher.image.AssetBitmapFactory", "members/com.vungle.publisher.image.AssetBitmapFactory", true, AssetBitmapFactory.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("android.content.Context", AssetBitmapFactory.class, getClass().getClassLoader());
        this.b = linker.requestBinding("members/com.vungle.publisher.image.BaseBitmapFactory", AssetBitmapFactory.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final AssetBitmapFactory get() {
        AssetBitmapFactory assetBitmapFactory = new AssetBitmapFactory();
        injectMembers(assetBitmapFactory);
        return assetBitmapFactory;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(AssetBitmapFactory object) {
        object.a = this.a.get();
        this.b.injectMembers(object);
    }
}
