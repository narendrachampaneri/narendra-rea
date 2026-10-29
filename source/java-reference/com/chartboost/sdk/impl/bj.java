package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class bj extends ImageView {
    protected TextView a;
    private com.chartboost.sdk.Libraries.j b;

    public bj(Context context) {
        super(context);
        this.b = null;
        this.a = null;
    }

    public void a(com.chartboost.sdk.Libraries.j jVar) {
        if (this.b != jVar) {
            this.b = jVar;
            setImageDrawable(new BitmapDrawable(jVar.f()));
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap adImage) {
        this.b = null;
        setImageDrawable(new BitmapDrawable(adImage));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
    }

    protected void a(Canvas canvas) {
        if (this.a != null) {
            this.a.layout(0, 0, canvas.getWidth(), canvas.getHeight());
            this.a.setEnabled(isEnabled());
            this.a.setSelected(isSelected());
            if (isFocused()) {
                this.a.requestFocus();
            } else {
                this.a.clearFocus();
            }
            this.a.setPressed(isPressed());
            this.a.draw(canvas);
        }
    }
}
