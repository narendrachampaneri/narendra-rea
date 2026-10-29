package com.amazon.insights.core.crash;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExceptionUtils {
    public static List<Throwable> getThrowableList(Throwable t) {
        LinkedHashSet<Throwable> throwables = new LinkedHashSet<>();
        for (Throwable throwable = t; throwable != null && !throwables.contains(throwable); throwable = throwable.getCause()) {
            throwables.add(throwable);
        }
        return new ArrayList(throwables);
    }

    public static String getStackTraceString(Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        tr.printStackTrace(pw);
        return sw.toString();
    }
}
