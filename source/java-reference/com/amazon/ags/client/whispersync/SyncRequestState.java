package com.amazon.ags.client.whispersync;

/* JADX INFO: loaded from: classes2.dex */
public class SyncRequestState {
    private boolean activeCloudWrite;
    private boolean cloudWriteRequested;
    private boolean diskWriteRequested;

    public boolean isDiskWriteRequested() {
        return this.diskWriteRequested;
    }

    public void setDiskWriteRequested(boolean diskWriteRequested) {
        this.diskWriteRequested = diskWriteRequested;
    }

    public boolean isCloudWriteRequested() {
        return this.cloudWriteRequested;
    }

    public void setCloudWriteRequested(boolean cloudWriteRequested) {
        this.cloudWriteRequested = cloudWriteRequested;
    }

    public boolean isActiveCloudWrite() {
        return this.activeCloudWrite;
    }

    public void setActiveCloudWrite(boolean activeCloudWrite) {
        this.activeCloudWrite = activeCloudWrite;
    }
}
