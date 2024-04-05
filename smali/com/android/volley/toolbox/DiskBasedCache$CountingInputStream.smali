package com.android.volley.toolbox;

import java.io.FilterInputStream;
import java.io.InputStream;

public class DiskBasedCache$CountingInputStream extends FilterInputStream {
    private long bytesRead;
    private final long length;

    public DiskBasedCache$CountingInputStream(InputStream in, long length) {
        super(in);
        this.length = length;
    }

    public long bytesRemaining() {
        return length - bytesRead;
    }

    @Override
    public int read() {
        int result = super.read();
        if (result != -1) {
            bytesRead++;
        }
        return result;
    }

    @Override
    public int read(byte[] buffer, int offset, int count) {
        int result = super.read(buffer, offset, count);
        if (result != -1) {
            bytesRead += result;
        }
        return result;
    }
}
