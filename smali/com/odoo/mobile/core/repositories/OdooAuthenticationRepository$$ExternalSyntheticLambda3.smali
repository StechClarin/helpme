.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$Listener;

.field public final synthetic f$1:Lcom/odoo/mobile/accounts/OdooUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;->f$0:Lcom/android/volley/Response$Listener;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/accounts/OdooUser;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;->f$0:Lcom/android/volley/Response$Listener;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;->f$1:Lcom/odoo/mobile/accounts/OdooUser;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$1X07muG92YN4zb8XSml2Lny1TqI(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Landroid/graphics/Bitmap;)V

    return-void
.end method
