package com.amazon.device.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ExpandProperties {
    private int height;
    private int width;
    private Boolean useCustomClose = Boolean.FALSE;
    private Boolean isModal = Boolean.TRUE;

    ExpandProperties() {
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public Boolean getUseCustomClose() {
        return this.useCustomClose;
    }

    public void setUseCustomClose(Boolean useCustomClose) {
        this.useCustomClose = useCustomClose;
    }

    public Boolean getIsModal() {
        return this.isModal;
    }

    public void setIsModal(Boolean isModal) {
        this.isModal = isModal;
    }

    public JSONObject toJSONObject() {
        JSONObject json = new JSONObject();
        JSONUtils.put(json, "width", this.width);
        JSONUtils.put(json, "height", this.height);
        JSONUtils.put(json, "useCustomClose", this.useCustomClose.booleanValue());
        JSONUtils.put(json, "isModal", this.isModal.booleanValue());
        return json;
    }
}
