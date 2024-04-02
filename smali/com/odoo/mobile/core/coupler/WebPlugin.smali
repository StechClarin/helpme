.class public abstract Lcom/odoo/mobile/core/coupler/WebPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "com.odoo.mobile.core.coupler.WebPlugin"


# instance fields
.field private final aliasName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Lcom/odoo/mobile/core/widgets/OdooWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->permissions:Ljava/util/List;

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->aliasName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aliasName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMethods()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting method for plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->aliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    aget-object v6, v7, v3

    const-class v7, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering method : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;

    invoke-direct {v6, v5}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v6}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->permissions:Ljava/util/List;

    return-object v0
.end method

.method protected getStringFromResource(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUser()Lcom/odoo/mobile/accounts/OdooUser;
    .locals 2

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    return-object v0
.end method

.method protected getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-object v0
.end method

.method protected varargs requirePermissions([Ljava/lang/String;)V
    .locals 1

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->permissions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setWebView(Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-void
.end method

.method protected updateDetailsForUser(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/WebPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->updateDetails(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method
