package com.amazon.insights;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface UserProfile {
    UserProfile addDimensionAsNumber(String str, Number number);

    UserProfile addDimensionAsString(String str, String str2);

    Map<String, Object> getDimensions();
}
