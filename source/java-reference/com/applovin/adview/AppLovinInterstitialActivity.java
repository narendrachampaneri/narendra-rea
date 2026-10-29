package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.adview.af;
import com.applovin.impl.adview.w;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.ca;
import com.applovin.impl.sdk.dh;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public class AppLovinInterstitialActivity extends Activity implements w, TraceFieldInterface {
    public static final String KEY_WRAPPER_ID = "com.applovin.interstitial.wrapper_id";
    public static volatile af lastKnownWrapper = null;
    private View A;
    private com.applovin.impl.adview.s B;
    private volatile UUID C;
    private ImageView D;
    private AppLovinAdView a;
    private af b;
    private AppLovinLogger d;
    private ca e;
    private AppLovinSdkImpl f;
    private Handler u;
    private FrameLayout v;
    private AppLovinVideoView w;
    private com.applovin.impl.adview.u x;
    private View y;
    private com.applovin.impl.adview.u z;
    private volatile boolean c = false;
    private volatile AppLovinAdImpl g = dh.a();
    private volatile boolean h = false;
    private volatile boolean i = false;
    private volatile boolean j = false;
    private volatile boolean k = false;
    private volatile boolean l = false;
    private volatile boolean m = false;
    private volatile boolean n = false;
    private volatile boolean o = false;
    private volatile boolean p = false;
    private boolean q = false;
    private volatile boolean r = false;
    private boolean s = false;
    private int t = 0;
    private WeakReference E = new WeakReference(null);

    private static int a(Display display) {
        if (display.getWidth() == display.getHeight()) {
            return 3;
        }
        return display.getWidth() < display.getHeight() ? 1 : 2;
    }

    private void a(int i) {
        b((int) (i - dh.a(1.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, UUID uuid) {
        if (this.B == null || !uuid.equals(this.C)) {
            return;
        }
        if (i <= 0) {
            this.B.setVisibility(8);
            this.s = true;
        } else {
            if (this.s) {
                return;
            }
            int i2 = i - 1;
            this.B.a(i2);
            this.u.postDelayed(new h(this, i2, uuid), 1000L);
        }
    }

    private void a(long j, com.applovin.impl.adview.u uVar) {
        this.u.postDelayed(new g(this, uVar), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener appLovinAdDisplayListenerD = this.b.d();
        if (appLovinAdDisplayListenerD != null) {
            appLovinAdDisplayListenerD.adDisplayed(appLovinAd);
        }
        this.i = true;
    }

    private void a(AppLovinAd appLovinAd, double d, boolean z) {
        this.l = true;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListenerC = this.b.c();
        if (appLovinAdVideoPlaybackListenerC != null) {
            appLovinAdVideoPlaybackListenerC.videoPlaybackEnded(appLovinAd, d, z);
        }
    }

    private void a(boolean z) {
        this.r = z;
        MediaPlayer mediaPlayer = (MediaPlayer) this.E.get();
        if (mediaPlayer != null) {
            int i = z ? 0 : 1;
            mediaPlayer.setVolume(i, i);
        }
    }

    private boolean a() {
        if (this.b == null || this.e == null || this.e.a()) {
            return true;
        }
        if (this.e.c() && this.n) {
            return true;
        }
        return this.e.b() && this.p;
    }

    private void b() {
        SharedPreferences.Editor editorEdit = x().edit();
        editorEdit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        editorEdit.putInt("com.applovin.interstitial.last_video_position", 0);
        editorEdit.commit();
    }

    private void b(int i) {
        a(i, this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AppLovinAd appLovinAd) {
        c(appLovinAd);
        dismiss();
    }

    private int c(int i) {
        return AppLovinSdkUtils.dpToPx(this, i);
    }

    private void c() {
        Uri uriFromFile = Uri.fromFile(this.f.getFileManager().a(this.g.getVideoFilename(), (Context) this, false));
        this.w = new AppLovinVideoView(this);
        this.w.setOnPreparedListener(new b(this));
        this.w.setOnCompletionListener(new k(this));
        this.w.setOnErrorListener(new l(this));
        this.w.setVideoURI(uriFromFile);
        this.w.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.w.setOnTouchListener(new AppLovinTouchToClickListener(this, new n(this)));
        this.v.addView(this.w);
        setContentView(this.v);
        m();
    }

    private void c(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener appLovinAdDisplayListenerD;
        if (this.j) {
            return;
        }
        this.j = true;
        if (this.b == null || (appLovinAdDisplayListenerD = this.b.d()) == null) {
            return;
        }
        appLovinAdDisplayListenerD.adHidden(appLovinAd);
    }

    private void d(AppLovinAd appLovinAd) {
        if (this.k) {
            return;
        }
        this.k = true;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListenerC = this.b.c();
        if (appLovinAdVideoPlaybackListenerC != null) {
            appLovinAdVideoPlaybackListenerC.videoPlaybackBegan(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.e.G();
    }

    private void e() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.v = new FrameLayout(this);
        this.v.setLayoutParams(layoutParams);
        this.v.setBackgroundColor(-16777216);
        this.u = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.e.k()) {
            finish();
        } else {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        d(this.g);
        this.w.start();
        b(o());
    }

    private void h() {
        this.x = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.x.setVisibility(8);
        this.x.setOnClickListener(new p(this));
        int iC = c(this.e.m());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iC, iC, (this.e.x() ? 3 : 5) | 48);
        this.x.a(iC);
        int iC2 = c(this.e.o());
        int iC3 = c(this.e.q());
        layoutParams.setMargins(iC3, iC2, iC3, iC2);
        this.v.addView(this.x, layoutParams);
        this.z = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.z.setVisibility(8);
        this.z.setOnClickListener(new q(this));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iC, iC, (this.e.w() ? 3 : 5) | 48);
        layoutParams2.setMargins(iC3, iC2, iC3, iC2);
        this.z.a(iC);
        this.v.addView(this.z, layoutParams2);
        this.z.bringToFront();
        if (k()) {
            int iC4 = c(new ca(this.f).r());
            this.y = new View(this);
            this.y.setBackgroundColor(0);
            this.y.setVisibility(8);
            this.A = new View(this);
            this.A.setBackgroundColor(0);
            this.A.setVisibility(8);
            int i = iC + iC4;
            int iC5 = iC2 - c(5);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i, i, (this.e.x() ? 3 : 5) | 48);
            layoutParams3.setMargins(iC5, iC5, iC5, iC5);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i, i, (this.e.w() ? 3 : 5) | 48);
            layoutParams4.setMargins(iC5, iC5, iC5, iC5);
            this.y.setOnClickListener(new r(this));
            this.A.setOnClickListener(new s(this));
            this.v.addView(this.y, layoutParams3);
            this.y.bringToFront();
            this.v.addView(this.A, layoutParams4);
            this.A.bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.D = new ImageView(this);
        if (this.e.A()) {
            if (d() || this.e.B()) {
                int iC = c(this.e.C());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iC, iC, this.e.D());
                this.D.setScaleType(ImageView.ScaleType.FIT_CENTER);
                int iC2 = c(this.e.E());
                layoutParams.setMargins(iC2, iC2, iC2, iC2);
                this.f.getLogger().d("AppLovinInterstitialActivity", "Added mute button with params: " + layoutParams);
                AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(this.f.getFileManager().a(d() ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename(), (Context) this, true)), iC);
                this.D.setClickable(true);
                this.D.setOnClickListener(new t(this));
                this.v.addView(this.D, layoutParams);
                this.D.bringToFront();
                this.r = d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        runOnUiThread(new e(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return this.e.r() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        runOnUiThread(new f(this));
    }

    private void m() {
        if (this.g.getVideoCloseDelay() >= 0.0f) {
            a(dh.c(this.g.getVideoCloseDelay()), (!this.q || this.z == null) ? this.x : this.z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.B == null) {
            this.B = new com.applovin.impl.adview.s(this);
            int iQ = q();
            this.B.c(iQ);
            this.B.b(this.e.h());
            this.B.d(iQ);
            this.B.a(this.e.g());
            this.B.b(o());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c(this.e.f()), c(this.e.f()), this.e.v());
            int iC = c(this.e.u());
            layoutParams.setMargins(iC, iC, iC, iC);
            this.v.addView(this.B, layoutParams);
            this.B.bringToFront();
            this.B.setVisibility((!this.e.i() || o() <= 0) ? 4 : 0);
        }
    }

    private int o() {
        int countdownLength = this.g.getCountdownLength();
        return (countdownLength <= 0 && this.e.t()) ? this.t + 1 : countdownLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.C = UUID.randomUUID();
    }

    private int q() {
        return Color.parseColor(this.e.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        t();
    }

    private void s() {
        if (this.c) {
            return;
        }
        if (this.a == null) {
            exitWithError("AdView was null");
            return;
        }
        this.a.setAdDisplayListener(new i(this));
        this.a.setAdClickListener(new j(this));
        this.g = (AppLovinAdImpl) this.b.b();
        e();
        h();
        if (this.g.getVideoFilename() != null) {
            c();
        } else {
            this.h = true;
            this.f.getLogger().e("AppLovinInterstitialActivity", "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!");
            t();
        }
        this.x.bringToFront();
        if (k() && this.y != null) {
            this.y.bringToFront();
        }
        if (this.z != null) {
            this.z.bringToFront();
        }
        this.a.renderAd(this.g);
        this.b.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        w();
        this.w.stopPlayback();
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(-1157627904);
        frameLayout.addView(this.a);
        if (this.z != null) {
            this.v.removeView(this.z);
            if (this.A != null) {
                this.v.removeView(this.A);
            }
        }
        if (k() && this.y != null) {
            this.v.removeView(this.y);
            frameLayout.addView(this.y);
            this.y.bringToFront();
        }
        this.v.removeView(this.x);
        frameLayout.addView(this.x);
        setContentView(frameLayout);
        this.x.bringToFront();
        if (this.g.getPoststitialCloseDelay() > 0.0f) {
            a(dh.c(this.g.getPoststitialCloseDelay()), this.x);
        } else {
            this.x.setVisibility(0);
        }
        this.p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        boolean z = !v();
        a(z);
        AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(this.f.getFileManager().a(z ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename(), (Context) this, true)), c(this.e.C()));
    }

    private boolean v() {
        return this.r;
    }

    private void w() {
        double currentPosition = 100.0d;
        if (this.l) {
            return;
        }
        if (!this.m) {
            if (this.w != null) {
                currentPosition = 100.0d * (((double) this.w.getCurrentPosition()) / ((double) this.w.getDuration()));
            } else {
                Log.e("AppLovinInterstitialActivity", "No video view detected on video end");
                currentPosition = 0.0d;
            }
        }
        this.f.getPostbackService().dispatchPostbackAsync(this.g.getParametrizedCompletionUrl((int) currentPosition), null);
        a(this.g, currentPosition, currentPosition > 95.0d);
    }

    private SharedPreferences x() {
        return getSharedPreferences("com.applovin.interstitial.sharedpreferences", 0);
    }

    @Override // com.applovin.impl.adview.w
    public void dismiss() {
        ((AdViewControllerImpl) this.a.getAdViewController()).setIsForegroundClickInvalidated(true);
        b();
        w();
        if (this.b != null) {
            if (this.g != null) {
                c(this.g);
            }
            this.b.a(false);
            this.b.g();
        }
        finish();
    }

    public void exitWithError(String str) {
        try {
            Log.e("AppLovinInterstitialActivity", "Failed to properly render an Interstitial Activity, due to error: " + str, new Throwable("Initialized = " + af.a + "; CleanedUp = " + af.b));
            c(dh.a());
        } catch (Exception e) {
            Log.e("AppLovinInterstitialActivity", "Failed to show a video ad due to error:", e);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (a()) {
            this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding to Android for handling...");
            super.onBackPressed();
            return;
        }
        try {
            if (this.q && this.z != null && this.z.getVisibility() == 0 && this.z.getAlpha() > 0.0f && !this.n) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to skip button.");
                this.z.performClick();
            } else if (this.x == null || this.x.getVisibility() != 0 || this.x.getAlpha() <= 0.0f) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed, but was not eligible for dismissal.");
            } else {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to close button.");
                this.x.performClick();
            }
        } catch (Exception e) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AppLovinInterstitialActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "AppLovinInterstitialActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "AppLovinInterstitialActivity#onCreate", null);
        }
        super.onCreate(bundle);
        requestWindowFeature(1);
        try {
            getWindow().setFlags(1024, 1024);
        } catch (Throwable th) {
        }
        requestWindowFeature(1);
        String stringExtra = getIntent().getStringExtra(KEY_WRAPPER_ID);
        if (stringExtra == null || stringExtra.isEmpty()) {
            exitWithError("Wrapper ID is null");
        } else {
            this.b = af.a(stringExtra);
            if (this.b == null && lastKnownWrapper != null) {
                this.b = lastKnownWrapper;
            }
            if (this.b != null) {
                AppLovinAd appLovinAdB = this.b.b();
                this.f = (AppLovinSdkImpl) this.b.a();
                this.d = this.b.a().getLogger();
                this.e = new ca(this.b.a());
                if (appLovinAdB != null) {
                    Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
                    int iA = a(defaultDisplay);
                    int rotation = defaultDisplay.getRotation();
                    boolean z = (iA == 2 && rotation == 0) || (iA == 2 && rotation == 2) || ((iA == 1 && rotation == 1) || (iA == 1 && rotation == 3));
                    if (this.b.f() == AppLovinAdImpl.AdTarget.ACTIVITY_PORTRAIT) {
                        if (z) {
                            if (rotation != 1 && rotation != 3) {
                                this.c = true;
                                setRequestedOrientation(1);
                            }
                        } else if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(1);
                        }
                    } else if (z) {
                        if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(0);
                        }
                    } else if (rotation != 1 && rotation != 3) {
                        this.c = true;
                        setRequestedOrientation(0);
                    }
                    this.a = new AppLovinAdView(this.f, AppLovinAdSize.INTERSTITIAL, this);
                    this.a.setAutoDestroy(false);
                    this.b.a(this);
                    this.q = this.e.s();
                } else {
                    exitWithError("No current ad found.");
                }
            } else {
                exitWithError("Wrapper is null; initialized state: " + Boolean.toString(af.a));
            }
        }
        SharedPreferences.Editor editorEdit = x().edit();
        editorEdit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        editorEdit.commit();
        b();
        s();
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.a != null) {
                this.a.destroy();
            }
            if (this.w != null) {
                this.w.pause();
                this.w.stopPlayback();
            }
        } catch (Throwable th) {
            this.d.w("AppLovinInterstitialActivity", "Unable to destroy video view", th);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (!this.c && !this.h) {
            SharedPreferences.Editor editorEdit = x().edit();
            editorEdit.putInt("com.applovin.interstitial.last_video_position", this.w.getCurrentPosition());
            editorEdit.putBoolean("com.applovin.interstitial.should_resume_video", true);
            editorEdit.commit();
            this.w.pause();
        }
        this.b.a(false);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.b.a(true);
        SharedPreferences sharedPreferencesX = x();
        if (sharedPreferencesX.getBoolean("com.applovin.interstitial.should_resume_video", false)) {
            if (this.w != null) {
                int duration = this.w.getDuration();
                int i = sharedPreferencesX.getInt("com.applovin.interstitial.last_video_position", duration);
                p();
                this.w.seekTo(i);
                this.w.start();
                a(duration - i);
            }
            if (this.x == null || !this.e.j()) {
                dismiss();
            } else {
                this.d.d("AppLovinInterstitialActivity", "Fading in close button due to app resume.");
                a(0L, (!this.q || this.z == null) ? this.x : this.z);
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
