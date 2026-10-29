package com.amazon.ags.client.whispersync.model;

import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HighNumberList extends NumberList {
    private static final Comparator<NumberElement> ITEM_COMPARATOR = new Comparator<NumberElement>() { // from class: com.amazon.ags.client.whispersync.model.HighNumberList.1
        @Override // java.util.Comparator
        public int compare(NumberElement o1, NumberElement o2) {
            if (o1.value.compareTo(o2.value) == 0) {
                long timeDifference = o2.getTimestamp() - o1.getTimestamp();
                if (timeDifference == 0) {
                    return 0;
                }
                return timeDifference > 0 ? 1 : -1;
            }
            return o2.value.compareTo(o1.value);
        }
    };

    public HighNumberList(String name) {
        super(name);
    }

    public HighNumberList(String name, List<NumberElement> elements, int maxSize, SyncState state) {
        super(name, elements, maxSize, state);
    }

    @Override // com.amazon.ags.client.whispersync.model.Mergeable
    public HighNumberList deepCopy() {
        return new HighNumberList(this.name, copyElements(), this.maxSize, this.state);
    }

    @Override // com.amazon.ags.client.whispersync.model.NumberList
    public Comparator<NumberElement> getComparator() {
        return ITEM_COMPARATOR;
    }

    @Override // com.amazon.ags.client.whispersync.model.NumberList
    public SyncableType getSyncableType() {
        return SyncableType.HIGHEST_NUMBER_LIST;
    }
}
