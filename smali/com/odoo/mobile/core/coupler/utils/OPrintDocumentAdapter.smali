.class public Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "SourceFile"


# instance fields
.field private final adapter:Landroid/print/PrintDocumentAdapter;

.field private final webView:Lcom/odoo/mobile/core/widgets/OdooWebView;


# direct methods
.method private constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 1

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    const-string v0, "WebViewPrintDocument"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->adapter:Landroid/print/PrintDocumentAdapter;

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-void
.end method

.method public static print(Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    invoke-direct {v0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->process()V

    return-void
.end method

.method private process()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->refreshPage()V

    return-void

    :cond_0
    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->refreshPage()V

    return-void

    :cond_1
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v1

    const-string v2, "WebViewPrintDocument"

    invoke-virtual {v0, v2, p0, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method private refreshPage()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const-string v1, "(function (){ if(!document.querySelector(\'title\')) location.reload(); })();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->runJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->adapter:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    invoke-direct {p0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->refreshPage()V

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->adapter:Landroid/print/PrintDocumentAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->adapter:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method
