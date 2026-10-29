package android.support.v4.view;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
class ViewGroupCompatHC {
    private ViewGroupCompatHC() {
    }

    public static void setMotionEventSplittingEnabled(ViewGroup group, boolean split) {
        group.setMotionEventSplittingEnabled(split);
    }
}
