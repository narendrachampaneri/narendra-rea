package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;

/* JADX INFO: loaded from: classes.dex */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    @NonNull
    private final Paint mBackgroundPaint = new Paint();
    private int mCurrentProgress;
    private int mDuration;
    private int mLastProgress;
    private final int mNuggetWidth;

    @NonNull
    private final Paint mProgressPaint;
    private int mSkipOffset;
    private float mSkipRatio;

    public ProgressBarDrawable(@NonNull Context context) {
        this.mBackgroundPaint.setColor(-1);
        this.mBackgroundPaint.setAlpha(128);
        this.mBackgroundPaint.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        this.mBackgroundPaint.setAntiAlias(true);
        this.mProgressPaint = new Paint();
        this.mProgressPaint.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        this.mProgressPaint.setAlpha(255);
        this.mProgressPaint.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        this.mProgressPaint.setAntiAlias(true);
        this.mNuggetWidth = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.mBackgroundPaint);
        float progressRatio = this.mCurrentProgress / this.mDuration;
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * progressRatio, getBounds().bottom, this.mProgressPaint);
        if (this.mSkipOffset > 0 && this.mSkipOffset < this.mDuration) {
            float nuggetPosition = getBounds().right * this.mSkipRatio;
            canvas.drawRect(nuggetPosition, getBounds().top, nuggetPosition + this.mNuggetWidth, getBounds().bottom, this.mProgressPaint);
        }
    }

    public void setDurationAndSkipOffset(int duration, int skipOffset) {
        this.mDuration = duration;
        this.mSkipOffset = skipOffset;
        this.mSkipRatio = this.mSkipOffset / this.mDuration;
    }

    public void setProgress(int currentProgress) {
        if (currentProgress >= this.mLastProgress) {
            this.mCurrentProgress = currentProgress;
            this.mLastProgress = currentProgress;
        } else if (currentProgress != 0) {
            MoPubLog.d(String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(this.mLastProgress), Integer.valueOf(currentProgress)));
            forceCompletion();
        }
        invalidateSelf();
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.mCurrentProgress = this.mDuration;
    }

    @VisibleForTesting
    @Deprecated
    public float getSkipRatio() {
        return this.mSkipRatio;
    }

    @VisibleForTesting
    @Deprecated
    public int getCurrentProgress() {
        return this.mCurrentProgress;
    }
}
