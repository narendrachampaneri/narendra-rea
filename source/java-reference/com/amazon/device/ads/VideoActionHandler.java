package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes.dex */
class VideoActionHandler implements AdActivity.IAdActivityAdapter {
    private Activity activity;
    private RelativeLayout layout;
    private AdVideoPlayer player;

    VideoActionHandler() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onCreate() {
        Bundle data = this.activity.getIntent().getExtras();
        this.layout = new RelativeLayout(this.activity);
        this.layout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.activity.setContentView(this.layout);
        initPlayer(data);
        this.player.playVideo();
    }

    private void setPlayerListener(AdVideoPlayer player) {
        player.setListener(new AdVideoPlayer.AdVideoPlayerListener() { // from class: com.amazon.device.ads.VideoActionHandler.1
            @Override // com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener
            public void onError() {
                VideoActionHandler.this.activity.finish();
            }

            @Override // com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener
            public void onComplete() {
                VideoActionHandler.this.activity.finish();
            }
        });
    }

    private void initPlayer(Bundle data) {
        this.player = new AdVideoPlayer(this.activity);
        this.player.setPlayData(data.getString("url"));
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-1, -1);
        lp.addRule(13);
        this.player.setLayoutParams(lp);
        this.player.setViewGroup(this.layout);
        setPlayerListener(this.player);
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onPause() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onResume() {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onStop() {
        this.player.releasePlayer();
        this.player = null;
        this.activity.finish();
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void preOnCreate() {
        this.activity.requestWindowFeature(1);
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
    }

    @Override // com.amazon.device.ads.AdActivity.IAdActivityAdapter
    public boolean onBackPressed() {
        return false;
    }
}
