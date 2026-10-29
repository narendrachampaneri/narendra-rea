package com.amazon.identity.auth.device.authorization.api;

import android.os.Bundle;
import com.amazon.identity.auth.device.shared.APIListener;

/* JADX INFO: loaded from: classes.dex */
public interface AuthorizationListener extends APIListener {
    void onCancel(Bundle bundle);
}
