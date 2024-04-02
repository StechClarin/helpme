.class Lcom/odoo/mobile/WebViewActivity$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/WebViewActivity;->toggleProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/WebViewActivity;

.field final synthetic val$btnManageAccount:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$0BD2-heKrJDKWUS4z42o2H6zDHc(Lcom/odoo/mobile/WebViewActivity$3;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/odoo/mobile/WebViewActivity$3;->lambda$run$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/odoo/mobile/WebViewActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/WebViewActivity$3;->this$0:Lcom/odoo/mobile/WebViewActivity;

    iput-object p2, p0, Lcom/odoo/mobile/WebViewActivity$3;->val$btnManageAccount:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$3;->this$0:Lcom/odoo/mobile/WebViewActivity;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/WebViewActivity$3;->this$0:Lcom/odoo/mobile/WebViewActivity;

    iget-object v1, p0, Lcom/odoo/mobile/WebViewActivity$3;->val$btnManageAccount:Landroid/view/View;

    new-instance v2, Lcom/odoo/mobile/WebViewActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/odoo/mobile/WebViewActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/odoo/mobile/WebViewActivity$3;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
