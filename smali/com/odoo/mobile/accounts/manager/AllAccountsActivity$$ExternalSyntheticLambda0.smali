.class public final synthetic Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/accounts/manager/AllAccountsActivity;->onClickNewAccount(Landroid/view/View;)V

    return-void
.end method
