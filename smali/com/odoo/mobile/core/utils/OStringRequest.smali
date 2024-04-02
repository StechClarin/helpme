.class public abstract Lcom/odoo/mobile/core/utils/OStringRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# instance fields
.field private final followUpRequestListener:Lcom/android/volley/Response$Listener;

.field private final parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 1

    const-string v0, "followUpRequestListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/OStringRequest;->parameters:Ljava/util/Map;

    iput-object p6, p0, Lcom/odoo/mobile/core/utils/OStringRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/OStringRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/RequestKt;->followUpRequest(Lcom/android/volley/VolleyError;Lcom/android/volley/Response$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3

    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "super.getHeaders()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/OStringRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method
