package com.amazon.ags.html5.content;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.amazon.ags.html5.util.ResourceUtils;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    private static final int BYTES_PER_KILOBYTE = 1024;
    private static final int DOWNLOAD_BUFFER_SIZE_BYTES = 8192;
    private static final int DOWNLOAD_CONNECTION_TIMEOUT_MS = 2000;
    private static final int DOWNLOAD_READ_TIMEOUT_MS = 2000;
    private static final int MAX_DOWNLOAD_TIME_MS = 5000;
    private static final String PARTIAL_DOWNLOAD_FILENAME_MODIFIER = ".part";
    private static final String TAG = "GC_" + FileUtils.class.getSimpleName();
    private static final int ZIP_BUFFER_SIZE = 2048;

    private FileUtils() {
    }

    public static synchronized boolean ensureDirectoryExists(File dir) {
        boolean directoryExists;
        if (dir == null) {
            directoryExists = false;
        } else {
            directoryExists = true;
            if (!dir.exists()) {
                dir.mkdirs();
                if (!dir.exists()) {
                    directoryExists = false;
                } else {
                    dir.setWritable(true);
                }
            }
        }
        return directoryExists;
    }

    public static synchronized boolean copyResourceContentIntoDirectory(Context context, String resourceName, String destinationName, String destinationDir) throws Throwable {
        boolean z;
        boolean copySuccessful = true;
        OutputStream fileOutputStream = null;
        InputStream inputStream = null;
        try {
            try {
                try {
                    Resources res = context.getResources();
                    inputStream = res.openRawResource(ResourceUtils.getIdentifier(context, "raw", resourceName));
                    if (ensureDirectoryExists(new File(destinationDir))) {
                        OutputStream fileOutputStream2 = new FileOutputStream(new File(destinationDir + File.separator + destinationName));
                        try {
                            byte[] fileBytes = new byte[1024];
                            while (true) {
                                int bytesRead = inputStream.read(fileBytes);
                                if (bytesRead == -1) {
                                    break;
                                }
                                fileOutputStream2.write(fileBytes, 0, bytesRead);
                            }
                            if (inputStream != null) {
                                try {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e) {
                                        copySuccessful = false;
                                        Log.e(TAG, "An error occurred while cleaning up resource copy operation for resource: " + resourceName, e);
                                        fileOutputStream = fileOutputStream2;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            }
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                            }
                            fileOutputStream = fileOutputStream2;
                        } catch (Exception e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            copySuccessful = false;
                            Log.e(TAG, "An error occurred while attempting to access resource: " + resourceName, e);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e3) {
                                    copySuccessful = false;
                                    Log.e(TAG, "An error occurred while cleaning up resource copy operation for resource: " + resourceName, e3);
                                }
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Exception e4) {
                                    Log.e(TAG, "An error occurred while cleaning up resource copy operation for resource: " + resourceName, e4);
                                    throw th;
                                }
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                        z = copySuccessful;
                    } else {
                        z = false;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e5) {
                                Log.e(TAG, "An error occurred while cleaning up resource copy operation for resource: " + resourceName, e5);
                            }
                        }
                        if (0 != 0) {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e6) {
                e = e6;
            }
            return z;
        } catch (Throwable th4) {
            th = th4;
            throw th;
        }
    }

    public static synchronized boolean deleteDirectory(File directory) {
        boolean z = true;
        synchronized (FileUtils.class) {
            boolean deletionSuccessful = true;
            if (directory.exists()) {
                if (!directory.canWrite() && !directory.setWritable(true)) {
                    z = false;
                } else if (directory.exists()) {
                    File[] arr$ = directory.listFiles();
                    for (File file : arr$) {
                        if (file.isDirectory()) {
                            if (!deleteDirectory(file)) {
                                z = false;
                            }
                        } else if (!file.canWrite() && !file.setWritable(true)) {
                            z = false;
                        } else if (!file.delete()) {
                            z = false;
                        }
                    }
                    deletionSuccessful = directory.delete();
                    z = deletionSuccessful;
                } else {
                    z = deletionSuccessful;
                }
            }
        }
        return z;
    }

    public static synchronized boolean renameDirectory(String directory, String newDirectory) {
        boolean result;
        result = false;
        File file = new File(directory);
        File file2 = new File(newDirectory);
        try {
            result = file.renameTo(file2);
        } catch (Exception e) {
            Log.e(TAG, "Error occurred while trying to rename directory (" + directory + ") to (" + newDirectory + ")", e);
        }
        return result;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00f8 A[Catch: all -> 0x00bd, Exception -> 0x00fc, TRY_LEAVE, TryCatch #10 {Exception -> 0x00fc, blocks: (B:56:0x00f0, B:58:0x00f8), top: B:84:0x00f0, outer: #12 }] */
    public static synchronized boolean extractZipToDirectory(String zipFileLocation, String targetDirectory) {
        boolean extractionSuccessful;
        if (!ensureDirectoryExists(new File(targetDirectory))) {
            extractionSuccessful = false;
        } else {
            try {
                ZipFile zipFile = new ZipFile(new File(zipFileLocation));
                extractionSuccessful = true;
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry entry = enumerationEntries.nextElement();
                    String entryName = entry.getName();
                    File destFile = new File(targetDirectory, entryName);
                    File destParent = destFile.getParentFile();
                    ensureDirectoryExists(destParent);
                    if (!entry.isDirectory()) {
                        BufferedInputStream entryInputStream = null;
                        BufferedOutputStream destinationOutputStream = null;
                        try {
                            try {
                                BufferedInputStream entryInputStream2 = new BufferedInputStream(zipFile.getInputStream(entry));
                                try {
                                    byte[] zipData = new byte[2048];
                                    FileOutputStream entryOutputStream = new FileOutputStream(destFile);
                                    try {
                                        BufferedOutputStream destinationOutputStream2 = new BufferedOutputStream(entryOutputStream, 2048);
                                        while (true) {
                                            try {
                                                int bytesRead = entryInputStream2.read(zipData, 0, 2048);
                                                if (bytesRead == -1) {
                                                    break;
                                                }
                                                destinationOutputStream2.write(zipData, 0, bytesRead);
                                            } catch (Exception e) {
                                                e = e;
                                                destinationOutputStream = destinationOutputStream2;
                                                entryInputStream = entryInputStream2;
                                                extractionSuccessful = false;
                                                Log.e(TAG, "An error occurred while performing zip extraction operation", e);
                                                if (destinationOutputStream != null) {
                                                    try {
                                                        destinationOutputStream.flush();
                                                        destinationOutputStream.close();
                                                    } catch (Exception e2) {
                                                        extractionSuccessful = false;
                                                        Log.e(TAG, "An error occurred while cleaning up zip extraction operation", e2);
                                                    }
                                                }
                                                if (entryInputStream != null) {
                                                    entryInputStream.close();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                destinationOutputStream = destinationOutputStream2;
                                                entryInputStream = entryInputStream2;
                                                if (destinationOutputStream != null) {
                                                    try {
                                                        destinationOutputStream.flush();
                                                        destinationOutputStream.close();
                                                        if (entryInputStream != null) {
                                                            entryInputStream.close();
                                                        }
                                                        throw th;
                                                    } catch (Exception e3) {
                                                        extractionSuccessful = false;
                                                        Log.e(TAG, "An error occurred while cleaning up zip extraction operation", e3);
                                                    }
                                                } else {
                                                    if (entryInputStream != null) {
                                                        entryInputStream.close();
                                                    }
                                                    throw th;
                                                }
                                                throw th;
                                            }
                                        }
                                        if (destinationOutputStream2 != null) {
                                            try {
                                                destinationOutputStream2.flush();
                                                destinationOutputStream2.close();
                                            } catch (Exception e4) {
                                                extractionSuccessful = false;
                                                Log.e(TAG, "An error occurred while cleaning up zip extraction operation", e4);
                                            }
                                        }
                                        if (entryInputStream2 != null) {
                                            entryInputStream2.close();
                                        }
                                    } catch (Exception e5) {
                                        e = e5;
                                        entryInputStream = entryInputStream2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        entryInputStream = entryInputStream2;
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                    entryInputStream = entryInputStream2;
                                } catch (Throwable th3) {
                                    th = th3;
                                    entryInputStream = entryInputStream2;
                                }
                            } catch (Exception e7) {
                                e = e7;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                }
            } catch (Exception e8) {
                Log.e(TAG, "Unable to extract zip file", e8);
                extractionSuccessful = false;
            }
        }
        return extractionSuccessful;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0137 -> B:38:0x0131). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:? -> B:38:0x0131). Please report as a decompilation issue!!! */
    public static synchronized boolean downloadFile(String urlString, String destinationFile, long timeoutMS) throws Throwable {
        boolean isDownloadSuccessful = false;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        try {
            try {
                try {
                    URL downloadURL = new URL(urlString);
                    URLConnection downloadURLConnection = HttpInstrumentation.openConnection(downloadURL.openConnection());
                    downloadURLConnection.setConnectTimeout(2000);
                    downloadURLConnection.setReadTimeout(2000);
                    downloadURLConnection.setUseCaches(false);
                    downloadURLConnection.connect();
                    InputStream inputStream2 = new BufferedInputStream(downloadURL.openStream(), 8192);
                    try {
                        File partialDownloadTemporaryFile = new File(destinationFile + PARTIAL_DOWNLOAD_FILENAME_MODIFIER);
                        OutputStream outputStream2 = new FileOutputStream(partialDownloadTemporaryFile);
                        try {
                            byte[] downloadData = new byte[1024];
                            long bytesDownloaded = 0;
                            Log.i(TAG, String.format("Beginning download of %s", destinationFile));
                            long downloadStartTime = System.currentTimeMillis();
                            while (true) {
                                int byteCount = inputStream2.read(downloadData);
                                if (byteCount == -1) {
                                    break;
                                }
                                bytesDownloaded += (long) byteCount;
                                outputStream2.write(downloadData, 0, byteCount);
                                if (System.currentTimeMillis() - downloadStartTime >= timeoutMS) {
                                    Log.w(TAG, "Maximum time to download file exceeded.  Aborting download.");
                                    break;
                                }
                            }
                            isDownloadSuccessful = bytesDownloaded > 0 ? partialDownloadTemporaryFile.renameTo(new File(destinationFile)) : false;
                            if (outputStream2 != null) {
                                try {
                                    try {
                                        outputStream2.flush();
                                        outputStream2.close();
                                    } catch (Exception e) {
                                        Log.w(TAG, "Error encountered during post-download cleanup", e);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    outputStream = outputStream2;
                                    inputStream = inputStream2;
                                    throw th;
                                }
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            outputStream = outputStream2;
                            inputStream = inputStream2;
                            Log.w(TAG, "Error encountered while trying to download file", e);
                            if (outputStream != null) {
                                try {
                                    outputStream.flush();
                                    outputStream.close();
                                } catch (Exception e3) {
                                    Log.w(TAG, "Error encountered during post-download cleanup", e3);
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            outputStream = outputStream2;
                            inputStream = inputStream2;
                            if (outputStream != null) {
                                try {
                                    outputStream.flush();
                                    outputStream.close();
                                } catch (Exception e4) {
                                    Log.w(TAG, "Error encountered during post-download cleanup", e4);
                                    throw th;
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        inputStream = inputStream2;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Exception e6) {
                e = e6;
            }
            Log.i(TAG, String.format("Download of %s was successful: %b", destinationFile, Boolean.valueOf(isDownloadSuccessful)));
            return isDownloadSuccessful;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static synchronized byte[] readFileBytes(String fileLocation) {
        byte[] fileBytes;
        byte[] fileBytes2;
        File file = new File(fileLocation);
        if (file != null && file.exists() && file.canRead()) {
            InputStream inputStream = null;
            try {
                try {
                    InputStream inputStream2 = new FileInputStream(file);
                    try {
                        int fileSizeBytes = (int) file.length();
                        fileBytes2 = new byte[fileSizeBytes];
                        int byteOffset = 0;
                        while (byteOffset < fileSizeBytes) {
                            int bytesRead = inputStream2.read(fileBytes2, byteOffset, fileSizeBytes - byteOffset);
                            byteOffset += bytesRead;
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Exception e) {
                                Log.w(TAG, "Error encountered during post file-to-byte conversion cleanup", e);
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        inputStream = inputStream2;
                        Log.w(TAG, "Error encountered when decoding file to bytes", e);
                        fileBytes2 = null;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e3) {
                                Log.w(TAG, "Error encountered during post file-to-byte conversion cleanup", e3);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e4) {
                                Log.w(TAG, "Error encountered during post file-to-byte conversion cleanup", e4);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                }
                fileBytes = fileBytes2;
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            fileBytes = null;
        }
        return fileBytes;
    }

    public static synchronized String getMD5ChecksumForFile(String targetFile) {
        String checksum;
        String checksum2;
        try {
            byte[] fileBytes = readFileBytes(targetFile);
            if (fileBytes == null) {
                checksum2 = null;
            } else {
                StringBuilder checksumSb = new StringBuilder();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(CommonUtils.MD5_INSTANCE);
                    messageDigest.reset();
                    messageDigest.update(fileBytes);
                    byte[] digestBytes = messageDigest.digest();
                    String tmpMD5 = new BigInteger(1, digestBytes).toString(16);
                    if (tmpMD5 != null) {
                        int leadingZeroesMissing = 32 - tmpMD5.length();
                        for (int i = 0; i < leadingZeroesMissing; i++) {
                            checksumSb.append('0');
                        }
                        checksumSb.append(tmpMD5);
                    }
                    checksum = checksumSb.toString();
                } catch (Exception e) {
                    Log.w(TAG, "Error encountered during checksum calculation", e);
                    checksum = null;
                }
                if (checksum != null && checksum.length() != 32) {
                    Log.w(TAG, "Invalid checksum calculated.  Discarding result: " + checksum);
                    checksum = null;
                }
                checksum2 = checksum;
            }
        } catch (Throwable th) {
            throw th;
        }
        return checksum2;
    }

    public static synchronized long getDirectorySize(File directory) {
        long length;
        long length2;
        length = 0;
        File[] arr$ = directory.listFiles();
        for (File file : arr$) {
            if (file.isDirectory()) {
                length2 = getDirectorySize(file);
            } else {
                length2 = file.length();
            }
            length += length2;
        }
        return length;
    }
}
