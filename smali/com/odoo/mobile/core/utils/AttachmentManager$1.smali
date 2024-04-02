.class Lcom/odoo/mobile/core/utils/AttachmentManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/utils/AttachmentManager;->updateSnackBarText(Ljava/lang/String;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/utils/AttachmentManager;Ljava/lang/String;Landroid/view/View;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->this$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    iput-object p2, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->this$0:Lcom/odoo/mobile/core/utils/AttachmentManager;

    invoke-static {p1}, Lcom/odoo/mobile/core/utils/AttachmentManager;->access$000(Lcom/odoo/mobile/core/utils/AttachmentManager;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/odoo/mobile/core/utils/AttachmentManager$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;

    invoke-direct {v0, p0}, Lcom/odoo/mobile/core/utils/AttachmentManager$1$1;-><init>(Lcom/odoo/mobile/core/utils/AttachmentManager$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
