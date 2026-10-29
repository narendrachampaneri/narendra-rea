package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;

/* JADX INFO: loaded from: classes.dex */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    @NonNull
    private final Paint mBackgroundPaint;
    private final int mButtonCornerRadius;

    @NonNull
    private final RectF mButtonRect;
    private String mCtaText;

    @NonNull
    private final Paint mOutlinePaint;

    @NonNull
    private final Paint mTextPaint;

    @NonNull
    private final Rect mTextRect;

    public CtaButtonDrawable(@NonNull Context context) {
        int outlineStrokeWidth = Dips.dipsToIntPixels(2.0f, context);
        float textSize = Dips.dipsToFloatPixels(20.0f, context);
        this.mBackgroundPaint = new Paint();
        this.mBackgroundPaint.setColor(-16777216);
        this.mBackgroundPaint.setAlpha(51);
        this.mBackgroundPaint.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        this.mBackgroundPaint.setAntiAlias(true);
        this.mOutlinePaint = new Paint();
        this.mOutlinePaint.setColor(-1);
        this.mOutlinePaint.setAlpha(51);
        this.mOutlinePaint.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        this.mOutlinePaint.setStrokeWidth(outlineStrokeWidth);
        this.mOutlinePaint.setAntiAlias(true);
        this.mTextPaint = new Paint();
        this.mTextPaint.setColor(-1);
        this.mTextPaint.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        this.mTextPaint.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        this.mTextPaint.setTextSize(textSize);
        this.mTextPaint.setAntiAlias(true);
        this.mTextRect = new Rect();
        this.mCtaText = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
        this.mButtonRect = new RectF();
        this.mButtonCornerRadius = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mButtonRect.set(getBounds());
        canvas.drawRoundRect(this.mButtonRect, this.mButtonCornerRadius, this.mButtonCornerRadius, this.mBackgroundPaint);
        canvas.drawRoundRect(this.mButtonRect, this.mButtonCornerRadius, this.mButtonCornerRadius, this.mOutlinePaint);
        drawTextWithinBounds(canvas, this.mTextPaint, this.mTextRect, this.mCtaText);
    }

    public void setCtaText(@NonNull String ctaText) {
        this.mCtaText = ctaText;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public String getCtaText() {
        return this.mCtaText;
    }
}
