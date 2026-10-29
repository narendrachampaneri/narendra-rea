package com.immersion.hapticmediasdk.utils;

import android.content.Context;
import android.os.Process;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class FileManager {
    public static final String HAPTIC_STORAGE_FILENAME = "dat.hapt";
    public static final String TAG = "FileManager";

    /* JADX INFO: renamed from: b0427042704270427Ч0427, reason: contains not printable characters */
    public static int f90b04270427042704270427 = 75;

    /* JADX INFO: renamed from: b0427Ч04270427Ч0427, reason: contains not printable characters */
    public static int f91b0427042704270427 = 1;

    /* JADX INFO: renamed from: bЧ042704270427Ч0427, reason: contains not printable characters */
    public static int f92b0427042704270427 = 2;

    /* JADX INFO: renamed from: bЧЧЧЧ04270427, reason: contains not printable characters */
    public static int f93b04270427;
    Context a;
    private int b;

    public FileManager(Context context) {
        char c = 0;
        int i = 3;
        while (true) {
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        while (true) {
            try {
                i /= 0;
            } catch (Exception e) {
                this.b = 0;
                this.a = context;
                this.b = Process.myTid();
                return;
            }
        }
    }

    /* JADX INFO: renamed from: b0427ЧЧЧ04270427, reason: contains not printable characters */
    public static int m115b042704270427() {
        return 0;
    }

    /* JADX INFO: renamed from: bЧ0427ЧЧ04270427, reason: contains not printable characters */
    public static int m116b042704270427() {
        return 2;
    }

    /* JADX INFO: renamed from: bЧЧ04270427Ч0427, reason: contains not printable characters */
    public static int m117b042704270427() {
        return 28;
    }

    public void closeCloseable(Closeable closeable) throws Exception {
        if (((m117b042704270427() + f91b0427042704270427) * m117b042704270427()) % m116b042704270427() != f93b04270427) {
            f90b04270427042704270427 = m117b042704270427();
            f93b04270427 = m117b042704270427();
        }
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                try {
                    e.printStackTrace();
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public void deleteHapticStorage() throws Exception {
        try {
            File[] fileArrListFiles = new File(getInternalHapticPath()).listFiles();
            if (fileArrListFiles != null) {
                int iM117b042704270427 = m117b042704270427();
                switch ((iM117b042704270427 * (f91b0427042704270427 + iM117b042704270427)) % f92b0427042704270427) {
                    case 0:
                        break;
                    default:
                        f91b0427042704270427 = 63;
                        break;
                }
                for (File file : fileArrListFiles) {
                    try {
                        if (file.getName().endsWith(this.b + HAPTIC_STORAGE_FILENAME)) {
                            file.delete();
                        }
                    } catch (Exception e) {
                        throw e;
                    }
                }
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public File getHapticStorageFile(String str) throws Exception {
        try {
            try {
                String path = this.a.getFilesDir().getPath();
                StringBuilder sbAppend = new StringBuilder().append(getUniqueFileName(str));
                if (((f90b04270427042704270427 + f91b0427042704270427) * f90b04270427042704270427) % f92b0427042704270427 != m115b042704270427()) {
                    f90b04270427042704270427 = m117b042704270427();
                    f93b04270427 = m117b042704270427();
                }
                return new File(path, sbAppend.append(HAPTIC_STORAGE_FILENAME).toString());
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public String getInternalHapticPath() {
        File filesDir = this.a.getFilesDir();
        int iM117b042704270427 = m117b042704270427();
        switch ((iM117b042704270427 * (f91b0427042704270427 + iM117b042704270427)) % f92b0427042704270427) {
            case 0:
                break;
            default:
                f91b0427042704270427 = 65;
                break;
        }
        return filesDir.getAbsolutePath();
    }

    public String getUniqueFileName(String str) throws Exception {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
            messageDigest.reset();
            messageDigest.update(str.getBytes(), 0, str.length());
            Object[] objArr = new Object[2];
            objArr[0] = new BigInteger(1, messageDigest.digest());
            if (((f90b04270427042704270427 + f91b0427042704270427) * f90b04270427042704270427) % f92b0427042704270427 != f93b04270427) {
                f90b04270427042704270427 = m117b042704270427();
                f93b04270427 = 59;
            }
            objArr[1] = Integer.valueOf(this.b);
            return String.format("%032x_%d", objArr);
        } catch (Exception e) {
            try {
                e.printStackTrace();
                return null;
            } catch (Exception e2) {
                throw e2;
            }
        }
    }

    public BufferedOutputStream makeOutputStream(String str) {
        FileOutputStream fileOutputStreamOpenFileOutput;
        BufferedOutputStream bufferedOutputStream = null;
        char c = 0;
        byte[] bArr = new byte[1024];
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            StringBuilder sb = new StringBuilder();
            int i = f90b04270427042704270427;
            switch ((i * (f91b0427042704270427 + i)) % f92b0427042704270427) {
                case 0:
                    break;
                default:
                    f90b04270427042704270427 = 73;
                    f93b04270427 = m117b042704270427();
                    break;
            }
            fileOutputStreamOpenFileOutput = this.a.openFileOutput(new String(sb.append(getUniqueFileName(str)).append(HAPTIC_STORAGE_FILENAME).toString()), 0);
            try {
                for (int iAvailable = fileInputStream.available(); iAvailable > 0; iAvailable = fileInputStream.available()) {
                    fileOutputStreamOpenFileOutput.write(bArr, 0, fileInputStream.read(bArr));
                }
                fileInputStream.close();
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStreamOpenFileOutput = null;
        }
        if (fileOutputStreamOpenFileOutput != null) {
            while (true) {
                switch (1) {
                    case 0:
                        break;
                    case 1:
                        break;
                    default:
                        while (true) {
                            switch (c) {
                                case 0:
                                    break;
                                case 1:
                                    break;
                                default:
                                    break;
                            }
                        }
                        break;
                }
            }
            bufferedOutputStream = new BufferedOutputStream(fileOutputStreamOpenFileOutput);
        }
        return bufferedOutputStream;
    }

    public BufferedOutputStream makeOutputStreamForStreaming(String str) throws Exception {
        try {
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = this.a.openFileOutput(getUniqueFileName(str) + HAPTIC_STORAGE_FILENAME, 0);
                if (((f90b04270427042704270427 + f91b0427042704270427) * f90b04270427042704270427) % f92b0427042704270427 != f93b04270427) {
                    f90b04270427042704270427 = 23;
                    f93b04270427 = m117b042704270427();
                }
                return new BufferedOutputStream(fileOutputStreamOpenFileOutput);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }
}
