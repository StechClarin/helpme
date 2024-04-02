.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$ErrorListener;

.field public final synthetic f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public final synthetic f$2:Lcom/android/volley/Response$Listener;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$0:Lcom/android/volley/Response$ErrorListener;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iput-object p3, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$2:Lcom/android/volley/Response$Listener;

    iput-object p4, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$0:Lcom/android/volley/Response$ErrorListener;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$2:Lcom/android/volley/Response$Listener;

    iget-object v3, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;->f$3:Landroid/net/Uri;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$oNlNumRBHoaJ9n6hasuANQ-avOQ(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
