package com.mopub.nativeads.factories;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes.dex */
public class CustomEventNativeFactory {
    protected static CustomEventNativeFactory instance = new CustomEventNativeFactory();

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static CustomEventNative create(@Nullable String className) throws Exception {
        if (className == null) {
            return new MoPubCustomEventNative();
        }
        return instance.internalCreate(Class.forName(className).asSubclass(CustomEventNative.class));
    }

    @Deprecated
    public static void setInstance(@NonNull CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        instance = customEventNativeFactory;
    }

    @NonNull
    protected CustomEventNative internalCreate(@NonNull Class<? extends CustomEventNative> nativeClass) throws Exception {
        Preconditions.checkNotNull(nativeClass);
        Constructor<?> nativeConstructor = nativeClass.getDeclaredConstructor((Class[]) null);
        nativeConstructor.setAccessible(true);
        return nativeConstructor.newInstance(new Object[0]);
    }
}
