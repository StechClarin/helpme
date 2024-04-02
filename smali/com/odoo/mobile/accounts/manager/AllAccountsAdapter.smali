.class Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field private allAccounts:Ljava/util/List;

.field private allowRemove:Z

.field private final context:Landroid/content/Context;

.field private src:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allAccounts:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allowRemove:Z

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAllAccounts()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSrc()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->src:Landroid/content/Intent;

    return-object v0
.end method

.method public isAllowRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allowRemove:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    check-cast p1, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->onBindViewHolder(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allAccounts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->bindOdooUser(Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/odoo/mobile/accounts/manager/AccountViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/odoo/mobile/accounts/manager/AccountViewHolder;
    .locals 2

    .line 0
    iget-object p2, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c001c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090190

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allowRemove:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance p2, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;)V

    return-object p2
.end method

.method setAllAccounts(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allAccounts:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setAllowRemove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->allowRemove:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSrc(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->src:Landroid/content/Intent;

    return-void
.end method
