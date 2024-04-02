.class Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;
.super Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;
.source "SourceFile"


# instance fields
.field private final contextWeakReference:Ljava/lang/ref/WeakReference;

.field private final odooAccountManagerWeakReference:Ljava/lang/ref/WeakReference;

.field private final runnableWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/odoo/mobile/accounts/OdooAccountManager;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->odooAccountManagerWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->runnableWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/odoo/mobile/accounts/OdooUser;)Ljava/lang/Boolean;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->odooAccountManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odoo/mobile/accounts/OdooAccountManager;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, p1, v5

    invoke-virtual {v7, v0}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/odoo/mobile/core/utils/UserSession;->removeSession()V

    if-eqz v6, :cond_1

    invoke-virtual {v1, v7}, Lcom/odoo/mobile/accounts/OdooAccountManager;->removeAccount(Lcom/odoo/mobile/accounts/OdooUser;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->doInBackground([Lcom/odoo/mobile/accounts/OdooUser;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->runnableWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
