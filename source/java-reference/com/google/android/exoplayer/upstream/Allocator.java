package com.google.android.exoplayer.upstream;

/* JADX INFO: loaded from: classes2.dex */
public interface Allocator {
    Allocation allocate();

    void blockWhileTotalBytesAllocatedExceeds(int i) throws InterruptedException;

    int getIndividualAllocationLength();

    int getTotalBytesAllocated();

    void release(Allocation allocation);

    void trim(int i);
}
