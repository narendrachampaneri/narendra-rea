package com.immersion.hapticmediasdk.controllers;

import com.immersion.content.HapticHeaderUtils;
import com.immersion.content.HeaderUtils;
import com.immersion.hapticmediasdk.models.HapticFileInformation;
import com.immersion.hapticmediasdk.models.NotEnoughHapticBytesAvailableException;
import com.immersion.hapticmediasdk.utils.FileManager;
import com.immersion.hapticmediasdk.utils.Log;
import com.immersion.hapticmediasdk.utils.Profiler;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import rrrrrr.rcrcrr;

/* JADX INFO: loaded from: classes2.dex */
public class MemoryAlignedFileReader implements IHapticFileReader {
    private static final String a = "MemoryAlignedFileReader";

    /* JADX INFO: renamed from: b0415ЕЕ0415ЕЕ, reason: contains not printable characters */
    public static int f62b04150415 = 10;

    /* JADX INFO: renamed from: bЕ041504150415ЕЕ, reason: contains not printable characters */
    public static int f63b041504150415 = 1;

    /* JADX INFO: renamed from: bЕ0415Е0415ЕЕ, reason: contains not printable characters */
    public static int f64b04150415 = 0;

    /* JADX INFO: renamed from: bЕЕ04150415ЕЕ, reason: contains not printable characters */
    public static int f65b04150415 = 2;
    private static int h = 80;
    private static int i = 0;
    private static final int k = 1024;
    private static final int l = 3072;
    private static final int t = 16;
    private File b;
    private FileChannel c;
    private rcrcrr d;
    private rcrcrr e;
    private int f;
    private int g;
    private HapticFileInformation j;
    private String m;
    private FileManager n;
    private HeaderUtils o;
    private byte[] p;
    private final Profiler q;
    private int r;
    private int s;

    public MemoryAlignedFileReader(String str, HeaderUtils headerUtils) throws Exception {
        try {
            this.f = 0;
            this.m = null;
            this.n = null;
            this.p = null;
            try {
                this.q = new Profiler();
                this.m = str;
                int i2 = f62b04150415;
                switch ((i2 * (f63b041504150415 + i2)) % f65b04150415) {
                    case 0:
                        break;
                    default:
                        f62b04150415 = m85b041504150415();
                        f64b04150415 = 92;
                        break;
                }
                this.o = headerUtils;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public MemoryAlignedFileReader(String str, FileManager fileManager, int i2) throws Exception {
        try {
            if (((f62b04150415 + m84b041504150415()) * f62b04150415) % f65b04150415 != f64b04150415) {
                f62b04150415 = m85b041504150415();
                f64b04150415 = m85b041504150415();
            }
            this.f = 0;
            this.m = null;
            this.n = null;
            this.p = null;
            this.q = new Profiler();
            try {
                this.m = str;
                this.n = fileManager;
                this.o = new HapticHeaderUtils();
                this.f = i2;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int a(rcrcrr rcrcrrVar, int i2) throws Exception {
        if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 != f64b04150415) {
            f62b04150415 = 0;
            f64b04150415 = m85b041504150415();
        }
        try {
            try {
                return (i2 - rcrcrrVar.mHapticDataOffset) % rcrcrrVar.mMappedByteBuffer.capacity();
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private boolean a() throws Exception {
        boolean zB = false;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                try {
                    if (this.j != null) {
                        return true;
                    }
                    if (this.b == null) {
                        if (this.n != null) {
                            this.b = this.n.getHapticStorageFile(this.m);
                        } else {
                            if (this.m == null) {
                                return false;
                            }
                            this.b = new File(this.m);
                        }
                    }
                    if (this.c == null) {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.b, "r");
                        try {
                            this.c = randomAccessFile2.getChannel();
                            randomAccessFile = randomAccessFile2;
                        } catch (FileNotFoundException e) {
                            randomAccessFile = randomAccessFile2;
                        }
                    }
                    if (this.c != null) {
                        zB = b();
                        return zB;
                    }
                    if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 == f64b04150415) {
                        return false;
                    }
                    f62b04150415 = m85b041504150415();
                    f64b04150415 = 96;
                    return false;
                } catch (FileNotFoundException e2) {
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                return zB;
            }
        } catch (Exception e4) {
            throw e4;
        }
        try {
            Log.e(a, "FileNotFoundException");
            this.n.closeCloseable(randomAccessFile);
            this.n.closeCloseable(this.c);
            return zB;
        } catch (Exception e5) {
            throw e5;
        }
    }

    private boolean a(int i2) throws Exception {
        if (((f62b04150415 + m84b041504150415()) * f62b04150415) % f65b04150415 != f64b04150415) {
            f62b04150415 = 31;
            f64b04150415 = 17;
        }
        try {
            return this.g >= i2;
        } catch (Exception e) {
            throw e;
        }
    }

    private int b(int i2) {
        char c = 0;
        if (this.o == null) {
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
        int i3 = f62b04150415;
        switch ((i3 * (f63b041504150415 + i3)) % f65b04150415) {
            case 0:
                break;
            default:
                f62b04150415 = 53;
                f64b04150415 = 85;
                break;
        }
        return this.o.calculateByteOffsetIntoHapticData(i2);
    }

    private boolean b() {
        char c = 0;
        try {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            byteBufferAllocate.position(0);
            if (this.c.read(byteBufferAllocate, 16L) != 4) {
                return false;
            }
            byteBufferAllocate.flip();
            int i2 = byteBufferAllocate.getInt();
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
            int i3 = i2 + 28;
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i3);
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
            if (this.c.read(byteBufferAllocate2, 0L) != i3) {
                return false;
            }
            byteBufferAllocate2.position(4);
            this.r = (byteBufferAllocate2.getInt() + 8) - i3;
            this.s = i3;
            byteBufferAllocate2.position(20);
            this.p = new byte[i2];
            byteBufferAllocate2.duplicate().get(this.p, 0, i2);
            this.o.setEncryptedHSI(byteBufferAllocate2, i2);
            int iCalculateBlockSize = this.o.calculateBlockSize();
            if (iCalculateBlockSize <= 0) {
                return false;
            }
            i = iCalculateBlockSize * 2;
            int iCalculateBlockRate = this.o.calculateBlockRate();
            if (iCalculateBlockRate <= 0) {
                return false;
            }
            h = iCalculateBlockRate;
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e) {
                    f62b04150415 = m85b041504150415();
                    return true;
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static boolean b(rcrcrr rcrcrrVar, int i2) {
        if (i2 >= rcrcrrVar.mHapticDataOffset) {
            return false;
        }
        if (((f62b04150415 + f63b041504150415) * f62b04150415) % m86b041504150415() == f64b04150415) {
            return true;
        }
        f62b04150415 = 22;
        f64b04150415 = m85b041504150415();
        return true;
    }

    /* JADX INFO: renamed from: b04150415Е0415ЕЕ, reason: contains not printable characters */
    public static int m84b041504150415() {
        return 1;
    }

    /* JADX INFO: renamed from: b0415Е04150415ЕЕ, reason: contains not printable characters */
    public static int m85b041504150415() {
        return 23;
    }

    /* JADX INFO: renamed from: b0415Е0415Е0415Е, reason: contains not printable characters */
    public static int m86b041504150415() {
        return 2;
    }

    /* JADX INFO: renamed from: bЕ04150415Е0415Е, reason: contains not printable characters */
    public static int m87b041504150415() {
        return 0;
    }

    private int c(int i2) {
        return this.s + b(i2);
    }

    private void c() throws Exception {
        String str = null;
        try {
            if (this.e != null) {
                int i2 = this.e.mHapticDataOffset + 1024;
                this.d = this.e;
                try {
                    this.e = d(i2 - (i / 2));
                    return;
                } catch (Exception e) {
                    throw e;
                }
            }
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e2) {
                    f62b04150415 = m85b041504150415();
                    while (true) {
                        try {
                            str.length();
                        } catch (Exception e3) {
                            f62b04150415 = 39;
                            while (true) {
                                try {
                                    int[] iArr2 = new int[-1];
                                } catch (Exception e4) {
                                    f62b04150415 = 45;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e5) {
            throw e5;
        }
    }

    private static boolean c(rcrcrr rcrcrrVar, int i2) throws Exception {
        try {
            if (i2 < rcrcrrVar.mHapticDataOffset + rcrcrrVar.mMappedByteBuffer.capacity()) {
                return false;
            }
            if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 == m87b041504150415()) {
                return true;
            }
            f62b04150415 = m85b041504150415();
            f64b04150415 = m85b041504150415();
            return true;
        } catch (Exception e) {
            throw e;
        }
    }

    private int d() throws Exception {
        try {
            if (this.o == null) {
                return 0;
            }
            try {
                int numChannels = this.o.getNumChannels();
                if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 == f64b04150415) {
                    return numChannels;
                }
                f62b04150415 = m85b041504150415();
                f64b04150415 = m85b041504150415();
                return numChannels;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private rcrcrr d(int i2) throws Exception {
        int i3;
        try {
            this.q.startTiming();
            if (i2 < this.r) {
                int i4 = this.s + i2;
                try {
                    int iF = f();
                    if (i2 + 1024 + iF <= this.r) {
                        int i5 = iF + 1024;
                        if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 != f64b04150415) {
                            f62b04150415 = 31;
                            f64b04150415 = 69;
                        }
                        i3 = i5;
                    } else {
                        i3 = this.r - i2;
                    }
                    if (i2 + i3 > this.g) {
                        throw new NotEnoughHapticBytesAvailableException("Not enough bytes available yet.");
                    }
                    MappedByteBuffer map = this.c.map(FileChannel.MapMode.READ_ONLY, i4, i3);
                    if (map != null) {
                        map.order(ByteOrder.BIG_ENDIAN);
                        rcrcrr rcrcrrVar = new rcrcrr(null);
                        rcrcrrVar.mMappedByteBuffer = map;
                        rcrcrrVar.mHapticDataOffset = i2;
                        return rcrcrrVar;
                    }
                } catch (Exception e) {
                    throw e;
                }
            }
            return null;
        } catch (Exception e2) {
            throw e2;
        }
    }

    private static boolean d(rcrcrr rcrcrrVar, int i2) {
        if (b(rcrcrrVar, i2)) {
            return true;
        }
        while (true) {
            switch (1) {
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
        if (!c(rcrcrrVar, i2)) {
            return false;
        }
        int iM85b041504150415 = m85b041504150415();
        switch ((iM85b041504150415 * (f63b041504150415 + iM85b041504150415)) % f65b04150415) {
            case 0:
                return true;
            default:
                f62b04150415 = m85b041504150415();
                f64b04150415 = 24;
                return true;
        }
    }

    private void e() {
        Log.d(a, "%%%%%%%%%%% logBufferState %%%%%%%%%%%");
        if (this.d != null) {
            Log.d(a, "mCurrentMMW capacity = " + this.d.mMappedByteBuffer.capacity());
            StringBuilder sb = new StringBuilder();
            while (true) {
                switch (1) {
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
            Log.d(a, sb.append("mCurrentMMW position = ").append(this.d.mMappedByteBuffer.position()).toString());
            Log.d(a, "mCurrentMMW remaining = " + this.d.mMappedByteBuffer.remaining());
            Log.d(a, "mCurrentMMW mHapticDataOffset = " + this.d.mHapticDataOffset);
            Log.d(a, "mCurrentMMW mHapticDataOffset + position = " + (this.d.mHapticDataOffset + this.d.mMappedByteBuffer.position()));
        } else {
            Log.d(a, "mCurrentMMW is null");
        }
        Log.d(a, "--------------------------------------");
        if (this.e != null) {
            Log.d(a, "mNextMMW capacity = " + this.e.mMappedByteBuffer.capacity());
            Log.d(a, "mNextMMW position = " + this.e.mMappedByteBuffer.position());
            Log.d(a, "mNextMMW remaining = " + this.e.mMappedByteBuffer.remaining());
            Log.d(a, "mNextMMW mHapticDataOffset = " + this.e.mHapticDataOffset);
            StringBuilder sbAppend = new StringBuilder().append("mNextMMW mHapticDataOffset + position = ");
            if (((f62b04150415 + m84b041504150415()) * f62b04150415) % f65b04150415 != f64b04150415) {
                f62b04150415 = m85b041504150415();
                f64b04150415 = m85b041504150415();
            }
            Log.d(a, sbAppend.append(this.e.mHapticDataOffset + this.e.mMappedByteBuffer.position()).toString());
        } else {
            Log.d(a, "mNextMMW is null");
        }
        Log.d(a, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
    }

    private static boolean e(rcrcrr rcrcrrVar, int i2) throws Exception {
        try {
            int i3 = i;
            int i4 = f62b04150415;
            switch ((i4 * (f63b041504150415 + i4)) % f65b04150415) {
                case 0:
                    break;
                default:
                    f62b04150415 = 4;
                    f64b04150415 = 62;
                    break;
            }
            return c(rcrcrrVar, i3 + i2);
        } catch (Exception e) {
            throw e;
        }
    }

    private int f() {
        int i2 = 0;
        while ((i2 + 1024) % (i / 2) != 0) {
            i2 += 16;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public boolean bufferAtPlaybackPosition(int i2) throws Exception {
        int iB;
        if (!a() || (iB = b(i2)) >= this.r) {
            return false;
        }
        if (this.d == null || d(this.d, iB)) {
            try {
                if (this.e == null || d(this.e, iB) || e(this.e, iB)) {
                    if (this.d == null || this.d.mHapticDataOffset != iB) {
                        this.d = d(iB);
                    }
                    if (this.e != null) {
                        int i3 = this.e.mHapticDataOffset;
                        int i4 = (iB + 1024) - (i / 2);
                        if (((m85b041504150415() + f63b041504150415) * m85b041504150415()) % f65b04150415 != f64b04150415) {
                            f62b04150415 = 98;
                            f64b04150415 = 73;
                        }
                        if (i3 != i4) {
                            this.e = d((iB + 1024) - (i / 2));
                        }
                    } else {
                        this.e = d((iB + 1024) - (i / 2));
                    }
                    return true;
                }
                c();
            } catch (NotEnoughHapticBytesAvailableException e) {
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
        if (this.d != null) {
            this.d.mMappedByteBuffer.position(a(this.d, iB));
        }
        return true;
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public void close() throws Exception {
        this.n.closeCloseable(this.c);
        this.o.dispose();
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public long getBlockOffset(long j) {
        long j2 = j % ((long) h);
        int i2 = f62b04150415;
        switch ((i2 * (f63b041504150415 + i2)) % f65b04150415) {
            case 0:
                break;
            default:
                f62b04150415 = m85b041504150415();
                f64b04150415 = 40;
                break;
        }
        return (j2 * 16) / ((long) h);
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public int getBlockSizeMS() {
        int i2 = h;
        if (((f62b04150415 + f63b041504150415) * f62b04150415) % f65b04150415 != f64b04150415) {
            f62b04150415 = 57;
            f64b04150415 = 94;
        }
        return i2;
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public byte[] getBufferForPlaybackPosition(int i2) throws NotEnoughHapticBytesAvailableException {
        int iB;
        byte[] bArr = null;
        char c = 0;
        if (this.d == null || (iB = b(i2)) >= this.r - i) {
            return null;
        }
        try {
            byte[] bArr2 = new byte[i];
            if (this.d.mMappedByteBuffer.remaining() < i) {
                c();
            }
            int iPosition = this.d.mMappedByteBuffer.position() + this.d.mHapticDataOffset;
            if (iPosition < iB || iPosition > iB) {
                int iPosition2 = (iB - iPosition) + this.d.mMappedByteBuffer.position();
                if (iPosition2 < 0) {
                    iPosition2 = 0;
                } else if (this.d.mMappedByteBuffer.limit() < iPosition2) {
                    iPosition2 = this.d.mMappedByteBuffer.limit() - 1;
                }
                this.d.mMappedByteBuffer.position(iPosition2);
            }
            int iRemaining = this.d.mMappedByteBuffer.remaining();
            int i3 = f62b04150415;
            switch ((i3 * (f63b041504150415 + i3)) % m86b041504150415()) {
                case 0:
                    break;
                default:
                    f62b04150415 = m85b041504150415();
                    f64b04150415 = m85b041504150415();
                    break;
            }
            MappedByteBuffer mappedByteBuffer = this.d.mMappedByteBuffer;
            if (iRemaining >= i) {
                iRemaining = i;
            }
            mappedByteBuffer.get(bArr2, 0, iRemaining);
            MappedByteBuffer mappedByteBuffer2 = this.d.mMappedByteBuffer;
            int iPosition3 = this.d.mMappedByteBuffer.position();
            while (true) {
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
            mappedByteBuffer2.position(iPosition3 - (i / 2));
            bArr = bArr2;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public byte[] getEncryptedHapticHeader() {
        return this.p;
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public int getHapticBlockIndex(long j) throws Exception {
        try {
            int iB = b((int) j);
            int i2 = this.f;
            if (((f62b04150415 + m84b041504150415()) * f62b04150415) % f65b04150415 != f64b04150415) {
                f62b04150415 = 2;
                f64b04150415 = m85b041504150415();
            }
            if (i2 == 2) {
                return iB / 16;
            }
            if (this.f < 3) {
                return 0;
            }
            try {
                return iB / (d() * 16);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public HapticFileInformation getHapticFileInformation() {
        return this.j;
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public void setBlockSizeMS(int i2) throws Exception {
        int i3 = f62b04150415;
        switch ((i3 * (m84b041504150415() + i3)) % f65b04150415) {
            case 0:
                break;
            default:
                f62b04150415 = m85b041504150415();
                f64b04150415 = m85b041504150415();
                break;
        }
        try {
            h = i2;
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // com.immersion.hapticmediasdk.controllers.IHapticFileReader
    public void setBytesAvailable(int i2) throws Exception {
        this.g = i2;
        if (this.g <= 0) {
            this.g = i2;
            a();
        }
    }
}
