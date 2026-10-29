package com.amazon.identity.auth.device.authorization.api;

import com.newrelic.agent.android.analytics.AnalyticAttribute;

/* JADX INFO: loaded from: classes.dex */
public final class AuthzConstants {
    public static final int CAUSE_FAILED_AUTHENTICATION = 0;
    public static final int CAUSE_REJECTED_SCOPES = 1;
    private static final String CONSTANT_PREFIX = "com.amazon.identity.auth.device.authorization";

    public enum FUTURE_TYPE {
        SUCCESS,
        ERROR,
        CANCEL
    }

    public enum BUNDLE_KEY {
        TOKEN("com.amazon.identity.auth.device.authorization.token"),
        AUTHORIZATION_CODE("com.amazon.identity.auth.device.authorization.authorizationCode"),
        DIRECTED_ID("com.amazon.identity.auth.device.authorization.directedId"),
        DEVICE_ID("com.amazon.identity.auth.device.authorization.deviceId"),
        APP_ID("com.amazon.identity.auth.device.authorization.appId"),
        CAUSE_ID("com.amazon.identity.auth.device.authorization.causeId"),
        REJECTED_SCOPE_LIST("com.amazon.identity.auth.device.authorization.ungrantedScopes"),
        AUTHORIZE("com.amazon.identity.auth.device.authorization.authorize"),
        CLIENT_ID("com.amazon.identity.auth.device.authorization.clietId"),
        ON_CANCEL_TYPE("com.amazon.identity.auth.device.authorization.onCancelType"),
        ON_CANCEL_DESCRIPTION("com.amazon.identity.auth.device.authorization.onCancelDescription"),
        BROWSER_AUTHORIZATION("com.amazon.identity.auth.device.authorization.useBrowserForAuthorization"),
        PROFILE("com.amazon.identity.auth.device.authorization.profile"),
        FUTURE("com.amazon.identity.auth.device.authorization.future.type");

        public final String val;

        BUNDLE_KEY(String val) {
            this.val = val;
        }
    }

    public enum PROFILE_KEY {
        NAME(AnalyticAttribute.EVENT_NAME_ATTRIBUTE),
        EMAIL("email"),
        USER_ID("user_id"),
        POSTAL_CODE("postal_code");

        public final String val;

        PROFILE_KEY(String val) {
            this.val = val;
        }
    }
}
