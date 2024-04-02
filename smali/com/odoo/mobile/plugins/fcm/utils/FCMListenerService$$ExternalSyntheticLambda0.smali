.class public final synthetic Lcom/odoo/mobile/plugins/fcm/utils/FCMListenerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/odoo/mobile/plugins/fcm/utils/FCMListenerService;->$r8$lambda$jYJipT5RcZsN3nDhyJnRaCvMFhQ(Lorg/json/JSONObject;)V

    return-void
.end method
