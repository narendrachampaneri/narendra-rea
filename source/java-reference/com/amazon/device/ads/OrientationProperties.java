package com.amazon.device.ads;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class OrientationProperties {
    private static final String FORMAT = "{\"allowOrientationChange\":%s,\"forceOrientation\":\"%s\"}";
    private Boolean allowOrientationChange = true;
    private ForceOrientation forceOrientation = ForceOrientation.NONE;

    OrientationProperties() {
    }

    public Boolean isAllowOrientationChange() {
        return this.allowOrientationChange;
    }

    public void setAllowOrientationChange(Boolean allowOrientationChange) {
        this.allowOrientationChange = allowOrientationChange;
    }

    public ForceOrientation getForceOrientation() {
        return this.forceOrientation;
    }

    public void setForceOrientation(ForceOrientation forceOrientation) {
        this.forceOrientation = forceOrientation;
    }

    public String toString() {
        return String.format(Locale.US, FORMAT, this.allowOrientationChange.toString(), this.forceOrientation.toString());
    }
}
