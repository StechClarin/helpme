.class public final Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odoo/mobile/plugins/barcode/CropDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/odoo/mobile/plugins/barcode/CropDetector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResizePosition()Landroid/graphics/Point;
    .locals 1

    sget-object v0, Lcom/odoo/mobile/plugins/barcode/CropDetector;->resizePosition:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "resizePosition"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setResizePosition(Landroid/graphics/Point;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/odoo/mobile/plugins/barcode/CropDetector;->resizePosition:Landroid/graphics/Point;

    return-void
.end method
