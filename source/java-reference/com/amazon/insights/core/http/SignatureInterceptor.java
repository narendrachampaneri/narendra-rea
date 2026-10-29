package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.Preconditions;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.apache.commons.codec.binary.Base64;

/* JADX INFO: loaded from: classes2.dex */
public class SignatureInterceptor implements HttpClient.Interceptor {
    protected static final String AUTH_HEADER_SIGNATURE = "x-amzn-Request-Signature";
    protected static final String AUTH_HEADER_SIGNATURE_TIMESTAMP = "x-amzn-Request-Signature-Timestamp";
    private static final String TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss";
    private static Logger logger = Logger.getLogger(SignatureInterceptor.class);
    protected DateFormat df;
    private String privateKey;
    protected TimeZone timeZone;

    public SignatureInterceptor(String privateKey) {
        Preconditions.checkNotNull(privateKey, "A valid privateKey must be provided");
        this.privateKey = privateKey;
        this.timeZone = TimeZone.getTimeZone("GMT");
        this.df = DateUtil.createLocaleIndependentDateFormatter(TIME_FORMAT);
        this.df.setTimeZone(this.timeZone);
    }

    protected synchronized String getTimeStamp() {
        return this.df.format(new Date());
    }

    private String getPrivateKey() {
        return this.privateKey;
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void before(HttpClient.Request request) {
        try {
            String timeStamp = getTimeStamp();
            String encoding = request.getHeaders().get("Content-Encoding");
            boolean isBinary = HttpRequest.ENCODING_GZIP.equalsIgnoreCase(encoding);
            SignatureBuilder builder = new SignatureBuilder().withPrivateKey(getPrivateKey()).withHttpMethod(request.getMethod()).withFullPath(request.getUrl().substring(request.getUrl().lastIndexOf("/"))).withBody(request.getPostBodyBytes() != null ? request.getPostBodyBytes() : new byte[0]).withTimestamp(timeStamp).isBinaryRequest(isBinary);
            String signature = builder.createSignature();
            request.addHeader(AUTH_HEADER_SIGNATURE, signature);
            request.addHeader(AUTH_HEADER_SIGNATURE_TIMESTAMP, timeStamp);
        } catch (SignatureBuilderException e) {
            logger.e("error signing request: " + request, e);
        }
    }

    @Override // com.amazon.insights.core.http.HttpClient.Interceptor
    public void after(HttpClient.Response response) {
    }

    static final class SignatureBuilder {
        private static final String TAG = "SignatureBuilder";
        private byte[] body;
        private String fullPath;
        private String httpVerb;
        private boolean isBinaryRequest = false;
        private String privateKey;
        private String timestamp;

        SignatureBuilder() {
        }

        public SignatureBuilder withPrivateKey(String privateKey) {
            this.privateKey = privateKey;
            return this;
        }

        public SignatureBuilder withHttpMethod(HttpClient.HttpMethod httpMethod) {
            return withHttpVerb(httpMethod.toString());
        }

        public SignatureBuilder withHttpVerb(String httpVerb) {
            this.httpVerb = httpVerb;
            return this;
        }

        public SignatureBuilder withFullPath(String fullPath) {
            this.fullPath = fullPath;
            return this;
        }

        public SignatureBuilder withTimestamp(String timestamp) {
            this.timestamp = timestamp;
            return this;
        }

        public SignatureBuilder isBinaryRequest(boolean isBinaryRequest) {
            this.isBinaryRequest = isBinaryRequest;
            return this;
        }

        public SignatureBuilder withBody(byte[] body) {
            this.body = body;
            return this;
        }

        public String createSignature() throws SignatureBuilderException {
            try {
                byte[] hash = createHash();
                if (hash == null) {
                    return null;
                }
                String signature = new String(Base64.encodeBase64(hash), "UTF-8");
                return signature;
            } catch (UnsupportedEncodingException e) {
                throw new SignatureBuilderException("UTF-8 encoding unsupported", e);
            } catch (NoSuchAlgorithmException e2) {
                throw new SignatureBuilderException("SHA-256 unsupported", e2);
            }
        }

        private byte[] createHash() throws NoSuchAlgorithmException {
            String body = "";
            try {
                if (this.isBinaryRequest) {
                    String body2 = new String(Base64.encodeBase64(this.body), "UTF-8");
                    body = body2;
                } else {
                    String body3 = new String(this.body, "UTF-8");
                    body = body3;
                }
            } catch (UnsupportedEncodingException e) {
            }
            String corpus = this.httpVerb + "\n" + this.fullPath + "\n" + this.timestamp + "\n" + body + "\n" + this.privateKey;
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] result = digest.digest(corpus.getBytes());
            return result;
        }
    }
}
