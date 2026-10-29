package com.crashlytics.android.ndk;

import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
class Sha1FileIdStrategy implements FileIdStrategy {
    Sha1FileIdStrategy() {
    }

    @Override // com.crashlytics.android.ndk.FileIdStrategy
    public String getId(File file) throws IOException {
        return getFileSHA(file.getPath());
    }

    private static String getFileSHA(String path) throws Throwable {
        InputStream data = null;
        try {
            InputStream data2 = new BufferedInputStream(new FileInputStream(path));
            try {
                String sha = CommonUtils.sha1(data2);
                CommonUtils.closeQuietly(data2);
                return sha;
            } catch (Throwable th) {
                th = th;
                data = data2;
                CommonUtils.closeQuietly(data);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
