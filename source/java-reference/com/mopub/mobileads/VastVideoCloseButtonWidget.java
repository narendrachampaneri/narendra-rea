package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;

/* JADX INFO: loaded from: classes.dex */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    @NonNull
    private CloseButtonDrawable mCloseButtonDrawable;
    private final int mEdgePadding;

    @NonNull
    private final ImageLoader mImageLoader;
    private final int mImagePadding;

    @NonNull
    private ImageView mImageView;
    private final int mTextRightMargin;

    @NonNull
    private TextView mTextView;
    private final int mWidgetHeight;

    public VastVideoCloseButtonWidget(@NonNull Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.mEdgePadding = Dips.dipsToIntPixels(16.0f, context);
        this.mImagePadding = Dips.dipsToIntPixels(5.0f, context);
        this.mWidgetHeight = Dips.dipsToIntPixels(46.0f, context);
        this.mTextRightMargin = Dips.dipsToIntPixels(7.0f, context);
        this.mCloseButtonDrawable = new CloseButtonDrawable();
        this.mImageLoader = Networking.getImageLoader(context);
        createImageView();
        createTextView();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.mWidgetHeight);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    private void createImageView() {
        this.mImageView = new ImageView(getContext());
        this.mImageView.setId((int) Utils.generateUniqueId());
        RelativeLayout.LayoutParams iconLayoutParams = new RelativeLayout.LayoutParams(this.mWidgetHeight, this.mWidgetHeight);
        iconLayoutParams.addRule(11);
        this.mImageView.setImageDrawable(this.mCloseButtonDrawable);
        this.mImageView.setPadding(this.mImagePadding, this.mImagePadding + this.mEdgePadding, this.mImagePadding + this.mEdgePadding, this.mImagePadding);
        addView(this.mImageView, iconLayoutParams);
    }

    private void createTextView() {
        this.mTextView = new TextView(getContext());
        this.mTextView.setSingleLine();
        this.mTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.mTextView.setTextColor(-1);
        this.mTextView.setTextSize(20.0f);
        this.mTextView.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.mTextView.setText("");
        RelativeLayout.LayoutParams textLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textLayoutParams.addRule(15);
        textLayoutParams.addRule(0, this.mImageView.getId());
        this.mTextView.setPadding(0, this.mEdgePadding, 0, 0);
        textLayoutParams.setMargins(0, 0, this.mTextRightMargin, 0);
        addView(this.mTextView, textLayoutParams);
    }

    void updateCloseButtonText(@Nullable String text) {
        if (this.mTextView != null) {
            this.mTextView.setText(text);
        }
    }

    void updateCloseButtonIcon(@NonNull final String imageUrl) {
        this.mImageLoader.get(imageUrl, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.VastVideoCloseButtonWidget.1
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean isImmediate) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    VastVideoCloseButtonWidget.this.mImageView.setImageBitmap(bitmap);
                } else {
                    MoPubLog.d(String.format("%s returned null bitmap", imageUrl));
                }
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubLog.d("Failed to load image.", volleyError);
            }
        });
    }

    void setOnTouchListenerToContent(@Nullable View.OnTouchListener onTouchListener) {
        this.mImageView.setOnTouchListener(onTouchListener);
        this.mTextView.setOnTouchListener(onTouchListener);
    }

    @VisibleForTesting
    @Deprecated
    ImageView getImageView() {
        return this.mImageView;
    }

    @VisibleForTesting
    @Deprecated
    void setImageView(ImageView imageView) {
        this.mImageView = imageView;
    }

    @VisibleForTesting
    @Deprecated
    TextView getTextView() {
        return this.mTextView;
    }
}
