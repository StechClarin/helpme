.class public abstract Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/backends/BackendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/datatransport/runtime/backends/BackendRequest;
.end method

.method public abstract setEvents(Ljava/lang/Iterable;)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
.end method

.method public abstract setExtras([B)Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
.end method