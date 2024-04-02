.class public final Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/voip/VoIPPlugins;->setupVoip(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

.field final synthetic $permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;->$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 1

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

    iget-object p1, p0, Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;->$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 1

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

    iget-object p1, p0, Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;->$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/voip/VoIPPlugins$setupVoip$1;->$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    return-void
.end method
