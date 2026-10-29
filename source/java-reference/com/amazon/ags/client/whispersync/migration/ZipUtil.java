package com.amazon.ags.client.whispersync.migration;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ZipUtil {
    private static final int KIBI = 1024;
    private static final String TAG = "GC_Whispersync";
    private ZipInputStream zipInputStream;

    public final void unzip(byte[] source, File destinationDir) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source cannot be null");
        }
        unzip(new ByteArrayInputStream(source), destinationDir);
    }

    public final void unzip(InputStream source, File destinationDir) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source cannot be null");
        }
        if (destinationDir == null) {
            throw new IllegalArgumentException("destinationDir cannot be null");
        }
        Log.d(TAG, "Entering unzip() with destination directory [" + destinationDir.getPath() + "]");
        this.zipInputStream = new ZipInputStream(source);
        while (true) {
            try {
                ZipEntry entry = getNextEntry(this.zipInputStream);
                if (entry == null) {
                    break;
                }
                File entryFile = new File(destinationDir, entry.getName());
                if (entry.isDirectory()) {
                    Log.d(TAG, "Creating dir: " + entryFile.getName());
                    entryFile.mkdirs();
                } else {
                    Log.d(TAG, "Creating file: " + entryFile.getName());
                    unzipFile(entryFile);
                }
            } catch (Throwable th) {
                if (this.zipInputStream != null) {
                    this.zipInputStream.close();
                }
                throw th;
            }
        }
        if (this.zipInputStream != null) {
            this.zipInputStream.close();
        }
    }

    private ZipEntry getNextEntry(ZipInputStream zip) {
        try {
            return zip.getNextEntry();
        } catch (EOFException e) {
            Log.d(TAG, "Ignoring EOFException");
            return null;
        } catch (IOException e2) {
            return null;
        }
    }

    private void unzipFile(File entryFile) throws Throwable {
        entryFile.getParentFile().mkdirs();
        byte[] buffer = new byte[1024];
        FileOutputStream os = null;
        try {
            FileOutputStream os2 = new FileOutputStream(entryFile);
            while (true) {
                try {
                    int count = this.zipInputStream.read(buffer);
                    if (count == -1) {
                        break;
                    } else {
                        os2.write(buffer, 0, count);
                    }
                } catch (Throwable th) {
                    th = th;
                    os = os2;
                    this.zipInputStream.closeEntry();
                    if (os != null) {
                        os.close();
                    }
                    throw th;
                }
            }
            this.zipInputStream.closeEntry();
            if (os2 != null) {
                os2.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
