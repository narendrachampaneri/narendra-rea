package com.mopub.common.logging;

import android.annotation.SuppressLint;
import android.support.annotation.NonNull;
import android.util.Log;
import com.mopub.common.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class MoPubLog {
    private static final String LOGTAG = "MoPub";
    public static final String LOGGER_NAMESPACE = "com.mopub";
    private static final Logger LOGGER = Logger.getLogger(LOGGER_NAMESPACE);
    private static final MoPubLogHandler LOG_HANDLER = new MoPubLogHandler();

    static {
        LOGGER.setUseParentHandlers(false);
        LOGGER.setLevel(Level.ALL);
        LOG_HANDLER.setLevel(Level.FINE);
        LogManager.getLogManager().addLogger(LOGGER);
        addHandler(LOGGER, LOG_HANDLER);
    }

    private MoPubLog() {
    }

    public static void c(String message) {
        c(message, null);
    }

    public static void v(String message) {
        v(message, null);
    }

    public static void d(String message) {
        d(message, null);
    }

    public static void i(String message) {
        i(message, null);
    }

    public static void w(String message) {
        w(message, null);
    }

    public static void e(String message) {
        e(message, null);
    }

    public static void c(String message, Throwable throwable) {
        LOGGER.log(Level.FINEST, message, throwable);
    }

    public static void v(String message, Throwable throwable) {
        LOGGER.log(Level.FINE, message, throwable);
    }

    public static void d(String message, Throwable throwable) {
        LOGGER.log(Level.CONFIG, message, throwable);
    }

    public static void i(String message, Throwable throwable) {
        LOGGER.log(Level.INFO, message, throwable);
    }

    public static void w(String message, Throwable throwable) {
        LOGGER.log(Level.WARNING, message, throwable);
    }

    public static void e(String message, Throwable throwable) {
        LOGGER.log(Level.SEVERE, message, throwable);
    }

    @VisibleForTesting
    public static void setSdkHandlerLevel(@NonNull Level level) {
        LOG_HANDLER.setLevel(level);
    }

    private static void addHandler(@NonNull Logger logger, @NonNull Handler handler) {
        Handler[] currentHandlers = logger.getHandlers();
        for (Handler currentHandler : currentHandlers) {
            if (currentHandler.equals(handler)) {
                return;
            }
        }
        logger.addHandler(handler);
    }

    private static final class MoPubLogHandler extends Handler {
        private static final Map<Level, Integer> LEVEL_TO_LOG = new HashMap(7);

        private MoPubLogHandler() {
        }

        static {
            LEVEL_TO_LOG.put(Level.FINEST, 2);
            LEVEL_TO_LOG.put(Level.FINER, 2);
            LEVEL_TO_LOG.put(Level.FINE, 2);
            LEVEL_TO_LOG.put(Level.CONFIG, 3);
            LEVEL_TO_LOG.put(Level.INFO, 4);
            LEVEL_TO_LOG.put(Level.WARNING, 5);
            LEVEL_TO_LOG.put(Level.SEVERE, 6);
        }

        @Override // java.util.logging.Handler
        @SuppressLint({"LogTagMismatch"})
        public void publish(LogRecord logRecord) {
            int priority;
            if (isLoggable(logRecord)) {
                if (LEVEL_TO_LOG.containsKey(logRecord.getLevel())) {
                    priority = LEVEL_TO_LOG.get(logRecord.getLevel()).intValue();
                } else {
                    priority = 2;
                }
                String message = logRecord.getMessage() + "\n";
                Throwable error = logRecord.getThrown();
                if (error != null) {
                    message = message + Log.getStackTraceString(error);
                }
                Log.println(priority, MoPubLog.LOGTAG, message);
            }
        }

        @Override // java.util.logging.Handler
        public void close() {
        }

        @Override // java.util.logging.Handler
        public void flush() {
        }
    }
}
