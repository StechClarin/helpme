.class public final Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final httpUserCredentials:Ljava/lang/String;

.field private rootUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$1X07muG92YN4zb8XSml2Lny1TqI(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate$lambda$12$lambda$10(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2-Ni2BupR488IUtbUx0cmBRRFLU(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->fetchTotpCsrfToken$lambda$7(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$72Vk5mta4V3beaUqU0bddr5BG_0(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate$lambda$12$lambda$11(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GEhOeF5ngK4NNb2YydO24VAmftU(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->getDatabases$lambda$3(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9vbf5yUE6LX1LviUK4l7XZmb6c(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate$lambda$12(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lacmUYXkRlLIRBRZL9qjIjpGGeM(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->getDatabases$lambda$5(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oNlNumRBHoaJ9n6hasuANQ-avOQ(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticateTotp$lambda$8(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJzu1rl5IGJN2mMddnhG0RbSqWM(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->isEnterprise$lambda$1(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xZuQPef1gRUxIXQj9ENtaRzf6B0(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->isEnterprise$lambda$0(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    return-void
.end method

.method private final authenticate(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9

    .line 0
    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "uri.toString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v7, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1, p5, p4}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda2;-><init>(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static final authenticate$lambda$12(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Landroid/net/Uri;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v0, "result"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_1

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    new-instance p0, Lcom/android/volley/VolleyError;

    const-string p1, "Missing sessionId"

    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void

    :cond_5
    const-string v2, "uid"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p0, Lcom/android/volley/VolleyError;

    const-string p1, "2FA error !"

    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void

    :cond_6
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "uri.toString()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4, p1, v1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->buildUser(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web/image?model=res.users&field=image_medium&id="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/odoo/mobile/accounts/OdooUser;->id:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p4, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v0, p4}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p2, "avatarUri.toString()"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/odoo/mobile/accounts/OdooUser;->session_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v5, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;

    invoke-direct {v5, p3, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda3;-><init>(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;)V

    new-instance v6, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;

    invoke-direct {v6, p3, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda4;-><init>(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;)V

    invoke-virtual/range {v1 .. v6}, Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private static final authenticate$lambda$12$lambda$10(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "$successListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/odoo/mobile/accounts/OdooUser;->avatar:Ljava/lang/String;

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static final authenticate$lambda$12$lambda$11(Lcom/android/volley/Response$Listener;Lcom/odoo/mobile/accounts/OdooUser;Lcom/android/volley/VolleyError;)V
    .locals 0

    const-string p2, "$successListener"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$user"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static final authenticateTotp$lambda$8(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    const-string v0, "$errorListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "id=\"totp_token\""

    const/4 v3, 0x0

    invoke-static {p4, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p2, Lcom/android/volley/VolleyError;

    iget-object p1, p1, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    const p3, 0x7f11012a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void

    :cond_0
    sget-object p0, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object p1, p1, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object p0

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0, p1}, Lcom/odoo/mobile/core/OdooAPI;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private final buildUser(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/odoo/mobile/accounts/OdooUser;
    .locals 9

    const-string v0, "uid"

    const-string v1, "db"

    const-string v2, "username"

    new-instance v3, Lcom/odoo/mobile/accounts/OdooUser;

    invoke-direct {v3}, Lcom/odoo/mobile/accounts/OdooUser;-><init>()V

    iget-object v4, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odoo/mobile/accounts/OdooUser;->host:Ljava/lang/String;

    const-string v4, "false"

    iput-object v4, v3, Lcom/odoo/mobile/accounts/OdooUser;->avatar:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const v8, 0x7f110130

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    iput-object v2, v3, Lcom/odoo/mobile/accounts/OdooUser;->username:Ljava/lang/String;

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object v1, v3, Lcom/odoo/mobile/accounts/OdooUser;->database:Ljava/lang/String;

    const-string v1, "true"

    iput-object v1, v3, Lcom/odoo/mobile/accounts/OdooUser;->active:Ljava/lang/String;

    :try_start_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    iput p2, v3, Lcom/odoo/mobile/accounts/OdooUser;->id:I

    iput-object p3, v3, Lcom/odoo/mobile/accounts/OdooUser;->session_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, v3, Lcom/odoo/mobile/accounts/OdooUser;->http_user_credentials:Ljava/lang/String;

    :cond_0
    const-string p2, "display_name"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v3, Lcom/odoo/mobile/accounts/OdooUser;->name:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string p2, "name"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v3, Lcom/odoo/mobile/accounts/OdooUser;->username:Ljava/lang/String;

    goto :goto_1

    :goto_2
    return-object v3

    :catch_0
    move-exception p1

    new-instance p3, Lcom/android/volley/VolleyError;

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object p2, v2, v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v1, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object p2, v2, v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_2
    move-exception p1

    new-instance p3, Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v6

    aput-object p2, v1, v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private static final fetchTotpCsrfToken$lambda$7(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 4

    const-string v0, "$errorListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "csrf_token:[\\s]*\"([\\w]+)\","

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-nez v3, :cond_1

    new-instance p1, Lcom/android/volley/VolleyError;

    const-string p2, "Cannot retrieve CSRF Token"

    invoke-direct {p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    :cond_1
    return-void
.end method

.method private static final getDatabases$lambda$3(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "$successListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getDatabases$lambda$5(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lcom/android/volley/VolleyError;)V
    .locals 5

    const-string v0, "$errorListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "odoo.exceptions.AccessDenied"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "in list_dbs"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private static final isEnterprise$lambda$0(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->upgradeToHttps()V

    return-void
.end method

.method private static final isEnterprise$lambda$1(Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "$successListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "server_version_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p1, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final authenticate(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8

    .line 0
    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v1, "web/session/get_session_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "uri"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 9

    .line 0
    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "database"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "successListener"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "errorListener"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v2, "web/session/authenticate"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "db"

    invoke-static {v2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "login"

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    const/4 p1, 0x2

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "context"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "uri"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->authenticate(Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final authenticateTotp(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10

    const-string v0, "totpToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "csrfToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v1, "web/login/totp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "csrf_token"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "totp_token"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    sget-object p1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {p2, v1}, Lcom/odoo/mobile/core/OdooAPI;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "uri.toString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v8, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;

    invoke-direct {v8, p4, p0, p3, v0}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda8;-><init>(Lcom/android/volley/Response$ErrorListener;Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;Lcom/android/volley/Response$Listener;Landroid/net/Uri;)V

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final fetchTotpCsrfToken(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 12

    const-string v0, "successListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v1, "web/login/totp"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v2, v3}, Lcom/odoo/mobile/core/OdooAPI;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "uri.toString()"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v10, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda7;

    invoke-direct {v10, p2, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda7;-><init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    move-object v11, p2

    invoke-virtual/range {v4 .. v11}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final getDatabases(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10

    const-string v0, "successListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v1, "web/database/list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "uri.toString()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v8, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda5;

    invoke-direct {v8, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda5;-><init>(Lcom/android/volley/Response$Listener;)V

    new-instance v9, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;

    invoke-direct {v9, p2, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda6;-><init>(Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    invoke-virtual/range {v3 .. v9}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final getRootUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isEnterprise(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 10

    const-string v0, "successListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    const-string v1, "web/webclient/version_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    new-instance v2, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;)V

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->setUpgradeHttpsListener(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->getInstance(Landroid/content/Context;)Lcom/odoo/mobile/core/OdooAPI;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "uri.toString()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->httpUserCredentials:Ljava/lang/String;

    new-instance v8, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda1;

    invoke-direct {v8, p1}, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository$$ExternalSyntheticLambda1;-><init>(Lcom/android/volley/Response$Listener;)V

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public final upgradeToHttps()V
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "rootUri.buildUpon().scheme(\"https\").build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/odoo/mobile/core/repositories/OdooAuthenticationRepository;->rootUri:Landroid/net/Uri;

    return-void
.end method
