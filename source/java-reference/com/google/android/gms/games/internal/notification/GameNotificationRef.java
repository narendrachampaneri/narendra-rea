package com.google.android.gms.games.internal.notification;

import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzw;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;

/* JADX INFO: loaded from: classes.dex */
public final class GameNotificationRef extends zzc implements GameNotification {
    GameNotificationRef(DataHolder holder, int dataRow) {
        super(holder, dataRow);
    }

    public long getId() {
        return getLong(AnalyticsSQLiteHelper.GENERAL_ID);
    }

    public String getText() {
        return getString(MimeTypes.BASE_TYPE_TEXT);
    }

    public String getTitle() {
        return getString("title");
    }

    public int getType() {
        return getInteger("type");
    }

    public String toString() {
        return zzw.zzy(this).zzg("Id", Long.valueOf(getId())).zzg("NotificationId", zzxt()).zzg("Type", Integer.valueOf(getType())).zzg("Title", getTitle()).zzg("Ticker", zzxu()).zzg("Text", getText()).zzg("CoalescedText", zzxv()).zzg("isAcknowledged", Boolean.valueOf(zzxw())).zzg("isSilent", Boolean.valueOf(zzxx())).toString();
    }

    public String zzxt() {
        return getString("notification_id");
    }

    public String zzxu() {
        return getString("ticker");
    }

    public String zzxv() {
        return getString("coalesced_text");
    }

    public boolean zzxw() {
        return getInteger("acknowledged") > 0;
    }

    public boolean zzxx() {
        return getInteger("alert_level") == 0;
    }
}
