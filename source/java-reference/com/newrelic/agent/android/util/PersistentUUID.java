package com.newrelic.agent.android.util;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PersistentUUID {
    public static final String METRIC_UUID_RECOVERED = "UUIDRecovered";
    private static final String UUID_KEY = "nr_uuid";
    private static final String UUID_FILENAME = "nr_installation";
    private static File UUID_FILE = new File(Environment.getDataDirectory(), UUID_FILENAME);
    private static AgentLog log = AgentLogManager.getAgentLog();

    public PersistentUUID(Context context) {
        UUID_FILE = new File(context.getFilesDir(), UUID_FILENAME);
    }

    public String getDeviceId(Context context) {
        String id = generateUniqueID(context);
        if (TextUtils.isEmpty(id)) {
            return UUID.randomUUID().toString();
        }
        return id;
    }

    private String generateUniqueID(Context context) {
        String hardwareDeviceId = Build.SERIAL;
        String str = Build.ID;
        try {
            String androidDeviceId = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (TextUtils.isEmpty(androidDeviceId)) {
                String uuid = UUID.randomUUID().toString();
                return uuid;
            }
            try {
                TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
                if (tm != null) {
                    hardwareDeviceId = tm.getDeviceId();
                }
            } catch (Exception e) {
                hardwareDeviceId = "badf00d";
            }
            if (TextUtils.isEmpty(hardwareDeviceId)) {
                hardwareDeviceId = Build.HARDWARE + Build.DEVICE + Build.BOARD + Build.BRAND;
            }
            String str2 = intToHexString(androidDeviceId.hashCode(), 8) + "-" + intToHexString(hardwareDeviceId.hashCode(), 4) + "-" + intToHexString(Build.VERSION.SDK_INT, 4) + "-" + intToHexString(Build.VERSION.RELEASE.hashCode(), 12);
            throw new RuntimeException("Not supported (TODO)");
        } catch (Exception e2) {
            String uuid2 = UUID.randomUUID().toString();
            return uuid2;
        }
    }

    private String intToHexString(int value, int sublen) {
        String result = "";
        String string = Integer.toHexString(value);
        int remain = sublen - string.length();
        char[] chars = new char[remain];
        Arrays.fill(chars, '0');
        String string2 = new String(chars) + string;
        int count = 0;
        for (int i = string2.length() - 1; i >= 0; i--) {
            count++;
            result = string2.substring(i, i + 1) + result;
            if (count % sublen == 0) {
                result = "-" + result;
            }
        }
        if (result.startsWith("-")) {
            return result.substring(1, result.length());
        }
        return result;
    }

    protected void noticeUUIDMetric(String tag) {
        StatsEngine statsEngine = StatsEngine.get();
        if (statsEngine != null) {
            statsEngine.inc("Supportability/AgentHealth/" + tag);
        } else {
            log.error("StatsEngine is null. " + tag + "  not recorded.");
        }
    }

    public String getPersistentUUID() throws Throwable {
        String uuid = getUUIDFromFileStore();
        if (!TextUtils.isEmpty(uuid)) {
            noticeUUIDMetric(METRIC_UUID_RECOVERED);
            return uuid;
        }
        String uuid2 = UUID.randomUUID().toString();
        log.info("Created random UUID: " + uuid2);
        StatsEngine.get().inc(MetricNames.MOBILE_APP_INSTALL);
        AnalyticAttribute attribute = new AnalyticAttribute(AnalyticAttribute.APP_INSTALL_ATTRIBUTE, true);
        AnalyticsControllerImpl.getInstance().addAttributeUnchecked(attribute, false);
        setPersistedUUID(uuid2);
        return uuid2;
    }

    protected void setPersistedUUID(String uuid) throws Throwable {
        putUUIDToFileStore(uuid);
    }

    protected String getUUIDFromFileStore() throws Throwable {
        String uuid = "";
        if (UUID_FILE.exists()) {
            BufferedReader in = null;
            try {
                try {
                    BufferedReader in2 = new BufferedReader(new FileReader(UUID_FILE));
                    try {
                        String uuidJson = in2.readLine();
                        JSONObject jsonObject = new JSONObject(uuidJson);
                        uuid = jsonObject.getString(UUID_KEY);
                        if (in2 != null) {
                            try {
                                in2.close();
                            } catch (IOException e) {
                                log.error(e.getMessage());
                            }
                        }
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        in = in2;
                        log.error(e.getMessage());
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e3) {
                                log.error(e3.getMessage());
                            }
                        }
                    } catch (IOException e4) {
                        e = e4;
                        in = in2;
                        log.error(e.getMessage());
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e5) {
                                log.error(e5.getMessage());
                            }
                        }
                    } catch (NullPointerException e6) {
                        e = e6;
                        in = in2;
                        log.error(e.getMessage());
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e7) {
                                log.error(e7.getMessage());
                            }
                        }
                    } catch (JSONException e8) {
                        e = e8;
                        in = in2;
                        log.error(e.getMessage());
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e9) {
                                log.error(e9.getMessage());
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        in = in2;
                        if (in != null) {
                            try {
                                in.close();
                            } catch (IOException e10) {
                                log.error(e10.getMessage());
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e11) {
                e = e11;
            } catch (IOException e12) {
                e = e12;
            } catch (NullPointerException e13) {
                e = e13;
            } catch (JSONException e14) {
                e = e14;
            }
        }
        return uuid;
    }

    protected void putUUIDToFileStore(String uuid) throws Throwable {
        BufferedWriter out = null;
        try {
            try {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put(UUID_KEY, uuid);
                BufferedWriter out2 = new BufferedWriter(new FileWriter(UUID_FILE));
                try {
                    out2.write(jsonObject.toString());
                    out2.flush();
                    if (out2 != null) {
                        try {
                            out2.close();
                            out = out2;
                        } catch (IOException e) {
                            log.error(e.getMessage());
                            out = out2;
                        }
                    } else {
                        out = out2;
                    }
                } catch (IOException e2) {
                    e = e2;
                    out = out2;
                    log.error(e.getMessage());
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e3) {
                            log.error(e3.getMessage());
                        }
                    }
                } catch (JSONException e4) {
                    e = e4;
                    out = out2;
                    log.error(e.getMessage());
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e5) {
                            log.error(e5.getMessage());
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    out = out2;
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e6) {
                            log.error(e6.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e7) {
            e = e7;
        } catch (JSONException e8) {
            e = e8;
        }
    }
}
