package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class SHA256Validator {
    public void validate() {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hashedKey = digest.digest("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF".getBytes("UTF-8"));
            if (hashedKey == null) {
                throw new InitializationException("SHA-256 algorithm cannot hash bytes");
            }
        } catch (UnsupportedEncodingException e) {
            throw new InitializationException("UTF-8 encoding is not supported", e);
        } catch (NoSuchAlgorithmException e2) {
            throw new InitializationException("No valid SHA-256 implementation found", e2);
        }
    }
}
