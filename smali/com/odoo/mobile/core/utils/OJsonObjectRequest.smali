.class public abstract Lcom/odoo/mobile/core/utils/OJsonObjectRequest;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "SourceFile"


# instance fields
.field private final followUpRequestListener:Lcom/android/volley/Response$Listener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 1

    const-string v0, "followUpRequestListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p6, p0, Lcom/odoo/mobile/core/utils/OJsonObjectRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/OJsonObjectRequest;->followUpRequestListener:Lcom/android/volley/Response$Listener;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/RequestKt;->followUpRequest(Lcom/android/volley/VolleyError;Lcom/android/volley/Response$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
