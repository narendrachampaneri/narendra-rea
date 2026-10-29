package com.vungle.publisher;

import android.R;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.gms.drive.DriveFile;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.LocalArchive;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.display.view.AdFragment;
import com.vungle.publisher.display.view.PostRollFragment;
import com.vungle.publisher.display.view.VideoFragment;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.reporting.AdReportEventListener;
import com.vungle.publisher.util.IntentFactory;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class FullScreenAdActivity extends FragmentActivity implements TraceFieldInterface {
    public static final String AD_CONFIG_EXTRA_KEY = "adConfig";
    public static final String AD_ID_EXTRA_KEY = "adId";
    Ad a;
    AdReportEventListener b;

    @Inject
    AdEventListener.Factory c;

    @Inject
    AdManager d;

    @Inject
    AdReportEventListener.Factory e;

    @Inject
    bt f;

    @Inject
    EventBus g;

    @Inject
    VideoFragment.Factory h;

    @Inject
    PostRollFragment.Factory i;

    @Inject
    SdkState j;

    @Inject
    IntentFactory k;

    @Inject
    LoggedException.Factory l;
    private AdFragment m;
    private PostRollFragment n;
    private View o;
    private VideoFragment p;
    private AdEventListener q;

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle bundle) {
        int i;
        LocalArchive localArchiveU;
        TraceMachine.startTracing("FullScreenAdActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "FullScreenAdActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "FullScreenAdActivity#onCreate", null);
        }
        try {
            Logger.d(Logger.AD_TAG, "interstital ad");
            super.onCreate(bundle);
            Injector.getInstance().a.inject(this);
            Intent intent = getIntent();
            a aVar = (a) intent.getParcelableExtra(AD_CONFIG_EXTRA_KEY);
            String stringExtra = intent.getStringExtra(AD_ID_EXTRA_KEY);
            AdManager adManager = this.d;
            Ad<?, ?, ?> adA = adManager.g.a(stringExtra);
            if (adA == null) {
                adA = adManager.n.a(stringExtra);
            }
            this.a = adA;
            if (adA == null) {
                Logger.w(Logger.AD_TAG, "no ad in activity");
                this.g.a(new az());
                finish();
                TraceMachine.exitMethod();
                return;
            }
            this.o = getWindow().getDecorView();
            Video videoK = adA.k();
            this.q = this.c.getInstance(this);
            AdReportEventListener.Factory factory = this.e;
            factory.a.a(adA);
            this.b = factory.a;
            this.q.registerOnce();
            this.b.registerOnce();
            boolean z = bundle != null;
            if (!z) {
                this.g.a(new ag(adA, aVar));
            }
            VideoFragment.Factory factory2 = this.h;
            VideoFragment videoFragmentA = VideoFragment.Factory.a(this);
            if (videoFragmentA == null) {
                videoFragmentA = factory2.a.get();
            }
            this.p = VideoFragment.Factory.a(videoFragmentA, adA, aVar);
            if ((adA instanceof LocalAd) && (localArchiveU = ((LocalAd) adA).u()) != null) {
                String string = new File(cc.a(localArchiveU.j(), "index.html")).toURI().toString();
                PostRollFragment.Factory factory3 = this.i;
                PostRollFragment postRollFragmentA = PostRollFragment.Factory.a(this);
                if (postRollFragmentA == null) {
                    postRollFragmentA = factory3.a.get();
                }
                this.n = PostRollFragment.Factory.a(postRollFragmentA, string);
            }
            a(aVar);
            Orientation orientation = aVar.getOrientation();
            switch (orientation) {
                case autoRotate:
                    Logger.d(Logger.AD_TAG, "ad orientation " + orientation);
                    i = 10;
                    break;
                default:
                    if ((videoK.g == null || videoK.n == null || videoK.n.intValue() <= videoK.g.intValue()) ? false : true) {
                        Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (landscape)");
                        i = 6;
                    } else if (!((videoK.g == null || videoK.n == null || videoK.g.intValue() <= videoK.n.intValue()) ? false : true)) {
                        Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (unknown) --> auto-rotate");
                        i = 10;
                    } else {
                        Logger.d(Logger.AD_TAG, "ad orientation " + orientation + " (portrait)");
                        i = 7;
                    }
                    break;
            }
            setRequestedOrientation(i);
            if ("postRollFragment".equals(z ? bundle.getString("currentFragment") : null)) {
                a();
                TraceMachine.exitMethod();
            } else {
                b();
                TraceMachine.exitMethod();
            }
        } catch (Exception e2) {
            Logger.e(Logger.AD_TAG, "error playing ad", e2);
            a(false, false);
            TraceMachine.exitMethod();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        try {
            super.onSaveInstanceState(outState);
            outState.putString("currentFragment", this.m.b());
        } catch (Exception e) {
            this.l.a(Logger.AD_TAG, "error in onSaveInstanceState", e);
        }
    }

    final void a(final a aVar) {
        if (this.f.a(br.KITKAT) && aVar.isImmersiveMode()) {
            this.o.setSystemUiVisibility(5894);
            this.o.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.vungle.publisher.FullScreenAdActivity.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int visibility) {
                    if ((visibility & 4) == 0) {
                        FullScreenAdActivity.this.a(aVar);
                    }
                }
            });
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
            SdkState sdkState = this.j;
            Logger.d(Logger.AD_TAG, "onAdActivityResume()");
            sdkState.a(false);
            sdkState.m = 0L;
        } catch (Exception e) {
            this.l.a(Logger.AD_TAG, "error in onResume()", e);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        try {
            super.onPause();
            SdkState sdkState = this.j;
            Logger.d(Logger.AD_TAG, "onAdActivityPause()");
            sdkState.m = sdkState.f();
        } catch (Exception e) {
            this.l.a(Logger.AD_TAG, "error in onPause()", e);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        try {
            Logger.v(Logger.AD_TAG, "back button pressed");
            this.g.a(new d());
            this.m.a();
        } catch (Exception e) {
            this.l.a(Logger.AD_TAG, "error in onBackPressed", e);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        this.m.a(keyCode);
        return super.onKeyDown(keyCode, event);
    }

    final void a() {
        if (this.n == null) {
            a(true, false);
        } else {
            this.g.a(new z());
            a(this.n);
        }
    }

    final void b() {
        if (this.p == null) {
            a();
        } else {
            a(this.p);
        }
    }

    final void a(boolean z, boolean z2) {
        try {
            this.g.a(z ? new be(this.a, z2) : new bd(this.a, z2));
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error exiting ad", e);
        } finally {
            finish();
        }
    }

    private void a(AdFragment adFragment) {
        if (adFragment != this.m) {
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fade_in, R.anim.fade_out);
            this.m = adFragment;
            fragmentTransactionBeginTransaction.replace(R.id.content, adFragment, adFragment.b());
            fragmentTransactionBeginTransaction.commit();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        try {
            super.onWindowFocusChanged(hasFocus);
            this.m.a(hasFocus);
        } catch (Exception e) {
            this.l.a(Logger.AD_TAG, "error in onWindowFocusChanged", e);
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class AdEventListener extends by {
        private FullScreenAdActivity a;

        @Inject
        AdEventListener() {
        }

        public void onEvent(x xVar) {
            Logger.v(Logger.EVENT_TAG, "postRoll.onCancel()");
            this.a.a(true, false);
        }

        public void onEvent(g event) {
            EventTracking.a aVar = event.a;
            Logger.v(Logger.EVENT_TAG, "cta click event: " + aVar);
            FullScreenAdActivity fullScreenAdActivity = this.a;
            String strF = null;
            boolean z = false;
            try {
                strF = fullScreenAdActivity.a.f();
                Logger.v(Logger.AD_TAG, "call to action destination " + strF);
                if (strF != null) {
                    Intent intentA = IntentFactory.a("android.intent.action.VIEW", Uri.parse(strF));
                    intentA.addFlags(DriveFile.MODE_READ_ONLY);
                    fullScreenAdActivity.startActivity(intentA);
                    fullScreenAdActivity.g.a(new h(fullScreenAdActivity.a, aVar));
                }
                z = true;
            } catch (Exception e) {
                fullScreenAdActivity.l.a(Logger.AD_TAG, "error loading call-to-action URL " + strF, e);
            }
            fullScreenAdActivity.a(z, true);
        }

        public void onEvent(y yVar) {
            Logger.v(Logger.EVENT_TAG, "postRoll.onRepeat()");
            this.a.b();
        }

        public void onEvent(ar arVar) {
            this.a.a(false, false);
        }

        public void onEvent(al alVar) {
            Logger.v(Logger.EVENT_TAG, "video.onCancel()");
            this.a.a();
        }

        public void onEvent(am amVar) {
            Logger.v(Logger.EVENT_TAG, "video.onNext()");
            this.a.a();
        }

        public void onEvent(ac acVar) {
            FullScreenAdActivity fullScreenAdActivity = this.a;
            try {
                Intent intentA = IntentFactory.a("android.intent.action.VIEW", Uri.parse("https://www.vungle.com/privacy/"));
                intentA.addFlags(DriveFile.MODE_READ_ONLY);
                fullScreenAdActivity.startActivity(intentA);
            } catch (Exception e) {
                fullScreenAdActivity.l.a(Logger.AD_TAG, "error loading privacy URL", e);
            }
        }

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory {

            @Inject
            AdEventListener a;

            public AdEventListener getInstance(FullScreenAdActivity activity) {
                this.a.a = activity;
                return this.a;
            }
        }
    }
}
