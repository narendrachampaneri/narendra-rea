package com.mopub.common.util;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.mopub.common.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class Dips {
    public static float pixelsToFloatDips(float pixels, Context context) {
        return pixels / getDensity(context);
    }

    public static int pixelsToIntDips(float pixels, Context context) {
        return (int) (pixelsToFloatDips(pixels, context) + 0.5f);
    }

    public static float dipsToFloatPixels(float dips, Context context) {
        return getDensity(context) * dips;
    }

    public static int dipsToIntPixels(float dips, Context context) {
        return (int) (dipsToFloatPixels(dips, context) + 0.5f);
    }

    private static float getDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static float asFloatPixels(float dips, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return TypedValue.applyDimension(1, dips, displayMetrics);
    }

    public static int asIntPixels(float dips, Context context) {
        return (int) (asFloatPixels(dips, context) + 0.5f);
    }

    public static int screenWidthAsIntDips(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().widthPixels, context);
    }

    public static int screenHeightAsIntDips(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().heightPixels, context);
    }
}
