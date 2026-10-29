package com.mopub.common.factories;

import com.mopub.common.util.Reflection;

/* JADX INFO: loaded from: classes.dex */
public class MethodBuilderFactory {
    protected static MethodBuilderFactory instance = new MethodBuilderFactory();

    @Deprecated
    public static void setInstance(MethodBuilderFactory factory) {
        instance = factory;
    }

    public static Reflection.MethodBuilder create(Object object, String methodName) {
        return instance.internalCreate(object, methodName);
    }

    protected Reflection.MethodBuilder internalCreate(Object object, String methodName) {
        return new Reflection.MethodBuilder(object, methodName);
    }
}
