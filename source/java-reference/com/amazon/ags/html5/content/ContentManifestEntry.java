package com.amazon.ags.html5.content;

import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.VersionInfo;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ContentManifestEntry {
    private static final String CHECKSUM_KEY = "checksum";
    private static final String COMPATIBILITY_KEY = "sdkVersionCompatibility";
    private static final String CONTENT_KEY = "content";
    private static final String SEPARATOR = ":::";
    private static final String TAG = ContentManifestEntry.class.getSimpleName();
    private static final String VERSION_KEY = "version";
    private String checksum;
    private String contentURL;
    private ContentVersion contentVersion;

    public ContentManifestEntry(ContentVersion contentVersion, String contentURL, String checksum) {
        this.contentVersion = contentVersion;
        this.contentURL = contentURL;
        this.checksum = checksum;
    }

    public ContentVersion getVersion() {
        return this.contentVersion;
    }

    public String getContentURL() {
        return this.contentURL;
    }

    public String getChecksum() {
        return this.checksum;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x010a A[Catch: Exception -> 0x0114, TryCatch #6 {Exception -> 0x0114, blocks: (B:49:0x0105, B:51:0x010a, B:53:0x010f), top: B:92:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x010f A[Catch: Exception -> 0x0114, TRY_LEAVE, TryCatch #6 {Exception -> 0x0114, blocks: (B:49:0x0105, B:51:0x010a, B:53:0x010f), top: B:92:0x0105 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0129 A[Catch: Exception -> 0x0133, TryCatch #8 {Exception -> 0x0133, blocks: (B:58:0x0124, B:60:0x0129, B:62:0x012e), top: B:94:0x0124 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x012e A[Catch: Exception -> 0x0133, TRY_LEAVE, TryCatch #8 {Exception -> 0x0133, blocks: (B:58:0x0124, B:60:0x0129, B:62:0x012e), top: B:94:0x0124 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0149 A[Catch: Exception -> 0x0152, TryCatch #9 {Exception -> 0x0152, blocks: (B:68:0x0144, B:70:0x0149, B:72:0x014e), top: B:96:0x0144 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x014e A[Catch: Exception -> 0x0152, TRY_LEAVE, TryCatch #9 {Exception -> 0x0152, blocks: (B:68:0x0144, B:70:0x0149, B:72:0x014e), top: B:96:0x0144 }] */
    public static Map<String, ContentManifestEntry> createManifestEntriesFromFile(String fileLocation) throws Throwable {
        Map<String, ContentManifestEntry> manifestEntries = new HashMap<>();
        File manifestFile = new File(fileLocation);
        if (manifestFile.exists() && manifestFile.isFile()) {
            FileInputStream manifestInputStream = null;
            DataInputStream manifestDataInputStream = null;
            BufferedReader manifestBufferedReader = null;
            try {
                try {
                    FileInputStream manifestInputStream2 = new FileInputStream(manifestFile);
                    try {
                        DataInputStream manifestDataInputStream2 = new DataInputStream(manifestInputStream2);
                        try {
                            BufferedReader manifestBufferedReader2 = new BufferedReader(new InputStreamReader(manifestDataInputStream2));
                            while (true) {
                                try {
                                    String inputLine = manifestBufferedReader2.readLine();
                                    if (inputLine == null) {
                                        break;
                                    }
                                    String[] manifestFields = inputLine.split(SEPARATOR);
                                    if (manifestFields.length >= 2) {
                                        ContentVersion contentVersion = null;
                                        String urlString = null;
                                        VersionInfo compatibilityVersion = null;
                                        String checksum = null;
                                        for (int i = 0; i < manifestFields.length - 1; i += 2) {
                                            if ("version".equals(manifestFields[i])) {
                                                if (!TextUtils.isEmpty(manifestFields[i + 1])) {
                                                    contentVersion = parseContentVersion(manifestFields[i + 1]);
                                                }
                                            } else if ("content".equals(manifestFields[i])) {
                                                if (!TextUtils.isEmpty(manifestFields[i + 1])) {
                                                    urlString = manifestFields[i + 1];
                                                }
                                            } else if (COMPATIBILITY_KEY.equals(manifestFields[i])) {
                                                if (!TextUtils.isEmpty(manifestFields[i + 1])) {
                                                    compatibilityVersion = parseCompatibilityVersion(manifestFields[i + 1]);
                                                }
                                            } else if (CHECKSUM_KEY.equals(manifestFields[i]) && !TextUtils.isEmpty(manifestFields[i + 1])) {
                                                checksum = manifestFields[i + 1];
                                            }
                                        }
                                        if (contentVersion != null && !TextUtils.isEmpty(urlString) && compatibilityVersion != null) {
                                            manifestEntries.put(compatibilityVersion.toString(), new ContentManifestEntry(contentVersion, urlString, checksum));
                                        }
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    manifestBufferedReader = manifestBufferedReader2;
                                    manifestDataInputStream = manifestDataInputStream2;
                                    manifestInputStream = manifestInputStream2;
                                    Log.e(TAG, "Error encountered while performing manifest read operation", e);
                                    manifestEntries = new HashMap<>();
                                    if (manifestBufferedReader != null) {
                                        try {
                                            manifestBufferedReader.close();
                                            if (manifestDataInputStream != null) {
                                                manifestDataInputStream.close();
                                            }
                                            if (manifestInputStream != null) {
                                                manifestInputStream.close();
                                            }
                                        } catch (Exception e2) {
                                            Log.e(TAG, "Error encountered while cleaning up manifest read operation", e2);
                                        }
                                    } else {
                                        if (manifestDataInputStream != null) {
                                            manifestDataInputStream.close();
                                        }
                                        if (manifestInputStream != null) {
                                            manifestInputStream.close();
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    manifestBufferedReader = manifestBufferedReader2;
                                    manifestDataInputStream = manifestDataInputStream2;
                                    manifestInputStream = manifestInputStream2;
                                    if (manifestBufferedReader != null) {
                                        try {
                                            manifestBufferedReader.close();
                                            if (manifestDataInputStream != null) {
                                                manifestDataInputStream.close();
                                            }
                                            if (manifestInputStream != null) {
                                                manifestInputStream.close();
                                            }
                                        } catch (Exception e3) {
                                            Log.e(TAG, "Error encountered while cleaning up manifest read operation", e3);
                                            throw th;
                                        }
                                    } else {
                                        if (manifestDataInputStream != null) {
                                            manifestDataInputStream.close();
                                        }
                                        if (manifestInputStream != null) {
                                            manifestInputStream.close();
                                        }
                                    }
                                    throw th;
                                }
                            }
                            if (manifestBufferedReader2 != null) {
                                try {
                                    manifestBufferedReader2.close();
                                    if (manifestDataInputStream2 != null) {
                                        manifestDataInputStream2.close();
                                    }
                                    if (manifestInputStream2 != null) {
                                        manifestInputStream2.close();
                                    }
                                } catch (Exception e4) {
                                    Log.e(TAG, "Error encountered while cleaning up manifest read operation", e4);
                                }
                            } else {
                                if (manifestDataInputStream2 != null) {
                                    manifestDataInputStream2.close();
                                }
                                if (manifestInputStream2 != null) {
                                    manifestInputStream2.close();
                                }
                            }
                        } catch (Exception e5) {
                            e = e5;
                            manifestDataInputStream = manifestDataInputStream2;
                            manifestInputStream = manifestInputStream2;
                        } catch (Throwable th2) {
                            th = th2;
                            manifestDataInputStream = manifestDataInputStream2;
                            manifestInputStream = manifestInputStream2;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        manifestInputStream = manifestInputStream2;
                    } catch (Throwable th3) {
                        th = th3;
                        manifestInputStream = manifestInputStream2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Exception e7) {
                e = e7;
            }
        }
        return manifestEntries;
    }

    private static ContentVersion parseContentVersion(String versionString) {
        String[] versionData = versionString.split("\\.");
        if (versionData.length != 3) {
            return null;
        }
        for (String versionNumber : versionData) {
            try {
                Integer.parseInt(versionNumber);
            } catch (Exception e) {
                Log.w(TAG, "Exception encountered while parsing content version number", e);
                return null;
            }
        }
        return new ContentVersion(Integer.parseInt(versionData[0]), Integer.parseInt(versionData[1]), Integer.parseInt(versionData[2]));
    }

    private static VersionInfo parseCompatibilityVersion(String versionString) {
        String[] versionData = versionString.split("\\.");
        if (versionData.length != 3) {
            return null;
        }
        for (String versionNumber : versionData) {
            try {
                Integer.parseInt(versionNumber);
            } catch (Exception e) {
                Log.w(TAG, "Exception encountered while parsing compatibility version number", e);
                return null;
            }
        }
        return new VersionInfo(Integer.parseInt(versionData[0]), Integer.parseInt(versionData[1]), Integer.parseInt(versionData[2]));
    }
}
