package com.amazon.device.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class Position {
    private Size size;
    private int x;
    private int y;

    public Position() {
        this.size = new Size(0, 0);
        this.x = 0;
        this.y = 0;
    }

    public Position(Size size, int x, int y) {
        this.size = size;
        this.x = x;
        this.y = y;
    }

    public Size getSize() {
        return this.size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getX() {
        return this.x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public JSONObject toJSONObject() {
        JSONObject json = this.size.toJSONObject();
        JSONUtils.put(json, "x", this.x);
        JSONUtils.put(json, "y", this.y);
        return json;
    }
}
