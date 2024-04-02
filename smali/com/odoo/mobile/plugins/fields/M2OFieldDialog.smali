.class public Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static m2OFieldDialog:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;


# instance fields
.field private final adapter:Landroid/widget/ArrayAdapter;

.field private final builder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private final clearButton:Landroid/view/View;

.field private fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

.field private final items:Ljava/util/List;

.field private manyToOneDialog:Landroid/app/Dialog;

.field private timer:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->items:Ljava/util/List;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->timer:Ljava/util/Timer;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12011f

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0037

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v1, 0x7f090087

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->clearButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09005f

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900c6

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f09020f

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f11008c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p2, v7, v5

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$1;

    const v3, 0x1090003

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$1;-><init>(Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->adapter:Landroid/widget/ArrayAdapter;

    const p1, 0x7f0901a7

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;)Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;
    .locals 0

    iget-object p0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    return-object p0
.end method

.method public static getSingleton(Landroid/content/Context;Ljava/lang/String;)Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->m2OFieldDialog:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    invoke-direct {v0, p0, p1}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->m2OFieldDialog:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    :cond_0
    sget-object p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->m2OFieldDialog:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    return-object p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog$2;-><init>(Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;Landroid/text/Editable;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public bindRecords(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090087

    const-string v2, "id"

    const-string v3, "value"

    const-string v4, "select"

    const-string v5, "action"

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09005f

    if-ne v0, v1, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :goto_3
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    sput-object p1, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->m2OFieldDialog:Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;

    iget-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;->fail(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->fieldCallback:Lcom/odoo/mobile/core/coupler/helper/WebPluginCallback;

    return-void
.end method

.method public setClearButtonVisiblity(Z)V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->clearButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/fields/M2OFieldDialog;->manyToOneDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
