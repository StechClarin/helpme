.class final Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/OdooAPI;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/core/OdooAPI;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/OdooAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;->this$0:Lcom/odoo/mobile/core/OdooAPI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/volley/RequestQueue;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;->this$0:Lcom/odoo/mobile/core/OdooAPI;

    invoke-static {v0}, Lcom/odoo/mobile/core/OdooAPI;->access$getCookieManager(Lcom/odoo/mobile/core/OdooAPI;)Ljava/net/CookieManager;

    move-result-object v0

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;->this$0:Lcom/odoo/mobile/core/OdooAPI;

    invoke-static {v0}, Lcom/odoo/mobile/core/OdooAPI;->access$getContext$p(Lcom/odoo/mobile/core/OdooAPI;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "newRequestQueue(context.applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;->invoke()Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method
