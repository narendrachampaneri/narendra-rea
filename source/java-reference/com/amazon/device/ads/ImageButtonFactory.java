package com.amazon.device.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageButton;

/* JADX INFO: compiled from: ImageViewFactory.java */
/* JADX INFO: loaded from: classes.dex */
class ImageButtonFactory implements ImageViewFactory {
    ImageButtonFactory() {
    }

    @Override // com.amazon.device.ads.ImageViewFactory
    public BitmapDrawable createBitmapDrawable(Resources resources, String filePath) {
        return AndroidTargetUtils.getNewBitmapDrawable(resources, filePath);
    }

    @Override // com.amazon.device.ads.ImageViewFactory
    public ImageButton createImageView(Context context, String contentDescription) {
        ImageButton imageButton = new ImageButton(context);
        imageButton.setContentDescription(contentDescription);
        return imageButton;
    }
}
