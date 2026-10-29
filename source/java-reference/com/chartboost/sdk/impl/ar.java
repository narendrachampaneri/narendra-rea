package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.CBUtility;
import com.mopub.mobileads.VastIconXmlManager;
import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: loaded from: classes.dex */
public class ar extends ap {
    private aw a;
    private TextView b;
    private TextView c;
    private TextView d;
    private LinearLayout e;
    private au f;
    private bk g;
    private int h;
    private Point i;
    private com.chartboost.sdk.Libraries.j j;
    private View.OnClickListener k;

    public ar(aw awVar, Context context) {
        super(context);
        this.a = awVar;
        this.e = new LinearLayout(context);
        this.e.setOrientation(1);
        setGravity(16);
        boolean zA = com.chartboost.sdk.f.a(context);
        this.b = new TextView(context);
        this.b.setTypeface(null, 1);
        this.b.setTextSize(2, zA ? 21.0f : 16.0f);
        this.b.setTextColor(-16777216);
        this.b.setSingleLine();
        this.b.setEllipsize(TextUtils.TruncateAt.END);
        this.c = new TextView(context);
        this.c.setTextSize(2, zA ? 16.0f : 10.0f);
        this.c.setTextColor(-16777216);
        this.c.setSingleLine();
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.d = new TextView(context);
        this.d.setTextSize(2, zA ? 18.0f : 11.0f);
        this.d.setTextColor(-16777216);
        this.d.setMaxLines(2);
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        this.g = new bk(context) { // from class: com.chartboost.sdk.impl.ar.1
            @Override // com.chartboost.sdk.impl.bk
            protected void a(MotionEvent motionEvent) {
                ar.this.k.onClick(ar.this.g);
            }
        };
        this.g.a(ImageView.ScaleType.FIT_CENTER);
        this.f = new au(context);
        setFocusable(false);
        setGravity(16);
        addView(this.f);
        addView(this.e, new LinearLayout.LayoutParams(0, -2, 1.0f));
        addView(this.g);
        setBackgroundColor(0);
        this.e.addView(this.b, new LinearLayout.LayoutParams(-1, -2));
        this.e.addView(this.c, new LinearLayout.LayoutParams(-1, -2));
        this.e.addView(this.d, new LinearLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener clickListener) {
        super.setOnClickListener(clickListener);
        this.k = clickListener;
    }

    @Override // com.chartboost.sdk.impl.ap
    public void a(com.chartboost.sdk.Libraries.e.a aVar, int i) {
        int iA;
        this.b.setText(aVar.a(AnalyticAttribute.EVENT_NAME_ATTRIBUTE).d("Unknown App"));
        if (TextUtils.isEmpty(aVar.e("publisher"))) {
            this.c.setVisibility(8);
        } else {
            this.c.setText(aVar.e("publisher"));
        }
        if (TextUtils.isEmpty(aVar.e("description"))) {
            this.d.setVisibility(8);
        } else {
            this.d.setText(aVar.e("description"));
        }
        this.h = aVar.b("border-color") ? -4802890 : com.chartboost.sdk.f.a(aVar.e("border-color"));
        if (aVar.c(VastIconXmlManager.OFFSET)) {
            this.i = new Point(aVar.a(VastIconXmlManager.OFFSET).f("x"), aVar.a(VastIconXmlManager.OFFSET).f("y"));
        } else {
            this.i = new Point(0, 0);
        }
        this.j = null;
        if (aVar.c("deep-link") && bb.a(aVar.e("deep-link"))) {
            if (this.a.l.e()) {
                this.j = this.a.l;
            } else {
                this.g.a("Play");
            }
        } else if (this.a.k.e()) {
            this.j = this.a.k;
        } else {
            this.g.a("Install");
        }
        int iA2 = CBUtility.a(com.chartboost.sdk.f.a(getContext()) ? 14 : 7, getContext());
        if (this.j != null) {
            this.g.a(this.j);
            iA = (iA2 * 2) + Math.round((this.j.b() * c()) / this.j.c());
        } else {
            this.g.a().setTextColor(-14571545);
            int iA3 = CBUtility.a(8, getContext());
            this.g.a().setPadding(iA3, iA3, iA3, iA3);
            iA = CBUtility.a(100, getContext());
        }
        this.g.setLayoutParams(new LinearLayout.LayoutParams(iA, c()));
        removeView(this.f);
        this.f = new au(getContext());
        addView(this.f, 0);
        a(this.f, i, aVar.a("assets").a("icon"));
        this.f.a(this.h);
        this.f.a(0.16666667f);
        b();
    }

    private void a(bj bjVar, int i, com.chartboost.sdk.Libraries.e.a aVar) {
        if (!aVar.b()) {
            Bundle bundle = new Bundle();
            bundle.putInt("index", i);
            String strE = "";
            if (aVar.e("checksum") != null && !aVar.e("checksum").isEmpty()) {
                strE = aVar.e("checksum");
            }
            bc.a().a(aVar.e("url"), strE, null, bjVar, bundle);
        }
    }

    protected void b() {
        int iA = CBUtility.a(com.chartboost.sdk.f.a(getContext()) ? 14 : 7, getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a() - (iA * 2), a() - (iA * 2));
        layoutParams.setMargins(iA, iA, iA, iA);
        this.e.setPadding(0, iA, 0, iA);
        this.g.setPadding((this.i.x * 2) + iA, this.i.y * 2, iA, 0);
        this.f.setLayoutParams(layoutParams);
        this.f.setScaleType(ImageView.ScaleType.FIT_CENTER);
    }

    @Override // com.chartboost.sdk.impl.ap
    public int a() {
        int i = 134;
        if (CBUtility.c().c()) {
            if (!com.chartboost.sdk.f.a(getContext())) {
                i = 75;
            }
        } else if (!com.chartboost.sdk.f.a(getContext())) {
            i = 77;
        }
        return CBUtility.a(i, getContext());
    }

    private int c() {
        int i = 74;
        if (CBUtility.c().c()) {
            if (!com.chartboost.sdk.f.a(getContext())) {
                i = 41;
            }
        } else if (!com.chartboost.sdk.f.a(getContext())) {
            i = 41;
        }
        return CBUtility.a(i, getContext());
    }
}
