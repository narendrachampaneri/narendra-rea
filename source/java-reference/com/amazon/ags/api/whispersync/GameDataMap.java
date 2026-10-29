package com.amazon.ags.api.whispersync;

import com.amazon.ags.api.whispersync.model.SyncableAccumulatingNumber;
import com.amazon.ags.api.whispersync.model.SyncableDeveloperString;
import com.amazon.ags.api.whispersync.model.SyncableNumber;
import com.amazon.ags.api.whispersync.model.SyncableNumberList;
import com.amazon.ags.api.whispersync.model.SyncableString;
import com.amazon.ags.api.whispersync.model.SyncableStringList;
import com.amazon.ags.api.whispersync.model.SyncableStringSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface GameDataMap {
    SyncableAccumulatingNumber getAccumulatingNumber(String str);

    Set<String> getAccumulatingNumberKeys();

    SyncableDeveloperString getDeveloperString(String str);

    Set<String> getDeveloperStringKeys();

    SyncableNumberList getHighNumberList(String str);

    Set<String> getHighNumberListKeys();

    SyncableNumber getHighestNumber(String str);

    Set<String> getHighestNumberKeys();

    SyncableNumber getLatestNumber(String str);

    Set<String> getLatestNumberKeys();

    SyncableNumberList getLatestNumberList(String str);

    Set<String> getLatestNumberListKeys();

    SyncableString getLatestString(String str);

    Set<String> getLatestStringKeys();

    SyncableStringList getLatestStringList(String str);

    Set<String> getLatestStringListKeys();

    SyncableNumberList getLowNumberList(String str);

    Set<String> getLowNumberListKeys();

    SyncableNumber getLowestNumber(String str);

    Set<String> getLowestNumberKeys();

    GameDataMap getMap(String str);

    Set<String> getMapKeys();

    SyncableStringSet getStringSet(String str);

    Set<String> getStringSetKeys();
}
