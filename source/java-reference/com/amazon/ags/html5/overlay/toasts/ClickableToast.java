package com.amazon.ags.html5.overlay.toasts;

import android.os.Handler;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface ClickableToast {
    void addClickableToastObserver(ClickableToastObserver clickableToastObserver);

    void destroy();

    boolean isShowing();

    void setToastData(String str);

    void setToastOnTouchListener(View.OnTouchListener onTouchListener);

    void show(Handler handler);

    void update(String str, int i);
}
