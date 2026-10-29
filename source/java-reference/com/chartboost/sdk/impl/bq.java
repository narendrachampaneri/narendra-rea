package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBUtility;

/* JADX INFO: loaded from: classes.dex */
public final class bq extends bn {
    private static Handler a = CBUtility.e();
    private float b;
    private long c;
    private Paint d;
    private Paint e;
    private Path f;
    private Path g;
    private RectF h;
    private RectF i;
    private Runnable j;

    static /* synthetic */ float a(bq bqVar, float f) {
        float f2 = bqVar.b + f;
        bqVar.b = f2;
        return f2;
    }

    static /* synthetic */ float b(bq bqVar, float f) {
        float f2 = bqVar.b - f;
        bqVar.b = f2;
        return f2;
    }

    public bq(Context context) {
        super(context);
        this.j = new Runnable() { // from class: com.chartboost.sdk.impl.bq.1
            @Override // java.lang.Runnable
            public void run() {
                float f = bq.this.getContext().getResources().getDisplayMetrics().density;
                bq.a(bq.this, 60.0f * f * 0.016666668f);
                float height = bq.this.getHeight() - (f * 9.0f);
                if (bq.this.b > height) {
                    bq.b(bq.this, height * 2.0f);
                }
                if (bq.this.getWindowVisibility() == 0) {
                    bq.this.invalidate();
                }
            }
        };
        a(context);
    }

    private void a(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        this.b = 0.0f;
        this.c = (long) (System.nanoTime() / 1000000.0d);
        this.d = new Paint();
        this.d.setColor(-1);
        this.d.setStyle(Paint.Style.STROKE);
        this.d.setStrokeWidth(f * 3.0f);
        this.d.setAntiAlias(true);
        this.e = new Paint();
        this.e.setColor(-1);
        this.e.setStyle(Paint.Style.FILL);
        this.e.setAntiAlias(true);
        this.f = new Path();
        this.g = new Path();
        this.i = new RectF();
        this.h = new RectF();
    }

    @Override // com.chartboost.sdk.impl.bn
    protected void a(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.h.set(0.0f, 0.0f, getWidth(), getHeight());
        this.h.inset(1.5f * f, 1.5f * f);
        float height = getHeight() / 2.0f;
        canvas.drawRoundRect(this.h, height, height, this.d);
        this.i.set(this.h);
        this.i.inset(3.0f * f, f * 3.0f);
        float fHeight = this.i.height() / 2.0f;
        this.f.reset();
        this.f.addRoundRect(this.i, fHeight, fHeight, Path.Direction.CW);
        float fHeight2 = this.i.height();
        this.g.reset();
        this.g.moveTo(0.0f, fHeight2);
        this.g.lineTo(fHeight2, fHeight2);
        this.g.lineTo(fHeight2 * 2.0f, 0.0f);
        this.g.lineTo(fHeight2, 0.0f);
        this.g.close();
        canvas.save();
        boolean z = true;
        try {
            canvas.clipPath(this.f);
        } catch (UnsupportedOperationException e) {
            z = false;
        }
        if (z) {
            float f2 = -fHeight2;
            float f3 = this.b;
            while (true) {
                f2 += f3;
                if (f2 >= this.i.width() + fHeight2) {
                    break;
                }
                float f4 = this.i.left + f2;
                canvas.save();
                canvas.translate(f4, this.i.top);
                canvas.drawPath(this.g, this.e);
                canvas.restore();
                f3 = 2.0f * fHeight2;
            }
        }
        canvas.restore();
        long jMax = Math.max(0L, 16 - (((long) (System.nanoTime() / 1000000.0d)) - this.c));
        a.removeCallbacks(this.j);
        a.postDelayed(this.j, jMax);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        a.removeCallbacks(this.j);
        if (visibility == 0) {
            a.post(this.j);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a.removeCallbacks(this.j);
        a.post(this.j);
    }

    @Override // com.chartboost.sdk.impl.bn, android.view.View
    protected void onDetachedFromWindow() {
        a.removeCallbacks(this.j);
        super.onDetachedFromWindow();
    }
}
