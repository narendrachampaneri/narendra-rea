package com.google.android.exoplayer.drm;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DrmInitData {
    public final String mimeType;

    public abstract byte[] get(UUID uuid);

    public DrmInitData(String mimeType) {
        this.mimeType = mimeType;
    }

    public static final class Mapped extends DrmInitData {
        private final Map<UUID, byte[]> schemeData;

        public Mapped(String mimeType) {
            super(mimeType);
            this.schemeData = new HashMap();
        }

        @Override // com.google.android.exoplayer.drm.DrmInitData
        public byte[] get(UUID schemeUuid) {
            return this.schemeData.get(schemeUuid);
        }

        public void put(UUID schemeUuid, byte[] data) {
            this.schemeData.put(schemeUuid, data);
        }
    }

    public static final class Universal extends DrmInitData {
        private byte[] data;

        public Universal(String mimeType, byte[] data) {
            super(mimeType);
            this.data = data;
        }

        @Override // com.google.android.exoplayer.drm.DrmInitData
        public byte[] get(UUID schemeUuid) {
            return this.data;
        }
    }
}
