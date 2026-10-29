package com.amazon.insights.core.util;

import com.amazon.identity.auth.device.dataobject.AppInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class StringUtil {
    public static final String UTF_8 = "UTF-8";

    private StringUtil() {
    }

    public static boolean isNullOrEmpty(String string) {
        return string == null || string.length() == 0;
    }

    public static boolean isBlank(String string) {
        return string == null || string.trim().length() == 0;
    }

    public static String convertStreamToString(InputStream is, Charset charset) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(is, charset));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = br.readLine();
            if (line != null) {
                sb.append(line + "\n");
            } else {
                br.close();
                return sb.toString();
            }
        }
    }

    public static String convertStreamToUTF8String(InputStream is) throws IOException {
        return convertStreamToString(is, Charset.forName("UTF-8"));
    }

    public static String clipString(String input, int numChars, boolean appendEllipses) {
        int end = Math.min(numChars, input.length());
        String output = input.substring(0, end);
        return (!appendEllipses || output.length() >= input.length()) ? output : output + "...";
    }

    public static String convertArrayToString(String[] stringArr) {
        if (stringArr == null) {
            return "";
        }
        StringBuilder ret = new StringBuilder();
        for (int i = 0; i < stringArr.length; i++) {
            if (i > 0) {
                ret.append(AppInfo.DELIM);
            }
            ret.append("'" + stringArr[i] + "'");
        }
        return ret.toString();
    }

    public static String convertSetToString(Set<String> stringSet) {
        if (stringSet == null) {
            return "";
        }
        StringBuilder ret = new StringBuilder();
        for (String str : stringSet) {
            if (ret.length() > 0) {
                ret.append(AppInfo.DELIM);
            }
            ret.append("'" + str + "'");
        }
        return ret.toString();
    }

    public static String trimOrPadString(String str, int len, char pad) {
        if (len < 0) {
            len = 0;
        }
        if (str == null) {
            str = "";
        }
        StringBuffer s = new StringBuffer();
        if (str.length() > len - 1) {
            s.append(str.substring(str.length() - len));
        } else {
            for (int i = 0; i < len - str.length(); i++) {
                s.append(pad);
            }
            s.append(str);
        }
        return s.toString();
    }
}
