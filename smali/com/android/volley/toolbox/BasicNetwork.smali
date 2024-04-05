package com.android.volley.toolbox;

import com.android.volley.Cache;
import com.android.volley.Network;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class BasicNetwork implements Network {
    private final BaseHttpStack mBaseHttpStack;
    private final HttpStack mHttpStack;
    private final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.mBaseHttpStack = baseHttpStack;
        this.mHttpStack = baseHttpStack;
        this.mPool = byteArrayPool;
    }

    @Override
    public NetworkResponse performRequest(Request<?> request) throws IOException {
        long startTimeMs = System.currentTimeMillis();

        while (true) {
            try {
                Cache.Entry entry = request.getCacheEntry();
                Map<String, String> headers = HttpHeaderParser.getCacheHeaders(entry);

                HttpResponse httpResponse = mBaseHttpStack.executeRequest(request, headers);

                int statusCode = httpResponse.getStatusCode();
                List<Header> responseHeaders = httpResponse.getHeaders();

                if (statusCode == HttpStatus.SC_NOT_MODIFIED) {
                    long requestLifetime = System.currentTimeMillis() - startTimeMs;
                    return NetworkUtility.getNotModifiedNetworkResponse(request, requestLifetime, responseHeaders);
                }

                InputStream inputStream = httpResponse.getContent();
                if (inputStream != null) {
                    int contentLength = httpResponse.getContentLength();
                    byte[] responseContents = NetworkUtility.inputStreamToBytes(inputStream, contentLength, mPool);
                    return new NetworkResponse(statusCode, responseContents, false, System.currentTimeMillis() - startTimeMs, responseHeaders);
                } else {
                    // Handle case where no content is returned
                    return new NetworkResponse(statusCode, null, false, System.currentTimeMillis() - startTimeMs, responseHeaders);
                }
            } catch (IOException e) {
                RetryInfo retryInfo = NetworkUtility.shouldRetryException(request, e, System.currentTimeMillis() - startTimeMs, httpResponse, responseContents);
                NetworkUtility.attemptRetryOnException(request, retryInfo);
            }
        }
    }
}
