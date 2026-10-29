package com.amazon.identity.auth.device.shared;

import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;

/* JADX INFO: loaded from: classes.dex */
public interface APIListener {
    void onError(AuthError authError);

    void onSuccess(Bundle bundle);
}
