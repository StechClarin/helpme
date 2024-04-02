.class public abstract Lcom/odoo/mobile/core/utils/NotificationChannelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "com.odoo.mobile.core.utils.NotificationChannelUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createAllNotificationChannel(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createOdooNotificationChannel(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createDirectMessageNotificationChannel(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannelMessageNotificationChannel(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createFollowingNotificationChannel(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createAtMentionNotificationChannel(Landroid/content/Context;)V

    return-void
.end method

.method private static createAtMentionNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f110024

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110023

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline3;->m()V

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailability$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method private static createChannelMessageNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f110035

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110034

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static createDirectMessageNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f110051

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110050

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static createFollowingNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f110066

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static createOdooNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f1100fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1100fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/odoo/mobile/core/utils/NotificationChannelUtils;->createChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static getChannelIdentifier(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "android_channel_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1100fe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
