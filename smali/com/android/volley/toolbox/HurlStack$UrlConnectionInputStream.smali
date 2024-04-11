package com.android.volley.toolbox;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.io.IOException;
import java.net.HttpURLConnection;

class UrlConnectionInputStream extends FilterInputStream {
    private final HttpURLConnection mConnection;

    public UrlConnectionInputStream(HttpURLConnection connection) {
        super(connection.getInputStream());
        this.mConnection = connection;
    }

    @Override
    public void close() throws IOException {
        super.close();
        mConnection.disconnect();
    }
}
