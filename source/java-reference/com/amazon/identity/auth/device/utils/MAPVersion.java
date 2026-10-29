package com.amazon.identity.auth.device.utils;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.ads.AdRequest;
import java.security.InvalidParameterException;

/* JADX INFO: loaded from: classes.dex */
public final class MAPVersion implements Parcelable {
    private static final String VERSION_SEPERATOR = "\\.";
    private final int[] mVersion;
    private static final String LOG_TAG = MAPVersion.class.getName();
    public static final MAPVersion VERSION_ZERO = new MAPVersion(AdRequest.VERSION);
    public static final Parcelable.Creator<MAPVersion> CREATOR = new Parcelable.Creator<MAPVersion>() { // from class: com.amazon.identity.auth.device.utils.MAPVersion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MAPVersion createFromParcel(Parcel in) {
            return new MAPVersion(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MAPVersion[] newArray(int size) {
            return new MAPVersion[size];
        }
    };

    public MAPVersion(Parcel parcel) {
        int len = parcel.readInt();
        this.mVersion = new int[len];
        parcel.readIntArray(this.mVersion);
        MAPLog.i(LOG_TAG, "MAPVersion Created from PARCEL: " + toString());
    }

    public MAPVersion(int[] version) {
        if (version == null) {
            throw new InvalidParameterException("version must not be null");
        }
        if (version.length == 0) {
            throw new InvalidParameterException("Version must not be empty");
        }
        this.mVersion = version;
        MAPLog.i(LOG_TAG, "MAPVersion Created : " + toString());
    }

    public MAPVersion(String versionString) {
        MAPLog.i(LOG_TAG, "MAPVersion from String : " + versionString);
        if (versionString == null) {
            throw new InvalidParameterException("version must not be null");
        }
        String[] versions = TextUtils.split(versionString, VERSION_SEPERATOR);
        this.mVersion = new int[versions.length];
        int count = 0;
        for (String version : versions) {
            try {
                this.mVersion[count] = Integer.parseInt(version);
            } catch (NumberFormatException e) {
                this.mVersion[count] = 0;
            }
            count++;
        }
    }

    public String toString() {
        return MAPVersionHelper.getVersionAsString(this.mVersion);
    }

    public int[] getVersionInfo() {
        return this.mVersion;
    }

    public int compare(MAPVersion otherVersion) {
        try {
            int[] otherVersionInfo = otherVersion.getVersionInfo();
            int otherLength = otherVersion.getVersionInfo().length;
            int minLen = Math.min(this.mVersion.length, otherLength) - 1;
            int i = 0;
            while (i < minLen && this.mVersion[i] == otherVersionInfo[i]) {
                i++;
            }
            Integer myVer = Integer.valueOf(this.mVersion[i]);
            Integer otherVer = Integer.valueOf(otherVersionInfo[i]);
            if (i == this.mVersion.length && this.mVersion.length == otherVersion.getVersionInfo().length) {
                return 0;
            }
            if (otherVersionInfo.length != this.mVersion.length && myVer.equals(otherVer)) {
                return Integer.valueOf(this.mVersion.length).compareTo(Integer.valueOf(otherVersionInfo.length));
            }
            return myVer.compareTo(otherVer);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ArrayIndexOutOfBoundsException("1=" + toString() + " vs 2=" + otherVersion.toString() + " " + e.getMessage());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        MAPLog.i(LOG_TAG, "MAPVersion writing " + this.mVersion.length + " ints to parcel");
        dest.writeInt(this.mVersion.length);
        dest.writeIntArray(this.mVersion);
    }
}
