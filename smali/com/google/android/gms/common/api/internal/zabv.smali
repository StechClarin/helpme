.class public final Lcom/google/android/gms/common/api/internal/zabv;
.super Lcom/google/android/gms/common/api/internal/zaag;
.source "SourceFile"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/GoogleApi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApi;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
