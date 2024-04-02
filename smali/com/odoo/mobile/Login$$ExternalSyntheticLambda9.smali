.class public final synthetic Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/Login;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/Login;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;->f$0:Lcom/odoo/mobile/Login;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/Login$$ExternalSyntheticLambda9;->f$0:Lcom/odoo/mobile/Login;

    check-cast p1, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-static {v0, p1}, Lcom/odoo/mobile/Login;->$r8$lambda$Koy8eX-aAma5fgplVmVkREW6-_U(Lcom/odoo/mobile/Login;Lcom/odoo/mobile/accounts/OdooUser;)V

    return-void
.end method
