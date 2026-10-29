package com.vungle.publisher.display.view;

import android.content.Context;
import android.util.TypedValue;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class DisplayUtils {

    @Inject
    Context a;

    public final float a(int i) {
        return TypedValue.applyDimension(1, i, this.a.getResources().getDisplayMetrics());
    }

    DisplayUtils() {
    }
}
