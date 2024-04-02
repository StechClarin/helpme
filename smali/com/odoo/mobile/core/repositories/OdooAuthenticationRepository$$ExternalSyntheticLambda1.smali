.class public final synthetic Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/Response$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/volley/Response$Listener;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->$r8$lambda$rJzu1rl5IGJN2mMddnhG0RbSqWM(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method
