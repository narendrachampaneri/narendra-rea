package com.amazon.identity.auth.device.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes.dex */
public class ThirdPartyResourceParser {
    private static final String API_KEY_FILE = "api_key.txt";
    public static final String KEY_API_KEY = "APIKey";
    private static final String LOG_TAG = ThirdPartyResourceParser.class.getName();
    private static final String UTF_8 = "UTF-8";
    private final String _apiKey = parseApiKey();
    private final Context _context;
    private final String _packageName;

    public ThirdPartyResourceParser(Context context, String packageName) {
        this._packageName = packageName;
        this._context = context;
    }

    private String parseApiKey() {
        if (this._context != null) {
            InputStream is = null;
            try {
                try {
                    Resources resources = this._context.getPackageManager().getResourcesForApplication(this._packageName);
                    AssetManager assetManager = resources.getAssets();
                    is = assetManager.open(API_KEY_FILE);
                    MAPLog.i(LOG_TAG, "Attempting to parse API Key from assets directory");
                    String string = readString(is);
                } finally {
                    if (is != null) {
                        is.close();
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                MAPLog.i(LOG_TAG, "Unable to get api key asset document: " + e.getMessage());
            } catch (IOException e2) {
                MAPLog.i(LOG_TAG, "Unable to get api key asset document: " + e2.getMessage());
            }
        }
        return null;
    }

    static String readString(InputStream is) throws Throwable {
        String result = null;
        Reader r = null;
        BufferedReader br = null;
        try {
            try {
                Reader r2 = new InputStreamReader(is, "UTF-8");
                try {
                    BufferedReader br2 = new BufferedReader(r2);
                    try {
                        result = br2.readLine();
                        if (r2 != null) {
                            try {
                                r2.close();
                            } catch (IOException ex) {
                                MAPLog.w(LOG_TAG, "Unable to close InputStreamReader: " + ex.getMessage());
                            }
                        }
                        if (br2 != null) {
                            try {
                                br2.close();
                            } catch (IOException ex2) {
                                MAPLog.w(LOG_TAG, "Unable to close BufferedReader: " + ex2.getMessage());
                                br = br2;
                                r = r2;
                            }
                        }
                        br = br2;
                        r = r2;
                    } catch (IOException e) {
                        e = e;
                        br = br2;
                        r = r2;
                        MAPLog.i(LOG_TAG, "Unable read from asset: " + e.getMessage());
                        if (r != null) {
                            try {
                                r.close();
                            } catch (IOException ex3) {
                                MAPLog.w(LOG_TAG, "Unable to close InputStreamReader: " + ex3.getMessage());
                            }
                        }
                        if (br != null) {
                            try {
                                br.close();
                            } catch (IOException ex4) {
                                MAPLog.w(LOG_TAG, "Unable to close BufferedReader: " + ex4.getMessage());
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        br = br2;
                        r = r2;
                        if (r != null) {
                            try {
                                r.close();
                            } catch (IOException ex5) {
                                MAPLog.w(LOG_TAG, "Unable to close InputStreamReader: " + ex5.getMessage());
                            }
                        }
                        if (br != null) {
                            try {
                                br.close();
                            } catch (IOException ex6) {
                                MAPLog.w(LOG_TAG, "Unable to close BufferedReader: " + ex6.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    r = r2;
                } catch (Throwable th2) {
                    th = th2;
                    r = r2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e3) {
            e = e3;
        }
        return result;
    }

    public String getApiKey() {
        if (isApiKeyInAssest()) {
            return this._apiKey;
        }
        MAPLog.w(LOG_TAG, "Unable to get API Key from Assests");
        return getStringValueFromMetaData(KEY_API_KEY);
    }

    public boolean isApiKeyInAssest() {
        return this._apiKey != null;
    }

    private String getStringValueFromMetaData(String key) {
        if (this._context == null) {
            return null;
        }
        MAPLog.i(LOG_TAG, "Attempting to parse API Key from meta data in Android manifest");
        try {
            ApplicationInfo appInfo = this._context.getPackageManager().getApplicationInfo(this._packageName, 128);
            if (appInfo.metaData == null) {
                return null;
            }
            String value = appInfo.metaData.getString(key);
            return value;
        } catch (PackageManager.NameNotFoundException e) {
            MAPLog.w(LOG_TAG, "(key=" + key + ") " + e.getMessage());
            return null;
        }
    }
}
