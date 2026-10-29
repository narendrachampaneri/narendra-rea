package com.newrelic.agent.android.util;

import android.util.Base64;

/* JADX INFO: loaded from: classes.dex */
public class AndroidEncoder implements Encoder {
    @Override // com.newrelic.agent.android.util.Encoder
    public String encode(byte[] bytes) {
        return Base64.encodeToString(bytes, 0);
    }
}
