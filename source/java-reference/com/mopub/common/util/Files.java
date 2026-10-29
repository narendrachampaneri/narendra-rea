package com.mopub.common.util;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class Files {
    public static File createDirectory(String absolutePath) {
        if (absolutePath == null) {
            return null;
        }
        File directory = new File(absolutePath);
        if (!directory.exists() || !directory.isDirectory()) {
            if (directory.mkdirs() && directory.isDirectory()) {
                return directory;
            }
            return null;
        }
        return directory;
    }

    public static int intLength(File file) {
        if (file == null) {
            return 0;
        }
        long length = file.length();
        if (length < 2147483647L) {
            return (int) length;
        }
        return Integer.MAX_VALUE;
    }
}
