package com.amazon.device.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class Size {
    private int height;
    private int width;

    public Size(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public Size(String screenSize) {
        String[] dimensions;
        int width = 0;
        int height = 0;
        if (screenSize != null && (dimensions = screenSize.split("x")) != null && dimensions.length == 2) {
            width = Math.max(parseInt(dimensions[0], 0), 0);
            height = Math.max(parseInt(dimensions[1], 0), 0);
        }
        this.width = width;
        this.height = height;
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

    public String toString() {
        return this.width + "x" + this.height;
    }

    private static int parseInt(String str, int defaultValue) {
        try {
            int defaultValue2 = Integer.parseInt(str);
            return defaultValue2;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public JSONObject toJSONObject() {
        JSONObject json = new JSONObject();
        JSONUtils.put(json, "width", this.width);
        JSONUtils.put(json, "height", this.height);
        return json;
    }
}
