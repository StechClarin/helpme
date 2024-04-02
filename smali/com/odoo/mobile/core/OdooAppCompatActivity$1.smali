.class Lcom/odoo/mobile/core/OdooAppCompatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/core/OdooAppCompatActivity;->setKeyboardVisibilityListener(Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private alreadyOpen:Z

.field private final defaultKeyboardHeightDP:I

.field private final estimatedKeyboardDP:I

.field private final rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

.field final synthetic val$onKeyboardVisibilityListener:Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/core/OdooAppCompatActivity;Landroid/view/View;Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->this$0:Lcom/odoo/mobile/core/OdooAppCompatActivity;

    iput-object p2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$parentView:Landroid/view/View;

    iput-object p3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$onKeyboardVisibilityListener:Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    iput p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->defaultKeyboardHeightDP:I

    const/16 p1, 0x94

    iput p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->estimatedKeyboardDP:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->rect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x43140000    # 148.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$parentView:Landroid/view/View;

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->alreadyOpen:Z

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->alreadyOpen:Z

    iget-object v0, p0, Lcom/odoo/mobile/core/OdooAppCompatActivity$1;->val$onKeyboardVisibilityListener:Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;

    invoke-interface {v0, v1}, Lcom/odoo/mobile/core/utils/OnKeyboardVisibilityListener;->onKeyboardVisibilityChanged(Z)V

    return-void
.end method
