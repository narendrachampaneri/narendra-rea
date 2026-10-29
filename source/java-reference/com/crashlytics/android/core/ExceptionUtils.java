package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
final class ExceptionUtils {
    private ExceptionUtils() {
    }

    public static void writeStackTraceIfNotNull(Throwable ex, OutputStream os) throws Throwable {
        if (os != null) {
            writeStackTrace(ex, os);
        }
    }

    public static void writeStackTrace(Context ctx, Throwable ex, String filename) throws Throwable {
        PrintWriter writer = null;
        try {
            try {
                PrintWriter writer2 = new PrintWriter(ctx.openFileOutput(filename, 0));
                try {
                    writeStackTrace(ex, writer2);
                    CommonUtils.closeOrLog(writer2, "Failed to close stack trace writer.");
                    writer = writer2;
                } catch (Exception e) {
                    e = e;
                    writer = writer2;
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Failed to create PrintWriter", e);
                    CommonUtils.closeOrLog(writer, "Failed to close stack trace writer.");
                } catch (Throwable th) {
                    th = th;
                    writer = writer2;
                    CommonUtils.closeOrLog(writer, "Failed to close stack trace writer.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private static void writeStackTrace(Throwable ex, OutputStream os) throws Throwable {
        PrintWriter writer = null;
        try {
            try {
                PrintWriter writer2 = new PrintWriter(os);
                try {
                    writeStackTrace(ex, writer2);
                    CommonUtils.closeOrLog(writer2, "Failed to close stack trace writer.");
                } catch (Exception e) {
                    e = e;
                    writer = writer2;
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Failed to create PrintWriter", e);
                    CommonUtils.closeOrLog(writer, "Failed to close stack trace writer.");
                } catch (Throwable th) {
                    th = th;
                    writer = writer2;
                    CommonUtils.closeOrLog(writer, "Failed to close stack trace writer.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void writeStackTrace(Throwable ex, Writer writer) {
        boolean first = true;
        while (ex != null) {
            try {
                String message = getMessage(ex);
                if (message == null) {
                    message = "";
                }
                String causedBy = first ? "" : "Caused by: ";
                writer.write(causedBy + ex.getClass().getName() + ": " + message + "\n");
                first = false;
                StackTraceElement[] arr$ = ex.getStackTrace();
                for (StackTraceElement element : arr$) {
                    writer.write("\tat " + element.toString() + "\n");
                }
                ex = ex.getCause();
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Could not write stack trace", e);
                return;
            }
        }
    }

    private static String getMessage(Throwable t) {
        String message = t.getLocalizedMessage();
        if (message == null) {
            return null;
        }
        return message.replaceAll("(\r\n|\n|\f)", " ");
    }
}
