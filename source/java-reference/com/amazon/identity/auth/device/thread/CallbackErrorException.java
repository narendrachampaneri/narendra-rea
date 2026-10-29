package com.amazon.identity.auth.device.thread;

import android.os.Bundle;
import android.os.Parcel;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class CallbackErrorException extends ExecutionException {
    private static final long serialVersionUID = 1;
    private final byte[] mErrorBundleBytes;

    public CallbackErrorException(Bundle errorBundle) {
        Parcel parcel = Parcel.obtain();
        parcel.writeBundle(errorBundle);
        this.mErrorBundleBytes = parcel.marshall();
    }

    public Bundle getErrorBundle() {
        Parcel parcel = Parcel.obtain();
        parcel.unmarshall(this.mErrorBundleBytes, 0, this.mErrorBundleBytes.length);
        parcel.setDataPosition(0);
        return parcel.readBundle();
    }
}
