.class public abstract Lcom/odoo/mobile/core/DownloadRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/DownloadRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/core/DownloadRequest$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileName:Ljava/lang/String;

.field private final followUpRequestListener:Lcom/android/volley/Response$Listener;

.field private final params:Ljava/util/Map;

.field private final storageManager:Lcom/odoo/mobile/plugins/files/StorageManager;

.field private final successListener:Lcom/android/volley/Response$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/core/DownloadRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/core/DownloadRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/core/DownloadRequest;->Companion:Lcom/odoo/mobile/core/DownloadRequest$Companion;

    const-class v0, Lcom/odoo/mobile/core/DownloadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/core/DownloadRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/odoo/mobile/plugins/files/StorageManager;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followUpRequestListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/odoo/mobile/core/DownloadRequest;->params:Ljava/util/Map;

    iput-object p3, p0, Lcom/odoo/mobile/core/DownloadRequest;->storageManager:Lcom/odoo/mobile/plugins/files/StorageManager;

    iput-object p4, p0, Lcom/odoo/mobile/core/DownloadRequest;->successListener:Lcom/android/volley/Response$Listener;

    iput-object p6, p0, Lcom/odoo/mobile/core/DownloadRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/DownloadRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/RequestKt;->followUpRequest(Lcom/android/volley/VolleyError;Lcom/android/volley/Response$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/DownloadRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 2

    .line 0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/core/DownloadRequest;->storageManager:Lcom/odoo/mobile/plugins/files/StorageManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/DownloadRequest;->fileName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "fileName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/odoo/mobile/plugins/files/StorageManager;->saveToFile(Ljava/lang/String;[B)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/core/DownloadRequest;->successListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/volley/Request;->getErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/volley/VolleyError;

    const-string v1, "Response is null"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getParams()Ljava/util/Map;
    .locals 2

    invoke-super {p0}, Lcom/android/volley/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/core/DownloadRequest;->params:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 5

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Content-Disposition"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v4, "Content-Type"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v2, v1, v3, v0}, Lmozilla/components/support/utils/DownloadUtils;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/core/DownloadRequest;->fileName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string v1, "response.data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/volley/VolleyError;

    const-string v0, "Empty response"

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    const-string v0, "error(VolleyError(\"Empty response\"))"

    :goto_3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1

    const-string v0, "success(response.data, H\u2026seCacheHeaders(response))"

    goto :goto_3
.end method
