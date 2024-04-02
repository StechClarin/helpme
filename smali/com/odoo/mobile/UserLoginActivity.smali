.class public Lcom/odoo/mobile/UserLoginActivity;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private edtPassword:Landroid/widget/EditText;

.field private odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

.field private odooUser:Lcom/odoo/mobile/accounts/OdooUser;


# direct methods
.method public static synthetic $r8$lambda$5SsLOQPo04PbuDpQPLm9lykJ-Fg(Lcom/odoo/mobile/UserLoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/UserLoginActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5hFHVqoo_L5PwOzD4aYV_gNnhyw(Lcom/odoo/mobile/UserLoginActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/UserLoginActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6wNEOrd5-m6v5oZ7GrdyKrmOp4(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/UserLoginActivity;->updateUser(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FonB3KZkywSznGgdelll8M5T3k0(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/UserLoginActivity;->lambda$login$3(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ngvLOIITmiPo1c-gJAtKzY1EzHo(Lcom/odoo/mobile/UserLoginActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/UserLoginActivity;->lambda$login$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$login$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/UserLoginActivity;->toggleProgressBar(Z)V

    return-void
.end method

.method private synthetic lambda$login$3(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/VolleyError;)V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/UserLoginActivity;)V

    new-instance v1, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda4;-><init>(Lcom/odoo/mobile/UserLoginActivity;)V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->authenticateError(Lcom/android/volley/VolleyError;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/UserLoginActivity;->login()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    const-class p1, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private login()V
    .locals 7

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    const v1, 0x7f110057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/odoo/mobile/UserLoginActivity;->toggleProgressBar(Z)V

    new-instance v1, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v2, v2, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v4, v4, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v4}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v2, v0, Lcom/odoo/mobile/accounts/OdooUser;->username:Ljava/lang/String;

    iget-object v4, v0, Lcom/odoo/mobile/accounts/OdooUser;->database:Ljava/lang/String;

    new-instance v5, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/UserLoginActivity;)V

    new-instance v6, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v1}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V

    invoke-virtual/range {v1 .. v6}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private toggleProgressBar(Z)V
    .locals 2

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0901ec

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

.method private updateUser(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->updateDetails(Lcom/odoo/mobile/accounts/OdooUser;)V

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    iget-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->makeActive(Lcom/odoo/mobile/accounts/OdooUser;)V

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->startWebViewActivity(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0900c5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->edtPassword:Landroid/widget/EditText;

    new-instance v2, Lcom/odoo/mobile/UserLoginActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/odoo/mobile/UserLoginActivity$1;-><init>(Lcom/odoo/mobile/UserLoginActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    const-string v2, "user_name"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getAccount(Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    iput-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    if-nez v1, :cond_0

    const-class p1, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "session_exprire_redirect"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110126

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/odoo/mobile/UserLoginActivity;->toggleProgressBar(Z)V

    const p1, 0x7f090030

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->avatar:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/OControlUtils;->setRoundedImage(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f09010c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f09010b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f090071

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/UserLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901ec

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/UserLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    invoke-direct {p0}, Lcom/odoo/mobile/UserLoginActivity;->login()V

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
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    iget-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->hasAnyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/odoo/mobile/Login;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/UserLoginActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-class v0, Lcom/odoo/mobile/UserLoginActivity;

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public showError(Lcom/android/volley/VolleyError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/odoo/mobile/UserLoginActivity;->toggleProgressBar(Z)V

    invoke-super {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->showError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
