package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
public class CloseButtonDrawable extends BaseWidgetDrawable {
    private final Paint closeButtonPaint = new Paint();

    public CloseButtonDrawable() {
        this.closeButtonPaint.setColor(-1);
        this.closeButtonPaint.setStrokeWidth(8.0f);
        this.closeButtonPaint.setStrokeCap(DrawableConstants.CloseButton.STROKE_CAP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int w = getBounds().width();
        int h = getBounds().height();
        canvas.drawLine(0.0f, h, w, 0.0f, this.closeButtonPaint);
        canvas.drawLine(0.0f, 0.0f, w, h, this.closeButtonPaint);
    }
}
