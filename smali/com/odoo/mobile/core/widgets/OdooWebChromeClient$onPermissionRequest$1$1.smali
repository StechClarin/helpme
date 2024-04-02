.class public final Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $deniedResource:Ljava/util/Collection;

.field final synthetic $grantedResource:Ljava/util/Collection;

.field final synthetic $it:Ljava/lang/String;

.field final synthetic $permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

.field final synthetic $request:Landroid/webkit/PermissionRequest;

.field final synthetic this$0:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/util/Collection;Ljava/lang/String;Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;Landroid/webkit/PermissionRequest;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$grantedResource:Ljava/util/Collection;

    iput-object p3, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$it:Ljava/lang/String;

    iput-object p4, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    iput-object p5, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$request:Landroid/webkit/PermissionRequest;

    iput-object p6, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$deniedResource:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$deniedResource:Ljava/util/Collection;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$it:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$request:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$grantedResource:Ljava/util/Collection;

    iget-object v2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$deniedResource:Ljava/util/Collection;

    invoke-static {p1, v0, v1, v2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->access$grantDenyResource(Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$grantedResource:Ljava/util/Collection;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$it:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$request:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$grantedResource:Ljava/util/Collection;

    iget-object v2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$deniedResource:Ljava/util/Collection;

    invoke-static {p1, v0, v1, v2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->access$grantDenyResource(Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    return-void
.end method
