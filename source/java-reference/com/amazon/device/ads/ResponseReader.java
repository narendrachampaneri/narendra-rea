package com.amazon.device.ads;

import java.io.InputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ResponseReader {
    private static final String LOGTAG = ResponseReader.class.getSimpleName();
    private final InputStream stream;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private boolean enableLog = false;

    ResponseReader(InputStream stream) {
        this.stream = stream;
    }

    public InputStream getInputStream() {
        return this.stream;
    }

    public void enableLog(boolean enabled) {
        this.enableLog = enabled;
    }

    public void setExternalLogTag(String externalLogTag) {
        if (externalLogTag == null) {
            this.logger.withLogTag(LOGTAG);
        } else {
            this.logger.withLogTag(LOGTAG + " " + externalLogTag);
        }
    }

    public String readAsString() {
        String response = StringUtils.readStringFromInputStream(this.stream);
        if (this.enableLog) {
            this.logger.d("Response Body: %s", response);
        }
        return response;
    }

    public JSONObject readAsJSON() {
        return JSONUtils.getJSONObjectFromString(readAsString());
    }
}
