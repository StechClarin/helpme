.class public Lcom/odoo/mobile/core/widgets/OdooWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.odoo.mobile.core.widgets.OdooWebView"


# instance fields
.field private appCompatActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$F_f7kxTMZoPXLbXWubeT3uTIviI(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->lambda$runJavaScript$0(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L-zV6ibcjcs1Vme_Ws-UC66T32w(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->lambda$runJavaScript$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/core/widgets/OdooWebView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->setDefaultSettings()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$runJavaScript$0(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private synthetic lambda$runJavaScript$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/odoo/mobile/core/widgets/OdooWebView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setDefaultSettings()V
    .locals 6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "4.0.6"

    aput-object v2, v4, v1

    const-string v2, "%s OdooMobile/%s (Android)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    new-instance v0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    const-string v2, "OdooDevicePolyfill"

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/odoo/mobile/core/coupler/WebJSCoupler;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/core/coupler/WebJSCoupler;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    const-string v2, "OdooDeviceUtility"

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->isHttpProtocol(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->mContext:Landroid/content/Context;

    const p2, 0x7f1100fc

    :goto_0
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cookie"

    invoke-virtual {v1, v0, p1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    new-instance p1, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/odoo/mobile/core/OdooAPIKt;->encodeHttpCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {v1, v0, p1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :cond_2
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->mContext:Landroid/content/Context;

    const p2, 0x7f110124

    goto :goto_0
.end method

.method public getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->appCompatActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    return-object v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    sget-object p2, Lcom/odoo/mobile/core/widgets/OdooWebView;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onDownloadStart() "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-static {p3, p2, p1, p4}, Lmozilla/components/support/utils/DownloadUtils;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/odoo/mobile/core/permissions/OPermissionManager;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/odoo/mobile/core/permissions/OPermissionManager;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x1d

    if-ge p4, p5, :cond_0

    const-string p4, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->hasPermissions([Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    new-instance p5, Lcom/odoo/mobile/core/widgets/OdooWebView$1;

    invoke-direct {p5, p0, p3, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView$1;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p5, p1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public runJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/widgets/OdooWebView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setActivity(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebView;->appCompatActivity:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    return-void
.end method
