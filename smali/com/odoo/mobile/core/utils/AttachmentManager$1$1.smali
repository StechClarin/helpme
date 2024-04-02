.class Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/utils/AttachmentManager$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/odoo/mobile/core/utils/AttachmentManager$1;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;->this$1:Lcom/odoo/mobile/core/utils/AttachmentManager$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;->this$1:Lcom/odoo/mobile/core/utils/AttachmentManager$1;

    iget-object v0, p1, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->this$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iget-object p1, p1, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$webView:Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->access$100(Lcom/odoo/mobile/core/utils/AttachmentManager;Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;->this$1:Lcom/odoo/mobile/core/utils/AttachmentManager$1;

    iget-object p1, p1, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
