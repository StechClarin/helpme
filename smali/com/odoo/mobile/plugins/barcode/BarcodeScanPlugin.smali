.class public Lcom/odoo/mobile/plugins/barcode/BarcodeScanPlugin;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/utils/ActivityResultListener;


# static fields
.field private static final REQUEST_BARCODE_SCAN:I = 0x1


# instance fields
.field private callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "barcode"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "android.permission.CAMERA"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->requirePermissions([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGetActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "key_content"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/barcode/BarcodeScanPlugin;->callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/BarcodeScanPlugin;->callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scanBarcode(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 2

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/BarcodeScanPlugin;->callback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;

    invoke-interface {p1, p0}, Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;->setActivityResultListener(Lcom/odoo/mobile/core/utils/ActivityResultListener;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/odoo/mobile/plugins/barcode/ui/BarcodeScanActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;->openActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
