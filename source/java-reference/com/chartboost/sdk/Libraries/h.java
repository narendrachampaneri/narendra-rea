package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.chartboost.sdk.impl.cc;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private static h e;
    public Context a = com.chartboost.sdk.b.y();
    private File b;
    private File c;
    private File d;

    public h(String str, boolean z) {
        if (this.a == null) {
            CBLogging.b("CBFileCache", "RunTime error: Cannot find context object");
        } else if (!TextUtils.isEmpty(str)) {
            this.b = a(str, z);
        } else {
            this.b = a("CBCommonCacheFolder", z);
        }
    }

    private File a(String str, boolean z) {
        File file;
        if (this.b != null) {
            return this.b;
        }
        if (!z || !d()) {
            file = new File(new File(this.a.getCacheDir(), "__chartboost"), str);
            this.c = file;
        } else {
            file = new File(new File(Environment.getExternalStorageDirectory(), "__chartboost"), str);
            this.d = file;
        }
        if (!file.exists()) {
            file.mkdirs();
            return file;
        }
        return file;
    }

    public synchronized File a(String str, e.a aVar) {
        File fileA = null;
        synchronized (this) {
            if (this.d != null && !d()) {
                CBLogging.b("CBFileCache", "External Storage unavailable cannot write to the disk");
            } else if (this.b != null) {
                fileA = a(TextUtils.isEmpty(str) ? null : new File(this.b.getPath(), str), aVar);
            }
        }
        return fileA;
    }

    public synchronized File a(File file, e.a aVar) {
        File file2 = null;
        synchronized (this) {
            if (this.d != null && !d()) {
                CBLogging.b("CBFileCache", "External Storage unavailable cannot write to the disk");
            } else if (this.b != null) {
                file2 = file == null ? new File(this.b.getPath(), Long.toString(System.nanoTime())) : file;
                try {
                    cc.a(file2, aVar.toString().getBytes());
                } catch (IOException e2) {
                    CBLogging.b("CBFileCache", "IOException attempting to write cache to disk", e2);
                }
            }
        }
        return file2;
    }

    public synchronized void a(String str, byte[] bArr) {
        if (this.d != null && !d()) {
            CBLogging.b("CBFileCache", "External Storage unavailable cannot write to the disk");
        } else if (this.b != null) {
            File file = null;
            if (!TextUtils.isEmpty(str)) {
                file = new File(this.b.getPath(), str);
            }
            a(file, bArr);
        }
    }

    public synchronized void a(File file, byte[] bArr) {
        if (this.d != null && !d()) {
            CBLogging.b("CBFileCache", "External Storage unavailable cannot write to the disk");
        } else if (this.b != null && bArr != null) {
            if (file == null) {
                file = new File(this.b.getPath(), Long.toString(System.nanoTime()));
            }
            try {
                cc.a(file, bArr);
            } catch (IOException e2) {
                CBLogging.b("CBFileCache", "IOException attempting to write cache to disk", e2);
            }
        }
    }

    public synchronized e.a a(String str) {
        e.a aVarA;
        if (this.d != null && !d()) {
            CBLogging.b("CBFileCache", "External Storage unavailable cannot read from the disk");
            aVarA = e.a.a;
        } else if (this.b == null || str == null) {
            aVarA = e.a.a;
        } else {
            File file = new File(this.b, str);
            if (!file.exists()) {
                aVarA = e.a.a;
            } else {
                aVarA = a(file);
            }
        }
        return aVarA;
    }

    public synchronized e.a a(File file) {
        String str;
        e.a aVarJ;
        if (this.d != null && !d()) {
            CBLogging.b("CBFileCache", "External Storage unavailable cannot read from the disk");
            aVarJ = e.a.a;
        } else if (this.b == null) {
            aVarJ = e.a.a;
        } else {
            try {
                str = new String(cc.b(file));
            } catch (Exception e2) {
                CBLogging.b("CBFileCache", "Error loading cache from disk", e2);
                str = null;
            }
            aVarJ = e.a.j(str);
        }
        return aVarJ;
    }

    public synchronized byte[] b(File file) {
        byte[] bArrB = null;
        synchronized (this) {
            if (this.d != null && !d()) {
                CBLogging.b("CBFileCache", "External Storage unavailable cannot read from the disk");
            } else if (this.b != null) {
                try {
                    bArrB = cc.b(file);
                } catch (Exception e2) {
                    CBLogging.b("CBFileCache", "Error loading cache from disk", e2);
                }
            }
        }
        return bArrB;
    }

    public synchronized String[] a() {
        String[] list = null;
        synchronized (this) {
            if (this.d != null && !d()) {
                CBLogging.b("CBFileCache", "External Storage unavailable cannot read from the disk");
            } else if (this.b != null) {
                list = this.b.list();
            }
        }
        return list;
    }

    public synchronized void c(File file) {
        if (file != null) {
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            c(d(str));
        }
    }

    public synchronized void b() {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        synchronized (this) {
            if (this.d != null && !d()) {
                CBLogging.b("CBFileCache", "External Storage unavailable cannot delete from the disk");
            } else if (this.b != null) {
                try {
                    if (this.d != null && (fileArrListFiles2 = this.d.listFiles()) != null) {
                        for (File file : fileArrListFiles2) {
                            file.delete();
                        }
                    }
                    if (this.c != null && (fileArrListFiles = this.c.listFiles()) != null) {
                        for (File file2 : fileArrListFiles) {
                            file2.delete();
                        }
                    }
                } catch (Exception e2) {
                    CBLogging.b("CBFileCache", "Error while clearing the file cache");
                }
            }
        }
    }

    private boolean d() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return true;
        }
        CBLogging.e("CBFileCache", "External Storage unavailable");
        return false;
    }

    public boolean c(String str) {
        if ((this.d != null && !d()) || this.b == null || str == null) {
            return false;
        }
        return new File(this.b.getPath(), str).exists();
    }

    public File d(String str) {
        if (this.d != null && !d()) {
            CBLogging.b("CBFileCache", "External Storage unavailable cannot read from the disk");
            return null;
        }
        if (this.b != null) {
            return new File(this.b.getPath(), str);
        }
        return null;
    }

    public static synchronized h c() {
        if (e == null) {
            e = new h("CBVideoCompletion", false);
        }
        return e;
    }
}
