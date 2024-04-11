package com.android.volley.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class HttpResponse {
    private final int mStatusCode;
    private final List<String> mHeaders;
    private final int mContentLength;
    private final InputStream mContent;
    private final byte[] mContentBytes;

    public HttpResponse(int statusCode, List<String> headers) {
        this(statusCode, headers, -1, null);
    }

    public HttpResponse(int statusCode, List<String> headers, int contentLength, InputStream content) {
        this.mStatusCode = statusCode;
        this.mHeaders = headers;
        this.mContentLength = contentLength;
        this.mContent = content;
        this.mContentBytes = null;
    }

    public InputStream getContent() {
        if (mContent != null) {
            return mContent;
        }
        if (mContentBytes != null) {
            return new ByteArrayInputStream(mContentBytes);
        }
        return null;
    }

    public int getContentLength() {
        return mContentLength;
    }

    public List<String> getHeaders() {
        return Collections.unmodifiableList(mHeaders);
    }

    public int getStatusCode() {
        return mStatusCode;
    }
}
