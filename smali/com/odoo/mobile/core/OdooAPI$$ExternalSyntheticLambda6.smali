.class public final synthetic Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAPI;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/android/volley/Response$Listener;

.field public final synthetic f$5:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$4:Lcom/android/volley/Response$Listener;

    iput-object p6, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$5:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$4:Lcom/android/volley/Response$Listener;

    iget-object v5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;->f$5:Lcom/android/volley/Response$ErrorListener;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI;->$r8$lambda$ZY2t5l5A7csF3V7Gl2qm5UHI-pM(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method
