.class public final Lcom/odoo/mobile/core/OdooAPI$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/core/OdooAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildSessionCookie(Landroid/net/Uri;Ljava/lang/String;)Ljava/net/HttpCookie;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/net/HttpCookie;

    const-string v1, "session_id"

    invoke-direct {v0, v1, p2}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/odoo/mobile/core/OdooAPI;->access$getINSTANCE$cp()Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/odoo/mobile/core/OdooAPI;->access$getINSTANCE$cp()Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/odoo/mobile/core/OdooAPI;

    invoke-direct {v0, p1}, Lcom/odoo/mobile/core/OdooAPI;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/odoo/mobile/core/OdooAPI;->access$setINSTANCE$cp(Lcom/odoo/mobile/core/OdooAPI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final setUpgradeHttpsListener(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/odoo/mobile/core/OdooAPI;->access$setUpgradeHttpsListener$cp(Ljava/lang/Runnable;)V

    return-void
.end method
