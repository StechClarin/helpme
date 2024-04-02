.class Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

.field final synthetic val$s:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;Landroid/text/Editable;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;->this$0:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;->val$s:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;->val$s:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "search"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "term"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;->this$0:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    invoke-static {v0}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->access$000(Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;)Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
