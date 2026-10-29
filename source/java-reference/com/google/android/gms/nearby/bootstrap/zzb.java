package com.google.android.gms.nearby.bootstrap;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<Device> {
    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    static void zza(Device device, Parcel parcel, int i) {
        int iZzav = com.google.android.gms.common.internal.safeparcel.zzb.zzav(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, device.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, device.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, device.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, device.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, device.zzEb());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzav);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzfP, reason: merged with bridge method [inline-methods] */
    public Device createFromParcel(Parcel parcel) {
        byte bZze = 0;
        String strZzp = null;
        int iZzau = com.google.android.gms.common.internal.safeparcel.zza.zzau(parcel);
        String strZzp2 = null;
        String strZzp3 = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzau) {
            int iZzat = com.google.android.gms.common.internal.safeparcel.zza.zzat(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzca(iZzat)) {
                case 1:
                    strZzp3 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzat);
                    break;
                case 2:
                    strZzp2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzat);
                    break;
                case 3:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzat);
                    break;
                case 4:
                    bZze = com.google.android.gms.common.internal.safeparcel.zza.zze(parcel, iZzat);
                    break;
                case 1000:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzat);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzat);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzau) {
            throw new com.google.android.gms.common.internal.safeparcel.zza.C0066zza("Overread allowed size end=" + iZzau, parcel);
        }
        return new Device(iZzg, strZzp3, strZzp2, strZzp, bZze);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zziL, reason: merged with bridge method [inline-methods] */
    public Device[] newArray(int i) {
        return new Device[i];
    }
}
