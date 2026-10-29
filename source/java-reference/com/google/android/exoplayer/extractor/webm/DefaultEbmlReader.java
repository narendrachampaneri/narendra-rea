package com.google.android.exoplayer.extractor.webm;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
final class DefaultEbmlReader implements EbmlReader {
    private static final int ELEMENT_STATE_READ_CONTENT = 2;
    private static final int ELEMENT_STATE_READ_CONTENT_SIZE = 1;
    private static final int ELEMENT_STATE_READ_ID = 0;
    private static final int MAX_INTEGER_ELEMENT_SIZE_BYTES = 8;
    private static final int VALID_FLOAT32_ELEMENT_SIZE_BYTES = 4;
    private static final int VALID_FLOAT64_ELEMENT_SIZE_BYTES = 8;
    private long elementContentSize;
    private int elementId;
    private int elementState;
    private EbmlReaderOutput output;
    private final byte[] scratch = new byte[8];
    private final Stack<MasterElement> masterElementsStack = new Stack<>();
    private final VarintReader varintReader = new VarintReader();

    DefaultEbmlReader() {
    }

    @Override // com.google.android.exoplayer.extractor.webm.EbmlReader
    public void init(EbmlReaderOutput eventHandler) {
        this.output = eventHandler;
    }

    @Override // com.google.android.exoplayer.extractor.webm.EbmlReader
    public void reset() {
        this.elementState = 0;
        this.masterElementsStack.clear();
        this.varintReader.reset();
    }

    @Override // com.google.android.exoplayer.extractor.webm.EbmlReader
    public boolean read(ExtractorInput input) throws InterruptedException, IOException {
        Assertions.checkState(this.output != null);
        while (true) {
            if (this.masterElementsStack.isEmpty() || input.getPosition() < this.masterElementsStack.peek().elementEndPosition) {
                if (this.elementState == 0) {
                    long result = this.varintReader.readUnsignedVarint(input, true, false);
                    if (result == -1) {
                        return false;
                    }
                    this.elementId = (int) result;
                    this.elementState = 1;
                }
                if (this.elementState == 1) {
                    this.elementContentSize = this.varintReader.readUnsignedVarint(input, false, true);
                    this.elementState = 2;
                }
                int type = this.output.getElementType(this.elementId);
                switch (type) {
                    case 0:
                        input.skipFully((int) this.elementContentSize);
                        this.elementState = 0;
                        break;
                    case 1:
                        long elementContentPosition = input.getPosition();
                        long elementEndPosition = elementContentPosition + this.elementContentSize;
                        this.masterElementsStack.add(new MasterElement(this.elementId, elementEndPosition));
                        this.output.startMasterElement(this.elementId, elementContentPosition, this.elementContentSize);
                        this.elementState = 0;
                        return true;
                    case 2:
                        if (this.elementContentSize > 8) {
                            throw new IllegalStateException("Invalid integer size: " + this.elementContentSize);
                        }
                        this.output.integerElement(this.elementId, readInteger(input, (int) this.elementContentSize));
                        this.elementState = 0;
                        return true;
                    case 3:
                        if (this.elementContentSize > 2147483647L) {
                            throw new IllegalStateException("String element size: " + this.elementContentSize);
                        }
                        this.output.stringElement(this.elementId, readString(input, (int) this.elementContentSize));
                        this.elementState = 0;
                        return true;
                    case 4:
                        this.output.binaryElement(this.elementId, (int) this.elementContentSize, input);
                        this.elementState = 0;
                        return true;
                    case 5:
                        if (this.elementContentSize != 4 && this.elementContentSize != 8) {
                            throw new IllegalStateException("Invalid float size: " + this.elementContentSize);
                        }
                        this.output.floatElement(this.elementId, readFloat(input, (int) this.elementContentSize));
                        this.elementState = 0;
                        return true;
                    default:
                        throw new IllegalStateException("Invalid element type " + type);
                }
            } else {
                this.output.endMasterElement(this.masterElementsStack.pop().elementId);
                return true;
            }
        }
    }

    private long readInteger(ExtractorInput input, int byteLength) throws InterruptedException, IOException {
        input.readFully(this.scratch, 0, byteLength);
        long value = 0;
        for (int i = 0; i < byteLength; i++) {
            value = (value << 8) | ((long) (this.scratch[i] & 255));
        }
        return value;
    }

    private double readFloat(ExtractorInput input, int byteLength) throws InterruptedException, IOException {
        long integerValue = readInteger(input, byteLength);
        if (byteLength == 4) {
            double floatValue = Float.intBitsToFloat((int) integerValue);
            return floatValue;
        }
        double floatValue2 = Double.longBitsToDouble(integerValue);
        return floatValue2;
    }

    private String readString(ExtractorInput input, int byteLength) throws InterruptedException, IOException {
        byte[] stringBytes = new byte[byteLength];
        input.readFully(stringBytes, 0, byteLength);
        return new String(stringBytes, Charset.forName("UTF-8"));
    }

    private static final class MasterElement {
        private final long elementEndPosition;
        private final int elementId;

        private MasterElement(int elementId, long elementEndPosition) {
            this.elementId = elementId;
            this.elementEndPosition = elementEndPosition;
        }
    }
}
