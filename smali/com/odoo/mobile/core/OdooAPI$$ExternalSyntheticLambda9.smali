.class public final synthetic Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/OdooAPI;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/android/volley/Response$Listener;

.field public final synthetic f$7:Lcom/android/volley/Response$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$6:Lcom/android/volley/Response$Listener;

    iput-object p8, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$7:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$0:Lcom/odoo/mobile/core/OdooAPI;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$2:I

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$6:Lcom/android/volley/Response$Listener;

    iget-object v7, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;->f$7:Lcom/android/volley/Response$ErrorListener;

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/odoo/mobile/core/OdooAPI;->$r8$lambda$9KkuSOASZMKauXEuEcbQwcEwni0(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method
