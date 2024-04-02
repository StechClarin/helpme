.class public Lcom/odoo/mobile/core/utils/UserSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final odooUser:Lcom/odoo/mobile/accounts/OdooUser;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    return-void
.end method

.method private key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {p1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "session_id"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectSession()V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    const-string v1, "Host:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    const-string v1, "User: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->database:Ljava/lang/String;

    const-string v1, "DB: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/utils/UserSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to host :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v1, v1, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Injecting session:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v1, v1, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/utils/UserSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isValid()Z
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "session_id"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public recordPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public registerSession(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "host_name"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/odoo/mobile/core/utils/UserSession;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v2, v2, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_id"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeSession()V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/UserSession;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "host_name"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_id"

    invoke-direct {p0, v1}, Lcom/odoo/mobile/core/utils/UserSession;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
