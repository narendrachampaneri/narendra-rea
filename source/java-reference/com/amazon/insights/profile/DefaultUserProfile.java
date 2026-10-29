package com.amazon.insights.profile;

import com.amazon.insights.UserProfile;
import com.amazon.insights.core.util.StringUtil;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultUserProfile implements UserProfile, Comparable<DefaultUserProfile> {
    private final Map<String, Object> dimensions = new ConcurrentHashMap();

    public static UserProfile newInstance() {
        return new DefaultUserProfile();
    }

    @Override // com.amazon.insights.UserProfile
    public Map<String, Object> getDimensions() {
        return Collections.unmodifiableMap(this.dimensions);
    }

    public UserProfile addDimensionAsBoolean(String name, boolean value) {
        if (!StringUtil.isBlank(name)) {
            this.dimensions.put(name, Boolean.valueOf(value));
        }
        return this;
    }

    @Override // com.amazon.insights.UserProfile
    public UserProfile addDimensionAsNumber(String name, Number value) {
        if (!StringUtil.isBlank(name)) {
            this.dimensions.put(name, value);
        }
        return this;
    }

    @Override // com.amazon.insights.UserProfile
    public UserProfile addDimensionAsString(String name, String value) {
        if (!StringUtil.isBlank(name)) {
            this.dimensions.put(name, value);
        }
        return this;
    }

    public int hashCode() {
        int hashCode = 1 + (this.dimensions == null ? 0 : this.dimensions.hashCode());
        return hashCode;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        return (other instanceof UserProfile) && compareTo((DefaultUserProfile) other) == 0;
    }

    @Override // java.lang.Comparable
    public int compareTo(DefaultUserProfile other) {
        if (other == null) {
            return -1;
        }
        if (other == this) {
            return 0;
        }
        Map<String, Object> otherDimensions = other.dimensions;
        if (this.dimensions != otherDimensions) {
            if (this.dimensions == null) {
                return -1;
            }
            if (otherDimensions == null) {
                return 1;
            }
            if (!this.dimensions.equals(otherDimensions)) {
                int hc1 = this.dimensions.hashCode();
                int hc2 = otherDimensions.hashCode();
                if (hc1 < hc2) {
                    return -1;
                }
                if (hc1 > hc2) {
                    return 1;
                }
            }
        }
        return 0;
    }
}
