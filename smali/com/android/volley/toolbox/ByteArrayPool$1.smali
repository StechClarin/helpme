.class Lcom/android/volley/toolbox/ByteArrayPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/ByteArrayPool$1;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 0

    .line 0
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

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
