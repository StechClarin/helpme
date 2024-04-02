.class public Lcom/odoo/mobile/Login;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public databaseDialog:Landroidx/appcompat/app/AlertDialog;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private edtLogin:Landroid/widget/EditText;

.field private edtPassword:Landroid/widget/EditText;

.field private edtServerUrl:Landroid/widget/EditText;

.field private httpUserCredentials:Ljava/lang/String;

.field private odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;


# direct methods
.method public static synthetic $r8$lambda$3uY3c9T_ez6sGgbKH83m4l7ik0c(Lcom/odoo/mobile/Login;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$askUserForDatabase$9(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7oTzoSZ5Nwj58kCldC4lBtf2Irw(Lcom/odoo/mobile/Login;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/Login;->lambda$askUserForDatabase$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CbyeniSrHTOaxi420ZFv2TS58pU(Lcom/odoo/mobile/Login;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$login$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EhPIZOUO5r7d-wNwsvNfk-tEdWA(Lcom/odoo/mobile/Login;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$login$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EnAKLOntSeNXNd7mo9srolBkGhA(Lcom/odoo/mobile/Login;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$login$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FM-lt8wrmfzOgyXNnlWXBgj1BNc(Lcom/odoo/mobile/Login;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Koy8eX-aAma5fgplVmVkREW6-_U(Lcom/odoo/mobile/Login;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->createAccount(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MdqrKkkofMy1EyuaoGHBWYMc5Qc(Lcom/odoo/mobile/Login;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$login$5(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wdw0C-7sGgpHyjF76kQjWsR0CuI(Lcom/odoo/mobile/Login;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/Login;->lambda$showDatabaseDialog$10(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fz4AKfpZvhndGyAl2xSs3sIIqLI(Lcom/odoo/mobile/Login;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odoo/mobile/Login;->lambda$askForHTTPAuthCredentials$6(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jSfzpTDESms55gUUWCA9WUX4Vlo(Lcom/odoo/mobile/Login;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRgK9oOO32VOldt9yF0JmtUKfU0(Lcom/odoo/mobile/Login;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/Login;->lambda$askUserForDatabase$7(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVYvCguoMTb3fcGFhs8TDjaifd8(Lcom/odoo/mobile/Login;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->lambda$showDatabaseDialog$11(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odoo/mobile/Login;->httpUserCredentials:Ljava/lang/String;

    return-void
.end method

.method private askForHTTPAuthCredentials()V
    .locals 5

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110025

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c003b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09021f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->getServerURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0900c3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v2, v3}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda5;-><init>(Lcom/odoo/mobile/Login;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const v2, 0x7f110082

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private askUserForDatabase()V
    .locals 5

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c0035

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f11011c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v2}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda11;-><init>(Lcom/odoo/mobile/Login;Landroid/widget/EditText;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda12;-><init>(Lcom/odoo/mobile/Login;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda13;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private checkPlayServices()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createAccount(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->createAccount(Lcom/odoo/mobile/accounts/OdooUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->makeActive(Lcom/odoo/mobile/accounts/OdooUser;)V

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->startWebViewActivity(Lcom/odoo/mobile/accounts/OdooUser;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f11012d

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, v0}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    :goto_0
    return-void
.end method

.method private getServerURL()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->extractServerUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Server URI should be valid before processing it"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "odoo.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "https://www.%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->isSaas(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "https://%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$askForHTTPAuthCredentials$6(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/Login;->httpUserCredentials:Ljava/lang/String;

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->login()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/odoo/mobile/Login;->askForHTTPAuthCredentials()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$askUserForDatabase$7(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->login(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110122

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p2}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$askUserForDatabase$8(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    return-void
.end method

.method private synthetic lambda$askUserForDatabase$9(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    return-void
.end method

.method private synthetic lambda$login$2(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->showDatabaseDialog(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->login(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->getRootUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/OTextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "www.odoo.com"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "openerp"

    goto :goto_0

    :cond_2
    const-string v0, ".odoo.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/odoo/mobile/Login;->askUserForDatabase()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$login$3(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110131

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/utils/SnackbarManager;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    const v0, 0x7f090203

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    new-instance v0, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda6;-><init>(Lcom/odoo/mobile/Login;)V

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda4;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {p1, v0, v1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->getDatabases(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private synthetic lambda$login$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    return-void
.end method

.method private synthetic lambda$login$5(Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;-><init>(Lcom/odoo/mobile/Login;)V

    new-instance v2, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda14;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->authenticateError(Lcom/android/volley/VolleyError;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->loginTroubleGuidance()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->login()V

    return-void
.end method

.method private synthetic lambda$showDatabaseDialog$10(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->login(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDatabaseDialog$11(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    return-void
.end method

.method private login()V
    .locals 4

    .line 0
    invoke-direct {p0}, Lcom/odoo/mobile/Login;->validated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/odoo/mobile/Login;->getServerURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/odoo/mobile/Login;->httpUserCredentials:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/odoo/mobile/Login;->httpUserCredentials:Ljava/lang/String;

    new-instance v1, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/odoo/mobile/Login;->httpUserCredentials:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda3;-><init>(Lcom/odoo/mobile/Login;)V

    new-instance v2, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda4;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, v1, v2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->isEnterprise(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private login(Ljava/lang/String;)V
    .locals 8

    .line 0
    invoke-direct {p0}, Lcom/odoo/mobile/Login;->getServerURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/Login;->edtLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-static {v3, v0, p1}, Lcom/odoo/mobile/accounts/OdooUser;->createAccountName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f11001b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/odoo/mobile/core/utils/SnackbarManager;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    invoke-direct {p0, v1}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/odoo/mobile/Login;->authenticationRepository:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    new-instance v6, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;-><init>(Lcom/odoo/mobile/Login;)V

    new-instance v7, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda10;

    invoke-direct {v7, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda10;-><init>(Lcom/odoo/mobile/Login;)V

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private loginTroubleGuidance()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11008a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x7f030000

    const v2, 0x7f0c008c

    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showDatabaseDialog(Ljava/util/List;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11011e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda7;-><init>(Lcom/odoo/mobile/Login;Ljava/util/List;)V

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda8;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/Login;->databaseDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showPlayServiceError()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110089

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11006e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11002c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private toggleProgressBarView(Z)V
    .locals 2

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validated()Z
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/OControlUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/UriKt;->extractServerUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    const v2, 0x7f110058

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtLogin:Landroid/widget/EditText;

    const v2, 0x7f110059

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtLogin:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    const v2, 0x7f110057

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onClickCreateAccount(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NetworkUtilsKt;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/odoo/mobile/CreateAccount;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f110056

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    new-instance p1, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    const p1, 0x7f0900c9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/Login;->edtLogin:Landroid/widget/EditText;

    const p1, 0x7f0900c5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/Login;->edtServerUrl:Landroid/widget/EditText;

    const v0, 0x7f090203

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/Login;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/odoo/mobile/Login;->edtPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/odoo/mobile/Login$1;

    invoke-direct {v1, p0, p1}, Lcom/odoo/mobile/Login$1;-><init>(Lcom/odoo/mobile/Login;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->login()V

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->checkPlayServices()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->showPlayServiceError()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "force_new_login"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    invoke-virtual {v1, p0}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/odoo/mobile/core/utils/UserSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v1, Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p0, v1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    const-class v0, Lcom/odoo/mobile/UserLoginActivity;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "user_name"

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/odoo/mobile/Login;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAnyAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public showError(Lcom/android/volley/VolleyError;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/odoo/mobile/Login;->toggleProgressBarView(Z)V

    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/Login;->askForHTTPAuthCredentials()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->showError(Lcom/android/volley/VolleyError;)V

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/VolleyErrorKt;->isUserAuthFailure(Lcom/android/volley/VolleyError;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f090203

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
