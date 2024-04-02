.class public final synthetic Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/CreateAccount;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/CreateAccount;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda1;->f$0:Lcom/odoo/mobile/CreateAccount;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/CreateAccount$$ExternalSyntheticLambda1;->f$0:Lcom/odoo/mobile/CreateAccount;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/CreateAccount;->showError(Lcom/android/volley/VolleyError;)V

    return-void
.end method
