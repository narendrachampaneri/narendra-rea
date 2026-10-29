package com.immersion.hapticmediasdk.controllers;

import com.immersion.content.HapticHeaderUtils;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public class FileReaderFactory {
    private static final String a = "FileReaderFactory";

    /* JADX INFO: renamed from: b044604460446ц0446ц, reason: contains not printable characters */
    public static int f39b0446044604460446 = 2;

    /* JADX INFO: renamed from: b0446ц044604460446ц, reason: contains not printable characters */
    public static int f40b0446044604460446 = 0;

    /* JADX INFO: renamed from: b0446ц0446ц0446ц, reason: contains not printable characters */
    public static int f41b044604460446 = 72;

    /* JADX INFO: renamed from: bц0446ц04460446ц, reason: contains not printable characters */
    public static int f42b044604460446 = 1;

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001f. Please report as an issue. */
    public FileReaderFactory() {
        int i = f41b044604460446;
        switch ((i * (m34b044604460446() + i)) % f39b0446044604460446) {
            case 0:
                break;
            default:
                f41b044604460446 = m35b04460446();
                f39b0446044604460446 = m35b04460446();
                break;
        }
        while (true) {
            char c = 0;
            switch (c) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                            case 0:
                                break;
                            case 1:
                                break;
                            default:
                                break;
                        }
                    }
                    break;
            }
        }
    }

    private static int a(String str, FileManager fileManager) throws Exception {
        File file;
        int iA = 0;
        String str2 = null;
        try {
            if (fileManager != null) {
                file = fileManager.getHapticStorageFile(str);
            } else {
                if (str == null) {
                    return 0;
                }
                file = new File(str);
            }
            if (file.length() == 0) {
                return -1;
            }
            FileChannel channel = 0 == 0 ? new RandomAccessFile(file, "r").getChannel() : null;
            if (channel == null) {
                return 0;
            }
            iA = a(channel);
            channel.close();
            while (true) {
                try {
                    str2.length();
                } catch (Exception e) {
                    f41b044604460446 = m35b04460446();
                    return iA;
                }
            }
        } catch (Exception e2) {
            try {
                e2.printStackTrace();
                return iA;
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    private static int a(FileChannel fileChannel) {
        char c = 0;
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            if (((m35b04460446() + m34b044604460446()) * m35b04460446()) % m33b0446044604460446() != f40b0446044604460446) {
                f41b044604460446 = m35b04460446();
                f40b0446044604460446 = 93;
            }
            byteBufferAllocate.position(0);
            if (fileChannel.read(byteBufferAllocate, 16L) != 4) {
                return 0;
            }
            byteBufferAllocate.flip();
            int i = byteBufferAllocate.getInt();
            int i2 = i + 28;
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i2);
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
            if (fileChannel.read(byteBufferAllocate2, 0L) != i2) {
                return 0;
            }
            while (true) {
                switch (c) {
                    case 0:
                        break;
                    case 1:
                        break;
                    default:
                        while (true) {
                            switch (c) {
                                case 0:
                                    break;
                                case 1:
                                    break;
                                default:
                                    break;
                            }
                        }
                        break;
                }
            }
            byteBufferAllocate2.position(4);
            int i3 = byteBufferAllocate2.getInt() + 8;
            byteBufferAllocate2.position(20);
            HapticHeaderUtils hapticHeaderUtils = new HapticHeaderUtils();
            hapticHeaderUtils.setEncryptedHSI(byteBufferAllocate2, i);
            return hapticHeaderUtils.getMajorVersionNumber();
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: renamed from: b0446цц04460446ц, reason: contains not printable characters */
    public static int m32b044604460446() {
        return 0;
    }

    /* JADX INFO: renamed from: bц0446044604460446ц, reason: contains not printable characters */
    public static int m33b0446044604460446() {
        return 2;
    }

    /* JADX INFO: renamed from: bц04460446ц0446ц, reason: contains not printable characters */
    public static int m34b044604460446() {
        return 1;
    }

    /* JADX INFO: renamed from: bццц04460446ц, reason: contains not printable characters */
    public static int m35b04460446() {
        return 47;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    public static IHapticFileReader getHapticFileReaderInstance(String str, FileManager fileManager) {
        char c = 0;
        IHapticFileReader memoryMappedFileReader = null;
        try {
            switch (a(str, fileManager)) {
                case -1:
                    Log.i(a, "Can't retrieve Major version! Not enough bytes available yet.");
                    break;
                case 0:
                default:
                    Log.e(a, "Unsupported HAPT file version");
                    while (true) {
                        switch (c) {
                            case 0:
                                break;
                            case 1:
                                continue;
                            default:
                                while (true) {
                                    switch (c) {
                                        case 0:
                                            break;
                                        case 1:
                                            continue;
                                            continue;
                                            break;
                                        default:
                                            break;
                                    }
                                }
                                break;
                        }
                        e.printStackTrace();
                        if (((f41b044604460446 + f42b044604460446) * f41b044604460446) % f39b0446044604460446 != m32b044604460446()) {
                            f41b044604460446 = m35b04460446();
                            f42b044604460446 = m35b04460446();
                        }
                        return memoryMappedFileReader;
                    }
                case 1:
                    memoryMappedFileReader = new MemoryMappedFileReader(str, fileManager);
                    break;
                case 2:
                    memoryMappedFileReader = new MemoryAlignedFileReader(str, fileManager, 2);
                    break;
                case 3:
                    memoryMappedFileReader = new MemoryAlignedFileReader(str, fileManager, 3);
                    break;
            }
        } catch (Error e) {
            e.printStackTrace();
            if (((f41b044604460446 + f42b044604460446) * f41b044604460446) % f39b0446044604460446 != m32b044604460446()) {
                f41b044604460446 = m35b04460446();
                f42b044604460446 = m35b04460446();
            }
        }
        return memoryMappedFileReader;
    }
}
