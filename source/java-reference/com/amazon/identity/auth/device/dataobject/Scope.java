package com.amazon.identity.auth.device.dataobject;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Scope {
    static final /* synthetic */ boolean $assertionsDisabled;
    private String scopeDescription = null;
    private final String scopeName;

    static {
        $assertionsDisabled = !Scope.class.desiredAssertionStatus();
    }

    public Scope(String scopeName) {
        this.scopeName = scopeName;
    }

    public String getScopeName() {
        return this.scopeName;
    }

    public boolean isLocal() {
        return isLocal(this.scopeName);
    }

    public synchronized String getScopeDescription() {
        if (this.scopeDescription == null) {
            this.scopeDescription = getDescription(this.scopeName, Locale.getDefault().getLanguage());
        }
        return this.scopeDescription;
    }

    public void setScopeDescription(String scopeDescription) {
        this.scopeDescription = scopeDescription;
    }

    public static String getDescription(String scopeName, String locale) {
        return scopeName;
    }

    public static boolean isLocal(String scopeName) {
        if ($assertionsDisabled || scopeName != null) {
            return scopeName.startsWith("device");
        }
        throw new AssertionError();
    }
}
