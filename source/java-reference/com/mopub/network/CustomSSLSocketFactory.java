package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {
    private SSLSocketFactory mCertificateSocketFactory;

    private CustomSSLSocketFactory() {
    }

    public static CustomSSLSocketFactory getDefault(int handshakeTimeoutMillis) {
        CustomSSLSocketFactory factory = new CustomSSLSocketFactory();
        factory.mCertificateSocketFactory = SSLCertificateSocketFactory.getDefault(handshakeTimeoutMillis, null);
        return factory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket();
        enableTlsIfAvailable(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String host, int i) throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket(host, i);
        enableTlsIfAvailable(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String host, int port, InetAddress localhost, int localPort) throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket(host, port, localhost, localPort);
        enableTlsIfAvailable(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress address, int port) throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket(address, port);
        enableTlsIfAvailable(socket);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress address, int port, InetAddress localhost, int localPort) throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket(address, port, localhost, localPort);
        enableTlsIfAvailable(socket);
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.mCertificateSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.mCertificateSocketFactory.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socketParam, String host, int port, boolean autoClose) throws IOException {
        Socket socket = this.mCertificateSocketFactory.createSocket(socketParam, host, port, autoClose);
        enableTlsIfAvailable(socket);
        return socket;
    }

    private void enableTlsIfAvailable(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sslSocket = (SSLSocket) socket;
            String[] supportedProtocols = sslSocket.getSupportedProtocols();
            sslSocket.setEnabledProtocols(supportedProtocols);
        }
    }
}
