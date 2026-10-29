package com.amazon.ags.client.whispersync.model;

import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LowNumberList extends NumberList {
    private static final Comparator<NumberElement> ITEM_COMPARATOR = new Comparator<NumberElement>() { // from class: com.amazon.ags.client.whispersync.model.LowNumberList.1
        @Override // java.util.Comparator
        public int compare(NumberElement o1, NumberElement o2) {
            if (o1.value.compareTo(o2.value) == 0) {
                long timeDifference = o2.getTimestamp() - o1.getTimestamp();
                if (timeDifference == 0) {
                    return 0;
                }
                return timeDifference > 0 ? 1 : -1;
            }
            return o1.value.compareTo(o2.value);
        }
    };

    public LowNumberList(String name) {
        super(name);
    }

    public LowNumberList(String name, List<NumberElement> elements, int maxSize, SyncState state) {
        super(name, elements, maxSize, state);
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public LowNumberList deepCopy() {
        return new LowNumberList(this.name, copyElements(), this.maxSize, this.state);
    }

    @Override // com.amazon.ags.client.whispersync.model.NumberList
    public Comparator<NumberElement> getComparator() {
        return ITEM_COMPARATOR;
    }

    @Override // com.amazon.ags.client.whispersync.model.NumberList
    public SyncableType getSyncableType() {
        return SyncableType.LOWEST_NUMBER_LIST;
    }
}
