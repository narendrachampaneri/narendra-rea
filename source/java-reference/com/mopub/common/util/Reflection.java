package com.mopub.common.util;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Reflection {

    public static class MethodBuilder {
        private Class<?> mClass;
        private final Object mInstance;
        private boolean mIsAccessible;
        private boolean mIsStatic;
        private final String mMethodName;
        private List<Class<?>> mParameterClasses = new ArrayList();
        private List<Object> mParameters = new ArrayList();

        public MethodBuilder(Object instance, String methodName) {
            this.mInstance = instance;
            this.mMethodName = methodName;
            this.mClass = instance != null ? instance.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> clazz, T parameter) {
            this.mParameterClasses.add(clazz);
            this.mParameters.add(parameter);
            return this;
        }

        public MethodBuilder setAccessible() {
            this.mIsAccessible = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> clazz) {
            this.mIsStatic = true;
            this.mClass = clazz;
            return this;
        }

        public Object execute() throws Exception {
            Class<?>[] classArray = new Class[this.mParameterClasses.size()];
            Class<?>[] parameterTypes = (Class[]) this.mParameterClasses.toArray(classArray);
            Method method = Reflection.getDeclaredMethodWithTraversal(this.mClass, this.mMethodName, parameterTypes);
            if (this.mIsAccessible) {
                method.setAccessible(true);
            }
            Object[] parameters = this.mParameters.toArray();
            return this.mIsStatic ? method.invoke(null, parameters) : method.invoke(this.mInstance, parameters);
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> clazz, String methodName, Class<?>... parameterTypes) throws NoSuchMethodException {
        for (Class<?> currentClass = clazz; currentClass != null; currentClass = currentClass.getSuperclass()) {
            try {
                return currentClass.getDeclaredMethod(methodName, parameterTypes);
            } catch (NoSuchMethodException e) {
            }
        }
        throw new NoSuchMethodException();
    }

    public static boolean classFound(String className) {
        try {
            Class.forName(className);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static <T> T instantiateClassWithEmptyConstructor(@NonNull String str, @NonNull Class<? extends T> cls) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, NullPointerException, InvocationTargetException {
        Preconditions.checkNotNull(str);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor((Class[]) null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }
}
