package com.vungle.publisher.image;

import android.content.Context;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseBitmapFactory implements BitmapFactory {
    protected android.graphics.BitmapFactory.Options getOptions(Context context) {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inDensity = 330;
        options.inTargetDensity = (int) (context.getResources().getDisplayMetrics().density * options.inDensity);
        return options;
    }
}
