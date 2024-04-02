.class public final synthetic Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

.field public final synthetic f$1:Lcom/odoo/mobile/plugins/fcm/FCMPlugin;

.field public final synthetic f$2:Lorg/json/JSONObject;

.field public final synthetic f$3:Landroid/content/SharedPreferences;

.field public final synthetic f$4:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/odoo/mobile/plugins/fcm/FCMPlugin;

    iput-object p3, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$3:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$4:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    iput-object p6, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$0:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$1:Lcom/odoo/mobile/plugins/fcm/FCMPlugin;

    iget-object v2, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$2:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$3:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$4:Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    iget-object v5, p0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->$r8$lambda$wvpDebIXG_lT04vqYm79zKYw-3U(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
