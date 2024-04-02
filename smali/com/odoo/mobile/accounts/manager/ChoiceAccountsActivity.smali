.class public Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;
.super Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.odoo.mobile.accounts.manager.ChoiceAccountsActivity"


# direct methods
.method public static synthetic $r8$lambda$NXH_nnAAGEQ35pylEuQc8FITHKU(Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->lambda$init$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;-><init>()V

    return-void
.end method

.method private createAccount(Landroid/content/Intent;)V
    .locals 3

    const-class v0, Lcom/odoo/mobile/Login;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_new_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->launchIntentWithCurrentData(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method private filterAdapterAccountByHost(Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getOdooAccountManager()Lcom/odoo/mobile/accounts/OdooAccountManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccountsByURI(Landroid/net/Uri;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->setAllAccounts(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1
.end method

.method private init(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "INTENT_ENTRY_POINT"

    sget-object v1, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/odoo/mobile/core/utils/FirebaseUtils;->getURLFromFirebaseDynamicLinks(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "shortcut_redirect_url"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->filterAdapterAccountByHost(Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->openLinkInExternalBrowser(Landroid/net/Uri;)V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->getShortcutUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->getShortcutOdooUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->switchAccount(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "selected_user"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->switchAccount(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getAllAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v0, p0, p1}, Lcom/odoo/mobile/accounts/OdooUser;->switchToAccount(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getItemCount()I

    move-result v1

    if-ge v1, v3, :cond_4

    const-class v0, Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->launchIntentWithCurrentData(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void

    :cond_4
    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->setSrc(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->setAllowRemove(Z)V

    const v0, 0x7f090160

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->createAccount(Landroid/content/Intent;)V

    return-void
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 1

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchIntentWithCurrentData(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2, p1}, Lcom/odoo/mobile/core/utils/IntentUtils;->fillIntentWithSource(Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-direct {p0, p2}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private openLinkInExternalBrowser(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/IntentUtils;->getOpenLinkInExternalBrowserIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private switchAccount(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getAllAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0, p2}, Lcom/odoo/mobile/accounts/OdooUser;->switchToAccount(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->init(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->init(Landroid/content/Intent;)V

    return-void
.end method
