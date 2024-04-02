.class final Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;
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


# static fields
.field public static final INSTANCE:Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;

    invoke-direct {v0}, Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;-><init>()V

    sput-object v0, Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;->INSTANCE:Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;->invoke()Ljava/net/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/net/CookieManager;
    .locals 1

    .line 0
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method
