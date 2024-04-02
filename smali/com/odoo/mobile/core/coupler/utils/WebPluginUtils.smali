.class public Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebPluginUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

.field private final plugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/odoo/mobile/core/coupler/utils/PluginMeta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->plugins:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/odoo/mobile/core/coupler/utils/WebPluginConstants;->PLUGIN_CLASSES:[Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    :try_start_0
    new-instance v3, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;

    iget-object v4, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2, v4}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;-><init>(Ljava/lang/Class;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->plugins:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Plugin registered :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->failResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->invokeMethod(Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    return-void
.end method

.method private failResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private invokeMethod(Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$2;->$SwitchMap$com$odoo$mobile$core$coupler$utils$PluginMethodMeta$MethodTypes:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p4, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p5, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p4, p2, v1

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p4, p2, v1

    aput-object p5, p2, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " trigger as asynchronous with null callback id"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    sget-object v3, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exec=> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v11, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;

    if-eqz v4, :cond_5

    :try_start_0
    invoke-virtual {v4}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->getClassObj()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v11, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->mContext:Landroid/content/Context;

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/odoo/mobile/core/coupler/WebPlugin;

    iget-object v5, v11, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v7, v5}, Lcom/odoo/mobile/core/coupler/WebPlugin;->setWebView(Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    invoke-virtual {v4}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->getMethods()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/odoo/mobile/core/utils/JSONKt;->getAsWebPluginArgs(Lorg/json/JSONObject;)Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;

    move-result-object v12

    if-eqz v2, :cond_0

    new-instance v1, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    iget-object v4, v11, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-direct {v1, v4, v2}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;-><init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v13, v1

    invoke-virtual {v7}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking for permission required for plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getPermissions()Ljava/util/List;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v14, Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iget-object v1, v11, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v1}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/odoo/mobile/core/permissions/OPermissionManager;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission required : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->hasPermissions([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v9, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v13

    move-object v5, v15

    move-object v6, v0

    move-object v11, v9

    move-object v9, v10

    move-object v10, v12

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils$1;-><init>(Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;Lcom/odoo/mobile/core/permissions/OPermissionManager;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;Ljava/lang/String;[Ljava/lang/String;Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;)V

    invoke-virtual {v14, v11, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_1

    move-object/from16 v9, p0

    :try_start_2
    invoke-direct {v9, v15}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->failResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->permissionFail(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    move-object/from16 v9, p0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object/from16 v9, p0

    goto :goto_3

    :cond_2
    move-object v9, v11

    invoke-virtual {v8}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodType()Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    move-result-object v3

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v7

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->invokeMethod(Lcom/odoo/mobile/core/coupler/WebPlugin;Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;Ljava/lang/reflect/Method;Lcom/odoo/mobile/core/coupler/helper/WebPluginArgs;Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V

    goto :goto_4

    :cond_3
    move-object v9, v11

    invoke-virtual {v8}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodType()Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v9, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No method found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for plugin "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v9, v11

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_5
    move-object v9, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No plugin found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public getPlugins()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/odoo/mobile/core/coupler/utils/PluginMeta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/WebPluginUtils;->plugins:Ljava/util/HashMap;

    return-object v0
.end method
