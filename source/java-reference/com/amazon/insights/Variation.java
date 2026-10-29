package com.amazon.insights;

/* JADX INFO: loaded from: classes2.dex */
public interface Variation {
    boolean containsVariable(String str);

    String getName();

    String getProjectName();

    boolean getVariableAsBoolean(String str, boolean z);

    double getVariableAsDouble(String str, double d);

    float getVariableAsFloat(String str, float f);

    int getVariableAsInt(String str, int i);

    long getVariableAsLong(String str, long j);

    short getVariableAsShort(String str, short s);

    String getVariableAsString(String str, String str2);
}
