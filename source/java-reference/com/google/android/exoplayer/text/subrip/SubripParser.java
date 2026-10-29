package com.google.android.exoplayer.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.LongArray;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class SubripParser implements SubtitleParser {
    private final StringBuilder textBuilder = new StringBuilder();
    private static final Pattern SUBRIP_TIMING_LINE = Pattern.compile("(.*)\\s+-->\\s+(.*)");
    private static final Pattern SUBRIP_TIMESTAMP = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+),(\\d+)");

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public SubripSubtitle parse(InputStream inputStream, String inputEncoding, long startTimeUs) throws IOException {
        ArrayList<Cue> cues = new ArrayList<>();
        LongArray cueTimesUs = new LongArray();
        BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        while (true) {
            String currentLine = reader.readLine();
            if (currentLine != null) {
                try {
                    Integer.parseInt(currentLine);
                    String currentLine2 = reader.readLine();
                    Matcher matcher = SUBRIP_TIMING_LINE.matcher(currentLine2);
                    if (matcher.find()) {
                        cueTimesUs.add(parseTimestampUs(matcher.group(1)) + startTimeUs);
                        cueTimesUs.add(parseTimestampUs(matcher.group(2)) + startTimeUs);
                        this.textBuilder.setLength(0);
                        while (true) {
                            String currentLine3 = reader.readLine();
                            if (!TextUtils.isEmpty(currentLine3)) {
                                if (this.textBuilder.length() > 0) {
                                    this.textBuilder.append("<br>");
                                }
                                this.textBuilder.append(currentLine3.trim());
                            }
                        }
                        Spanned text = Html.fromHtml(this.textBuilder.toString());
                        cues.add(new Cue(text));
                    } else {
                        throw new ParserException("Expected timing line: " + currentLine2);
                    }
                } catch (NumberFormatException e) {
                    throw new ParserException("Expected numeric counter: " + currentLine);
                }
            } else {
                Cue[] cuesArray = new Cue[cues.size()];
                cues.toArray(cuesArray);
                long[] cueTimesUsArray = cueTimesUs.toArray();
                return new SubripSubtitle(startTimeUs, cuesArray, cueTimesUsArray);
            }
        }
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String mimeType) {
        return MimeTypes.APPLICATION_SUBRIP.equals(mimeType);
    }

    private static long parseTimestampUs(String s) throws NumberFormatException {
        Matcher matcher = SUBRIP_TIMESTAMP.matcher(s);
        if (!matcher.matches()) {
            throw new NumberFormatException("has invalid format");
        }
        long timestampMs = Long.parseLong(matcher.group(1)) * 60 * 60 * 1000;
        return (timestampMs + (Long.parseLong(matcher.group(2)) * 60 * 1000) + (Long.parseLong(matcher.group(3)) * 1000) + Long.parseLong(matcher.group(4))) * 1000;
    }
}
