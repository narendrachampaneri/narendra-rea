package com.chartboost.sdk.impl;

import android.content.Context;
import android.media.MediaPlayer;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;

/* JADX INFO: loaded from: classes.dex */
public class as extends ar {
    private aw a;
    private Button b;
    private bg c;
    private com.chartboost.sdk.Libraries.e.a d;

    public as(aw awVar, Context context) {
        super(awVar, context);
        this.a = awVar;
        this.b = new Button(context);
        this.b.setTextColor(-14571545);
        this.b.setText("Preview");
        this.b.setOnClickListener(new View.OnClickListener() { // from class: com.chartboost.sdk.impl.as.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                as.this.c();
            }
        });
        addView(this.b, 2);
    }

    @Override // com.chartboost.sdk.impl.ar, com.chartboost.sdk.impl.ap
    public void a(com.chartboost.sdk.Libraries.e.a aVar, int i) {
        super.a(aVar, i);
        this.d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        CBLogging.c(this, "play the video");
        if (this.c == null) {
            this.c = new bg(getContext());
            this.a.e().addView(this.c, new RelativeLayout.LayoutParams(-1, -1));
            this.c.setVisibility(8);
        }
        this.c.b().a(new MediaPlayer.OnCompletionListener() { // from class: com.chartboost.sdk.impl.as.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer arg0) {
                bh.a(false, as.this.c);
            }
        });
        bh.a(true, this.c);
        this.c.b().a();
    }
}
