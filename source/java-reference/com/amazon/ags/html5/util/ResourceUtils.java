package com.amazon.ags.html5.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import dalvik.system.DexFile;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes.dex */
public class ResourceUtils {
    private static final int INVALID_RESOURCE_IDENTIFIER = 0;
    private static final String RESOURCE_TYPE_STRING = "string";
    private static final String TAG = "GC_" + ResourceUtils.class.getSimpleName();

    private ResourceUtils() {
    }

    public static String getString(Context context, String name) {
        return context.getString(getIdentifier(context, RESOURCE_TYPE_STRING, name));
    }

    public static final int getAnimationId(Context context, String name) {
        return getIdentifier(context, "anim", name);
    }

    public static final int getLayoutId(Context context, String name) {
        return getIdentifier(context, TtmlNode.TAG_LAYOUT, name);
    }

    public static final int getDrawableId(Context context, String name) {
        return getIdentifier(context, "drawable", name);
    }

    public static int getIdentifier(Context context, String type, String name) {
        int id = context.getResources().getIdentifier(name, type, context.getPackageName());
        if (id != 0) {
            return id;
        }
        try {
            ApplicationInfo info = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            DexFile f = new DexFile(info.sourceDir);
            Enumeration<String> names = f.entries();
            while (names.hasMoreElements()) {
                String s = names.nextElement();
                if (s.endsWith(".R") && (id = context.getResources().getIdentifier(name, type, s.substring(0, s.length() - 2))) != 0) {
                    return id;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
}
