package com.vungle.publisher.display.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ShapeDrawable;
import android.view.View;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ProgressBar extends View {
    private ShapeDrawable a;
    private int b;
    private int c;
    private int d;
    private int e;

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        Context a;

        @Inject
        DisplayUtils b;
    }

    /* synthetic */ ProgressBar(Context x0, byte b) {
        this(x0);
    }

    static /* synthetic */ int a(ProgressBar progressBar) {
        progressBar.e = 1;
        return 1;
    }

    private ProgressBar(Context context) {
        super(context);
        this.a = new ShapeDrawable();
        this.b = -1;
        this.a.getPaint().setColor(-13659954);
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.a.draw(canvas);
    }

    @Override // android.view.View
    protected final void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.b = View.MeasureSpec.getSize(widthMeasureSpec);
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    private void setProgressWidth(float percent) {
        this.a.setBounds(0, 0, (int) (this.b * percent), this.d);
    }

    public final void setMaxTimeMillis(int maxTimeMillis) {
        this.c = maxTimeMillis;
    }

    public final void setCurrentTimeMillis(int currentTimeMillis) {
        setProgressWidth(currentTimeMillis / this.c);
        invalidate();
    }

    public final int getScreenHeight() {
        return this.d;
    }

    @Override // android.view.View
    public final int getId() {
        return this.e;
    }
}
