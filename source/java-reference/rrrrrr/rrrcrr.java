package rrrrrr;

import android.os.Parcel;
import android.os.Parcelable;
import com.immersion.hapticmediasdk.models.HapticFileInformation;

/* JADX INFO: loaded from: classes2.dex */
public class rrrcrr implements Parcelable.Creator {

    /* JADX INFO: renamed from: b0446ц04460446ц0446, reason: contains not printable characters */
    public static int f150b0446044604460446 = 0;

    /* JADX INFO: renamed from: bц044604460446ц0446, reason: contains not printable characters */
    public static int f151b0446044604460446 = 1;

    /* JADX INFO: renamed from: bц0446цц04460446, reason: contains not printable characters */
    public static int f152b044604460446 = 2;

    /* JADX INFO: renamed from: bцц04460446ц0446, reason: contains not printable characters */
    public static int f153b044604460446 = 84;

    public rrrcrr() throws Exception {
        if (((f153b044604460446 + f151b0446044604460446) * f153b044604460446) % m149b04460446044604460446() != f150b0446044604460446) {
            f153b044604460446 = m152b04460446();
            f150b0446044604460446 = m152b04460446();
        }
        try {
        } catch (Exception e) {
            throw e;
        }
    }

    /* JADX INFO: renamed from: b0446044604460446ц0446, reason: contains not printable characters */
    public static int m149b04460446044604460446() {
        return 2;
    }

    /* JADX INFO: renamed from: b04460446цц04460446, reason: contains not printable characters */
    public static int m150b0446044604460446() {
        return 0;
    }

    /* JADX INFO: renamed from: b0446ццц04460446, reason: contains not printable characters */
    public static int m151b044604460446() {
        return 1;
    }

    /* JADX INFO: renamed from: bцццц04460446, reason: contains not printable characters */
    public static int m152b04460446() {
        return 54;
    }

    @Override // android.os.Parcelable.Creator
    public HapticFileInformation createFromParcel(Parcel parcel) {
        if (((m152b04460446() + m151b044604460446()) * m152b04460446()) % f152b044604460446 != f150b0446044604460446) {
            f153b044604460446 = m152b04460446();
            f150b0446044604460446 = m152b04460446();
        }
        HapticFileInformation hapticFileInformation = new HapticFileInformation(parcel);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        char c = 0;
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        return hapticFileInformation;
    }

    @Override // android.os.Parcelable.Creator
    public /* synthetic */ Object createFromParcel(Parcel parcel) throws Exception {
        try {
            HapticFileInformation hapticFileInformationCreateFromParcel = createFromParcel(parcel);
            if (((f153b044604460446 + f151b0446044604460446) * f153b044604460446) % m149b04460446044604460446() != m150b0446044604460446()) {
                f153b044604460446 = 46;
                f150b0446044604460446 = m152b04460446();
            }
            return hapticFileInformationCreateFromParcel;
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // android.os.Parcelable.Creator
    public HapticFileInformation[] newArray(int i) {
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        HapticFileInformation[] hapticFileInformationArr = new HapticFileInformation[i];
        if (((f153b044604460446 + f151b0446044604460446) * f153b044604460446) % f152b044604460446 != f150b0446044604460446) {
            f153b044604460446 = 32;
            f150b0446044604460446 = 80;
        }
        return hapticFileInformationArr;
    }

    @Override // android.os.Parcelable.Creator
    public /* synthetic */ Object[] newArray(int i) {
        int i2 = f153b044604460446;
        switch ((i2 * (f151b0446044604460446 + i2)) % f152b044604460446) {
            case 0:
                break;
            default:
                f153b044604460446 = m152b04460446();
                f150b0446044604460446 = 47;
                break;
        }
        HapticFileInformation[] hapticFileInformationArrNewArray = newArray(i);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
        return hapticFileInformationArrNewArray;
    }
}
