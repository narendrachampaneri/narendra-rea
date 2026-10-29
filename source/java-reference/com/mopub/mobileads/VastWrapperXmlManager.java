package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
class VastWrapperXmlManager extends VastBaseInLineWrapperXmlManager {
    private static final String VAST_AD_TAG = "VASTAdTagURI";

    VastWrapperXmlManager(@NonNull Node wrapperNode) {
        super(wrapperNode);
        Preconditions.checkNotNull(wrapperNode);
    }

    @Nullable
    String getVastAdTagURI() {
        Node vastAdTagURINode = XmlUtils.getFirstMatchingChildNode(this.mNode, VAST_AD_TAG);
        return XmlUtils.getNodeValue(vastAdTagURINode);
    }
}
