package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.amazon.ags.constants.NativeCallKeys;
import com.amazon.device.ads.DeviceInfo;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.google.android.exoplayer.util.MimeTypes;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.re.controller.JSController;

/* JADX INFO: loaded from: classes.dex */
public class ai extends ah {
    protected int A;
    protected com.chartboost.sdk.Libraries.j B;
    protected com.chartboost.sdk.Libraries.j C;
    protected com.chartboost.sdk.Libraries.j D;
    protected com.chartboost.sdk.Libraries.j E;
    protected com.chartboost.sdk.Libraries.j F;
    protected com.chartboost.sdk.Libraries.j G;
    protected com.chartboost.sdk.Libraries.j H;
    protected com.chartboost.sdk.Libraries.j I;
    protected boolean J;
    protected boolean K;
    protected boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    protected b p;
    protected int q;
    protected String r;
    protected String s;
    protected int t;
    protected int u;
    protected boolean v;
    protected boolean w;
    protected boolean x;
    protected boolean y;
    protected boolean z;

    protected enum b {
        REWARD_OFFER,
        VIDEO_PLAYING,
        POST_VIDEO
    }

    public class a extends ah.a {
        private bk h;
        private ao i;
        private al j;
        private View k;
        private ag l;
        private aj m;
        private bk n;

        private a(Context context) {
            super(context);
            if (ai.this.K) {
                this.k = new View(context);
                this.k.setBackgroundColor(-16777216);
                this.k.setVisibility(8);
                addView(this.k);
            }
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                this.j = new al(context, ai.this);
                this.j.setVisibility(8);
                addView(this.j);
            }
            this.i = new ao(context, ai.this);
            this.i.setVisibility(8);
            addView(this.i);
            this.l = new ag(context, ai.this);
            this.l.setVisibility(8);
            addView(this.l);
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                this.m = new aj(context, ai.this);
                this.m.setVisibility(8);
                addView(this.m);
            }
            this.h = new bk(getContext()) { // from class: com.chartboost.sdk.impl.ai.a.1
                @Override // com.chartboost.sdk.impl.bk
                protected void a(MotionEvent motionEvent) {
                    if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                        a.this.m.a(false);
                    }
                    if (ai.this.p == b.VIDEO_PLAYING) {
                        a.this.d(false);
                    }
                    com.chartboost.sdk.Tracking.a.c(ai.this.s, ai.this.f.t());
                    a.this.c(true);
                }
            };
            this.h.setVisibility(8);
            addView(this.h);
            this.n = new bk(getContext()) { // from class: com.chartboost.sdk.impl.ai.a.2
                @Override // com.chartboost.sdk.impl.bk
                protected void a(MotionEvent motionEvent) {
                    a.this.e();
                }
            };
            this.n.setVisibility(8);
            addView(this.n);
            if (ai.this.m.a("progress").c("background-color") && ai.this.m.a("progress").c("border-color") && ai.this.m.a("progress").c("progress-color") && ai.this.m.a("progress").c("radius")) {
                ai.this.J = true;
                ak akVarC = this.i.c();
                akVarC.a(com.chartboost.sdk.f.a(ai.this.m.a("progress").e("background-color")));
                akVarC.b(com.chartboost.sdk.f.a(ai.this.m.a("progress").e("border-color")));
                akVarC.c(com.chartboost.sdk.f.a(ai.this.m.a("progress").e("progress-color")));
                akVarC.b(ai.this.m.a("progress").a("radius").j());
            }
            if (ai.this.m.a("video-controls-background").c("color")) {
                this.i.a(com.chartboost.sdk.f.a(ai.this.m.a("video-controls-background").e("color")));
            }
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && ai.this.x) {
                this.l.a(ai.this.m.a("post-video-toaster").e("title"), ai.this.m.a("post-video-toaster").e("tagline"));
            }
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && ai.this.w) {
                this.j.a(ai.this.m.a("confirmation").e(MimeTypes.BASE_TYPE_TEXT), com.chartboost.sdk.f.a(ai.this.m.a("confirmation").e("color")));
            }
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && ai.this.y) {
                this.m.a(ai.this.m.a("post-video-reward-toaster").a("position").equals("inside-top") ? am.a.TOP : am.a.BOTTOM);
                this.m.a(ai.this.m.a("post-video-reward-toaster").e(MimeTypes.BASE_TYPE_TEXT));
                if (ai.this.G.e()) {
                    this.m.a(ai.this.I);
                }
            }
            if (ai.this.e.a("video-click-button").b()) {
                this.i.d();
            }
            this.i.c(ai.this.m.i("video-progress-timer-enabled"));
            if (ai.this.L || ai.this.K) {
                this.e.setVisibility(4);
            }
            ai.this.s = ai.this.e.a(ai.this.a().b() ? "video-portrait" : "video-landscape").e(AnalyticsEvent.EVENT_ID);
            if (TextUtils.isEmpty(ai.this.s)) {
                ai.this.a(CBError.CBImpressionError.VIDEO_ID_MISSING);
                return;
            }
            if (ai.this.r == null) {
                ai.this.r = bd.a(ai.this.s);
            }
            if (ai.this.r == null) {
                ai.this.a(CBError.CBImpressionError.VIDEO_UNAVAILABLE);
            } else {
                this.i.a(ai.this.r);
            }
        }

        @Override // com.chartboost.sdk.impl.ah.a
        protected void d() {
            super.d();
            if (ai.this.p == b.REWARD_OFFER && (!ai.this.w || ai.this.m())) {
                c(false);
            } else {
                a(ai.this.p, false);
            }
        }

        public void f() {
            d(true);
            this.i.h();
            ai.this.q++;
            if (ai.this.q <= 1 && !ai.this.Q) {
                ai.this.w();
                if (ai.this.t >= 1) {
                    ai.this.f.g();
                }
            }
        }

        @Override // com.chartboost.sdk.impl.ah.a, com.chartboost.sdk.f.a
        protected void a(int i, int i2) {
            super.a(i, i2);
            a(ai.this.p, false);
            boolean zB = ai.this.a().b();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.b.getLayoutParams();
            ai.this.a(layoutParams2, zB ? ai.this.C : ai.this.B, 1.0f);
            Point pointB = ai.this.b(zB ? "replay-portrait" : "replay-landscape");
            int iRound = Math.round(((layoutParams6.leftMargin + (layoutParams6.width / 2.0f)) + pointB.x) - (layoutParams2.width / 2.0f));
            int iRound2 = Math.round((((layoutParams6.height / 2.0f) + layoutParams6.topMargin) + pointB.y) - (layoutParams2.height / 2.0f));
            layoutParams2.leftMargin = Math.min(Math.max(0, iRound), i - layoutParams2.width);
            layoutParams2.topMargin = Math.min(Math.max(0, iRound2), i2 - layoutParams2.height);
            this.h.bringToFront();
            if (zB) {
                this.h.a(ai.this.C);
            } else {
                this.h.a(ai.this.B);
            }
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
            if (!ai.this.r()) {
                layoutParams3.width = layoutParams7.width;
                layoutParams3.height = layoutParams7.height;
                layoutParams3.leftMargin = layoutParams7.leftMargin;
                layoutParams3.topMargin = layoutParams7.topMargin;
                layoutParams4.width = layoutParams7.width;
                layoutParams4.height = layoutParams7.height;
                layoutParams4.leftMargin = layoutParams7.leftMargin;
                layoutParams4.topMargin = layoutParams7.topMargin;
            } else {
                RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
                com.chartboost.sdk.Libraries.j jVar = zB ? ai.this.k : ai.this.l;
                ai.this.a(layoutParams8, jVar, 1.0f);
                layoutParams8.leftMargin = 0;
                layoutParams8.topMargin = 0;
                layoutParams8.addRule(11);
                this.n.setLayoutParams(layoutParams8);
                this.n.a(jVar);
            }
            layoutParams5.width = layoutParams7.width;
            layoutParams5.height = 72;
            layoutParams5.leftMargin = layoutParams7.leftMargin;
            layoutParams5.topMargin = (layoutParams7.height + layoutParams7.topMargin) - 72;
            if (ai.this.K) {
                this.k.setLayoutParams(layoutParams);
            }
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                this.j.setLayoutParams(layoutParams3);
            }
            this.i.setLayoutParams(layoutParams4);
            this.l.setLayoutParams(layoutParams5);
            this.h.setLayoutParams(layoutParams2);
            if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                this.j.a();
            }
            this.i.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(boolean z) {
            if (ai.this.p != b.VIDEO_PLAYING) {
                if (ai.this.w) {
                    com.chartboost.sdk.Tracking.a.b("integrated", ai.this.n);
                    a(b.REWARD_OFFER, z);
                    return;
                }
                a(b.VIDEO_PLAYING, z);
                if (ai.this.q < 1 && ai.this.m.a("timer").c("delay")) {
                    Object[] objArr = new Object[1];
                    objArr[0] = ai.this.v ? "visible" : NativeCallKeys.HIDDEN_FLAG;
                    CBLogging.c("InterstitialVideoViewProtocol", String.format("controls starting %s, setting timer", objArr));
                    this.i.a(ai.this.v);
                    ai.this.a(this.i, new Runnable() { // from class: com.chartboost.sdk.impl.ai.a.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Object[] objArr2 = new Object[1];
                            objArr2[0] = ai.this.v ? NativeCallKeys.HIDDEN_FLAG : "shown";
                            CBLogging.c("InterstitialVideoViewProtocol", String.format("controls %s automatically from timer", objArr2));
                            a.this.i.a(!ai.this.v, true);
                            ai.this.h.remove(Integer.valueOf(a.this.i.hashCode()));
                        }
                    }, Math.round(1000.0d * ai.this.m.a("timer").g("delay")));
                } else {
                    this.i.a(!ai.this.v);
                }
                com.chartboost.sdk.Tracking.a.a(ai.this.s, ai.this.n, ai.this.q);
                this.i.e();
                if (ai.this.q <= 1) {
                    ai.this.f.h();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(boolean z) {
            this.i.f();
            com.chartboost.sdk.Tracking.a.d(ai.this.s, ai.this.n);
            if (ai.this.p == b.VIDEO_PLAYING && z) {
                if (ai.this.q < 1 && ai.this.m.c("post-video-reward-toaster") && ai.this.y && ai.this.G.e() && ai.this.H.e()) {
                    e(true);
                }
                a(b.POST_VIDEO, true);
                if (CBUtility.c().b()) {
                    requestLayout();
                }
            }
        }

        private void e(boolean z) {
            if (z) {
                this.m.a(true);
            } else {
                this.m.setVisibility(0);
            }
            com.chartboost.sdk.f.a.postDelayed(new Runnable() { // from class: com.chartboost.sdk.impl.ai.a.4
                @Override // java.lang.Runnable
                public void run() {
                    a.this.m.a(false);
                }
            }, 2500L);
        }

        private void a(b bVar, boolean z) {
            ai.this.p = bVar;
            switch (bVar) {
                case REWARD_OFFER:
                    ai.this.a(!ai.this.r(), this.d, z);
                    if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                        ai.this.a(true, (View) this.j, z);
                    }
                    if (ai.this.K) {
                        ai.this.a(false, this.k, z);
                    }
                    ai.this.a(false, (View) this.i, z);
                    ai.this.a(false, (View) this.h, z);
                    ai.this.a(false, (View) this.l, z);
                    this.d.setEnabled(false);
                    this.h.setEnabled(false);
                    this.i.setEnabled(false);
                    break;
                case VIDEO_PLAYING:
                    ai.this.a(false, (View) this.d, z);
                    if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                        ai.this.a(false, (View) this.j, z);
                    }
                    if (ai.this.K) {
                        ai.this.a(true, this.k, z);
                    }
                    ai.this.a(true, (View) this.i, z);
                    ai.this.a(false, (View) this.h, z);
                    ai.this.a(false, (View) this.l, z);
                    this.d.setEnabled(true);
                    this.h.setEnabled(false);
                    this.i.setEnabled(true);
                    break;
                case POST_VIDEO:
                    ai.this.a(true, (View) this.d, z);
                    if (ai.this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO) {
                        ai.this.a(false, (View) this.j, z);
                    }
                    if (ai.this.K) {
                        ai.this.a(false, this.k, z);
                    }
                    ai.this.a(false, (View) this.i, z);
                    ai.this.a(true, (View) this.h, z);
                    ai.this.a(ai.this.H.e() && ai.this.G.e() && ai.this.x, this.l, z);
                    this.h.setEnabled(true);
                    this.d.setEnabled(true);
                    this.i.setEnabled(false);
                    if (ai.this.z) {
                        e(false);
                    }
                    break;
            }
            boolean zG = g();
            bk bkVarB = b(true);
            bkVarB.setEnabled(zG);
            ai.this.a(zG, bkVarB, z);
            bk bkVarB2 = b(false);
            bkVarB2.setEnabled(false);
            ai.this.a(false, (View) bkVarB2, z);
            if (ai.this.L || ai.this.K) {
                ai.this.a(!ai.this.r(), this.e, z);
            }
            ai.this.a(!ai.this.r(), this.b, z);
            a(bVar != b.REWARD_OFFER);
        }

        protected boolean g() {
            if (ai.this.p == b.VIDEO_PLAYING && ai.this.q < 1) {
                float fA = ai.this.e.a("close-" + (ai.this.a().b() ? DeviceInfo.ORIENTATION_PORTRAIT : DeviceInfo.ORIENTATION_LANDSCAPE)).a("delay").a(-1.0f);
                int iRound = fA >= 0.0f ? Math.round(fA * 1000.0f) : -1;
                ai.this.A = iRound;
                if (iRound < 0) {
                    return false;
                }
                if (iRound > this.i.b().d()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.chartboost.sdk.impl.ah.a, com.chartboost.sdk.f.a
        public void b() {
            ai.this.l();
            super.b();
        }

        @Override // com.chartboost.sdk.impl.ah.a
        protected void e() {
            if (ai.this.p == b.VIDEO_PLAYING && ai.this.m.a("cancel-popup").c("title") && ai.this.m.a("cancel-popup").c(MimeTypes.BASE_TYPE_TEXT) && ai.this.m.a("cancel-popup").c("cancel") && ai.this.m.a("cancel-popup").c("confirm")) {
                this.i.g();
                if (ai.this.q < 1) {
                    ai.this.n();
                    return;
                }
            }
            if (ai.this.p == b.VIDEO_PLAYING) {
                d(false);
                this.i.h();
                if (ai.this.q < 1) {
                    ai.this.q++;
                    ai.this.w();
                    ai.this.f.g();
                }
            }
            com.chartboost.sdk.f.a.post(new Runnable() { // from class: com.chartboost.sdk.impl.ai.a.5
                @Override // java.lang.Runnable
                public void run() {
                    ai.this.h();
                }
            });
            com.chartboost.sdk.Tracking.a.b(ai.this.s, ai.this.n, ai.this.A);
        }

        @Override // com.chartboost.sdk.impl.ah.a
        protected void a(float f, float f2) {
            if ((!ai.this.v || ai.this.p != b.VIDEO_PLAYING) && ai.this.p != b.REWARD_OFFER) {
                h();
                com.chartboost.sdk.Tracking.a.a("insterstitial", ai.this.s, ai.this.f.t(), (int) f, (int) f2);
            }
        }

        protected void h() {
            if (ai.this.p == b.VIDEO_PLAYING) {
                d(false);
            }
            ai.this.a((String) null, (com.chartboost.sdk.Libraries.e.a) null);
        }

        protected void i() {
            com.chartboost.sdk.Tracking.a.d("integrated", ai.this.n, true);
            ai.this.w = false;
            c(true);
        }

        public bk b(boolean z) {
            return (!(ai.this.r() && z) && (ai.this.r() || z)) ? this.c : this.n;
        }
    }

    public ai(com.chartboost.sdk.Model.a aVar) {
        super(aVar);
        this.p = b.REWARD_OFFER;
        this.M = true;
        this.N = false;
        this.O = false;
        this.t = 0;
        this.u = 0;
        this.P = false;
        this.Q = false;
        this.z = false;
        this.A = 0;
        this.J = false;
        this.K = false;
        this.L = false;
        this.p = b.REWARD_OFFER;
        this.B = new com.chartboost.sdk.Libraries.j(this);
        this.C = new com.chartboost.sdk.Libraries.j(this);
        this.D = new com.chartboost.sdk.Libraries.j(this);
        this.E = new com.chartboost.sdk.Libraries.j(this);
        this.F = new com.chartboost.sdk.Libraries.j(this);
        this.G = new com.chartboost.sdk.Libraries.j(this);
        this.H = new com.chartboost.sdk.Libraries.j(this);
        this.I = new com.chartboost.sdk.Libraries.j(this);
        this.q = 0;
    }

    public boolean m() {
        return this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_VIDEO;
    }

    public void n() {
        bl.a aVar = new bl.a();
        aVar.a(this.m.a("cancel-popup").e("title")).b(this.m.a("cancel-popup").e(MimeTypes.BASE_TYPE_TEXT)).d(this.m.a("cancel-popup").e("confirm")).c(this.m.a("cancel-popup").e("cancel"));
        aVar.a(e().getContext(), new bl.b() { // from class: com.chartboost.sdk.impl.ai.1
            @Override // com.chartboost.sdk.impl.bl.b
            public void a(bl blVar) {
                a aVarE = ai.this.e();
                if (aVarE != null) {
                    aVarE.i.e();
                }
            }

            @Override // com.chartboost.sdk.impl.bl.b
            public void a(bl blVar, int i) {
                a aVarE = ai.this.e();
                if (i == 1) {
                    if (aVarE != null) {
                        aVarE.i.e();
                    }
                } else {
                    if (aVarE != null) {
                        aVarE.d(false);
                        aVarE.i.h();
                    }
                    ai.this.h();
                }
            }
        });
    }

    @Override // com.chartboost.sdk.impl.ah, com.chartboost.sdk.f
    protected com.chartboost.sdk.f.a b(Context context) {
        return new a(context);
    }

    @Override // com.chartboost.sdk.f
    public boolean j() {
        if (e().b(true).getVisibility() != 4 && e().b(true).getVisibility() != 8) {
            e().e();
        }
        return true;
    }

    @Override // com.chartboost.sdk.f
    public void k() {
        super.k();
        if (this.p == b.VIDEO_PLAYING && this.N) {
            e().i.b().a(this.t);
            if (!this.O) {
                e().i.e();
            }
        }
        this.O = false;
        this.N = false;
    }

    @Override // com.chartboost.sdk.f
    public void l() {
        super.l();
        if (this.p == b.VIDEO_PLAYING && !this.N) {
            if (!e().i.i()) {
                this.O = true;
            }
            this.N = true;
            e().i.g();
            if (this.q < 1 && this.P) {
                x();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.chartboost.sdk.Libraries.h.c().b(Integer.toString(this.f.hashCode()));
    }

    private void x() {
        float f = this.t;
        float f2 = this.u;
        az azVar = new az("/api/video-complete");
        azVar.b((az.c) null);
        azVar.a("location", (Object) this.f.d);
        azVar.a("reward", (Object) this.f.A().e("reward"));
        azVar.a("currency-name", (Object) this.f.A().e("currency-name"));
        azVar.a("ad_id", (Object) this.f.t());
        azVar.a("total_time", Float.valueOf(f2 / 1000.0f));
        azVar.a("playback_time", Float.valueOf(f / 1000.0f));
        azVar.a("force_close", (Object) true);
        com.chartboost.sdk.Libraries.h.c().a(Integer.toString(this.f.hashCode()), azVar.t());
    }

    @Override // com.chartboost.sdk.impl.ah, com.chartboost.sdk.f
    public boolean a(com.chartboost.sdk.Libraries.e.a aVar) {
        if (!super.a(aVar)) {
            return false;
        }
        if (this.e.b("video-landscape") || this.e.b("replay-landscape")) {
            this.j = false;
        }
        this.B.a("replay-landscape");
        this.C.a("replay-portrait");
        this.F.a("video-click-button");
        this.G.a("post-video-reward-icon");
        this.H.a("post-video-button");
        this.D.a("video-confirmation-button");
        this.E.a("video-confirmation-icon");
        this.I.a("post-video-reward-icon");
        this.v = aVar.a("ux").i("video-controls-togglable");
        this.K = aVar.a(JSController.FULL_SCREEN).b() ? false : aVar.a(JSController.FULL_SCREEN).m();
        this.L = aVar.a("preroll_popup_fullscreen").b() ? false : aVar.a("preroll_popup_fullscreen").m();
        if (this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && this.m.a("post-video-toaster").c("title") && this.m.a("post-video-toaster").c("tagline")) {
            this.x = true;
        }
        if (this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && this.m.a("confirmation").c(MimeTypes.BASE_TYPE_TEXT) && this.m.a("confirmation").c("color")) {
            this.w = true;
        }
        if (this.f.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO && this.m.c("post-video-reward-toaster")) {
            this.y = true;
        }
        return true;
    }

    @Override // com.chartboost.sdk.f
    protected void i() {
        if (this.w && (!this.D.e() || !this.E.e())) {
            this.w = false;
        }
        if (this.M) {
            super.i();
        } else {
            a(CBError.CBImpressionError.ERROR_DISPLAYING_VIEW);
        }
    }

    @Override // com.chartboost.sdk.impl.ah, com.chartboost.sdk.f
    public void d() {
        super.d();
        this.B.d();
        this.C.d();
        this.F.d();
        this.G.d();
        this.H.d();
        this.D.d();
        this.E.d();
        this.I.d();
        this.B = null;
        this.C = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.D = null;
        this.E = null;
        this.I = null;
    }

    public boolean o() {
        return this.p == b.VIDEO_PLAYING;
    }

    @Override // com.chartboost.sdk.f
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a e() {
        return (a) super.e();
    }

    protected void q() {
        this.f.v();
    }

    protected boolean r() {
        if (this.p == b.POST_VIDEO) {
            return false;
        }
        boolean zB = CBUtility.c().b();
        if (this.p == b.REWARD_OFFER) {
            return this.L || zB;
        }
        if (this.p == b.VIDEO_PLAYING) {
            return this.K || zB;
        }
        return zB && this.p != b.POST_VIDEO;
    }

    public boolean s() {
        return this.P;
    }

    public void a(boolean z) {
        this.P = z;
    }

    public void t() {
        this.Q = true;
        bd.b(this.s);
        a(CBError.CBImpressionError.ERROR_PLAYING_VIDEO);
    }

    public int u() {
        return this.u;
    }

    public int v() {
        return this.t;
    }
}
