package com.amazon.identity.auth.device.appid;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.amazon.identity.auth.device.utils.MAPLog;
import com.amazon.identity.auth.device.utils.MAPUtils;
import com.amazon.identity.auth.device.utils.ThirdPartyResourceParser;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class APIKeyDecoder {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String AMAZON_PUBLIC_CERT = "-----BEGIN CERTIFICATE-----\nMIIEiTCCA3GgAwIBAgIJANVIFteXvjkPMA0GCSqGSIb3DQEBBQUAMIGJMQswCQYD\nVQQGEwJVUzEQMA4GA1UEBxMHU2VhdHRsZTETMBEGA1UEChMKQW1hem9uLmNvbTEZ\nMBcGA1UECxMQSWRlbnRpdHkgYW5kIFRheDETMBEGA1UEAxMKQW1hem9uLmNvbTEj\nMCEGCSqGSIb3DQEJARYUYXV0aC10ZWFtQGFtYXpvbi5jb20wHhcNMTIwODE0MDY1\nMDM5WhcNNzYwNjE0MDAyMjIzWjCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1Nl\nYXR0bGUxEzARBgNVBAoTCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFu\nZCBUYXgxEzARBgNVBAMTCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgt\ndGVhbUBhbWF6b24uY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA\nr4LlDpmlK1+mYGXqhvY3Kcd093eUwOQhQM0cb5Y9FjkXvJiCCoLSR9L8QYm2Jz06\nL/546eF/eMegvej93VGjz9JsW+guUIGkDuyCPwBn3u/PvTVKZD67Cep66qT3xnB3\nLfMFt5ln4T5LuoqJ95s8t9P0fULBU52kPR1hwdSo7G4KRVgyXtMmqjp3PK4EbrPB\ndvXCYxVeR31yDPS0BRENC3SGrzlVzrSWYFhxuxRcfyoMJYsOt/9T5QlO2KmJoTy2\nJQtqo7rlc6rORiJH7i2x+QW14bV3miJe/p4ZHWpOT5Z4hAqMBldc0FufaED1YH/Y\nnNCethI/GrXkgzCJRU5asQIDAQABo4HxMIHuMB0GA1UdDgQWBBQBvx8zbG7Sg/MZ\nOuZ31GeYDkhqozCBvgYDVR0jBIG2MIGzgBQBvx8zbG7Sg/MZOuZ31GeYDkhqo6GB\nj6SBjDCBiTELMAkGA1UEBhMCVVMxEDAOBgNVBAcTB1NlYXR0bGUxEzARBgNVBAoT\nCkFtYXpvbi5jb20xGTAXBgNVBAsTEElkZW50aXR5IGFuZCBUYXgxEzARBgNVBAMT\nCkFtYXpvbi5jb20xIzAhBgkqhkiG9w0BCQEWFGF1dGgtdGVhbUBhbWF6b24uY29t\nggkA1UgW15e+OQ8wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAjOV/\nVDxeAuBqdPgoBGz8AyDtMR4Qyxpe7P0M9umtr8S0PmvYOVs5YuMbEAPUYGsBnWVJ\nn7ErwCF20bkd4x0gHzkOpEzQJnjlO9vJzJcnZH4ZwhVs5jF4IkPN8N68jawPvh5/\nLyWJuwyNY5nGvN5nEecTdUQqT1aa7+Vv3Y1ZQlTEKQtdaoXUjLG86jq9xpanNj/G\nX4VYW+m7mY7Kv7mdfAE4zeECqOY5yAqSfP1M/a5fSfHLQiCTt3mrZfOuj8Hd3Pp5\nVn1e4/UxQQCwZcvAFljEYie6CXD3U1AgzIFiv4/r2M+rDo0T7eqIqCsyG6VCgRAb\ndry4esK8/BdPhyuiZg==\n-----END CERTIFICATE-----\n";
    private static Certificate CERTIFICATE = null;
    public static final String CERTIFICATE_TYPE = "X.509";
    private static final String CHAR_SET = "UTF-8";
    private static final String ENCRYPTION_SCHEME = "RSA-SHA256";
    private static final String EXPECTED_ISSUER = "Amazon";
    private static final String FAILED_TO_DECODE = "Failed to decode: ";
    private static final String HASH_ALGORITHM = "MD5";
    private static final char HASH_SEPARATOR = ':';
    private static final int HEADER_LOC = 0;
    private static final String KEY_ALGORITHM = "alg";
    private static final String KEY_API_KEY_VER = "ver";
    private static final String KEY_APP_FAMILY_ID = "appFamilyId";
    private static final String KEY_APP_ID = "appId";
    private static final String KEY_APP_VARIANT_ID = "appVariantId";
    private static final String KEY_CLIENT_ID = "clientId";
    private static final String KEY_ISSUER = "iss";
    private static final String KEY_PACKAGE_NAME = "pkg";
    private static final String KEY_PERMISSIONS = "perm";
    private static final String KEY_SCOPES = "scopes";
    private static final String KEY_SIGNATURE = "appsig";
    private static final String KEY_SPLITTER = "[.]";
    private static final String LOG_TAG;
    private static final int PAYLOD_LOC = 1;
    private static final String VER_1 = "1";

    static {
        $assertionsDisabled = !APIKeyDecoder.class.desiredAssertionStatus();
        LOG_TAG = APIKeyDecoder.class.getName();
        CERTIFICATE = null;
    }

    private APIKeyDecoder() throws Exception {
        throw new Exception("This class is not instantiable!");
    }

    public static AppInfo decode(String packageName, String apiKey, Context context) {
        return doDecode(packageName, apiKey, true, context);
    }

    static AppInfo doDecode(String packageName, String apiKey, boolean verify, Context context) {
        MAPLog.i(LOG_TAG, "Begin decoding API Key for packageName=" + packageName);
        if (!$assertionsDisabled && (packageName == null || apiKey == null)) {
            throw new AssertionError();
        }
        if (apiKey != null && packageName != null) {
            try {
                String[] keyParts = getKeyParts(apiKey);
                JSONObject header = JSONObjectInstrumentation.init(decodeBase64ToString(keyParts[0]));
                JSONObject payload = JSONObjectInstrumentation.init(decodeBase64ToString(keyParts[1]));
                verifySignature(keyParts, header.getString(KEY_ALGORITHM), context);
                MAPLog.pii(LOG_TAG, ThirdPartyResourceParser.KEY_API_KEY, "payload=" + payload);
                if (verify) {
                    verifyPayload(packageName, payload, context);
                }
                return extractAppInfo(payload);
            } catch (PackageManager.NameNotFoundException e) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e.getMessage(), e);
            } catch (UnsupportedEncodingException e2) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e2.getMessage(), e2);
            } catch (IOException e3) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e3.getMessage(), e3);
            } catch (IllegalArgumentException e4) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e4.getMessage(), e4);
            } catch (SecurityException e5) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e5.getMessage(), e5);
            } catch (InvalidKeyException e6) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e6.getMessage(), e6);
            } catch (NoSuchAlgorithmException e7) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e7.getMessage(), e7);
            } catch (NoSuchProviderException e8) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e8.getMessage(), e8);
            } catch (SignatureException e9) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e9.getMessage(), e9);
            } catch (CertificateException e10) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e10.getMessage(), e10);
            } catch (JSONException e11) {
                MAPLog.w(LOG_TAG, FAILED_TO_DECODE + e11.getMessage(), e11);
            }
        } else {
            MAPLog.pii(LOG_TAG, "ApiKey/PackageName is null. pkg=" + packageName, "apiKey=" + apiKey + "");
        }
        return null;
    }

    private static String[] getKeyParts(String apiKey) {
        if (!$assertionsDisabled && apiKey == null) {
            throw new AssertionError();
        }
        String[] to_return = apiKey.split(KEY_SPLITTER);
        if (to_return.length != 3) {
            throw new IllegalArgumentException("Decoding fails: API Key must have 3 parts {header}.{payload}.{signature}");
        }
        return to_return;
    }

    private static String decodeBase64ToString(String base64String) throws UnsupportedEncodingException {
        byte[] byteData = decodeBase64ToBytes(base64String);
        return new String(byteData, "UTF-8");
    }

    private static byte[] decodeBase64ToBytes(String base64String) throws UnsupportedEncodingException {
        return Base64.decode(base64String.trim().getBytes("UTF-8"), 0);
    }

    private static void verifySignature(String[] keyParts, String algorithm, Context context) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, IOException, CertificateException, NoSuchProviderException {
        if (!algorithm.equalsIgnoreCase(ENCRYPTION_SCHEME)) {
            throw new NoSuchAlgorithmException("Unsupported algorithm : " + algorithm);
        }
        byte[] data = (keyParts[0].trim() + "." + keyParts[1].trim()).getBytes("UTF-8");
        byte[] signature = decodeBase64ToBytes(keyParts[2]);
        if (!verifySignatureWithRsaSha256(signature, data, getCertificate(context))) {
            throw new SecurityException("Decoding fails: signature mismatch!");
        }
    }

    private static boolean verifySignatureWithRsaSha256(byte[] signature, byte[] data, Certificate cert) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException {
        Signature signer = Signature.getInstance("SHA256withRSA", "BC");
        signer.initVerify(cert);
        signer.update(data);
        return signer.verify(signature);
    }

    private static synchronized Certificate getCertificate(Context context) throws IOException, CertificateException {
        if (CERTIFICATE == null) {
            InputStream is = new ByteArrayInputStream(AMAZON_PUBLIC_CERT.getBytes("UTF-8"));
            CERTIFICATE = getCertificate(CERTIFICATE_TYPE, is);
            is.close();
        }
        return CERTIFICATE;
    }

    private static Certificate getCertificate(String certType, InputStream is) throws CertificateException {
        return CertificateFactory.getInstance(certType).generateCertificate(is);
    }

    private static void verifyPayload(String packageName, JSONObject payload, Context context) throws JSONException, PackageManager.NameNotFoundException, NoSuchAlgorithmException, IOException, SecurityException, CertificateException {
        if (!payload.getString(KEY_ISSUER).equals(EXPECTED_ISSUER)) {
            throw new SecurityException("Decoding fails: issuer (" + payload.getString(KEY_ISSUER) + ") is not = " + EXPECTED_ISSUER);
        }
        if (!packageName.equals(payload.getString(KEY_PACKAGE_NAME))) {
            throw new SecurityException("Decoding fails: package names don't match! - " + packageName + " != " + payload.getString(KEY_PACKAGE_NAME));
        }
        PackageManager pkgManager = context.getPackageManager();
        PackageInfo pkgInfo = null;
        if (pkgManager != null) {
            pkgInfo = pkgManager.getPackageInfo(packageName, 64);
        } else {
            MAPLog.d(LOG_TAG, " pkgMgr is null ");
        }
        if (pkgInfo != null) {
            android.content.pm.Signature[] signatures = pkgInfo.signatures;
            if (signatures != null) {
                MAPLog.i(LOG_TAG, " num sigs = " + signatures.length);
                String appSignature = payload.getString(KEY_SIGNATURE);
                if (appSignature != null) {
                    String appSignature2 = appSignature.replace(":", "");
                    MAPLog.pii(LOG_TAG, "Signature checking.", "appSignature = " + appSignature2);
                    for (android.content.pm.Signature sig : signatures) {
                        String fingerprint = getSignatureFingerprint(CERTIFICATE_TYPE, sig);
                        MAPLog.pii(LOG_TAG, "Fingerpirint checking", "fingerprint = " + fingerprint);
                        if (appSignature2.equalsIgnoreCase(fingerprint)) {
                            return;
                        }
                    }
                } else {
                    MAPLog.d(LOG_TAG, " appSignature is null");
                }
            } else {
                MAPLog.d(LOG_TAG, " signatures is null");
            }
        }
        throw new SecurityException("Decoding fails: certificate fingerprint can't be verified!");
    }

    public static String getSignatureFingerprint(String certType, android.content.pm.Signature sig) throws NoSuchAlgorithmException, IOException, CertificateException {
        InputStream is = new ByteArrayInputStream(sig.toByteArray());
        Certificate cert = getCertificate(certType, is);
        is.close();
        return MAPUtils.toHexString(getFingerprint("MD5", cert.getEncoded()));
    }

    private static byte[] getFingerprint(String hashAlg, byte[] data) throws NoSuchAlgorithmException {
        if ($assertionsDisabled || data != null) {
            return MessageDigest.getInstance(hashAlg).digest(data);
        }
        throw new AssertionError();
    }

    private static AppInfo extractAppInfo(JSONObject payload) throws JSONException {
        String appFamilyId;
        String appVariantId;
        String clientId;
        String version = payload.getString(KEY_API_KEY_VER);
        if (version.equals(VER_1)) {
            appFamilyId = payload.getString("appId");
            appVariantId = appFamilyId;
        } else {
            appFamilyId = payload.getString(KEY_APP_FAMILY_ID);
            appVariantId = payload.getString(KEY_APP_VARIANT_ID);
        }
        String packageName = payload.getString(KEY_PACKAGE_NAME);
        String[] allowedScopes = getStringArray(payload, KEY_SCOPES);
        try {
            clientId = payload.getString("clientId");
        } catch (JSONException jsone) {
            MAPLog.w(LOG_TAG, "APIKey does not contain a client id", jsone);
            clientId = null;
        }
        String[] grantedPermissions = getStringArray(payload, KEY_PERMISSIONS);
        return new AppInfo(appFamilyId, appVariantId, packageName, allowedScopes, grantedPermissions, clientId, payload);
    }

    private static String[] getStringArray(JSONObject payload, String key) throws JSONException {
        try {
            JSONArray jsonArray = payload.getJSONArray(key);
            String[] to_return = new String[jsonArray.length()];
            for (int i = 0; i < jsonArray.length(); i++) {
                to_return[i] = jsonArray.getString(i);
            }
            return to_return;
        } catch (JSONException e) {
            MAPLog.i(LOG_TAG, key + " has no mapping in json, returning null array");
            return null;
        }
    }
}
