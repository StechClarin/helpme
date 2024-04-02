.class abstract Landroidx/core/app/NotificationCompatBuilder$Api29Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api29Impl"
.end annotation


# direct methods
.method static setAllowSystemGeneratedContextualActions(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setBubbleMetadata(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setContextual(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    move-result-object p0

    return-object p0
.end method

.method static setLocusId(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-static {p1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/content/LocusId;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/Notification$Builder;Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method
