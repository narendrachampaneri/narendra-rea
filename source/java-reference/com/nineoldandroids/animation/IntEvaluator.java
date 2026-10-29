package com.nineoldandroids.animation;

/* JADX INFO: loaded from: classes.dex */
public class IntEvaluator implements TypeEvaluator<Integer> {
    @Override // com.nineoldandroids.animation.TypeEvaluator
    public Integer evaluate(float fraction, Integer startValue, Integer endValue) {
        int startInt = startValue.intValue();
        return Integer.valueOf((int) (startInt + ((endValue.intValue() - startInt) * fraction)));
    }
}
