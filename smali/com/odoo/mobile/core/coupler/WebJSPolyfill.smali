.class public final Lcom/odoo/mobile/core/coupler/WebJSPolyfill;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/core/coupler/WebJSPolyfill$Companion;
    }
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "OdooDevicePolyfill"

.field public static final Companion:Lcom/odoo/mobile/core/coupler/WebJSPolyfill$Companion;


# instance fields
.field private final webView:Lcom/odoo/mobile/core/widgets/OdooWebView;


# direct methods
.method public static synthetic $r8$lambda$vhaGmdTvNUvV6EfnR2f8Gyo4lBE(Lcom/odoo/mobile/core/coupler/WebJSPolyfill;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;->print$lambda$0(Lcom/odoo/mobile/core/coupler/WebJSPolyfill;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/core/coupler/WebJSPolyfill$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;->Companion:Lcom/odoo/mobile/core/coupler/WebJSPolyfill$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/odoo/mobile/core/widgets/OdooWebView;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    return-void
.end method

.method private static final print$lambda$0(Lcom/odoo/mobile/core/coupler/WebJSPolyfill;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-static {p0}, Lcom/odoo/mobile/core/coupler/utils/OPrintDocumentAdapter;->print(Lcom/odoo/mobile/core/widgets/OdooWebView;)V

    return-void
.end method


# virtual methods
.method public final print()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/odoo/mobile/core/coupler/WebJSPolyfill;->webView:Lcom/odoo/mobile/core/widgets/OdooWebView;

    invoke-virtual {v0}, Lcom/odoo/mobile/core/widgets/OdooWebView;->getActivity()Lcom/odoo/mobile/core/OdooAppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/odoo/mobile/core/coupler/WebJSPolyfill$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/odoo/mobile/core/coupler/WebJSPolyfill$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/core/coupler/WebJSPolyfill;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
