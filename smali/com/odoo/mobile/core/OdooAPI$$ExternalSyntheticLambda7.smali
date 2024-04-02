.class public final synthetic Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;->f$1:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;->f$1:Lcom/android/volley/Response$Listener;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/odoo/mobile/core/OdooAPI;->$r8$lambda$yZTGTuXwQGDhwI8REC1xm7NVrrc(Ljava/lang/String;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method
