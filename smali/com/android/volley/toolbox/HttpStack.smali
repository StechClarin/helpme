package com.android.volley.toolbox;

import java.io.IOException;
import java.util.Map;

public interface HttpStack {
    HttpResponse executeRequest(Request<?> request, Map<String, String> additionalHeaders) throws IOException;
}
