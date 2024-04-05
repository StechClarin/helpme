package com.android.volley.toolbox;

import com.android.volley.Cache;
import com.android.volley.toolbox.HttpHeaderParser;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class DiskBasedCache$CacheHeader {
    public final String etag;
    public final String key;
    public final long lastModified;
    public final long serverDate;
    public final long size;
    public final long softTtl;
    public final long ttl;
    public final List<String> allResponseHeaders;

    public DiskBasedCache$CacheHeader(String key, Cache.Entry entry) {
        this(key, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, getAllResponseHeaders(entry));
    }

    private DiskBasedCache$CacheHeader(String key, String etag, long serverDate, long lastModified, long ttl, long softTtl, List<String> allResponseHeaders) {
        this.key = key;
        this.etag = ("".equals(etag) ? null : etag);
        this.serverDate = serverDate;
        this.lastModified = lastModified;
        this.ttl = ttl;
        this.softTtl = softTtl;
        this.allResponseHeaders = allResponseHeaders;
    }

    private static List<String> getAllResponseHeaders(Cache.Entry entry) {
        if (entry.allResponseHeaders != null) {
            return entry.allResponseHeaders;
        } else {
            Map<String, String> responseHeaders = entry.responseHeaders;
            return HttpHeaderParser.toAllHeaderList(responseHeaders);
        }
    }

    public static DiskBasedCache$CacheHeader readHeader(DiskBasedCache.CountingInputStream is) throws IOException {
        int magic = DiskBasedCache.readInt(is);
        if (magic == 0x20150306) {
            String key = DiskBasedCache.readString(is);
            String etag = DiskBasedCache.readString(is);
            long serverDate = DiskBasedCache.readLong(is);
            long lastModified = DiskBasedCache.readLong(is);
            long ttl = DiskBasedCache.readLong(is);
            long softTtl = DiskBasedCache.readLong(is);
            List<String> allResponseHeaders = DiskBasedCache.readHeaderList(is);
            return new DiskBasedCache$CacheHeader(key, etag, serverDate, lastModified, ttl, softTtl, allResponseHeaders);
        } else {
            throw new IOException();
        }
    }

    public Cache.Entry toCacheEntry(byte[] data) {
        Cache.Entry entry = new Cache.Entry();
        entry.data = data;
        entry.etag = etag;
        entry.serverDate = serverDate;
        entry.lastModified = lastModified;
        entry.ttl = ttl;
        entry.softTtl = softTtl;
        entry.responseHeaders = HttpHeaderParser.toHeaderMap(allResponseHeaders);
        entry.allResponseHeaders = Collections.unmodifiableList(allResponseHeaders);
        return entry;
    }

    public boolean writeHeader(OutputStream os) {
        try {
            DiskBasedCache.writeInt(os, 0x20150306);
            DiskBasedCache.writeString(os, key == null ? "" : key);
            DiskBasedCache.writeString(os, etag == null ? "" : etag);
            DiskBasedCache.writeLong(os, serverDate);
            DiskBasedCache.writeLong(os, lastModified);
            DiskBasedCache.writeLong(os, ttl);
            DiskBasedCache.writeLong(os, softTtl);
            DiskBasedCache.writeHeaderList(allResponseHeaders, os);
            os.flush();
            return true;
        } catch (IOException e) {
            VolleyLog.d("%s", e.toString());
            return false;
        }
    }
}
