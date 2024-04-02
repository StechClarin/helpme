.class public final synthetic Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field public final synthetic f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public final synthetic f$2:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$2:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda5;->f$2:Lcom/android/volley/Response$Listener;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->$r8$lambda$aM8ruubwIfaoE8MXGGyqcGqIAzE(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method
