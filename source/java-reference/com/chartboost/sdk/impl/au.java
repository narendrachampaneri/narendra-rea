package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.chartboost.sdk.Libraries.CBUtility;

/* JADX INFO: loaded from: classes.dex */
public final class au extends bj {
    private RectF b;
    private Paint c;
    private Paint d;
    private BitmapShader e;
    private float f;

    public au(Context context) {
        super(context);
        this.f = 0.0f;
        a(context);
    }

    private void a(Context context) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.b = new RectF();
        this.c = new Paint();
        this.c.setStyle(Paint.Style.STROKE);
        this.c.setStrokeWidth(Math.max(1.0f, f * 1.0f));
        this.c.setAntiAlias(true);
    }

    public void a(int i) {
        this.c.setColor(i);
        invalidate();
    }

    @Override // com.chartboost.sdk.impl.bj, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        float fA = CBUtility.a(1.0f, getContext());
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (this.e == null) {
                if (bitmap != null) {
                    this.e = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
                    this.d = new Paint();
                    this.d.setAntiAlias(true);
                    this.d.setShader(this.e);
                } else {
                    postInvalidate();
                    return;
                }
            }
            float fMax = Math.max(getWidth() / bitmap.getWidth(), getHeight() / bitmap.getHeight());
            canvas.save();
            canvas.scale(fMax, fMax);
            this.b.set(0.0f, 0.0f, getWidth() / fMax, getHeight() / fMax);
            this.b.inset(fA / (fMax * 2.0f), fA / (fMax * 2.0f));
            canvas.drawRoundRect(this.b, this.b.width() * this.f, this.b.height() * this.f, this.d);
            canvas.restore();
        } else {
            super.onDraw(canvas);
        }
        this.b.set(0.0f, 0.0f, getWidth(), getHeight());
        this.b.inset(fA / 2.0f, fA / 2.0f);
        canvas.drawRoundRect(this.b, this.b.width() * this.f, this.b.height() * this.f, this.c);
    }

    public void a(float f) {
        this.f = f;
        invalidate();
    }
}
