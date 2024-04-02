.class public Lcom/odoo/mobile/directshare/SharingShortcutsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final categories:Ljava/util/Set;

.field private final modulesXmlIds:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$_H7oj4xplnodXmSe9Y2Anj7AZhs(Lcom/odoo/mobile/directshare/OdooApp;Lcom/odoo/mobile/directshare/OdooApp;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->lambda$getAllSharableApps$0(Lcom/odoo/mobile/directshare/OdooApp;Lcom/odoo/mobile/directshare/OdooApp;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.odoo.mobile.directshare.category.SHARE_TARGET"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->categories:Ljava/util/Set;

    const-string v0, "crm.crm_menu_root"

    const-string v1, "hr_holidays.menu_hr_holidays_root"

    const-string v2, "project.menu_main_pm"

    const-string v3, "hr_expense.menu_hr_expense_root"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->modulesXmlIds:Ljava/util/List;

    return-void
.end method

.method private getAllSharableApps(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v2, p1}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object v3

    const-string v4, "available_apps"

    invoke-virtual {v3, v4}, Lcom/odoo/mobile/core/utils/UserSession;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->modulesXmlIds:Ljava/util/List;

    const-string v7, "xmlid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/odoo/mobile/directshare/OdooApp;

    invoke-direct {v6, v5, v2}, Lcom/odoo/mobile/directshare/OdooApp;-><init>(Lorg/json/JSONObject;Lcom/odoo/mobile/accounts/OdooUser;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/odoo/mobile/directshare/SharingShortcutsManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/odoo/mobile/directshare/SharingShortcutsManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static getShortcutId(Lcom/odoo/mobile/directshare/OdooApp;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/odoo/mobile/directshare/OdooApp;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_---_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/odoo/mobile/directshare/OdooApp;->getLink()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortcutOdooUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_---_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getShortcutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_---_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$getAllSharableApps$0(Lcom/odoo/mobile/directshare/OdooApp;Lcom/odoo/mobile/directshare/OdooApp;)I
    .locals 2

    invoke-virtual {p1}, Lcom/odoo/mobile/directshare/OdooApp;->getLastUpdate()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/odoo/mobile/directshare/OdooApp;->getLastUpdate()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public updateDirectShare(Landroid/content/Context;)V
    .locals 9

    invoke-static {p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeAllDynamicShortcuts(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->getAllSharableApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/odoo/mobile/directshare/OdooApp;

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getLink()Ljava/lang/String;

    move-result-object v7

    const-string v8, "shortcut_redirect_url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "selected_user"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    invoke-static {v5}, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->getShortcutId(Lcom/odoo/mobile/directshare/OdooApp;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getShortLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getLongLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/odoo/mobile/directshare/SharingShortcutsManager;->categories:Ljava/util/Set;

    invoke-virtual {v7, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/odoo/mobile/accounts/OdooUser;->toPerson()Landroidx/core/app/Person;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPerson(Landroidx/core/app/Person;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setRank(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/odoo/mobile/core/utils/BitmapUtils;->hasBitmap(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/odoo/mobile/directshare/OdooApp;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    :cond_1
    invoke-virtual {v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z

    return-void
.end method
