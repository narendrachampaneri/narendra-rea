package com.amazon.ags.client.whispersync.network;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncResponse {
    private final String date;
    private final String document;
    private final String versionId;

    public WhispersyncResponse(String document, String versionId, String date) {
        this.document = document;
        this.versionId = versionId;
        this.date = date;
    }

    public String getDocument() {
        return this.document;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public String getDate() {
        return this.date;
    }
}
