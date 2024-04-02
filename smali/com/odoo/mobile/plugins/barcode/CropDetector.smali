.class public final Lcom/odoo/mobile/plugins/barcode/CropDetector;
.super Lcom/google/android/gms/vision/Detector;
.source "SourceFile"

# interfaces
.implements Lcom/odoo/mobile/core/utils/CropOverlayInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;

.field public static resizePosition:Landroid/graphics/Point;


# instance fields
.field private cropOverlayInformation:Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

.field private final mDelegate:Lcom/google/android/gms/vision/Detector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->Companion:Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/Detector;)V
    .locals 1

    const-string v0, "mDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->mDelegate:Lcom/google/android/gms/vision/Detector;

    return-void
.end method

.method private final getCalculatedCropRectangle(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    :goto_1
    iget-object p1, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->cropOverlayInformation:Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

    if-eqz p1, :cond_3

    sget-object v2, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateProportionalRectOverlay(Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;II)Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    sget-object p1, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    sget-object v2, Lcom/odoo/mobile/plugins/barcode/CropDetector;->Companion:Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;

    invoke-virtual {v2}, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;->getResizePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;->getResizePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v3, v2, v4, v0}, Lcom/odoo/mobile/core/utils/RectUtils;->calculateRectOverlay(IIII)Landroid/graphics/Rect;

    move-result-object p1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    invoke-virtual {v0, p1}, Lcom/odoo/mobile/core/utils/RectUtils;->permuteAxesRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private final preProcessJPEG(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Rect;)Landroid/util/SparseArray;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->mDelegate:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/vision/Detector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string p2, "mDelegate.detect(croppedFrame)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Empty Bitmap Data"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final preProcessYuv(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Rect;)Landroid/util/SparseArray;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getGrayscaleImageData()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Landroid/graphics/YuvImage;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v8, v0, p2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Metadata;->getRotation()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iget-object p2, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->mDelegate:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/vision/Detector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string p2, "mDelegate.detect(croppedFrame)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Empty Gray Scale Image Data"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 4

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->Companion:Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;

    sget-object v1, Lcom/odoo/mobile/core/utils/RectUtils;->INSTANCE:Lcom/odoo/mobile/core/utils/RectUtils;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Metadata;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/vision/Frame$Metadata;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/odoo/mobile/core/utils/RectUtils;->getDefaultPoint(II)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;->setResizePosition(Landroid/graphics/Point;)V

    invoke-direct {p0, p1}, Lcom/odoo/mobile/plugins/barcode/CropDetector;->getCalculatedCropRectangle(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad image format value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->mDelegate:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Detector;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, "mDelegate.detect(frame)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/plugins/barcode/CropDetector;->preProcessJPEG(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Rect;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/odoo/mobile/plugins/barcode/CropDetector;->preProcessYuv(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Rect;)Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method public isOperational()Z
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->mDelegate:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Detector;->isOperational()Z

    move-result v0

    return v0
.end method

.method public setCropOverlayInformation(Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;)V
    .locals 1

    const-string v0, "cropOverlayInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->cropOverlayInformation:Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

    return-void
.end method
