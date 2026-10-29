package com.jirbo.adcolony;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.immersion.hapticmediasdk.HapticContentSDK;
import com.immersion.hapticmediasdk.HapticContentSDKFactory;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class ADCVideo extends Activity implements MediaPlayer.OnPreparedListener, ADCDownload.Listener, TraceFieldInterface {
    static int a;
    static int b;
    static int c;
    static boolean d;
    static boolean e;
    static boolean f;
    static boolean g;
    static boolean h;
    static boolean i;
    double A;
    boolean F;
    e G;
    ad H;
    AdColonyAd I;
    HapticContentSDK J;
    String K;
    boolean L;
    VideoView O;
    FrameLayout P;
    FrameLayout Q;
    FrameLayout R;
    ADCImage T;
    a U;
    FileInputStream V;
    PhoneStateListener W;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    double p;
    double q;
    long r;
    long s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    int z;
    boolean j = true;
    String B = "";
    String C = "";
    boolean D = true;
    boolean E = true;
    boolean M = true;
    String N = "Your purchase will begin shortly!";
    Rect S = new Rect();
    boolean X = false;
    boolean Y = false;

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

    static void a() {
        a = 0;
        d = false;
        e = false;
        g = false;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int i2 = 1;
        TraceMachine.startTracing("ADCVideo");
        try {
            TraceMachine.enterMethod(this._nr_trace, "ADCVideo#onCreate", null);
        } catch (NoSuchFieldError e2) {
            TraceMachine.enterMethod(null, "ADCVideo#onCreate", null);
        }
        com.jirbo.adcolony.a.ak = false;
        super.onCreate(bundle);
        this.I = com.jirbo.adcolony.a.T;
        if (this.I == null) {
            finish();
            TraceMachine.exitMethod();
            return;
        }
        this.L = com.jirbo.adcolony.a.i("haptics_enabled");
        this.K = com.jirbo.adcolony.a.j("haptics_filepath");
        this.N = com.jirbo.adcolony.a.j("in_progress");
        this.C = this.I.x == null ? com.jirbo.adcolony.a.j("video_filepath") : this.I.x.f;
        this.A = com.jirbo.adcolony.a.h("video_duration");
        if (this.L) {
            try {
                this.J = HapticContentSDKFactory.GetNewSDKInstance(0, this);
                this.J.openHaptics(this.K);
            } catch (Exception e3) {
                e3.printStackTrace();
                this.L = false;
            }
            if (this.J == null) {
                this.L = false;
            }
        }
        com.jirbo.adcolony.a.aa = !com.jirbo.adcolony.a.i("video_enabled");
        com.jirbo.adcolony.a.Z = !com.jirbo.adcolony.a.i("end_card_enabled");
        com.jirbo.adcolony.a.ab = com.jirbo.adcolony.a.i("load_timeout_enabled");
        com.jirbo.adcolony.a.ac = com.jirbo.adcolony.a.h("load_timeout");
        for (int i3 = 0; i3 < com.jirbo.adcolony.a.aq.size(); i3++) {
            if (com.jirbo.adcolony.a.aq.get(i3) != null) {
                AdColonyNativeAdView adColonyNativeAdView = com.jirbo.adcolony.a.aq.get(i3);
                if (adColonyNativeAdView.ag != null) {
                    adColonyNativeAdView.U.setVisibility(4);
                }
                if (adColonyNativeAdView.S != null) {
                    adColonyNativeAdView.S.setVisibility(4);
                }
            }
        }
        if (com.jirbo.adcolony.a.i("v4iap_enabled")) {
            this.I.z = AdColonyIAPEngagement.AUTOMATIC;
            this.I.v = true;
            this.I.n = com.jirbo.adcolony.a.j("product_id");
        }
        e = this.I.u;
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (com.jirbo.adcolony.a.m) {
            int i4 = getResources().getConfiguration().orientation;
            com.jirbo.adcolony.a.F = (i4 == 0 || i4 == 6 || i4 == 2) ? 6 : 7;
            if (Build.VERSION.SDK_INT < 10 || Build.MODEL.equals("Kindle Fire")) {
                if (Build.MODEL.equals("Kindle Fire")) {
                    getRequestedOrientation();
                    switch (((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation()) {
                        case 0:
                            break;
                        case 1:
                            i2 = 0;
                            break;
                        case 2:
                            i2 = 9;
                            break;
                        default:
                            i2 = 8;
                            break;
                    }
                } else {
                    i2 = i4;
                }
                com.jirbo.adcolony.a.F = i2;
                setRequestedOrientation(i2);
            } else {
                setRequestedOrientation(com.jirbo.adcolony.a.F);
            }
        } else if (Build.VERSION.SDK_INT >= 10) {
            setRequestedOrientation(6);
        } else {
            setRequestedOrientation(0);
        }
        setVolumeControlStream(3);
        this.G = new e(this);
        this.G.a(this);
        this.P = new FrameLayout(this);
        this.H = new ad(this);
        this.R = new FrameLayout(this);
        this.U = new a(this);
        this.T = new ADCImage(com.jirbo.adcolony.a.j("browser_icon"));
        AdColonyBrowser.A = false;
        com.jirbo.adcolony.a.U = this;
        com.jirbo.adcolony.a.V = this;
        TraceMachine.exitMethod();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mp) {
        if (this.j) {
            int duration = this.G.getDuration() / 1000;
            l.a.a("duration, actual_duration = ").a(this.A).a(", ").b(duration);
            if (!(this.A / ((double) duration) > 0.9d && this.A / ((double) duration) < 1.1d)) {
                finish();
            } else {
                com.jirbo.adcolony.a.l.a(this.I);
                this.j = false;
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() throws Exception {
        h = true;
        super.onResume();
        AdColony.resume(this);
        if (com.jirbo.adcolony.a.a()) {
            finish();
        }
        b();
        if (this.D) {
            this.D = false;
            if (!d) {
                if (this.H.Q) {
                    this.Q.addView(this.H.a);
                }
                if (this.H.Q) {
                    this.Q.setVisibility(4);
                }
                if (Build.MODEL.equals("Kindle Fire")) {
                    this.H.m = 20;
                }
                if (Build.MODEL.equals("SCH-I800")) {
                    this.H.m = 25;
                }
                this.P.addView(this.G, new FrameLayout.LayoutParams(this.x, this.y, 17));
                if (this.H.Q) {
                    this.P.addView(this.Q, new FrameLayout.LayoutParams(this.t, this.u - this.H.m, 17));
                }
                this.P.addView(this.H, new FrameLayout.LayoutParams(this.t, this.u, 17));
            }
        }
        if (g) {
            this.R.removeView(this.U);
            this.R.addView(this.U);
            setContentView(this.R);
        } else {
            setContentView(this.P);
            if (d) {
                this.r = System.currentTimeMillis();
            }
        }
        this.G.a((MediaPlayer.OnCompletionListener) this.H);
        this.G.a((MediaPlayer.OnErrorListener) this.H);
        try {
            this.V = new FileInputStream(this.C);
            this.G.a(this.V.getFD());
            if (!i) {
                onWindowFocusChanged(true);
            }
            if (com.jirbo.adcolony.a.aa) {
                this.H.a();
                this.H.d();
            }
        } catch (IOException e2) {
            com.jirbo.adcolony.a.e("Unable to play video: " + com.jirbo.adcolony.a.j("video_filepath"));
            this.H.c(true);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!com.jirbo.adcolony.a.ak) {
        }
        v.H = false;
        v.I = null;
        if (this.I != null && this.I.y != null && !this.I.w) {
            this.I.f = 1;
            this.I.a();
        }
    }

    boolean b() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.t = displayMetrics.widthPixels;
        this.u = displayMetrics.heightPixels;
        this.t = displayMetrics.widthPixels;
        this.u = displayMetrics.heightPixels;
        this.z = -16777216;
        getWindow().setBackgroundDrawable(new ColorDrawable(this.z));
        int i2 = this.t;
        int i3 = this.u;
        this.x = i2;
        this.y = i3;
        if (!com.jirbo.adcolony.a.m && this.x < this.y) {
            this.t = i3;
            this.u = i2;
            this.x = i3;
            this.y = i2;
        }
        if (!com.jirbo.adcolony.a.K) {
            return false;
        }
        com.jirbo.adcolony.a.K = false;
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean has_focus) throws Exception {
        if (has_focus) {
            i = false;
            if (!d && h) {
                if (this.G != null) {
                    if (c != 0) {
                        a = c;
                    }
                    c = 0;
                    this.G.seekTo(a);
                    if (com.jirbo.adcolony.a.m) {
                        Handler handler = new Handler();
                        Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.ADCVideo.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ADCVideo.this.G.setBackgroundColor(0);
                            }
                        };
                        this.G.setBackgroundColor(-16777216);
                        handler.postDelayed(runnable, 900L);
                    } else {
                        this.G.setBackgroundColor(0);
                    }
                    if (!v.H && !this.Y) {
                        this.H.S = false;
                        this.G.start();
                        this.F = true;
                        if (this.M) {
                            if (this.L) {
                                this.J.play();
                            }
                            new ADCDownload(com.jirbo.adcolony.a.l, this.I.x == null ? this.I.o : this.I.x.aq, this).b();
                            this.M = false;
                        } else if (this.L) {
                            this.J.resume();
                        }
                    }
                    this.H.requestFocus();
                    this.H.invalidate();
                    return;
                }
                return;
            }
            if (g) {
                if (this.O != null) {
                    this.O.seekTo(b);
                    this.O.start();
                    return;
                } else {
                    if (this.R != null) {
                        this.R.removeAllViews();
                    }
                    setContentView(this.P);
                    return;
                }
            }
            if (d) {
                this.H.invalidate();
                return;
            }
            return;
        }
        if (h && !this.Y) {
            if (this.L) {
                this.J.pause();
            }
            a = this.G.getCurrentPosition();
            this.G.pause();
            this.F = false;
        }
        i = true;
    }

    @Override // com.jirbo.adcolony.ADCDownload.Listener
    public void on_download_finished(ADCDownload download) {
        try {
            if (this.H.Q) {
                if (download.n == null) {
                    this.H.af = "";
                } else {
                    String strReplaceAll = download.n.replaceAll("<script (type=\"text/javascript\")?((\\s)*src=\"mraid.js\"){1}></script>", "<script type=\"text/javascript\">" + aa.a(com.jirbo.adcolony.a.ae, "") + "</script>");
                    if (this.H != null) {
                        this.H.af = strReplaceAll;
                        runOnUiThread(new Runnable() { // from class: com.jirbo.adcolony.ADCVideo.2
                            @Override // java.lang.Runnable
                            public void run() {
                                ADCVideo.this.H.c();
                            }
                        });
                    }
                }
            }
        } catch (OutOfMemoryError e2) {
            l.d.b((Object) "OutOfMemoryError - disabling AdColony.");
            this.H.c(true);
            AdColony.disable();
        }
    }

    @Override // android.app.Activity
    public void onPause() throws Exception {
        h = false;
        if (g) {
            if (this.O != null) {
                b = this.O.getCurrentPosition();
                this.O.stopPlayback();
            }
        } else {
            b = 0;
        }
        if (d) {
            View view = new View(this);
            view.setBackgroundColor(-16777216);
            setContentView(view);
            this.s = System.currentTimeMillis();
            if (!isFinishing()) {
                this.q += (this.s - this.r) / 1000.0d;
            }
        }
        if (this.G != null && !this.Y) {
            if (this.G.getCurrentPosition() != 0) {
                a = this.G.getCurrentPosition();
            }
            this.G.a();
            this.F = false;
            this.G.setBackgroundColor(-16777216);
            if (this.L) {
                this.J.pause();
            }
        } else {
            a = 0;
        }
        this.H.A = true;
        this.H.I = false;
        this.H.H = false;
        this.H.J = false;
        this.H.u = 0;
        this.H.t = 0;
        this.H.invalidate();
        super.onPause();
        AdColony.pause();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keycode, KeyEvent event) {
        if (v.I != null && v.I.onKeyDown(keycode, event)) {
            return true;
        }
        if (keycode == 4) {
            if (d) {
                if (g) {
                    this.O.stopPlayback();
                    g = false;
                    this.R.removeAllViews();
                    setContentView(this.P);
                } else if (this.H != null && this.H.t == 0) {
                    com.jirbo.adcolony.a.ak = true;
                    this.H.g();
                }
            } else if (this.H != null && v.I != null) {
                Iterator<ADCImage> it = v.I.o.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                v.I = null;
                v.H = false;
                this.G.start();
                this.F = true;
            } else if (this.H != null && this.H.M && this.H.O) {
                com.jirbo.adcolony.a.ak = true;
                this.H.h();
            }
            return true;
        }
        if (keycode == 82) {
            return true;
        }
        return super.onKeyUp(keycode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keycode, KeyEvent event) {
        if (keycode == 4) {
            return true;
        }
        return super.onKeyDown(keycode, event);
    }

    void a(String str) {
        this.B = str;
        g = true;
        this.O = new VideoView(this);
        this.O.setVideoURI(Uri.parse(str));
        new MediaController(this).setMediaPlayer(this.O);
        this.O.setLayoutParams(new FrameLayout.LayoutParams(this.t, this.u, 17));
        this.R.addView(this.O);
        this.R.addView(this.U);
        setContentView(this.R);
        this.O.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.jirbo.adcolony.ADCVideo.3
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer media_player) {
                ADCVideo.this.setContentView(ADCVideo.this.P);
                ADCVideo.this.R.removeAllViews();
                ADCVideo.g = false;
            }
        });
        this.O.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.jirbo.adcolony.ADCVideo.4
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer media_player) {
                ADCVideo.this.R.removeViewAt(1);
            }
        });
        this.O.start();
    }

    class a extends View {
        Rect a;

        public a(Activity activity) {
            super(activity);
            this.a = new Rect();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            canvas.drawARGB(255, 0, 0, 0);
            getDrawingRect(this.a);
            ADCVideo.this.T.a(canvas, (this.a.width() - ADCVideo.this.T.f) / 2, (this.a.height() - ADCVideo.this.T.g) / 2);
            invalidate();
        }
    }
}
