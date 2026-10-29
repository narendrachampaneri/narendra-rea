package com.crashlytics.android.ndk;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
interface FileIdStrategy {
    String getId(File file) throws IOException;
}
