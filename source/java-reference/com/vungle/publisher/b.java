package com.vungle.publisher;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class b implements a {
    protected Bundle a = new Bundle();
    protected Bundle b = new Bundle();

    @Override // com.vungle.publisher.a
    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.getBoolean("isBackButtonEnabled");
    }

    public final void a(boolean z) {
        this.a.putBoolean("isBackButtonEnabled", z);
    }

    public final String a(String str) {
        return this.b.getString(str);
    }

    public final void a(String str, String str2) {
        this.b.putString(str, str2);
    }

    @Override // com.vungle.publisher.a
    public Map<String, String> getExtras() {
        HashMap map = new HashMap();
        for (String str : this.b.keySet()) {
            map.put(str, this.b.getString(str));
        }
        return map;
    }

    @Override // com.vungle.publisher.a
    public boolean isImmersiveMode() {
        return this.a.getBoolean("isImmersiveMode");
    }

    public final void b(boolean z) {
        this.a.putBoolean("isImmersiveMode", z);
    }

    @Override // com.vungle.publisher.a
    public boolean isIncentivized() {
        return this.a.getBoolean("isIncentivized");
    }

    public final void c(boolean z) {
        this.a.putBoolean("isIncentivized", z);
    }

    @Override // com.vungle.publisher.a
    public String getIncentivizedCancelDialogBodyText() {
        return this.a.getString("incentivizedCancelDialogBodyText");
    }

    public final void b(String str) {
        this.a.putString("incentivizedCancelDialogBodyText", str);
    }

    @Override // com.vungle.publisher.a
    public String getIncentivizedCancelDialogCloseButtonText() {
        return this.a.getString("incentivizedCancelDialogNegativeButtonText");
    }

    public final void c(String str) {
        this.a.putString("incentivizedCancelDialogNegativeButtonText", str);
    }

    @Override // com.vungle.publisher.a
    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        return this.a.getString("incentivizedCancelDialogPositiveButtonText");
    }

    public final void d(String str) {
        this.a.putString("incentivizedCancelDialogPositiveButtonText", str);
    }

    @Override // com.vungle.publisher.a
    public String getIncentivizedCancelDialogTitle() {
        return this.a.getString("incentivizedCancelDialogTitle");
    }

    public final void e(String str) {
        this.a.putString("incentivizedCancelDialogTitle", str);
    }

    public final void f(String str) {
        this.a.putString("incentivizedUserId", str);
    }

    @Override // com.vungle.publisher.a
    public String getIncentivizedUserId() {
        return this.a.getString("incentivizedUserId");
    }

    @Override // com.vungle.publisher.a
    public Orientation getOrientation() {
        return (Orientation) this.a.getParcelable("orientation");
    }

    public final void a(Orientation orientation) {
        this.a.putParcelable("orientation", orientation);
    }

    @Override // com.vungle.publisher.a
    public String getPlacement() {
        return this.a.getString("placement");
    }

    public final void g(String str) {
        this.a.putString("placement", str);
    }

    @Override // com.vungle.publisher.a
    public boolean isSoundEnabled() {
        return this.a.getBoolean("isSoundEnabled");
    }

    public final void d(boolean z) {
        this.a.putBoolean("isSoundEnabled", z);
    }

    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public boolean equals(Object object) {
        if (object != null && (object instanceof b)) {
            b bVar = (b) object;
            if (bVar != null && bVar.a.equals(this.a) && bVar.b.equals(this.b)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(123);
        a(sb, this.a);
        a(sb, this.b);
        sb.append('}');
        return sb.toString();
    }

    private static void a(StringBuilder sb, Bundle bundle) {
        boolean z = true;
        for (String str : bundle.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str).append(" = ").append(bundle.get(str));
        }
    }
}
