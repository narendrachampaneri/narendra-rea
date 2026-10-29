package com.amazon.insights.core.log;

import com.amazon.insights.core.log.appender.DeveloperLogCatAppender;
import com.amazon.insights.core.log.appender.LogAppender;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String TAG = "AmazonInsightsSDK";
    private static Map<Class<?>, LogAppender> appenders;
    private static LogLevel globalLevel;
    private static boolean initialized;
    private static Map<Class<?>, Logger> loggers;
    private LogLevel classLevel = null;
    private Class<?> cls;
    private String tag;

    public enum LogLevel {
        VERBOSE,
        DEBUG,
        INFO,
        WARN,
        ERROR,
        OFF
    }

    static {
        $assertionsDisabled = !Logger.class.desiredAssertionStatus();
        globalLevel = LogLevel.WARN;
        appenders = new ConcurrentHashMap();
        loggers = new ConcurrentHashMap();
        initialized = false;
    }

    public Logger(String tag, Class<?> cls) {
        this.cls = null;
        this.tag = TAG;
        if (!$assertionsDisabled && cls == null) {
            throw new AssertionError();
        }
        this.cls = cls;
        this.tag = tag;
    }

    public synchronized boolean isLoggingEnabled(LogLevel requestedLevel) {
        boolean isEnabled;
        isEnabled = requestedLevel.compareTo(getLogLevel()) >= 0;
        return isEnabled;
    }

    synchronized LogLevel getLogLevel() {
        LogLevel level;
        LogLevel logLevel = LogLevel.OFF;
        if (this.classLevel != null) {
            level = this.classLevel;
        } else {
            level = getGlobalLevel();
        }
        return level;
    }

    public static synchronized void setGlobalLevel(LogLevel level) {
        globalLevel = level;
    }

    public static LogLevel getGlobalLevel() {
        return globalLevel;
    }

    public synchronized void setLevel(LogLevel level) {
        this.classLevel = level;
    }

    public static void attachLogAppender(LogAppender appender) {
        attachAppender(appender);
    }

    public static void detachLogAppender(LogAppender appender) {
        detachAppender(appender);
    }

    public static Collection<LogAppender> getLogAppenders() {
        return getAppenders();
    }

    public static Logger getLogger(Class<?> cls) {
        return getClassLogger(cls);
    }

    static synchronized Logger getClassLogger(Class<?> cls) {
        Logger logger;
        if (cls == null) {
            cls = Logger.class;
        }
        if (loggers.containsKey(cls)) {
            logger = loggers.get(cls);
        } else {
            Logger logger2 = new Logger(TAG, cls);
            loggers.put(cls, logger2);
            logger = logger2;
        }
        return logger;
    }

    public static void attachAppender(LogAppender appender) {
        if (appender != null && !appenders.containsKey(appender.getClass())) {
            appenders.put(appender.getClass(), appender);
        }
    }

    public static void detachAppender(LogAppender appender) {
        if (appender != null && appenders.containsKey(appender.getClass())) {
            appenders.remove(appender.getClass());
        }
    }

    public static Collection<LogAppender> getAppenders() {
        return appenders.values();
    }

    Class<?> getLogClass() {
        return this.cls;
    }

    String getTag() {
        return this.tag;
    }

    public void d(String msg) {
        if (isLoggingEnabled(LogLevel.DEBUG)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.d(getTag(), appender.decorateMessage(this.cls, msg));
            }
        }
    }

    public void d(String msg, Throwable tr) {
        if (isLoggingEnabled(LogLevel.DEBUG)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.d(getTag(), appender.decorateMessage(this.cls, msg), tr);
            }
        }
    }

    public void devd(String msg) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devd(getTag(), appender.decorateMessage(this.cls, msg));
        }
    }

    public void devd(String msg, Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devd(getTag(), appender.decorateMessage(this.cls, msg), tr);
        }
    }

    public void v(String msg) {
        if (isLoggingEnabled(LogLevel.VERBOSE)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.v(getTag(), appender.decorateMessage(this.cls, msg));
            }
        }
    }

    public void v(String msg, Throwable tr) {
        if (isLoggingEnabled(LogLevel.VERBOSE)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.v(getTag(), appender.decorateMessage(this.cls, msg), tr);
            }
        }
    }

    public void devv(String msg) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devv(getTag(), appender.decorateMessage(this.cls, msg));
        }
    }

    public void devv(String msg, Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devv(getTag(), appender.decorateMessage(this.cls, msg), tr);
        }
    }

    public void i(String msg) {
        if (isLoggingEnabled(LogLevel.INFO)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.i(getTag(), appender.decorateMessage(this.cls, msg));
            }
        }
    }

    public void i(String msg, Throwable tr) {
        if (isLoggingEnabled(LogLevel.INFO)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.i(getTag(), appender.decorateMessage(this.cls, msg), tr);
            }
        }
    }

    public void devi(String msg) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devi(getTag(), appender.decorateMessage(this.cls, msg));
        }
    }

    public void devi(String msg, Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devi(getTag(), appender.decorateMessage(this.cls, msg), tr);
        }
    }

    public void w(String msg) {
        if (isLoggingEnabled(LogLevel.WARN)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.w(getTag(), appender.decorateMessage(this.cls, msg));
            }
        }
    }

    public void w(Throwable tr) {
        if (isLoggingEnabled(LogLevel.WARN)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.w(getTag(), tr);
            }
        }
    }

    public void w(String msg, Throwable tr) {
        if (isLoggingEnabled(LogLevel.WARN)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.w(getTag(), appender.decorateMessage(this.cls, msg), tr);
            }
        }
    }

    public void devw(String msg) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devw(getTag(), appender.decorateMessage(this.cls, msg));
        }
    }

    public void devw(Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devw(getTag(), tr);
        }
    }

    public void devw(String msg, Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.devw(getTag(), appender.decorateMessage(this.cls, msg), tr);
        }
    }

    public void e(String msg) {
        if (isLoggingEnabled(LogLevel.ERROR)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.e(this.tag, appender.decorateMessage(this.cls, msg));
            }
        }
    }

    public void e(String msg, Throwable tr) {
        if (isLoggingEnabled(LogLevel.ERROR)) {
            for (LogAppender appender : getLogAppenders()) {
                appender.e(this.tag, appender.decorateMessage(this.cls, msg), tr);
            }
        }
    }

    public void deve(String msg) {
        for (LogAppender appender : getLogAppenders()) {
            appender.deve(this.tag, appender.decorateMessage(this.cls, msg));
        }
    }

    public void deve(String msg, Throwable tr) {
        for (LogAppender appender : getLogAppenders()) {
            appender.deve(this.tag, appender.decorateMessage(this.cls, msg), tr);
        }
    }

    public static synchronized void tryInitialize() {
        if (!initialized) {
            tryInitialize(new LogInitializer() { // from class: com.amazon.insights.core.log.Logger.1
                @Override // com.amazon.insights.core.log.LogInitializer
                public void tryInitialize() {
                    Logger.setGlobalLevel(LogLevel.WARN);
                    Logger.attachAppender(new DeveloperLogCatAppender());
                }
            });
        }
    }

    public static synchronized void tryInitialize(LogInitializer initializer) {
        if (!initialized && initializer != null) {
            initializer.tryInitialize();
            initialized = true;
        }
    }
}
