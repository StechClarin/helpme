.class public final Lcom/odoo/mobile/core/utils/RectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/odoo/mobile/core/utils/RectUtils;

    invoke-direct {v0}, Lcom/odoo/mobile/core/utils/RectUtils;-><init>()V

    sput-object v0, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateProportionalValues(IIII)Lkotlin/Pair;
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    int-to-double p1, p3

    int-to-double p3, p4

    div-double/2addr p1, p3

    new-instance p3, Lkotlin/Pair;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method


# virtual methods
.method public final calculateProportionalRectOverlay(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;
    .locals 5

    .line 0
    const-string v0, "initialRec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4, p2, p5, p3}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateProportionalValues(IIII)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    new-instance p2, Landroid/graphics/Rect;

    iget p5, p1, Landroid/graphics/Rect;->left:I

    int-to-double v2, p5

    mul-double/2addr v2, p3

    double-to-int p5, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-double v3, v3

    mul-double/2addr v3, p3

    double-to-int p3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-double v3, p1

    mul-double/2addr v3, v0

    double-to-int p1, v3

    invoke-direct {p2, p5, v2, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public final calculateProportionalRectOverlay(Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;II)Landroid/graphics/Rect;
    .locals 7

    .line 0
    const-string v0, "cropOverlayInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->getHeight()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateProportionalRectOverlay(Landroid/graphics/Rect;IIII)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public final calculateRectOverlay(IIII)Landroid/graphics/Rect;
    .locals 3

    div-int/lit8 p3, p3, 0x2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getDefaultPoint(II)Landroid/graphics/Point;
    .locals 3

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, v0, 0x4

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p2, v2

    new-instance v2, Landroid/graphics/Point;

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public final permuteAxesRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const-string v0, "initialRec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
