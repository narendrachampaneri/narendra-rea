package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;

/* JADX INFO: loaded from: classes.dex */
class NativeViewHolder {

    @VisibleForTesting
    static final NativeViewHolder EMPTY_VIEW_HOLDER = new NativeViewHolder();

    @Nullable
    TextView callToActionView;

    @Nullable
    ImageView daaIconImageView;

    @Nullable
    ImageView iconImageView;

    @Nullable
    ImageView mainImageView;

    @Nullable
    View mainView;

    @Nullable
    TextView textView;

    @Nullable
    TextView titleView;

    private NativeViewHolder() {
    }

    @NonNull
    static NativeViewHolder fromViewBinder(@NonNull View view, @NonNull ViewBinder viewBinder) {
        NativeViewHolder nativeViewHolder = new NativeViewHolder();
        nativeViewHolder.mainView = view;
        try {
            nativeViewHolder.titleView = (TextView) view.findViewById(viewBinder.titleId);
            nativeViewHolder.textView = (TextView) view.findViewById(viewBinder.textId);
            nativeViewHolder.callToActionView = (TextView) view.findViewById(viewBinder.callToActionId);
            nativeViewHolder.mainImageView = (ImageView) view.findViewById(viewBinder.mainImageId);
            nativeViewHolder.iconImageView = (ImageView) view.findViewById(viewBinder.iconImageId);
            nativeViewHolder.daaIconImageView = (ImageView) view.findViewById(viewBinder.daaIconImageId);
            return nativeViewHolder;
        } catch (ClassCastException exception) {
            MoPubLog.w("Could not cast from id in ViewBinder to expected View type", exception);
            return EMPTY_VIEW_HOLDER;
        }
    }

    void update(@NonNull NativeResponse nativeResponse) {
        addTextView(this.titleView, nativeResponse.getTitle());
        addTextView(this.textView, nativeResponse.getText());
        addTextView(this.callToActionView, nativeResponse.getCallToAction());
        nativeResponse.loadMainImage(this.mainImageView);
        nativeResponse.loadIconImage(this.iconImageView);
        addDaaIcon(nativeResponse.getDaaIconClickthroughUrl());
    }

    void updateExtras(@NonNull NativeResponse nativeResponse, @NonNull ViewBinder viewBinder) {
        if (this.mainView == null) {
            MoPubLog.w("Attempted to bind extras on a null main view.");
            return;
        }
        for (String key : viewBinder.extras.keySet()) {
            int resourceId = viewBinder.extras.get(key).intValue();
            View view = this.mainView.findViewById(resourceId);
            Object content = nativeResponse.getExtra(key);
            if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(null);
                nativeResponse.loadExtrasImage(key, (ImageView) view);
            } else if (view instanceof TextView) {
                ((TextView) view).setText((CharSequence) null);
                if (content instanceof String) {
                    addTextView((TextView) view, (String) content);
                }
            } else {
                MoPubLog.d("View bound to " + key + " should be an instance of TextView or ImageView.");
            }
        }
    }

    private void addTextView(@Nullable TextView textView, @Nullable String contents) {
        if (textView == null) {
            MoPubLog.d("Attempted to add text (" + contents + ") to null TextView.");
            return;
        }
        textView.setText((CharSequence) null);
        if (contents == null) {
            MoPubLog.d("Attempted to set TextView contents to null.");
        } else {
            textView.setText(contents);
        }
    }

    private void addDaaIcon(@Nullable final String daaClickthroughUrl) {
        if (this.daaIconImageView != null) {
            if (daaClickthroughUrl == null) {
                this.daaIconImageView.setImageDrawable(null);
                this.daaIconImageView.setOnClickListener(null);
                this.daaIconImageView.setVisibility(4);
            } else {
                final Context context = this.daaIconImageView.getContext();
                if (context != null) {
                    this.daaIconImageView.setImageDrawable(Drawables.NATIVE_DAA_ICON.createDrawable(context));
                    this.daaIconImageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.nativeads.NativeViewHolder.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(context, daaClickthroughUrl);
                        }
                    });
                    this.daaIconImageView.setVisibility(0);
                }
            }
        }
    }

    public void setViewVisibility(int visibility) {
        if (this.mainView != null) {
            this.mainView.setVisibility(visibility);
        }
    }
}
