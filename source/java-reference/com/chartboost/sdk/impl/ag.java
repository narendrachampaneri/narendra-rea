package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class ag extends am {
    private LinearLayout b;
    private LinearLayout c;
    private bj d;
    private bk e;
    private TextView f;
    private TextView g;

    public ag(Context context, ai aiVar) {
        super(context, aiVar);
    }

    @Override // com.chartboost.sdk.impl.am
    protected View a() {
        Context context = getContext();
        int iRound = Math.round(getContext().getResources().getDisplayMetrics().density * 6.0f);
        this.b = new LinearLayout(context);
        this.b.setOrientation(0);
        this.b.setGravity(17);
        this.c = new LinearLayout(context);
        this.c.setOrientation(1);
        this.c.setGravity(19);
        this.d = new bj(context);
        this.d.setPadding(iRound, iRound, iRound, iRound);
        if (this.a.G.e()) {
            this.d.a(this.a.G);
        }
        this.e = new bk(context) { // from class: com.chartboost.sdk.impl.ag.1
            @Override // com.chartboost.sdk.impl.bk
            protected void a(MotionEvent motionEvent) {
                ag.this.a.e().h();
                com.chartboost.sdk.Tracking.a.a("install-click", ag.this.a.s, ag.this.a.n, Math.round(motionEvent.getX()), Math.round(motionEvent.getY()));
            }
        };
        this.e.setPadding(iRound, iRound, iRound, iRound);
        if (this.a.H.e()) {
            this.e.a(this.a.H);
        }
        this.f = new TextView(getContext());
        this.f.setTextColor(-15264491);
        this.f.setTypeface(null, 1);
        this.f.setGravity(3);
        this.f.setPadding(iRound, iRound, iRound, iRound / 2);
        this.g = new TextView(getContext());
        this.g.setTextColor(-15264491);
        this.g.setTypeface(null, 1);
        this.g.setGravity(3);
        this.g.setPadding(iRound, 0, iRound, iRound);
        this.f.setTextSize(2, 14.0f);
        this.g.setTextSize(2, 11.0f);
        this.c.addView(this.f);
        this.c.addView(this.g);
        this.b.addView(this.d);
        this.b.addView(this.c, new LinearLayout.LayoutParams(0, -2, 1.0f));
        this.b.addView(this.e);
        return this.b;
    }

    public void a(String str, String str2) {
        this.f.setText(str);
        this.g.setText(str2);
    }

    @Override // com.chartboost.sdk.impl.am
    protected int b() {
        return 72;
    }
}
