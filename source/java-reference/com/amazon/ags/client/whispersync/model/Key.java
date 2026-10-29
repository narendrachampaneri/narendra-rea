package com.amazon.ags.client.whispersync.model;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class Key {
    public static final String DELIMITER = "~";
    private static final String TAG = "GC_Whispersync";
    private final String name;
    private final SyncableType type;

    public Key(SyncableType type, String name) {
        if (type == null) {
            Log.e(TAG, "Unable to create key with null SyncableType and name " + name);
            throw new IllegalArgumentException("Unable to create key with null SyncableType and name " + name);
        }
        if (name == null || name.isEmpty()) {
            Log.e(TAG, "Unable to create key of type " + type.getJsonName() + " with null/empty name");
            throw new IllegalArgumentException("Unable to create key of type " + type.getJsonName() + " with null/empty name");
        }
        this.type = type;
        this.name = name;
    }

    public Key(String keyString) {
        if (keyString == null) {
            Log.e(TAG, "Unable to create key from null keyString");
            throw new IllegalArgumentException("Unable to create key from null keyString");
        }
        if (!keyString.contains(DELIMITER)) {
            Log.e(TAG, "Unable to create key from keyString missing delimiter ~");
            throw new IllegalArgumentException("Unable to create key from keyString missing delimiter ~");
        }
        int delimiterPos = keyString.indexOf(DELIMITER);
        String typeCandidate = keyString.substring(0, delimiterPos);
        this.type = SyncableType.fromString(typeCandidate);
        this.name = keyString.substring(delimiterPos + 1);
        if (this.type == null) {
            Log.e(TAG, "Unable to create key with null SyncableType and name " + this.name);
            throw new IllegalArgumentException("Unable to create key with null SyncableType and name " + this.name);
        }
        if (this.name == null || this.name.isEmpty()) {
            Log.e(TAG, "Unable to create key of type " + this.type.getJsonName() + " with null/empty name");
            throw new IllegalArgumentException("Unable to create key of type " + this.type.getJsonName() + " with null/empty name");
        }
    }

    public SyncableType getType() {
        return this.type;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        int result = (this.name == null ? 0 : this.name.hashCode()) + 31;
        return (result * 31) + (this.type != null ? this.type.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Key other = (Key) obj;
            if (this.name == null) {
                if (other.name != null) {
                    return false;
                }
            } else if (!this.name.equals(other.name)) {
                return false;
            }
            return this.type == other.type;
        }
        return false;
    }

    public String toString() {
        return this.type.getJsonName() + DELIMITER + this.name;
    }
}
