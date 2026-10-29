package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;

/* JADX INFO: loaded from: classes.dex */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    @NonNull
    private final Paint mArcPaint;

    @NonNull
    private final Paint mCirclePaint;
    private int mInitialCountdownMilliseconds;
    private int mSecondsRemaining;
    private float mSweepAngle;

    @NonNull
    private final Paint mTextPaint;

    @NonNull
    private Rect mTextRect;

    public RadialCountdownDrawable(@NonNull Context context) {
        int circleStrokeWidth = Dips.dipsToIntPixels(3.0f, context);
        float textSizePixels = Dips.dipsToFloatPixels(18.0f, context);
        this.mCirclePaint = new Paint();
        this.mCirclePaint.setColor(-1);
        this.mCirclePaint.setAlpha(128);
        this.mCirclePaint.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        this.mCirclePaint.setStrokeWidth(circleStrokeWidth);
        this.mCirclePaint.setAntiAlias(true);
        this.mArcPaint = new Paint();
        this.mArcPaint.setColor(-1);
        this.mArcPaint.setAlpha(255);
        this.mArcPaint.setStyle(DrawableConstants.RadialCountdown.PROGRESS_STYLE);
        this.mArcPaint.setStrokeWidth(circleStrokeWidth);
        this.mArcPaint.setAntiAlias(true);
        this.mTextPaint = new Paint();
        this.mTextPaint.setColor(-1);
        this.mTextPaint.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        this.mTextPaint.setTextSize(textSizePixels);
        this.mTextPaint.setAntiAlias(true);
        this.mTextRect = new Rect();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int centerX = getBounds().centerX();
        int centerY = getBounds().centerY();
        int radius = Math.min(centerX, centerY);
        canvas.drawCircle(centerX, centerY, radius, this.mCirclePaint);
        String secondsRemainingText = String.valueOf(this.mSecondsRemaining);
        drawTextWithinBounds(canvas, this.mTextPaint, this.mTextRect, secondsRemainingText);
        RectF circle = new RectF(getBounds());
        canvas.drawArc(circle, -90.0f, this.mSweepAngle, false, this.mArcPaint);
    }

    public void setInitialCountdown(int initialCountdownMilliseconds) {
        this.mInitialCountdownMilliseconds = initialCountdownMilliseconds;
    }

    public void updateCountdownProgress(int currentProgressMilliseconds) {
        int remainingCountdownMilliseconds = this.mInitialCountdownMilliseconds - currentProgressMilliseconds;
        this.mSecondsRemaining = (int) Numbers.convertMillisecondsToSecondsRoundedUp(remainingCountdownMilliseconds);
        this.mSweepAngle = (360.0f * currentProgressMilliseconds) / this.mInitialCountdownMilliseconds;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public int getInitialCountdownMilliseconds() {
        return this.mInitialCountdownMilliseconds;
    }
}
