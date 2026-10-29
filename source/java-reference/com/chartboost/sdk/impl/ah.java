package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.mobileads.VastIconXmlManager;

/* JADX INFO: loaded from: classes.dex */
public class ah extends com.chartboost.sdk.f {
    protected com.chartboost.sdk.Libraries.j k;
    protected com.chartboost.sdk.Libraries.j l;
    protected com.chartboost.sdk.Libraries.e.a m;
    protected String n;
    protected float o;
    private com.chartboost.sdk.Libraries.j p;
    private com.chartboost.sdk.Libraries.j q;
    private com.chartboost.sdk.Libraries.j r;
    private com.chartboost.sdk.Libraries.j s;

    public class a extends com.chartboost.sdk.f.a {
        protected bj b;
        protected bk c;
        protected bk d;
        protected ImageView e;
        private boolean g;

        protected a(Context context) {
            super(context);
            this.g = false;
            setBackgroundColor(0);
            setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.b = new bj(context);
            addView(this.b, new RelativeLayout.LayoutParams(-1, -1));
            this.d = new bk(context) { // from class: com.chartboost.sdk.impl.ah.a.1
                @Override // com.chartboost.sdk.impl.bk
                protected void a(MotionEvent motionEvent) {
                    a.this.a(motionEvent.getX(), motionEvent.getY());
                }
            };
            a(this.d);
            this.e = new ImageView(context);
            this.e.setBackgroundColor(-16777216);
            addView(this.e);
            addView(this.d);
        }

        protected void d() {
            this.c = new bk(getContext()) { // from class: com.chartboost.sdk.impl.ah.a.2
                @Override // com.chartboost.sdk.impl.bk
                protected void a(MotionEvent motionEvent) {
                    a.this.e();
                }
            };
            addView(this.c);
        }

        protected void a(float f, float f2) {
            ah.this.a((String) null, (com.chartboost.sdk.Libraries.e.a) null);
        }

        @Override // com.chartboost.sdk.f.a
        protected void a(int i, int i2) {
            int iRound;
            int iRound2;
            if (!this.g) {
                d();
                this.g = true;
            }
            boolean zB = ah.this.a().b();
            com.chartboost.sdk.Libraries.j jVar = zB ? ah.this.p : ah.this.q;
            com.chartboost.sdk.Libraries.j jVar2 = zB ? ah.this.k : ah.this.l;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            ah.this.a(layoutParams, jVar, 1.0f);
            ah.this.o = Math.min(Math.min(i / layoutParams.width, i2 / layoutParams.height), 1.0f);
            layoutParams.width = (int) (layoutParams.width * ah.this.o);
            layoutParams.height = (int) (layoutParams.height * ah.this.o);
            Point pointB = ah.this.b(zB ? "frame-portrait" : "frame-landscape");
            layoutParams.leftMargin = Math.round(((i - layoutParams.width) / 2.0f) + ((pointB.x / jVar.g()) * ah.this.o));
            layoutParams.topMargin = Math.round(((pointB.y / jVar.g()) * ah.this.o) + ((i2 - layoutParams.height) / 2.0f));
            ah.this.a(layoutParams2, jVar2, 1.0f);
            Point pointB2 = ah.this.b(zB ? "close-portrait" : "close-landscape");
            if (pointB2.x == 0 && pointB2.y == 0) {
                iRound = Math.round((-layoutParams2.width) / 2.0f) + layoutParams.leftMargin + layoutParams.width;
                iRound2 = layoutParams.topMargin + Math.round((-layoutParams2.height) / 2.0f);
            } else {
                iRound = Math.round(((layoutParams.leftMargin + (layoutParams.width / 2.0f)) + pointB2.x) - (layoutParams2.width / 2.0f));
                iRound2 = Math.round((pointB2.y + (layoutParams.topMargin + (layoutParams.height / 2.0f))) - (layoutParams2.height / 2.0f));
            }
            layoutParams2.leftMargin = Math.min(Math.max(0, iRound), i - layoutParams2.width);
            layoutParams2.topMargin = Math.min(Math.max(0, iRound2), i2 - layoutParams2.height);
            this.b.setLayoutParams(layoutParams);
            this.c.setLayoutParams(layoutParams2);
            this.b.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.b.a(jVar);
            this.c.a(jVar2);
            com.chartboost.sdk.Libraries.j jVar3 = zB ? ah.this.r : ah.this.s;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            ah.this.a(layoutParams3, jVar3, ah.this.o);
            Point pointB3 = ah.this.b(zB ? "ad-portrait" : "ad-landscape");
            layoutParams3.leftMargin = Math.round(((i - layoutParams3.width) / 2.0f) + ((pointB3.x / jVar3.g()) * ah.this.o));
            layoutParams3.topMargin = Math.round(((pointB3.y / jVar3.g()) * ah.this.o) + ((i2 - layoutParams3.height) / 2.0f));
            this.e.setLayoutParams(layoutParams3);
            this.d.setLayoutParams(layoutParams3);
            this.d.a(ImageView.ScaleType.FIT_CENTER);
            this.d.a(jVar3);
        }

        protected void e() {
            ah.this.h();
        }

        @Override // com.chartboost.sdk.f.a
        public void b() {
            super.b();
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
    }

    public ah(com.chartboost.sdk.Model.a aVar) {
        super(aVar);
        this.o = 1.0f;
        this.p = new com.chartboost.sdk.Libraries.j(this);
        this.q = new com.chartboost.sdk.Libraries.j(this);
        this.k = new com.chartboost.sdk.Libraries.j(this);
        this.l = new com.chartboost.sdk.Libraries.j(this);
        this.r = new com.chartboost.sdk.Libraries.j(this);
        this.s = new com.chartboost.sdk.Libraries.j(this);
    }

    @Override // com.chartboost.sdk.f
    protected com.chartboost.sdk.f.a b(Context context) {
        return new a(context);
    }

    @Override // com.chartboost.sdk.f
    public boolean a(com.chartboost.sdk.Libraries.e.a aVar) {
        if (!super.a(aVar)) {
            return false;
        }
        this.n = aVar.e("ad_id");
        this.m = aVar.a("ux");
        if (this.e.b("frame-portrait") || this.e.b("close-portrait")) {
            this.i = false;
        }
        if (this.e.b("frame-landscape") || this.e.b("close-landscape")) {
            this.j = false;
        }
        this.q.a("frame-landscape");
        this.p.a("frame-portrait");
        this.l.a("close-landscape");
        this.k.a("close-portrait");
        if (this.e.b("ad-portrait")) {
            this.i = false;
        }
        if (this.e.b("ad-landscape")) {
            this.j = false;
        }
        this.s.a("ad-landscape");
        this.r.a("ad-portrait");
        return true;
    }

    protected Point b(String str) {
        com.chartboost.sdk.Libraries.e.a aVarA = this.e.a(str).a(VastIconXmlManager.OFFSET);
        return aVarA.c() ? new Point(aVarA.f("x"), aVarA.f("y")) : new Point(0, 0);
    }

    public void a(ViewGroup.LayoutParams layoutParams, com.chartboost.sdk.Libraries.j jVar, float f) {
        layoutParams.width = (int) ((jVar.b() / jVar.g()) * f);
        layoutParams.height = (int) ((jVar.c() / jVar.g()) * f);
    }

    @Override // com.chartboost.sdk.f
    public void d() {
        super.d();
        this.q.d();
        this.p.d();
        this.l.d();
        this.k.d();
        this.s.d();
        this.r.d();
        this.q = null;
        this.p = null;
        this.l = null;
        this.k = null;
        this.s = null;
        this.r = null;
    }
}
