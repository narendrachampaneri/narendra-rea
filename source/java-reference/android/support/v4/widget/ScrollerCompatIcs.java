package android.support.v4.widget;

import android.widget.OverScroller;

/* JADX INFO: loaded from: classes2.dex */
class ScrollerCompatIcs {
    ScrollerCompatIcs() {
    }

    public static float getCurrVelocity(Object scroller) {
        return ((OverScroller) scroller).getCurrVelocity();
    }
}
