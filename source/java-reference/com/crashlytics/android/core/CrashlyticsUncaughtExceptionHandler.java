package com.crashlytics.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.crashlytics.android.core.internal.models.SessionEventData;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.persistence.FileStore;
import io.fabric.sdk.android.services.settings.SessionSettingsData;
import io.fabric.sdk.android.services.settings.Settings;
import io.fabric.sdk.android.services.settings.SettingsData;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int ANALYZER_VERSION = 1;
    private static final String EVENT_TYPE_CRASH = "crash";
    private static final String EVENT_TYPE_LOGGED = "error";
    private static final String GENERATOR_FORMAT = "Crashlytics Android SDK/%s";
    static final String INVALID_CLS_CACHE_DIR = "invalidClsFiles";
    private static final int MAX_COMPLETE_SESSIONS_COUNT = 4;
    private static final int MAX_LOCAL_LOGGED_EXCEPTIONS = 64;
    static final int MAX_OPEN_SESSIONS = 8;
    static final String SESSION_BEGIN_TAG = "BeginSession";
    static final String SESSION_FATAL_TAG = "SessionCrash";
    private static final int SESSION_ID_LENGTH = 35;
    static final String SESSION_NON_FATAL_TAG = "SessionEvent";
    private final CrashlyticsCore crashlyticsCore;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final DevicePowerStateListener devicePowerStateListener;
    private final CrashlyticsExecutorServiceWrapper executorServiceWrapper;
    private final FileStore fileStore;
    private final IdManager idManager;
    private final LogFileManager logFileManager;
    private final String unityVersion;
    static final FilenameFilter SESSION_FILE_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.1
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.length() == ClsFileOutputStream.SESSION_FILE_EXTENSION.length() + 35 && filename.endsWith(ClsFileOutputStream.SESSION_FILE_EXTENSION);
        }
    };
    static final Comparator<File> LARGEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.2
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file2.getName().compareTo(file1.getName());
        }
    };
    static final Comparator<File> SMALLEST_FILE_NAME_FIRST = new Comparator<File>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.3
        @Override // java.util.Comparator
        public int compare(File file1, File file2) {
            return file1.getName().compareTo(file2.getName());
        }
    };
    static final FilenameFilter ANY_SESSION_FILENAME_FILTER = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.4
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String filename) {
            return CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(filename).matches();
        }
    };
    private static final Pattern SESSION_FILE_PATTERN = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
    private static final Map<String, String> SEND_AT_CRASHTIME_HEADER = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
    static final String SESSION_USER_TAG = "SessionUser";
    static final String SESSION_APP_TAG = "SessionApp";
    static final String SESSION_OS_TAG = "SessionOS";
    static final String SESSION_DEVICE_TAG = "SessionDevice";
    private static final String[] INITIAL_SESSION_PART_TAGS = {SESSION_USER_TAG, SESSION_APP_TAG, SESSION_OS_TAG, SESSION_DEVICE_TAG};
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);

    static class FileNameContainsFilter implements FilenameFilter {
        private final String string;

        public FileNameContainsFilter(String s) {
            this.string = s;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.contains(this.string) && !filename.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION);
        }
    }

    static class SessionPartFileFilter implements FilenameFilter {
        private final String sessionId;

        public SessionPartFileFilter(String sessionId) {
            this.sessionId = sessionId;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return (fileName.equals(new StringBuilder().append(this.sessionId).append(ClsFileOutputStream.SESSION_FILE_EXTENSION).toString()) || !fileName.contains(this.sessionId) || fileName.endsWith(ClsFileOutputStream.IN_PROGRESS_SESSION_FILE_EXTENSION)) ? false : true;
        }
    }

    private static class AnySessionPartFileFilter implements FilenameFilter {
        private AnySessionPartFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String fileName) {
            return !CrashlyticsUncaughtExceptionHandler.SESSION_FILE_FILTER.accept(file, fileName) && CrashlyticsUncaughtExceptionHandler.SESSION_FILE_PATTERN.matcher(fileName).matches();
        }
    }

    CrashlyticsUncaughtExceptionHandler(Thread.UncaughtExceptionHandler handler, CrashlyticsExecutorServiceWrapper executorServiceWrapper, IdManager idManager, UnityVersionProvider unityVersionProvider, FileStore fileStore, CrashlyticsCore crashlyticsCore) {
        this.defaultHandler = handler;
        this.executorServiceWrapper = executorServiceWrapper;
        this.idManager = idManager;
        this.crashlyticsCore = crashlyticsCore;
        this.unityVersion = unityVersionProvider.getUnityVersion();
        this.fileStore = fileStore;
        Context context = crashlyticsCore.getContext();
        this.logFileManager = new LogFileManager(context, fileStore);
        this.devicePowerStateListener = new DevicePowerStateListener(context);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public synchronized void uncaughtException(final Thread thread, final Throwable ex) {
        this.isHandlingException.set(true);
        try {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics is handling uncaught exception \"" + ex + "\" from thread " + thread.getName());
                this.devicePowerStateListener.dispose();
                final Date now = new Date();
                this.executorServiceWrapper.executeSyncLoggingException(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.5
                    @Override // java.util.concurrent.Callable
                    public Void call() throws Exception {
                        CrashlyticsUncaughtExceptionHandler.this.handleUncaughtException(now, thread, ex);
                        return null;
                    }
                });
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, ex);
                this.isHandlingException.set(false);
            } catch (Throwable th) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
                this.defaultHandler.uncaughtException(thread, ex);
                this.isHandlingException.set(false);
                throw th;
            }
        } catch (Exception e) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, ex);
            this.isHandlingException.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUncaughtException(Date time, Thread thread, Throwable ex) throws Exception {
        this.crashlyticsCore.createCrashMarker();
        writeFatal(time, thread, ex);
        doCloseSessions();
        doOpenSession();
        trimSessionFiles();
        if (!this.crashlyticsCore.shouldPromptUserBeforeSendingCrashReports()) {
            sendSessionReports();
        }
    }

    boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    void writeToLog(final long timestamp, final String msg) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.6
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.logFileManager.writeToLog(timestamp, msg);
                    return null;
                }
                return null;
            }
        });
    }

    void writeNonFatalException(final Thread thread, final Throwable ex) {
        final Date now = new Date();
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.7
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (!CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    CrashlyticsUncaughtExceptionHandler.this.doWriteNonFatal(now, thread, ex);
                }
            }
        });
    }

    void cacheUserData(final String userId, final String userName, final String userEmail) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.8
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeUserData(currentSessionId, new UserMetaData(userId, userName, userEmail));
                return null;
            }
        });
    }

    void cacheKeyData(final Map<String, String> keyData) {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.9
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                String currentSessionId = CrashlyticsUncaughtExceptionHandler.this.getCurrentSessionId();
                new MetaDataStore(CrashlyticsUncaughtExceptionHandler.this.getFilesDir()).writeKeyData(currentSessionId, keyData);
                return null;
            }
        });
    }

    void openSession() {
        this.executorServiceWrapper.executeAsync(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.10
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                CrashlyticsUncaughtExceptionHandler.this.doOpenSession();
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 0) {
            return getSessionIdFromSessionFile(sessionBeginFiles[0]);
        }
        return null;
    }

    private String getPreviousSessionId() {
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length > 1) {
            return getSessionIdFromSessionFile(sessionBeginFiles[1]);
        }
        return null;
    }

    private String getSessionIdFromSessionFile(File sessionFile) {
        return sessionFile.getName().substring(0, 35);
    }

    boolean hasOpenSession() {
        return listSessionBeginFiles().length > 0;
    }

    boolean finalizeSessions() {
        return ((Boolean) this.executorServiceWrapper.executeSyncLoggingException(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws Exception {
                if (CrashlyticsUncaughtExceptionHandler.this.isHandlingException.get()) {
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Skipping session finalization because a crash has already occurred.");
                    return Boolean.FALSE;
                }
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Finalizing previously open sessions.");
                SessionEventData crashEventData = CrashlyticsUncaughtExceptionHandler.this.crashlyticsCore.getExternalCrashEventData();
                if (crashEventData != null) {
                    CrashlyticsUncaughtExceptionHandler.this.writeExternalCrashEvent(crashEventData);
                }
                CrashlyticsUncaughtExceptionHandler.this.doCloseSessions(true);
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Closed all previously open sessions");
                return Boolean.TRUE;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession() throws Exception {
        Date startedAt = new Date();
        String sessionIdentifier = new CLSUUID(this.idManager).toString();
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Opening an new session with ID " + sessionIdentifier);
        writeBeginSession(sessionIdentifier, startedAt);
        writeSessionApp(sessionIdentifier);
        writeSessionOS(sessionIdentifier);
        writeSessionDevice(sessionIdentifier);
        this.logFileManager.setCurrentSession(sessionIdentifier);
    }

    void doCloseSessions() throws Exception {
        doCloseSessions(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCloseSessions(boolean excludeCurrent) throws Exception {
        int offset = excludeCurrent ? 1 : 0;
        trimOpenSessions(offset + 8);
        File[] sessionBeginFiles = listSortedSessionBeginFiles();
        if (sessionBeginFiles.length <= offset) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No open sessions to be closed.");
            return;
        }
        String mostRecentSessionIdToClose = getSessionIdFromSessionFile(sessionBeginFiles[offset]);
        writeSessionUser(mostRecentSessionIdToClose);
        CrashlyticsCore crashlyticsCore = this.crashlyticsCore;
        SessionSettingsData settingsData = CrashlyticsCore.getSessionSettingsData();
        if (settingsData == null) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Unable to close session. Settings are not loaded.");
        } else {
            closeOpenSessions(sessionBeginFiles, offset, settingsData.maxCustomExceptionEvents);
        }
    }

    private void closeOpenSessions(File[] sessionBeginFiles, int beginIndex, int maxLoggedExceptionsCount) throws Throwable {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing open sessions.");
        for (int i = beginIndex; i < sessionBeginFiles.length; i++) {
            File sessionBeginFile = sessionBeginFiles[i];
            String sessionIdentifier = getSessionIdFromSessionFile(sessionBeginFile);
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Closing session: " + sessionIdentifier);
            writeSessionPartsToSessionFile(sessionBeginFile, sessionIdentifier, maxLoggedExceptionsCount);
        }
    }

    private void closeWithoutRenamingOrLog(ClsFileOutputStream fos) {
        if (fos != null) {
            try {
                fos.closeInProgressStream();
            } catch (IOException ex) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error closing session file stream in the presence of an exception", ex);
            }
        }
    }

    private void deleteSessionPartFilesFor(String sessionId) {
        File[] arr$ = listSessionPartFilesFor(sessionId);
        for (File file : arr$) {
            file.delete();
        }
    }

    private File[] listSessionPartFilesFor(String sessionId) {
        return listFilesMatching(new SessionPartFileFilter(sessionId));
    }

    private File[] listCompleteSessionFiles() {
        return listFilesMatching(SESSION_FILE_FILTER);
    }

    File[] listSessionBeginFiles() {
        return listFilesMatching(new FileNameContainsFilter(SESSION_BEGIN_TAG));
    }

    private File[] listSortedSessionBeginFiles() {
        File[] sessionBeginFiles = listSessionBeginFiles();
        Arrays.sort(sessionBeginFiles, LARGEST_FILE_NAME_FIRST);
        return sessionBeginFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File[] listFilesMatching(FilenameFilter filter) {
        return ensureFileArrayNotNull(getFilesDir().listFiles(filter));
    }

    private File[] ensureFileArrayNotNull(File[] files) {
        return files == null ? new File[0] : files;
    }

    private void trimSessionEventFiles(String sessionId, int limit) {
        Utils.capFileCount(getFilesDir(), new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG), limit, SMALLEST_FILE_NAME_FIRST);
    }

    void trimSessionFiles() {
        Utils.capFileCount(getFilesDir(), SESSION_FILE_FILTER, 4, SMALLEST_FILE_NAME_FIRST);
    }

    private void trimOpenSessions(int maxOpenSessionCount) {
        Set<String> sessionIdsToKeep = new HashSet<>();
        File[] beginSessionFiles = listSortedSessionBeginFiles();
        int count = Math.min(maxOpenSessionCount, beginSessionFiles.length);
        for (int i = 0; i < count; i++) {
            String sessionId = getSessionIdFromSessionFile(beginSessionFiles[i]);
            sessionIdsToKeep.add(sessionId);
        }
        this.logFileManager.discardOldLogFiles(sessionIdsToKeep);
        File[] allSessionPartFiles = listFilesMatching(new AnySessionPartFileFilter());
        for (File sessionPartFile : allSessionPartFiles) {
            String fileName = sessionPartFile.getName();
            Matcher matcher = SESSION_FILE_PATTERN.matcher(fileName);
            matcher.matches();
            String sessionId2 = matcher.group(1);
            if (!sessionIdsToKeep.contains(sessionId2)) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Trimming open session file: " + fileName);
                sessionPartFile.delete();
            }
        }
    }

    private File[] getTrimmedNonFatalFiles(String sessionId, File[] nonFatalFiles, int maxLoggedExceptionsCount) {
        if (nonFatalFiles.length > maxLoggedExceptionsCount) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(maxLoggedExceptionsCount)));
            trimSessionEventFiles(sessionId, maxLoggedExceptionsCount);
            return listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        }
        return nonFatalFiles;
    }

    void cleanInvalidTempFiles() {
        this.executorServiceWrapper.executeAsync(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.12
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsUncaughtExceptionHandler.this.doCleanInvalidTempFiles(CrashlyticsUncaughtExceptionHandler.this.listFilesMatching(ClsFileOutputStream.TEMP_FILENAME_FILTER));
            }
        });
    }

    void doCleanInvalidTempFiles(File[] invalidFiles) {
        deleteLegacyInvalidCacheDir();
        for (File invalidFile : invalidFiles) {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Found invalid session part file: " + invalidFile);
            final String sessionId = getSessionIdFromSessionFile(invalidFile);
            FilenameFilter sessionFilter = new FilenameFilter() { // from class: com.crashlytics.android.core.CrashlyticsUncaughtExceptionHandler.13
                @Override // java.io.FilenameFilter
                public boolean accept(File f, String name) {
                    return name.startsWith(sessionId);
                }
            };
            Fabric.getLogger().d(CrashlyticsCore.TAG, "Deleting all part files for invalid session: " + sessionId);
            File[] arr$ = listFilesMatching(sessionFilter);
            for (File sessionFile : arr$) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Deleting session file: " + sessionFile);
                sessionFile.delete();
            }
        }
    }

    private void deleteLegacyInvalidCacheDir() {
        File cacheDir = new File(this.crashlyticsCore.getSdkDirectory(), INVALID_CLS_CACHE_DIR);
        if (cacheDir.exists()) {
            if (cacheDir.isDirectory()) {
                File[] arr$ = cacheDir.listFiles();
                for (File cacheFile : arr$) {
                    cacheFile.delete();
                }
            }
            cacheDir.delete();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0067 -> B:21:0x001e). Please report as a decompilation issue!!! */
    private void writeFatal(Date time, Thread thread, Throwable ex) throws Throwable {
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                String currentSessionId = getCurrentSessionId();
                if (currentSessionId == null) {
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a fatal exception while no session was open.", null);
                    CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
                } else {
                    CrashlyticsCore.recordFatalExceptionEvent(currentSessionId);
                    ClsFileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), currentSessionId + SESSION_FATAL_TAG);
                    try {
                        cos = CodedOutputStream.newInstance(fos2);
                        writeSessionEvent(cos, time, thread, ex, EVENT_TYPE_CRASH, true);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos2, "Failed to close fatal exception file output stream.");
                        fos = fos2;
                    } catch (Exception e) {
                        e = e;
                        fos = fos2;
                        Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the fatal exception logger", e);
                        ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                    } catch (Throwable th) {
                        th = th;
                        fos = fos2;
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x007a -> B:21:0x001e). Please report as a decompilation issue!!! */
    public void writeExternalCrashEvent(SessionEventData crashEventData) throws Throwable {
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                String previousSessionId = getPreviousSessionId();
                if (previousSessionId == null) {
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a native crash while no session was open.", null);
                    CommonUtils.flushOrLog(null, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(null, "Failed to close fatal exception file output stream.");
                } else {
                    CrashlyticsCore.recordFatalExceptionEvent(previousSessionId);
                    ClsFileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), previousSessionId + SESSION_FATAL_TAG);
                    try {
                        cos = CodedOutputStream.newInstance(fos2);
                        Map<String, String> storedKeyData = new MetaDataStore(getFilesDir()).readKeyData(previousSessionId);
                        LogFileManager previousSessionLogManager = new LogFileManager(this.crashlyticsCore.getContext(), this.fileStore, previousSessionId);
                        NativeCrashWriter.writeNativeCrash(crashEventData, previousSessionLogManager, storedKeyData, cos);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos2, "Failed to close fatal exception file output stream.");
                        fos = fos2;
                    } catch (Exception e) {
                        e = e;
                        fos = fos2;
                        Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the native crash logger", e);
                        ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                    } catch (Throwable th) {
                        th = th;
                        fos = fos2;
                        CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                        CommonUtils.closeOrLog(fos, "Failed to close fatal exception file output stream.");
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteNonFatal(Date time, Thread thread, Throwable ex) throws Throwable {
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to write a non-fatal exception while no session was open.", null);
            return;
        }
        CrashlyticsCore.recordLoggedExceptionEvent(currentSessionId);
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Crashlytics is logging non-fatal exception \"" + ex + "\" from thread " + thread.getName());
                String counterString = CommonUtils.padWithZerosToMaxIntWidth(this.eventCounter.getAndIncrement());
                String nonFatalFileName = currentSessionId + SESSION_NON_FATAL_TAG + counterString;
                ClsFileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), nonFatalFileName);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    writeSessionEvent(cos, time, thread, ex, "error", false);
                    CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                    CommonUtils.closeOrLog(fos2, "Failed to close non-fatal file output stream.");
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred in the non-fatal exception logger", e);
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                    CommonUtils.closeOrLog(fos, "Failed to close non-fatal file output stream.");
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush to non-fatal file.");
                    CommonUtils.closeOrLog(fos, "Failed to close non-fatal file output stream.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                trimSessionEventFiles(currentSessionId, 64);
            } catch (Exception e3) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "An error occurred when trimming non-fatal files.", e3);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeBeginSession(String sessionId, Date startedAt) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_BEGIN_TAG);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    String generator = String.format(Locale.US, GENERATOR_FORMAT, this.crashlyticsCore.getVersion());
                    long startedAtSeconds = startedAt.getTime() / 1000;
                    SessionProtobufHelper.writeBeginSession(cos, sessionId, generator, startedAtSeconds);
                    CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(fos2, "Failed to close begin session file.");
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush to session begin file.");
                    CommonUtils.closeOrLog(fos, "Failed to close begin session file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void writeSessionApp(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_APP_TAG);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    String appIdentifier = this.idManager.getAppIdentifier();
                    String apiKey = this.crashlyticsCore.getApiKey();
                    String versionCode = this.crashlyticsCore.getVersionCode();
                    String versionName = this.crashlyticsCore.getVersionName();
                    String installUuid = this.idManager.getAppInstallIdentifier();
                    int deliveryMechanism = DeliveryMechanism.determineFrom(this.crashlyticsCore.getInstallerPackageName()).getId();
                    SessionProtobufHelper.writeSessionApp(cos, appIdentifier, apiKey, versionCode, versionName, installUuid, deliveryMechanism, this.unityVersion);
                    CommonUtils.flushOrLog(cos, "Failed to flush to session app file.");
                    CommonUtils.closeOrLog(fos2, "Failed to close session app file.");
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush to session app file.");
                    CommonUtils.closeOrLog(fos, "Failed to close session app file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeSessionOS(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_OS_TAG);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    boolean isRooted = CommonUtils.isRooted(this.crashlyticsCore.getContext());
                    SessionProtobufHelper.writeSessionOS(cos, isRooted);
                    CommonUtils.flushOrLog(cos, "Failed to flush to session OS file.");
                    CommonUtils.closeOrLog(fos2, "Failed to close session OS file.");
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush to session OS file.");
                    CommonUtils.closeOrLog(fos, "Failed to close session OS file.");
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void writeSessionDevice(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_DEVICE_TAG);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    Context context = this.crashlyticsCore.getContext();
                    StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                    String clsDeviceId = this.idManager.getDeviceUUID();
                    int arch = CommonUtils.getCpuArchitectureInt();
                    int availableProcessors = Runtime.getRuntime().availableProcessors();
                    long totalRam = CommonUtils.getTotalRamInBytes();
                    long diskSpace = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
                    boolean isEmulator = CommonUtils.isEmulator(context);
                    Map<IdManager.DeviceIdentifierType, String> ids = this.idManager.getDeviceIdentifiers();
                    int state = CommonUtils.getDeviceState(context);
                    SessionProtobufHelper.writeSessionDevice(cos, clsDeviceId, arch, Build.MODEL, availableProcessors, totalRam, diskSpace, isEmulator, ids, state, Build.MANUFACTURER, Build.PRODUCT);
                    CommonUtils.flushOrLog(cos, "Failed to flush session device info.");
                    CommonUtils.closeOrLog(fos2, "Failed to close session device file.");
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush session device info.");
                    CommonUtils.closeOrLog(fos, "Failed to close session device file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void writeSessionUser(String sessionId) throws Exception {
        FileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                FileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId + SESSION_USER_TAG);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    UserMetaData userMetaData = getUserMetaData(sessionId);
                    if (userMetaData.isEmpty()) {
                        CommonUtils.flushOrLog(cos, "Failed to flush session user file.");
                        CommonUtils.closeOrLog(fos2, "Failed to close session user file.");
                    } else {
                        SessionProtobufHelper.writeSessionUser(cos, userMetaData.id, userMetaData.name, userMetaData.email);
                        CommonUtils.flushOrLog(cos, "Failed to flush session user file.");
                        CommonUtils.closeOrLog(fos2, "Failed to close session user file.");
                    }
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    throw e;
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Failed to flush session user file.");
                    CommonUtils.closeOrLog(fos, "Failed to close session user file.");
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private void writeSessionEvent(CodedOutputStream cos, Date time, Thread thread, Throwable ex, String eventType, boolean includeAllThreads) throws Exception {
        Thread[] threads;
        Map<String, String> attributes;
        Context context = this.crashlyticsCore.getContext();
        long eventTime = time.getTime() / 1000;
        float batteryLevel = CommonUtils.getBatteryLevel(context);
        int batteryVelocity = CommonUtils.getBatteryVelocity(context, this.devicePowerStateListener.isPowerConnected());
        boolean proximityEnabled = CommonUtils.getProximitySensorEnabled(context);
        int orientation = context.getResources().getConfiguration().orientation;
        long usedRamBytes = CommonUtils.getTotalRamInBytes() - CommonUtils.calculateFreeRamInBytes(context);
        long diskUsedBytes = CommonUtils.calculateUsedDiskSpaceInBytes(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = CommonUtils.getAppProcessInfo(context.getPackageName(), context);
        List<StackTraceElement[]> stacks = new LinkedList<>();
        StackTraceElement[] exceptionStack = ex.getStackTrace();
        String buildId = this.crashlyticsCore.getBuildId();
        String appIdentifier = this.idManager.getAppIdentifier();
        if (includeAllThreads) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threads = new Thread[allStackTraces.size()];
            int i = 0;
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threads[i] = entry.getKey();
                stacks.add(entry.getValue());
                i++;
            }
        } else {
            threads = new Thread[0];
        }
        if (!CommonUtils.getBooleanResourceValue(context, "com.crashlytics.CollectCustomKeys", true)) {
            attributes = new TreeMap<>();
        } else {
            attributes = this.crashlyticsCore.getAttributes();
            if (attributes != null && attributes.size() > 1) {
                attributes = new TreeMap<>(attributes);
            }
        }
        SessionProtobufHelper.writeSessionEvent(cos, eventTime, eventType, ex, thread, exceptionStack, threads, stacks, attributes, this.logFileManager, runningAppProcessInfo, orientation, appIdentifier, buildId, batteryLevel, batteryVelocity, proximityEnabled, usedRamBytes, diskUsedBytes);
    }

    private void writeSessionPartsToSessionFile(File sessionBeginFile, String sessionId, int maxLoggedExceptionsCount) throws Throwable {
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting session parts for ID " + sessionId);
        File[] fatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_FATAL_TAG));
        boolean hasFatal = fatalFiles != null && fatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has fatal exception: %s", sessionId, Boolean.valueOf(hasFatal)));
        File[] nonFatalFiles = listFilesMatching(new FileNameContainsFilter(sessionId + SESSION_NON_FATAL_TAG));
        boolean hasNonFatal = nonFatalFiles != null && nonFatalFiles.length > 0;
        Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Session %s has non-fatal exceptions: %s", sessionId, Boolean.valueOf(hasNonFatal)));
        if (hasFatal || hasNonFatal) {
            File[] trimmedNonFatalFiles = getTrimmedNonFatalFiles(sessionId, nonFatalFiles, maxLoggedExceptionsCount);
            File fatalFile = hasFatal ? fatalFiles[0] : null;
            synthesizeSessionFile(sessionBeginFile, sessionId, trimmedNonFatalFiles, fatalFile);
        } else {
            Fabric.getLogger().d(CrashlyticsCore.TAG, "No events present for session ID " + sessionId);
        }
        Fabric.getLogger().d(CrashlyticsCore.TAG, "Removing session part files for ID " + sessionId);
        deleteSessionPartFilesFor(sessionId);
    }

    private void synthesizeSessionFile(File sessionBeginFile, String sessionId, File[] nonFatalFiles, File fatalFile) throws Throwable {
        boolean hasFatal = fatalFile != null;
        boolean exceptionDuringWrite = false;
        ClsFileOutputStream fos = null;
        CodedOutputStream cos = null;
        try {
            try {
                ClsFileOutputStream fos2 = new ClsFileOutputStream(getFilesDir(), sessionId);
                try {
                    cos = CodedOutputStream.newInstance(fos2);
                    Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting SessionStart data for session ID " + sessionId);
                    writeToCosFromFile(cos, sessionBeginFile);
                    cos.writeUInt64(4, new Date().getTime() / 1000);
                    cos.writeBool(5, hasFatal);
                    writeInitialPartsTo(cos, sessionId);
                    writeNonFatalEventsTo(cos, nonFatalFiles, sessionId);
                    if (hasFatal) {
                        writeToCosFromFile(cos, fatalFile);
                    }
                    cos.writeUInt32(11, 1);
                    cos.writeEnum(12, 3);
                    CommonUtils.flushOrLog(cos, "Error flushing session file stream");
                    if (0 != 0) {
                        closeWithoutRenamingOrLog(fos2);
                        fos = fos2;
                    } else {
                        CommonUtils.closeOrLog(fos2, "Failed to close CLS file");
                        fos = fos2;
                    }
                } catch (Exception e) {
                    e = e;
                    fos = fos2;
                    Fabric.getLogger().e(CrashlyticsCore.TAG, "Failed to write session file for session ID: " + sessionId, e);
                    ExceptionUtils.writeStackTraceIfNotNull(e, fos);
                    exceptionDuringWrite = true;
                    CommonUtils.flushOrLog(cos, "Error flushing session file stream");
                    if (1 != 0) {
                        closeWithoutRenamingOrLog(fos);
                    } else {
                        CommonUtils.closeOrLog(fos, "Failed to close CLS file");
                    }
                } catch (Throwable th) {
                    th = th;
                    fos = fos2;
                    CommonUtils.flushOrLog(cos, "Error flushing session file stream");
                    if (exceptionDuringWrite) {
                        closeWithoutRenamingOrLog(fos);
                    } else {
                        CommonUtils.closeOrLog(fos, "Failed to close CLS file");
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    private static void writeNonFatalEventsTo(CodedOutputStream cos, File[] nonFatalFiles, String sessionId) throws Throwable {
        Arrays.sort(nonFatalFiles, CommonUtils.FILE_MODIFIED_COMPARATOR);
        for (File nonFatalFile : nonFatalFiles) {
            try {
                Fabric.getLogger().d(CrashlyticsCore.TAG, String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", sessionId, nonFatalFile.getName()));
                writeToCosFromFile(cos, nonFatalFile);
            } catch (Exception e) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Error writting non-fatal to session.", e);
            }
        }
    }

    private void writeInitialPartsTo(CodedOutputStream cos, String sessionId) throws Throwable {
        String[] arr$ = INITIAL_SESSION_PART_TAGS;
        for (String tag : arr$) {
            File[] sessionPartFiles = listFilesMatching(new FileNameContainsFilter(sessionId + tag));
            if (sessionPartFiles.length == 0) {
                Fabric.getLogger().e(CrashlyticsCore.TAG, "Can't find " + tag + " data for session ID " + sessionId, null);
            } else {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Collecting " + tag + " data for session ID " + sessionId);
                writeToCosFromFile(cos, sessionPartFiles[0]);
            }
        }
    }

    private static void writeToCosFromFile(CodedOutputStream cos, File file) throws Throwable {
        if (!file.exists()) {
            Fabric.getLogger().e(CrashlyticsCore.TAG, "Tried to include a file that doesn't exist: " + file.getName(), null);
            return;
        }
        FileInputStream fis = null;
        try {
            FileInputStream fis2 = new FileInputStream(file);
            try {
                copyToCodedOutputStream(fis2, cos, (int) file.length());
                CommonUtils.closeOrLog(fis2, "Failed to close file input stream.");
            } catch (Throwable th) {
                th = th;
                fis = fis2;
                CommonUtils.closeOrLog(fis, "Failed to close file input stream.");
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void copyToCodedOutputStream(InputStream inStream, CodedOutputStream cos, int bufferLength) throws IOException {
        int numRead;
        byte[] buffer = new byte[bufferLength];
        int offset = 0;
        while (offset < buffer.length && (numRead = inStream.read(buffer, offset, buffer.length - offset)) >= 0) {
            offset += numRead;
        }
        cos.writeRawBytes(buffer);
    }

    private UserMetaData getUserMetaData(String sessionId) {
        return isHandlingException() ? new UserMetaData(this.crashlyticsCore.getUserIdentifier(), this.crashlyticsCore.getUserName(), this.crashlyticsCore.getUserEmail()) : new MetaDataStore(getFilesDir()).readUserData(sessionId);
    }

    private void sendSessionReports() {
        File[] arr$ = listCompleteSessionFiles();
        for (File finishedSessionFile : arr$) {
            this.executorServiceWrapper.executeAsync(new SendSessionRunnable(this.crashlyticsCore, finishedSessionFile));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getFilesDir() {
        return this.fileStore.getFilesDir();
    }

    private static final class SendSessionRunnable implements Runnable {
        private final CrashlyticsCore crashlyticsCore;
        private final File fileToSend;

        public SendSessionRunnable(CrashlyticsCore crashlyticsCore, File fileToSend) {
            this.crashlyticsCore = crashlyticsCore;
            this.fileToSend = fileToSend;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CommonUtils.canTryConnection(this.crashlyticsCore.getContext())) {
                Fabric.getLogger().d(CrashlyticsCore.TAG, "Attempting to send crash report at time of crash...");
                SettingsData settingsData = Settings.getInstance().awaitSettingsData();
                CreateReportSpiCall call = this.crashlyticsCore.getCreateReportSpiCall(settingsData);
                if (call != null) {
                    new ReportUploader(call).forceUpload(new SessionReport(this.fileToSend, CrashlyticsUncaughtExceptionHandler.SEND_AT_CRASHTIME_HEADER));
                }
            }
        }
    }
}
