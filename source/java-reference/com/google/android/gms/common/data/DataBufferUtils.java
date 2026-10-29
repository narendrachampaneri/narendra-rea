package com.google.android.gms.common.data;

import android.os.Bundle;
import com.inmobi.monetization.internal.imai.IMAIClickEventList;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        IMAIClickEventList iMAIClickEventList = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                iMAIClickEventList.add(it.next().freeze());
            }
            dataBuffer.close();
            return iMAIClickEventList;
        } catch (Throwable th) {
            dataBuffer.close();
            throw th;
        }
    }

    public static boolean hasData(DataBuffer<?> buffer) {
        return buffer != null && buffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> buffer) {
        Bundle bundleZzpZ = buffer.zzpZ();
        return (bundleZzpZ == null || bundleZzpZ.getString("next_page_token") == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> buffer) {
        Bundle bundleZzpZ = buffer.zzpZ();
        return (bundleZzpZ == null || bundleZzpZ.getString("prev_page_token") == null) ? false : true;
    }
}
