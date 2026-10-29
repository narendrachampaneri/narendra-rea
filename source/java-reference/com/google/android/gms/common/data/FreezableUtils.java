package com.google.android.gms.common.data;

import com.inmobi.monetization.internal.imai.IMAIClickEventList;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        IMAIClickEventList iMAIClickEventList = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            iMAIClickEventList.add(arrayList.get(i).freeze());
        }
        return iMAIClickEventList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        IMAIClickEventList iMAIClickEventList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            iMAIClickEventList.add(e.freeze());
        }
        return iMAIClickEventList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        IMAIClickEventList iMAIClickEventList = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            iMAIClickEventList.add(it.next().freeze());
        }
        return iMAIClickEventList;
    }
}
