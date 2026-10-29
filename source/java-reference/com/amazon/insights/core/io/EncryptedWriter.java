package com.amazon.insights.core.io;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Writer;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import org.apache.commons.codec.binary.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedWriter extends Writer {
    private Cipher cipher;
    private final Writer writer;

    public EncryptedWriter(Writer writer, SecretKey secretKey) {
        this.cipher = null;
        this.writer = writer;
        try {
            this.cipher = Cipher.getInstance(secretKey.getAlgorithm());
            this.cipher.init(1, secretKey);
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

    @Override // java.io.Writer
    public void write(String str) throws Throwable {
        if (this.cipher == null) {
            throw new IOException("Could not build a Cipher to encrpyt the string");
        }
        ByteArrayOutputStream byteStream = null;
        GZIPOutputStream gzipStream = null;
        try {
            ByteArrayOutputStream byteStream2 = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gzipStream2 = new GZIPOutputStream(byteStream2);
                try {
                    gzipStream2.write(str.getBytes("UTF-8"));
                    gzipStream2.close();
                    try {
                        byte[] encryptedBytes = Base64.encodeBase64(this.cipher.doFinal(byteStream2.toByteArray()));
                        this.writer.write(new String(encryptedBytes, "UTF-8") + "\n");
                        if (byteStream2 != null) {
                            byteStream2.close();
                        }
                        if (gzipStream2 != null) {
                            gzipStream2.close();
                        }
                    } catch (Exception e) {
                        throw new IOException(e.toString());
                    }
                } catch (Throwable th) {
                    th = th;
                    gzipStream = gzipStream2;
                    byteStream = byteStream2;
                    if (byteStream != null) {
                        byteStream.close();
                    }
                    if (gzipStream != null) {
                        gzipStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                byteStream = byteStream2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // java.io.Writer
    public void write(String str, int off, int len) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(String,int,int) method");
    }

    @Override // java.io.Writer
    public void write(char[] chars) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(char[]) method");
    }

    @Override // java.io.Writer
    public void write(char[] arg0, int arg1, int arg2) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(char[],int,int) method");
    }

    @Override // java.io.Writer
    public void write(int arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(int) method");
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(char) method");
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence arg0, int arg1, int arg2) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(CharSequence,int,int) method");
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence arg0) throws IOException {
        throw new UnsupportedOperationException("This writer does not support the write(CharSequence) method");
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.writer.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.writer.flush();
    }
}
