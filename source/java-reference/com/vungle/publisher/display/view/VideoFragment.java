package com.vungle.publisher.display.view;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.provider.Settings;
import android.support.v4.app.FragmentActivity;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.nineoldandroids.animation.ArgbEvaluator;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.animation.TypeEvaluator;
import com.nineoldandroids.view.ViewHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.ad;
import com.vungle.publisher.ah;
import com.vungle.publisher.al;
import com.vungle.publisher.am;
import com.vungle.publisher.an;
import com.vungle.publisher.ap;
import com.vungle.publisher.aq;
import com.vungle.publisher.audio.VolumeChangeContentObserver;
import com.vungle.publisher.bq;
import com.vungle.publisher.bt;
import com.vungle.publisher.by;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.EventTracking;
import com.vungle.publisher.db.model.LoggedException;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.device.AudioHelper;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.g;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.k;
import com.vungle.publisher.o;
import com.vungle.publisher.p;
import com.vungle.publisher.util.ViewUtils;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class VideoFragment extends AdFragment implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private ViewGroup A;
    private Bitmap B;
    private Bitmap C;
    private AlertDialog G;
    private VideoEventListener H;
    private String I;
    private int J;
    private boolean K;
    private int L;
    private boolean M;
    private int O;
    com.vungle.publisher.a a;
    Video<?, ?, ?> b;
    ImageView c;
    ObjectAnimator d;
    ObjectAnimator e;
    TouchDelegate f;
    ObjectAnimator g;

    @Inject
    AlertDialogFactory h;

    @Inject
    BitmapFactory i;

    @Inject
    DisplayUtils j;

    @Inject
    EventBus k;

    @Inject
    Factory l;

    @Inject
    PrivacyButton.Factory m;

    @Inject
    ProgressBar.Factory n;

    @Inject
    MuteButton.Factory o;

    @Inject
    LoggedException.Factory p;

    @Inject
    bt q;

    @Inject
    ViewUtils r;

    @Inject
    VolumeChangeContentObserver s;

    @Inject
    VideoEventListener.Factory t;

    @Inject
    AudioHelper u;
    private ImageView v;
    private ProgressBar w;
    private MuteButton x;
    private RelativeLayout y;
    private VideoView z;
    private final TypeEvaluator<?> D = new ArgbEvaluator();
    private final Handler E = new Handler();
    private final Runnable F = new b();
    private AtomicBoolean N = new AtomicBoolean();

    @Override // com.vungle.publisher.display.view.AdFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "exception in onCreate", e);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RelativeLayout relativeLayout = new RelativeLayout(getActivity());
        this.A = relativeLayout;
        return relativeLayout;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0334  */
    @Override // android.support.v4.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        try {
            super.onActivityCreated(savedInstanceState);
            Factory.a(this, savedInstanceState);
            if (this.M) {
                this.k.a(new an());
            }
            FragmentActivity activity = getActivity();
            VideoEventListener.Factory factory = this.t;
            factory.a.a = this;
            this.H = factory.a;
            VideoView videoView = new VideoView(activity);
            this.z = videoView;
            bq bqVar = new bq(activity);
            this.v = bqVar;
            MuteButton.Factory factory2 = this.o;
            boolean zIsSoundEnabled = this.a.isSoundEnabled();
            MuteButton muteButton = new MuteButton(factory2.a, (byte) 0);
            muteButton.d = factory2.b.a("vg_mute_on.png");
            muteButton.e = factory2.b.a("vg_mute_off.png");
            muteButton.b = factory2.c;
            muteButton.a = zIsSoundEnabled;
            muteButton.c = factory2.d;
            muteButton.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.publisher.display.view.MuteButton.Factory.1
                final /* synthetic */ MuteButton a;

                AnonymousClass1() {
                    muteButton = muteButton;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Logger.d(Logger.AD_TAG, (muteButton.a() ? "" : "un") + "mute clicked");
                    MuteButton muteButton2 = muteButton;
                    boolean z = !muteButton2.a();
                    muteButton2.setAndCacheSoundEnabled(z);
                    if (z && muteButton2.b.b() == 0) {
                        muteButton2.setVolume((int) (0.4f * muteButton2.b.a()));
                    }
                    muteButton2.a(z);
                }
            });
            this.x = muteButton;
            PrivacyButton.Factory factory3 = this.m;
            PrivacyButton privacyButton = new PrivacyButton(activity);
            privacyButton.setGravity(16);
            bq bqVar2 = new bq(activity);
            ViewUtils.a(bqVar2, factory3.a.a("vg_privacy.png"));
            TextView textView = new TextView(activity);
            textView.setText("privacy");
            textView.setTextSize(16.0f);
            textView.setTextColor(-1);
            textView.setVisibility(8);
            textView.setPadding(10, 0, 10, 0);
            privacyButton.addView(textView);
            privacyButton.addView(bqVar2);
            privacyButton.a = factory3.b;
            privacyButton.c = textView;
            ProgressBar.Factory factory4 = this.n;
            ProgressBar progressBar = new ProgressBar(factory4.a, (byte) 0);
            ProgressBar.a(progressBar);
            progressBar.d = (int) factory4.b.a(2);
            this.w = progressBar;
            this.A.addView(videoView);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoView.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            layoutParams.addRule(13);
            RelativeLayout relativeLayout = new RelativeLayout(activity);
            this.A.addView(relativeLayout);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.addRule(10);
            relativeLayout.addView(bqVar);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) bqVar.getLayoutParams();
            layoutParams3.addRule(9);
            layoutParams3.addRule(15);
            ViewHelper.setAlpha(bqVar, 0.0f);
            relativeLayout.addView(privacyButton);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) privacyButton.getLayoutParams();
            layoutParams4.addRule(11);
            layoutParams4.addRule(15);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, progressBar.getScreenHeight());
            layoutParams5.addRule(12);
            this.A.addView(progressBar, layoutParams5);
            RelativeLayout relativeLayout2 = new RelativeLayout(activity);
            this.y = relativeLayout2;
            this.A.addView(relativeLayout2);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams();
            layoutParams6.width = -1;
            layoutParams6.addRule(2, 1);
            relativeLayout2.addView(muteButton);
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) muteButton.getLayoutParams();
            layoutParams7.addRule(11);
            layoutParams7.addRule(15);
            int iRound = Math.round(this.j.a(2));
            int iRound2 = Math.round(this.j.a(1));
            relativeLayout.setPadding(iRound, iRound2, iRound, iRound2);
            relativeLayout2.setPadding(iRound, iRound2, iRound, iRound2);
            this.v.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.x.setScaleType(ImageView.ScaleType.FIT_CENTER);
            Bitmap bitmapA = a("vg_close.png");
            if (bitmapA != null) {
                bqVar.setImageBitmap(bitmapA);
            }
            Logger.i(Logger.AD_TAG, "video play URI = " + this.b.i());
            videoView.setVideoURI(this.b.i());
            this.d = a(relativeLayout2);
            this.g = a(relativeLayout);
            if (Boolean.TRUE.equals(this.b.h)) {
                this.B = a("vg_cta.png");
                this.C = a("vg_cta_disabled.png");
                Integer num = this.b.f;
                Integer num2 = this.b.j;
                if (num == null) {
                    if (num2 != null) {
                        Logger.v(Logger.AD_TAG, "overriding cta enabled from null to " + num2);
                        num = num2;
                    } else {
                        num2 = num;
                        num = num2;
                    }
                } else if (num2 == null) {
                    Logger.v(Logger.AD_TAG, "overriding cta shown from null to " + num);
                    num2 = num;
                } else if (num2.intValue() > num.intValue()) {
                    Logger.v(Logger.AD_TAG, "overriding cta shown from " + num2 + " to " + num);
                    num2 = num;
                } else {
                    num2 = num;
                    num = num2;
                }
                Logger.d(Logger.AD_TAG, "cta shown at " + num + " seconds; enabled at " + num2 + " seconds");
                this.J = num2 == null ? 0 : num2.intValue();
                this.L = num == null ? 0 : num.intValue();
                final bq bqVar3 = new bq(getActivity());
                this.c = bqVar3;
                this.y.addView(bqVar3);
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) bqVar3.getLayoutParams();
                layoutParams8.addRule(9);
                layoutParams8.addRule(15);
                bqVar3.setScaleType(ImageView.ScaleType.FIT_CENTER);
                final Float f = this.b.e;
                if (f == null || f.floatValue() <= 1.0f) {
                    Logger.v(Logger.AD_TAG, "cta clickable area not scaled");
                } else {
                    bqVar3.post(new Runnable() { // from class: com.vungle.publisher.display.view.VideoFragment.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            float fSqrt = (float) Math.sqrt(f.floatValue());
                            int height = bqVar3.getHeight();
                            int width = bqVar3.getWidth();
                            int iRound3 = Math.round(height * fSqrt);
                            int iRound4 = Math.round(fSqrt * width);
                            Logger.v(Logger.AD_TAG, "scaling cta clickable area " + f + "x - width: " + width + " --> " + iRound4 + ", height: " + height + " --> " + iRound3);
                            Rect rect = new Rect();
                            bqVar3.getHitRect(rect);
                            rect.bottom = rect.top + iRound3;
                            rect.left = rect.right - iRound4;
                            VideoFragment.this.f = new TouchDelegate(rect, bqVar3);
                        }
                    });
                }
                if (Boolean.TRUE.equals(this.b.i)) {
                    ViewHelper.setAlpha(bqVar3, 0.0f);
                    bqVar3.setImageBitmap(this.B);
                    this.e = ObjectAnimator.ofFloat(bqVar3, "alpha", 0.0f, 1.0f);
                    this.e.setDuration(750L);
                } else {
                    d(this.L >= this.J);
                }
                bqVar3.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.publisher.display.view.VideoFragment.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (VideoFragment.this.K) {
                            Logger.d(Logger.AD_TAG, "cta overlay onClick");
                            bqVar3.setOnClickListener(null);
                            VideoFragment.this.b(false);
                            VideoFragment.this.k.a(new g(EventTracking.a.video_click));
                            return;
                        }
                        Logger.v(Logger.AD_TAG, "cta overlay onClick, but not enabled");
                    }
                });
            }
            bqVar.setOnClickListener(new a());
            videoView.setOnTouchListener(new View.OnTouchListener() { // from class: com.vungle.publisher.display.view.VideoFragment.1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    String str;
                    Logger.v(Logger.AD_TAG, "video onTouch");
                    if (VideoFragment.this.f != null) {
                        VideoFragment.this.f.onTouchEvent(motionEvent);
                    }
                    VideoFragment videoFragment = VideoFragment.this;
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    ObjectAnimator objectAnimator = videoFragment.g;
                    boolean z = (objectAnimator.getDuration() > 749L ? 1 : (objectAnimator.getDuration() == 749L ? 0 : -1)) == 0 ? false : true;
                    StringBuilder sb = new StringBuilder("toggle bar animation");
                    if (objectAnimator.isRunning()) {
                        str = " - reversing " + (z ? "hide" : "show") + " animation";
                    } else {
                        str = "";
                    }
                    Logger.v(Logger.AD_TAG, sb.append(str).toString());
                    objectAnimator.cancel();
                    float animatedFraction = 1.0f - objectAnimator.getAnimatedFraction();
                    if (z) {
                        videoFragment.a(videoFragment.d, animatedFraction);
                        videoFragment.a(videoFragment.g, animatedFraction);
                    } else {
                        videoFragment.b(750);
                    }
                    if (videoFragment.c == null || ViewHelper.getAlpha(videoFragment.c) != 0.0f || videoFragment.e == null || videoFragment.e.isRunning()) {
                        return true;
                    }
                    videoFragment.e.start();
                    return true;
                }
            });
            videoView.setOnCompletionListener(this);
            videoView.setOnErrorListener(this);
            videoView.setOnPreparedListener(this);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "exception in onActivityCreated", e);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        try {
            super.onSaveInstanceState(outState);
            outState.putString(FullScreenAdActivity.AD_ID_EXTRA_KEY, this.b.d());
            outState.putParcelable(FullScreenAdActivity.AD_CONFIG_EXTRA_KEY, (Parcelable) this.a);
            outState.putBoolean("adStarted", this.M);
        } catch (Exception e) {
            this.p.a(Logger.AD_TAG, "exception in onSaveInstanceState", e);
        }
    }

    private Bitmap a(String str) {
        try {
            return this.i.getBitmap(str);
        } catch (IOException e) {
            this.p.b(Logger.AD_TAG, "error loading " + str, e);
            return null;
        }
    }

    private static ObjectAnimator a(View view) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setPropertyName("backgroundColor");
        objectAnimator.setTarget(view);
        return objectAnimator;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        int duration = mediaPlayer.getDuration();
        Logger.d(Logger.AD_TAG, "video ready: duration " + duration + " ms");
        this.w.setMaxTimeMillis(duration);
        this.k.a(new o(duration));
        if (!this.q.a(getActivity())) {
            d();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        try {
            super.onResume();
            Logger.d(Logger.AD_TAG, "video onResume");
            this.O = 0;
            MuteButton muteButton = this.x;
            Logger.d(Logger.AD_TAG, "refresh mute state. is muted? " + (muteButton.a ? false : true));
            muteButton.setSoundEnabled(muteButton.a);
            muteButton.c.a(new ap(muteButton.b.c()));
            VolumeChangeContentObserver volumeChangeContentObserver = this.s;
            if (!volumeChangeContentObserver.b) {
                volumeChangeContentObserver.a = volumeChangeContentObserver.c.b();
                volumeChangeContentObserver.b = true;
            }
            volumeChangeContentObserver.f.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, volumeChangeContentObserver);
            this.H.register();
        } catch (Exception e) {
            this.p.a(Logger.AD_TAG, "error resuming VideoFragment", e);
            c();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        Logger.d(Logger.AD_TAG, "video onPause");
        try {
            super.onPause();
            e();
            VolumeChangeContentObserver volumeChangeContentObserver = this.s;
            volumeChangeContentObserver.f.getContentResolver().unregisterContentObserver(volumeChangeContentObserver);
            this.H.unregister();
            this.u.a(true);
            if (this.M) {
                this.k.a(new ad(this.z.getCurrentPosition()));
            }
        } catch (Exception e) {
            this.p.a(Logger.AD_TAG, "error in VideoFragment.onPause()", e);
            c();
        }
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final void a(boolean z) {
        try {
            super.a(z);
            if (z) {
                d();
            } else {
                e();
            }
        } catch (Exception e) {
            this.p.a(Logger.AD_TAG, "exception in onWindowFocusChanged", e);
        }
    }

    private void c() {
        this.E.removeCallbacks(this.F);
    }

    private void d() {
        boolean z = !this.M;
        this.M = true;
        if (!(this.G != null && this.G.isShowing())) {
            c(this.z.getCurrentPosition());
            this.z.requestFocus();
            this.z.start();
            b(2000);
            this.E.post(this.F);
            if (z) {
                this.k.a(new ah());
            }
        }
    }

    private void e() {
        this.z.pause();
        c();
    }

    final void b(boolean z) {
        c();
        int iC = c(z);
        this.k.a(z ? new k(iC) : new p(iC));
        this.M = false;
        this.O = 0;
        this.N.set(false);
    }

    final int c(boolean z) {
        int duration = z ? this.z.getDuration() : this.z.getCurrentPosition();
        int i = this.O;
        if (duration > i) {
            this.O = duration;
            return duration;
        }
        if (duration < i) {
            Logger.w(Logger.AD_TAG, "watched millis decreased from " + i + " --> " + duration);
        }
        return i;
    }

    final void b(int i) {
        a(this.d, i);
        a(this.g, i);
    }

    private void a(ObjectAnimator objectAnimator, int i) {
        a(objectAnimator, 1140850688, 0, i, 0.0f);
    }

    final void a(ObjectAnimator objectAnimator, float f) {
        a(objectAnimator, 0, 1140850688, 749, f);
    }

    private void a(ObjectAnimator objectAnimator, int i, int i2, int i3, float f) {
        Logger.v(Logger.AD_TAG, "animateBar startColor: " + i + ", endColor: " + i2 + ", durationMillis: " + i3 + ", startPercent: " + f);
        objectAnimator.setDuration(i3);
        objectAnimator.setIntValues(i, i2);
        objectAnimator.setCurrentPlayTime(Math.round(i3 * f));
        objectAnimator.setEvaluator(this.D);
        objectAnimator.start();
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final void a() {
        Logger.v(Logger.AD_TAG, "back button pressed");
        f(true);
    }

    private boolean f() {
        return ViewHelper.getAlpha(this.v) == 1.0f;
    }

    final void c(int i) {
        if (Boolean.TRUE.equals(this.b.h)) {
            if (Boolean.TRUE.equals(this.b.i)) {
                e(ViewHelper.getAlpha(this.c) >= 1.0f);
            } else {
                a(this.c, this.L, i);
                e(i >= this.J * 1000);
            }
        }
        Integer num = this.a.isIncentivized() ? this.b.k : this.b.l;
        if (num != null) {
            a(this.v, num.intValue(), i);
        }
    }

    private void d(boolean z) {
        boolean z2 = z && this.I != null;
        Logger.v(Logger.AD_TAG, "cta button " + (z2 ? "enabled" : "disabled"));
        this.K = z2;
        this.c.setImageBitmap(z2 ? this.B : this.C);
    }

    private void e(boolean z) {
        if (z != this.K) {
            d(z);
        }
    }

    private static void a(View view, int i, int i2) {
        float alpha = ViewHelper.getAlpha(view);
        int i3 = i * 1000;
        float f = 0.0f;
        int i4 = i3 - 750;
        if (i2 > i4) {
            f = i2 >= i3 ? 1.0f : (i2 - i4) / (i3 - i4);
        }
        if (f != alpha) {
            ViewHelper.setAlpha(view, f);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Logger.d(Logger.AD_TAG, "video.onCompletion");
        b(true);
        this.k.a(new am());
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int what, int extra) {
        Logger.e(Logger.AD_TAG, "video.onError: " + what + ", " + extra);
        b(false);
        this.k.a(new am());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        b(false);
        this.z.stopPlayback();
        this.k.a(new al());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(boolean z) {
        AlertDialog alertDialogCreate;
        if (z) {
            if (!(f() || this.a.isBackButtonImmediatelyEnabled())) {
                return;
            }
        } else if (!f()) {
            return;
        }
        if (this.N.compareAndSet(false, true)) {
            Logger.d(Logger.AD_TAG, "exiting video");
            if (this.a.isIncentivized()) {
                this.z.pause();
                if (this.G != null) {
                    alertDialogCreate = this.G;
                } else {
                    AlertDialogFactory alertDialogFactory = this.h;
                    FragmentActivity activity = getActivity();
                    com.vungle.publisher.a aVar = this.a;
                    AlertDialogFactory.a aVar2 = new AlertDialogFactory.a() { // from class: com.vungle.publisher.display.view.VideoFragment.4
                        @Override // com.vungle.publisher.display.view.AlertDialogFactory.a
                        public final void a() {
                            d();
                        }

                        @Override // com.vungle.publisher.display.view.AlertDialogFactory.a
                        public final void b() {
                            Logger.d(Logger.AD_TAG, "cancel video");
                            VideoFragment.this.g();
                        }

                        @Override // com.vungle.publisher.display.view.AlertDialogFactory.a
                        public final void c() {
                            d();
                        }

                        private void d() {
                            VideoFragment.this.z.start();
                            VideoFragment.this.N.set(false);
                        }
                    };
                    AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(activity, activity.getApplicationInfo().theme));
                    builder.setTitle(aVar.getIncentivizedCancelDialogTitle());
                    builder.setMessage(aVar.getIncentivizedCancelDialogBodyText());
                    builder.setPositiveButton(aVar.getIncentivizedCancelDialogKeepWatchingButtonText(), new DialogInterface.OnClickListener() { // from class: com.vungle.publisher.display.view.AlertDialogFactory.1
                        final /* synthetic */ a a;

                        AnonymousClass1() {
                            aVar = aVar2;
                        }

                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            Logger.d(Logger.AD_TAG, "positive click");
                            aVar.a();
                        }
                    });
                    builder.setNegativeButton(aVar.getIncentivizedCancelDialogCloseButtonText(), new DialogInterface.OnClickListener() { // from class: com.vungle.publisher.display.view.AlertDialogFactory.2
                        final /* synthetic */ a a;

                        AnonymousClass2() {
                            aVar = aVar2;
                        }

                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            Logger.d(Logger.AD_TAG, "negative click");
                            aVar.b();
                        }
                    });
                    builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.vungle.publisher.display.view.AlertDialogFactory.3
                        final /* synthetic */ a a;

                        AnonymousClass3() {
                            aVar = aVar2;
                        }

                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            Logger.d(Logger.AD_TAG, "cancel click");
                            aVar.c();
                        }
                    });
                    alertDialogCreate = builder.create();
                }
                this.G = alertDialogCreate;
                alertDialogCreate.show();
                return;
            }
            this.v.setOnClickListener(null);
            g();
        }
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final boolean a(int i) {
        if (i == 24 && this.u.b() == 0) {
            Logger.d(Logger.AD_TAG, "volume up - unmuting");
            this.u.a(true);
            return false;
        }
        return false;
    }

    /* JADX INFO: compiled from: vungle */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Logger.v(Logger.AD_TAG, "close clicked");
            VideoFragment.this.f(false);
        }
    }

    /* JADX INFO: compiled from: vungle */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                int iC = VideoFragment.this.c(false);
                VideoFragment.this.c(iC);
                VideoFragment.this.w.setCurrentTimeMillis(iC);
                VideoFragment.this.k.a(new ad(iC));
            } catch (Exception e) {
                Logger.w(Logger.AD_TAG, e);
            } finally {
                VideoFragment.this.E.postDelayed(this, 50L);
            }
        }
    }

    @Override // com.vungle.publisher.display.view.AdFragment
    public final String b() {
        return "videoFragment";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    static class VideoEventListener extends by {
        private VideoFragment a;

        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class Factory {

            @Inject
            VideoEventListener a;
        }

        @Inject
        public VideoEventListener() {
        }

        public void onEvent(aq event) {
            boolean z = true;
            MuteButton muteButton = this.a.x;
            boolean z2 = event.b != 0;
            if (event.a == 0) {
                if (event.b == 0) {
                    z = false;
                }
            } else if (event.b != 0) {
                z = false;
            }
            if (z) {
                Logger.d(Logger.AD_TAG, "volume change " + (z2 ? "un" : "") + "mute");
                muteButton.b();
                muteButton.a(z2);
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        public Provider<VideoFragment> a;

        Factory() {
        }

        public static VideoFragment a(VideoFragment videoFragment, Ad<?, ?, ?> ad, com.vungle.publisher.a aVar) {
            String strF = ad.f();
            Video<?, ?, ?> videoK = ad.k();
            if (videoK == null) {
                return null;
            }
            videoFragment.a = aVar;
            videoFragment.b = videoK;
            videoFragment.I = strF;
            return videoFragment;
        }

        public static void a(VideoFragment videoFragment, Bundle bundle) {
            if (bundle != null) {
                videoFragment.M = bundle.getBoolean("adStarted");
            }
        }

        public static VideoFragment a(FragmentActivity fragmentActivity) {
            return (VideoFragment) fragmentActivity.getSupportFragmentManager().findFragmentByTag("videoFragment");
        }
    }
}
