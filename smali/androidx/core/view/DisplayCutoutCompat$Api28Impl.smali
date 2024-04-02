.class abstract Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method static createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/view/DisplayCutout;"
        }
    .end annotation

    invoke-static {}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline1;->m()V

    invoke-static {p0, p1}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSafeInsetBottom(Landroid/view/DisplayCutout;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method static getSafeInsetLeft(Landroid/view/DisplayCutout;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method static getSafeInsetRight(Landroid/view/DisplayCutout;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method static getSafeInsetTop(Landroid/view/DisplayCutout;)I
    .locals 0

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method
