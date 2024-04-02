.class abstract Landroidx/core/app/NotificationManagerCompat$Api26Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method static createNotificationChannel(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static createNotificationChannelGroup(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    return-void
.end method

.method static createNotificationChannelGroups(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void
.end method

.method static createNotificationChannels(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void
.end method

.method static deleteNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static deleteNotificationChannelGroup(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static getId(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getId(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannelGroup;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannelGroups(Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getNotificationChannels(Landroid/app/NotificationManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat$Api26Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
