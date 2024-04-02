.class Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/notify/NotifyPlugin;->showSnackBar(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/plugins/notify/NotifyPlugin;

.field final synthetic val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/notify/NotifyPlugin;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;->this$0:Lcom/odoo/mobile/plugins/notify/NotifyPlugin;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$Callback;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;->val$callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/plugins/notify/NotifyPlugin$1;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
