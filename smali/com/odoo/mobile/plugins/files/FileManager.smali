.class public Lcom/odoo/mobile/plugins/files/FileManager;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$-eSjHpHCguxgJ4PKc2bVr3v-FTY(Lcom/odoo/mobile/plugins/files/FileManager;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->lambda$getFilePOST$2(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MgAYfx1jeBk1jOj31_5PUuu2-00(Ljava/util/Map;Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/plugins/files/FileManager;->lambda$fillParams$4(Ljava/util/Map;Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0Y7q687vbSa8j_ETJzmAqr9vcc(Lcom/odoo/mobile/plugins/files/FileManager;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->lambda$getFilePOST$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqxzJtoxa6Goe2ZUwg-diKzbexc(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/plugins/files/FileManager;->lambda$downloadFile$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYLL7QDFM94BC_V7IWXn04PU3bk(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/odoo/mobile/plugins/files/FileManager;->lambda$getFilePOST$3(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "file_manager"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->requirePermissions([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fillParams(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getMap(Ljava/lang/String;)Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getMapString()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dummy-because-api-expects-one"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "csrf_token"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object p1

    new-instance v1, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Landroid/webkit/ValueCallback;)V

    const-string p2, "odoo.csrf_token"

    invoke-virtual {p1, p2, v1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->runJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1
    return-void
.end method

.method private getFilePOST(Ljava/lang/String;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda4;-><init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/odoo/mobile/plugins/files/FileManager;->fillParams(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private getNotificationBuilder(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 3

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100fe

    invoke-virtual {p0, v2}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060034

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f110053

    invoke-virtual {p0, v1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method private getResultPendingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/odoo/mobile/core/utils/FileUtils;->getMimeTypeFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lcom/odoo/mobile/core/utils/IntentUtils;->getContentPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private guessFileName(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/odoo/mobile/plugins/files/FileManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/odoo/mobile/plugins/files/FileManager$1;-><init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->execute([Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$downloadFile$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getWebView()Lcom/odoo/mobile/core/widgets/OdooWebView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebView;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$fillParams$4(Ljava/util/Map;Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "csrf_token"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getFilePOST$1(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/odoo/mobile/core/utils/ContentResolverKt;->getDisplayName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createAllNotificationChannel(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/odoo/mobile/plugins/files/FileManager;->getNotificationBuilder(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/plugins/files/FileManager;->getResultPendingIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    const v0, 0x7f0a000a

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110053

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getFilePOST$2(Lcom/android/volley/VolleyError;)V
    .locals 2

    sget-object v0, Lcom/odoo/mobile/core/coupler/WebPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f110052

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getStringFromResource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$getFilePOST$3(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/odoo/mobile/core/utils/CookieManagerKt;->getSessionIdByUrl(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v1

    new-instance v6, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda1;-><init>(Lcom/odoo/mobile/plugins/files/FileManager;)V

    new-instance v7, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/plugins/files/FileManager;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/odoo/mobile/core/OdooAPI;->downloadRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110124

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public downloadFile(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    iget-object v1, v1, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "form"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getMap(Ljava/lang/String;)Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getMap(Ljava/lang/String;)Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/UriKt;->urlEncodeUTF8(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/odoo/mobile/plugins/files/FileManager$$ExternalSyntheticLambda3;-><init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, p1, v1}, Lcom/odoo/mobile/plugins/files/FileManager;->guessFileName(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110135

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/odoo/mobile/plugins/files/FileManager;->getFilePOST(Ljava/lang/String;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V

    :goto_0
    return-void
.end method
