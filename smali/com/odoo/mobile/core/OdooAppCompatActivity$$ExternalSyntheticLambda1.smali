.class public final synthetic Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnCancelListener;

.field public final synthetic f$2:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

.field public final synthetic f$3:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$2:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$3:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$2:Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda1;->f$3:Lcom/android/volley/Response$Listener;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->$r8$lambda$N0s5INnV-o6ik9Or9lxEkmRB6yU(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/content/DialogInterface$OnCancelListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method
