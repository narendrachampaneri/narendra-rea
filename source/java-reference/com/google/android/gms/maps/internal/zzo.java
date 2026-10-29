package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface zzo extends IInterface {

    public static abstract class zza extends Binder implements zzo {

        /* JADX INFO: renamed from: com.google.android.gms.maps.internal.zzo$zza$zza, reason: collision with other inner class name */
        private static class C0242zza implements zzo {
            private IBinder zzoz;

            C0242zza(IBinder iBinder) {
                this.zzoz = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzoz;
            }

            @Override // com.google.android.gms.maps.internal.zzo
            public void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapReadyCallback");
                    parcelObtain.writeStrongBinder(iGoogleMapDelegate != null ? iGoogleMapDelegate.asBinder() : null);
                    this.zzoz.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnMapReadyCallback");
        }

        public static zzo zzcK(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMapReadyCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzo)) ? new C0242zza(iBinder) : (zzo) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    data.enforceInterface("com.google.android.gms.maps.internal.IOnMapReadyCallback");
                    zza(IGoogleMapDelegate.zza.zzcv(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 1598968902:
                    reply.writeString("com.google.android.gms.maps.internal.IOnMapReadyCallback");
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException;
}
