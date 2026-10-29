package com.applovin.impl.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinVideoView extends VideoView {
    private int a;
    private int b;

    public AppLovinVideoView(Context context) {
        this(context, null);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        this.b = 0;
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        int iCeil;
        int iCeil2;
        if (this.a <= 0 || this.b <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        float height = this.b / getHeight();
        float width = this.a / getWidth();
        if (height > width) {
            iCeil = (int) Math.ceil(this.b / height);
            iCeil2 = (int) Math.ceil(this.a / height);
        } else {
            iCeil = (int) Math.ceil(this.b / width);
            iCeil2 = (int) Math.ceil(this.a / width);
        }
        setMeasuredDimension(iCeil2, iCeil);
    }

    public void setVideoSize(int i, int i2) {
        this.a = i;
        this.b = i2;
        try {
            getHolder().setFixedSize(i, i2);
            requestLayout();
            invalidate();
        } catch (Exception e) {
        }
    }
}
