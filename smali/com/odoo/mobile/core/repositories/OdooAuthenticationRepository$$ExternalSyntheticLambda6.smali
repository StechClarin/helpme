.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$ErrorListener;

.field public final synthetic f$1:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/volley/Response$ErrorListener;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;->f$1:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/volley/Response$ErrorListener;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;->f$1:Lcom/android/volley/Response$Listener;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$lacmUYXkRlLIRBRZL9qjIjpGGeM(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
