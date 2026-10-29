package com.amazon.ags.jni;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JniResponseHandler {
    protected long m_CallbackPointer;
    protected int m_DeveloperTag;

    public JniResponseHandler(int developerTag, long callbackPointer) {
        this.m_DeveloperTag = developerTag;
        this.m_CallbackPointer = callbackPointer;
    }
}
