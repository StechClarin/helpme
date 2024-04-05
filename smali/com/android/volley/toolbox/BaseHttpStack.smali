package com.android.volley.toolbox;
# c'est chiant
import com.android.volley.Request;
import com.android.volley.toolbox.HttpResponse;

import java.util.Map;

public abstract class BaseHttpStack implements HttpStack {
    public BaseHttpStack() {
        super();
    }

    public abstract HttpResponse executeRequest(Request<?> request, Map<String, String> additionalHeaders);
}
