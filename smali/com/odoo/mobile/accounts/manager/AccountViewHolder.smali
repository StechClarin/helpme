.class Lcom/odoo/mobile/accounts/manager/AccountViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;
    }
.end annotation


# instance fields
.field private final accountAvatar:Landroid/widget/ImageView;

.field private final accountHost:Landroid/widget/TextView;

.field private final accountName:Landroid/widget/TextView;

.field private final adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

.field private final context:Landroid/content/Context;

.field private final odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

.field private odooUser:Lcom/odoo/mobile/accounts/OdooUser;

.field private final progressBar:Landroid/widget/ProgressBar;

.field private final removeAccount:Landroid/widget/ImageButton;

.field private state:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;


# direct methods
.method public static synthetic $r8$lambda$AbSyGMSMUFFTY6R00wzBU3euw2Y(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EU4kh2jxxjKZ1cYaqCZiIiFxsRg(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->lambda$onClickRemoveButton$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ppqZVSseSiwWU6QUZunMPvQEOHg(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->lambda$bindOdooUser$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yn-dd0CHr_c3kjfeIGXOqjR9uwc(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->lambda$onClickRemoveButton$2()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;->LISTING:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->state:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {v0, p1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    const p1, 0x7f090034

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountName:Landroid/widget/TextView;

    const p1, 0x7f090031

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountHost:Landroid/widget/TextView;

    const p1, 0x7f090030

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountAvatar:Landroid/widget/ImageView;

    const p1, 0x7f090190

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->removeAccount:Landroid/widget/ImageButton;

    const p1, 0x7f090186

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    new-instance p1, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$bindOdooUser$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->onClickRemoveButton()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->onClickItem()V

    return-void
.end method

.method private synthetic lambda$onClickRemoveButton$2()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f11011f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;->LISTING:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    invoke-direct {p0, v0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->setState(Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getUserAccounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->setAllAccounts(Ljava/util/List;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    const-class v2, Lcom/odoo/mobile/Login;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClickRemoveButton$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object p2, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;->DELETING:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    invoke-direct {p0, p2}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->setState(Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;)V

    new-instance p2, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;

    iget-object p3, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooAccountManager:Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-direct {p2, p3, v0, p1}, Lcom/odoo/mobile/accounts/manager/AccountDeleteTask;-><init>(Landroid/content/Context;Lcom/odoo/mobile/accounts/OdooAccountManager;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/odoo/mobile/accounts/OdooUser;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    aput-object v0, p1, p3

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method private onClickItem()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->adapter:Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;

    invoke-virtual {v2}, Lcom/odoo/mobile/accounts/manager/AllAccountsAdapter;->getSrc()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/odoo/mobile/accounts/OdooUser;->switchToAccount(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onClickRemoveButton()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11011a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1100b6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;)V

    new-instance v2, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;Ljava/lang/Runnable;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private setState(Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;)V
    .locals 3

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->state:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    sget-object v0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;->DELETING:Lcom/odoo/mobile/accounts/manager/AccountViewHolder$State;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->removeAccount:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->removeAccount:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindOdooUser(Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 2

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->odooUser:Lcom/odoo/mobile/accounts/OdooUser;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountHost:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/odoo/mobile/core/utils/OControlUtils;->setText(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->accountAvatar:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/odoo/mobile/accounts/OdooUser;->avatar:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/odoo/mobile/core/utils/OControlUtils;->setRoundedImage(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder;->removeAccount:Landroid/widget/ImageButton;

    new-instance v0, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/accounts/manager/AccountViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/accounts/manager/AccountViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
