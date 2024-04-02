.class public final Lcom/odoo/mobile/plugins/fcm/FCMPlugin;
.super Lcom/odoo/mobile/core/coupler/WebPlugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;

.field public static final FIREBASE_SENDER_ID_PREFIX:Ljava/lang/String; = "firebase_sender_id_"

.field public static final OCN_TOKEN:Ljava/lang/String; = "ocn_token"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$wvpDebIXG_lT04vqYm79zKYw-3U(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->getFCMKey$lambda$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->Companion:Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;

    const-class v0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fcm"

    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->requirePermissions([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final getFCMKey$lambda$0(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$senderId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    const-string p3, "Fetching FCM registration token failed"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p3}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->fcm_token:Ljava/lang/String;

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    iget-object v0, v0, Lcom/odoo/mobile/accounts/OdooUser;->fcm_token:Ljava/lang/String;

    const-string v1, "fcm_token_old"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    iput-object p6, v0, Lcom/odoo/mobile/accounts/OdooUser;->fcm_token:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->updateDetailsForUser(Lcom/odoo/mobile/accounts/OdooUser;)V

    :cond_1
    const-string v0, "subscription_id"

    invoke-virtual {p2, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->aliasName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, p2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_discuss_action_id"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "inbox_action"

    invoke-virtual {p4, p3}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "args.getInt(\"inbox_action\")"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-interface {p2, p0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p2, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->Companion:Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;

    invoke-virtual {p1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1

    const-string p3, "user"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;->getUniqueKeyForFCM(Lcom/odoo/mobile/accounts/OdooUser;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2, p5}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$Companion;->getUniqueKeyForSenderId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final getFCMKey(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 9

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createAllNotificationChannel(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.project_id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.google_app_id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.google_api_key)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "project_id"

    invoke-virtual {p1, v3}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "args.getString(\"project_id\")"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v3}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    const-string v1, "Builder()\n              \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OCN_FIREBASE_APP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    :goto_0
    const-string v1, "try {\n                Fi\u2026seInstance)\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.firebase.messaging.FirebaseMessaging"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v8, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/odoo/mobile/plugins/fcm/FCMPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Lcom/odoo/mobile/plugins/fcm/FCMPlugin;Lorg/json/JSONObject;Landroid/content/SharedPreferences;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/odoo/mobile/plugins/fcm/FCMPlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final setOCNToken(Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 2

    const-string v0, "ocn_token"

    const-string v1, "args"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getUser()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/odoo/mobile/accounts/OdooUser;->ocn_token:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/odoo/mobile/core/coupler/WebPlugin;->updateDetailsForUser(Lcom/odoo/mobile/accounts/OdooUser;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/odoo/mobile/exception/OCNParameterException;

    const-string v0, "No valid parameter found"

    invoke-direct {p1, v0}, Lcom/odoo/mobile/exception/OCNParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
