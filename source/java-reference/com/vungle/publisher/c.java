package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class c extends b implements Parcelable {
    static final Orientation c = Orientation.matchVideo;
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.vungle.publisher.c.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ c createFromParcel(Parcel parcel) {
            return new c(new b[0]).a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ c[] newArray(int x0) {
            return new c[x0];
        }
    };

    public c(b... bVarArr) {
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                if (bVar != null) {
                    this.a.putAll(bVar.a);
                    this.b.putAll(bVar.b);
                }
            }
        }
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.getBoolean("isBackButtonEnabled", false);
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public boolean isImmersiveMode() {
        return this.a.getBoolean("isImmersiveMode", false);
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public boolean isIncentivized() {
        return this.a.getBoolean("isIncentivized", false);
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public String getIncentivizedCancelDialogBodyText() {
        String string = this.a.getString("incentivizedCancelDialogBodyText");
        if (string == null) {
            return "Closing this video early will prevent you from earning your reward. Are you sure?";
        }
        return string;
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public String getIncentivizedCancelDialogCloseButtonText() {
        String string = this.a.getString("incentivizedCancelDialogNegativeButtonText");
        if (string == null) {
            return "Close video";
        }
        return string;
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        String string = this.a.getString("incentivizedCancelDialogPositiveButtonText");
        if (string == null) {
            return "Keep watching";
        }
        return string;
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public String getIncentivizedCancelDialogTitle() {
        String string = this.a.getString("incentivizedCancelDialogTitle");
        if (string == null) {
            return "Close video?";
        }
        return string;
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public Orientation getOrientation() {
        Orientation orientation = (Orientation) this.a.getParcelable("orientation");
        return orientation == null ? c : orientation;
    }

    @Override // com.vungle.publisher.b, com.vungle.publisher.a
    public boolean isSoundEnabled() {
        return this.a.getBoolean("isSoundEnabled", true);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.a);
        parcel.writeBundle(this.b);
    }

    protected final c a(Parcel parcel) {
        ClassLoader classLoader = c.class.getClassLoader();
        this.a = parcel.readBundle(classLoader);
        this.b = parcel.readBundle(classLoader);
        return this;
    }
}
