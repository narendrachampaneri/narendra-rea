package com.vungle.publisher.display.view;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.vungle.publisher.ac;
import com.vungle.publisher.event.EventBus;
import com.vungle.publisher.util.ViewUtils;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class PrivacyButton extends LinearLayout implements View.OnClickListener {
    private EventBus a;
    private boolean b;
    private TextView c;

    public PrivacyButton(Context context) {
        super(context);
        this.b = false;
        setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.b) {
            this.a.a(new ac());
            return;
        }
        this.b = true;
        setBackgroundColor(Color.parseColor("#000000"));
        this.c.setVisibility(0);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class Factory {

        @Inject
        ViewUtils a;

        @Inject
        EventBus b;

        @Inject
        public Factory() {
        }
    }
}
