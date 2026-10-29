package com.amazon.insights.core.crash.ers;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.crash.CrashAppender;
import com.amazon.insights.core.crash.CrashReporter;
import com.amazon.insights.core.crash.ExceptionUtils;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.event.DefaultEvent;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class ERSCrashAppender implements CrashAppender {
    private static final String EVENT_SCHEMA_VERSION = "v1.2";
    private static final String ErrorEventName = "_sdkError";
    private static final int MAX_ATTRIBUTE_LENGTH = 1000;
    private static final int MAX_STACK_TRACE_DEPTH = 10;
    private final InsightsContext context;
    private final ERSClient ersClient;

    public static ERSCrashAppender newInstance(InsightsContext context, ERSClient ersClient) {
        return new ERSCrashAppender(context, ersClient);
    }

    public ERSCrashAppender(InsightsContext context, ERSClient ersClient) {
        this.context = context;
        this.ersClient = ersClient;
    }

    @Override // com.amazon.insights.core.crash.CrashAppender
    public void report(CrashReporter originatingReporter, String message) {
        report(originatingReporter, message, null);
    }

    @Override // com.amazon.insights.core.crash.CrashAppender
    public void report(CrashReporter originatingReporter, String message, Throwable t) {
        List<DefaultEvent> events = new ArrayList<>();
        events.add(createEvent(originatingReporter, message, t));
        this.ersClient.submitEvents(events);
    }

    private DefaultEvent createEvent(CrashReporter originatingReporter, String message, Throwable t) {
        DefaultEvent event = DefaultEvent.newInstance(this.context, Long.valueOf(System.currentTimeMillis()), ErrorEventName);
        event.addAttribute("ver", EVENT_SCHEMA_VERSION);
        event.addAttribute(SettingsJsonConstants.PROMPT_MESSAGE_KEY, clipStringForERS(message));
        event.addAttribute("reporting_class", clipStringForERS(originatingReporter.getReportingClass().getName()));
        if (t != null) {
            List<Throwable> throwables = ExceptionUtils.getThrowableList(t);
            Throwable rootCause = throwables.get(throwables.size() - 1);
            event.addAttribute("exception_type", clipStringForERS(rootCause.getClass().getName()));
            int maxThrowables = Math.min(throwables.size(), 10);
            ListIterator<Throwable> iterator = throwables.listIterator(throwables.size());
            for (int i = 0; iterator.hasPrevious() && i < maxThrowables; i++) {
                Throwable throwable = iterator.previous();
                event.addAttribute("stack_trace" + i, clipStringForERS(ExceptionUtils.getStackTraceString(throwable)));
            }
        }
        return event;
    }

    private static String clipStringForERS(String input) {
        return StringUtil.clipString(input, 1000, false);
    }
}
