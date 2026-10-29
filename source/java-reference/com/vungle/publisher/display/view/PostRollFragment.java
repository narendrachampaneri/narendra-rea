package com.vungle.publisher.display.view;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.vungle.log.Logger;
import com.vungle.publisher.display.controller.AdWebChromeClient;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.x;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class PostRollFragment extends WebViewFragment {

    @Inject
    EventBus a;

    @Inject
    AdWebChromeClient b;

    @Inject
    public PostRollFragment() {
    }

    @Override // com.vungle.publisher.display.view.WebViewFragment, com.vungle.publisher.display.view.AdFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onCreate", e);
        }
    }

    @Override // com.vungle.publisher.display.view.WebViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView;
        Exception e;
        try {
            viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
            try {
                this.d.setWebChromeClient(this.b);
            } catch (Exception e2) {
                e = e2;
                Logger.w(Logger.AD_TAG, "exception in onCreateView", e);
            }
        } catch (Exception e3) {
            viewOnCreateView = null;
            e = e3;
        }
        return viewOnCreateView;
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final void a() {
        try {
            this.a.a(new x());
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onBackPressed", e);
        }
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final String b() {
        return "postRollFragment";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public Provider<PostRollFragment> a;

        @Inject
        Factory() {
        }

        public static PostRollFragment a(PostRollFragment postRollFragment, String str) {
            postRollFragment.c = str;
            return postRollFragment;
        }

        public static PostRollFragment a(FragmentActivity fragmentActivity) {
            return (PostRollFragment) fragmentActivity.getSupportFragmentManager().findFragmentByTag("postRollFragment");
        }
    }
}
