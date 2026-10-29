package com.jirbo.adcolony;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class AdColonyOverlay extends ADCVideo {
    Rect Z = new Rect();
    int aa = 0;

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration new_config) {
        super.onConfigurationChanged(new_config);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        this.t = defaultDisplay.getWidth();
        this.u = defaultDisplay.getHeight();
        a.K = true;
        final View view = new View(this);
        view.setBackgroundColor(-16777216);
        if (d && this.H.Q) {
            this.Q.setLayoutParams(new FrameLayout.LayoutParams(this.t, this.u - this.H.m, 17));
            this.P.addView(view, new FrameLayout.LayoutParams(this.t, this.u, 17));
            new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.AdColonyOverlay.1
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyOverlay.this.P.removeView(view);
                }
            }, 1500L);
        }
        this.H.a();
    }
}
