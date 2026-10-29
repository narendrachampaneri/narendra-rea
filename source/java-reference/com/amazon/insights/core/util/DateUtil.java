package com.amazon.insights.core.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class DateUtil {
    private static final String DATE_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    private static final DateFormat ISO_DATE_FORMATTER_UTC = new SimpleDateFormat(DATE_FORMAT_STRING, Locale.US);

    static {
        ISO_DATE_FORMATTER_UTC.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private DateUtil() {
    }

    private static synchronized DateFormat getDateFormat() {
        return ISO_DATE_FORMATTER_UTC;
    }

    public static synchronized String isoDateFromMillis(long millis) {
        return getDateFormat().format(new Date(millis));
    }

    public static DateFormat createLocaleIndependentDateFormatter(String dateFormatString) {
        return new SimpleDateFormat(dateFormatString, Locale.US);
    }
}
