package com.vungle.publisher.display.controller;

import com.vungle.publisher.protocol.message.BaseJsonObject;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class WebViewConfig$$InjectAdapter extends Binding<WebViewConfig> implements MembersInjector<WebViewConfig>, Provider<WebViewConfig> {
    private Binding<BaseJsonObject> a;

    public WebViewConfig$$InjectAdapter() {
        super("com.vungle.publisher.display.controller.WebViewConfig", "members/com.vungle.publisher.display.controller.WebViewConfig", true, WebViewConfig.class);
    }

    @Override // dagger.internal.Binding
    public final void attach(Linker linker) {
        this.a = linker.requestBinding("members/com.vungle.publisher.protocol.message.BaseJsonObject", WebViewConfig.class, getClass().getClassLoader(), false, true);
    }

    @Override // dagger.internal.Binding
    public final void getDependencies(Set<Binding<?>> set, Set<Binding<?>> injectMembersBindings) {
        injectMembersBindings.add(this.a);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // dagger.internal.Binding, javax.inject.Provider
    public final WebViewConfig get() {
        WebViewConfig webViewConfig = new WebViewConfig();
        injectMembers(webViewConfig);
        return webViewConfig;
    }

    @Override // dagger.internal.Binding, dagger.MembersInjector
    public final void injectMembers(WebViewConfig object) {
        this.a.injectMembers(object);
    }
}
