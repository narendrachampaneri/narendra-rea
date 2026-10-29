package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class ReflectionUtils {
    ReflectionUtils() {
    }

    public boolean isClassAvailable(String className) {
        try {
            Class.forName(className);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
