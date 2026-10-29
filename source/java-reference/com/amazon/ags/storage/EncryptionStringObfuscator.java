package com.amazon.ags.storage;

import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptionStringObfuscator implements StringObfuscator {
    private static final String ALGORITHM = "DES";
    private static final String TAG = "GC_" + EncryptionStringObfuscator.class.getSimpleName();
    private static final String UTF8 = "UTF8";
    private final SecretKey key;
    private final boolean valid;

    public EncryptionStringObfuscator(byte[] secretKey) {
        if (secretKey == null || secretKey.length == 0) {
            throw new IllegalArgumentException("secretKey must be non-null");
        }
        byte[] finalSecretKeyBytes = secretKey;
        if (secretKey.length < 8) {
            finalSecretKeyBytes = new byte[8];
            int inputArrayIndex = 0;
            for (int i = 0; i < 8; i++) {
                finalSecretKeyBytes[i] = secretKey[inputArrayIndex];
                inputArrayIndex++;
                if (inputArrayIndex >= secretKey.length) {
                    inputArrayIndex = 0;
                }
            }
        }
        SecretKey localKey = null;
        boolean localValid = false;
        try {
            DESKeySpec keySpec = new DESKeySpec(finalSecretKeyBytes);
            SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(ALGORITHM);
            localKey = keyFactory.generateSecret(keySpec);
            localValid = true;
        } catch (Exception e) {
            Log.e(TAG, "Failed to constructor secret key", e);
        }
        this.key = localKey;
        this.valid = localValid;
    }

    @Override // com.amazon.ags.storage.StringObfuscator
    public String obfuscate(String input) {
        if (!this.valid || input == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            byte[] inputBytes = input.getBytes("UTF8");
            cipher.init(1, this.key);
            byte[] scrambledBytes = cipher.doFinal(inputBytes);
            return Base64.encodeToString(scrambledBytes, 0);
        } catch (Exception e) {
            Log.e(TAG, "Failed to obfuscate string", e);
            return null;
        }
    }

    @Override // com.amazon.ags.storage.StringObfuscator
    public String unobfuscate(String input) {
        if (!this.valid || input == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            byte[] inputBytes = Base64.decode(input.getBytes("UTF8"), 0);
            cipher.init(2, this.key);
            return new String(cipher.doFinal(inputBytes), "UTF8");
        } catch (Exception e) {
            Log.e(TAG, "Failed to unobfuscate string", e);
            return null;
        }
    }
}
