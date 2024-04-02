.class abstract Landroidx/core/graphics/drawable/IconCompat$Api26Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method static createAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl$$ExternalSyntheticApiModelOutline2;->m()V

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object p0

    return-object p0
.end method

.method static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method
