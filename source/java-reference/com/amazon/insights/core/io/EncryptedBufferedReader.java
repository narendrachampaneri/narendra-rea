package com.amazon.insights.core.io;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.CharBuffer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPInputStream;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import org.apache.commons.codec.binary.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedBufferedReader extends BufferedReader {
    private static final int BUFFER_SIZE = 1024;
    private Cipher cipher;
    private final BufferedReader reader;

    public EncryptedBufferedReader(BufferedReader reader, SecretKey secretKey) {
        super(reader);
        this.reader = reader;
        try {
            this.cipher = Cipher.getInstance(secretKey.getAlgorithm());
            this.cipher.init(2, secretKey);
        } catch (InvalidKeyException e) {
            this.cipher = null;
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            this.cipher = null;
            throw new IllegalArgumentException(e2);
        } catch (NoSuchPaddingException e3) {
            this.cipher = null;
            throw new IllegalArgumentException(e3);
        }
    }

    @Override // java.io.BufferedReader
    public String readLine() throws Throwable {
        String str;
        if (this.cipher == null) {
            throw new IOException("Could not build a Cipher to decrpyt the underlying writer");
        }
        ByteArrayInputStream byteInStream = null;
        ByteArrayOutputStream byteOutStream = null;
        GZIPInputStream gzipStream = null;
        try {
            try {
                String line = this.reader.readLine();
                if (line == null) {
                    str = null;
                    if (0 != 0) {
                        gzipStream.close();
                    }
                    if (0 != 0) {
                        byteInStream.close();
                    }
                    if (0 != 0) {
                        byteOutStream.close();
                    }
                } else {
                    byte[] originalBytes = this.cipher.doFinal(Base64.decodeBase64(line.getBytes("UTF-8")));
                    ByteArrayInputStream byteInStream2 = new ByteArrayInputStream(originalBytes);
                    try {
                        ByteArrayOutputStream byteOutStream2 = new ByteArrayOutputStream();
                        try {
                            try {
                                byte[] buffer = new byte[1024];
                                try {
                                    GZIPInputStream gzipStream2 = new GZIPInputStream(byteInStream2);
                                    while (true) {
                                        try {
                                            try {
                                                int readBytes = gzipStream2.read(buffer);
                                                if (readBytes > 0) {
                                                    byteOutStream2.write(buffer, 0, readBytes);
                                                } else {
                                                    try {
                                                        break;
                                                    } catch (Exception e) {
                                                        e = e;
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                e = e2;
                                                gzipStream = gzipStream2;
                                                throw new DecryptionException(e);
                                            }
                                        } catch (DecryptionException e3) {
                                            throw e3;
                                        } catch (BadPaddingException e4) {
                                            e = e4;
                                            throw new DecryptionException(e);
                                        } catch (IllegalBlockSizeException e5) {
                                            e = e5;
                                            throw new DecryptionException(e);
                                        } catch (Throwable th) {
                                            th = th;
                                            gzipStream = gzipStream2;
                                            byteOutStream = byteOutStream2;
                                            byteInStream = byteInStream2;
                                            if (gzipStream != null) {
                                                gzipStream.close();
                                            }
                                            if (byteInStream != null) {
                                                byteInStream.close();
                                            }
                                            if (byteOutStream != null) {
                                                byteOutStream.close();
                                            }
                                            throw th;
                                        }
                                        throw new IOException(e.toString());
                                    }
                                    str = new String(byteOutStream2.toByteArray(), "UTF-8");
                                    if (gzipStream2 != null) {
                                        gzipStream2.close();
                                    }
                                    if (byteInStream2 != null) {
                                        byteInStream2.close();
                                    }
                                    if (byteOutStream2 != null) {
                                        byteOutStream2.close();
                                    }
                                } catch (Exception e6) {
                                    e = e6;
                                }
                            } catch (Exception e7) {
                                e = e7;
                            }
                        } catch (DecryptionException e8) {
                            throw e8;
                        } catch (BadPaddingException e9) {
                            e = e9;
                        } catch (IllegalBlockSizeException e10) {
                            e = e10;
                        } catch (Throwable th2) {
                            th = th2;
                            byteOutStream = byteOutStream2;
                            byteInStream = byteInStream2;
                        }
                    } catch (DecryptionException e11) {
                        throw e11;
                    } catch (BadPaddingException e12) {
                        e = e12;
                    } catch (IllegalBlockSizeException e13) {
                        e = e13;
                    } catch (Exception e14) {
                        e = e14;
                    } catch (Throwable th3) {
                        th = th3;
                        byteInStream = byteInStream2;
                    }
                }
                return str;
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (DecryptionException e15) {
            throw e15;
        } catch (BadPaddingException e16) {
            e = e16;
        } catch (IllegalBlockSizeException e17) {
            e = e17;
        } catch (Exception e18) {
            e = e18;
        }
    }

    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() throws IOException {
        throw new UnsupportedOperationException("This writer does not support the read() method");
    }

    @Override // java.io.Reader
    public int read(char[] arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the read(char[]) method");
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] arg0, int arg1, int arg2) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the read(char[],int,int) method");
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the read(CharBuffer) method");
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public boolean ready() throws IOException {
        return this.reader.ready();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void reset() throws IOException {
        this.reader.reset();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public long skip(long arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the skip(long) method");
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void mark(int arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the mark(int) method");
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public boolean markSupported() {
        return false;
    }
}
