package com.amazon.device.ads;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class AdData implements Iterable<AAXCreative> {
    private int adHeight;
    private int adWidth;
    private String creative;
    private Set<AAXCreative> creativeTypes;
    private long expirationTimeMs = -1;
    private boolean fetched;
    private String impPixelUrl;
    private String instrPixelUrl;
    private AdProperties properties;

    protected String getCreative() {
        return this.creative;
    }

    protected void setCreative(String creative) {
        this.creative = creative;
    }

    protected AdProperties getProperties() {
        return this.properties;
    }

    protected void setProperties(AdProperties properties) {
        this.properties = properties;
    }

    protected Set<AAXCreative> getCreativeTypes() {
        return this.creativeTypes;
    }

    protected void setCreativeTypes(Set<AAXCreative> creativeTypes) {
        this.creativeTypes = creativeTypes;
    }

    protected String getInstrumentationPixelUrl() {
        return this.instrPixelUrl;
    }

    protected void setInstrumentationPixelUrl(String instrPixelUrl) {
        this.instrPixelUrl = instrPixelUrl;
    }

    protected String getImpressionPixelUrl() {
        return this.impPixelUrl;
    }

    protected void setImpressionPixelUrl(String impPixelUrl) {
        this.impPixelUrl = impPixelUrl;
    }

    public boolean getIsFetched() {
        return this.fetched;
    }

    public void setFetched(boolean fetched) {
        this.fetched = fetched;
    }

    protected void setHeight(int height) {
        this.adHeight = height;
    }

    public int getHeight() {
        return this.adHeight;
    }

    protected void setWidth(int width) {
        this.adWidth = width;
    }

    public int getWidth() {
        return this.adWidth;
    }

    protected void setExpirationTimeMillis(long expirationTimeMs) {
        this.expirationTimeMs = expirationTimeMs;
    }

    public boolean isExpired() {
        if (this.expirationTimeMs < 0) {
            return false;
        }
        long time = System.currentTimeMillis();
        return time > this.expirationTimeMs;
    }

    public long getTimeToExpire() {
        long time = System.currentTimeMillis();
        return this.expirationTimeMs - time;
    }

    @Override // java.lang.Iterable
    public Iterator<AAXCreative> iterator() {
        return this.creativeTypes.iterator();
    }
}
