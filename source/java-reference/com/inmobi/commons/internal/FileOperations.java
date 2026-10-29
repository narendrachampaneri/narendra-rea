package com.inmobi.commons.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.inmobi.androidsdk.IMBrowserActivity;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;

/* JADX INFO: loaded from: classes.dex */
public class FileOperations {
    public static boolean setPreferences(Context context, String str, String str2, String str3) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putString(str2, str3);
        editorEdit.commit();
        return true;
    }

    public static void setPreferences(Context context, String str, String str2, boolean z) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putBoolean(str2, z);
        editorEdit.commit();
    }

    public static void setPreferences(Context context, String str, String str2, int i) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putInt(str2, i);
        editorEdit.commit();
    }

    public static void setPreferences(Context context, String str, String str2, long j) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putLong(str2, j);
        editorEdit.commit();
    }

    public static void setPreferences(Context context, String str, String str2, float f) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(str, 0).edit();
        editorEdit.putFloat(str2, f);
        editorEdit.commit();
    }

    public static String getPreferences(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
            return null;
        }
        return context.getSharedPreferences(str, 0).getString(str2, null);
    }

    public static boolean getBooleanPreferences(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
            return false;
        }
        return context.getSharedPreferences(str, 0).getBoolean(str2, false);
    }

    public static int getIntPreferences(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
            return 0;
        }
        return context.getSharedPreferences(str, 0).getInt(str2, 0);
    }

    public static long getLongPreferences(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null || "".equals(str.trim()) || "".equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
            return 0L;
        }
        return context.getSharedPreferences(str, 0).getLong(str2, 0L);
    }

    public static Object readFromFile(Context context, String str) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        Object object = null;
        if (context == null || str == null || "".equals(str.trim())) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot read map application context or Filename NULL");
            return null;
        }
        try {
            objectInputStream2 = new ObjectInputStream(new FileInputStream(new File(context.getDir(IMBrowserActivity.EXPANDDATA, 0), str)));
            try {
                object = objectInputStream2.readObject();
                objectInputStream = objectInputStream2;
            } catch (EOFException e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "End of File reached");
                objectInputStream = objectInputStream2;
            } catch (FileNotFoundException e2) {
                objectInputStream = objectInputStream2;
                e = e2;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File doesnot exist", e);
            } catch (StreamCorruptedException e3) {
                objectInputStream = objectInputStream2;
                e = e3;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File corrupted", e);
            } catch (IOException e4) {
                objectInputStream = objectInputStream2;
                e = e4;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File IO Exception", e);
            } catch (ClassNotFoundException e5) {
                objectInputStream = objectInputStream2;
                e = e5;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Error: class not found", e);
            }
        } catch (EOFException e6) {
            objectInputStream2 = null;
        } catch (FileNotFoundException e7) {
            e = e7;
            objectInputStream = null;
        } catch (StreamCorruptedException e8) {
            e = e8;
            objectInputStream = null;
        } catch (IOException e9) {
            e = e9;
            objectInputStream = null;
        } catch (ClassNotFoundException e10) {
            e = e10;
            objectInputStream = null;
        }
        if (objectInputStream != null) {
            try {
                objectInputStream.close();
                return object;
            } catch (IOException e11) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Close Exception");
                return false;
            }
        }
        return object;
    }

    public static boolean saveToFile(Context context, String str, Object obj) {
        if (context == null || str == null || "".equals(str.trim()) || obj == null) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot read map application context of Filename NULL");
            return false;
        }
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(context.getDir(IMBrowserActivity.EXPANDDATA, 0), str), false));
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Close Exception");
                    return false;
                }
            }
            return true;
        } catch (FileNotFoundException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Not found", e2);
            return false;
        } catch (IOException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File IO Exception", e3);
            return false;
        }
    }

    public static boolean isFileExist(Context context, String str) {
        return new File(context.getDir(IMBrowserActivity.EXPANDDATA, 0), str).exists();
    }

    public static String readFileAsString(Context context, String str) throws IOException {
        File file = new File(context.getCacheDir().getAbsolutePath() + File.separator + str);
        file.createNewFile();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            stringBuffer.append("\n").append(line);
        }
        bufferedReader.close();
        return stringBuffer.length() >= 1 ? stringBuffer.substring(1).toString() : "";
    }

    public static void writeStringToFile(Context context, String str, String str2, boolean z) throws IOException {
        File file = new File(context.getCacheDir().getAbsolutePath() + File.separator + str);
        file.createNewFile();
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, z));
        bufferedWriter.write(str2);
        bufferedWriter.close();
    }
}
