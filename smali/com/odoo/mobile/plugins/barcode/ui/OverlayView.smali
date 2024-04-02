.class public final Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/barcode/ui/OverlayView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView$Companion;


# instance fields
.field private final duffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private overlayInterface:Lcom/odoo/mobile/core/utils/CropOverlayInterface;

.field private final paint:Landroid/graphics/Paint;

.field private final preferenceManager:Landroid/content/SharedPreferences;

.field private rectOverlay:Landroid/graphics/Rect;

.field private final resizeBitmap:Landroid/graphics/Bitmap;

.field private resizeMode:Z

.field private resizePosition:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->Companion:Lcom/odoo/mobile/plugins/barcode/ui/OverlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->duffXfermode:Landroid/graphics/PorterDuffXfermode;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->preferenceManager:Landroid/content/SharedPreferences;

    const p2, 0x7f0800cf

    invoke-static {p1, p2}, Lcom/odoo/mobile/core/utils/RessourceKt;->getBitmapFromVectorDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final drawResize(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    const-string v3, "resizePosition"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private final getFullKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/odoo/mobile/accounts/OdooAccountManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/odoo/mobile/accounts/OdooAccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooAccountManager;->getActiveAccount()Lcom/odoo/mobile/accounts/OdooUser;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overlay_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/odoo/mobile/accounts/OdooUser;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/odoo/mobile/exception/OdooUserException;

    invoke-direct {p1}, Lcom/odoo/mobile/exception/OdooUserException;-><init>()V

    throw p1
.end method

.method private final getOrientation()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private final savePosition(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->preferenceManager:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getOrientation()I

    move-result v1

    const-string v2, "X"

    invoke-direct {p0, v1, v2}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getOrientation()I

    move-result v1

    const-string v2, "Y"

    invoke-direct {p0, v1, v2}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setPosition(II)V
    .locals 5

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    const-string v1, "resizePosition"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    sget-object p1, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    iget-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v2

    :cond_1
    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, p2, v0, v3, v4}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateRectOverlay(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->rectOverlay:Landroid/graphics/Rect;

    new-instance p2, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

    if-nez p1, :cond_3

    const-string p1, "rectOverlay"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p2, p1, v0, v3}, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;-><init>(Landroid/graphics/Rect;II)V

    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->overlayInterface:Lcom/odoo/mobile/core/utils/CropOverlayInterface;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lcom/odoo/mobile/core/utils/CropOverlayInterface;->setCropOverlayInformation(Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;)V

    :cond_4
    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p1

    :goto_0
    invoke-direct {p0, v2}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->savePosition(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->duffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->rectOverlay:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const-string v0, "rectOverlay"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->drawResize(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sget-object p1, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/odoo/mobile/core/utils/RectUtils;->getDefaultPoint(II)Landroid/graphics/Point;

    move-result-object p2

    iput-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    const/4 p3, 0x0

    const-string p4, "resizePosition"

    if-nez p2, :cond_0

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p3

    :cond_0
    iget-object p5, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->preferenceManager:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getOrientation()I

    move-result v0

    const-string v1, "X"

    invoke-direct {p0, v0, v1}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez v1, :cond_1

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p3

    :cond_1
    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-interface {p5, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p5

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->preferenceManager:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getOrientation()I

    move-result v1

    const-string v2, "Y"

    invoke-direct {p0, v1, v2}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->getFullKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez v2, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, p3

    :cond_2
    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, p5, v0}, Landroid/graphics/Point;->set(II)V

    iget-object p2, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez p2, :cond_3

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p3

    :cond_3
    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object p5, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizePosition:Landroid/graphics/Point;

    if-nez p5, :cond_4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p3, p5

    :goto_0
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateRectOverlay(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->rectOverlay:Landroid/graphics/Rect;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizeMode:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->setPosition(II)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizeMode:Z

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->resizeMode:Z

    :goto_0
    return v3
.end method

.method public final setCropOverlayInterface(Lcom/odoo/mobile/core/utils/CropOverlayInterface;)V
    .locals 1

    const-string v0, "overlayInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/ui/OverlayView;->overlayInterface:Lcom/odoo/mobile/core/utils/CropOverlayInterface;

    return-void
.end method
