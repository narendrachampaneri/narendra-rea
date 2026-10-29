package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class bk extends RelativeLayout {
    private static Rect b = new Rect();
    private a a;
    protected boolean c;
    protected Button d;
    private boolean e;

    protected abstract void a(MotionEvent motionEvent);

    public bk(Context context) {
        super(context);
        this.c = false;
        this.d = null;
        this.e = true;
        b();
    }

    private void b() {
        this.a = new a(getContext());
        this.a.setOnTouchListener(new View.OnTouchListener() { // from class: com.chartboost.sdk.impl.bk.1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                boolean zB = bk.b(v, event);
                switch (event.getActionMasked()) {
                    case 0:
                        bk.this.a.a(zB);
                        return zB;
                    case 1:
                        if (bk.this.getVisibility() == 0 && bk.this.isEnabled() && zB) {
                            bk.this.a(event);
                        }
                        bk.this.a.a(false);
                        return true;
                    case 2:
                        bk.this.a.a(zB);
                        return true;
                    case 3:
                    case 4:
                        bk.this.a.a(false);
                        return true;
                    default:
                        return true;
                }
            }
        });
        addView(this.a, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(View view, MotionEvent motionEvent) {
        view.getLocalVisibleRect(b);
        b.left += view.getPaddingLeft();
        b.top += view.getPaddingTop();
        b.right -= view.getPaddingRight();
        b.bottom -= view.getPaddingBottom();
        return b.contains(Math.round(motionEvent.getX()), Math.round(motionEvent.getY()));
    }

    public class a extends bj {
        public a(Context context) {
            super(context);
            bk.this.c = false;
        }

        protected void a(boolean z) {
            if (bk.this.e && z) {
                if (!bk.this.c) {
                    if (getDrawable() != null) {
                        getDrawable().setColorFilter(1996488704, PorterDuff.Mode.SRC_ATOP);
                    } else if (getBackground() != null) {
                        getBackground().setColorFilter(1996488704, PorterDuff.Mode.SRC_ATOP);
                    }
                    invalidate();
                    bk.this.c = true;
                    return;
                }
                return;
            }
            if (bk.this.c) {
                if (getDrawable() != null) {
                    getDrawable().clearColorFilter();
                } else if (getBackground() != null) {
                    getBackground().clearColorFilter();
                }
                invalidate();
                bk.this.c = false;
            }
        }

        public void a(com.chartboost.sdk.Libraries.j jVar, ViewGroup.LayoutParams layoutParams) {
            a(jVar);
            layoutParams.width = jVar.h();
            layoutParams.height = jVar.i();
        }
    }

    public void a(String str) {
        if (str != null) {
            a().setText(str);
            addView(a(), new RelativeLayout.LayoutParams(-1, -1));
            this.a.setVisibility(8);
            a(false);
            this.d.setOnClickListener(new View.OnClickListener() { // from class: com.chartboost.sdk.impl.bk.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    bk.this.a((MotionEvent) null);
                }
            });
            return;
        }
        if (this.d != null) {
            removeView(a());
            this.d = null;
            this.a.setVisibility(0);
            a(true);
        }
    }

    public TextView a() {
        if (this.d == null) {
            this.d = new Button(getContext());
            this.d.setGravity(17);
        }
        this.d.postInvalidate();
        return this.d;
    }

    public void a(com.chartboost.sdk.Libraries.j jVar) {
        this.a.a(jVar);
        a((String) null);
    }

    public void a(com.chartboost.sdk.Libraries.j jVar, RelativeLayout.LayoutParams layoutParams) {
        this.a.a(jVar, layoutParams);
        a((String) null);
    }

    public void a(ImageView.ScaleType scaleType) {
        this.a.setScaleType(scaleType);
    }

    public void a(boolean z) {
        this.e = z;
    }
}
