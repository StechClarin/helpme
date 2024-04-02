.class public Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$Companion;,
        Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$Companion;

.field private static final PERMISSION_MAP:Ljava/util/Map;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private final odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

.field private final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$152weZAxGx_kEBj6yRKo7nhHbtI(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onJsConfirm$lambda$3(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5n5UKQuA2dfYC09X4_3Qs4CIpT0(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onJsPrompt$lambda$5(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZSZX9CbwoO3PJYLLiWnHtRXcyf0(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onJsAlert$lambda$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bR7zgk1s49n1G5whfpdmFAqynXA(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onJsPrompt$lambda$6(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qI4hwqIpsZhxBgIfmSLMMGkzblM(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->onJsConfirm$lambda$4(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->Companion:Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$Companion;

    const-class v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "android.webkit.resource.AUDIO_CAPTURE"

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.webkit.resource.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->PERMISSION_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "odooWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressBar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    iput-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static final synthetic access$grantDenyResource(Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->grantDenyResource(Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method private final getNewDefaultAlertDialogBuilder(ILjava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method

.method private final grantDenyResource(Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onJsAlert$lambda$2(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method private static final onJsConfirm$lambda$3(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method private static final onJsConfirm$lambda$4(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method private static final onJsPrompt$lambda$5(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$result"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

.method private static final onJsPrompt$lambda$6(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$result"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const-string v0, "consoleMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    :cond_4
    :goto_1
    sget-object v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onHideCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customView:Landroid/view/View;

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f110119

    invoke-direct {p0, p1, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->getNewDefaultAlertDialogBuilder(ILjava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f11011a

    invoke-direct {p0, p1, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->getNewDefaultAlertDialogBuilder(ILjava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/JsResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "defaultValue"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f11011b

    invoke-direct {p0, p1, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->getNewDefaultAlertDialogBuilder(ILjava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p3, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const/4 p4, 0x0

    const v0, 0x7f0c0035

    invoke-virtual {p2, v0, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda3;

    invoke-direct {p2, p5, p3}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda3;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda4;

    invoke-direct {p2, p5}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$$ExternalSyntheticLambda4;-><init>(Landroid/webkit/JsPromptResult;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "request"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/odoo/mobile/core/permissions/OPermissionManager;

    iget-object v0, v7, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;-><init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;)V

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v12

    const-string v0, "request.resources"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_2

    aget-object v3, v12, v15

    sget-object v0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_1

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    aput-object v16, v0, v14

    invoke-virtual {v11, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {v7, v8, v9, v10}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->grantDenyResource(Landroid/webkit/PermissionRequest;Ljava/util/Collection;Ljava/util/Collection;)V

    move v1, v14

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;

    move-object v0, v5

    move-object v1, v11

    move-object v2, v9

    move-object/from16 v4, p0

    move-object/from16 v17, v5

    move-object/from16 v5, p1

    move v14, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient$onPermissionRequest$1$1;-><init>(Lcom/odoo/mobile/core/permissions/OPermissionManager;Ljava/util/Collection;Ljava/lang/String;Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;Landroid/webkit/PermissionRequest;Ljava/util/Collection;)V

    new-array v0, v14, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v16, v0, v1

    move-object/from16 v2, v17

    invoke-virtual {v11, v2, v0}, Lcom/odoo/mobile/core/permissions/OPermissionManager;->getPermissions(Lcom/odoo/mobile/core/permissions/PermissionStatusListener;[Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move v14, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " No mapping found for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customView:Landroid/view/View;

    iput-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p2, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/widgets/OdooWebChromeClient;->odooWebView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    return-void
.end method
