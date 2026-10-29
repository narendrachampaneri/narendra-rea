package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
class v extends h {
    static boolean H;
    static v I;
    boolean J;
    boolean K;
    ADCVideo L;

    public v(ADCVideo aDCVideo, AdColonyV4VCAd adColonyV4VCAd) {
        this.L = aDCVideo;
        this.G = adColonyV4VCAd;
        aDCVideo.G.pause();
        I = this;
        if (!a()) {
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.L.G != null) {
            H = true;
            d();
            int iCurrentTimeMillis = (((int) (System.currentTimeMillis() - this.w)) * 255) / 1000;
            canvas.drawARGB(iCurrentTimeMillis <= 128 ? iCurrentTimeMillis : 128, 0, 0, 0);
            this.a.a(canvas, this.x, this.y);
            int iB = (b() * 3) / 2;
            a("Completion is required to receive", this.z, (int) (((double) this.A) - (((double) iB) * 2.75d)), canvas);
            a("your reward.", this.z, this.A - (iB * 2), canvas);
            a("Are you sure you want to skip?", this.z, (int) (((double) this.A) - (((double) iB) * 1.25d)), canvas);
            this.b.a(canvas, this.z - (this.b.f / 2), this.A - (this.b.g / 2));
            if (!this.J) {
                this.c.a(canvas, this.B, this.D);
            } else {
                this.d.a(canvas, this.B, this.D);
            }
            if (!this.K) {
                this.e.a(canvas, this.C, this.D);
            } else {
                this.f.a(canvas, this.C, this.D);
            }
            c("Yes", this.B, this.D, canvas);
            c("No", this.C, this.D, canvas);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        ADCVideo aDCVideo = this.L;
        if (ADCVideo.d) {
            I = null;
            return this.L.H.onTouchEvent(event);
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (event.getAction() == 1) {
            if (a(x, y, this.B, this.D) && this.J) {
                I = null;
                H = false;
                a.D = false;
                a.ak = true;
                a.W.b(this.G);
                AdColonyBrowser.A = true;
                this.L.finish();
                a.E = true;
            } else if (a(x, y, this.C, this.D) && this.K) {
                I = null;
                H = false;
                this.L.G.start();
            }
            this.J = false;
            this.K = false;
            invalidate();
        }
        if (event.getAction() != 0) {
            return true;
        }
        if (a(x, y, this.B, this.D)) {
            this.J = true;
            invalidate();
            return true;
        }
        if (!a(x, y, this.C, this.D)) {
            return true;
        }
        this.K = true;
        invalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keycode, KeyEvent event) {
        if (this.L.G != null && keycode == 4) {
            return super.onKeyDown(keycode, event);
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keycode, KeyEvent event) {
        if (keycode != 4) {
            return false;
        }
        I = null;
        this.L.G.start();
        return true;
    }

    @Override // com.jirbo.adcolony.h
    void d() {
        int i = this.L.t;
        int i2 = this.L.u;
        this.x = (i - this.a.f) / 2;
        this.y = (i2 - this.a.g) / 2;
        this.z = this.x + (this.a.f / 2);
        this.A = this.y + (this.a.g / 2);
        this.D = this.y + ((int) (((double) this.a.g) - (((double) this.c.g) + (p * 16.0d))));
        this.B = this.x + ((int) (p * 16.0d));
        this.C = this.x + ((int) (((double) this.a.f) - (((double) this.c.f) + (p * 16.0d))));
    }
}
