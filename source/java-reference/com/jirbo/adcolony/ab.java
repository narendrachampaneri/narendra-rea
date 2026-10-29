package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.exoplayer.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
class ab extends h {
    boolean H;
    boolean I;
    boolean J = true;

    public ab(String str, AdColonyV4VCAd adColonyV4VCAd) {
        this.F = str;
        this.G = adColonyV4VCAd;
        if (a()) {
            AdColony.activity().addContentView(this, new FrameLayout.LayoutParams(-1, -1, 17));
            if (this.n) {
                this.D += 20;
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        int i = 0;
        if (this.J) {
            a.S = null;
            this.J = false;
            this.G.c(false);
            a.E = true;
            while (true) {
                int i2 = i;
                if (i2 >= a.an.size()) {
                    a.an.clear();
                    return;
                } else {
                    a.an.get(i2).recycle();
                    i = i2 + 1;
                }
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        d();
        int iCurrentTimeMillis = (((int) (System.currentTimeMillis() - this.w)) * 255) / 1000;
        if (iCurrentTimeMillis > 128) {
            iCurrentTimeMillis = 128;
        }
        canvas.drawARGB(iCurrentTimeMillis, 0, 0, 0);
        this.a.a(canvas, this.x, this.y);
        int iB = (b() * 3) / 2;
        int remainingViewsUntilReward = this.G.getRemainingViewsUntilReward();
        if (this.G.getViewsPerReward() == 1 || this.G.getViewsPerReward() == 0) {
            a(this.F, "");
            if (!s) {
                a("Watch a video to earn", this.z, (int) (((double) this.A) - (((double) iB) * this.i)), canvas);
                a(q, this.z, (int) (((double) this.A) - (((double) iB) * this.j)), canvas);
                a(r + ".", this.z, (int) (((double) this.A) - (((double) iB) * this.k)), canvas);
            } else {
                a("Watch a video to earn", this.z, (int) (((double) this.A) - (((double) iB) * this.l)), canvas);
                a(q + ".", this.z, (int) (((double) this.A) - (((double) iB) * this.m)), canvas);
            }
        } else {
            String str = remainingViewsUntilReward == 1 ? MimeTypes.BASE_TYPE_VIDEO : "videos";
            a(this.F, "" + remainingViewsUntilReward + " more " + str + " to earn )?");
            if (!s) {
                a("Watch a sponsored video now (Only", this.z, (int) (((double) this.A) - (((double) iB) * this.i)), canvas);
                a("" + remainingViewsUntilReward + " more " + str + " to earn " + q, this.z, (int) (((double) this.A) - (((double) iB) * this.j)), canvas);
                a(r + ")?", this.z, (int) (((double) this.A) - (((double) iB) * this.k)), canvas);
            } else {
                a("Watch a sponsored video now (Only", this.z, (int) (((double) this.A) - (((double) iB) * this.l)), canvas);
                a("" + remainingViewsUntilReward + " more " + str + " to earn " + q + ")?", this.z, (int) (((double) this.A) - (((double) iB) * this.m)), canvas);
            }
        }
        this.b.a(canvas, this.z - (this.b.f / 2), this.A - (this.b.g / 2));
        if (!this.I) {
            this.c.a(canvas, this.B, this.D);
        } else {
            this.d.a(canvas, this.B, this.D);
        }
        if (!this.H) {
            this.e.a(canvas, this.C, this.D);
        } else {
            this.f.a(canvas, this.C, this.D);
        }
        c("Yes", this.B, this.D, canvas);
        c("No", this.C, this.D, canvas);
        if (iCurrentTimeMillis != 128) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (event.getAction() == 1) {
            if (a(x, y, this.B, this.D) && this.I) {
                a.S = null;
                this.J = false;
                ((ViewGroup) getParent()).removeView(this);
                this.G.c(true);
            } else if (a(x, y, this.C, this.D) && this.H) {
                a.S = null;
                this.J = false;
                ((ViewGroup) getParent()).removeView(this);
                this.G.c(false);
                a.E = true;
                for (int i = 0; i < a.an.size(); i++) {
                    a.an.get(i).recycle();
                }
                a.an.clear();
            }
            this.H = false;
            this.I = false;
            invalidate();
        }
        if (event.getAction() == 0) {
            if (a(x, y, this.B, this.D)) {
                this.I = true;
                invalidate();
            } else if (a(x, y, this.C, this.D)) {
                this.H = true;
                invalidate();
            }
        }
        return true;
    }
}
