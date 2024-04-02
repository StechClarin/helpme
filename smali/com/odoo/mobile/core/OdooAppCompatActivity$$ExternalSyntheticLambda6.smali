.class public final synthetic Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field public final synthetic f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public final synthetic f$2:Lcom/android/volley/Response$Listener;

.field public final synthetic f$3:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$2:Lcom/android/volley/Response$Listener;

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$3:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$1:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$2:Lcom/android/volley/Response$Listener;

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda6;->f$3:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->$r8$lambda$K5tmCBujr_0nymAyYqJadB-WUNQ(Lcom/odoo/mobile/core/OdooAppCompatActivity;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/content/DialogInterface$OnCancelListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method
