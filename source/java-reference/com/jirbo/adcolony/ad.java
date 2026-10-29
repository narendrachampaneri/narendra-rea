package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.amazon.ags.constants.OverlaySize;
import com.amazon.device.ads.WebRequest;
import com.immersion.hapticmediasdk.HapticContentSDKFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.mopub.mobileads.resource.DrawableConstants;

/* JADX INFO: loaded from: classes.dex */
class ad extends View implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
    static float[] aB = new float[80];
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
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    boolean P;
    boolean Q;
    boolean R;
    boolean S;
    boolean T;
    boolean U;
    boolean V;
    Canvas W;
    WebView a;
    String[] aA;
    float aC;
    float aD;
    float aE;
    float aF;
    float aG;
    float aH;
    float aI;
    Paint aJ;
    RectF aK;
    b aL;
    Handler aM;
    String aa;
    String ab;
    String ac;
    String ad;
    String ae;
    String af;
    aa.b ag;
    Paint ah;
    Paint ai;
    Paint aj;
    Paint ak;
    Rect al;
    ADCImage am;
    ADCImage an;
    ADCImage ao;
    ADCImage ap;
    ADCImage aq;
    ADCImage ar;
    ADCImage as;
    ADCImage at;
    ADCImage au;
    ADCImage av;
    ADCImage aw;
    ADCImage[] ax;
    ADCImage[] ay;
    m az;
    WebView b;
    View c;
    ADCVideo d;
    double e;
    double f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    long v;
    long w;
    float x;
    boolean y;
    boolean z;

    ad(ADCVideo aDCVideo) {
        super(aDCVideo);
        this.e = 1.0d;
        this.f = 1.0d;
        this.g = 99;
        this.h = 0;
        this.y = true;
        this.z = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.aa = com.jirbo.adcolony.a.l.a.b;
        this.ah = new Paint();
        this.ai = new Paint(1);
        this.aj = new Paint(1);
        this.ak = new Paint(1);
        this.al = new Rect();
        this.ax = new ADCImage[4];
        this.ay = new ADCImage[4];
        this.aA = new String[4];
        this.aJ = new Paint(1);
        this.aK = new RectF();
        this.aL = new b();
        this.aM = new Handler() { // from class: com.jirbo.adcolony.ad.2
            @Override // android.os.Handler
            public void handleMessage(Message m) throws Exception {
                if (!ad.this.d.isFinishing() && ad.this.d.G != null) {
                    ad.this.a(m.what);
                }
            }
        };
        this.d = aDCVideo;
        this.M = com.jirbo.adcolony.a.l.a.t;
        if (com.jirbo.adcolony.a.T != null) {
            this.M |= com.jirbo.adcolony.a.T.j.z.l.a;
            com.jirbo.adcolony.a.T.p = com.jirbo.adcolony.a.T.q;
        }
        this.x = aDCVideo.getResources().getDisplayMetrics().density;
        this.Q = com.jirbo.adcolony.a.Y;
        if (com.jirbo.adcolony.a.ad != null && com.jirbo.adcolony.a.e != null) {
            int iIndexOf = com.jirbo.adcolony.a.ad.indexOf("#");
            com.jirbo.adcolony.a.ad = com.jirbo.adcolony.a.e + (iIndexOf >= 0 ? com.jirbo.adcolony.a.ad.substring(iIndexOf) : "");
        }
        aDCVideo.I.o = com.jirbo.adcolony.a.ad;
        l.a.a("DEC URL = ").b((Object) aDCVideo.I.o);
        if (com.jirbo.adcolony.a.T != null && com.jirbo.adcolony.a.T.j.y.d) {
            this.N = !this.Q;
        }
        if (this.N) {
            this.am = new ADCImage(com.jirbo.adcolony.a.j("end_card_filepath"));
            this.n = this.am.f;
            this.o = this.am.g;
            if (this.n == 0) {
                this.n = 480;
            }
            if (this.o == 0) {
                this.o = OverlaySize.TOAST_WIDTH_PIXELS;
            }
            this.ax[0] = new ADCImage(com.jirbo.adcolony.a.j("info_image_normal"));
            this.ax[1] = new ADCImage(com.jirbo.adcolony.a.j("download_image_normal"));
            this.ax[2] = new ADCImage(com.jirbo.adcolony.a.j("replay_image_normal"));
            this.ax[3] = new ADCImage(com.jirbo.adcolony.a.j("continue_image_normal"));
            this.ay[0] = new ADCImage(com.jirbo.adcolony.a.j("info_image_down"), true);
            this.ay[1] = new ADCImage(com.jirbo.adcolony.a.j("download_image_down"), true);
            this.ay[2] = new ADCImage(com.jirbo.adcolony.a.j("replay_image_down"), true);
            this.ay[3] = new ADCImage(com.jirbo.adcolony.a.j("continue_image_down"), true);
            this.aA[0] = "Info";
            this.aA[1] = "Download";
            this.aA[2] = "Replay";
            this.aA[3] = "Continue";
        } else if (this.Q) {
            this.ar = new ADCImage(com.jirbo.adcolony.a.j("reload_image_normal"));
            this.ap = new ADCImage(com.jirbo.adcolony.a.j("close_image_normal"));
            this.aq = new ADCImage(com.jirbo.adcolony.a.j("close_image_down"));
            this.as = new ADCImage(com.jirbo.adcolony.a.j("reload_image_down"));
            this.av = new ADCImage(com.jirbo.adcolony.a.j("browser_icon"));
            this.c = new a(aDCVideo);
            b();
        }
        if (this.M) {
            this.an = new ADCImage(com.jirbo.adcolony.a.j("skip_video_image_normal"));
            this.ao = new ADCImage(com.jirbo.adcolony.a.j("skip_video_image_down"));
            this.p = com.jirbo.adcolony.a.h("skip_delay") * 1000;
        }
        this.aJ.setStyle(Paint.Style.STROKE);
        float f = 2.0f * aDCVideo.getResources().getDisplayMetrics().density;
        if ((f > 6.0f ? 6.0f : f) < 4.0f) {
        }
        this.aJ.setStrokeWidth(2.0f * aDCVideo.getResources().getDisplayMetrics().density);
        this.aJ.setColor(-3355444);
        this.S = false;
        this.L = false;
        this.T = false;
        if (com.jirbo.adcolony.a.T != null) {
            this.L = com.jirbo.adcolony.a.T.j.z.m.a;
            this.T = com.jirbo.adcolony.a.i("image_overlay_enabled");
        }
        if (this.L) {
            this.at = new ADCImage(com.jirbo.adcolony.a.j("engagement_image_normal"));
            this.au = new ADCImage(com.jirbo.adcolony.a.j("engagement_image_down"));
            this.ad = com.jirbo.adcolony.a.T.j.z.m.j;
            this.ab = com.jirbo.adcolony.a.T.j.z.m.l;
            this.ac = com.jirbo.adcolony.a.T.j.z.m.o;
            this.r = com.jirbo.adcolony.a.T.j.z.m.c;
            this.q = com.jirbo.adcolony.a.h("engagement_delay") * 1000;
            if (this.ab.equals("")) {
                this.ab = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
            }
            if (!this.ac.equals("")) {
                this.G = true;
            }
            if (this.G) {
                this.b = new WebView(aDCVideo);
                this.b.setBackgroundColor(0);
            }
            if (this.at == null || this.au == null) {
                this.L = false;
            }
        }
        if (this.T) {
            this.aw = new ADCImage(com.jirbo.adcolony.a.j("image_overlay_filepath"));
            this.aw.a(AdColony.isTablet() ? (((double) this.r) * (((double) this.x) / 1.0d)) / ((double) this.aw.g) : (((double) this.r) * (((double) this.x) / 0.75d)) / ((double) this.aw.g));
        }
        if (ADCVideo.d) {
            f();
        }
        this.ah.setColor(-1);
        this.aj.setTextSize(24.0f);
        this.aj.setColor(-16777216);
        this.ai.setColor(-3355444);
        this.ai.setTextSize(20.0f);
        this.ai.setTextAlign(Paint.Align.CENTER);
        this.ak.setTextSize(20.0f);
        this.ak.setColor(-1);
        try {
            getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
        } catch (Exception e) {
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (!this.F) {
            a();
            this.W = canvas;
            if (!this.O && this.M) {
                this.O = this.d.G.getCurrentPosition() > this.p;
            }
            if (!this.P && this.L) {
                this.P = this.d.G.getCurrentPosition() > this.q;
            }
            ADCVideo aDCVideo = this.d;
            if (ADCVideo.d && this.N) {
                canvas.drawARGB((this.d.z >> 24) & 255, 0, 0, 0);
                this.am.a(canvas, (this.d.t - this.am.f) / 2, (this.d.u - this.am.g) / 2);
                int iC = this.am.c() + ((int) (186.0d * this.e));
                int iD = this.am.d() + ((int) (470.0d * this.e));
                for (int i = 0; i < this.ax.length; i++) {
                    if (this.t == i + 1 || (this.u == i + 1 && !this.A && this.u != 0)) {
                        this.ay[i].a(this.e);
                        this.ay[i].a(canvas, iC, iD);
                        iC = (int) (((double) iC) + (((double) 157.0f) * this.e));
                    } else if (this.A || i + 1 != this.u) {
                        this.ax[i].a(this.e);
                        this.ax[i].a(canvas, iC, iD);
                        iC = (int) (((double) iC) + (((double) 157.0f) * this.e));
                    }
                    this.ai.setColor(-1);
                    this.ai.clearShadowLayer();
                    canvas.drawText(this.aA[i], this.ax[i].c() + (this.ax[i].f / 2), this.ax[i].d() + this.ax[i].g, this.ai);
                }
                return;
            }
            ADCVideo aDCVideo2 = this.d;
            if (ADCVideo.d && this.Q) {
                this.ap.a(this.f);
                this.aq.a(this.f);
                this.ar.a(this.f);
                this.as.a(this.f);
                this.i = (com.jirbo.adcolony.a.m || this.i == 0) ? this.d.t - this.ap.f : this.i;
                this.j = 0;
                this.k = 0;
                this.l = 0;
                if (this.H) {
                    this.aq.a(canvas, this.i, this.j);
                } else {
                    this.ap.a(canvas, this.i, this.j);
                }
                if (this.I) {
                    this.as.a(canvas, this.k, this.l);
                } else {
                    this.ar.a(canvas, this.k, this.l);
                }
                j();
                return;
            }
            if (this.d.G != null) {
                com.jirbo.adcolony.a.l.a(((double) this.d.G.getCurrentPosition()) / ((double) this.d.G.getDuration()), this.d.I);
                if (this.d.L) {
                    this.d.J.update(this.d.G.getCurrentPosition());
                }
                int currentPosition = this.d.G.getCurrentPosition();
                int i2 = ((this.s - currentPosition) + 999) / 1000;
                int i3 = (this.S && i2 == 1) ? 0 : i2;
                if (i3 == 0) {
                    this.S = true;
                }
                if (currentPosition >= 500) {
                    if (this.B) {
                        this.aD = (float) (360.0d / (((double) this.s) / 1000.0d));
                        this.B = false;
                        Rect rect = new Rect();
                        this.ai.getTextBounds("0123456789", 0, 9, rect);
                        this.aG = rect.height();
                    }
                    this.aE = getWidth();
                    this.aF = getHeight();
                    this.aH = this.aG;
                    this.aI = (this.d.u - this.aG) - this.m;
                    this.aK.set(this.aH - (this.aG / 2.0f), this.aI - (2.0f * this.aG), this.aH + (2.0f * this.aG), this.aI + (this.aG / 2.0f));
                    this.aJ.setShadowLayer((int) (4.0d * this.e), 0.0f, 0.0f, -16777216);
                    this.aC = (float) (((((double) this.s) / 1000.0d) - (((double) currentPosition) / 1000.0d)) * ((double) this.aD));
                    canvas.drawArc(this.aK, 270.0f, this.aC, false, this.aJ);
                    ADCVideo aDCVideo3 = this.d;
                    if (!ADCVideo.d) {
                        this.ai.setColor(-3355444);
                        this.ai.setShadowLayer((int) (2.0d * this.e), 0.0f, 0.0f, -16777216);
                        this.ai.setTextAlign(Paint.Align.CENTER);
                        this.ai.setLinearText(true);
                        canvas.drawText("" + i3, this.aK.centerX(), (float) (((double) this.aK.centerY()) + (((double) this.ai.getFontMetrics().bottom) * 1.35d)), this.ai);
                    }
                    if (this.M) {
                        ADCVideo aDCVideo4 = this.d;
                        if (!ADCVideo.d && this.O) {
                            if (this.t == 10) {
                                this.ao.a(canvas, this.d.t - this.ao.f, (int) (this.e * 4.0d));
                            } else {
                                this.an.a(canvas, this.d.t - this.an.f, (int) (this.e * 4.0d));
                            }
                        }
                    }
                    if (this.L && this.P) {
                        if (!this.G && !this.T) {
                            if (this.J) {
                                this.au.c((int) ((this.d.t - this.au.f) - (this.aG / 2.0f)), ((this.d.u - this.au.g) - this.m) - ((int) (this.aG / 2.0f)));
                                this.au.a(canvas);
                            } else {
                                this.at.c((int) ((this.d.t - this.at.f) - (this.aG / 2.0f)), ((this.d.u - this.at.g) - this.m) - ((int) (this.aG / 2.0f)));
                                this.at.a(canvas);
                            }
                            this.aj.setTextAlign(Paint.Align.CENTER);
                            canvas.drawText(this.ab, this.at.e.centerX(), (float) (((double) this.at.e.centerY()) + (((double) this.aj.getFontMetrics().bottom) * 1.35d)), this.aj);
                        } else if (!this.G && this.T) {
                            this.aw.c((int) ((this.d.t - this.aw.f) - (this.aG / 2.0f)), ((this.d.u - this.aw.g) - this.m) - ((int) (this.aG / 2.0f)));
                            this.aw.a(canvas);
                        }
                    }
                }
                if (v.I != null) {
                    v.I.onDraw(canvas);
                }
            }
            ADCVideo aDCVideo5 = this.d;
            if (ADCVideo.h) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        this.m = this.d.u - h;
        if (Build.MODEL.equals("Kindle Fire")) {
            this.m = 20;
        }
        if (Build.MODEL.equals("SCH-I800")) {
            this.m = 25;
        }
        if (Build.MODEL.equals("SHW-M380K") || Build.MODEL.equals("SHW-M380S") || Build.MODEL.equals("SHW-M380W")) {
            this.m = 40;
        }
    }

    void a(int i) throws Exception {
        try {
            if (this.C || i == 10) {
                this.C = false;
                switch (i) {
                    case 1:
                        this.t = 0;
                        com.jirbo.adcolony.a.a("info", "{\"ad_slot\":" + com.jirbo.adcolony.a.T.i.r.c + "}", this.d.I);
                        String strJ = com.jirbo.adcolony.a.j("info_url");
                        l.b.a("INFO ").b((Object) strJ);
                        if (strJ.startsWith("market:") || strJ.startsWith("amzn:")) {
                            this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(strJ)));
                        } else {
                            AdColonyBrowser.url = strJ;
                            this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                        }
                        break;
                    case 2:
                        this.t = 0;
                        com.jirbo.adcolony.a.a(AdTrackerConstants.GOAL_DOWNLOAD, "{\"ad_slot\":" + com.jirbo.adcolony.a.T.i.r.c + "}", this.d.I);
                        String strJ2 = com.jirbo.adcolony.a.j("download_url");
                        l.b.a("DOWNLOAD ").b((Object) strJ2);
                        if (strJ2.startsWith("market:") || strJ2.startsWith("amzn:")) {
                            this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(strJ2)));
                        } else {
                            AdColonyBrowser.url = strJ2;
                            this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                        }
                        break;
                    case 3:
                        this.t = 0;
                        i();
                        invalidate();
                        break;
                    case 4:
                        this.t = 0;
                        this.d.G.a();
                        g();
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    default:
                        this.t = 0;
                        break;
                    case 10:
                        this.t = 0;
                        h();
                        break;
                }
                new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.ad.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ad.this.C = true;
                    }
                }, 1500L);
            }
        } catch (RuntimeException e) {
            this.C = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int iA;
        int action = event.getAction();
        if (v.I != null) {
            v.I.onTouchEvent(event);
            return true;
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (action == 0) {
            ADCVideo aDCVideo = this.d;
            if (ADCVideo.d && this.Q) {
                if (a(this.ap, x, y)) {
                    this.H = true;
                    invalidate();
                    return true;
                }
                if (!a(this.ar, x, y)) {
                    return false;
                }
                this.I = true;
                invalidate();
                return true;
            }
            ADCVideo aDCVideo2 = this.d;
            if (ADCVideo.d && this.N) {
                x = (int) (((double) (event.getX() - this.am.c())) / (this.e * 2.0d));
                y = (int) (((double) (event.getY() - this.am.d())) / (this.e * 2.0d));
                if (this.t == 0 && y >= 235 && y < 305) {
                    int iA2 = a(x, y);
                    this.t = iA2;
                    this.u = iA2;
                    this.A = false;
                    invalidate();
                }
            }
            if (this.M && this.O && this.d.G != null && a(this.an, x, y)) {
                this.t = 10;
                this.u = this.t;
                this.A = false;
                invalidate();
                return true;
            }
            if (this.L && this.P && (a(this.at, x, y) || a(this.aw, x, y))) {
                this.J = true;
                invalidate();
                return true;
            }
        } else {
            if (action == 1) {
                ADCVideo aDCVideo3 = this.d;
                if (ADCVideo.d && this.Q) {
                    if (a(this.ap, x, y) && this.H) {
                        this.t = 4;
                        if (this.a != null) {
                            this.a.clearCache(true);
                        }
                        this.aM.sendMessageDelayed(this.aM.obtainMessage(this.t), 250L);
                        return true;
                    }
                    if (a(this.ar, x, y) && this.I) {
                        this.t = 3;
                        if (this.a != null) {
                            this.a.clearCache(true);
                        }
                        this.aM.sendMessageDelayed(this.aM.obtainMessage(this.t), 250L);
                        return true;
                    }
                }
                ADCVideo aDCVideo4 = this.d;
                if (ADCVideo.d && this.N) {
                    x = (int) (((double) (event.getX() - this.am.c())) / (this.e * 2.0d));
                    y = (int) (((double) (event.getY() - this.am.d())) / (this.e * 2.0d));
                    if (!this.A && y >= 235 && y < 305 && (iA = a(x, y)) > 0 && iA == this.u) {
                        this.aM.sendMessageDelayed(this.aM.obtainMessage(iA), 250L);
                    }
                }
                if (this.M && this.O && this.d.G != null && a(this.an, x, y)) {
                    this.t = 10;
                    this.A = true;
                    this.u = this.t;
                    this.aM.sendMessageDelayed(this.aM.obtainMessage(this.t), 250L);
                    return true;
                }
                if (this.L && this.P && (a(this.at, x, y) || a(this.aw, x, y))) {
                    this.J = false;
                    if (this.ad.startsWith("market:") || this.ad.startsWith("amzn:")) {
                        this.d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.ad)));
                    } else if (this.d.I.j.B != null && this.d.I.j.B.c) {
                        this.ae = this.d.I.n;
                        this.d.I.z = AdColonyIAPEngagement.OVERLAY;
                        this.L = false;
                        this.U = true;
                        this.T = false;
                        h();
                    } else {
                        AdColonyBrowser.url = this.ad;
                        this.d.startActivity(new Intent(this.d, (Class<?>) AdColonyBrowser.class));
                    }
                    com.jirbo.adcolony.a.a("in_video_engagement", "{\"ad_slot\":" + com.jirbo.adcolony.a.T.i.r.c + "}", this.d.I);
                    return true;
                }
                this.H = false;
                this.I = false;
                this.J = false;
                this.A = true;
                this.t = 0;
                invalidate();
                return true;
            }
            if (action == 3) {
                this.H = false;
                this.I = false;
                this.J = false;
                this.A = true;
                this.t = 0;
                invalidate();
                return true;
            }
        }
        return true;
    }

    int a(int i, int i2) {
        if (i >= this.g && i < this.g + 62) {
            return 1;
        }
        if (i >= this.g + 78 && i < this.g + 78 + 62) {
            return 2;
        }
        if (i >= this.g + 78 + 78 && i < this.g + 78 + 78 + 62) {
            return 3;
        }
        if (i < this.g + 78 + 78 + 78 || i >= this.g + 78 + 78 + 78 + 62) {
            return (this.d.G == null || !this.M || i < this.d.G.getWidth() - this.an.f || i2 > this.an.g) ? 0 : 10;
        }
        return 4;
    }

    public boolean a(ADCImage aDCImage, int i, int i2) {
        return aDCImage != null && i < (aDCImage.c() + aDCImage.f) + 8 && i > aDCImage.c() + (-8) && i2 < (aDCImage.d() + aDCImage.g) + 8 && i2 > aDCImage.d() + (-8);
    }

    public void a() {
        double d;
        boolean zB = this.d.b();
        this.y |= zB;
        if (this.d.G != null) {
            if (this.s <= 0) {
                this.s = this.d.G.getDuration();
            }
            if (zB) {
                setLayoutParams(new FrameLayout.LayoutParams(this.d.t, this.d.u, 17));
                this.d.G.setLayoutParams(new FrameLayout.LayoutParams(this.d.x, this.d.y, 17));
                this.y = true;
            }
        }
        if (this.y) {
            this.y = false;
            if (this.z) {
                DisplayMetrics displayMetrics = AdColony.activity().getResources().getDisplayMetrics();
                float f = displayMetrics.widthPixels / displayMetrics.xdpi;
                float f2 = displayMetrics.heightPixels / displayMetrics.ydpi;
                double dSqrt = Math.sqrt((displayMetrics.heightPixels * displayMetrics.heightPixels) + (displayMetrics.widthPixels * displayMetrics.widthPixels)) / Math.sqrt((f * f) + (f2 * f2));
                this.f = dSqrt / 280.0d < 0.7d ? 0.7d : dSqrt / 280.0d;
                if (!AdColony.isTablet() && this.f == 0.7d) {
                    this.f = 1.0d;
                }
                float f3 = this.f * 20.0d < 18.0d ? 18.0f : (float) (this.f * 20.0d);
                float f4 = this.f * 20.0d < 18.0d ? 18.0f : (float) (this.f * 20.0d);
                this.ai.setTextSize(f3);
                this.ak.setTextSize(f3);
                this.aj.setTextSize(f4);
                if (this.L && this.at != null && this.au != null) {
                    this.at.a(b(this.ab + (this.at.f * 2)), this.at.g);
                    this.au.a(b(this.ab + (this.au.f * 2)), this.au.g);
                }
                if (this.d.t > this.d.u) {
                    int i = this.d.u;
                } else {
                    int i2 = this.d.t;
                }
                this.z = false;
            }
            if (this.Q) {
                if (zB && this.a != null) {
                    this.a.setLayoutParams(new FrameLayout.LayoutParams(this.d.t, this.d.u - this.m, 17));
                }
                this.e = ((double) this.d.y) / 640.0d < 0.9d ? 0.9d : ((double) this.d.y) / 640.0d;
                if (!AdColony.isTablet() && this.e == 0.9d) {
                    this.e = 1.2d;
                }
            }
            if (this.N) {
                double d2 = this.n / this.o;
                if (((double) this.d.t) / d2 > ((double) this.d.u) / 1.0d) {
                    d = ((double) this.d.u) / 1.0d;
                } else {
                    d = ((double) this.d.t) / d2;
                }
                this.d.x = (int) (d2 * d);
                this.d.y = (int) (d * 1.0d);
                this.e = this.d.t > this.d.u ? ((double) this.d.y) / 640.0d : ((double) this.d.y) / 960.0d;
                this.am.a(((double) this.d.t) / ((double) this.n) > ((double) this.d.u) / ((double) this.o) ? ((double) this.d.u) / ((double) this.o) : ((double) this.d.t) / ((double) this.n));
                this.am.d(this.d.t, this.d.u);
            }
            if (this.L && this.at != null && this.au != null) {
                if (this.at != null && this.au != null && this.at.b != null && this.au.b != null) {
                    int height = (int) (((double) this.at.b.getHeight()) * this.f);
                    int height2 = (int) (((double) this.au.b.getHeight()) * this.f);
                    this.at.b(this.at.f, height);
                    this.au.b(this.au.f, height2);
                } else {
                    this.L = false;
                }
            }
            if (this.M) {
                this.an.a(this.f);
                this.ao.a(this.f);
            }
        }
    }

    void b() {
        this.a = new WebView(this.d);
        this.a.setFocusable(true);
        this.a.setHorizontalScrollBarEnabled(false);
        this.a.setVerticalScrollBarEnabled(false);
        WebSettings settings = this.a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON_DEMAND);
        settings.setBuiltInZoomControls(true);
        settings.setGeolocationEnabled(true);
        this.a.setWebChromeClient(new WebChromeClient() { // from class: com.jirbo.adcolony.ad.3
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage cm) {
                String strSourceId = cm.sourceId();
                if (strSourceId == null) {
                    strSourceId = "Internal";
                } else {
                    int iLastIndexOf = strSourceId.lastIndexOf(47);
                    if (iLastIndexOf != -1) {
                        strSourceId = strSourceId.substring(iLastIndexOf + 1);
                    }
                }
                l.b.a(cm.message()).a(" [").a(strSourceId).a(" line ").a(cm.lineNumber()).b((Object) "]");
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
                callback.invoke(origin, true, false);
            }
        });
        this.d.Q = new FrameLayout(this.d);
        if (com.jirbo.adcolony.a.i("hardware_acceleration_disabled")) {
            try {
                this.d.Q.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this.a, 1, null);
            } catch (Exception e) {
            }
        }
        this.az = new m(this.d, this.a, this.d);
        this.a.setWebViewClient(new WebViewClient() { // from class: com.jirbo.adcolony.ad.4
            String a = com.jirbo.adcolony.a.ad;

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                l.a.a("DEC request: ").b((Object) url);
                if (url.contains("mraid:")) {
                    ad.this.az.a(url);
                    return true;
                }
                if (!url.contains("youtube")) {
                    return url.contains("mraid.js");
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:" + url));
                intent.putExtra("VIDEO_ID", url);
                ad.this.d.startActivity(intent);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onLoadResource(WebView view, String url) {
                l.a.a("DEC onLoad: ").b((Object) url);
                if (url.equals(this.a)) {
                    l.a.b((Object) "DEC disabling mouse events");
                    ad.this.a("if (typeof(CN) != 'undefined' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != 'undefined') CN.div.removeEventListener('mousedown',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != 'undefined')   CN.div.removeEventListener('mouseup',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != 'undefined')  CN.div.removeEventListener('mousemove',  cn_dispatch_on_touch_move, true);\n}\n");
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                if (url.equals(this.a)) {
                    ad.this.d.k = true;
                    ad.this.v = System.currentTimeMillis();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                l.a.a("onPageFinished - ").b((Object) url);
                l.a.a("END CARD URL = ").b((Object) this.a);
                l.a.a("equals? ").b(url.equals(this.a));
                if (url.equals(this.a) || com.jirbo.adcolony.a.ad.startsWith("<")) {
                    l.a.b((Object) "DEC FINISHED LOADING");
                    ad.this.D = false;
                    ad.this.d.l = true;
                    ad.this.w = System.currentTimeMillis();
                    ad.this.d.p = (ad.this.w - ad.this.v) / 1000.0d;
                }
                ad.this.d.P.removeView(ad.this.c);
            }
        });
    }

    public void c() {
        if (this.a != null) {
            if (this.d.I.o.startsWith("<")) {
                this.a.loadData(this.d.I.o, WebRequest.CONTENT_TYPE_HTML, null);
            } else {
                this.a.loadDataWithBaseURL(this.d.I.o, this.af, WebRequest.CONTENT_TYPE_HTML, null, null);
            }
            new f("htmltest").a(this.af);
            a("var is_tablet=" + (com.jirbo.adcolony.a.m ? "true" : "false") + ";");
            String str = com.jirbo.adcolony.a.m ? "tablet" : "phone";
            a("adc_bridge.adc_version='" + com.jirbo.adcolony.a.ag + "'");
            a("adc_bridge.os_version='" + com.jirbo.adcolony.a.af + "'");
            a("adc_bridge.os_name='android'");
            a("adc_bridge.device_type='" + str + "'");
            a("adc_bridge.fireChangeEvent({state:'default'});");
            a("adc_bridge.fireReadyEvent()");
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer player) {
        d();
    }

    public void d() {
        d dVar = com.jirbo.adcolony.a.l;
        ADCVideo aDCVideo = this.d;
        dVar.a(ADCVideo.e, this.d.I);
        if (this.Q && this.D && com.jirbo.adcolony.a.ab) {
            this.d.P.addView(this.c);
            new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.ad.5
                @Override // java.lang.Runnable
                public void run() {
                    if (ad.this.D && ad.this.d != null && ad.this.Q && ad.this.a != null) {
                        ad.this.d.m = true;
                        ad.this.g();
                    }
                }
            }, com.jirbo.adcolony.a.ac * 1000);
        }
        if (com.jirbo.adcolony.a.Z) {
            g();
        }
        com.jirbo.adcolony.a.a("card_shown", this.d.I);
        synchronized (this.aL) {
            this.ag = null;
            if (com.jirbo.adcolony.a.T.j.y.e) {
                this.ag = new aa.b(com.jirbo.adcolony.a.T.j.y.g);
            }
        }
        if (this.Q) {
            Handler handler = new Handler();
            final View view = new View(this.d);
            Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.ad.6
                @Override // java.lang.Runnable
                public void run() {
                    ad.this.d.P.removeView(view);
                    ad.this.a(true);
                    ad.this.d.r = System.currentTimeMillis();
                }
            };
            view.setBackgroundColor(-16777216);
            this.d.P.addView(view);
            handler.postDelayed(runnable, 500L);
            this.d.Q.setVisibility(0);
        }
        this.d.r = System.currentTimeMillis();
        f();
    }

    void e() {
        this.a.loadUrl(com.jirbo.adcolony.a.ad);
        l.a.a("Loading - end card url = ").b((Object) com.jirbo.adcolony.a.ad);
    }

    void a(String str) {
        if (!this.N && this.a != null) {
            if (Build.VERSION.SDK_INT < 19) {
                this.a.loadUrl("javascript:" + str);
            } else {
                this.a.evaluateJavascript(str, null);
            }
        }
    }

    void a(boolean z) {
        if (!this.N) {
            if (z) {
                a("adc_bridge.fireChangeEvent({viewable:true});");
            } else {
                a("adc_bridge.fireChangeEvent({viewable:false});");
            }
        }
    }

    void b(boolean z) {
        if (this.N) {
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mp, int what, int extra) {
        c(true);
        return true;
    }

    void f() {
        new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.ad.7
            @Override // java.lang.Runnable
            public void run() {
                if (ad.this.d.G != null) {
                    ad.this.d.G.setVisibility(8);
                }
            }
        }, 300L);
        if (this.d.L) {
            this.d.J.stop();
        }
        ADCVideo aDCVideo = this.d;
        ADCVideo.d = true;
        if (this.d.G != null) {
            this.d.G.a();
        }
        v.I = null;
        invalidate();
        this.I = false;
        invalidate();
    }

    void g() {
        if (this.d != null) {
            if (!this.Q || (this.a != null && this.d.Q != null && this.d.P != null)) {
                com.jirbo.adcolony.a.M = true;
                this.d.s = System.currentTimeMillis();
                this.d.q += (this.d.s - this.d.r) / 1000.0d;
                com.jirbo.adcolony.a.ak = true;
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < com.jirbo.adcolony.a.aq.size()) {
                        if (com.jirbo.adcolony.a.aq.get(i2) != null) {
                            com.jirbo.adcolony.a.aq.get(i2).a();
                        }
                        i = i2 + 1;
                    } else {
                        try {
                            break;
                        } catch (Exception e) {
                        }
                    }
                }
                this.d.V.close();
                this.d.finish();
                this.ag = null;
                if (this.Q) {
                    this.d.P.removeView(this.d.Q);
                    this.a.destroy();
                    this.a = null;
                }
                com.jirbo.adcolony.a.a(this.d.I);
                AdColonyBrowser.A = true;
                com.jirbo.adcolony.a.E = true;
            }
        }
    }

    void h() {
        c(false);
    }

    void c(boolean z) {
        com.jirbo.adcolony.a.M = true;
        if (com.jirbo.adcolony.a.T.b() && !z) {
            ADCVideo aDCVideo = this.d;
            ADCVideo.a = this.d.G.getCurrentPosition();
            v.I = new v(this.d, (AdColonyV4VCAd) com.jirbo.adcolony.a.T);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < com.jirbo.adcolony.a.aq.size()) {
                if (com.jirbo.adcolony.a.aq.get(i2) != null) {
                    com.jirbo.adcolony.a.aq.get(i2).a();
                }
                i = i2 + 1;
            } else {
                this.d.finish();
                com.jirbo.adcolony.a.W.b(this.d.I);
                com.jirbo.adcolony.a.ak = true;
                com.jirbo.adcolony.a.E = true;
                AdColonyBrowser.A = true;
                return;
            }
        }
    }

    void i() throws Exception {
        com.jirbo.adcolony.a.a("replay", this.d.I);
        ADCVideo aDCVideo = this.d;
        ADCVideo.e = true;
        ADCVideo aDCVideo2 = this.d;
        ADCVideo.d = false;
        ADCVideo aDCVideo3 = this.d;
        ADCVideo.a = 0;
        this.d.I.u = true;
        this.d.I.p = 0.0d;
        this.S = false;
        final View view = new View(this.d);
        view.setBackgroundColor(-16777216);
        this.d.P.addView(view, new FrameLayout.LayoutParams(this.d.t, this.d.u, 17));
        new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.ad.8
            @Override // java.lang.Runnable
            public void run() {
                if (ad.this.Q) {
                    ad.this.d.Q.setVisibility(4);
                }
                ad.this.d.P.removeView(view);
            }
        }, 900L);
        this.d.G.start();
        if (this.d.L) {
            try {
                this.d.J = HapticContentSDKFactory.GetNewSDKInstance(0, this.d);
                this.d.J.openHaptics(this.d.K);
            } catch (Exception e) {
                this.d.L = false;
            }
            if (this.d.J == null) {
                this.d.L = false;
            }
            if (this.d.L) {
                this.d.J.play();
            }
        }
        com.jirbo.adcolony.a.l.a(this.d.I);
        this.d.G.requestFocus();
        this.d.G.setBackgroundColor(0);
        this.d.G.setVisibility(0);
        a(false);
    }

    int b(String str) {
        this.aj.getTextWidths(str, aB);
        float f = 0.0f;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            f += aB[i];
        }
        return (int) f;
    }

    void j() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.jirbo.adcolony.ad.9
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Rect rect = new Rect();
                this.getWindowVisibleDisplayFrame(rect);
                if (ad.this.a != null) {
                    ad.this.b((this.getRootView().getHeight() - (rect.bottom - rect.top)) - ((ad.this.d.u - ad.this.a.getHeight()) / 2));
                }
                ad.this.k();
            }
        });
    }

    void k() {
        if (this.h >= 70 && !this.E) {
            this.E = true;
            b(true);
        } else if (this.E && this.h == 0) {
            this.E = false;
            b(false);
        }
    }

    void b(int i) {
        this.h = i;
        if (i < 0) {
            this.h = 0;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
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
            ad.this.av.a(canvas, (this.a.width() - ad.this.av.f) / 2, (this.a.height() - ad.this.av.g) / 2);
            invalidate();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class b extends Handler {
        b() {
            a();
        }

        void a() {
            sendMessageDelayed(obtainMessage(), 500L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            a();
            if (!ad.this.d.isFinishing() && ad.this.d.G != null) {
                synchronized (this) {
                    if (ad.this.ag != null && ad.this.ag.a() && !ad.this.d.G.isPlaying()) {
                        ad.this.ag = null;
                        ad.this.t = 0;
                        if (ad.this.d.G != null) {
                            ad.this.d.G.a();
                        }
                        ad.this.d.n = true;
                        ad.this.g();
                    }
                }
            }
        }
    }
}
