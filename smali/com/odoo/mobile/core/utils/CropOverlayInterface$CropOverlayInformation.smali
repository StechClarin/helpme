.class public final Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/core/utils/CropOverlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CropOverlayInformation"
.end annotation


# instance fields
.field private final height:I

.field private final rect:Landroid/graphics/Rect;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    iput p3, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    iget v3, p1, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    iget p1, p1, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    return v0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropOverlayInformation(rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/odoo/mobile/core/utils/CropOverlayInterface$CropOverlayInformation;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
