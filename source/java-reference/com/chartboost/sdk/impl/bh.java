package com.chartboost.sdk.impl;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;

/* JADX INFO: loaded from: classes.dex */
public final class bh {

    public interface a {
        void a(com.chartboost.sdk.Model.a aVar);
    }

    public enum b {
        CBAnimationTypePerspectiveRotate,
        CBAnimationTypeBounce,
        CBAnimationTypePerspectiveZoom,
        CBAnimationTypeSlideFromTop,
        CBAnimationTypeSlideFromBottom,
        CBAnimationTypeFade,
        CBAnimationTypeNone,
        CBAnimationTypeSlideFromLeft,
        CBAnimationTypeSlideFromRight;

        public static b a(int i) {
            if (i != 0 && i > 0 && i <= values().length) {
                return values()[i - 1];
            }
            return null;
        }
    }

    public static void a(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2) {
        b(bVar, aVar, aVar2, true);
    }

    public static void b(b bVar, com.chartboost.sdk.Model.a aVar, a aVar2) {
        c(bVar, aVar, aVar2, false);
    }

    private static void b(final b bVar, final com.chartboost.sdk.Model.a aVar, final a aVar2, final boolean z) {
        if (bVar == b.CBAnimationTypeNone) {
            if (aVar2 != null) {
                aVar2.a(aVar);
            }
        } else {
            if (aVar == null || aVar.h == null) {
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
                return;
            }
            final View viewF = aVar.h.f();
            if (viewF == null) {
                com.chartboost.sdk.e.a().d(aVar);
                CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
            } else {
                ViewTreeObserver viewTreeObserver = viewF.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.chartboost.sdk.impl.bh.1
                        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                        public void onGlobalLayout() {
                            viewF.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            bh.c(bVar, aVar, aVar2, z);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(b bVar, final com.chartboost.sdk.Model.a aVar, final a aVar2, boolean z) {
        AnimationSet animationSet;
        bm bmVar;
        ScaleAnimation scaleAnimation;
        TranslateAnimation translateAnimation;
        bm bmVar2;
        ScaleAnimation scaleAnimation2;
        TranslateAnimation translateAnimation2;
        AnimationSet animationSet2 = new AnimationSet(true);
        animationSet2.addAnimation(new AlphaAnimation(1.0f, 1.0f));
        if (aVar == null || aVar.h == null) {
            CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of container");
            return;
        }
        View viewF = aVar.h.f();
        if (viewF == null) {
            CBLogging.a("AnimationManager", "Transition of impression canceled due to lack of view");
            return;
        }
        View view = (aVar.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_REWARD_VIDEO || aVar.e == com.chartboost.sdk.Model.a.d.INTERSTITIAL_VIDEO) ? aVar.h : viewF;
        float width = view.getWidth();
        float height = view.getHeight();
        float f = (1.0f - 0.4f) / 2.0f;
        switch (bVar) {
            case CBAnimationTypeFade:
                AlphaAnimation alphaAnimation = z ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(250L);
                alphaAnimation.setFillAfter(true);
                AnimationSet animationSet3 = new AnimationSet(true);
                animationSet3.addAnimation(alphaAnimation);
                animationSet = animationSet3;
                break;
            case CBAnimationTypePerspectiveZoom:
                if (z) {
                    bmVar2 = new bm(-60.0f, 0.0f, width / 2.0f, height / 2.0f, false);
                } else {
                    bmVar2 = new bm(0.0f, 60.0f, width / 2.0f, height / 2.0f, false);
                }
                bmVar2.setDuration(250L);
                bmVar2.setFillAfter(true);
                animationSet2.addAnimation(bmVar2);
                if (z) {
                    scaleAnimation2 = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                } else {
                    scaleAnimation2 = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                }
                scaleAnimation2.setDuration(250L);
                scaleAnimation2.setFillAfter(true);
                animationSet2.addAnimation(scaleAnimation2);
                if (z) {
                    translateAnimation2 = new TranslateAnimation(width * f, 0.0f, (-height) * 0.4f, 0.0f);
                } else {
                    translateAnimation2 = new TranslateAnimation(0.0f, width * f, 0.0f, height);
                }
                translateAnimation2.setDuration(250L);
                translateAnimation2.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation2);
                animationSet = animationSet2;
                break;
            case CBAnimationTypePerspectiveRotate:
                if (z) {
                    bmVar = new bm(-60.0f, 0.0f, width / 2.0f, height / 2.0f, true);
                } else {
                    bmVar = new bm(0.0f, 60.0f, width / 2.0f, height / 2.0f, true);
                }
                bmVar.setDuration(250L);
                bmVar.setFillAfter(true);
                animationSet2.addAnimation(bmVar);
                if (z) {
                    scaleAnimation = new ScaleAnimation(0.4f, 1.0f, 0.4f, 1.0f);
                } else {
                    scaleAnimation = new ScaleAnimation(1.0f, 0.4f, 1.0f, 0.4f);
                }
                scaleAnimation.setDuration(250L);
                scaleAnimation.setFillAfter(true);
                animationSet2.addAnimation(scaleAnimation);
                if (z) {
                    translateAnimation = new TranslateAnimation((-width) * 0.4f, 0.0f, height * f, 0.0f);
                } else {
                    translateAnimation = new TranslateAnimation(0.0f, width, 0.0f, height * f);
                }
                translateAnimation.setDuration(250L);
                translateAnimation.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation);
                animationSet = animationSet2;
                break;
            case CBAnimationTypeSlideFromBottom:
                TranslateAnimation translateAnimation3 = new TranslateAnimation(0.0f, 0.0f, z ? height : 0.0f, z ? 0.0f : height);
                translateAnimation3.setDuration(250L);
                translateAnimation3.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation3);
                animationSet = animationSet2;
                break;
            case CBAnimationTypeSlideFromTop:
                TranslateAnimation translateAnimation4 = new TranslateAnimation(0.0f, 0.0f, z ? -height : 0.0f, z ? 0.0f : -height);
                translateAnimation4.setDuration(250L);
                translateAnimation4.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation4);
                animationSet = animationSet2;
                break;
            case CBAnimationTypeSlideFromLeft:
                TranslateAnimation translateAnimation5 = new TranslateAnimation(z ? width : 0.0f, z ? 0.0f : width, 0.0f, 0.0f);
                translateAnimation5.setDuration(250L);
                translateAnimation5.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation5);
                animationSet = animationSet2;
                break;
            case CBAnimationTypeSlideFromRight:
                TranslateAnimation translateAnimation6 = new TranslateAnimation(z ? -width : 0.0f, z ? 0.0f : -width, 0.0f, 0.0f);
                translateAnimation6.setDuration(250L);
                translateAnimation6.setFillAfter(true);
                animationSet2.addAnimation(translateAnimation6);
                animationSet = animationSet2;
                break;
            case CBAnimationTypeBounce:
                if (z) {
                    ScaleAnimation scaleAnimation3 = new ScaleAnimation(0.6f, 1.1f, 0.6f, 1.1f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation3.setDuration(Math.round(150.0f));
                    scaleAnimation3.setStartOffset(0L);
                    scaleAnimation3.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation3);
                    ScaleAnimation scaleAnimation4 = new ScaleAnimation(1.0f, 0.81818175f, 1.0f, 0.81818175f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation4.setDuration(Math.round(49.999996f));
                    scaleAnimation4.setStartOffset(Math.round(150.0f));
                    scaleAnimation4.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation4);
                    ScaleAnimation scaleAnimation5 = new ScaleAnimation(1.0f, 1.1111112f, 1.0f, 1.1111112f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation5.setDuration(Math.round(24.99999f));
                    scaleAnimation5.setStartOffset(Math.round(200.0f));
                    scaleAnimation5.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation5);
                    animationSet = animationSet2;
                } else {
                    ScaleAnimation scaleAnimation6 = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation6.setDuration(250L);
                    scaleAnimation6.setStartOffset(0L);
                    scaleAnimation6.setFillAfter(true);
                    animationSet2.addAnimation(scaleAnimation6);
                    animationSet = animationSet2;
                }
                break;
            default:
                animationSet = animationSet2;
                break;
        }
        if (bVar == b.CBAnimationTypeNone) {
            if (aVar2 != null) {
                aVar2.a(aVar);
            }
        } else {
            if (aVar2 != null) {
                CBUtility.e().postDelayed(new Runnable() { // from class: com.chartboost.sdk.impl.bh.2
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar2.a(aVar);
                    }
                }, 250L);
            }
            view.startAnimation(animationSet);
        }
    }

    public static void a(boolean z, View view) {
        a(z, view, 250L);
    }

    public static void a(boolean z, View view, long j) {
        view.clearAnimation();
        if (z) {
            view.setVisibility(0);
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(250L);
        alphaAnimation.setFillBefore(true);
        view.startAnimation(alphaAnimation);
    }
}
