package com.google.android.exoplayer.text;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
final class CuePainter {
    private static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    private static final float INNER_PADDING_RATIO = 0.125f;
    private static final float LINE_HEIGHT_FRACTION = 0.0533f;
    private static final String TAG = "CuePainter";
    private int backgroundColor;
    private final float cornerRadius;
    private Layout.Alignment cueAlignment;
    private int cuePosition;
    private CharSequence cueText;
    private int edgeColor;
    private int edgeType;
    private int foregroundColor;
    private final RectF lineBounds = new RectF();
    private final float outlineWidth;
    private final Paint paint;
    private int parentBottom;
    private int parentLeft;
    private int parentRight;
    private int parentTop;
    private final float shadowOffset;
    private final float shadowRadius;
    private final float spacingAdd;
    private final float spacingMult;
    private StaticLayout textLayout;
    private int textLeft;
    private int textPaddingX;
    private final TextPaint textPaint;
    private int textTop;
    private int windowColor;

    public CuePainter(Context context) {
        int[] viewAttr = {R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier};
        TypedArray styledAttributes = context.obtainStyledAttributes(null, viewAttr, 0, 0);
        this.spacingAdd = styledAttributes.getDimensionPixelSize(0, 0);
        this.spacingMult = styledAttributes.getFloat(1, 1.0f);
        styledAttributes.recycle();
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int twoDpInPx = Math.round((2.0f * displayMetrics.densityDpi) / 160.0f);
        this.cornerRadius = twoDpInPx;
        this.outlineWidth = twoDpInPx;
        this.shadowRadius = twoDpInPx;
        this.shadowOffset = twoDpInPx;
        this.textPaint = new TextPaint();
        this.textPaint.setAntiAlias(true);
        this.textPaint.setSubpixelText(true);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
    }

    public void draw(Cue cue, CaptionStyleCompat style, float fontScale, Canvas canvas, int cueBoxLeft, int cueBoxTop, int cueBoxRight, int cueBoxBottom) {
        if (!TextUtils.isEmpty(cue.text)) {
            if (TextUtils.equals(this.cueText, cue.text) && this.cuePosition == cue.position && Util.areEqual(this.cueAlignment, cue.alignment) && this.foregroundColor == style.foregroundColor && this.backgroundColor == style.backgroundColor && this.windowColor == style.windowColor && this.edgeType == style.edgeType && this.edgeColor == style.edgeColor && Util.areEqual(this.textPaint.getTypeface(), style.typeface) && this.parentLeft == cueBoxLeft && this.parentTop == cueBoxTop && this.parentRight == cueBoxRight && this.parentBottom == cueBoxBottom) {
                drawLayout(canvas);
                return;
            }
            this.cueText = cue.text;
            this.cuePosition = cue.position;
            this.cueAlignment = cue.alignment;
            this.foregroundColor = style.foregroundColor;
            this.backgroundColor = style.backgroundColor;
            this.windowColor = style.windowColor;
            this.edgeType = style.edgeType;
            this.edgeColor = style.edgeColor;
            this.textPaint.setTypeface(style.typeface);
            this.parentLeft = cueBoxLeft;
            this.parentTop = cueBoxTop;
            this.parentRight = cueBoxRight;
            this.parentBottom = cueBoxBottom;
            int parentWidth = this.parentRight - this.parentLeft;
            int parentHeight = this.parentBottom - this.parentTop;
            float textSize = LINE_HEIGHT_FRACTION * parentHeight * fontScale;
            this.textPaint.setTextSize(textSize);
            int textPaddingX = (int) ((INNER_PADDING_RATIO * textSize) + 0.5f);
            int availableWidth = parentWidth - (textPaddingX * 2);
            if (availableWidth <= 0) {
                Log.w(TAG, "Skipped drawing subtitle cue (insufficient space)");
                return;
            }
            Layout.Alignment layoutAlignment = this.cueAlignment == null ? Layout.Alignment.ALIGN_CENTER : this.cueAlignment;
            this.textLayout = new StaticLayout(this.cueText, this.textPaint, availableWidth, layoutAlignment, this.spacingMult, this.spacingAdd, true);
            int textHeight = this.textLayout.getHeight();
            int textWidth = 0;
            int lineCount = this.textLayout.getLineCount();
            for (int i = 0; i < lineCount; i++) {
                textWidth = Math.max((int) Math.ceil(this.textLayout.getLineWidth(i)), textWidth);
            }
            int textWidth2 = textWidth + (textPaddingX * 2);
            int textLeft = (parentWidth - textWidth2) / 2;
            int textRight = textLeft + textWidth2;
            int textTop = (this.parentBottom - textHeight) - ((int) (parentHeight * DEFAULT_BOTTOM_PADDING_FRACTION));
            int i2 = textTop + textHeight;
            if (cue.position != -1) {
                if (cue.alignment == Layout.Alignment.ALIGN_OPPOSITE) {
                    textRight = ((cue.position * parentWidth) / 100) + this.parentLeft;
                    textLeft = Math.max(textRight - textWidth2, this.parentLeft);
                } else {
                    textLeft = ((cue.position * parentWidth) / 100) + this.parentLeft;
                    textRight = Math.min(textLeft + textWidth2, this.parentRight);
                }
            }
            if (cue.line != -1) {
                textTop = ((cue.line * parentHeight) / 100) + this.parentTop;
                int textBottom = textTop + textHeight;
                if (textBottom > this.parentBottom) {
                    textTop = this.parentBottom - textHeight;
                    int i3 = this.parentBottom;
                }
            }
            int textWidth3 = textRight - textLeft;
            this.textLayout = new StaticLayout(this.cueText, this.textPaint, textWidth3, layoutAlignment, this.spacingMult, this.spacingAdd, true);
            this.textLeft = textLeft;
            this.textTop = textTop;
            this.textPaddingX = textPaddingX;
            drawLayout(canvas);
        }
    }

    private void drawLayout(Canvas canvas) {
        StaticLayout layout = this.textLayout;
        if (layout != null) {
            int saveCount = canvas.save();
            canvas.translate(this.textLeft, this.textTop);
            if (Color.alpha(this.windowColor) > 0) {
                this.paint.setColor(this.windowColor);
                canvas.drawRect(-this.textPaddingX, 0.0f, layout.getWidth() + this.textPaddingX, layout.getHeight(), this.paint);
            }
            if (Color.alpha(this.backgroundColor) > 0) {
                this.paint.setColor(this.backgroundColor);
                float previousBottom = layout.getLineTop(0);
                int lineCount = layout.getLineCount();
                for (int i = 0; i < lineCount; i++) {
                    this.lineBounds.left = layout.getLineLeft(i) - this.textPaddingX;
                    this.lineBounds.right = layout.getLineRight(i) + this.textPaddingX;
                    this.lineBounds.top = previousBottom;
                    this.lineBounds.bottom = layout.getLineBottom(i);
                    previousBottom = this.lineBounds.bottom;
                    canvas.drawRoundRect(this.lineBounds, this.cornerRadius, this.cornerRadius, this.paint);
                }
            }
            if (this.edgeType == 1) {
                this.textPaint.setStrokeJoin(Paint.Join.ROUND);
                this.textPaint.setStrokeWidth(this.outlineWidth);
                this.textPaint.setColor(this.edgeColor);
                this.textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                layout.draw(canvas);
            } else if (this.edgeType == 2) {
                this.textPaint.setShadowLayer(this.shadowRadius, this.shadowOffset, this.shadowOffset, this.edgeColor);
            } else if (this.edgeType == 3 || this.edgeType == 4) {
                boolean raised = this.edgeType == 3;
                int colorUp = raised ? -1 : this.edgeColor;
                int colorDown = raised ? this.edgeColor : -1;
                float offset = this.shadowRadius / 2.0f;
                this.textPaint.setColor(this.foregroundColor);
                this.textPaint.setStyle(Paint.Style.FILL);
                this.textPaint.setShadowLayer(this.shadowRadius, -offset, -offset, colorUp);
                layout.draw(canvas);
                this.textPaint.setShadowLayer(this.shadowRadius, offset, offset, colorDown);
            }
            this.textPaint.setColor(this.foregroundColor);
            this.textPaint.setStyle(Paint.Style.FILL);
            layout.draw(canvas);
            this.textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
            canvas.restoreToCount(saveCount);
        }
    }
}
