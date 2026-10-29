package com.crashlytics.android.ndk;

import io.fabric.sdk.android.services.common.CurrentTimeProvider;
import io.fabric.sdk.android.services.common.SystemCurrentTimeProvider;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class TimeBasedCrashFileManager implements CrashFileManager {
    private static final String CRASHFILE_EXT = ".ndk.json";
    private static final File[] EMPTY_FILES = new File[0];
    private final File nativeCrashDirectory;
    private final CurrentTimeProvider timeProvider;

    public TimeBasedCrashFileManager(File nativeCrashDirectory) {
        this(nativeCrashDirectory, new SystemCurrentTimeProvider());
    }

    TimeBasedCrashFileManager(File nativeCrashDirectory, CurrentTimeProvider timeProvider) {
        this.nativeCrashDirectory = nativeCrashDirectory;
        this.timeProvider = timeProvider;
    }

    @Override // com.crashlytics.android.ndk.CrashFileManager
    public File getNewCrashFile() {
        String fileName = this.timeProvider.getCurrentTimeMillis() + CRASHFILE_EXT;
        return new File(this.nativeCrashDirectory, fileName);
    }

    @Override // com.crashlytics.android.ndk.CrashFileManager
    public File getLastWrittenCrashFile() {
        return findLatestCrashFileByValue();
    }

    @Override // com.crashlytics.android.ndk.CrashFileManager
    public void clearCrashFiles() {
        File[] arr$ = getFiles();
        for (File f : arr$) {
            f.delete();
        }
    }

    private File findLatestCrashFileByValue() {
        File latestFile = null;
        File[] files = getFiles();
        long highest = 0;
        for (File f : files) {
            long value = Long.parseLong(stripExtension(f.getName()));
            if (value > highest) {
                highest = value;
                latestFile = f;
            }
        }
        return latestFile;
    }

    private String stripExtension(String fileName) {
        return fileName.substring(0, fileName.length() - CRASHFILE_EXT.length());
    }

    private File[] getFiles() {
        File[] files = this.nativeCrashDirectory.listFiles();
        return files == null ? EMPTY_FILES : files;
    }
}
