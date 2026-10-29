package com.amazon.insights.validate;

import com.amazon.insights.impl.InitializationException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class EncodingValidator {
    private final String encoding;

    public EncodingValidator(String encoding) {
        this.encoding = encoding;
    }

    public void validate() {
        try {
            "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~".getBytes(this.encoding);
        } catch (UnsupportedEncodingException e) {
            throw new InitializationException(this.encoding + " encoding is not supported", e);
        }
    }
}
