.class public abstract Lcom/odoo/mobile/core/OdooAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;
    }
.end annotation


# instance fields
.field private dialogs:Ljava/util/List;

.field private permissionResultListener:Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;


# direct methods
.method public static synthetic $r8$lambda$K5tmCBujr_0nymAyYqJadB-WUNQ(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$askUserFor2FAToken$3(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N0s5INnV-o6ik9Or9lxEkmRB6yU(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$askUserFor2FAToken$5(Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnSRPC8GLTgHwzPGVMJrL-SioD4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$showError$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Fxjc2YxTs6izsmrQ_J9V3k9Qrs(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$askUserFor2FAToken$1(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aEFA7q_Iq9rwR6qwVD7ZfZD5-7Q(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/widget/EditText;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$askUserFor2FAToken$4(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/widget/EditText;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aM8ruubwIfaoE8MXGGyqcGqIAzE(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->lambda$askUserFor2FAToken$2(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->dialogs:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$askUserFor2FAToken$1(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$askUserFor2FAToken$2(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    invoke-virtual {p1, p3, p2, v0}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private synthetic lambda$askUserFor2FAToken$3(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/volley/VolleyError;)V
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-static {p0, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->askUserFor2FAToken(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private synthetic lambda$askUserFor2FAToken$4(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/widget/EditText;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance p6, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;

    invoke-direct {p6, p0, p1, p4}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;)V

    new-instance p7, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;

    invoke-direct {p7, p0, p1, p4, p5}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, p2, p3, p6, p7}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticateTotp(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private synthetic lambda$askUserFor2FAToken$5(Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 10

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110129

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

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    const/16 v2, 0x2002

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f110128

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setHint(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda3;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda4;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p4

    move-object v8, p3

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda4;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/widget/EditText;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static synthetic lambda$showError$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method public addDialog(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->dialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected askUserFor2FAToken(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;)V

    new-instance p2, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    invoke-virtual {p1, v0, p2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->fetchTotpCsrfToken(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method protected authenticateError(Lcom/android/volley/VolleyError;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2FA error !"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->askUserFor2FAToken(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->showError(Lcom/android/volley/VolleyError;)V

    :goto_0
    return-void
.end method

.method protected dismissAllDialog()V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->dialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->dialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getDataBundle()Landroid/os/Bundle;
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getDataBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    .line 0
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "model"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "res_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "record_action"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->permissionResultListener:Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;->onResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected setKeyboardVisibilityListener(Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;)V
    .locals 3

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/view/View;Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setPermissionResultListener(Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity;->permissionResultListener:Lcom/odoo/mobile/core/OdooAppCompatActivity$PermissionResultListener;

    return-void
.end method

.method public showError(Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-static {p1, p0}, Lcom/odoo/mobile/core/utils/VolleyErrorKt;->humanReadableMessage(Lcom/android/volley/VolleyError;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected startWebViewActivity(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/odoo/mobile/accounts/OdooUser;->getSession(Landroid/content/Context;)Lcom/odoo/mobile/core/utils/UserSession;

    move-result-object v0

    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->session_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/utils/UserSession;->registerSession(Ljava/lang/String;)V

    const-class p1, Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/accounts/manager/ChoiceAccountsActivity;->TAG:Ljava/lang/String;

    const-string v2, "INTENT_ENTRY_POINT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/IntentUtils;->fillIntentWithSource(Landroid/content/Intent;Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f01001c

    const v0, 0x7f01001d

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
