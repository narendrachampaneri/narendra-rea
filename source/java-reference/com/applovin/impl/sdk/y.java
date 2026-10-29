package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class y {
    private final AppLovinLogger a;
    private final AppLovinSdkImpl b;
    private final String c = FileManager.TAG;
    private final Object d = new Object();

    y(AppLovinSdk appLovinSdk) {
        this.b = (AppLovinSdkImpl) appLovinSdk;
        this.a = appLovinSdk.getLogger();
    }

    long a(long j) {
        return j / 1048576;
    }

    public File a(String str, Context context, boolean z) {
        File file;
        File file2 = null;
        if (dh.isValidString(str)) {
            this.a.d(FileManager.TAG, "Looking up cached resource: " + str);
            if (a(context) || z) {
                if (str.contains("icon")) {
                    str = str.replace("/", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR).replace(".", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                }
                synchronized (this.d) {
                    File fileB = b(context);
                    file = new File(fileB, str);
                    try {
                        fileB.mkdirs();
                    } catch (Exception e) {
                    }
                }
                file2 = file;
            }
        } else {
            this.b.getLogger().d(FileManager.TAG, "Nothing to look up, skipping...");
        }
        return file2;
    }

    String a(Context context, String str) {
        return a(context, str, false);
    }

    String a(Context context, String str, boolean z) {
        if (str == null || str.equals("")) {
            this.b.getLogger().d(FileManager.TAG, "Nothing to cache, skipping...");
            return "";
        }
        this.b.getLogger().d(FileManager.TAG, "Starting caching of resource " + str);
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        File fileA = a(lastPathSegment, context, false);
        if (fileA != null && fileA.exists()) {
            return z ? Uri.fromFile(fileA).toString() : lastPathSegment;
        }
        if (a(fileA, str)) {
            return z ? Uri.fromFile(fileA).toString() : lastPathSegment;
        }
        return null;
    }

    void a(long j, Context context) {
        long jC = c();
        if (jC == -1) {
            this.a.d(FileManager.TAG, "Cache has no maximum size set; skipping drop...");
        } else {
            if (a(j) <= jC) {
                this.a.d(FileManager.TAG, "Cache is present but under size limit; not dropping...");
                return;
            }
            this.a.d(FileManager.TAG, "Cache has exceeded maximum size; dropping...");
            f(context);
            this.b.b().a("cache_drop_count");
        }
    }

    boolean a() {
        return ((Boolean) this.b.a(bw.aA)).booleanValue();
    }

    protected boolean a(Context context) {
        if (n.a("android.permission.WRITE_EXTERNAL_STORAGE", context)) {
            return true;
        }
        return n.c() && !((Boolean) this.b.a(bw.bv)).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    boolean a(ByteArrayOutputStream byteArrayOutputStream, File file) {
        FileOutputStream fileOutputStream;
        boolean z;
        this.a.d(FileManager.TAG, "Writing resource to filesystem: " + file.getName());
        synchronized (this.d) {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        try {
                            byteArrayOutputStream.writeTo(fileOutputStream);
                            z = true;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e) {
                                }
                            }
                        } catch (IOException e2) {
                            e = e2;
                            this.a.e(FileManager.TAG, "Unable to write data to file", e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e3) {
                                    z = false;
                                }
                            }
                            z = false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e4) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (IOException e5) {
                e = e5;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        }
        return z;
    }

    boolean a(File file) {
        boolean zDelete;
        this.a.d(FileManager.TAG, "Removing file " + file.getName() + " from filesystem...");
        synchronized (this.d) {
            try {
                zDelete = file.delete();
            } catch (Exception e) {
                this.a.e(FileManager.TAG, "Failed to remove file " + file.getName() + " from filesystem!", e);
                zDelete = false;
            }
        }
        return zDelete;
    }

    /* JADX WARN: Code duplicated, block: B:133:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x019f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:? A[SYNTHETIC] */
    boolean a(File file, String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        InputStream inputStream = null;
        this.a.d(FileManager.TAG, "Starting caching of " + str + " into " + file.getAbsoluteFile());
        if (((Boolean) this.b.a(bw.bk)).booleanValue() && !str.contains("https://")) {
            this.b.getLogger().w(FileManager.TAG, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            str = str.replace("http://", "https://");
        }
        InputStream inputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(str).openConnection());
                try {
                    httpURLConnection2.setConnectTimeout(((Integer) this.b.a(bw.t)).intValue());
                    httpURLConnection2.setReadTimeout(((Integer) this.b.a(bw.v)).intValue());
                    httpURLConnection2.setDefaultUseCaches(true);
                    httpURLConnection2.setUseCaches(true);
                    httpURLConnection2.setAllowUserInteraction(false);
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        if (0 != 0) {
                            try {
                                inputStream2.close();
                            } catch (Exception e) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e2) {
                            }
                        }
                        if (httpURLConnection2 != null) {
                            try {
                                httpURLConnection2.disconnect();
                            } catch (Exception e3) {
                            }
                        }
                        return false;
                    }
                    InputStream inputStream3 = httpURLConnection2.getInputStream();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream3.read(bArr, 0, bArr.length);
                        if (i < 0) {
                            break;
                        }
                        try {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } catch (Exception e4) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e5) {
                            }
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (Exception e6) {
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception e7) {
                                }
                            }
                            if (httpURLConnection2 != null) {
                                try {
                                    httpURLConnection2.disconnect();
                                } catch (Exception e8) {
                                }
                            }
                            return false;
                        }
                    }
                    if (a(byteArrayOutputStream, file)) {
                        this.a.d(FileManager.TAG, "Caching completed for " + file);
                        if (inputStream3 != null) {
                            try {
                                inputStream3.close();
                            } catch (Exception e9) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e10) {
                            }
                        }
                        if (httpURLConnection2 != null) {
                            try {
                                httpURLConnection2.disconnect();
                            } catch (Exception e11) {
                            }
                        }
                        return true;
                    }
                    this.a.e(FileManager.TAG, "Failed to cache \"" + str + "\" into \"" + file.getAbsolutePath() + "\"");
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (Exception e12) {
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception e13) {
                        }
                    }
                    if (httpURLConnection2 != null) {
                        try {
                            httpURLConnection2.disconnect();
                        } catch (Exception e14) {
                        }
                    }
                    return false;
                } catch (IOException e15) {
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    e = e15;
                    httpURLConnection = httpURLConnection2;
                    try {
                        this.a.e(FileManager.TAG, "Failed to cache \"" + str + "\" into \"" + file.getAbsolutePath() + "\"", e);
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (Exception e16) {
                            }
                        }
                        if (byteArrayOutputStream2 != null) {
                            try {
                                byteArrayOutputStream2.close();
                            } catch (Exception e17) {
                            }
                        }
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception e18) {
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (Exception e19) {
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception e20) {
                            }
                        }
                        if (httpURLConnection != null) {
                            throw th;
                        }
                        try {
                            httpURLConnection.disconnect();
                            throw th;
                        } catch (Exception e21) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    httpURLConnection = httpURLConnection2;
                    th = th2;
                    if (0 != 0) {
                        inputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    if (httpURLConnection != null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (IOException e22) {
                e = e22;
                httpURLConnection = null;
                byteArrayOutputStream2 = byteArrayOutputStream;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        } catch (IOException e23) {
            e = e23;
            httpURLConnection = null;
            byteArrayOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
            byteArrayOutputStream = null;
        }
    }

    public boolean a(String str, Context context) {
        boolean zB;
        synchronized (this.d) {
            zB = b(str, context, false);
        }
        return zB;
    }

    long b() {
        long jLongValue = ((Long) this.b.a(bw.aB)).longValue();
        if (jLongValue < 0 || !a()) {
            return -1L;
        }
        return jLongValue;
    }

    File b(Context context) {
        return a(context) ? new File(context.getExternalFilesDir(null), "al") : new File(context.getCacheDir(), "al");
    }

    public boolean b(String str, Context context, boolean z) {
        boolean z2;
        synchronized (this.d) {
            File fileA = a(str, context, z);
            z2 = (fileA == null || !fileA.exists() || fileA.isDirectory()) ? false : true;
        }
        return z2;
    }

    int c() {
        int iIntValue = ((Integer) this.b.a(bw.aC)).intValue();
        if (iIntValue < 0 || !a()) {
            return -1;
        }
        return iIntValue;
    }

    public List c(Context context) {
        List listAsList;
        File fileB = b(context);
        if (!fileB.isDirectory()) {
            return new ArrayList(0);
        }
        synchronized (this.d) {
            listAsList = Arrays.asList(fileB.listFiles());
        }
        return listAsList;
    }

    void d(Context context) {
        try {
            if (a()) {
                if (this.b.isEnabled()) {
                    this.a.e(FileManager.TAG, "Cannot empty file cache after SDK has completed initialization and ad loads are in progress!");
                    return;
                }
                this.a.d(FileManager.TAG, "Compacting cache...");
                synchronized (this.d) {
                    a(e(context), context);
                }
            }
        } catch (Exception e) {
            this.a.e(FileManager.TAG, "Caught exception while compacting cache!", e);
            this.b.getSettingsManager().a(bw.aA, false);
            this.b.getSettingsManager().b();
        }
    }

    long e(Context context) {
        long length = 0;
        long jB = b();
        boolean z = jB != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        synchronized (this.d) {
            for (File file : c(context)) {
                boolean z2 = false;
                if (z && seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) > jB) {
                    this.a.d(FileManager.TAG, "File " + file.getName() + " has expired, removing...");
                    a(file);
                    z2 = true;
                }
                if (z2) {
                    this.b.b().a("cached_files_expired");
                } else {
                    length += file.length();
                }
            }
        }
        return length;
    }

    void f(Context context) {
        synchronized (this.d) {
            Iterator it = c(context).iterator();
            while (it.hasNext()) {
                a((File) it.next());
            }
        }
    }
}
