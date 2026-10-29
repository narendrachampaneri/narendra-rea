package com.amazon.device.ads;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.newrelic.agent.android.analytics.AnalyticAttribute;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class DeviceInfo {
    private static final String LOGTAG = DeviceInfo.class.getSimpleName();
    public static final String ORIENTATION_LANDSCAPE = "landscape";
    public static final String ORIENTATION_PORTRAIT = "portrait";
    public static final String ORIENTATION_UNKNOWN = "unknown";
    private static final String dt = "android";
    private static final String os = "Android";
    private boolean bad_mac;
    private boolean bad_serial;
    private boolean bad_udid;
    private String carrier;
    private String country;
    private final MobileAdsInfoStore infoStore;
    private Size landscapeScreenSize;
    private String language;
    private final MobileAdsLogger logger;
    private boolean macFetched;
    private String make;
    private String md5_mac;
    private String md5_serial;
    private String md5_udid;
    private String model;
    private String osVersion;
    private Size portraitScreenSize;
    private float scalingFactor;
    private String scalingFactorAsString;
    private boolean serialFetched;
    private String sha1_mac;
    private String sha1_serial;
    private String sha1_udid;
    private String udid;
    private boolean udidFetched;
    private UserAgentManager userAgentManager;

    public DeviceInfo(Context context, UserAgentManager userAgentManager) {
        this(context, userAgentManager, MobileAdsInfoStore.getInstance(), new MobileAdsLoggerFactory());
    }

    DeviceInfo(Context context, UserAgentManager userAgentManager, MobileAdsInfoStore infoStore, MobileAdsLoggerFactory loggerFactory) {
        this.make = Build.MANUFACTURER;
        this.model = Build.MODEL;
        this.osVersion = Build.VERSION.RELEASE;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.infoStore = infoStore;
        setCountry();
        setCarrier(context);
        setLanguage();
        setScalingFactor(context);
        this.userAgentManager = userAgentManager;
    }

    public void setUserAgentManager(UserAgentManager userAgentManager) {
        this.userAgentManager = userAgentManager;
    }

    private void setMacAddressIfNotFetched() {
        if (!this.macFetched) {
            setMacAddress();
        }
    }

    protected void setMacAddress() {
        Context context = this.infoStore.getApplicationContext();
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        WifiInfo wifiInfo = null;
        if (wifiManager != null) {
            try {
                wifiInfo = wifiManager.getConnectionInfo();
            } catch (ExceptionInInitializerError e) {
                this.logger.d("Unable to get Wifi connection information: %s", e);
            } catch (SecurityException e2) {
                this.logger.d("Unable to get Wifi connection information: %s", e2);
            }
        }
        if (wifiInfo == null) {
            this.sha1_mac = null;
        } else {
            String macAddress = wifiInfo.getMacAddress();
            if (macAddress == null || macAddress.length() == 0) {
                this.sha1_mac = null;
                this.bad_mac = true;
            } else {
                Pattern macAddressPattern = Pattern.compile("((([0-9a-fA-F]){1,2}[-:]){5}([0-9a-fA-F]){1,2})");
                Matcher matcher = macAddressPattern.matcher(macAddress);
                if (!matcher.find()) {
                    this.sha1_mac = null;
                    this.bad_mac = true;
                } else {
                    this.sha1_mac = WebUtils.getURLEncodedString(StringUtils.sha1(macAddress));
                }
            }
        }
        this.macFetched = true;
    }

    private void setSerialIfNotFetched() {
        if (!this.serialFetched) {
            setSerial();
        }
    }

    private void setSerial() {
        String serial = null;
        try {
            Field f = Build.class.getDeclaredField("SERIAL");
            serial = (String) f.get(Build.class);
        } catch (Exception e) {
        }
        if (serial == null || serial.length() == 0 || serial.equalsIgnoreCase("unknown")) {
            this.bad_serial = true;
        } else {
            this.sha1_serial = WebUtils.getURLEncodedString(StringUtils.sha1(serial));
        }
        this.serialFetched = true;
    }

    private void setUdidIfNotFetched() {
        if (!this.udidFetched) {
            setUdid();
        }
    }

    private void setUdid() {
        Context context = this.infoStore.getApplicationContext();
        String udid = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (StringUtils.isNullOrEmpty(udid) || udid.equalsIgnoreCase("9774d56d682e549c")) {
            this.udid = null;
            this.sha1_udid = null;
            this.bad_udid = true;
        } else {
            this.udid = WebUtils.getURLEncodedString(udid);
            this.sha1_udid = WebUtils.getURLEncodedString(StringUtils.sha1(udid));
        }
        this.udidFetched = true;
    }

    private void setLanguage() {
        String language = Locale.getDefault().getLanguage();
        if (language == null || language.length() <= 0) {
            language = null;
        }
        this.language = language;
    }

    private void setCountry() {
        String country = Locale.getDefault().getCountry();
        if (country == null || country.length() <= 0) {
            country = null;
        }
        this.country = country;
    }

    private void setCarrier(Context context) {
        TelephonyManager tManager = (TelephonyManager) context.getSystemService("phone");
        if (tManager != null) {
            String carrier = tManager.getNetworkOperatorName();
            if (carrier == null || carrier.length() <= 0) {
                carrier = null;
            }
            this.carrier = carrier;
        }
    }

    private void setScalingFactor(Context context) {
        if (this.make.equals("motorola") && this.model.equals("MB502")) {
            this.scalingFactor = 1.0f;
        } else {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics metrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(metrics);
            this.scalingFactor = metrics.scaledDensity;
        }
        this.scalingFactorAsString = Float.toString(this.scalingFactor);
    }

    public String getDeviceType() {
        return "android";
    }

    public String getMake() {
        return this.make;
    }

    public String getModel() {
        return this.model;
    }

    public String getOS() {
        return "Android";
    }

    public String getOSVersion() {
        return this.osVersion;
    }

    public String getMacSha1() {
        setMacAddressIfNotFetched();
        return this.sha1_mac;
    }

    public String getMacMd5() {
        setMacAddressIfNotFetched();
        return this.md5_mac;
    }

    public boolean isMacBad() {
        setMacAddressIfNotFetched();
        return this.bad_mac;
    }

    public String getSerialSha1() {
        setSerialIfNotFetched();
        return this.sha1_serial;
    }

    public String getSerialMd5() {
        setSerialIfNotFetched();
        return this.md5_serial;
    }

    public boolean isSerialBad() {
        setSerialIfNotFetched();
        return this.bad_serial;
    }

    public String getUdid() {
        setUdidIfNotFetched();
        return this.udid;
    }

    public String getUdidSha1() {
        setUdidIfNotFetched();
        return this.sha1_udid;
    }

    public String getUdidMd5() {
        setUdidIfNotFetched();
        return this.md5_udid;
    }

    public boolean isUdidBad() {
        setUdidIfNotFetched();
        return this.bad_udid;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getCountry() {
        return this.country;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getScalingFactorAsString() {
        return this.scalingFactorAsString;
    }

    public float getScalingFactorAsFloat() {
        return this.scalingFactor;
    }

    public String getUserAgentString() {
        return this.userAgentManager.getUserAgentString();
    }

    public void setUserAgentString(String ua) {
        this.userAgentManager.setUserAgentString(ua);
    }

    public void populateUserAgentString(Context context) {
        this.userAgentManager.populateUserAgentString(context);
    }

    public String getOrientation() {
        int canonicalOrientation = DisplayUtils.determineCanonicalScreenOrientation(this.infoStore.getApplicationContext());
        switch (canonicalOrientation) {
            case 0:
            case 8:
                return ORIENTATION_LANDSCAPE;
            case 1:
            case 9:
                return ORIENTATION_PORTRAIT;
            default:
                return "unknown";
        }
    }

    public Size getScreenSize(String orientation) {
        if (orientation.equals(ORIENTATION_PORTRAIT) && this.portraitScreenSize != null) {
            return this.portraitScreenSize;
        }
        if (orientation.equals(ORIENTATION_LANDSCAPE) && this.landscapeScreenSize != null) {
            return this.landscapeScreenSize;
        }
        Context context = this.infoStore.getApplicationContext();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        DisplayMetrics metrics = new DisplayMetrics();
        wm.getDefaultDisplay().getMetrics(metrics);
        String screenSize = String.valueOf(metrics.widthPixels) + "x" + String.valueOf(metrics.heightPixels);
        if (orientation.equals(ORIENTATION_PORTRAIT)) {
            this.portraitScreenSize = new Size(screenSize);
            return this.portraitScreenSize;
        }
        if (orientation.equals(ORIENTATION_LANDSCAPE)) {
            this.landscapeScreenSize = new Size(screenSize);
            return this.landscapeScreenSize;
        }
        return new Size(screenSize);
    }

    public JSONObject getDInfoProperty() {
        JSONObject json = new JSONObject();
        JSONUtils.put(json, "make", getMake());
        JSONUtils.put(json, "model", getModel());
        JSONUtils.put(json, "os", getOS());
        JSONUtils.put(json, AnalyticAttribute.OS_VERSION_ATTRIBUTE, getOSVersion());
        JSONUtils.put(json, "scalingFactor", getScalingFactorAsString());
        JSONUtils.put(json, "language", getLanguage());
        JSONUtils.put(json, "country", getCountry());
        JSONUtils.put(json, AnalyticAttribute.CARRIER_ATTRIBUTE, getCarrier());
        return json;
    }

    public String toJsonString() {
        String orientation = getOrientation();
        JSONObject jsonObject = toJsonObject(orientation);
        return !(jsonObject instanceof JSONObject) ? jsonObject.toString() : JSONObjectInstrumentation.toString(jsonObject);
    }

    JSONObject toJsonObject(String orientation) {
        JSONObject json = getDInfoProperty();
        JSONUtils.put(json, "orientation", orientation);
        JSONUtils.put(json, "screenSize", getScreenSize(orientation).toString());
        ConnectionInfo connectionInfo = new ConnectionInfo(this.infoStore);
        JSONUtils.put(json, "connectionType", connectionInfo.getConnectionType());
        return json;
    }
}
