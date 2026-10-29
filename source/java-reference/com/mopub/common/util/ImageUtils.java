package com.mopub.common.util;

import android.graphics.Bitmap;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class ImageUtils {
    @NonNull
    public static Bitmap applyFastGaussianBlurToBitmap(@NonNull Bitmap mutableBitmap, int radius) {
        int w = mutableBitmap.getWidth();
        int h = mutableBitmap.getHeight();
        int[] pixels = new int[w * h];
        mutableBitmap.getPixels(pixels, 0, w, 0, 0, w, h);
        for (int r = radius; r >= 1; r /= 2) {
            for (int i = r; i < h - r; i++) {
                for (int j = r; j < w - r; j++) {
                    int tl = pixels[(((i - r) * w) + j) - r];
                    int tr = pixels[((i - r) * w) + j + r];
                    int tc = pixels[((i - r) * w) + j];
                    int bl = pixels[(((i + r) * w) + j) - r];
                    int br = pixels[((i + r) * w) + j + r];
                    int bc = pixels[((i + r) * w) + j];
                    int cl = pixels[((i * w) + j) - r];
                    int cr = pixels[(i * w) + j + r];
                    pixels[(i * w) + j] = (-16777216) | ((((((((((tl & 255) + (tr & 255)) + (tc & 255)) + (bl & 255)) + (br & 255)) + (bc & 255)) + (cl & 255)) + (cr & 255)) >> 3) & 255) | ((((((((((65280 & tl) + (65280 & tr)) + (65280 & tc)) + (65280 & bl)) + (65280 & br)) + (65280 & bc)) + (65280 & cl)) + (65280 & cr)) >> 3) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | ((((((((((16711680 & tl) + (16711680 & tr)) + (16711680 & tc)) + (16711680 & bl)) + (16711680 & br)) + (16711680 & bc)) + (16711680 & cl)) + (16711680 & cr)) >> 3) & 16711680);
                }
            }
        }
        mutableBitmap.setPixels(pixels, 0, w, 0, 0, w, h);
        return mutableBitmap;
    }

    public static void setImageViewAlpha(@NonNull ImageView imageView, int alpha) {
        if (Build.VERSION.SDK_INT >= 16) {
            imageView.setImageAlpha(alpha);
        } else {
            imageView.setAlpha(alpha);
        }
    }
}
