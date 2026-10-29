package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class Base64 {
    private static final String ENCODE_CHARSET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    Base64() {
    }

    public static byte[] decode(String s) {
        int code;
        int current;
        if (StringUtils.isNullOrWhiteSpace(s)) {
            throw new IllegalArgumentException("Encoded String must not be null or white space");
        }
        int decodedLength = getDecodedLength(s);
        if (decodedLength <= 0) {
            throw new IllegalArgumentException("Encoded String decodes to zero bytes");
        }
        byte[] decoded = new byte[decodedLength];
        int current2 = 0;
        for (int i = 0; i < s.length() && current2 < decodedLength && ((i % 4 != 0 || s.length() >= i + 4) && (code = ENCODE_CHARSET.indexOf(s.charAt(i))) != -1); i++) {
            switch (i % 4) {
                case 0:
                    decoded[current2] = (byte) (code << 2);
                    continue;
                    break;
                case 1:
                    current = current2 + 1;
                    decoded[current2] = (byte) (decoded[current2] | ((byte) ((code >> 4) & 3)));
                    if (current < decodedLength) {
                        decoded[current] = (byte) (code << 4);
                        current2 = current;
                    }
                    break;
                case 2:
                    current = current2 + 1;
                    decoded[current2] = (byte) (decoded[current2] | ((byte) ((code >> 2) & 15)));
                    if (current < decodedLength) {
                        decoded[current] = (byte) (code << 6);
                        current2 = current;
                    }
                    break;
                case 3:
                    current = current2 + 1;
                    decoded[current2] = (byte) (decoded[current2] | ((byte) (code & 63)));
                    break;
                default:
                    continue;
                    break;
            }
            current2 = current;
        }
        return decoded;
    }

    private static int getDecodedLength(String s) {
        int index = s.indexOf("=");
        int end = 0;
        if (index > -1) {
            end = s.length() - index;
        }
        int decodedLength = (((s.length() + 3) / 4) * 3) - end;
        return decodedLength;
    }
}
