package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class VastIconXmlManager {
    public static final String DURATION = "duration";
    public static final String HEIGHT = "height";
    public static final String ICON_CLICKS = "IconClicks";
    public static final String ICON_CLICK_THROUGH = "IconClickThrough";
    public static final String ICON_CLICK_TRACKING = "IconClickTracking";
    public static final String ICON_VIEW_TRACKING = "IconViewTracking";
    public static final String OFFSET = "offset";
    public static final String WIDTH = "width";

    @NonNull
    private final Node mIconNode;

    @NonNull
    private final VastResourceXmlManager mResourceXmlManager;

    VastIconXmlManager(@NonNull Node iconNode) {
        Preconditions.checkNotNull(iconNode);
        this.mIconNode = iconNode;
        this.mResourceXmlManager = new VastResourceXmlManager(iconNode);
    }

    @Nullable
    Integer getWidth() {
        return XmlUtils.getAttributeValueAsInt(this.mIconNode, "width");
    }

    @Nullable
    Integer getHeight() {
        return XmlUtils.getAttributeValueAsInt(this.mIconNode, "height");
    }

    @Nullable
    Integer getOffsetMS() {
        String iconOffsetStr = XmlUtils.getAttributeValue(this.mIconNode, OFFSET);
        try {
            Integer iconOffset = Strings.parseAbsoluteOffset(iconOffsetStr);
            return iconOffset;
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon offset format: %s:", iconOffsetStr));
            return null;
        }
    }

    @Nullable
    Integer getDurationMS() {
        String iconDurationStr = XmlUtils.getAttributeValue(this.mIconNode, DURATION);
        try {
            Integer iconDuration = Strings.parseAbsoluteOffset(iconDurationStr);
            return iconDuration;
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon duration format: %s:", iconDurationStr));
            return null;
        }
    }

    @NonNull
    VastResourceXmlManager getResourceXmlManager() {
        return this.mResourceXmlManager;
    }

    @NonNull
    List<VastTracker> getClickTrackingUris() {
        Node iconClicksNode = XmlUtils.getFirstMatchingChildNode(this.mIconNode, ICON_CLICKS);
        List<VastTracker> iconClickTrackingUris = new ArrayList<>();
        if (iconClicksNode != null) {
            List<Node> iconClickTrackingNodes = XmlUtils.getMatchingChildNodes(iconClicksNode, ICON_CLICK_TRACKING);
            for (Node iconClickTrackingNode : iconClickTrackingNodes) {
                String uri = XmlUtils.getNodeValue(iconClickTrackingNode);
                if (uri != null) {
                    iconClickTrackingUris.add(new VastTracker(uri));
                }
            }
        }
        return iconClickTrackingUris;
    }

    @Nullable
    String getClickThroughUri() {
        Node iconClicksNode = XmlUtils.getFirstMatchingChildNode(this.mIconNode, ICON_CLICKS);
        if (iconClicksNode == null) {
            return null;
        }
        Node iconClickThroughNode = XmlUtils.getFirstMatchingChildNode(iconClicksNode, ICON_CLICK_THROUGH);
        return XmlUtils.getNodeValue(iconClickThroughNode);
    }

    @NonNull
    List<VastTracker> getViewTrackingUris() {
        List<Node> iconViewTrackingNodes = XmlUtils.getMatchingChildNodes(this.mIconNode, ICON_VIEW_TRACKING);
        List<VastTracker> iconViewTrackingUris = new ArrayList<>();
        for (Node iconViewTrackingNode : iconViewTrackingNodes) {
            String uri = XmlUtils.getNodeValue(iconViewTrackingNode);
            if (uri != null) {
                iconViewTrackingUris.add(new VastTracker(uri));
            }
        }
        return iconViewTrackingUris;
    }
}
