.class public final synthetic Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/UserLoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/UserLoginActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/UserLoginActivity;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/UserLoginActivity;

    check-cast p1, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-static {v0, p1}, Lcom/odoo/mobile/UserLoginActivity;->$r8$lambda$F6wNEOrd5-m6v5oZ7GrdyKrmOp4(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method
