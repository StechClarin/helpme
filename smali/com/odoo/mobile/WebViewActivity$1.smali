.class Lcom/odoo/mobile/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/WebViewActivity;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private getErrorMessage(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Url: %s - Status Code: %d - %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\A"

    invoke-virtual {v0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private handleWebErrors(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    const-string v0, "web"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x8

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, -0x6

    if-eq p1, p2, :cond_1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    sget-object p2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    sget-object p2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->TIME_OUT:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    :goto_0
    invoke-static {p1, v0, p2, p3}, Lcom/odoo/mobile/WebViewActivity;->access$500(Lcom/odoo/mobile/WebViewActivity;ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private shouldOverrideURL(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->isAboutScheme(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->isHttpProtocol(Landroid/net/Uri;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_1
    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v1}, Lcom/odoo/mobile/WebViewActivity;->access$000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v5, v0}, Lcom/odoo/mobile/WebViewActivity;->access$100(Lcom/odoo/mobile/WebViewActivity;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v5, p1}, Lcom/odoo/mobile/WebViewActivity;->access$400(Lcom/odoo/mobile/WebViewActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->isExpiredOdooShDatabase(Landroid/net/Uri;)Z

    move-result p1

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/utils/UriKt;->isExpiredSaasDatabase(Landroid/net/Uri;Lcom/odoo/mobile/accounts/OdooUser;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    sget-object v2, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->DATABASE_EXPIRED:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-static {v1, v4, v2, v3}, Lcom/odoo/mobile/WebViewActivity;->access$500(Lcom/odoo/mobile/WebViewActivity;ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    return v4

    :cond_5
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1, v0}, Lcom/odoo/mobile/WebViewActivity;->access$600(Lcom/odoo/mobile/WebViewActivity;Landroid/net/Uri;)V

    return v4

    :cond_6
    return v2

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1}, Lcom/odoo/mobile/WebViewActivity;->access$200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1}, Lcom/odoo/mobile/WebViewActivity;->access$200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/UserSession;->removeSession()V

    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    const-class v2, Lcom/odoo/mobile/UserLoginActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v0}, Lcom/odoo/mobile/WebViewActivity;->access$300(Lcom/odoo/mobile/WebViewActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v1, :cond_9

    const-string v0, "user_name"

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return v4
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasSnackbar()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasPendingAttachments()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p3}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/odoo/mobile/core/utils/AttachmentManager;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2, p1}, Lcom/odoo/mobile/WebViewActivity;->access$700(Lcom/odoo/mobile/WebViewActivity;Landroid/webkit/WebView;)V

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/odoo/mobile/WebViewActivity;->access$800(Lcom/odoo/mobile/WebViewActivity;Z)V

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasSnackbar()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasPendingAttachments()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->showSnackbar(Landroid/webkit/WebView;)V

    :cond_0
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1}, Lcom/odoo/mobile/WebViewActivity;->access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2}, Lcom/odoo/mobile/WebViewActivity;->access$200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object p2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v0}, Lcom/odoo/mobile/WebViewActivity;->access$1000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/odoo/mobile/core/utils/AttachmentManager;->updateAvailableApps(Lcom/odoo/mobile/core/utils/UserSession;Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "Url: %s - Status Code: %d - %s"

    invoke-static {v0, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcom/odoo/mobile/WebViewActivity$1;->handleWebErrors(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p1}, Lcom/odoo/mobile/WebViewActivity;->access$000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    invoke-static {p3}, Lcom/odoo/mobile/core/utils/OTextUtils;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-virtual {p2, p3, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {v0, p1}, Lcom/odoo/mobile/WebViewActivity;->access$400(Lcom/odoo/mobile/WebViewActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-static {p2}, Lcom/odoo/mobile/WebViewActivity;->access$000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p2

    iget-object p2, p2, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    invoke-static {p2}, Lcom/odoo/mobile/core/utils/OTextUtils;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/odoo/mobile/WebViewActivity$1;->getErrorMessage(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/odoo/mobile/WebViewActivity;->access$1100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/odoo/mobile/WebViewActivity$1;->this$0:Lcom/odoo/mobile/WebViewActivity;

    const/4 p3, 0x1

    sget-object v0, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->INTERNAL_SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-static {p2, p3, v0, p1}, Lcom/odoo/mobile/WebViewActivity;->access$500(Lcom/odoo/mobile/WebViewActivity;ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity$1;->shouldOverrideURL(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
