package com.amazon.device.ads;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
class DisplayUtils {
    private static int[][] rotationArray = {new int[]{1, 0, 9, 8}, new int[]{0, 9, 8, 1}};

    DisplayUtils() {
    }

    public static int determineCanonicalScreenOrientation(Context context) {
        boolean naturalOrientationIsPortrait;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display display = windowManager.getDefaultDisplay();
        int rotation = AndroidTargetUtils.getOrientation(display);
        int orientation = context.getResources().getConfiguration().orientation;
        if (orientation == 1) {
            naturalOrientationIsPortrait = rotation == 0 || rotation == 2;
        } else if (orientation == 2) {
            naturalOrientationIsPortrait = rotation == 1 || rotation == 3;
        } else {
            naturalOrientationIsPortrait = true;
        }
        int rotationSelector = naturalOrientationIsPortrait ? 0 : 1;
        return rotationArray[rotationSelector][rotation];
    }
}
