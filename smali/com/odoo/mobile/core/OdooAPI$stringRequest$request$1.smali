.class public final Lcom/odoo/mobile/core/OdooAPI$stringRequest$request$1;
.super Lcom/odoo/mobile/core/utils/OStringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/OdooAPI;->stringRequest(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $httpUserCredentials:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 7

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAPI$stringRequest$request$1;->$httpUserCredentials:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/odoo/mobile/core/utils/OStringRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 2

    invoke-super {p0}, Lcom/odoo/mobile/core/utils/OStringRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$stringRequest$request$1;->$httpUserCredentials:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/OdooAPIKt;->createRequestHeaders(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
