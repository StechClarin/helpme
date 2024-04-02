.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Lcom/android/volley/Response$ErrorListener;

.field public final synthetic f$3:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$2:Lcom/android/volley/Response$ErrorListener;

    iput-object p4, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$3:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$2:Lcom/android/volley/Response$ErrorListener;

    iget-object v3, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;->f$3:Lcom/android/volley/Response$Listener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$N9vbf5yUE6LX1LviUK4l7XZmb6c(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method
