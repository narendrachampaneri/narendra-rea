package com.amazon.insights.core.idresolver;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Preferences;

/* JADX INFO: loaded from: classes2.dex */
public class SharedPrefsUniqueIdService implements UniqueIdService {
    protected static final String UNIQUE_ID_KEY = "UniqueId";
    private final UniqueIdGenerator generator;
    private static Logger logger = Logger.getLogger(SharedPrefsUniqueIdService.class);
    protected static final String PREFS_NAME = SharedPrefsUniqueIdService.class.getName();

    public static UniqueIdService newInstance() {
        return new SharedPrefsUniqueIdService(new RandomUUIDGenerator());
    }

    public SharedPrefsUniqueIdService(UniqueIdGenerator generator) {
        this.generator = generator;
    }

    @Override // com.amazon.insights.core.idresolver.UniqueIdService
    public Id getUniqueId(InsightsContext context) {
        if (context == null || context.getSystem() == null || context.getSystem().getPreferences() == null) {
            return Id.getEmptyId();
        }
        Id uniqueId = getIdFromPreferences(context.getSystem().getPreferences());
        if (uniqueId == Id.getEmptyId()) {
            Id uniqueId2 = new Id(this.generator.generateUniqueIdString());
            storeUniqueId(context.getSystem().getPreferences(), uniqueId2);
            return uniqueId2;
        }
        return uniqueId;
    }

    private Id getIdFromPreferences(Preferences preferences) {
        Id uniqueId = Id.getEmptyId();
        String uniqueIdString = preferences.getString(UNIQUE_ID_KEY, null);
        if (uniqueIdString != null) {
            Id uniqueId2 = new Id(uniqueIdString);
            return uniqueId2;
        }
        return uniqueId;
    }

    private void storeUniqueId(Preferences preferences, Id uniqueId) {
        try {
            preferences.putString(UNIQUE_ID_KEY, uniqueId.getValue());
        } catch (Exception ex) {
            logger.e("There was an exception when trying to store the unique id into the Preferences", ex);
        }
    }
}
