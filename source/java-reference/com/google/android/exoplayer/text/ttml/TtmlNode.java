package com.google.android.exoplayer.text.ttml;

import android.text.SpannableStringBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
final class TtmlNode {
    public static final String TAG_BODY = "body";
    public static final String TAG_BR = "br";
    public static final String TAG_DIV = "div";
    public static final String TAG_HEAD = "head";
    public static final String TAG_LAYOUT = "layout";
    public static final String TAG_METADATA = "metadata";
    public static final String TAG_P = "p";
    public static final String TAG_REGION = "region";
    public static final String TAG_SMPTE_DATA = "smpte:data";
    public static final String TAG_SMPTE_IMAGE = "smpte:image";
    public static final String TAG_SMPTE_INFORMATION = "smpte:information";
    public static final String TAG_SPAN = "span";
    public static final String TAG_STYLE = "style";
    public static final String TAG_STYLING = "styling";
    public static final String TAG_TT = "tt";
    public static final long UNDEFINED_TIME = -1;
    private List<TtmlNode> children;
    public final long endTimeUs;
    public final boolean isTextNode;
    public final long startTimeUs;
    public final String tag;
    public final String text;

    public static TtmlNode buildTextNode(String text) {
        return new TtmlNode(null, applyTextElementSpacePolicy(text), -1L, -1L);
    }

    public static TtmlNode buildNode(String tag, long startTimeUs, long endTimeUs) {
        return new TtmlNode(tag, null, startTimeUs, endTimeUs);
    }

    private TtmlNode(String tag, String text, long startTimeUs, long endTimeUs) {
        this.tag = tag;
        this.text = text;
        this.isTextNode = text != null;
        this.startTimeUs = startTimeUs;
        this.endTimeUs = endTimeUs;
    }

    public boolean isActive(long timeUs) {
        return (this.startTimeUs == -1 && this.endTimeUs == -1) || (this.startTimeUs <= timeUs && this.endTimeUs == -1) || ((this.startTimeUs == -1 && timeUs < this.endTimeUs) || (this.startTimeUs <= timeUs && timeUs < this.endTimeUs));
    }

    public void addChild(TtmlNode child) {
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(child);
    }

    public TtmlNode getChild(int index) {
        if (this.children == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.children.get(index);
    }

    public int getChildCount() {
        if (this.children == null) {
            return 0;
        }
        return this.children.size();
    }

    public long[] getEventTimesUs() {
        TreeSet<Long> eventTimeSet = new TreeSet<>();
        getEventTimes(eventTimeSet, false);
        long[] eventTimes = new long[eventTimeSet.size()];
        Iterator<Long> eventTimeIterator = eventTimeSet.iterator();
        int i = 0;
        while (eventTimeIterator.hasNext()) {
            long eventTimeUs = eventTimeIterator.next().longValue();
            eventTimes[i] = eventTimeUs;
            i++;
        }
        return eventTimes;
    }

    private void getEventTimes(TreeSet<Long> out, boolean descendsPNode) {
        boolean isPNode = TAG_P.equals(this.tag);
        if (descendsPNode || isPNode) {
            if (this.startTimeUs != -1) {
                out.add(Long.valueOf(this.startTimeUs));
            }
            if (this.endTimeUs != -1) {
                out.add(Long.valueOf(this.endTimeUs));
            }
        }
        if (this.children != null) {
            for (int i = 0; i < this.children.size(); i++) {
                this.children.get(i).getEventTimes(out, descendsPNode || isPNode);
            }
        }
    }

    public CharSequence getText(long timeUs) {
        SpannableStringBuilder builder = getText(timeUs, new SpannableStringBuilder(), false);
        int builderLength = builder.length();
        for (int i = 0; i < builderLength; i++) {
            if (builder.charAt(i) == ' ') {
                int j = i + 1;
                while (j < builder.length() && builder.charAt(j) == ' ') {
                    j++;
                }
                int spacesToDelete = j - (i + 1);
                if (spacesToDelete > 0) {
                    builder.delete(i, i + spacesToDelete);
                    builderLength -= spacesToDelete;
                }
            }
        }
        if (builderLength > 0 && builder.charAt(0) == ' ') {
            builder.delete(0, 1);
            builderLength--;
        }
        for (int i2 = 0; i2 < builderLength - 1; i2++) {
            if (builder.charAt(i2) == '\n' && builder.charAt(i2 + 1) == ' ') {
                builder.delete(i2 + 1, i2 + 2);
                builderLength--;
            }
        }
        if (builderLength > 0 && builder.charAt(builderLength - 1) == ' ') {
            builder.delete(builderLength - 1, builderLength);
            builderLength--;
        }
        for (int i3 = 0; i3 < builderLength - 1; i3++) {
            if (builder.charAt(i3) == ' ' && builder.charAt(i3 + 1) == '\n') {
                builder.delete(i3, i3 + 1);
                builderLength--;
            }
        }
        if (builderLength > 0 && builder.charAt(builderLength - 1) == '\n') {
            builder.delete(builderLength - 1, builderLength);
            builderLength--;
        }
        return builder.subSequence(0, builderLength);
    }

    private SpannableStringBuilder getText(long timeUs, SpannableStringBuilder builder, boolean descendsPNode) {
        if (this.isTextNode && descendsPNode) {
            builder.append((CharSequence) this.text);
        } else if (TAG_BR.equals(this.tag) && descendsPNode) {
            builder.append('\n');
        } else if (!TAG_METADATA.equals(this.tag) && isActive(timeUs)) {
            boolean isPNode = TAG_P.equals(this.tag);
            for (int i = 0; i < getChildCount(); i++) {
                getChild(i).getText(timeUs, builder, descendsPNode || isPNode);
            }
            if (isPNode) {
                endParagraph(builder);
            }
        }
        return builder;
    }

    private static void endParagraph(SpannableStringBuilder builder) {
        int position = builder.length() - 1;
        while (position >= 0 && builder.charAt(position) == ' ') {
            position--;
        }
        if (position >= 0 && builder.charAt(position) != '\n') {
            builder.append('\n');
        }
    }

    private static String applyTextElementSpacePolicy(String in) {
        String out = in.replaceAll("\r\n", "\n");
        return out.replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }
}
