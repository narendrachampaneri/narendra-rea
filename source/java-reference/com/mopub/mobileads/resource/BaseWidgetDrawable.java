package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseWidgetDrawable extends Drawable {
    protected void drawTextWithinBounds(@NonNull Canvas canvas, @NonNull Paint textPaint, @NonNull Rect textRect, @NonNull String text) {
        textPaint.getTextBounds(text, 0, text.length(), textRect);
        float textHeight = textPaint.descent() - textPaint.ascent();
        float textOffset = (textHeight / 2.0f) - textPaint.descent();
        canvas.drawText(text, getBounds().centerX(), getBounds().centerY() + textOffset, textPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }
}
