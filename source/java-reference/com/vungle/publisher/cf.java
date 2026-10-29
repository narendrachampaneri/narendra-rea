package com.vungle.publisher;

import com.vungle.log.Logger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cf {

    /* JADX INFO: compiled from: vungle */
    public interface a {
        void a(File file, long j);
    }

    public static void a(File file, File file2, a... aVarArr) throws IOException {
        Logger.d(Logger.FILE_TAG, "extracting " + file + " to " + file2);
        if (!file2.isDirectory() && !file2.mkdirs()) {
            throw new IOException("failed to create directories " + file2);
        }
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    if (cc.b(name)) {
                        File canonicalFile = new File(file2, name).getCanonicalFile();
                        if (cc.a(file2, canonicalFile)) {
                            Logger.v(Logger.FILE_TAG, "verified " + canonicalFile + " is nested within " + file2);
                            cc.a(canonicalFile.getParentFile());
                            Logger.v(Logger.FILE_TAG, "extracting " + canonicalFile);
                            FileOutputStream fileOutputStream = new FileOutputStream(canonicalFile);
                            long j = 0;
                            while (true) {
                                try {
                                    int i = zipInputStream.read(bArr);
                                    if (i <= 0) {
                                        break;
                                    }
                                    j += (long) i;
                                    fileOutputStream.write(bArr, 0, i);
                                } catch (Throwable th) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e) {
                                        Logger.w(Logger.FILE_TAG, "error closing file output stream " + file2);
                                    }
                                    throw th;
                                }
                            }
                            for (int i2 = 0; i2 <= 0; i2++) {
                                aVarArr[i2].a(canonicalFile, j);
                            }
                            try {
                                fileOutputStream.close();
                            } catch (IOException e2) {
                                Logger.w(Logger.FILE_TAG, "error closing file output stream " + file2);
                            }
                        } else {
                            throw new ce("aborting zip extraction - child " + name + " escapes destination directory " + file2);
                        }
                    } else {
                        throw new cd("Unsafe path " + name);
                    }
                } else {
                    try {
                        zipInputStream.close();
                        return;
                    } catch (IOException e3) {
                        Logger.w(Logger.FILE_TAG, "error closing zip input stream " + file);
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                zipInputStream.close();
            } catch (IOException e4) {
                Logger.w(Logger.FILE_TAG, "error closing zip input stream " + file);
            }
            throw th2;
        }
    }
}
