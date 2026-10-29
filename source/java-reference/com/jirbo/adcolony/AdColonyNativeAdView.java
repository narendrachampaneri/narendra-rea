package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.Display;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.inmobi.monetization.internal.Ad;
import com.inmobi.re.controller.JSController;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes.dex */
public class AdColonyNativeAdView extends FrameLayout implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    String L;
    AdColonyInterstitialAd M;
    AdColonyNativeAdListener N;
    AdColonyNativeAdMutedListener O;
    ADCImage P;
    ADCImage Q;
    ADCImage R;
    ImageView S;
    b T;
    View U;
    Bitmap V;
    ADCImage W;
    TextView a;
    n.ad aA;
    n.a aB;
    float aC;
    float aD;
    float aE;
    boolean aF;
    boolean aG;
    boolean aH;
    FrameLayout.LayoutParams aI;
    FrameLayout.LayoutParams aJ;
    FileInputStream aK;
    ImageView aa;
    boolean ab;
    Button ac;
    String ad;
    String ae;
    String af;
    MediaPlayer ag;
    Surface ah;
    String ai;
    String aj;
    String ak;
    String al;
    String am;
    String an;
    String ao;
    String ap;
    String aq;
    AdColonyIAPEngagement ar;
    int as;
    int at;
    int au;
    int av;
    int aw;
    int ax;
    int ay;
    int az;
    TextView b;
    TextView c;
    Activity d;
    String e;
    String f;
    ViewGroup g;
    SurfaceTexture h;
    int i;
    int j;
    int k;
    int l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    public AdColonyNativeAdView(Activity context, String zone_id, int width) {
        super(context);
        this.B = true;
        this.D = true;
        this.ab = false;
        this.ad = "";
        this.ae = "";
        this.af = "";
        this.ap = "";
        this.aq = "";
        this.ar = AdColonyIAPEngagement.NONE;
        this.av = -1;
        this.ax = -3355444;
        this.ay = -16777216;
        this.aC = 0.25f;
        this.aD = 0.25f;
        a(context, zone_id, width);
        a();
    }

    public AdColonyNativeAdView(Activity context, String zone_id, int width, int height) {
        super(context);
        this.B = true;
        this.D = true;
        this.ab = false;
        this.ad = "";
        this.ae = "";
        this.af = "";
        this.ap = "";
        this.aq = "";
        this.ar = AdColonyIAPEngagement.NONE;
        this.av = -1;
        this.ax = -3355444;
        this.ay = -16777216;
        this.aC = 0.25f;
        this.aD = 0.25f;
        a(context, zone_id, width, height);
        a(false);
    }

    AdColonyNativeAdView(Activity context, String zone_id, int width, boolean is_private) {
        super(context);
        this.B = true;
        this.D = true;
        this.ab = false;
        this.ad = "";
        this.ae = "";
        this.af = "";
        this.ap = "";
        this.aq = "";
        this.ar = AdColonyIAPEngagement.NONE;
        this.av = -1;
        this.ax = -3355444;
        this.ay = -16777216;
        this.aC = 0.25f;
        this.aD = 0.25f;
        this.G = is_private;
        a(context, zone_id, width);
        a();
    }

    void a(Activity activity, String str, int i) {
        a(activity, str, i, 0);
    }

    void a(Activity activity, String str, int i, int i2) {
        int width;
        int height;
        com.jirbo.adcolony.a.e();
        com.jirbo.adcolony.a.am = 0;
        this.d = activity;
        this.e = str;
        this.au = i;
        this.k = i;
        if (i2 != 0) {
            this.l = i2;
            this.av = i2;
            this.o = true;
        }
        this.r = true;
        this.aE = com.jirbo.adcolony.a.b().getResources().getDisplayMetrics().density;
        Display defaultDisplay = com.jirbo.adcolony.a.b().getWindowManager().getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 14) {
            Point point = new Point();
            defaultDisplay.getSize(point);
            width = point.x;
            height = point.y;
        } else {
            width = defaultDisplay.getWidth();
            height = defaultDisplay.getHeight();
        }
        if (width >= height) {
            width = height;
        }
        this.az = width;
        this.M = new AdColonyInterstitialAd(str);
        this.M.k = Ad.AD_TYPE_NATIVE;
        this.M.l = Ad.AD_TYPE_NATIVE;
        setBackgroundColor(-16777216);
        if (this.B) {
            if (!this.M.b(true) || this.M.j == null || this.M.j.A == null) {
                if (!this.G) {
                    l.d.b((Object) "AdColonyNativeAdView created while no ads are available, returning blank view.");
                    this.M.g = 5;
                    com.jirbo.adcolony.a.l.d.a(str, this.M);
                }
                this.aH = true;
                return;
            }
            this.aA = this.M.i;
            if (!this.G) {
                if (!this.G) {
                    com.jirbo.adcolony.a.aq.add(this);
                }
                this.M.i.c();
                if (!this.M.a(true)) {
                    this.aH = true;
                }
                this.M.j.A.i = true;
                com.jirbo.adcolony.a.l.d.a(str, this.M);
            }
        }
    }

    public boolean isEngagementEnabled() {
        return this.ab;
    }

    public String getEngagementLabel() {
        return this.ad == null ? "" : this.ad;
    }

    public String getEngagementCommand() {
        return this.ae == null ? "" : this.ae;
    }

    public String getEngagementType() {
        return this.af == null ? "" : this.af;
    }

    void a() {
        a(true);
    }

    void a(boolean z) {
        ViewGroup.LayoutParams layoutParams;
        this.z = false;
        this.q = false;
        setWillNotDraw(false);
        this.M.x = this;
        if (this.B) {
            if (com.jirbo.adcolony.a.l == null || com.jirbo.adcolony.a.l.a == null || this.M == null || this.M.h == null || (!com.jirbo.adcolony.a.l.a(this.M.h, true, false) && this.aH)) {
                this.u = true;
            } else {
                com.jirbo.adcolony.a.l.a.b(this.e);
            }
            this.f = com.jirbo.adcolony.a.j("video_filepath");
            this.ai = com.jirbo.adcolony.a.j("advertiser_name");
            this.aj = com.jirbo.adcolony.a.j("description");
            this.ak = com.jirbo.adcolony.a.j("title");
            this.al = com.jirbo.adcolony.a.j("poster_image");
            this.am = com.jirbo.adcolony.a.j("unmute");
            this.an = com.jirbo.adcolony.a.j("mute");
            this.ao = com.jirbo.adcolony.a.j("thumb_image");
            this.ab = com.jirbo.adcolony.a.i("native_engagement_enabled");
            this.ad = com.jirbo.adcolony.a.j("native_engagement_label");
            this.ae = com.jirbo.adcolony.a.j("native_engagement_command");
            this.af = com.jirbo.adcolony.a.j("native_engagement_type");
            this.J = com.jirbo.adcolony.a.i("v4iap_enabled");
            this.K = com.jirbo.adcolony.a.i("click_to_install");
            this.L = com.jirbo.adcolony.a.j("store_url");
            this.aq = com.jirbo.adcolony.a.ad;
            if (this.J) {
                this.ar = AdColonyIAPEngagement.AUTOMATIC;
            }
            this.ap = com.jirbo.adcolony.a.j("product_id");
            if (this.M.j == null || this.M.j.A == null) {
                this.y = true;
            } else {
                this.y = this.M.j.A.b;
            }
            if (this.aA != null) {
                this.aA.m();
            }
            if (this.M.j == null || this.M.j.A == null || !this.M.j.A.a || this.M.i == null) {
                com.jirbo.adcolony.a.am = 13;
                return;
            } else {
                this.s = true;
                if (this.G) {
                    return;
                }
            }
        } else if (Build.VERSION.SDK_INT < 14) {
            return;
        }
        if (this.B) {
            this.as = this.M.j.z.b;
            this.at = this.M.j.z.c;
            com.jirbo.adcolony.a.h();
            if (this.av == -1) {
                this.av = (int) (((double) this.at) * (((double) this.au) / ((double) this.as)));
                this.l = this.av;
            }
            if (!z && this.ab) {
                this.av -= this.av / 6;
            }
            float f = this.au / this.as;
            float f2 = this.av / this.at;
            float f3 = this.as / this.at;
            if (f > f2) {
                this.aG = true;
                this.au = (int) (this.av * f3);
            } else {
                this.aF = true;
                this.av = (int) (this.au / f3);
            }
            this.aJ = new FrameLayout.LayoutParams(this.au, this.av, 48);
            this.aI = new FrameLayout.LayoutParams(this.k, this.l, 48);
            if (this.ab && !z && this.aF) {
                this.aJ.setMargins(0, ((this.l - this.av) / 2) - (this.av / 10), 0, 0);
                this.aI.setMargins(0, ((this.l - this.av) / 2) - (this.av / 10), 0, (((this.l - this.av) / 2) - (this.av / 10)) * (-1));
            } else if (!z && this.aF) {
                this.aJ.setMargins(0, (this.l - this.av) / 2, 0, 0);
                this.aI.setMargins(0, (this.l - this.av) / 2, 0, ((this.l - this.av) / 2) * (-1));
            } else if (this.ab && !z && this.aG) {
                this.aJ.setMargins((this.k - this.au) / 2, 0, 0, 0);
                this.aI.setMargins((this.k - this.au) / 2, 0, ((this.k - this.au) / 2) * (-1), 0);
            } else if (!z && this.aG) {
                this.aJ.setMargins((this.k - this.au) / 2, 0, 0, 0);
                this.aI.setMargins((this.k - this.au) / 2, 0, ((this.k - this.au) / 2) * (-1), 0);
            }
            this.P = new ADCImage(this.al, true, false);
            this.P.a(1.0f / (((float) this.P.f) / ((float) this.au)) > 1.0f / (((float) this.P.g) / ((float) this.av)) ? 1.0f / (this.P.g / this.av) : 1.0f / (this.P.f / this.au), true);
            this.B = false;
        }
        if (this.ab) {
            this.ac = new Button(com.jirbo.adcolony.a.b());
            this.ac.setText(this.ad);
            this.ac.setGravity(17);
            this.ac.setTextSize((int) (18.0d * (((double) this.au) / ((double) this.az))));
            this.ac.setPadding(0, 0, 0, 0);
            this.ac.setBackgroundColor(this.ax);
            this.ac.setTextColor(this.ay);
            this.ac.setOnTouchListener(new View.OnTouchListener() { // from class: com.jirbo.adcolony.AdColonyNativeAdView.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View v, MotionEvent event) {
                    int action = event.getAction();
                    if (action == 0) {
                        float[] fArr = new float[3];
                        Color.colorToHSV(AdColonyNativeAdView.this.ax, fArr);
                        fArr[2] = fArr[2] * 0.8f;
                        AdColonyNativeAdView.this.ac.setBackgroundColor(Color.HSVToColor(fArr));
                    } else if (action == 3) {
                        AdColonyNativeAdView.this.ac.setBackgroundColor(AdColonyNativeAdView.this.ax);
                    } else if (action == 1) {
                        if (AdColonyNativeAdView.this.J) {
                            AdColonyNativeAdView.this.ar = AdColonyIAPEngagement.OVERLAY;
                            AdColonyNativeAdView.this.u = true;
                        } else {
                            if (AdColonyNativeAdView.this.af.equals(AnalyticAttribute.APP_INSTALL_ATTRIBUTE) || AdColonyNativeAdView.this.af.equals("url")) {
                                com.jirbo.adcolony.a.l.d.b("native_overlay_click", AdColonyNativeAdView.this.M);
                                try {
                                    com.jirbo.adcolony.a.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(AdColonyNativeAdView.this.ae)));
                                } catch (Exception e) {
                                    Toast.makeText(com.jirbo.adcolony.a.b(), "Unable to open store.", 0).show();
                                }
                            }
                            AdColonyNativeAdView.this.ac.setBackgroundColor(AdColonyNativeAdView.this.ax);
                        }
                    }
                    return true;
                }
            });
        }
        this.R = new ADCImage(this.am, true, false);
        this.Q = new ADCImage(this.an, true, false);
        this.W = new ADCImage(this.ao, true, false);
        this.W.a(1.0f / ((float) (((double) (this.W.f / this.au)) / ((((double) this.au) / 5.5d) / ((double) this.au)))), true);
        this.Q.a(this.aE / 2.0f, true);
        this.R.a(this.aE / 2.0f, true);
        this.T = new b(com.jirbo.adcolony.a.b());
        this.aa = new ImageView(com.jirbo.adcolony.a.b());
        this.S = new ImageView(com.jirbo.adcolony.a.b());
        this.aa.setImageBitmap(this.W.a);
        if (this.r) {
            this.S.setImageBitmap(this.Q.a);
        } else {
            this.S.setImageBitmap(this.R.a);
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.Q.f, this.Q.g, 48);
        layoutParams2.setMargins(this.k - this.Q.f, 0, 0, 0);
        this.S.setOnClickListener(new View.OnClickListener() { // from class: com.jirbo.adcolony.AdColonyNativeAdView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (AdColonyNativeAdView.this.r) {
                    if (AdColonyNativeAdView.this.O != null) {
                        AdColonyNativeAdView.this.O.onAdColonyNativeAdMuted(AdColonyNativeAdView.this, true);
                    }
                    AdColonyNativeAdView.this.a(true, true);
                    AdColonyNativeAdView.this.x = true;
                    return;
                }
                if (AdColonyNativeAdView.this.V == AdColonyNativeAdView.this.R.a) {
                    if (AdColonyNativeAdView.this.O != null) {
                        AdColonyNativeAdView.this.O.onAdColonyNativeAdMuted(AdColonyNativeAdView.this, false);
                    }
                    AdColonyNativeAdView.this.x = false;
                    AdColonyNativeAdView.this.a(false, true);
                }
            }
        });
        this.V = this.Q.a;
        if (this.u) {
            this.S.setVisibility(8);
        }
        if (this.v) {
            this.S.setVisibility(4);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            this.U = new a(com.jirbo.adcolony.a.b(), this.u);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            addView(this.U, this.aJ);
        }
        if (Build.VERSION.SDK_INT < 14) {
            this.u = true;
        }
        addView(this.T, this.aI);
        if (this.y && Build.VERSION.SDK_INT >= 14 && this.D) {
            addView(this.S, layoutParams2);
        }
        if (this.ab) {
            if (z) {
                layoutParams = new FrameLayout.LayoutParams(this.k, this.l / 5, 80);
            } else {
                layoutParams = new FrameLayout.LayoutParams(this.k, this.av / 5, 80);
            }
            addView(this.ac, layoutParams);
        }
    }

    public boolean isReady() {
        return (this.M.a(true) || !this.aH) && this.s && !this.F;
    }

    boolean b(boolean z) {
        return (this.M.a(true) || !this.aH) && AdColony.isZoneNative(this.e);
    }

    public int getNativeAdWidth() {
        return this.k;
    }

    public int getNativeAdHeight() {
        return (this.o || !this.ab) ? this.l : this.l + (this.l / 5);
    }

    public void setOverlayButtonColor(int color) {
        if (this.ab) {
            this.ac.setBackgroundColor(color);
        }
        this.ax = color;
    }

    public void setOverlayButtonTextColor(int color) {
        if (this.ab) {
            this.ac.setTextColor(color);
        }
        this.ay = color;
    }

    public void setOverlayButtonTypeface(Typeface tf, int style) {
        if (this.ab) {
            this.ac.setTypeface(tf, style);
        }
    }

    void a(boolean z, boolean z2) {
        if (z) {
            this.S.setImageBitmap(this.R.a);
            this.r = false;
            a(0.0f, z2);
            this.V = this.R.a;
            return;
        }
        if (!this.x && this.V == this.R.a) {
            this.S.setImageBitmap(this.Q.a);
            this.r = true;
            if (this.ag != null) {
                if (this.aD != 0.0d) {
                    a(this.aD, z2);
                } else {
                    a(0.25f, z2);
                }
            }
            this.V = this.Q.a;
        }
    }

    public void setMuted(boolean mute) {
        a(mute, false);
    }

    public void destroy() {
        l.c.b((Object) "[ADC] Native Ad Destroy called.");
        if (this.ah != null) {
            this.ah.release();
        }
        if (this.ag != null) {
            this.ag.release();
        }
        this.ag = null;
        this.M.j.A.i = false;
        com.jirbo.adcolony.a.aq.remove(this);
    }

    public ImageView getAdvertiserImage() {
        if (this.W == null) {
            this.W = new ADCImage(this.ao, true, false);
            this.W.a(this.aE / 2.0f, true);
        }
        if (this.aa == null) {
            this.aa = new ImageView(com.jirbo.adcolony.a.b());
            this.aa.setImageBitmap(this.W.a);
        }
        return this.aa;
    }

    public String getTitle() {
        return this.ak;
    }

    public String getAdvertiserName() {
        return this.ai;
    }

    public String getDescription() {
        return this.aj;
    }

    public boolean canceled() {
        return this.I;
    }

    public boolean iapEnabled() {
        return this.J;
    }

    public String iapProductID() {
        return this.ap;
    }

    public AdColonyIAPEngagement iapEngagementType() {
        return (this.M == null || this.M.z != AdColonyIAPEngagement.END_CARD) ? this.ar : AdColonyIAPEngagement.END_CARD;
    }

    public AdColonyNativeAdView withListener(AdColonyNativeAdListener listener) {
        this.N = listener;
        this.M.C = listener;
        return this;
    }

    public AdColonyNativeAdView withMutedListener(AdColonyNativeAdMutedListener mute_listener) {
        this.O = mute_listener;
        return this;
    }

    public void pause() {
        l.c.b((Object) "[ADC] Native Ad Pause called.");
        if (this.ag != null && !this.u && this.ag.isPlaying() && Build.VERSION.SDK_INT >= 14) {
            com.jirbo.adcolony.a.l.d.b("video_paused", this.M);
            this.v = true;
            this.ag.pause();
            this.T.setVisibility(0);
            this.S.setVisibility(4);
        }
    }

    public void resume() {
        l.c.b((Object) "[ADC] Native Ad Resume called.");
        if (this.ag != null && this.v && !this.u && Build.VERSION.SDK_INT >= 14) {
            com.jirbo.adcolony.a.l.d.b("video_resumed", this.M);
            this.v = false;
            this.ag.seekTo(this.M.r);
            this.ag.start();
            this.T.setVisibility(4);
            this.S.setVisibility(0);
        }
    }

    void c(boolean z) {
        if (this.ag != null && this.S != null) {
            if (z) {
                this.ag.setVolume(0.0f, 0.0f);
                this.S.setImageBitmap(this.R.a);
                this.V = this.R.a;
            } else {
                this.ag.setVolume(this.aD, this.aD);
                this.S.setImageBitmap(this.Q.a);
                this.V = this.Q.a;
            }
        }
    }

    void a(float f, boolean z) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.aD = f;
            if (this.ag == null || f < 0.0d || f > 1.0d) {
                if (f >= 0.0d && f <= 1.0d) {
                    this.aC = f;
                    return;
                }
                return;
            }
            if (!this.x) {
                this.ag.setVolume(f, f);
            }
            if (this.z) {
                if (this.V == this.R.a && f > 0.0d && !this.x) {
                    ADCData.g gVar = new ADCData.g();
                    gVar.b("user_action", z);
                    this.S.setImageBitmap(this.Q.a);
                    this.V = this.Q.a;
                    com.jirbo.adcolony.a.l.d.a("sound_unmute", gVar, this.M);
                    this.r = true;
                    return;
                }
                if (this.V == this.Q.a && f == 0.0d) {
                    ADCData.g gVar2 = new ADCData.g();
                    gVar2.b("user_action", z);
                    this.S.setImageBitmap(this.R.a);
                    this.V = this.R.a;
                    com.jirbo.adcolony.a.l.d.a("sound_mute", gVar2, this.M);
                    this.r = false;
                }
            }
        }
    }

    public void setVolume(float v) {
        a(v, false);
    }

    synchronized void b() {
        if ((this.u || this.ag == null || !this.ag.isPlaying()) && this.ag != null) {
            setVolume(this.aD);
            this.ag.start();
            com.jirbo.adcolony.a.l.a((AdColonyAd) this.M);
            this.M.s = true;
            if (this.N != null) {
                this.N.onAdColonyNativeAdStarted(false, this);
            }
        }
    }

    void c() {
        if (!this.u && this.ag != null && this.ag.isPlaying() && !this.v) {
            com.jirbo.adcolony.a.l.d.b("video_paused", this.M);
            this.ag.pause();
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer player) {
        l.c.b((Object) "[ADC] Native Ad onPrepared called.");
        this.z = true;
        if (this.V == null || this.Q.a == null) {
            this.T.setVisibility(0);
            this.S.setVisibility(8);
            this.u = true;
            this.ag = null;
            this.M.r = 0;
            return;
        }
        if (!this.r && this.V.equals(this.Q.a)) {
            c(true);
        } else {
            setVolume(this.aD);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer player) {
        try {
            this.aK.close();
        } catch (Exception e) {
        }
        this.T.setVisibility(0);
        this.S.setVisibility(8);
        this.M.k = Ad.AD_TYPE_NATIVE;
        this.M.l = Ad.AD_TYPE_NATIVE;
        this.M.s = true;
        this.u = true;
        if (this.ag != null) {
            this.ag.release();
        }
        this.ag = null;
        this.M.r = 0;
        ADCData.g gVar = new ADCData.g();
        gVar.b("ad_slot", com.jirbo.adcolony.a.l.e.j);
        gVar.b("replay", false);
        com.jirbo.adcolony.a.l.d.a("native_complete", gVar, this.M);
        this.M.j.r = false;
        if (this.N != null) {
            this.N.onAdColonyNativeAdFinished(false, this);
        }
        this.C = true;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer player, int what, int extra) {
        this.T.setVisibility(0);
        this.S.setVisibility(8);
        this.u = true;
        this.z = true;
        this.ag = null;
        this.M.r = 0;
        return true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.g != null) {
            Rect rect = new Rect();
            if (!this.g.hasFocus()) {
                this.g.requestFocus();
            }
            if (!this.u && this.ag != null) {
                this.aw = this.ag.getCurrentPosition();
            }
            if (this.aw != 0) {
                this.M.r = this.aw;
            }
            getLocalVisibleRect(rect);
            boolean z = rect.bottom - rect.top > getNativeAdHeight() / 2 && rect.right - rect.left > getNativeAdWidth() / 2;
            if ((!z && !this.n) || (this.n && (!z || (rect.bottom - rect.top < getNativeAdHeight() && rect.top != 0)))) {
                if (!this.u && this.ag != null && this.ag.isPlaying() && !this.v) {
                    l.c.b((Object) "[ADC] Scroll Pause");
                    com.jirbo.adcolony.a.l.d.b("video_paused", this.M);
                    this.ag.pause();
                    this.T.setVisibility(0);
                }
            } else if (!this.u && this.ag != null && this.ag.isPlaying()) {
                if (!this.z) {
                    canvas.drawARGB(255, 0, 0, 0);
                } else {
                    this.M.k = Ad.AD_TYPE_NATIVE;
                    this.M.l = Ad.AD_TYPE_NATIVE;
                    com.jirbo.adcolony.a.l.a(((double) this.ag.getCurrentPosition()) / ((double) this.ag.getDuration()), this.M);
                    if (!this.H) {
                        this.H = true;
                        com.jirbo.adcolony.a.l.a("native_start", "{\"ad_slot\":" + (com.jirbo.adcolony.a.l.e.j + 1) + ", \"replay\":false}", this.M);
                        this.M.j.r = true;
                        this.M.j.q = true;
                        com.jirbo.adcolony.a.h();
                        this.M.i.j.a(this.M.j.a);
                    }
                }
            } else if (!this.T.a) {
                canvas.drawARGB(255, 0, 0, 0);
            }
            if (this.A || this.u) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (Build.VERSION.SDK_INT >= 14) {
            return false;
        }
        if (event.getAction() == 1 && com.jirbo.adcolony.a.E && q.c()) {
            if (!this.K) {
                com.jirbo.adcolony.a.T = this.M;
                com.jirbo.adcolony.a.l.a.a(this.e, this.M.j);
                ADCVideo.a();
                this.M.u = this.C;
                this.M.t = true;
                this.M.k = Ad.AD_TYPE_NATIVE;
                this.M.l = JSController.FULL_SCREEN;
                com.jirbo.adcolony.a.E = false;
                com.jirbo.adcolony.a.l.d.b("video_expanded", this.M);
                if (this.N != null) {
                    this.N.onAdColonyNativeAdStarted(true, this);
                }
                if (com.jirbo.adcolony.a.m) {
                    l.a.b((Object) "Launching AdColonyOverlay");
                    com.jirbo.adcolony.a.b().startActivity(new Intent(com.jirbo.adcolony.a.b(), (Class<?>) AdColonyOverlay.class));
                } else {
                    l.a.b((Object) "Launching AdColonyFullscreen");
                    com.jirbo.adcolony.a.b().startActivity(new Intent(com.jirbo.adcolony.a.b(), (Class<?>) AdColonyFullscreen.class));
                }
                if (this.u) {
                    this.M.f = -1;
                    this.M.i.r.d++;
                    this.M.j.r = true;
                }
                this.u = true;
                this.C = true;
            } else {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.L));
                    if (com.jirbo.adcolony.a.P != null) {
                        com.jirbo.adcolony.a.b().startActivity(intent);
                    }
                } catch (Exception e) {
                    if (com.jirbo.adcolony.a.P != null) {
                        Toast.makeText(com.jirbo.adcolony.a.b(), "Unable to open store.", 0).show();
                    }
                }
            }
        }
        return true;
    }

    public void notifyAddedToListView() {
        if (!this.m) {
            this.m = true;
        } else {
            ((a) this.U).onSurfaceTextureAvailable(this.h, this.i, this.j);
        }
    }

    public void prepareForListView() {
        this.n = true;
    }

    /* JADX INFO: loaded from: classes2.dex */
    class a extends TextureView implements TextureView.SurfaceTextureListener {
        boolean a;
        boolean b;

        a(AdColonyNativeAdView adColonyNativeAdView, Context context) {
            this(context, false);
        }

        a(Context context, boolean z) {
            super(context);
            this.a = false;
            this.b = false;
            setSurfaceTextureListener(this);
            setWillNotDraw(false);
            setBackgroundColor(-16777216);
            this.a = z;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture texture, int w, int h) {
            if (texture == null) {
                AdColonyNativeAdView.this.u = true;
                AdColonyNativeAdView.this.S.setVisibility(8);
                return;
            }
            AdColonyNativeAdView.this.T.setVisibility(0);
            AdColonyNativeAdView.this.h = texture;
            if (!AdColonyNativeAdView.this.u && !this.a) {
                AdColonyNativeAdView.this.ah = new Surface(texture);
                if (AdColonyNativeAdView.this.ag != null) {
                    AdColonyNativeAdView.this.ag.release();
                }
                AdColonyNativeAdView.this.i = w;
                AdColonyNativeAdView.this.j = h;
                AdColonyNativeAdView.this.ag = new MediaPlayer();
                try {
                    AdColonyNativeAdView.this.aK = new FileInputStream(AdColonyNativeAdView.this.f);
                    AdColonyNativeAdView.this.ag.setDataSource(AdColonyNativeAdView.this.aK.getFD());
                    AdColonyNativeAdView.this.ag.setSurface(AdColonyNativeAdView.this.ah);
                    AdColonyNativeAdView.this.ag.setOnCompletionListener(AdColonyNativeAdView.this);
                    AdColonyNativeAdView.this.ag.setOnPreparedListener(AdColonyNativeAdView.this);
                    AdColonyNativeAdView.this.ag.setOnErrorListener(AdColonyNativeAdView.this);
                    AdColonyNativeAdView.this.ag.prepareAsync();
                    l.c.b((Object) "[ADC] Native Ad Prepare called.");
                    this.b = true;
                    Handler handler = new Handler();
                    Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.AdColonyNativeAdView.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!AdColonyNativeAdView.this.z && !AdColonyNativeAdView.this.A) {
                                a.this.b = false;
                                AdColonyNativeAdView.this.u = true;
                                AdColonyNativeAdView.this.S.setVisibility(8);
                            }
                        }
                    };
                    if (!this.b) {
                        handler.postDelayed(runnable, 1800L);
                    }
                } catch (Exception e) {
                    AdColonyNativeAdView.this.u = true;
                    AdColonyNativeAdView.this.S.setVisibility(8);
                }
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture texture, int w, int h) {
            l.c.b((Object) "[ADC] onSurfaceTextureSizeChanged");
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
            l.c.b((Object) "[ADC] Native surface destroyed");
            AdColonyNativeAdView.this.z = false;
            AdColonyNativeAdView.this.S.setVisibility(4);
            AdColonyNativeAdView.this.T.setVisibility(0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture texture) {
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent event) {
            int action = event.getAction();
            float x = event.getX();
            float y = event.getY();
            if (action == 1 && com.jirbo.adcolony.a.E && q.c() && (x <= (AdColonyNativeAdView.this.au - AdColonyNativeAdView.this.Q.f) + 8 || y >= AdColonyNativeAdView.this.Q.g + 8 || AdColonyNativeAdView.this.u || AdColonyNativeAdView.this.ag == null || !AdColonyNativeAdView.this.ag.isPlaying())) {
                com.jirbo.adcolony.a.T = AdColonyNativeAdView.this.M;
                com.jirbo.adcolony.a.l.a.a(AdColonyNativeAdView.this.e, AdColonyNativeAdView.this.M.j);
                ADCVideo.a();
                if (!AdColonyNativeAdView.this.K) {
                    AdColonyNativeAdView.this.M.k = Ad.AD_TYPE_NATIVE;
                    AdColonyNativeAdView.this.M.l = JSController.FULL_SCREEN;
                    AdColonyNativeAdView.this.M.t = true;
                    AdColonyNativeAdView.this.M.u = AdColonyNativeAdView.this.C;
                    if ((AdColonyNativeAdView.this.z || AdColonyNativeAdView.this.u) && q.c()) {
                        if (AdColonyNativeAdView.this.N != null) {
                            AdColonyNativeAdView.this.N.onAdColonyNativeAdStarted(true, AdColonyNativeAdView.this);
                        }
                        if (AdColonyNativeAdView.this.ag != null && AdColonyNativeAdView.this.ag.isPlaying()) {
                            ADCVideo.c = AdColonyNativeAdView.this.ag.getCurrentPosition();
                            AdColonyNativeAdView.this.M.q = AdColonyNativeAdView.this.M.p;
                            AdColonyNativeAdView.this.ag.pause();
                        } else {
                            AdColonyNativeAdView.this.M.q = 0.0d;
                            ADCVideo.c = 0;
                        }
                        com.jirbo.adcolony.a.E = false;
                        com.jirbo.adcolony.a.l.d.b("video_expanded", AdColonyNativeAdView.this.M);
                        if (com.jirbo.adcolony.a.m) {
                            l.a.b((Object) "Launching AdColonyOverlay");
                            com.jirbo.adcolony.a.b().startActivity(new Intent(com.jirbo.adcolony.a.b(), (Class<?>) AdColonyOverlay.class));
                        } else {
                            l.a.b((Object) "Launching AdColonyFullscreen");
                            com.jirbo.adcolony.a.b().startActivity(new Intent(com.jirbo.adcolony.a.b(), (Class<?>) AdColonyFullscreen.class));
                        }
                        if (AdColonyNativeAdView.this.u) {
                            AdColonyNativeAdView.this.M.i.r.d++;
                        }
                        AdColonyNativeAdView.this.u = true;
                        AdColonyNativeAdView.this.C = true;
                    }
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(AdColonyNativeAdView.this.L));
                        if (com.jirbo.adcolony.a.P != null) {
                            com.jirbo.adcolony.a.b().startActivity(intent);
                        }
                    } catch (Exception e) {
                        if (com.jirbo.adcolony.a.P != null) {
                            Toast.makeText(com.jirbo.adcolony.a.b(), "Unable to open store.", 0).show();
                        }
                    }
                }
            }
            return true;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b extends View {
        boolean a;

        public b(Context context) {
            super(context);
            setBackgroundColor(-16777216);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            AdColonyNativeAdView.this.g = (ViewGroup) getParent().getParent();
            Rect rect = new Rect();
            if (AdColonyNativeAdView.this.ag != null && !AdColonyNativeAdView.this.ag.isPlaying() && AdColonyNativeAdView.this.n) {
                this.a = false;
            }
            if (getLocalVisibleRect(rect) && Build.VERSION.SDK_INT >= 14 && AdColonyNativeAdView.this.z) {
                if ((!AdColonyNativeAdView.this.n || (AdColonyNativeAdView.this.n && (rect.top == 0 || rect.bottom - rect.top > AdColonyNativeAdView.this.getNativeAdHeight()))) && rect.bottom - rect.top > AdColonyNativeAdView.this.getNativeAdHeight() / 2 && rect.right - rect.left > AdColonyNativeAdView.this.getNativeAdWidth() / 2) {
                    if (this.a || AdColonyNativeAdView.this.u || AdColonyNativeAdView.this.ag == null || AdColonyNativeAdView.this.ag.isPlaying() || AdColonyNativeAdView.this.A || AdColonyNativeAdView.this.M.a(true) || !AdColonyNativeAdView.this.t) {
                    }
                    if (!AdColonyNativeAdView.this.t) {
                        l.c.b((Object) "[ADC] Native Ad Starting");
                        AdColonyNativeAdView.this.b();
                        AdColonyNativeAdView.this.t = true;
                        AdColonyNativeAdView.this.M.k = Ad.AD_TYPE_NATIVE;
                        AdColonyNativeAdView.this.M.l = Ad.AD_TYPE_NATIVE;
                    } else if (!AdColonyNativeAdView.this.v && AdColonyNativeAdView.this.ag != null && q.c() && !AdColonyNativeAdView.this.ag.isPlaying() && !com.jirbo.adcolony.a.B) {
                        l.c.b((Object) "[ADC] Native Ad Resuming");
                        com.jirbo.adcolony.a.l.d.b("video_resumed", AdColonyNativeAdView.this.M);
                        if (!AdColonyNativeAdView.this.r) {
                            AdColonyNativeAdView.this.c(true);
                        }
                        AdColonyNativeAdView.this.setVolume(AdColonyNativeAdView.this.aD);
                        AdColonyNativeAdView.this.ag.seekTo(AdColonyNativeAdView.this.M.r);
                        AdColonyNativeAdView.this.ag.start();
                    } else if (!AdColonyNativeAdView.this.u && !AdColonyNativeAdView.this.t && (!com.jirbo.adcolony.a.l.a(AdColonyNativeAdView.this.M.h, true, false) || !AdColonyNativeAdView.this.aH)) {
                        AdColonyNativeAdView.this.u = true;
                        setVisibility(0);
                        AdColonyNativeAdView.this.S.setVisibility(8);
                    }
                }
                this.a = true;
            } else {
                this.a = false;
            }
            if (!AdColonyNativeAdView.this.u && !q.c() && AdColonyNativeAdView.this.ag != null && !AdColonyNativeAdView.this.ag.isPlaying()) {
                setVisibility(0);
                AdColonyNativeAdView.this.S.setVisibility(8);
                AdColonyNativeAdView.this.u = true;
            }
            if (!AdColonyNativeAdView.this.u && AdColonyNativeAdView.this.ag != null && AdColonyNativeAdView.this.ag.isPlaying()) {
                setVisibility(4);
                AdColonyNativeAdView.this.S.setVisibility(0);
            } else if (AdColonyNativeAdView.this.u || AdColonyNativeAdView.this.v) {
                canvas.drawARGB(255, 0, 0, 0);
                AdColonyNativeAdView.this.S.setVisibility(8);
                AdColonyNativeAdView.this.P.a(canvas, (AdColonyNativeAdView.this.au - AdColonyNativeAdView.this.P.f) / 2, (AdColonyNativeAdView.this.av - AdColonyNativeAdView.this.P.g) / 2);
            }
            if (AdColonyNativeAdView.this.A || AdColonyNativeAdView.this.u) {
                return;
            }
            invalidate();
        }
    }
}
