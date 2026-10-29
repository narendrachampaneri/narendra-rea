package com.vungle.publisher;

import com.vungle.log.Logger;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cc {
    static final Pattern a = Pattern.compile("[|\\\\?*<\":>+'&\\[\\]]");

    public static String a(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 2; i++) {
            Object obj = objArr[i];
            if (obj == null) {
                throw new IllegalArgumentException("null path element at index " + i);
            }
            sb.append(obj);
            int length = sb.length();
            if (length > 0 && i + 1 < 2 && sb.charAt(length - 1) != File.separatorChar) {
                sb.append(File.separatorChar);
            }
        }
        return sb.toString();
    }

    public static boolean a(String str) {
        File file = new File(str);
        boolean zC = c(file);
        if (zC) {
            Logger.d(Logger.FILE_TAG, "successfully deleted: " + file);
        } else {
            Logger.w(Logger.FILE_TAG, "could not delete: " + file);
        }
        return zC;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0038  */
    /* JADX WARN: Code duplicated, block: B:21:0x004c  */
    private static boolean c(File file) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(file);
        File file2 = (File) arrayDeque.peek();
        boolean z = true;
        while (file2 != null) {
            if (file2.isDirectory()) {
                File[] fileArrListFiles = file2.listFiles();
                if (fileArrListFiles.length > 0) {
                    for (File file3 : fileArrListFiles) {
                        arrayDeque.push(file3);
                    }
                } else {
                    arrayDeque.pop();
                    if (z || (file2.exists() && !file2.delete())) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
            } else {
                arrayDeque.pop();
                if (z) {
                    z = false;
                } else {
                    z = false;
                }
            }
            file2 = (File) arrayDeque.peek();
            z = z;
        }
        return z;
    }

    public static boolean a(File file) {
        if (file == null) {
            Logger.w(Logger.FILE_TAG, "null directory path");
            return false;
        }
        if (file.mkdirs()) {
            Logger.d(Logger.FILE_TAG, "created directory: " + file);
            return true;
        }
        if (file.isDirectory()) {
            Logger.v(Logger.FILE_TAG, "directory exists: " + file);
            return true;
        }
        Logger.d(Logger.FILE_TAG, "unable to create directory: " + file);
        return false;
    }

    public static boolean b(File file) {
        boolean zCanWrite = false;
        File parentFile = file.getParentFile();
        if (a(parentFile)) {
            zCanWrite = parentFile.canWrite();
            if (zCanWrite) {
                Logger.v(Logger.FILE_TAG, "directory is writeable: " + parentFile);
            } else {
                Logger.d(Logger.FILE_TAG, "directory not writeable: " + parentFile);
            }
        }
        return zCanWrite;
    }

    public static boolean b(String str) {
        return !a.matcher(str).find();
    }

    public static String c(String str) {
        Matcher matcher = a.matcher(str);
        if (matcher.find()) {
            String strReplaceAll = matcher.replaceAll(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            Logger.i(Logger.FILE_TAG, "Unsafe character(s) found / replaced in filepath: " + str + " --> " + strReplaceAll);
            return strReplaceAll;
        }
        return str;
    }

    public static boolean a(File file, File file2) throws IOException {
        String canonicalPath = file2.getCanonicalPath();
        String canonicalPath2 = file.getCanonicalPath();
        return (canonicalPath == null || canonicalPath.equals(canonicalPath2) || !canonicalPath.startsWith(canonicalPath2)) ? false : true;
    }
}
