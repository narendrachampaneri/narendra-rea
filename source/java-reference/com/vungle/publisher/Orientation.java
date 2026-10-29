package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public enum Orientation implements Parcelable {
    autoRotate,
    matchVideo;

    public static final Parcelable.Creator<Orientation> CREATOR = new Parcelable.Creator<Orientation>() { // from class: com.vungle.publisher.Orientation.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Orientation createFromParcel(Parcel parcel) {
            return Orientation.values()[parcel.readInt()];
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Orientation[] newArray(int x0) {
            return new Orientation[x0];
        }
    };

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(ordinal());
    }
}
