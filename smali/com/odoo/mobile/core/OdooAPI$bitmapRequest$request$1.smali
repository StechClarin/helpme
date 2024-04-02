.class public final Lcom/odoo/mobile/core/OdooAPI$bitmapRequest$request$1;
.super Lcom/odoo/mobile/core/utils/OImageRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $httpUserCredentials:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 9

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAPI$bitmapRequest$request$1;->$httpUserCredentials:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/odoo/mobile/core/utils/OImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 2

    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "super.getHeaders()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$bitmapRequest$request$1;->$httpUserCredentials:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/OdooAPIKt;->createRequestHeaders(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
