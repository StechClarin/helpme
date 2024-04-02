.class public Lcom/odoo/mobile/WebViewActivity;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/odoo/mobile/core/utils/ActivityResultIntentListener;
.implements Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.odoo.mobile.WebViewActivity"


# instance fields
.field private attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field private deviceFileManager:Lcom/odoo/mobile/core/utils/DeviceFileManager;

.field private errorReason:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

.field private extra:Landroid/os/Bundle;

.field private hasError:Z

.field private isFirstRun:Z

.field private mActivityResultListener:Lcom/odoo/mobile/core/utils/ActivityResultListener;

.field private odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

.field private odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

.field private overrideBackButton:Z

.field private previousUrlLoaded:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private timer:Ljava/util/Timer;

.field private userChanged:Z

.field private userSession:Lcom/odoo/mobile/core/utils/UserSession;


# direct methods
.method public static synthetic $r8$lambda$A06bglLdFk1sjIxMqS3NMGRl1hY(Lcom/odoo/mobile/WebViewActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->lambda$toggleErrorStatus$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CztD0RkxBOS12WEpgkkZw3lds8s(Lcom/odoo/mobile/WebViewActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/WebViewActivity;->lambda$toggleErrorStatus$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDNqK28LLlUetKyXZPgyntNaAv0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->lambda$openCustomTabsIntent$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->hasError:Z

    sget-object v1, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->INTERNAL_SERVER_ERROR:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    iput-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->errorReason:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->overrideBackButton:Z

    new-instance v1, Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-direct {v1}, Lcom/odoo/mobile/core/utils/AttachmentManager;-><init>()V

    iput-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->userChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->isFirstRun:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->previousUrlLoaded:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/accounts/OdooUser;
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/odoo/mobile/WebViewActivity;Landroid/net/Uri;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->isNotAuthenticatedURL(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/widgets/OdooWebView;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/WebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/DeviceFileManager;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/WebViewActivity;->deviceFileManager:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/UserSession;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/WebViewActivity;->userSession:Lcom/odoo/mobile/core/utils/UserSession;

    return-object p0
.end method

.method static synthetic access$300(Lcom/odoo/mobile/WebViewActivity;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/odoo/mobile/WebViewActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->isLocalURL(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/odoo/mobile/WebViewActivity;ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/WebViewActivity;->toggleErrorStatus(ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/odoo/mobile/WebViewActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->openCustomTabsIntent(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcom/odoo/mobile/WebViewActivity;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->polyfillWindowPrint(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/odoo/mobile/WebViewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/odoo/mobile/WebViewActivity;)Lcom/odoo/mobile/core/utils/AttachmentManager;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    return-object p0
.end method

.method private checkForPromoRedirect()V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/odoo/mobile/WebViewActivity;->openCustomTabsIntent(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private extractURLFromNotification()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "message_cache_key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/odoo/mobile/plugins/fcm/utils/DeleteNotificationReceiver;->removeRecentMessages(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "model"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mail.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "res_id"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    const-string v0, "id=%s&model=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/odoo/mobile/WebViewActivity;->userChanged:Z

    invoke-direct {p0, v0, v1}, Lcom/odoo/mobile/WebViewActivity;->getWebClientURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "action"

    const-string v6, "mail.mail_channel_action_client_chat"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object v1, v4, v2

    const-string v0, "action=%s&active_id=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getOdooUser()Lcom/odoo/mobile/accounts/OdooUser;
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "ocn_token"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    iget-object v2, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccountByOCNToken(Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v1, v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->makeActive(Lcom/odoo/mobile/accounts/OdooUser;)V

    :goto_1
    return-object v0
.end method

.method private getWebChromeClient()Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;
    .locals 3

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$2;

    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iget-object v2, p0, Lcom/odoo/mobile/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-direct {v0, p0, v1, v2}, Lcom/odoo/mobile/WebViewActivity$2;-><init>(Lcom/odoo/mobile/WebViewActivity;Lcom/odoo/mobile/core/widgets/OdooWebView;Landroid/widget/ProgressBar;)V

    return-object v0
.end method

.method private getWebClientURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "web"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "=0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/WebViewActivity$1;-><init>(Lcom/odoo/mobile/WebViewActivity;)V

    return-object v0
.end method

.method private hasRecordAction()Z
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "record_action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasShortcutRedirectURL()Z
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "shortcut_redirect_url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initOdooUser()Lcom/odoo/mobile/accounts/OdooUser;
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/odoo/mobile/accounts/OdooUser;->isSameAccount(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->userChanged:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAnyAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    goto :goto_1

    :cond_1
    const-class v0, Lcom/odoo/mobile/Login;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {v1, p0}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->userSession:Lcom/odoo/mobile/core/utils/UserSession;

    invoke-virtual {v0}, Lcom/odoo/mobile/core/utils/UserSession;->injectSession()V

    return-object v1
.end method

.method private initProgress()V
    .locals 3

    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private initWebView()V
    .locals 2

    const v0, 0x7f09022e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/odoo/mobile/core/widgets/OdooWebView;

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0, p0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->setActivity(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getWebChromeClient()Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private isLocalURL(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->getOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/web"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "^/(?:my|[^/]+/my)/?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/pos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/mail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private isNotAuthenticatedURL(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/web/login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "/web/session/logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "/web/database/selector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "/web/database/manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static synthetic lambda$openCustomTabsIntent$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$toggleErrorStatus$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "clipboard"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-eqz p2, :cond_0

    const-string v0, "odoo_error_debug"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110075

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleErrorStatus$1(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->NONE:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/odoo/mobile/WebViewActivity;->toggleErrorStatus(ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V

    invoke-direct {p0, v1}, Lcom/odoo/mobile/WebViewActivity;->loadPage(Ljava/lang/String;)V

    return-void
.end method

.method private loadPage(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iget-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->userChanged:Z

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/WebViewActivity;->getWebClientURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/odoo/mobile/WebViewActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "loadPage with %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/odoo/mobile/WebViewActivity;->previousUrlLoaded:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "loadPage cancelled to avoid reload"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->previousUrlLoaded:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->dismissAllDialog()V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private openCustomTabsIntent(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v1, 0x7f060034

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setDefaultColorSchemeParams(Landroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :try_start_0
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f110137

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda2;-><init>()V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method private polyfillWindowPrint(Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "(function (window){ window.print = function () { OdooDevicePolyfill.print(); } })(window);"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private toggleErrorStatus(ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V
    .locals 6

    iput-boolean p1, p0, Lcom/odoo/mobile/WebViewActivity;->hasError:Z

    iput-object p2, p0, Lcom/odoo/mobile/WebViewActivity;->errorReason:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V

    sget-object v0, Lcom/odoo/mobile/WebViewActivity$4;->$SwitchMap$com$odoo$mobile$WebViewActivity$ConnectionFailReason:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    move v2, v1

    goto :goto_3

    :cond_0
    const v0, 0x7f11004d

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f110076

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/NetworkUtilsKt;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f11012c

    goto :goto_2

    :cond_3
    const v0, 0x7f1100f9

    goto :goto_1

    :cond_4
    const v0, 0x7f110138

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const v3, 0x7f090161

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz p1, :cond_5

    move v5, v1

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_8

    const p1, 0x7f0900d0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v2, :cond_6

    const v2, 0x7f0800a9

    goto :goto_5

    :cond_6
    const v2, 0x7f0800aa

    :goto_5
    invoke-static {p1, v2}, Lcom/odoo/mobile/core/utils/OControlUtils;->setImage(Landroid/view/View;I)V

    new-instance v2, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900d2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f110136

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f0900d1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f090192

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object p3, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->DATABASE_EXPIRED:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    if-ne p2, p3, :cond_7

    move v1, v4

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/odoo/mobile/WebViewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/WebViewActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method private toggleProgress(Z)V
    .locals 3

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090072

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/odoo/mobile/WebViewActivity$3;

    invoke-direct {p1, p0, v0}, Lcom/odoo/mobile/WebViewActivity$3;-><init>(Lcom/odoo/mobile/WebViewActivity;Landroid/view/View;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->timer:Ljava/util/Timer;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->timer:Ljava/util/Timer;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->deviceFileManager:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/odoo/mobile/core/utils/DeviceFileManager;->handleResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->mActivityResultListener:Lcom/odoo/mobile/core/utils/ActivityResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/odoo/mobile/core/utils/ActivityResultListener;->onGetActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAnyAccount()Z

    move-result p1

    if-nez p1, :cond_1

    const-class p1, Lcom/odoo/mobile/Login;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-nez p1, :cond_2

    const-class p1, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/odoo/mobile/WebViewActivity;->overrideBackButton:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const-string v1, "(function () { document.dispatchEvent(new Event(\'backbutton\')); })();"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->runJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090072

    if-eq p1, v1, :cond_1

    const v1, 0x7f0901ec

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    new-instance p1, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    new-instance p1, Lcom/odoo/mobile/core/utils/DeviceFileManager;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/core/utils/DeviceFileManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->deviceFileManager:Lcom/odoo/mobile/core/utils/DeviceFileManager;

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->initOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->initProgress()V

    const p1, 0x7f0901ec

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V

    sget-object p1, Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;->NONE:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/odoo/mobile/WebViewActivity;->toggleErrorStatus(ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->initWebView()V

    invoke-direct {p0, v1}, Lcom/odoo/mobile/WebViewActivity;->loadPage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->checkForPromoRedirect()V

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->handleIncomingAttachments(Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/odoo/mobile/WebViewActivity;->isFirstRun:Z

    invoke-virtual {p0, p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->setKeyboardVisibilityListener(Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;)V

    return-void
.end method

.method public onKeyboardVisibilityChanged(Z)V
    .locals 2

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasSnackbar()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->hasPendingAttachments()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->attachmentManager:Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->handleIncomingAttachments(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V

    iget-boolean p1, p0, Lcom/odoo/mobile/WebViewActivity;->hasError:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity;->errorReason:Lcom/odoo/mobile/WebViewActivity$ConnectionFailReason;

    invoke-direct {p0, p1, v1, v0}, Lcom/odoo/mobile/WebViewActivity;->toggleErrorStatus(ZLcom/odoo/mobile/WebViewActivity$ConnectionFailReason;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->initOdooUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->hasRecordAction()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->hasShortcutRedirectURL()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/odoo/mobile/WebViewActivity;->isFirstRun:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/odoo/mobile/WebViewActivity;->loadPage(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->hasRecordAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->extractURLFromNotification()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/odoo/mobile/WebViewActivity;->loadPage(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/odoo/mobile/WebViewActivity;->hasShortcutRedirectURL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity;->extra:Landroid/os/Bundle;

    const-string v1, "shortcut_redirect_url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public openActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setActivityResultListener(Lcom/odoo/mobile/core/utils/ActivityResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity;->mActivityResultListener:Lcom/odoo/mobile/core/utils/ActivityResultListener;

    return-void
.end method

.method public setOverrideBackButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/odoo/mobile/WebViewActivity;->overrideBackButton:Z

    return-void
.end method
