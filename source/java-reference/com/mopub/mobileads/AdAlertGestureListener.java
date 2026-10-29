package com.mopub.mobileads;

import android.support.annotation.Nullable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.AdReport;

/* JADX INFO: loaded from: classes.dex */
public class AdAlertGestureListener extends GestureDetector.SimpleOnGestureListener {
    private static final float MAXIMUM_THRESHOLD_X_IN_DIPS = 100.0f;
    private static final float MAXIMUM_THRESHOLD_Y_IN_DIPS = 100.0f;
    private static final int MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG = 4;
    private AdAlertReporter mAdAlertReporter;

    @Nullable
    private final AdReport mAdReport;
    private float mCurrentThresholdInDips;
    private ZigZagState mCurrentZigZagState = ZigZagState.UNSET;
    private boolean mHasCrossedLeftThreshold;
    private boolean mHasCrossedRightThreshold;
    private int mNumberOfZigZags;
    private float mPivotPositionX;
    private float mPreviousPositionX;
    private View mView;

    enum ZigZagState {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    AdAlertGestureListener(View view, @Nullable AdReport adReport) {
        this.mCurrentThresholdInDips = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.mCurrentThresholdInDips = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.mView = view;
        this.mAdReport = adReport;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
        if (this.mCurrentZigZagState == ZigZagState.FINISHED) {
            return super.onScroll(e1, e2, distanceX, distanceY);
        }
        if (isTouchOutOfBoundsOnYAxis(e1.getY(), e2.getY())) {
            this.mCurrentZigZagState = ZigZagState.FAILED;
            return super.onScroll(e1, e2, distanceX, distanceY);
        }
        switch (this.mCurrentZigZagState) {
            case UNSET:
                this.mPivotPositionX = e1.getX();
                updateInitialState(e2.getX());
                break;
            case GOING_RIGHT:
                updateZig(e2.getX());
                break;
            case GOING_LEFT:
                updateZag(e2.getX());
                break;
        }
        this.mPreviousPositionX = e2.getX();
        return super.onScroll(e1, e2, distanceX, distanceY);
    }

    void finishGestureDetection() {
        ZigZagState zigZagState = this.mCurrentZigZagState;
        ZigZagState zigZagState2 = this.mCurrentZigZagState;
        if (zigZagState == ZigZagState.FINISHED) {
            this.mAdAlertReporter = new AdAlertReporter(this.mView.getContext(), this.mView, this.mAdReport);
            this.mAdAlertReporter.send();
        }
        reset();
    }

    void reset() {
        this.mNumberOfZigZags = 0;
        this.mCurrentZigZagState = ZigZagState.UNSET;
    }

    private boolean isTouchOutOfBoundsOnYAxis(float initialY, float currentY) {
        return Math.abs(currentY - initialY) > 100.0f;
    }

    private void updateInitialState(float currentPositionX) {
        if (currentPositionX > this.mPivotPositionX) {
            this.mCurrentZigZagState = ZigZagState.GOING_RIGHT;
        }
    }

    private void updateZig(float currentPositionX) {
        if (rightThresholdReached(currentPositionX) && isMovingLeft(currentPositionX)) {
            this.mCurrentZigZagState = ZigZagState.GOING_LEFT;
            this.mPivotPositionX = currentPositionX;
        }
    }

    private void updateZag(float currentPositionX) {
        if (leftThresholdReached(currentPositionX) && isMovingRight(currentPositionX)) {
            this.mCurrentZigZagState = ZigZagState.GOING_RIGHT;
            this.mPivotPositionX = currentPositionX;
        }
    }

    private void incrementNumberOfZigZags() {
        this.mNumberOfZigZags++;
        if (this.mNumberOfZigZags >= 4) {
            this.mCurrentZigZagState = ZigZagState.FINISHED;
        }
    }

    private boolean rightThresholdReached(float currentPosition) {
        if (this.mHasCrossedRightThreshold) {
            return true;
        }
        if (currentPosition < this.mPivotPositionX + this.mCurrentThresholdInDips) {
            return false;
        }
        this.mHasCrossedLeftThreshold = false;
        this.mHasCrossedRightThreshold = true;
        return true;
    }

    private boolean leftThresholdReached(float currentPosition) {
        if (this.mHasCrossedLeftThreshold) {
            return true;
        }
        if (currentPosition > this.mPivotPositionX - this.mCurrentThresholdInDips) {
            return false;
        }
        this.mHasCrossedRightThreshold = false;
        this.mHasCrossedLeftThreshold = true;
        incrementNumberOfZigZags();
        return true;
    }

    private boolean isMovingRight(float currentPositionX) {
        return currentPositionX > this.mPreviousPositionX;
    }

    private boolean isMovingLeft(float currentPositionX) {
        return currentPositionX < this.mPreviousPositionX;
    }

    @Deprecated
    int getNumberOfZigzags() {
        return this.mNumberOfZigZags;
    }

    @Deprecated
    float getMinimumDipsInZigZag() {
        return this.mCurrentThresholdInDips;
    }

    @Deprecated
    ZigZagState getCurrentZigZagState() {
        return this.mCurrentZigZagState;
    }

    @Deprecated
    AdAlertReporter getAdAlertReporter() {
        return this.mAdAlertReporter;
    }
}
