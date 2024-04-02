.class public final Lcom/odoo/mobile/core/OdooAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/OdooAPI$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

.field private static volatile INSTANCE:Lcom/odoo/mobile/core/OdooAPI;

.field private static final TAG:Ljava/lang/String;

.field private static final defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

.field private static upgradeHttpsListener:Ljava/lang/Runnable;


# instance fields
.field private final context:Landroid/content/Context;

.field private final cookieManager$delegate:Lkotlin/Lazy;

.field private final requestQueue$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9KkuSOASZMKauXEuEcbQwcEwni0(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest$lambda$13(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgYDwnJFNJT8qRVcStEDi90GP5E(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest$lambda$2(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCMEGl2x1bi9Flf0fdn0d_OGrLo(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest$lambda$12(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBQJRfP_rYUQSLwXFwtjPucjS0s(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/odoo/mobile/core/OdooAPI;->downloadRequest$lambda$9(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZY2t5l5A7csF3V7Gl2qm5UHI-pM(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest$lambda$7(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z_5wV7SFCcBYWgoYNTWWI2jIi50(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest$lambda$1(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4B4toKdBvHLDo_sSWT7-TzBgZA(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest$lambda$6(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bVMWUaoEHmpBHagSTEQ3uUz3oP4(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest$lambda$3(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gYOnJdfHcVvqXuo3h1HvKIECDkA(Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest$lambda$5(Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yZTGTuXwQGDhwI8REC1xm7NVrrc(Ljava/lang/String;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest$lambda$11(Ljava/lang/String;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/odoo/mobile/core/OdooAPI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/core/OdooAPI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    const-class v0, Lcom/odoo/mobile/core/OdooAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/core/OdooAPI;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1388

    invoke-direct {v0, v3, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    sput-object v0, Lcom/odoo/mobile/core/OdooAPI;->defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI;->context:Landroid/content/Context;

    new-instance p1, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;

    invoke-direct {p1, p0}, Lcom/odoo/mobile/core/OdooAPI$requestQueue$2;-><init>(Lcom/odoo/mobile/core/OdooAPI;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI;->requestQueue$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;->INSTANCE:Lcom/odoo/mobile/core/OdooAPI$cookieManager$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAPI;->cookieManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/odoo/mobile/core/OdooAPI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/core/OdooAPI;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCookieManager(Lcom/odoo/mobile/core/OdooAPI;)Ljava/net/CookieManager;
    .locals 0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/odoo/mobile/core/OdooAPI;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->INSTANCE:Lcom/odoo/mobile/core/OdooAPI;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/odoo/mobile/core/OdooAPI;)V
    .locals 0

    sput-object p0, Lcom/odoo/mobile/core/OdooAPI;->INSTANCE:Lcom/odoo/mobile/core/OdooAPI;

    return-void
.end method

.method public static final synthetic access$setUpgradeHttpsListener$cp(Ljava/lang/Runnable;)V
    .locals 0

    sput-object p0, Lcom/odoo/mobile/core/OdooAPI;->upgradeHttpsListener:Ljava/lang/Runnable;

    return-void
.end method

.method private static final bitmapRequest$lambda$5(Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$successListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static final bitmapRequest$lambda$6(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$errorListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private static final bitmapRequest$lambda$7(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followUpLocation"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p6}, Lcom/odoo/mobile/core/OdooAPI;->upgradeToHttpsIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/odoo/mobile/core/OdooAPI;->bitmapRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static final downloadRequest$lambda$9(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followUpLocation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p7}, Lcom/odoo/mobile/core/OdooAPI;->upgradeToHttpsIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI;->downloadRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private final getCookieManager()Ljava/net/CookieManager;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI;->cookieManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    return-object v0
.end method

.method private static final jsonRequest$lambda$1(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$errorListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$successListener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/volley/VolleyError;

    invoke-direct {p0, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, p3}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final jsonRequest$lambda$2(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$errorListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private static final jsonRequest$lambda$3(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followUpLocation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p7}, Lcom/odoo/mobile/core/OdooAPI;->upgradeToHttpsIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI;->jsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static final stringRequest$lambda$11(Ljava/lang/String;Lcom/android/volley/Response$Listener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$successListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static final stringRequest$lambda$12(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$errorListener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private static final stringRequest$lambda$13(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$url"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$successListener"

    move-object v6, p6

    invoke-static {p6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$errorListener"

    move-object v7, p7

    invoke-static {p7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "followUpLocation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/odoo/mobile/core/OdooAPI;->upgradeToHttpsIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/odoo/mobile/core/OdooAPI;->stringRequest(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private final upgradeToHttpsIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "http://"

    const-string v2, "https://"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replaceFirst$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/odoo/mobile/core/OdooAPI;->upgradeHttpsListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bitmapRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13

    move-object v7, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    if-eqz v3, :cond_0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2}, Lcom/odoo/mobile/core/OdooAPI$Companion;->buildSessionCookie(Landroid/net/Uri;Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    :cond_0
    new-instance v8, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda4;

    invoke-direct {v8, p1, v5}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v10, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda5;

    invoke-direct {v10, p1, v6}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v11, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda6;-><init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v12, Lcom/odoo/mobile/core/OdooAPI$bitmapRequest$request$1;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI$bitmapRequest$request$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {v12, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAPI;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public final downloadRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v4, p3

    const-string v0, "url"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    if-eqz v4, :cond_0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lcom/odoo/mobile/core/OdooAPI$Companion;->buildSessionCookie(Landroid/net/Uri;Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;

    iget-object v1, v8, Lcom/odoo/mobile/core/OdooAPI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/files/StorageManagerLegacy;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;

    iget-object v1, v8, Lcom/odoo/mobile/core/OdooAPI;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/files/StorageManagerMediaStore;-><init>(Landroid/content/ContentResolver;)V

    :goto_0
    move-object v12, v0

    new-instance v16, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda0;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/odoo/mobile/core/OdooAPI$downloadRequest$request$1;

    move-object v9, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v16}, Lcom/odoo/mobile/core/OdooAPI$downloadRequest$request$1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/odoo/mobile/plugins/files/StorageManager;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual/range {p0 .. p0}, Lcom/odoo/mobile/core/OdooAPI;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public final getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAPI;->requestQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public final getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    const-string v1, "cookieManager.cookieStore.cookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/net/HttpCookie;

    invoke-virtual {v3}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.domain"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v4, v6, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "session_id"

    invoke-virtual {v3}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v6, v5

    :cond_1
    if-eqz v6, :cond_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Ljava/net/HttpCookie;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public final jsonRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13

    move-object v8, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/odoo/mobile/core/OdooAPIKt;->createRPCPayload(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    if-eqz v4, :cond_0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lcom/odoo/mobile/core/OdooAPI$Companion;->buildSessionCookie(Landroid/net/Uri;Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    :cond_0
    new-instance v10, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda1;

    invoke-direct {v10, p1, v7, v6}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    new-instance v11, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda2;

    invoke-direct {v11, p1, v7}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v12, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda3;-><init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v7, Lcom/odoo/mobile/core/OdooAPI$jsonRequest$request$1;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v9

    move-object/from16 v3, p4

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/odoo/mobile/core/OdooAPI$jsonRequest$request$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {v7, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAPI;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public final stringRequest(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 13

    move-object v9, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorListener"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    if-eqz v5, :cond_0

    sget-object v1, Lcom/odoo/mobile/core/OdooAPI;->Companion:Lcom/odoo/mobile/core/OdooAPI$Companion;

    const-string v2, "uri"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Lcom/odoo/mobile/core/OdooAPI$Companion;->buildSessionCookie(Landroid/net/Uri;Ljava/lang/String;)Ljava/net/HttpCookie;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/core/OdooAPI;->getCookieManager()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    :cond_0
    new-instance v10, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;

    invoke-direct {v10, p2, v7}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;)V

    new-instance v11, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda8;

    invoke-direct {v11, p2, v8}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v12, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/odoo/mobile/core/OdooAPI$$ExternalSyntheticLambda9;-><init>(Lcom/odoo/mobile/core/OdooAPI;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v8, Lcom/odoo/mobile/core/OdooAPI$stringRequest$request$1;

    move-object v0, v8

    move v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/odoo/mobile/core/OdooAPI$stringRequest$request$1;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Response$Listener;)V

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v0, Lcom/odoo/mobile/core/OdooAPI;->defaultRetryPolicy:Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {v8, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/odoo/mobile/core/OdooAPI;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
