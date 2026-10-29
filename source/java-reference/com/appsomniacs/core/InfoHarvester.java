package com.appsomniacs.core;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;
import com.amazon.ags.constants.OverlaySize;
import com.inmobi.re.controller.JSController;

/* JADX INFO: loaded from: classes2.dex */
public class InfoHarvester {
    public static StringBuilder createFullReport(Activity activity, StringBuilder stringBuilder) {
        DisplayMetrics dm = getDisplayMetrics(activity);
        if (stringBuilder == null) {
            stringBuilder = new StringBuilder();
        }
        printResolution(stringBuilder, dm);
        printScreenDensity(stringBuilder, dm);
        printScreenSize(activity, stringBuilder);
        stringBuilder.append("\n");
        printSystemInfo(stringBuilder);
        stringBuilder.append("\n");
        printDeviceInfo(stringBuilder);
        return stringBuilder;
    }

    private static DisplayMetrics getDisplayMetrics(Activity activity) {
        DisplayMetrics dm = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
        return dm;
    }

    private static void printResolution(StringBuilder stringBuilder, DisplayMetrics dm) {
        stringBuilder.append("Resolution: ");
        stringBuilder.append(dm.widthPixels);
        stringBuilder.append(" x ");
        stringBuilder.append(dm.heightPixels);
        stringBuilder.append(" px\n");
    }

    private static void printScreenDensity(StringBuilder stringBuilder, DisplayMetrics dm) {
        stringBuilder.append("Density: ");
        stringBuilder.append(dm.densityDpi);
        stringBuilder.append(" dpi");
        stringBuilder.append(" (");
        switch (dm.densityDpi) {
            case 120:
                stringBuilder.append("ldpi");
                break;
            case 160:
                stringBuilder.append("mdpi");
                break;
            case 213:
                stringBuilder.append("tvdpi");
                break;
            case 240:
                stringBuilder.append("hdpi");
                break;
            case OverlaySize.TOAST_WIDTH_PIXELS /* 320 */:
                stringBuilder.append("xhdpi");
                break;
            case 480:
                stringBuilder.append("xxhdpi");
                break;
        }
        stringBuilder.append(")\n");
    }

    private static void printScreenSize(Activity activity, StringBuilder stringBuilder) {
        stringBuilder.append("Screen size: ");
        if ((activity.getResources().getConfiguration().screenLayout & 15) == 3) {
            stringBuilder.append("large");
        } else if ((activity.getResources().getConfiguration().screenLayout & 15) == 2) {
            stringBuilder.append(JSController.STYLE_NORMAL);
        } else if ((activity.getResources().getConfiguration().screenLayout & 15) == 1) {
            stringBuilder.append("small");
        } else if ((activity.getResources().getConfiguration().screenLayout & 15) == 4) {
            stringBuilder.append("xlarge");
        } else if ((activity.getResources().getConfiguration().screenLayout & 15) == 0) {
            stringBuilder.append("undefined");
        } else {
            stringBuilder.append("?");
        }
        stringBuilder.append("\n");
    }

    private static void printSystemInfo(StringBuilder stringBuilder) {
        stringBuilder.append("Android version: " + Build.VERSION.RELEASE + "\n");
        stringBuilder.append("SDK: " + Build.VERSION.SDK_INT);
        stringBuilder.append("\n");
    }

    private static void printDeviceInfo(StringBuilder stringBuilder) {
        stringBuilder.append("Board: " + Build.BOARD + "\n");
        stringBuilder.append("Brand: " + Build.BRAND + "\n");
        stringBuilder.append("Device: " + Build.DEVICE + "\n");
        stringBuilder.append("Bootloader: " + Build.BOOTLOADER + "\n");
        stringBuilder.append("BuildId: " + Build.DISPLAY + "\n");
        stringBuilder.append("BuildType: " + Build.TYPE + "\n");
        stringBuilder.append("Serial: " + Build.SERIAL);
        stringBuilder.append("\n");
    }
}
