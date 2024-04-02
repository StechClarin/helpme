.class public Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.odoo.mobile.core.coupler.helper.WebPluginCallback"


# instance fields
.field private final callbackID:Ljava/lang/String;

.field private final webView:Lcom/odoo/mobile/core/widgets/OdooWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iput-object p2, p0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->callbackID:Ljava/lang/String;

    return-void
.end method

.method private doCallback(Ljava/lang/Object;Z)V
    .locals 3

    sget-object v0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->callbackID:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private post(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->callbackID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "window.odoo.native_notify(\'%s\', %s);"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->runJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->doCallback(Ljava/lang/Object;Z)V

    return-void
.end method

.method public permissionFail(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->doCallback(Ljava/lang/Object;Z)V

    return-void
.end method
