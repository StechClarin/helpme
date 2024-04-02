.class public final synthetic Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$$ExternalSyntheticLambda2;->f$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/OdooAppCompatActivity;->showError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
