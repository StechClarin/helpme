.class Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;

.field final synthetic val$arguments:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

.field final synthetic val$failReason:Ljava/lang/String;

.field final synthetic val$methodMeta:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;

.field final synthetic val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

.field final synthetic val$plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

.field final synthetic val$pluginCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

.field final synthetic val$pluginMethod:Ljava/lang/reflect/Method;

.field final synthetic val$reqPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Lcom/odoo/mobile/core/permissions/OPermissionManager;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Ljava/lang/String;[Ljava/lang/String;Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->this$0:Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;

    iput-object p2, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p3, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iput-object p4, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$failReason:Ljava/lang/String;

    iput-object p5, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$reqPermissions:[Ljava/lang/String;

    iput-object p6, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

    iput-object p7, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$methodMeta:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;

    iput-object p8, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginMethod:Ljava/lang/reflect/Method;

    iput-object p9, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$arguments:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    if-eqz v0, :cond_0

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->this$0:Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$failReason:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->access$000(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->permissionFail(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 7

    array-length p1, p1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$reqPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->this$0:Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;

    iget-object v2, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

    iget-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$methodMeta:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodType()Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    move-result-object v3

    iget-object v4, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$arguments:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    iget-object v6, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-static/range {v1 .. v6}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->access$100(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    :cond_0
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$permissionManager:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$pluginCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->this$0:Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;->val$failReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->access$000(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->permissionFail(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
