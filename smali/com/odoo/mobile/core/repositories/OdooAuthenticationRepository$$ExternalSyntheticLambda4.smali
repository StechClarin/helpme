.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$Listener;

.field public final synthetic f$1:Lcom/odoo/mobile/accounts/OdooUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;->f$0:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;->f$1:Lcom/odoo/mobile/accounts/OdooUser;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;->f$0:Lcom/android/volley/Response$Listener;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;->f$1:Lcom/odoo/mobile/accounts/OdooUser;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$72Vk5mta4V3beaUqU0bddr5BG_0(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Lcom/android/volley/VolleyError;)V

    return-void
.end method
