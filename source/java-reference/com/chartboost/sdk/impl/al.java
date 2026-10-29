package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class al extends LinearLayout {
    private ai a;
    private LinearLayout b;
    private bj c;
    private TextView d;
    private bk e;
    private int f;

    public al(Context context, ai aiVar) {
        super(context);
        this.f = Integer.MIN_VALUE;
        this.a = aiVar;
        a(context);
    }

    private void a(Context context) {
        Context context2 = getContext();
        int iRound = Math.round(getContext().getResources().getDisplayMetrics().density * 8.0f);
        setOrientation(1);
        setGravity(17);
        this.b = new LinearLayout(context2);
        this.b.setGravity(17);
        this.b.setOrientation(0);
        this.b.setPadding(iRound, iRound, iRound, iRound);
        this.c = new bj(context2);
        this.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.c.setPadding(0, 0, iRound, 0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.a.a(layoutParams, this.a.E, 1.0f);
        this.d = new TextView(getContext());
        this.d.setTextColor(-1);
        this.d.setTypeface(null, 1);
        this.d.setGravity(17);
        this.d.setTextSize(2, com.chartboost.sdk.f.a(context) ? 26.0f : 16.0f);
        this.b.addView(this.c, layoutParams);
        this.b.addView(this.d, new LinearLayout.LayoutParams(-2, -2));
        this.e = new bk(getContext()) { // from class: com.chartboost.sdk.impl.al.1
            @Override // com.chartboost.sdk.impl.bk
            protected void a(MotionEvent motionEvent) {
                al.this.e.setEnabled(false);
                al.this.a.e().i();
            }
        };
        this.e.setPadding(0, 0, 0, iRound);
        this.e.a(ImageView.ScaleType.FIT_CENTER);
        this.e.setPadding(iRound, iRound, iRound, iRound);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        this.a.a(layoutParams2, this.a.D, 1.0f);
        if (this.a.E.e()) {
            this.c.a(this.a.E);
        }
        if (this.a.D.e()) {
            this.e.a(this.a.D);
        }
        addView(this.b, new LinearLayout.LayoutParams(-2, -2));
        addView(this.e, layoutParams2);
        a();
    }

    public void a(boolean z) {
        setBackgroundColor(z ? -16777216 : this.f);
    }

    public void a(String str, int i) {
        this.d.setText(str);
        this.f = i;
        a(this.a.r());
    }

    public void a() {
        a(this.a.r());
    }
}
