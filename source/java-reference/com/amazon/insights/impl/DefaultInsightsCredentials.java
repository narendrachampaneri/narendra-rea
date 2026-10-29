package com.amazon.insights.impl;

import com.amazon.insights.InsightsCredentials;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultInsightsCredentials implements InsightsCredentials {
    final String applicationKey;
    final String privateKey;

    public DefaultInsightsCredentials(String applicationKey, String privateKey) {
        this.applicationKey = applicationKey;
        this.privateKey = privateKey;
    }

    @Override // com.amazon.insights.InsightsCredentials
    public String getApplicationKey() {
        return this.applicationKey;
    }

    @Override // com.amazon.insights.InsightsCredentials
    public String getPrivateKey() {
        return this.privateKey;
    }

    @Override // com.amazon.insights.InsightsCredentials
    public int hashCode() {
        String hash = getApplicationKey() + getPrivateKey();
        return hash.hashCode();
    }

    @Override // com.amazon.insights.InsightsCredentials
    public boolean equals(Object otherCredentials) {
        if (otherCredentials == null) {
            return false;
        }
        if (otherCredentials == this) {
            return true;
        }
        if (!(otherCredentials instanceof InsightsCredentials)) {
            return false;
        }
        InsightsCredentials rhs = (InsightsCredentials) otherCredentials;
        return getApplicationKey().equals(rhs.getApplicationKey()) && getPrivateKey().equals(rhs.getPrivateKey());
    }
}
