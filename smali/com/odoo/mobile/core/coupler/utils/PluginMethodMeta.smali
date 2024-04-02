.class public Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
    }
.end annotation


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMethodType()Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;
    .locals 3

    sget-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_WITH_RETURN:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    iget-object v1, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_ASYNCHRONOUS:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v2, p0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;->TYPE_EXECUTE_ONLY:Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta;->getMethodType()Lcom/odoo/mobile/core/coupler/utils/PluginMethodMeta$MethodTypes;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PluginMethodMeta{methodName=\'%s\', method=%s, methodType=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
