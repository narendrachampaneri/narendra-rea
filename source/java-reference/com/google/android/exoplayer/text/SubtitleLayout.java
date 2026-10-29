package com.google.android.exoplayer.text;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitleLayout extends View {
    private List<Cue> cues;
    private float fontScale;
    private final List<CuePainter> painters;
    private CaptionStyleCompat style;

    public SubtitleLayout(Context context) {
        this(context, null);
    }

    public SubtitleLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.painters = new ArrayList();
        this.fontScale = 1.0f;
        this.style = CaptionStyleCompat.DEFAULT;
    }

    public void setCues(List<Cue> cues) {
        if (this.cues != cues) {
            this.cues = cues;
            int cueCount = cues == null ? 0 : cues.size();
            while (this.painters.size() < cueCount) {
                this.painters.add(new CuePainter(getContext()));
            }
            invalidate();
        }
    }

    public void setFontScale(float fontScale) {
        if (this.fontScale != fontScale) {
            this.fontScale = fontScale;
            invalidate();
        }
    }

    public void setStyle(CaptionStyleCompat style) {
        if (this.style != style) {
            this.style = style;
            invalidate();
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        int cueCount = this.cues == null ? 0 : this.cues.size();
        for (int i = 0; i < cueCount; i++) {
            this.painters.get(i).draw(this.cues.get(i), this.style, this.fontScale, canvas, getLeft(), getTop(), getRight(), getBottom());
        }
    }
}
