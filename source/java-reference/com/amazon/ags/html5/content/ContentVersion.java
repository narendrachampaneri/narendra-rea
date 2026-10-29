package com.amazon.ags.html5.content;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.amazon.ags.html5.util.ResourceUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ContentVersion implements Comparable<ContentVersion> {
    private static final String TAG = ContentVersion.class.getSimpleName();
    private static final String VERSION_FILENAME = "version.txt";
    private static final String majorKey = "major";
    private static final String minorKey = "minor";
    private static final String patchKey = "patch";
    private static final String separator = "::";
    private static final String versionKey = "version";
    private Integer majorVersion;
    private Integer minorVersion;
    private Integer patchVersion;

    public ContentVersion(int major, int minor, int patch) {
        this.majorVersion = Integer.valueOf(major);
        this.minorVersion = Integer.valueOf(minor);
        this.patchVersion = Integer.valueOf(patch);
    }

    public ContentVersion(String json) {
        if (json == null) {
            throw new IllegalArgumentException("Input json must not be null");
        }
        try {
            JSONObject jsonData = new JSONObject(json);
            JSONObject version = jsonData.getJSONObject("version");
            this.majorVersion = Integer.valueOf(version.getInt(majorKey));
            this.minorVersion = Integer.valueOf(version.getInt(minorKey));
            this.patchVersion = Integer.valueOf(version.getInt(patchKey));
        } catch (JSONException e) {
            Log.e(TAG, "Unable to parse version JSON: " + e, e);
            this.majorVersion = -1;
            this.minorVersion = -1;
            this.patchVersion = -1;
        }
    }

    public int getMajorVersion() {
        return this.majorVersion.intValue();
    }

    public int getMinorVersion() {
        return this.minorVersion.intValue();
    }

    public int getPatchVersion() {
        return this.patchVersion.intValue();
    }

    @Override // java.lang.Comparable
    public int compareTo(ContentVersion otherVersion) {
        if (otherVersion == null) {
            throw new IllegalArgumentException("Compared version must not be null");
        }
        int retVal = this.majorVersion.compareTo(Integer.valueOf(otherVersion.getMajorVersion()));
        if (retVal == 0) {
            retVal = this.minorVersion.compareTo(Integer.valueOf(otherVersion.getMinorVersion()));
        }
        return retVal == 0 ? this.patchVersion.compareTo(Integer.valueOf(otherVersion.getPatchVersion())) : retVal;
    }

    public String getVersion() {
        return this.majorVersion + "." + this.minorVersion + "." + this.patchVersion;
    }

    public String toString() {
        return getVersion();
    }

    public static ContentVersion getBlankContentVersion() {
        return new ContentVersion(-1, -1, -1);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0033 A[Catch: IOException -> 0x0037, TRY_LEAVE, TryCatch #2 {IOException -> 0x0037, blocks: (B:13:0x002e, B:15:0x0033), top: B:49:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:24:0x004f A[Catch: IOException -> 0x0057, TRY_LEAVE, TryCatch #1 {IOException -> 0x0057, blocks: (B:22:0x004a, B:24:0x004f), top: B:47:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0068 A[Catch: IOException -> 0x006c, TRY_LEAVE, TryCatch #7 {IOException -> 0x006c, blocks: (B:30:0x0063, B:32:0x0068), top: B:52:0x0063 }] */
    public static ContentVersion createVersionFromFile(String fileLocation) throws Throwable {
        ContentVersion blankContentVersion;
        File versionFile = new File(fileLocation);
        if (!versionFile.exists() || !versionFile.isFile()) {
            return null;
        }
        FileInputStream versionInputStream = null;
        BufferedReader versionBufferedReader = null;
        try {
            try {
                FileInputStream versionInputStream2 = new FileInputStream(versionFile);
                try {
                    BufferedReader versionBufferedReader2 = new BufferedReader(new InputStreamReader(versionInputStream2));
                    try {
                        blankContentVersion = parseContentVersion(versionBufferedReader2.readLine());
                        if (versionInputStream2 != null) {
                            try {
                                versionInputStream2.close();
                                if (versionBufferedReader2 != null) {
                                    versionBufferedReader2.close();
                                }
                            } catch (IOException e) {
                                Log.e(TAG, "Error encountered while cleaning up version file read operation", e);
                            }
                        } else if (versionBufferedReader2 != null) {
                            versionBufferedReader2.close();
                        }
                    } catch (IOException e2) {
                        e = e2;
                        versionBufferedReader = versionBufferedReader2;
                        versionInputStream = versionInputStream2;
                        Log.e(TAG, "Error encountered in reading version file.", e);
                        if (versionInputStream != null) {
                            try {
                                versionInputStream.close();
                                if (versionBufferedReader != null) {
                                    versionBufferedReader.close();
                                }
                            } catch (IOException e3) {
                                Log.e(TAG, "Error encountered while cleaning up version file read operation", e3);
                                blankContentVersion = getBlankContentVersion();
                                return blankContentVersion;
                            }
                        } else if (versionBufferedReader != null) {
                            versionBufferedReader.close();
                        }
                        blankContentVersion = getBlankContentVersion();
                    } catch (Throwable th) {
                        th = th;
                        versionBufferedReader = versionBufferedReader2;
                        versionInputStream = versionInputStream2;
                        if (versionInputStream != null) {
                            try {
                                versionInputStream.close();
                                if (versionBufferedReader != null) {
                                    versionBufferedReader.close();
                                }
                            } catch (IOException e4) {
                                Log.e(TAG, "Error encountered while cleaning up version file read operation", e4);
                                throw th;
                            }
                        } else if (versionBufferedReader != null) {
                            versionBufferedReader.close();
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    versionInputStream = versionInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    versionInputStream = versionInputStream2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e6) {
            e = e6;
        }
        return blankContentVersion;
    }

    public static ContentVersion createVersionFromZip(ZipFile contentZip) throws Throwable {
        ContentVersion blankContentVersion;
        ZipEntry versionFileZipEntry = contentZip.getEntry(VERSION_FILENAME);
        if (versionFileZipEntry == null) {
            return null;
        }
        BufferedReader versionBufferedReader = null;
        try {
            try {
                BufferedReader versionBufferedReader2 = new BufferedReader(new InputStreamReader(contentZip.getInputStream(versionFileZipEntry)));
                try {
                    blankContentVersion = parseContentVersion(versionBufferedReader2.readLine());
                    if (versionBufferedReader2 != null) {
                        try {
                            versionBufferedReader2.close();
                        } catch (IOException e) {
                            Log.e(TAG, "Error encountered while cleaning up version file read operation", e);
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    versionBufferedReader = versionBufferedReader2;
                    Log.e(TAG, "Error encountered in reading version file.", e);
                    if (versionBufferedReader != null) {
                        try {
                            versionBufferedReader.close();
                        } catch (IOException e3) {
                            Log.e(TAG, "Error encountered while cleaning up version file read operation", e3);
                        }
                    }
                    blankContentVersion = getBlankContentVersion();
                } catch (Throwable th) {
                    th = th;
                    versionBufferedReader = versionBufferedReader2;
                    if (versionBufferedReader != null) {
                        try {
                            versionBufferedReader.close();
                        } catch (IOException e4) {
                            Log.e(TAG, "Error encountered while cleaning up version file read operation", e4);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
        return blankContentVersion;
    }

    public static ContentVersion createVersionFromDefaultContentRawResource(Context context, String contentDirectory, String contentResourceName) throws Throwable {
        ContentVersion blankContentVersion;
        ZipInputStream defaultContentZipInputStream = null;
        try {
            try {
                Resources res = context.getResources();
                int defaultContentRawResourceIdentifier = ResourceUtils.getIdentifier(context, contentDirectory, contentResourceName);
                InputStream defaultContentRawResourceInputStream = new BufferedInputStream(res.openRawResource(defaultContentRawResourceIdentifier));
                ZipInputStream defaultContentZipInputStream2 = new ZipInputStream(defaultContentRawResourceInputStream);
                ZipEntry versionInfoZipEntry = null;
                try {
                    for (ZipEntry zipInputStreamEntry = defaultContentZipInputStream2.getNextEntry(); zipInputStreamEntry != null; zipInputStreamEntry = defaultContentZipInputStream2.getNextEntry()) {
                        if (zipInputStreamEntry.getName().equals(VERSION_FILENAME)) {
                            versionInfoZipEntry = zipInputStreamEntry;
                            break;
                        }
                    }
                    if (versionInfoZipEntry != null) {
                        int versionTextByteSize = (int) versionInfoZipEntry.getSize();
                        byte[] versionBytes = new byte[versionTextByteSize];
                        defaultContentZipInputStream2.read(versionBytes);
                        String versionString = new String(versionBytes);
                        blankContentVersion = parseContentVersion(versionString);
                        if (defaultContentZipInputStream2 != null) {
                            try {
                                defaultContentZipInputStream2.close();
                            } catch (IOException e) {
                                Log.e(TAG, "Error encountered while cleaning up version file read operation", e);
                            }
                        }
                        defaultContentZipInputStream = defaultContentZipInputStream2;
                    } else {
                        if (defaultContentZipInputStream2 != null) {
                            try {
                                defaultContentZipInputStream2.close();
                            } catch (IOException e2) {
                                Log.e(TAG, "Error encountered while cleaning up version file read operation", e2);
                                defaultContentZipInputStream = defaultContentZipInputStream2;
                            }
                        }
                        defaultContentZipInputStream = defaultContentZipInputStream2;
                        blankContentVersion = getBlankContentVersion();
                    }
                } catch (IOException e3) {
                    e = e3;
                    defaultContentZipInputStream = defaultContentZipInputStream2;
                    Log.e(TAG, "Could not extract version from content zip file.", e);
                    if (defaultContentZipInputStream != null) {
                        try {
                            defaultContentZipInputStream.close();
                        } catch (IOException e4) {
                            Log.e(TAG, "Error encountered while cleaning up version file read operation", e4);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    defaultContentZipInputStream = defaultContentZipInputStream2;
                    if (defaultContentZipInputStream != null) {
                        try {
                            defaultContentZipInputStream.close();
                        } catch (IOException e5) {
                            Log.e(TAG, "Error encountered while cleaning up version file read operation", e5);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e6) {
            e = e6;
        }
        return blankContentVersion;
    }

    private static ContentVersion parseContentVersion(String contentString) {
        ContentVersion contentVersion = null;
        if (contentString.contains("version")) {
            String[] versionInfo = contentString.split("::");
            if (versionInfo.length != 2) {
                return null;
            }
            String versionString = versionInfo[1].trim();
            String[] versionData = versionString.split("\\.");
            if (versionData.length != 3) {
                return null;
            }
            try {
                ContentVersion contentVersion2 = new ContentVersion(Integer.parseInt(versionData[0]), Integer.parseInt(versionData[1]), Integer.parseInt(versionData[2]));
                contentVersion = contentVersion2;
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return contentVersion;
    }
}
