package com.nineoldandroids.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatProperty<T> extends Property<T, Float> {
    public abstract void setValue(T t, float f);

    public FloatProperty(String name) {
        super(Float.class, name);
    }

    @Override // com.nineoldandroids.util.Property
    public final void set(T object, Float value) {
        setValue(object, value.floatValue());
    }
}
