package com.amazon.identity.auth.device.utils;

import java.security.InvalidParameterException;

/* JADX INFO: loaded from: classes.dex */
public final class MAPVersionHelper {
    private static final String DELIMETER = "\\.";

    private MAPVersionHelper() {
    }

    public static String getVersionAsString(int[] version) {
        StringBuffer buffer = new StringBuffer();
        for (int i : version) {
            buffer.append(i);
            buffer.append('.');
        }
        return buffer.substring(0, buffer.length() - 1);
    }

    public static int[] getVersionInfo(String version) {
        String[] splits = version.split(DELIMETER);
        if (splits.length >= 1) {
            int[] versions = new int[splits.length];
            try {
                int len$ = splits.length;
                int i$ = 0;
                int i = 0;
                while (i$ < len$) {
                    try {
                        String versionInt = splits[i$];
                        int i2 = i + 1;
                        versions[i] = Integer.parseInt(versionInt);
                        i$++;
                        i = i2;
                    } catch (NumberFormatException e) {
                        throw new InvalidParameterException("getVersionInfo: version (" + version + ") must be in format of X[.X.X]... - where X must be an integer");
                    }
                }
                return versions;
            } catch (NumberFormatException e2) {
            }
        } else {
            throw new InvalidParameterException("version (" + version + ") must be in format of X.X.X");
        }
    }
}
