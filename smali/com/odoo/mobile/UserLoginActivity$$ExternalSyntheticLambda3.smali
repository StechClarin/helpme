.class public final synthetic Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/UserLoginActivity;

.field public final synthetic f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/UserLoginActivity;

    iput-object p2, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/UserLoginActivity;

    iget-object v1, p0, Lcom/odoo/mobile/UserLoginActivity$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/UserLoginActivity;->$r8$lambda$FonB3KZkywSznGgdelll8M5T3k0(Lcom/odoo/mobile/UserLoginActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/VolleyError;)V

    return-void
.end method
