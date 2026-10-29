package com.applovin.impl.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class dh extends AppLovinSdkUtils {
    private static final char[] a = "0123456789abcdef".toCharArray();
    private static final char[] b = "-'".toCharArray();

    public static float a(float f) {
        return 1000.0f * f;
    }

    public static Bitmap a(Context context, int i, int i2) {
        Bitmap bitmapDecodeResource = null;
        FileInputStream fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactoryInstrumentation.decodeResource(context.getResources(), i);
            new BitmapFactory.Options().inSampleSize = (options.outHeight > i2 || options.outWidth > i2) ? (int) Math.pow(2.0d, (int) Math.ceil(Math.log(((double) i2) / ((double) Math.max(options.outHeight, options.outWidth))) / Math.log(0.5d))) : 1;
            bitmapDecodeResource = BitmapFactoryInstrumentation.decodeResource(context.getResources(), i);
        } catch (Exception e) {
        } finally {
            try {
                fileInputStream.close();
                fileInputStream2.close();
            } catch (Exception e2) {
            }
        }
        return bitmapDecodeResource;
    }

    public static Bitmap a(File file, int i) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        FileInputStream fileInputStream3;
        FileInputStream fileInputStream4 = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            fileInputStream = new FileInputStream(file);
            try {
                BitmapFactoryInstrumentation.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                int iPow = (options.outHeight > i || options.outWidth > i) ? (int) Math.pow(2.0d, (int) Math.ceil(Math.log(((double) i) / ((double) Math.max(options.outHeight, options.outWidth))) / Math.log(0.5d))) : 1;
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = iPow;
                FileInputStream fileInputStream5 = new FileInputStream(file);
                try {
                    Bitmap bitmapDecodeStream = BitmapFactoryInstrumentation.decodeStream(fileInputStream5, null, options2);
                    fileInputStream5.close();
                    try {
                        fileInputStream.close();
                        fileInputStream5.close();
                        return bitmapDecodeStream;
                    } catch (Exception e) {
                        return bitmapDecodeStream;
                    }
                } catch (Exception e2) {
                    fileInputStream2 = fileInputStream5;
                    fileInputStream3 = fileInputStream;
                    try {
                        fileInputStream3.close();
                        fileInputStream2.close();
                    } catch (Exception e3) {
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream4 = fileInputStream5;
                    try {
                        fileInputStream.close();
                        fileInputStream4.close();
                    } catch (Exception e4) {
                    }
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream2 = null;
                fileInputStream3 = fileInputStream;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e6) {
            fileInputStream2 = null;
            fileInputStream3 = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static AppLovinAdImpl a() {
        return new AppLovinAdImpl.Builder().setHtml("").setSize(AppLovinAdSize.BANNER).setType(AppLovinAdType.REGULAR).setVideoFilename("").setTarget(AppLovinAdImpl.AdTarget.DEFAULT).setCloseStyle(com.applovin.impl.adview.v.WhiteXOnOpaqueBlack).setVideoCloseDelay(0.0f).setPoststitialCloseDelay(0.0f).setCountdownLength(0).setCurrentAdIdNumber(-1L).setClCode("").build();
    }

    public static String a(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    public static String a(String str, AppLovinSdkImpl appLovinSdkImpl) {
        return a(str, (Integer) appLovinSdkImpl.a(bw.s), (String) appLovinSdkImpl.a(bw.r));
    }

    private static String a(String str, Integer num, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException("No algorithm specified");
        }
        if (str == null || str.length() < 1) {
            return "";
        }
        if (str2.length() < 1 || "none".equals(str2)) {
            return str;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(str.getBytes("UTF-8"));
            String strA = a(messageDigest.digest());
            return (strA == null || num.intValue() <= 0) ? strA : strA.substring(0, Math.min(num.intValue(), strA.length()));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Programming error: UTF-8 is not know encoding", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException("Unknown algorithm \"" + str2 + "\"", e2);
        }
    }

    static String a(Map map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey()).append('=').append(entry.getValue());
        }
        return sb.toString();
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("No data specified");
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i * 2] = a[(bArr[i] & 240) >>> 4];
            cArr[(i * 2) + 1] = a[bArr[i] & 15];
        }
        return new String(cArr);
    }

    public static long b(float f) {
        return Math.round(f);
    }

    public static String b(String str) {
        return a(str, (Integer) (-1), CommonUtils.SHA1_INSTANCE);
    }

    public static long c(float f) {
        return b(a(f));
    }

    static String c(String str) {
        if (!isValidString(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException(e);
        }
    }
}
