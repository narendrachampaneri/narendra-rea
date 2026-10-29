package com.amazon.insights.core.io;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DecryptionException extends IOException {
    private static final long serialVersionUID = 8074231369442337688L;

    public DecryptionException(Exception e) {
        super(e.toString());
    }
}
