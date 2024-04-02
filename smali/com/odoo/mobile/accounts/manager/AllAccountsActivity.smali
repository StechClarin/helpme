.class public Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;
.super Lcom/odoo/mobile/core/OdooAppCompatActivity;
.source "SourceFile"


# instance fields
.field protected adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

.field private logoPressCount:I

.field private odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;


# direct methods
.method public static synthetic $r8$lambda$eLCjFg690XbSHVD7ylRteqSKA_E(Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->showVersionInformationAfterManyTries(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->logoPressCount:I

    return-void
.end method

.method private showVersionInformationAfterManyTries(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->logoPressCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->logoPressCount:I

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/odoo/mobile/core/utils/InformationToolKt;->showAndCopyVersionInformation(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    return-object v0
.end method

.method protected getOdooAccountManager()Lcom/odoo/mobile/accounts/OdooAccountManager;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->isAllowRemove()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getAllAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v1, v1, Lcom/odoo/mobile/accounts/OdooUser;->active:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onClickNewAccount(Landroid/view/View;)V
    .locals 2

    const-class p1, Lcom/odoo/mobile/Login;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->getActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "force_new_login"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090032

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const p1, 0x7f090160

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090084

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getAdapter()Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->getOdooAccountManager()Lcom/odoo/mobile/accounts/OdooAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->setAllAccounts(Ljava/util/List;)V

    return-void
.end method
