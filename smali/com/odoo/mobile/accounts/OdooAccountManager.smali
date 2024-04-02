.class public final Lcom/odoo/mobile/accounts/OdooAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/accounts/OdooAccountManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/accounts/OdooAccountManager$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$M8_yI7gWcjPxvUxQcuOKNmH2_HQ(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->removeAccount$lambda$6(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g-PzPKJOmwx4UU-r6WMFimwGE4I(Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->removeAccount$lambda$5(Lorg/json/JSONObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/accounts/OdooAccountManager;->Companion:Lcom/odoo/mobile/accounts/OdooAccountManager$Companion;

    const-class v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/accounts/OdooAccountManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "get(mContext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method private final findAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method private final getAccounts()[Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->mContext:Landroid/content/Context;

    const v1, 0x7f11001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mContext.getString(R.string.account_type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "accountManager.getAccountsByType(accountType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final removeAccount$lambda$5(Lorg/json/JSONObject;)V
    .locals 3

    sget-object v0, Lcom/odoo/mobile/accounts/OdooAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account synchronise with success on OCN server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final removeAccount$lambda$6(Lcom/android/volley/VolleyError;)V
    .locals 2

    sget-object v0, Lcom/odoo/mobile/accounts/OdooAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to synchronise to OCN server"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final createAccount(Lcom/odoo/mobile/accounts/OdooUser;)Z
    .locals 4

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user.accountName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->mContext:Landroid/content/Context;

    const v3, 0x7f11001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/odoo/mobile/accounts/OdooUser;->account:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "N/A"

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final getAccount(Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;
    .locals 1

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->findAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p1}, Lcom/odoo/mobile/accounts/OdooUser;->fromBundle(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    return-object p1
.end method

.method public final getAccountByOCNToken(Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;
    .locals 6

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v3, v2, Lcom/odoo/mobile/accounts/OdooUser;->ocn_token:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    if-nez v3, :cond_3

    iget-object v2, v2, Lcom/odoo/mobile/accounts/OdooUser;->ocn_token:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    if-eqz v4, :cond_0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/odoo/mobile/accounts/OdooUser;

    return-object v1
.end method

.method public final getAccountsByURI(Landroid/net/Uri;)Ljava/util/List;
    .locals 5

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v3, v3, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;
    .locals 3

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v2, v2, Lcom/odoo/mobile/accounts/OdooUser;->active:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/odoo/mobile/accounts/OdooUser;

    return-object v1
.end method

.method public final getUserAccounts()Ljava/util/List;
    .locals 6

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-static {v5, v4}, Lcom/odoo/mobile/accounts/OdooUser;->fromBundle(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final hasAccount(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->findAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasAnyAccount()Z
    .locals 2

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final makeActive(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 4

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    const-string v1, "active"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->account:Landroid/accounts/Account;

    const-string v3, "false"

    invoke-virtual {v2, v0, v1, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->account:Landroid/accounts/Account;

    const-string v2, "true"

    invoke-virtual {v0, p1, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeAccount(Lcom/odoo/mobile/accounts/OdooUser;)Z
    .locals 4

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user.accountName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->findAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result p1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/odoo/mobile/accounts/OdooAccountManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/odoo/mobile/accounts/OdooAccountManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/odoo/mobile/accounts/OdooAccountManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/odoo/mobile/accounts/OdooAccountManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationUtils;->synchroniseOCNAccounts(Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :try_start_0
    new-instance v0, Lcom/odoo/mobile/directshare/SharingShortcutsManager;

    invoke-direct {v0}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;-><init>()V

    iget-object v1, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->updateDirectShare(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/odoo/mobile/accounts/OdooAccountManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update SharingShortcut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p1
.end method

.method public final updateDetails(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 5

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user.accountName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->findAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/odoo/mobile/accounts/OdooAccountManager;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
