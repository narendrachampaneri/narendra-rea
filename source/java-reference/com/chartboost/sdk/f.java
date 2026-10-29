package com.chartboost.sdk;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.bh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static Handler a = CBUtility.e();
    protected com.chartboost.sdk.Libraries.e.a e;
    protected com.chartboost.sdk.Model.a f;
    public boolean b = false;
    protected List<b> c = new ArrayList();
    protected List<b> d = new ArrayList();
    public Map<Integer, Runnable> h = Collections.synchronizedMap(new HashMap());
    protected boolean i = true;
    protected boolean j = true;
    private a l = null;
    protected com.chartboost.sdk.Libraries.f g = CBUtility.c();
    private boolean k = false;

    public interface b {
        boolean a();
    }

    protected abstract a b(Context context);

    public abstract class a extends RelativeLayout {
        private boolean b;
        private int c;
        private int d;
        private int e;
        private int f;
        private com.chartboost.sdk.Libraries.f g;

        protected abstract void a(int i, int i2);

        public a(Context context) {
            super(context);
            this.b = false;
            this.c = -1;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = null;
            f.this.l = this;
            f.this.k = false;
            setFocusableInTouchMode(true);
            requestFocus();
        }

        @Override // android.view.View
        protected void onSizeChanged(int w, int h, int oldw, int oldh) {
            super.onSizeChanged(w, h, oldw, oldh);
            this.e = w;
            this.f = h;
            if (this.c != -1 && this.d != -1) {
                a();
            }
        }

        private boolean b(int i, int i2) {
            boolean z = true;
            if (this.b) {
                return false;
            }
            com.chartboost.sdk.Libraries.f fVarC = CBUtility.c();
            if (this.c == i && this.d == i2 && this.g == fVarC) {
                return true;
            }
            this.b = true;
            try {
                if (f.this.i && fVarC.b()) {
                    f.this.g = fVarC;
                } else if (f.this.j && fVarC.c()) {
                    f.this.g = fVarC;
                }
                a(i, i2);
                post(new Runnable() { // from class: com.chartboost.sdk.f.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.requestLayout();
                    }
                });
                this.c = i;
                this.d = i2;
                this.g = fVarC;
            } catch (Exception e) {
                CBLogging.b("CBViewProtocol", "Exception raised while layouting Subviews", e);
                z = false;
            }
            this.b = false;
            return z;
        }

        public final void a() {
            a(false);
        }

        public final void a(boolean z) {
            if (z) {
                this.g = null;
            }
            a((Activity) getContext());
        }

        public void b() {
        }

        public boolean a(Activity activity) {
            int height;
            int width;
            if (this.e == -1 || this.f == -1) {
                try {
                    width = getWidth();
                    height = getHeight();
                    if (width == 0 || height == 0) {
                        View viewFindViewById = activity.getWindow().findViewById(R.id.content);
                        if (viewFindViewById == null) {
                            viewFindViewById = activity.getWindow().getDecorView();
                        }
                        width = viewFindViewById.getWidth();
                        height = viewFindViewById.getHeight();
                    }
                } catch (Exception e) {
                    height = 0;
                    width = 0;
                }
                if (width == 0 || height == 0) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                    width = displayMetrics.widthPixels;
                    height = displayMetrics.heightPixels;
                }
                this.e = width;
                this.f = height;
            }
            return b(this.e, this.f);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < f.this.h.size()) {
                    f.a.removeCallbacks(f.this.h.get(Integer.valueOf(i2)));
                    i = i2 + 1;
                } else {
                    f.this.h.clear();
                    return;
                }
            }
        }

        public final void a(View view) {
            int i = 200;
            if (200 == getId()) {
                i = HttpStatus.SC_CREATED;
            }
            int i2 = i;
            View viewFindViewById = findViewById(i);
            while (viewFindViewById != null) {
                i2++;
                viewFindViewById = findViewById(i2);
            }
            view.setId(i2);
            view.setSaveEnabled(false);
        }

        protected boolean c() {
            return f.a(getContext());
        }
    }

    public static boolean a(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 4;
    }

    public f(com.chartboost.sdk.Model.a aVar) {
        this.f = aVar;
    }

    public com.chartboost.sdk.Libraries.f a() {
        return this.g;
    }

    public boolean a(com.chartboost.sdk.Libraries.e.a aVar) {
        this.e = aVar.a("assets");
        if (!this.e.b()) {
            return true;
        }
        CBLogging.b("CBViewProtocol", "Assets got from the response is null or empty");
        a(CBError.CBImpressionError.INVALID_RESPONSE);
        return false;
    }

    public void a(b bVar) {
        if (bVar.a()) {
            this.d.remove(bVar);
        }
        this.c.remove(bVar);
        if (this.c.isEmpty() && !b()) {
            CBLogging.b("CBViewProtocol", "Error while downloading the assets");
            a(CBError.CBImpressionError.ASSETS_DOWNLOAD_FAILURE);
        }
    }

    public boolean b() {
        if (!this.d.isEmpty()) {
            CBLogging.d("CBViewProtocol", "not completed loading assets for impression");
            return false;
        }
        i();
        return true;
    }

    public CBError.CBImpressionError c() {
        Activity activityF = Chartboost.f();
        if (activityF == null) {
            this.l = null;
            return CBError.CBImpressionError.NO_HOST_ACTIVITY;
        }
        if (!this.j && !this.i) {
            return CBError.CBImpressionError.WRONG_ORIENTATION;
        }
        this.g = CBUtility.c();
        if ((this.g.c() && !this.j) || (this.g.b() && !this.i)) {
            this.g = this.g.a();
        }
        if (this.l == null) {
            this.l = b(activityF);
        }
        if (this.l.a(activityF)) {
            return null;
        }
        this.l = null;
        return CBError.CBImpressionError.ERROR_CREATING_VIEW;
    }

    public void d() {
        f();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.h.size()) {
                a.removeCallbacks(this.h.get(Integer.valueOf(i2)));
                i = i2 + 1;
            } else {
                this.h.clear();
                return;
            }
        }
    }

    public a e() {
        return this.l;
    }

    public void f() {
        if (this.l != null) {
            this.l.b();
        }
        this.l = null;
    }

    public com.chartboost.sdk.Libraries.e.a g() {
        return this.e;
    }

    public void b(b bVar) {
        this.c.add(bVar);
        this.d.add(bVar);
    }

    protected void a(CBError.CBImpressionError cBImpressionError) {
        this.f.a(cBImpressionError);
    }

    protected void h() {
        if (!this.k) {
            this.k = true;
            this.f.c();
        }
    }

    protected void i() {
        this.f.d();
    }

    public boolean a(String str, com.chartboost.sdk.Libraries.e.a aVar) {
        return this.f.a(str, aVar);
    }

    public void a(boolean z, View view) {
        a(z, view, true);
    }

    public void a(final boolean z, final View view, boolean z2) {
        if (((!z || view.getVisibility() != 0) && (z || view.getVisibility() != 8)) || this.h.get(Integer.valueOf(view.hashCode())) != null) {
            if (!z2) {
                view.setVisibility(z ? 0 : 8);
                view.setClickable(z);
            } else {
                Runnable runnable = new Runnable() { // from class: com.chartboost.sdk.f.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!z) {
                            view.setVisibility(8);
                            view.setClickable(false);
                        }
                        f.this.h.remove(Integer.valueOf(view.hashCode()));
                    }
                };
                bh.a(z, view, 250L);
                a(view, runnable, 250L);
            }
        }
    }

    protected void a(View view, Runnable runnable, long j) {
        Runnable runnable2 = this.h.get(Integer.valueOf(view.hashCode()));
        if (runnable2 != null) {
            a.removeCallbacks(runnable2);
        }
        this.h.put(Integer.valueOf(view.hashCode()), runnable);
        a.postDelayed(runnable, j);
    }

    public static int a(String str) {
        if (str == null) {
            return 0;
        }
        if (!str.startsWith("#")) {
            try {
                return Color.parseColor(str);
            } catch (IllegalArgumentException e) {
                str = "#" + str;
            }
        }
        if (str.length() == 4 || str.length() == 5) {
            StringBuilder sb = new StringBuilder((str.length() * 2) + 1);
            sb.append("#");
            for (int i = 0; i < str.length() - 1; i++) {
                sb.append(str.charAt(i + 1));
                sb.append(str.charAt(i + 1));
            }
            str = sb.toString();
        }
        try {
            return Color.parseColor(str);
        } catch (IllegalArgumentException e2) {
            CBLogging.d("CBViewProtocol", "error parsing color " + str, e2);
            return 0;
        }
    }

    public boolean j() {
        return false;
    }

    public void k() {
        if (this.b) {
            this.b = false;
        }
        if (e() != null && CBUtility.c() != e().g) {
            e().a(false);
        }
    }

    public void l() {
        this.b = true;
    }
}
