.class public final enum Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodTypes"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

.field public static final enum TYPE_ASYNCHRONOUS:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

.field public static final enum TYPE_EXECUTE_ONLY:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

.field public static final enum TYPE_EXECUTE_WITH_RETURN:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;


# direct methods
.method private static synthetic $values()[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    const/4 v1, 0x0

    sget-object v2, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_ASYNCHRONOUS:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_ONLY:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_WITH_RETURN:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    const-string v1, "TYPE_ASYNCHRONOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_ASYNCHRONOUS:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    new-instance v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    const-string v1, "TYPE_EXECUTE_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_ONLY:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    new-instance v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    const-string v1, "TYPE_EXECUTE_WITH_RETURN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_WITH_RETURN:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    invoke-static {}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->$values()[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->$VALUES:[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
    .locals 1

    const-class v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    return-object p0
.end method

.method public static values()[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->$VALUES:[Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    invoke-virtual {v0}, [Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    return-object v0
.end method
