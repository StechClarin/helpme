.class public Lcom/odoo/mobile/core/coupler/utils/PluginMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final classObj:Ljava/lang/Class;

.field private final plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->classObj:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->getPlugin(Landroid/content/Context;)Lcom/odoo/mobile/core/coupler/WebPlugin;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

    return-void
.end method

.method private getPlugin(Landroid/content/Context;)Lcom/odoo/mobile/core/coupler/WebPlugin;
    .locals 5

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->classObj:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/odoo/mobile/core/coupler/WebPlugin;

    return-object p1
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

    invoke-virtual {v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->aliasName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClassObj()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->classObj:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethods()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMeta;->plugin:Lcom/odoo/mobile/core/coupler/WebPlugin;

    invoke-virtual {v0}, Lcom/odoo/mobile/core/coupler/WebPlugin;->getMethods()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
