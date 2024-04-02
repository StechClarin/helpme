.class public final synthetic Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAPI;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/volley/Response$Listener;

.field public final synthetic f$6:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$5:Lcom/android/volley/Response$Listener;

    iput-object p7, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$6:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$5:Lcom/android/volley/Response$Listener;

    iget-object v6, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;->f$6:Lcom/android/volley/Response$ErrorListener;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/odoo/mobile/core/OdooAPI;->$r8$lambda$bVMWUaoEHmpBHagSTEQ3uUz3oP4(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method
