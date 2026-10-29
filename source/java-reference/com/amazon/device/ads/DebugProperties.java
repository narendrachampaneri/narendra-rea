package com.amazon.device.ads;

import android.os.Environment;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Properties;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes.dex */
class DebugProperties {
    public static final String DEBUG_AAX_AD_HOSTNAME = "debug.aaxHostname";
    public static final String DEBUG_AAX_AD_PARAMS = "debug.aaxAdParams";
    public static final String DEBUG_AAX_CONFIG_HOSTNAME = "debug.aaxConfigHostname";
    public static final String DEBUG_AAX_CONFIG_PARAMS = "debug.aaxConfigParams";
    public static final String DEBUG_AAX_CONFIG_USE_SECURE = "debug.aaxConfigUseSecure";
    public static final String DEBUG_ADID = "debug.adid";
    public static final String DEBUG_AD_PREF_URL = "debug.adPrefURL";
    public static final String DEBUG_APPID = "debug.appid";
    public static final String DEBUG_CAN_TIMEOUT = "debug.canTimeout";
    public static final String DEBUG_CHANNEL = "debug.channel";
    public static final String DEBUG_CONFIG_FEATURE_USE_GPS_ADVERTISING_ID = "debug.fUseGPSAID";
    public static final String DEBUG_DINFO = "debug.dinfo";
    public static final String DEBUG_ECPM = "debug.ec";
    public static final String DEBUG_GEOLOC = "debug.geoloc";
    public static final String DEBUG_IDFA = "debug.idfa";
    public static final String DEBUG_LOGGING = "debug.logging";
    public static final String DEBUG_MADS_HOSTNAME = "debug.madsHostname";
    public static final String DEBUG_MADS_USE_SECURE = "debug.madsUseSecure";
    public static final String DEBUG_MD5UDID = "debug.md5udid";
    public static final String DEBUG_MXSZ = "debug.mxsz";
    public static final String DEBUG_NORETRYTTL = "debug.noRetryTTL";
    public static final String DEBUG_NORETRYTTL_MAX = "debug.noRetryTTLMax";
    public static final String DEBUG_ON = "debug.mode";
    public static final String DEBUG_OPT_OUT = "debug.optOut";
    public static final String DEBUG_PA = "debug.pa";
    public static final String DEBUG_PK = "debug.pk";
    public static final String DEBUG_PKG = "debug.pkg";
    public static final String DEBUG_PT = "debug.pt";
    public static final String DEBUG_SEND_GEO = "debug.sendGeo";
    public static final String DEBUG_SHA1UDID = "debug.sha1udid";
    public static final String DEBUG_SHOULD_FETCH_CONFIG = "debug.shouldFetchConfig";
    public static final String DEBUG_SHOULD_IDENTIFY_USER = "debug.shouldIdentifyUser";
    public static final String DEBUG_SHOULD_REGISTER_SIS = "debug.shouldRegisterSIS";
    public static final String DEBUG_SIS_DOMAIN = "debug.sisDomain";
    public static final String DEBUG_SIS_URL = "debug.sisURL";
    public static final String DEBUG_SIZE = "debug.size";
    public static final String DEBUG_SLOT = "debug.slot";
    public static final String DEBUG_SLOTS = "debug.slots";
    public static final String DEBUG_SLOT_ID = "debug.slotId";
    public static final String DEBUG_SP = "debug.sp";
    public static final String DEBUG_SUPPORTED_MEDIA_TYPES = "debug.supportedMediaTypes";
    public static final String DEBUG_TEST = "debug.test";
    public static final String DEBUG_TLS_ENABLED = "debug.tlsEnabled";
    public static final String DEBUG_TRUNCATE_LAT_LON = "debug.truncateLatLon";
    public static final String DEBUG_UA = "debug.ua";
    public static final String DEBUG_VER = "debug.ver";
    public static final String DEBUG_VIDEO_OPTIONS = "debug.videoOptions";
    public static final String DEBUG_WEBVIEWS = "debug.webViews";
    private static final String FILE_PREFIX = "/com.amazon.device.ads.debug";
    private final FileHandlerFactory fileHandlerFactory;
    private static final DebugProperties instance = new DebugProperties(new DefaultFileHandlerFactory());
    private static final String LOGTAG = DebugProperties.class.getSimpleName();
    private static final BigInteger privModulus = new BigInteger("22425945969293236512819607281747202268852113345956851069545419503178249900977203670147638322801582881051882957295768557918356441519366172126884608406316888515239296504501830280664879549133570276792155151832332847188532369002492210234019359186842709493620665119919750832332220777141369255943445578381285984064028865613478676828533273460580467686485184132743895959747097454385452868408957601246667523882372216446056029831689133478714597838700864119273209955182548633182248700235085802575904827859971001196599005060045450779595767759943984991630413046800554347791145167910883355627096118148593841261053098773337592734097");
    private static final BigInteger privExponent = new BigInteger("5599215006722084151841970702827860151139465197978118529242591197804380779249736540498127864809226859371835159226553869008622098243456195347852554241917744888762998133926842072150379542281041403163862165638226686887497980590930009552760406707269286898150890998325325890252103828011111664174475487114957696526157790937869377570600085450453371238028811033168218737171144699577236108423054506552958366535341910569552237227686862748056351625445281035713423043506793107235726047151346608576583081807969458368853010104969843563629579750936551771756389538574062221915919980316992216032119182896925094308799622409361028579777");
    private final Properties debugProperties = new Properties();
    private boolean debugModeOn = false;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    public DebugProperties(FileHandlerFactory fileHandlerFactory) {
        this.fileHandlerFactory = fileHandlerFactory;
    }

    public static DebugProperties getInstance() {
        return instance;
    }

    public void readDebugProperties() {
        byte[] data;
        byte[] decrypted;
        String storageState = Environment.getExternalStorageState();
        if ("mounted".equals(storageState)) {
            String filename = Environment.getExternalStorageDirectory() + FILE_PREFIX;
            FileInputHandler fileInputHandler = this.fileHandlerFactory.createFileInputHandler(filename);
            if (fileInputHandler.doesFileExist() && fileInputHandler.getFileLength() <= 2147483647L && (data = fileInputHandler.readAllBytesFromFileAndClose()) != null && (decrypted = decrypt(data)) != null) {
                ByteArrayInputStream bais = new ByteArrayInputStream(decrypted);
                this.debugProperties.clear();
                try {
                    try {
                        this.debugProperties.load(bais);
                        try {
                            bais.close();
                        } catch (IOException e) {
                            this.logger.d("Exception closing input stream.");
                        }
                    } catch (IOException e2) {
                        this.logger.d("Exception loading debug properties. %s", e2.getMessage());
                        try {
                            bais.close();
                        } catch (IOException e3) {
                            this.logger.d("Exception closing input stream.");
                        }
                    }
                    String debug = this.debugProperties.getProperty(DEBUG_ON, "false");
                    if (Boolean.valueOf(debug).booleanValue()) {
                        this.debugModeOn = true;
                    }
                } catch (Throwable th) {
                    try {
                        bais.close();
                    } catch (IOException e4) {
                        this.logger.d("Exception closing input stream.");
                    }
                    throw th;
                }
            }
        }
    }

    public String getDebugPropertyAsString(String property, String defaultValue) {
        return !this.debugModeOn ? defaultValue : this.debugProperties.getProperty(property, defaultValue);
    }

    public Integer getDebugPropertyAsInteger(String property, Integer defaultValue) {
        String propertyValue;
        if (this.debugModeOn && (propertyValue = this.debugProperties.getProperty(property)) != null) {
            try {
                return Integer.valueOf(Integer.parseInt(propertyValue));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse integer debug property - property: %s, value: %s", property, propertyValue);
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public Boolean getDebugPropertyAsBoolean(String property, Boolean defaultValue) {
        String propertyValue;
        if (this.debugModeOn && (propertyValue = this.debugProperties.getProperty(property)) != null) {
            try {
                return Boolean.valueOf(Boolean.parseBoolean(propertyValue));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse boolean debug property - property: %s, value: %s", property, propertyValue);
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public Long getDebugPropertyAsLong(String property, Long defaultValue) {
        String propertyValue;
        if (this.debugModeOn && (propertyValue = this.debugProperties.getProperty(property)) != null) {
            try {
                return Long.valueOf(Long.parseLong(propertyValue));
            } catch (NumberFormatException e) {
                this.logger.e("Unable to parse long debug property - property: %s, value: %s", property, propertyValue);
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public boolean containsDebugProperty(String property) {
        if (this.debugModeOn) {
            return this.debugProperties.containsKey(property);
        }
        return false;
    }

    public boolean isDebugModeOn() {
        return this.debugModeOn;
    }

    protected byte[] decrypt(byte[] data) {
        try {
            RSAPrivateKeySpec keySpec = new RSAPrivateKeySpec(privModulus, privExponent);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            PrivateKey key = keyFactory.generatePrivate(keySpec);
            Cipher cipher = Cipher.getInstance("RSA");
            cipher.init(2, key);
            byte[] decryptedData = cipher.doFinal(data);
            return decryptedData;
        } catch (Exception e) {
            this.logger.d("Exception " + e + " trying to decrypt debug file");
            return null;
        }
    }

    void setDebugProperty(String property, String value) {
        this.debugProperties.put(property, value);
    }

    void enableDebugging() {
        this.debugModeOn = true;
    }

    void disableDebugging() {
        this.debugModeOn = false;
    }
}
