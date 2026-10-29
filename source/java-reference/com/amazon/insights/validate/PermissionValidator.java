package com.amazon.insights.validate;

import android.content.Context;
import com.amazon.insights.impl.InitializationException;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionValidator {
    private final String permission;

    public PermissionValidator(String permission) {
        this.permission = permission;
    }

    public void validate(Context context) {
        if (!hasPermission(context, this.permission)) {
            throw new InitializationException(this.permission + " permission is not granted.");
        }
    }

    private boolean hasPermission(Context context, String permission) {
        int res = context.checkCallingOrSelfPermission(permission);
        return res == 0;
    }
}
