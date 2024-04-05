package com.android.volley.toolbox;

import java.util.Comparator;

public class ByteArrayPool$1 implements Comparator<byte[]> {
    public ByteArrayPool$1() {
        super();
    }

    @Override
    public int compare(byte[] array1, byte[] array2) {
        int length1 = array1.length;
        int length2 = array2.length;
        return length1 - length2;
    }
}
