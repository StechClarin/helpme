.class public Lcom/odoo/mobile/CreateAccount;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$aQrwGIPqCY6EfZuNxexgbpghSdY(Lcom/odoo/mobile/CreateAccount;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/CreateAccount;->createAccount(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/CreateAccount;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/CreateAccount;->toggleProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/odoo/mobile/CreateAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/CreateAccount;->createUserAccount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createAccount(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->createAccount(Lcom/odoo/mobile/accounts/OdooUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->makeActive(Lcom/odoo/mobile/accounts/OdooUser;)V

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->startWebViewActivity(Lcom/odoo/mobile/accounts/OdooUser;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11012d

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/odoo/mobile/CreateAccount;->toggleCreateAccountProgress(Z)V

    :goto_0
    return-void
.end method

.method private createUserAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/odoo/mobile/CreateAccount;->toggleCreateAccountProgress(Z)V

    new-instance v0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    new-instance p1, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/CreateAccount;)V

    new-instance v1, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/CreateAccount;)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private toggleCreateAccountProgress(Z)V
    .locals 1

    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private toggleProgress(Z)V
    .locals 1

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/CreateAccount;->toggleProgress(Z)V

    const p1, 0x7f090184

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f09022e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0, p0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->setActivity(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    new-instance v1, Lcom/odoo/mobile/CreateAccount$1;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/CreateAccount$1;-><init>(Lcom/odoo/mobile/CreateAccount;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    invoke-direct {v1, v0, p1}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string p1, "https://www.odoo.com/trial?form_light=true"

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public showError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/odoo/mobile/CreateAccount;->toggleCreateAccountProgress(Z)V

    invoke-super {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->showError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
