package com.inmobi.re.configs;

import android.graphics.Color;
import com.amazon.ags.constants.OverlaySize;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.Constants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ConfigParams {
    static int g = 5;
    static String h = "[\"video/mp4\"]";
    String a = "#00000000";
    int b = OverlaySize.TOAST_WIDTH_PIXELS;
    int c = 480;
    int d = 100;
    int e = 20;
    int f = 5;
    HashMap<String, Object> i = new HashMap<>();

    public int getPicWidth() {
        return this.b;
    }

    public int getPicHeight() {
        return this.c;
    }

    public int getPicQuality() {
        return this.d;
    }

    public int getMaxVibDuration() {
        return this.f * 1000;
    }

    public int getMaxVibPatternLength() {
        return this.e;
    }

    public int getWebviewBgColor() {
        try {
            return Color.parseColor(this.a);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Invalid bg color. Reverting to default", e);
            return Color.parseColor("#00000000");
        }
    }

    public int getMaxSaveContentSize() {
        return g;
    }

    public String getAllowedContentType() {
        return h;
    }

    public void setFromMap(Map<String, Object> map) {
        try {
            this.i = (HashMap) map.get("savecontent");
            g = InternalSDKUtil.getIntFromMap(this.i, "maxl", 1, 2147483647L);
            h = this.i.get("ctp").toString();
            String strReplace = h.replace("\\", "");
            String strSubstring = strReplace.substring(1, strReplace.length() - 1);
            if (strSubstring.contains(AppInfo.DELIM)) {
                String[] strArrSplit = strSubstring.split(AppInfo.DELIM);
                for (int i = 0; i < strArrSplit.length; i++) {
                    if (strArrSplit[i].substring(1, strArrSplit[i].length() - 1).equals("")) {
                        throw new IllegalArgumentException();
                    }
                }
            } else if (new String[]{strSubstring}[0].equals("")) {
                throw new IllegalArgumentException();
            }
            this.a = InternalSDKUtil.getStringFromMap(map, "wthc");
            this.c = InternalSDKUtil.getIntFromMap(map, "picH", 1, 2147483647L);
            this.b = InternalSDKUtil.getIntFromMap(map, "picW", 1, 2147483647L);
            this.d = InternalSDKUtil.getIntFromMap(map, "picA", 1, 100L);
            this.f = InternalSDKUtil.getIntFromMap(map, "mvd", 0, 2147483647L);
            this.e = InternalSDKUtil.getIntFromMap(map, "mvp", 0, 2147483647L);
        } catch (IllegalArgumentException e) {
            g = 5;
            h = "[\"video/mp4\"]";
            throw new IllegalArgumentException();
        }
    }
}
