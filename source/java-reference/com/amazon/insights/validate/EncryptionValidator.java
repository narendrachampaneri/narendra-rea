package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptionValidator {
    private final String encryptionAlgorithm;
    private final String secretKey;

    public EncryptionValidator(String secretKey, String encryptionAlgorithm) {
        this.secretKey = secretKey;
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    public void validate() {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.secretKey.getBytes("UTF-8"), this.encryptionAlgorithm);
            Cipher encryptCipher = Cipher.getInstance(secretKeySpec.getAlgorithm());
            encryptCipher.init(1, secretKeySpec);
            byte[] testStringBytes = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".getBytes("UTF-8");
            byte[] encryptedBytes = encryptCipher.doFinal(testStringBytes);
            Cipher decryptCipher = Cipher.getInstance(secretKeySpec.getAlgorithm());
            decryptCipher.init(2, secretKeySpec);
            byte[] decryptedBytes = decryptCipher.doFinal(encryptedBytes);
            String decryptedString = new String(decryptedBytes, "UTF-8");
            if (!decryptedString.equals("!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~")) {
                throw new InitializationException("Could not encrypt and decrypt string with AES");
            }
        } catch (UnsupportedEncodingException e) {
            throw new InitializationException("UTF-8 encoding is not supported", e);
        } catch (InvalidKeyException e2) {
            throw new InitializationException("Invalid Key for AES", e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new InitializationException("No Provider for AES", e3);
        } catch (BadPaddingException e4) {
            throw new InitializationException("Bad Padding for AES", e4);
        } catch (IllegalBlockSizeException e5) {
            throw new InitializationException("Illegal Block size for AES", e5);
        } catch (NoSuchPaddingException e6) {
            throw new InitializationException("No Such Padding AES", e6);
        }
    }
}
