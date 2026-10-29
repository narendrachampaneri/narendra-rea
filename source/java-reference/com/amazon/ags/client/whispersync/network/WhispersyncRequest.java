package com.amazon.ags.client.whispersync.network;

/* JADX INFO: loaded from: classes2.dex */
public class WhispersyncRequest {
    private final String document;
    private final String priorVersionId;

    public WhispersyncRequest(String document, String priorVersionId) {
        this.document = document;
        this.priorVersionId = priorVersionId;
    }

    public String getDocument() {
        return this.document;
    }

    public String getPriorVersionId() {
        return this.priorVersionId;
    }
}
