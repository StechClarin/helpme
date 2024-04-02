.class Lcom/odoo/mobile/WebViewActivity$2;
.super Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/WebViewActivity;->getWebChromeClient()Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/WebViewActivity;Lcom/odoo/mobile/core/widgets/OdooWebView;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-direct {p0, p2, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasSnackbar()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasPendingAttachments()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/odoo/mobile/core/utils/AttachmentManager;->handleFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1}, Lcom/odoo/mobile/WebViewActivity;->access$1200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/DeviceFileManager;

    move-result-object p1

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$2;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p1, p3, p2}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->openFileTypeChooser(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/webkit/ValueCallback;)V

    return v0
.end method
