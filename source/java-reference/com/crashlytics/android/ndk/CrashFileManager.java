package com.crashlytics.android.ndk;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
interface CrashFileManager {
    void clearCrashFiles();

    File getLastWrittenCrashFile();

    File getNewCrashFile();
}
