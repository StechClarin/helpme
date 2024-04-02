.class public Lcom/odoo/mobile/accounts/AuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mAuthenticator:Lcom/odoo/mobile/accounts/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/odoo/mobile/accounts/AuthenticatorService;->mAuthenticator:Lcom/odoo/mobile/accounts/Authenticator;

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/accounts/Authenticator;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/AuthenticatorService;->mAuthenticator:Lcom/odoo/mobile/accounts/Authenticator;

    return-void
.end method
