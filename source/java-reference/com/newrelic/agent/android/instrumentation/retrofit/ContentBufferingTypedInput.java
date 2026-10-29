package com.newrelic.agent.android.instrumentation.retrofit;

import com.newrelic.agent.android.instrumentation.io.CountingInputStream;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import retrofit.mime.TypedInput;

/* JADX INFO: loaded from: classes.dex */
public class ContentBufferingTypedInput implements TypedInput {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private TypedInput impl;
    private CountingInputStream inputStream;

    public ContentBufferingTypedInput(TypedInput impl) {
        this.impl = impl == null ? new EmptyBodyTypedInput() : impl;
        this.inputStream = null;
    }

    public String mimeType() {
        return this.impl.mimeType();
    }

    public long length() {
        try {
            prepareInputStream();
            return this.inputStream.available();
        } catch (IOException e) {
            log.error("ContentBufferingTypedInput generated an IO exception: ", e);
            return -1L;
        }
    }

    public InputStream in() throws IOException {
        prepareInputStream();
        return this.inputStream;
    }

    private void prepareInputStream() throws IOException {
        if (this.inputStream == null) {
            InputStream is = this.impl.in();
            if (is == null) {
                is = new ByteArrayInputStream(new byte[0]);
            }
            this.inputStream = new CountingInputStream(is, true);
        }
    }
}
