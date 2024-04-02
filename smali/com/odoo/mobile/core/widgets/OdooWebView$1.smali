.class Lcom/odoo/mobile/core/widgets/OdooWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/permissions/PermissionStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/widgets/OdooWebView;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/core/widgets/OdooWebView;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$permissionMgr:Lcom/odoo/mobile/core/permissions/OPermissionManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iput-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$permissionMgr:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iput-object p3, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied([Ljava/lang/String;)V
    .locals 2

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-static {p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->access$000(Lcom/odoo/mobile/core/widgets/OdooWebView;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f11012e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public granted([Ljava/lang/String;)V
    .locals 2

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->this$0:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestRationale(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebView$1;->val$permissionMgr:Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->showRequestRationale(Ljava/lang/String;)V

    return-void
.end method
