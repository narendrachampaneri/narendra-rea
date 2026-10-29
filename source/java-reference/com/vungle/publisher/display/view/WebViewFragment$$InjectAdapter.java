package com.vungle.publisher.display.view;

import com.vungle.publisher.bt;
import com.vungle.publisher.display.controller.AdWebViewClient;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class WebViewFragment$$InjectAdapter extends Binding<WebViewFragment> implements MembersInjector<WebViewFragment> {
    private Binding<bt> a;
    private Binding<AdWebViewClient> b;
    private Binding<WebViewFactory> c;
    private Binding<AdFragment> d;

    public WebViewFragment$$InjectAdapter() {
        super(null, "members/com.vungle.publisher.display.view.WebViewFragment", false, WebViewFragment.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("com.vungle.publisher.bt", WebViewFragment.class, getClass().getClassLoader());
        this.b = linker.requestBinding("com.vungle.publisher.display.controller.AdWebViewClient", WebViewFragment.class, getClass().getClassLoader());
        this.c = linker.requestBinding("com.vungle.publisher.display.view.WebViewFactory", WebViewFragment.class, getClass().getClassLoader());
        this.d = linker.requestBinding("members/com.vungle.publisher.display.view.AdFragment", WebViewFragment.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
        injectMembersBindings.add(this.b);
        injectMembersBindings.add(this.c);
        injectMembersBindings.add(this.d);
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(WebViewFragment object) {
        object.e = this.a.get();
        object.f = this.b.get();
        object.g = this.c.get();
        this.d.injectMembers(object);
    }
}
